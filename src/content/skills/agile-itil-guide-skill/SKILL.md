---
name: agile-itil-guide-skill
description: Use when asked to find, explain, or apply content from the Agile ITIL Guide — choosing topics for a role or problem, running a team conversation from a topic's discussion questions, or adapting one of its AI prompts to a team's own material — as distinct from maintaining or editing the guide (see agile-itil-guide-maintainer-skill).
---

# Agile ITIL Guide (reader skill)

The Agile ITIL Guide has 49 topics in six parts, each in `locales/en-001/topics/<slug>/index.md`. `spec/topics.tsv` lists part, number, and slug; each topic's first headline is its title. `glossary/index.md` and `INDEX.md` point to the home topic for terms and concepts. Read the topic itself before answering; do not answer from memory.

## Choose topics

1. Ask what the person does (role), what problem they face, and how much time they have.
2. Match the problem to a topic using `INDEX.md` and the table in the topic "Learning Paths and Certification" (Topic 6.4). Name the topic by number and title, for example "Topic 3.4 — Change Enablement".
3. Offer a short path: one or two foundation topics, then the practice topics closest to the problem. Do not list all 49.

## Run a team conversation

1. Open the topic's `## Questions to discuss with your team`. There are six; pick one or two that fit the team.
2. Use the briefing under each question as the facilitator's notes: why it matters, what answers to expect, one follow-up.
3. State a one-sentence purpose, ask for facts before opinions, hear from everyone, and end with at most two actions with owners and dates.
4. Offer the worked example in `## In practice: an agile ITIL example` as a fictional scenario to discuss, never as evidence.

## Apply an AI prompt

1. Take a prompt from the topic's `## AI prompts`. Fill every `[square bracket]` with the person's real material and remove personal data, credentials, and confidential detail first.
2. Keep the boundaries: do not invent numbers, sources, quotations, or compliance claims; use only the pasted material; ask clarifying questions first; mark assumptions; list what you are unsure of.
3. Check the output against the pasted material. Anything that affects customers or production needs a person's review.

## Rules for answering

- Cite the topic and its References; do not add sources the topic does not contain.
- State what the guide says is unverified (for example ITIL vocabulary taken from secondary sources, or ITIL 5 details) and point to the owner's current publications.
- Do not give legal advice; say which rule to read and who to ask.
- Use ITIL(R) and other names accurately and do not imply endorsement.
