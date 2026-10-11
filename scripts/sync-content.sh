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
#   spec/topics.tsv                           -> src/content/topics.tsv (plus a title column read from each topic's first headline)
#   glossary/index.md, index/index.md         -> src/content/glossary/index.md, src/content/index/index.md
#   locales/<locale>/glossary/index.md, index/index.md -> src/content/locales/<locale>/   where a locale has translations
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

# The monorepo manifest has no titles: a topic's first headline is its title.
# Add a title column (from the canonical locale) so the site can list unwritten topics too.
printf 'part\tnumber\tslug\ttitle\tpart_title\n' > "$destination/topics.tsv"
tail -n +2 "$source_repo/spec/topics.tsv" | while IFS="$(printf '\t')" read -r part number slug part_title; do
    title=$(head -n 1 "$source_repo/locales/en-001/topics/$slug/index.md" | sed 's/^# *//')
    printf '%s\t%s\t%s\t%s\t%s\n' "$part" "$number" "$slug" "$title" "$part_title" >> "$destination/topics.tsv"
done
mkdir -p "$destination/glossary"
cp "$source_repo/glossary/index.md" "$destination/glossary/index.md"
mkdir -p "$destination/index"
cp "$source_repo/index/index.md" "$destination/index/index.md"
cp "$source_repo/llms.txt" "$here/static/llms.txt"
cp "$source_repo/llms.json" "$here/static/llms.json"

total=0
for locale_path in "$source_repo"/locales/*/; do
    locale=$(basename "$locale_path")
    count=0
    if [ -f "${locale_path}glossary/index.md" ]; then
        mkdir -p "$destination/locales/$locale/glossary"
        cp "${locale_path}glossary/index.md" "$destination/locales/$locale/glossary/index.md"
    fi
    if [ -f "${locale_path}index/index.md" ]; then
        mkdir -p "$destination/locales/$locale/index"
        cp "${locale_path}index/index.md" "$destination/locales/$locale/index/index.md"
    fi
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
