#!/bin/sh
# Copy the guide's content from the monorepo into this site.
#
# The site vendors the content so that `pnpm dev` and `pnpm build` work on their
# own (this directory is deployed alone by `git subtree`). The copy goes stale
# when the guide changes: run this, then commit the result. Never edit
# src/content/ by hand.
#
# Usage:
#   ./scripts/sync-content.sh [path-to-monorepo]
#
# The default path is the parent directory of this site.
#
# Copied:
#   locales/<locale>/topics/<slug>/index.md   written topics only (stubs are skipped)
#   spec/topics.tsv                           -> src/content/topics.tsv
#   GLOSSARY.md, INDEX.md                     -> src/content/
#   skills/<name>/SKILL.md                    -> src/content/skills/<name>/SKILL.md
#   llms.txt, llms.json                       -> static/

set -eu

here=$(cd "$(dirname "$0")/.." && pwd)
source_repo=${1:-"$here/.."}
destination="$here/src/content"
STUB='^_Not yet written\.'

if [ ! -f "$source_repo/spec/topics.tsv" ]; then
    echo "No spec/topics.tsv under $source_repo" >&2
    echo "Pass the path to the monorepo as the first argument." >&2
    exit 1
fi

rm -rf "$destination"
mkdir -p "$destination/locales" "$destination/skills"

cp "$source_repo/spec/topics.tsv" "$destination/topics.tsv"
cp "$source_repo/GLOSSARY.md" "$destination/GLOSSARY.md"
cp "$source_repo/INDEX.md" "$destination/INDEX.md"
cp "$source_repo/llms.txt" "$here/static/llms.txt"
cp "$source_repo/llms.json" "$here/static/llms.json"

total=0
for locale_path in "$source_repo"/locales/*/; do
    locale=$(basename "$locale_path")
    count=0
    for topic_path in "${locale_path}topics"/*/; do
        [ -f "${topic_path}index.md" ] || continue
        if grep -q "$STUB" "${topic_path}index.md"; then continue; fi
        slug=$(basename "$topic_path")
        mkdir -p "$destination/locales/$locale/topics/$slug"
        cp "${topic_path}index.md" "$destination/locales/$locale/topics/$slug/index.md"
        count=$((count + 1))
    done
    echo "Synced $count topics for locale $locale"
    total=$((total + count))
done

skills=0
for skill_path in "$source_repo"/skills/*/; do
    [ -f "${skill_path}SKILL.md" ] || continue
    name=$(basename "$skill_path")
    mkdir -p "$destination/skills/$name"
    cp "${skill_path}SKILL.md" "$destination/skills/$name/SKILL.md"
    skills=$((skills + 1))
done

echo "Synced $total topic files and $skills skills from $source_repo"
echo "Review with: git -C \"$here\" status"
echo "A new locale also needs src/lib/locales/<locale>.json (UI strings)."
