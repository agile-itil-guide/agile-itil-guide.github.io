# ITIL Guiding Principles

**ITIL's seven guiding principles are short enough to remember and broad enough to apply to any service decision, and they overlap so strongly with agile principles that a team can use them as a bridge between the two.**

## Why this matters

When agile teams and service management groups disagree, they often argue about practices: whether a change needs approval, whether a review is required, whether a document is needed. The arguments go in circles because each side defends its practice without stating the principle behind it. ITIL's guiding principles are useful here because they were written to be applied to any practice, and most agile practitioners will recognize them.

The principles also answer a common complaint about ITIL, that it prescribes heavy process. ITIL 4's own principles include "keep it simple and practical" and "start where you are." A team that cites them can legitimately say that a proposed process is out of step with the framework it claims to follow. At the same time, the principles ask something of agile teams: "collaborate and promote visibility" and "think and work holistically" challenge teams that optimize for their own sprint at the cost of the people who run the result.

This topic describes the seven principles, compares them with the agile principles in Topic 1.2 — Agile Principles, and shows how to use them as a decision aid. The names of the principles come from the [Wikipedia article on ITIL](https://en.wikipedia.org/wiki/ITIL) and are consistent across the training and vendor sources consulted. The explanations are this guide's own and are not quotations from ITIL publications. If you need the owner's wording, read the ITIL 4 publications directly.

## Core concepts

### The seven principles

According to Wikipedia, the guiding principles are:

1. Focus on value
2. Start where you are
3. Progress iteratively with feedback
4. Collaborate and promote visibility
5. Think and work holistically
6. Keep it simple and practical
7. Optimize and automate

Wikipedia lists them under its section on ITIL 5. They match the principles of ITIL 4 as summarized by training providers and vendors, and this guide treats them as ITIL 4 principles that PeopleCert's ITIL 5 material may carry forward. Check the owner's current publications for the exact text, and for whether ITIL 5 changes them (see Topic 2.2 — ITIL).

### What each principle asks

The table gives a plain reading of each principle, written for this guide, with the closest agile counterpart from Topic 1.2 — Agile Principles.

| Principle | What it asks of you | Closest agile idea |
|---|---|---|
| **Focus on value** | Tie every activity to value for customers, users, or the organization, and drop activities that do not contribute | Agile principle 1: satisfy the customer through early and continuous delivery of valuable software |
| **Start where you are** | Look at what exists before building anything new, and reuse what already works | Agile principle 10: simplicity, maximizing the amount of work not done |
| **Progress iteratively with feedback** | Work in small steps, learn from each, and adjust; do not try to plan everything first | Agile principles 3 and 12: deliver frequently, and reflect and adjust at regular intervals |
| **Collaborate and promote visibility** | Work across boundaries, share information openly, and make work visible | Agile principles 4 and 6: daily collaboration and face-to-face conversation |
| **Think and work holistically** | See the service as a whole system of people, information, technology, and partners, not as separate parts | No single agile principle; closest is the lean idea of optimizing the whole (see Topic 1.7 — Lean Software Development) |
| **Keep it simple and practical** | Use the minimum number of steps needed to reach a result, and avoid process for its own sake | Agile principle 10 again, and principle 9 on good design |
| **Optimize and automate** | Improve the work first, then use technology to remove routine effort | Agile principle 9, and practices such as continuous integration (see Topic 1.6 — Extreme Programming) |

Agile principles are numbered as on agilemanifesto.org. The mapping is this guide's judgment; no source claims an official correspondence.

### Where the two sets differ

The overlap is large, but the emphases differ in useful ways.

- **ITIL stresses the whole.** "Think and work holistically" asks you to account for the end-to-end service, including suppliers and users. The Manifesto's principles speak mainly about the team and the customer, and say little about the wider system.
- **Agile stresses the team and the pace.** The agile principles ask for motivated individuals, a sustainable pace, and self-organizing teams. ITIL's principles do not mention people's working conditions directly, although the "organizations and people" dimension covers them (see Topic 2.5 — Four Dimensions of Service Management).
- **ITIL stresses visibility.** "Collaborate and promote visibility" asks for open sharing. Agile teams do this with boards and demonstrations, but may leave out the groups who support the service.
- **Agile stresses technical quality.** The agile principle on technical excellence has no direct counterpart, though "optimize and automate" is related.

### Using the principles as a decision aid

ITIL's guiding principles are meant for use. A simple method is to take a decision, such as adding an approval step, and ask of each principle whether the option supports it, conflicts with it, or is neutral. The result is a short, honest list of trade-offs. The principles are not rules, and they can pull against each other. "Start where you are" may conflict with "optimize and automate" when the existing tool is poor, and "keep it simple" may conflict with "think holistically" when the system is complex. The discussion between principles is the value.

### Principles and practices

Principles guide the choice of practices, and practices are the ways of working (see Topic 2.3 — The ITIL Service Value System). A practice that cannot be explained by any principle is a candidate for removal. A principle that nobody can see in daily work is a slogan. Both checks are worth running.

### Limits

The principles are broad. Two people can invoke the same principle to support opposite decisions. The Wikipedia article names no criticisms of the principles, and this guide does not invent any. The practical limit is that principles do not tell you what to do next; they tell you how to judge options. Combine them with evidence from your own services.

## Best practices

1. **Put the seven principles where the team works.** Display them next to the process documents or in the template for proposals. Principles that are not seen are not used.
2. **Test proposals against them.** For any new process or tool, write one line per principle: supports, conflicts, or neutral. Share the result when asking for approval.
3. **Focus on value by asking "who benefits?"** For each task, name the person or group who benefits. If you cannot name one, question the task.
4. **Start where you are by auditing what exists.** Before buying a tool or designing a process, list what the team already uses and whether it meets the need. Reuse and extend before you replace.
5. **Make iteration real.** Break a process change into a small first step, set a date to review it, and decide in advance what evidence you will look at. Avoid big-bang launches.
6. **Make work visible to the people who depend on it.** Share boards, release plans, and incident status with support staff and customers. Agree what level of detail each audience needs.
7. **Draw the whole service before changing a part.** Sketch the people, information, technology, and suppliers involved, and ask what a change in one part does to the others.
8. **Remove steps before you automate them.** If a step adds no value, delete it. If it does, automate it. Automating a waste process makes the waste faster.
9. **Resolve conflicts between principles openly.** When two principles pull in different directions, say so, and record the decision and the reason. This builds a shared record of how the team thinks.
10. **Use the principles to challenge claims.** When someone says "ITIL requires" or "agile says," ask which principle or practice supports it, and what it protects against.
11. **Link principles to measures.** Choose a few measures that show whether a principle is working, such as time to restore service for "focus on value" or the number of manual steps removed for "optimize and automate." Avoid inventing precise targets.
12. **Review the principles in retrospectives.** Once a quarter, ask which principle the team followed best and which it neglected, with an example of each.

## Questions to discuss with your team

**Which of the seven principles does our team follow best, and which do we neglect?**

Give people the list and ask them to pick one of each, with an example from the last month. Compare. Differences show how people see the work. Neglected principles often point to the team's blind spots: for example, a delivery team may neglect visibility, and an operations team may neglect iteration. The facilitator should end by choosing one principle for the team to practice.

**Where does our process add steps that nobody can link to value?**

Walk through one process and ask at each step, "Who benefits?" Unanswered steps are candidates for removal. Be ready for explanations that involve audit or safety, which are legitimate and should be recorded. Check each doubtful step with the person who benefits before deleting it.

**When did we last start something new that duplicated what we already had?**

Collect examples: a tool bought while another one was available, a template that duplicated an existing one. Ask what made it easier to start new than to use what existed. The causes are often poor discoverability or ownership. Choose one place to improve discovery, such as a shared list of tools.

**What is the smallest first step we could take on our next change, and how will we decide whether to continue?**

Pick a real upcoming change. Ask for the smallest version that would teach us something, and what would count as a sign to stop or continue. This question tests iteration and feedback. The facilitator can follow up by asking who will look at the evidence and when.

**Who depends on our work and cannot see it?**

List the people who rely on what the team does: the service desk, a partner team, customers. Ask how each finds out what is changing. Typical gaps are silent releases and undocumented decisions. Agree on one change to make the work visible to one group.

**Where have two of these principles pulled against each other, and how did we decide?**

Ask for a recent decision in which simplicity clashed with a whole-system view, or reuse clashed with automation. Discuss how it was settled and whether the reasoning is recorded. The aim is to make trade-offs explicit and to notice who decided. Agree on a simple way to record the next one.

## In practice: an agile ITIL example

A regional hospital's IT department wants to introduce a new tool for tracking access requests. The security team has drafted a seven-step approval process with five forms. The clinical systems team, which uses a two-week delivery rhythm, complains that the process would add weeks to onboarding new staff, and the security team replies that audit demands the steps.

The head of IT convenes a one-hour session and puts the seven principles on the wall. For each, the group says whether the proposed process supports it. Focus on value: only three of the seven steps can be linked to a risk. Start where you are: the hospital already has an identity system that holds most of the needed data. Progress iteratively: the draft has no plan to review. Collaborate and promote visibility: the requester cannot see where a request is. Think holistically: the process ignores contractors, who come through a supplier. Keep it simple: five forms. Optimize and automate: the draft automates nothing.

The group agrees to pilot a three-step process for the most common roles, using data from the identity system, with a visible status for requesters and a review after two months. The security team keeps its extra steps for roles with access to patient data. After two months, common requests take two days instead of nine, and audit accepts the shorter path for the pilot roles. Remaining difficulties include contractors, whose requests still arrive by email through the supplier, and a dispute over whether a fourth role belongs in the pilot. The group records both as open items, and asks the supplier to join the next review.

## Four perspectives

### Product and delivery teams

Use the principles to explain the reasons behind your choices to operations and governance. When you ask for a lighter process, point to the principle it serves. When you design a release, ask the principles of visibility and holism: who needs to know, and what else will this affect?

### Service and operations teams

Operations teams can use the principles to defend good practices and to question inherited ones. Ask of any long-standing step which principle it serves. Invite delivery teams to review your processes against the same list, and agree changes together.

### Leadership and governance

Leaders can adopt the principles as a common language for decisions about process and tools. Ask for the principle-by-principle summary when approving changes. Model the principles yourself by making your own decisions visible and by starting small.

### Customers and users

Customers and users benefit when the principles are followed: services focus on their value, change in small steps, and show where requests stand. Ask providers how they decide what to do, and expect an answer in terms of value and visible progress.

## Common failure modes

- **Reciting the principles without using them.** The principles sit on a slide. Instead, apply them to real decisions and record the outcome.
- **Using one principle to override the rest.** "Keep it simple" is used to dismiss real risk. Instead, weigh all seven and write down the trade-offs.
- **Treating "start where you are" as "change nothing."** Poor existing practice is defended. Instead, assess what exists, keep what works, and change what does not.
- **Automating before simplifying.** A wasteful process is made faster. Instead, remove unnecessary steps first.
- **Visibility as surveillance.** Dashboards are used to judge individuals. Instead, make work visible so that people can help each other and plan.
- **Ignoring the whole system.** A team improves its own part and moves problems to others. Instead, sketch the end-to-end service before changing a part.
- **Quoting a framework for authority.** "ITIL says" ends the conversation. Instead, ask which principle or practice is meant and what it protects against.
- **Relying on secondary summaries.** The wording of a principle comes from a slide that changed it. Instead, check the owner's publications when wording matters.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Awareness | Few people know the principles | Some teams know and cite them | All teams know a shared list and a plain reading | Use of the principles in decisions is reviewed | Teams, suppliers, and customers share the same language of principles |
| Use in decisions | Decisions rely on habit or authority | Some proposals are checked against the principles | Proposals include a short principle check | Principle checks are compared with outcomes | The principles shape decisions across the organization routinely |
| Iteration and feedback | Changes are large and rarely reviewed | Some changes start small | Changes follow a small step with a planned review | Review evidence is collected and acted on | Feedback loops run across teams and with customers |
| Visibility | Work is visible only to its team | Some teams share boards or plans | Work that affects others is shared with them | Visibility needs are checked with each audience | Work and decisions are visible across teams, suppliers, and customers |

## Checklist

- [ ] The seven principles are displayed where the team works.
- [ ] Each team member can name them or find them quickly.
- [ ] Proposals for new processes or tools include a short check against the principles.
- [ ] We list what exists before we start anything new.
- [ ] Changes start with a small step and a planned review.
- [ ] Work that affects other teams or customers is made visible to them.
- [ ] We sketch the whole service before changing a part.
- [ ] We simplify before we automate.
- [ ] Trade-offs between principles are recorded.
- [ ] We have checked the principles' exact wording in the owner's current publication.

## AI prompts

**Purpose: check a proposed process against the seven guiding principles.**

```text
Help me check a proposed process against ITIL's seven guiding principles: focus on value; start where you are; progress iteratively with feedback; collaborate and promote visibility; think and work holistically; keep it simple and practical; optimize and automate.

The proposed process (steps, roles, forms, tools): [paste].
What it is meant to achieve: [describe].
What already exists that it might replace or build on: [describe, or write "unknown"].

For each principle, say whether the proposal supports it, conflicts with it, or is neutral, with one sentence of reasoning that uses only the text I gave. Then list the main trade-offs and three questions we should answer before approving it. Do not claim that a standard requires any step unless I have pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: compare agile principles and ITIL principles for a decision.**

```text
We are deciding whether to [describe the decision, e.g. "require a peer review for every change"].

Agile principles I want to consider (paste the ones you consider relevant, from agilemanifesto.org): [paste].
ITIL guiding principles I want to consider: [paste the ones you consider relevant].
Our context: [describe team, service, and any rules we must follow].

Build a table showing, for each pasted principle, which option it supports and why, using only my text. Identify where principles agree and where they conflict. Suggest a small experiment to resolve any conflict, and what evidence would show whether it worked. Mark assumptions, and list what you are unsure of.
```

**Purpose: find steps in a process that nobody can link to value.**

```text
Here is a process, step by step: [paste the steps, who does each, and what forms or approvals are involved].

For each step, ask: who benefits, what risk it addresses, and what would happen if it were removed. Use only the text I gave. If the answer is unknown, write "unknown" and tell me who I should ask. Then group steps into: clearly valuable, unclear, and candidates for removal or automation. Do not assume any rule or standard applies unless I have pasted its text: [paste rule text, or write "none known"]. List what you are unsure of.
```

**Purpose: plan a retrospective around the guiding principles.**

```text
Plan a 45-minute retrospective for a team of [number] people using ITIL's seven guiding principles as the frame.

The period we are reviewing: [period]. What happened, in a few sentences: [describe].

Give a timed agenda that has each person pick one principle we followed well and one we neglected with an example, groups the answers, and ends with exactly one agreed change with an owner and a date. Add three prompts a facilitator can use. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): use to compare a practice with the agile principles alongside ITIL's.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run a retrospective that reviews the team against the principles.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan small, iterative improvements after a principles review.
- [decision-records](../../../../skills/decision-records/SKILL.md): use to record decisions and the trade-offs between principles that led to them.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to analyze a process for steps that add no value.

## Key sources

- **ITIL** (Wikipedia): lists the seven guiding principles and the history of the framework.
- **ITIL 4 Foundation** (PeopleCert): the owner's page naming the guiding principles among the topics studied.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): the agile counterpart, short enough to read beside ITIL's principles.
- **ITIL certifications** (PeopleCert): the owner's current catalog, useful for finding the publications that give the exact text.

## References

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
