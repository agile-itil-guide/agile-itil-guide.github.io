# Agile Management

**Agile management applies agile and lean ideas to how work is planned, funded, and led, and for a service organisation the practical question is how managers can steer by evidence and outcomes without taking back the decisions that teams are best placed to make.**

## Why this matters

Agile teams can work in short cycles, but they sit inside organisations that plan in years, fund in annual budgets, and report in monthly slides. When the management system does not change, teams find that their speed is capped by the slowest part of the organisation: a funding process, an approval committee, or a plan that nobody dares revise. Agile management is the attempt to change that wider system.

For IT service management (ITSM) the question is sharper. Service managers and heads of operations carry accountability for availability, cost, risk, and the experience of users. They cannot hand those over to teams without safeguards, and they cannot steer by detailed plans in a changing environment. Agile management gives them a way to steer by goals, evidence, and frequent review, while leaving the how to the people doing the work.

The topic is also a place where terms are used loosely. "Agile management," "agile project management," and "agile leadership" overlap but are not the same, and the first is not a standard. This topic uses the [Wikipedia article on agile management](https://en.wikipedia.org/wiki/Agile_management) as its map, adds what service managers need, and flags where the evidence is thin.

## Core concepts

### What agile management is

The Wikipedia article describes agile management as applying the ideas of agile software development and lean management to team and project management, especially in product development. It separates agile management from agile leadership, which it treats as a different topic. The article says agile management has produced positive results in unpredictable, complex, and frequently changing environments, and it does not compare agile management with traditional approaches in detail.

The article also stresses creativity. It says managers are expected to support team creativity through experimentation, so that continuous innovation can happen. A 2023 study by Mieszko Olszewski in the *International Journal of Managing Projects in Business* proposes five creativity-conducive spaces in agile project management; treat it as one researcher's framework and not as an established model.

### Where it came from

According to the article, the Manifesto (2001) led organisations to extend agile practices beyond software into team and project management (see Topic 1.1 — Agile Manifesto). The term itself comes from agile manufacturing, which grew in the early 1990s out of flexible manufacturing systems and lean manufacturing (see Topic 1.7 — Lean Software Development). In 2004 Jim Highsmith, one of the Manifesto's authors, published *Agile Project Management: Creating Innovative Products*. The Scaled Agile Framework later addressed more of the organisation's structure (see Topic 1.8 — Scaling Agile).

### Standards and the term "agile project management"

The article notes that "agile project management" has not been adopted as a term by international standards bodies, so it is informal. It reports two positions from formal sources. ISO 21502:2020 from the International Organisation for Standardisation treats agile as a delivery approach tied to project scope. The Project Management Institute's *PMBOK Guide* (2022) describes an "adaptive" life cycle, also called agile or change-driven, for product development.

The practical point: if you work with auditors, procurement, or project offices, the vocabulary they use may differ from the vocabulary of your teams. Learn their terms and map your practices to them.

### Related methods the article names

The article lists the methods that sit under the agile management umbrella: Scrum, Scrumban, Kanban, Disciplined Agile Delivery, and agile learning. It also names two specialised areas that matter to service teams: platform engineering and site reliability engineering (see Topic 5.3 — Site Reliability Engineering).

### From project to product and service

A project has a start, an end, and a scope. A service has no end date, and the people who build it also run and change it. A common shift in agile management is from funding projects to funding long-lived teams that own a product or service, with goals that change as learning accumulates. The shift is hard because budgets, job roles, and accounting rules are often tied to projects. ITIL's view of services as a continuing relationship with consumers points in the same direction (see Topic 2.3 — The ITIL Service Value System).

### What managers do differently

Agile management does not remove management; it changes where managers put their effort. The table contrasts tendencies, not rules.

| Area | Directive tendency | Agile management tendency |
|---|---|---|
| Planning | A detailed plan up front, tracked against milestones | A direction and near-term plan, revised as evidence arrives |
| Control | Approvals and status reports | Clear goals and limits, plus frequent inspection of working results |
| Funding | Per project, fixed in advance | Per team or service, reviewed regularly against outcomes |
| Roles | Manager assigns tasks | Manager sets context, removes obstacles, and develops people |
| Risk | Reduced by up-front analysis | Reduced by small steps, early feedback, and quick reversal |
| Learning | After the project ends | Built into regular reviews and retrospectives |

### The service manager's balance

Service managers have duties that do not disappear: availability targets, security obligations, cost control, regulatory compliance. Agile management does not set these aside. It changes how you meet them: by agreeing outcomes and limits with teams, using automated evidence, and reviewing results often. A manager who simply declares "we are agile" and drops oversight has traded one failure for another.

### Evidence and limits

The article gives few measured results for agile management. The broader literature on agile methods, as the Wikipedia article on agile software development notes, rests mostly on surveys and anecdote, with limited and inconclusive empirical evidence. Some of the sources consulted for this guide are vendor or practitioner material. Treat claims of large gains with care, and measure outcomes in your own organisation.

## Best practices

1. **State the outcomes you want, not the tasks.** Describe the result for users or the business, such as faster restoration of a service or fewer repeat incidents. Let teams decide how to achieve it within agreed limits.
2. **Make limits explicit.** Write down what teams may decide alone, such as spending, tooling, and risk thresholds, and what needs escalation. Clear limits create more freedom than vague trust, because people know where the edges are.
3. **Plan in short horizons with a stable direction.** Keep a longer-term goal visible, and review the near-term plan every few weeks. Avoid detailed plans for work that is more than a quarter away.
4. **Fund teams and services, not only projects.** Where you can, give long-lived teams a budget and review their results regularly. Where you must fund projects, keep them short, release value early, and be ready to stop.
5. **Inspect working results, not reports.** Attend reviews where teams show what works for users. Ask for a few outcome measures that all teams can produce from their own tools (see Topic 5.6 — Metrics and Measurement).
6. **Remove obstacles.** Ask each team once a month what slows it down that you can change: an approval, a dependency, a missing tool. Treat these as your backlog and show progress.
7. **Use the vocabulary of the audience.** When you talk to a project office, an auditor, or a procurement team, explain agile ways of working in the terms they use, such as ISO 21502 or the PMBOK Guide's adaptive life cycle, and show the evidence that your approach produces.
8. **Protect creativity and learning.** Allow time for experiments, and accept that some will fail. Ask what was learned and who needs to know.
9. **Keep accountability visible.** For each service, name an owner who answers for its outcomes. Describe what the owner decides and what the team decides (see Topic 5.5 — Product and Service Ownership).
10. **Balance stability and change.** Agree which services need tight control, such as payment or safety systems, and which can change freely. Apply lighter or stricter controls accordingly (see Topic 3.4 — Change Enablement).
11. **Develop people.** Coach team leads and product owners, rotate them through different teams, and give them time to learn. Role changes fail more often from lack of support than from lack of intent.
12. **Review the management system itself.** Once or twice a year, ask teams which management practices help and which get in the way, and change at least one. This applies the retrospective habit to managers.

## Questions to discuss with your team

**What decisions do we make today that the people doing the work are better placed to make?**

List the last ten decisions made by managers and mark which could have been made by the team with the same information. Look for patterns such as spending, priorities, and tool choices. Ask what stops those decisions moving, such as policy, habit, or lack of information. Close by choosing one decision to delegate, with its limits written down.

**How do we find out whether a service is doing well, and how often?**

Ask each person how they would know about the state of a service. Typical answers are monthly reports, complaints, and gut feeling. Ask for the freshest evidence available and how it could reach managers more quickly. A facilitator can propose a regular review of working results with a few shared measures.

**What are we funding, and how do we decide to stop?**

Look at the list of active projects and services. For each, ask what outcome it should produce and when someone last checked. The aim is not to cut but to see where decisions to continue or stop are made on evidence. Ask what a short review of each item would involve, and choose one to try.

**What do auditors, finance, or the project office need from us, and are we giving it in a form they can use?**

Ask for a recent request from each and what it cost the team to answer. Many requests can be met from data already in the team's tools. Ask what a shared set of reports would look like. Follow up with the contact in each function and ask them what they would accept.

**What obstacles did our teams name last time we asked, and what did we do about them?**

If you have not asked, ask now. If you have, list the obstacles and what changed. Teams stop reporting obstacles when nothing happens. Ask which obstacles managers can remove alone and which need other leaders. Commit to acting on one visible obstacle in the next month.

**Where would experiments help us, and how much failure can we accept?**

Ask what the organisation would like to try but regards as too risky. Discuss limits: how large, how long, how reversible. A small experiment with a clear question and a rollback is often acceptable where a big change is not. Decide who has the authority to approve such experiments and how results will be shared.

## In practice: an agile ITIL example

A county government's IT department runs about 60 services for residents and staff, funded each year as a list of projects. The department head notices that project teams are disbanded at the end of each year just when they have learned the service. Operations then inherit systems they did not build, incident numbers rise, and every new project starts with a long business case.

With the finance director, the head proposes a trial for the three busiest resident-facing services: a permit portal, a payment service, and a library catalog. Each gets a standing team funded for the year, a named service owner, and three or four outcome goals reviewed quarterly, such as time to restore service after an incident and the share of permit applications completed online. The teams keep a single backlog that includes new features and service improvements. Quarterly reviews replace monthly project status reports, and every team shows working changes to the owner and a resident representative.

After a year the finance director reports that the quarterly reviews gave better information than project reports had. Repeat incidents on the payment service fell as the team fixed causes rather than waiting for the next project. Problems remain. The library catalog team found it hard to justify its funding against the other services in the absence of a shared measure of value, and the finance rules still require a business case for changes above a threshold. The department agrees to test a simple value measure with the three teams and asks the finance director to review the threshold. The trial expands to six services.

## Four perspectives

### Product and delivery teams

Delivery teams should expect managers to set outcomes and limits, and should hold managers to it. Show working results regularly, report obstacles with evidence, and take on the responsibility that comes with freedom, including operational support. Do not wait for managers to discover what you know about the service.

### Service and operations teams

Operations managers can move from managing tickets to managing flow and outcomes. Share incident and problem data with product teams and funders, and argue for the cost of keeping services healthy. Be explicit about the safeguards that matter for availability and security, and explain why.

### Leadership and governance

Senior leaders set the funding model, the reporting rhythm, and the amount of trust teams receive. Ask whether the management system lets teams act on what they learn. Define a small number of shared outcome measures, and resist adding reports for each new concern. Expect to change your own habits first.

### Customers and users

Customers gain when managers listen to results and not only plans. Ask to be part of regular reviews, and describe what matters most. If a service is funded as a continuing team, you have a stable partner who learns your needs over time. In return, expect to be asked for decisions and feedback often.

## Common failure modes

- **Delegation without limits.** Teams are told to decide and do not know the boundaries. Instead, write down what teams may decide alone and what needs escalation.
- **Agile theater at the top.** Leaders adopt the vocabulary and keep annual plans and tight approvals. Instead, change one piece of the management system, such as funding or reporting, and show the effect.
- **Replacing oversight with trust alone.** Managers stop looking, and problems grow unseen. Instead, inspect working results and outcome measures at a regular rhythm.
- **Project funding for long-lived services.** Teams are disbanded when the project ends. Instead, fund standing teams for products and services that continue.
- **Too many reports.** Each new concern adds a report. Instead, agree a few shared measures that teams can produce from their own tools.
- **Ignoring the audience's vocabulary.** The project office and auditors cannot map agile practices to their requirements. Instead, translate between the terms and offer evidence in a form they can use.
- **Punishing failed experiments.** People stop trying new things. Instead, set limits on experiments and ask what was learned.
- **Leaving managers without support.** Managers are told to change and given no coaching. Instead, train and coach them as you do teams.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Goals and planning | Plans are annual and detailed | Some teams use short plans and outcome goals | Outcome goals and short-horizon planning are standard | Goal progress is reviewed and plans change on evidence | Goals are aligned across teams, customers, and suppliers continually |
| Decision rights | Managers decide most things | Some decisions are delegated informally | Decision limits are written down for each team | Decisions and their results are reviewed | Decision rights adapt across the organisation from evidence |
| Funding | Funding is by project and fixed | Some services have standing teams | Services have stable funding reviewed at set intervals | Funding follows measured outcomes | Funding flows across teams and suppliers as value is shown |
| Oversight | Oversight is by status report | Some reviews show working results | Regular reviews of working results with shared measures | Measures are tracked and trigger action | Oversight draws on shared, automated evidence across the organisation |

## Checklist

- [ ] Each service has a named owner and a few outcome goals.
- [ ] Teams know in writing what they may decide alone and what needs escalation.
- [ ] Plans have a stable direction and a short, regularly revised near-term horizon.
- [ ] At least one important service has a standing team and a regular funding review.
- [ ] Managers attend reviews of working results, and not only status meetings.
- [ ] A small set of shared outcome measures is produced from team tools.
- [ ] We have asked teams about obstacles in the last month and acted on at least one.
- [ ] Project office, finance, and audit have agreed what evidence they accept from agile teams.
- [ ] Limits for experiments are written down.
- [ ] Managers get coaching and have time to learn new ways of working.

## AI prompts

**Purpose: turn a task-based plan into outcome goals for a team.**

```text
Help me rewrite a plan as outcome goals for a team.

The plan as it stands (tasks and dates): [paste it].
The service or product it relates to: [describe in 2-3 sentences, including who uses it].
What users or the business want to be different: [describe, or write "unknown"].

Propose three to five outcome goals, each one sentence, describing a result for users or the business and not a task. For each goal, suggest how the team could tell whether it was achieved, using measures they could produce themselves, without inventing numbers. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Purpose: write a decision-rights table for a team.**

```text
Help me draft a decision-rights table for [team name], which runs [service].

Decisions that come up often: [list 8-12, such as buying a tool, changing a configuration, approving a low-risk change, setting priorities].
Known rules we must follow (security, audit, financial): [list only rules you are sure apply, or write "none known"].
How decisions are made today: [describe briefly].

Produce a table with three columns: the team decides alone, the team decides and informs, and escalate. Place each decision in one column and explain your reasoning in a sentence. Mark any placement that is a guess and do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare to explain agile ways of working to a project office or auditor.**

```text
I need to explain how our agile team works to [audience, e.g. "our project office"].

Their concerns, in their words: [paste].
Terms and documents they use: [list, such as the names of any standards or methods you use].
How our team works: [describe planning, funding, reporting, and review in a few sentences].

Create a table that maps their concerns to what our team does and the evidence it produces. Where no evidence exists, say so and propose a lightweight way to produce it. Do not claim that any standard requires something unless I have pasted its text. Mark assumptions, and list what you are unsure of.
```

**Purpose: plan a quarterly review of working results.**

```text
Plan a 90-minute quarterly review for [number] teams that run [services], attended by [managers, owners, and any customers].

Inputs: each team's outcome goals [paste], the measures they produce [paste], and the biggest obstacle each team reported [paste].

Give a timed agenda that shows working results, reviews progress against goals, collects obstacles, and ends with decisions about priorities and funding. Include questions for managers to ask, and avoid asking for new reports. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI skills

- [agile-charter](../../../../skills/agile-charter/SKILL.md): use to set out a team's purpose, outcomes, and limits at the start of a product or service.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): use to launch a new team with shared goals and working agreements.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): use to describe direction and near-term plans without committing to dates too far ahead.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use to decide which products and initiatives to fund and how to review them.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make decision rights and responsibilities explicit for a service.

## Key sources

- **Agile management** (Wikipedia): a short overview of origins, standards positions, and related methods, with citations to follow.
- **Agile Project Management: Creating Innovative Products** (Jim Highsmith, 2004): the book by one of the Manifesto's authors that the Wikipedia article cites as an early statement.
- **Manifesto for Agile Software Development** (agilemanifesto.org): the values that agile management aims to extend beyond software.
- **PMBOK Guide** (Project Management Institute, 2022): the project management body of knowledge, including its adaptive life cycle, for working with project offices.

## References

1. Agile management — Wikipedia — https://en.wikipedia.org/wiki/Agile_management
2. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
3. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
4. Agile manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Agile_manufacturing
5. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
6. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
9. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
