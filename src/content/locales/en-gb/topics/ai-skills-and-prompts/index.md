# AI Skills and Prompts

**A good prompt gives an AI assistant the material, the task, and the checks it needs, and a good skill packages that know-how so a team can reuse it, which makes the AI prompts and skills in this guide starting points that you adapt and verify.**

## Why this matters

Every topic in this guide ends with prompts and skills. They exist because many of the tasks in service management are well suited to an assistant that can read a pile of tickets, draft a runbook, or turn notes into a plan. They also exist because a vague request to an AI produces vague, sometimes wrong, results. The difference between a useful answer and a plausible but empty one often lies in how the request was written and what material came with it.

This topic explains how to use the guide's prompts and skills, why they are written as they are, and how to write your own for your team. It is about habits more than tricks: supplying real material, saying what you want, asking the assistant to mark what it does not know, and checking what comes back. It builds on the cautions in the previous topic, which describes where AI helps and where it can hurt (see Topic 6.2 — AI in IT Service Management).

The sources are practical. The guide's own `skills/prompt-engineering` skill describes prompt writing as the deliberate practice of designing and iterating on the instructions given to a language model, treating a prompt like a small piece of software that is written, tested against real cases, and revised. The Claude Code documentation describes how skills are structured as directories with a `SKILL.md` file. The [Wikipedia article on large language models](https://en.wikipedia.org/wiki/Large_language_model) gives background. No source read for this guide offers evidence on which prompting techniques work best; treat the techniques here as habits to test.

## Core concepts

### Prompts, skills, and what they are for

A **prompt** is the instruction and material you give an AI assistant for one task. A **skill**, in the format used in this guide's `skills/` folder, is a reusable package of know-how for a kind of task: a directory containing a `SKILL.md` file that says when to use it and how to do the work. In Claude Code's documentation, a skill is a directory with a required `SKILL.md` file whose frontmatter has a name and a description, and whose body gives the instructions; the assistant uses the description to decide when to apply the skill, and loads the full body only when it is used.

| | Prompt | Skill |
|---|---|---|
| **Scope** | One task, now | A kind of task, reused |
| **Lives** | In a chat or a document | In a folder, such as `skills/` or a project's skills directory |
| **Changed by** | You, each time | The team, with review |
| **Best for** | Specific analysis of your own material | Repeatable methods such as running a retrospective |

### How the guide's prompts are built

The prompts in this guide follow a simple pattern, set out in the style guide:

1. **A bold one-line purpose** says what the prompt is for.
2. **A fenced block** contains text you can copy and paste.
3. **Placeholders in square brackets** mark what you must supply, with a hint about what to put there.
4. **A task** that names the output wanted.
5. **Boundaries**: do not invent numbers, sources, quotations, or compliance claims; use only the material pasted.
6. **A request to ask first** when information is missing, and to mark assumptions.
7. **A final check**: "List what you are unsure of."

These parts exist for reasons. Placeholders force you to bring real material. The boundary stops the assistant filling gaps with invention. The request for clarifying questions turns a one-shot guess into a short conversation. The final line makes the assistant flag its own weak spots, which helps you decide what to check.

### Patterns that help

The guide's `prompt-engineering` skill lists techniques, which this guide summarises in its own words:

- **Be specific about the output you want,** such as a table with named columns, or a numbered list of at most five items, so the assistant does not guess the shape.
- **Give examples when instructions are ambiguous,** showing the pattern you want in a short sample.
- **Supply the context the assistant cannot know,** such as your terminology, constraints, and the document in question, and say what it should not assume.
- **Iterate against real test cases,** running the prompt on a range of real inputs and revising where it fails, instead of judging it by one good example.

A prompt tuned on one input may fail on others. The skill makes the point that a short, oddly phrased input, or one missing a field, can break a prompt that handled the original example.

### Verification habits

Every output needs checking in proportion to the cost of being wrong. Habits that help:

- **Check facts against the source you pasted.** Ask the assistant to quote the part of your material that supports each statement.
- **Never accept references you have not seen.** The cases described in the previous topic include invented court citations; do not repeat them.
- **Separate what the assistant saw from what it assumed.** The guide's prompts ask for this.
- **Test calculations yourself,** or ask for the workings and check them.
- **Use a second look for anything that leaves the team,** such as a customer reply or a policy.
- **Keep records of significant uses,** as described in Topic 6.2 — AI in IT Service Management.

### Protecting data

Before pasting anything into a prompt, ask what it contains and where it will go. Remove personal data, credentials, and confidential commercial detail unless the tool and its terms have been approved for them (see Topic 3.13 — Information Security Management). The guide's prompts ask you to anonymize, but the responsibility is yours. When in doubt, describe the situation in general terms.

### What a skill looks like

From the Claude Code documentation and the skills in this guide, a skill is a directory such as `skills/runbook/` containing `SKILL.md`. The file begins with YAML frontmatter between `---` markers, containing at least a `name` and a `description`. The documentation says the description tells the assistant what the skill does and when to use it, and recommends putting the key use case first. The body gives the method in markdown. Other files, such as reference documents or scripts, can sit alongside and be loaded when needed; the documentation advises keeping `SKILL.md` itself short, under 500 lines.

The copied skills in this guide follow the same shape. Their descriptions begin with "Use when asked to…", which makes it clear when each applies.

### Where skills live

The documentation describes personal skills in a user's home skills directory, project skills in a repository's skills directory that can be committed and shared with a team, and other locations such as plugins. For a team, a project folder under version control is the natural place: skills are reviewed, changed through the same process as other work, and available to everyone.

### Writing your own team skills

A team skill captures a practice the team repeats and wants done consistently. Examples for service management: how to write a postmortem in your house style, how to triage a certain kind of ticket, how to prepare a change request, how to run your Friday review. To write one:

1. **Pick a task you repeat** and that has a known good way of being done.
2. **Write the description first,** starting with "Use when…" and the key use case, so that the assistant and your colleagues know when it applies.
3. **Write the method** as short steps, with the output format, checks, and things to avoid.
4. **Add examples** of a good result, with sensitive details removed.
5. **Say what it must not do,** such as inventing figures or sending anything without review.
6. **Test it on real cases** and revise.
7. **Give it an owner and a review date,** like any other shared document.

### Skills in this guide

The `skills/` folder in this repository holds copies of skills from the skills-on-ai collection, listed in `skills/README.md`, and two skills written for this guide: one for readers and one for maintainers. Each topic links to the skills most useful for its subject, with a sentence on when to use each. The copied skills are generic, not specific to this guide's content, so use them as starting points and adapt their output to your context.

### Limits

No source read for this guide measures how well any prompting technique works, and AI tools change quickly. The Claude Code documentation read was long and was read only in part. What follows is practical advice that has held in general use, offered as habits to test and not as guarantees.

## Best practices

1. **Start from a real task and real material.** Choose something you need done, and paste in the actual facts, not a description of them. Fill in every placeholder with specifics.
2. **State the purpose in one line.** Say what the output is for and who will use it. It helps the assistant choose the right level of detail.
3. **Specify the output.** Name the format, length, and structure you want. Ask for a table when you want to compare, a list when you want steps.
4. **Set boundaries.** Say what the assistant must not do: invent numbers, sources, or quotations; assume facts not given; claim that a rule applies without the text.
5. **Ask for clarifying questions first.** Tell the assistant to ask what it needs before answering. Answer briefly, and then ask it to proceed.
6. **Ask it to separate facts from assumptions.** Have it mark what it took from your material and what it supposed. This guide's prompts end with "List what you are unsure of."
7. **Request evidence.** Ask for quotes from your material that support each claim, so that you can check quickly.
8. **Iterate.** Treat the first answer as a draft. Say what is wrong and ask for a revision, or change the prompt and try again.
9. **Test prompts on several cases.** Before you rely on a prompt, run it on three or four real inputs, including an unusual one. Note where it fails.
10. **Protect data.** Remove personal and confidential details before pasting. Use approved tools. Follow your organisation's policy.
11. **Check before using.** Verify facts, numbers, and references. Have a person review anything that goes to customers or changes a system.
12. **Share what works.** Put prompts that prove useful, with their notes, into a team skill or document under version control, with an owner.

## Questions to discuss with your team

**What tasks do we repeat that an assistant could help with, and what would we need to check?**

Ask each person to list tasks, and mark the risk if the output were wrong. Group them into low, medium, and high risk. Start with a low-risk one. The facilitator can ask what the checking step would be. Choose one task for a trial.

**What do we paste into AI tools today, and should we?**

Be honest and non-judgmental. List examples. Compare with the data policy and the approved tools. Agree on a quick check people can apply before pasting: "does this contain personal data, secrets, or confidential detail?"

**Which of this guide's prompts would we try first, and with what real material?**

Browse the prompts together and choose one. Identify the real material to paste, remove sensitive detail, and run it. Compare results and discuss what to change in the prompt. This is a quick way to learn the pattern.

**How would we know a prompt works?**

Ask for a test set: a few real inputs with known good outputs. Discuss how to score answers and who decides. A prompt without a test set is a hope. Agree on a small set for one prompt.

**What practice do we repeat that deserves to be a team skill?**

List candidates: a review format, a triage routine, a template for reports. Pick one, and draft the description and steps together. Decide who owns it and when it will be reviewed.

**What would we never want an AI to do on its own?**

List actions: sending to customers, changing production, approving access, deciding on a priority. Discuss why. The answers are the boundaries to write into your prompts and skills. Agree on a short list.

## In practice: an agile ITIL example

A regional hospital's IT service desk has fourteen analysts. The desk lead has noticed that colleagues use an AI assistant in different ways: one pastes whole tickets, including patient names, into a public chatbot; another writes elaborate prompts and gets useful summaries; most do not use it at all. A recent knowledge article, drafted by an assistant, contained a procedure step that did not exist.

The desk lead holds a one-hour session using this guide's approach. She starts with data: the group agrees a rule that no patient details or credentials go into any tool, and that the approved assistant, which the hospital has licensed with suitable terms, is the only one used with ticket text. She picks one task, drafting a knowledge article from a resolved ticket, and uses the pattern from this guide's prompts: a one-line purpose, a placeholder for the anonymized ticket, instructions to use only the ticket's content, to mark any inferred step with a tag, and to list what it is unsure of. Two analysts run the prompt on five past tickets, and the group reads the results together. The prompt invents a step in one case; they add a line asking for a quote from the ticket for each step.

The desk lead writes the improved prompt as a team skill in the desk's shared folder, with a description that begins "Use when…", an owner, and a review date, and adds a rule that every drafted article is checked by a second analyst before publication. After two months, the number of articles drafted per week has doubled and reviewers find fewer errors than before. Some issues remain. Two analysts still paste details into a public tool when pressed, the skill produces overly formal wording that analysts rewrite, and one reviewer admits to skimming. The desk lead repeats the data rule at each team meeting, adds a style example to the skill, and asks reviewers to tick a short checklist.

## Four perspectives

### Product and delivery teams

Delivery teams use assistants for code, tests, and documentation. Apply the same habits: real material, clear boundaries, verification, and review. Keep secrets out of prompts, and store the useful prompts and skills with the code.

### Service and operations teams

Operations teams can use prompts to analyse tickets, draft runbooks, and prepare reviews. Keep personal data out, check outputs against logs and records, and write skills for routines the team repeats, such as postmortems and shift handovers.

### Leadership and governance

Leaders set the rules for what may be used, with what data, and who is accountable. Ask for an inventory, a data policy, and evidence from pilots. Support time for teams to write and test prompts and skills, and ensure that shared skills have owners.

### Customers and users

Customers and users may see the results of prompts and skills in replies, articles, and summaries. Expect providers to check them and to tell you when they use automated tools where it matters. Report errors, which help improve the underlying material.

## Common failure modes

- **Vague requests.** The assistant guesses. Instead, supply the material, the purpose, and the output you want.
- **Pasting sensitive data.** Personal or confidential details leave the organisation. Instead, remove them and use approved tools.
- **Accepting invented content.** Fabricated steps, numbers, or references are used. Instead, set boundaries, ask for quotes, and verify.
- **One-example tuning.** A prompt works once and fails elsewhere. Instead, test on several real inputs.
- **Skills without owners.** Shared prompts go stale. Instead, assign an owner and review date, and keep them in version control.
- **Over-trust of copied prompts.** A prompt from the internet or from this guide is used unchanged. Instead, adapt to your context and check results.
- **No second look.** AI output goes straight to customers. Instead, have a person review anything that leaves the team.
- **Treating the assistant as an authority.** Its confidence is taken as correctness. Instead, ask for what it is unsure of and check.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Prompt practice | People write ad hoc prompts | Some people share prompts | Teams use a common pattern with purpose, material, boundaries, and checks | Prompt quality is tested on sets of real cases | Prompts are improved across teams from shared test results |
| Skills | No shared skills | Some personal skills exist | Team skills with owners and review dates live in version control | Use and results of skills are reviewed | Skills are shared and maintained across teams and partners |
| Verification and data | Output is trusted; data are pasted freely | Some checks and data rules | Verification habits and a data policy are routine | Errors and data incidents are tracked and acted on | Verification and data practice are coordinated across the organisation |
| Learning | Learning is individual | Some tips are shared | Teams hold regular sessions to improve prompts and skills | Improvements are tracked and measured | Learning spreads across teams continually |

## Checklist

- [ ] The team has a short rule on what data may go into which AI tools.
- [ ] Prompts we rely on have a stated purpose, real material, boundaries, and a request for what the assistant is unsure of.
- [ ] Each prompt we rely on has been tested on at least three real inputs.
- [ ] Output that goes outside the team is reviewed by a person.
- [ ] References and numbers from AI output are checked against sources.
- [ ] Useful prompts are saved with notes in a shared place under version control.
- [ ] Team skills have a clear "Use when…" description, an owner, and a review date.
- [ ] The team has listed actions that AI must never take on its own.
- [ ] Staff know which tools are approved.
- [ ] We review our prompts and skills at least twice a year.

## AI prompts

**Purpose: improve a prompt you already use.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Purpose: turn a repeated task into a draft team skill.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: build a small test set for a prompt.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: check an AI-written draft against its source.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## AI skills

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): use to write, test, and improve prompts so that they give reliable results.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): use to document what a model is for and what its limits are when your team relies on one.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use when helping a team build habits around prompts and skills over time.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): use to find topics in this guide, run a team conversation from its questions, or adapt one of its prompts.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): use when writing or checking a topic, prompt, or skill link for this guide.

## Key sources

- **Claude Code skills documentation** (code.claude.com): the description of how skills are structured as directories with a `SKILL.md` file.
- **Prompt engineering** (this guide's `skills/prompt-engineering/SKILL.md`): a short statement of techniques and the case for testing prompts on real inputs.
- **Large language model** (Wikipedia): background on how these systems are built and where they can fail.
- **AI Risk Management Framework** (NIST): the voluntary framework for managing AI risks, useful for team policy.

## References

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
