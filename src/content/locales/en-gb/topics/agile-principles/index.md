# Agile Principles

**The twelve principles behind the Agile Manifesto turn four value statements into habits you can check, and each one can be read as a question to ask of a live service as well as of a software project.**

## Why this matters

The four values in the Manifesto tell a team which way to lean (see Topic 1.1 — Agile Manifesto). The twelve principles say what leaning that way looks like in daily work: how often to deliver, how to treat changing requirements, who talks to whom, what counts as progress, and how a team keeps learning. They are short enough to memorize and specific enough to test against what a team did last week.

For a team that runs services, the principles are useful because they cut across the usual split between building and operating. Several of them, such as a constant pace, attention to technical quality, and regular reflection, describe what keeps a service healthy over years, not only what gets a feature out the door. Other principles pull against habits that grew up around IT service management (ITSM), such as treating every change as a risk to be controlled before it happens. Reading the two side by side shows where the tension is real and where it comes from old assumptions.

The principles were written in 2001 about software development, so they do not mention incidents, service levels, or on-call rotas. That is a gap you fill by interpretation, and the interpretation is the work of this topic. Treat the readings below as proposals to test in your own context, not as the authors' views.

## Core concepts

### Where the principles come from

The principles are published on [agilemanifesto.org](https://agilemanifesto.org/principles.html) under the heading "Principles behind the Agile Manifesto," introduced by the words "We follow these principles." They accompany the Manifesto written by the group that met at Snowbird, Utah, in February 2001. The [Wikipedia article on agile software development](https://en.wikipedia.org/wiki/Agile_software_development) lists them as the twelve principles behind the Manifesto.

Only the four values carry the Manifesto's signatures. The principles are the group's elaboration of those values, and they are what most teams quote when they want to check a practice. The text of each principle is available at the source; this topic summarises each one in its own words and quotes only short phrases.

### The twelve principles at a glance

The table groups the principles by theme and gives a plain restatement of each. The numbers follow the order on agilemanifesto.org.

| # | In short | What it can mean for a team that runs services |
|---|---|---|
| 1 | Satisfy the customer through early and continuous delivery of value | Release useful improvements to a service in small steps instead of saving them for a large launch. Judge success by what users gain, not by what the plan said. |
| 2 | Welcome changing requirements, even late | Treat a change in what the customer needs as information, not as an insult to the plan. Make your change process quick enough that welcoming a change is possible. |
| 3 | Deliver working software frequently, preferring the shorter timescale | Keep the interval between releases short, from days to a few weeks. Small releases carry less risk each and are easier to roll back. |
| 4 | Business people and developers work together daily | Put people who understand the business need in the same conversations as the people who build and run the service, every day, not at quarterly reviews. |
| 5 | Build around motivated individuals, give them support, and trust them | Give the team the access, tools, and authority to resolve problems without a chain of permission. Trust has to be matched by clear accountability. |
| 6 | Face-to-face conversation is the best way to convey information | When a service is failing, talk. Write the result down afterwards. Use video or a shared call if people are not in the same place. |
| 7 | Working software is the primary measure of progress | Measure what runs and works for users, such as a feature in use or an incident that no longer recurs, not documents produced or tasks closed. |
| 8 | Sustainable development: a constant pace, indefinitely | Protect people from permanent heroics. A rota that depends on a few exhausted individuals is a risk to the service. |
| 9 | Continuous attention to technical excellence and good design | Fix the causes of repeated failures and keep the platform maintainable. Quality work today is what lets you change quickly later. |
| 10 | Simplicity: maximise the work not done | Remove services, steps, approvals, and documents that no longer serve a purpose. Every item you keep has to be run, updated, and explained. |
| 11 | The best designs emerge from self-organizing teams | Let the people closest to the work decide how to do it within clear boundaries. Provide guardrails, not detailed instructions. |
| 12 | Reflect at regular intervals and adjust | Hold regular reviews of how the team works, including after incidents, and make at least one real change from each. |

### Four themes

The principles fall into four groups that are useful when you plan a conversation.

- **Value and change (1, 2, 3):** deliver early and often, and treat change as normal. These principles are the ones most in tension with heavy change control.
- **People and communication (4, 5, 6):** daily collaboration, trust, and direct conversation. These principles matter most during incidents and handovers.
- **Quality and sustainability (7, 8, 9, 10):** working outcomes as the measure of progress, a pace people can keep, technical quality, and simplicity. These principles protect a service over years.
- **Learning and self-organization (11, 12):** teams that decide how to work and improve how they work. These principles connect to continual improvement (see Topic 3.15 — Continual Improvement).

### Principles and practices are not the same

A principle states a direction. A practice is one way of following it. Scrum, Kanban, and Extreme Programming are bundles of practices that their users say follow the principles (see Topic 1.4 — Scrum, Topic 1.5 — Kanban, and Topic 1.6 — Extreme Programming). A team can follow a practice and break the principle behind it. A daily stand-up that becomes a status report to a manager keeps the ritual and loses the point of principle 4 and principle 5.

### Where the principles are silent or contested

The principles say nothing about security, audit, regulation, or the cost of an outage. They do not say who is on call at three in the morning. A service team has to bring in that knowledge from ITSM and from its own context. Critics also point out that principle 6 can be hard to meet when teams are spread across time zones, and that "working software as the primary measure" can be read to ignore documentation. The Wikipedia article on agile software development records criticism of this kind, and notes that evidence for the benefits of agile methods is limited. Test the principles against your own results.

## Best practices

1. **Use the principles as a review checklist.** Pick two or three principles each month and ask of a recent release, incident, or project whether the team's behaviour matched. Use real events, not general discussion. The value is in the gaps you find.
2. **Shorten the interval between releases before you automate.** Principle 3 prefers the shorter timescale. Ask what stops you releasing weekly instead of monthly, list the blockers, and remove them in order. Automation then supports a rhythm you already have.
3. **Make a route for late changes.** Principle 2 asks you to welcome change, which only works if there is a quick, safe way to accept it. Define a lightweight route for low-risk changes and keep a fuller review for risky ones (see Topic 3.4 — Change Enablement).
4. **Put business and technical people in the same room daily.** Principle 4 asks for daily work together. In a service team this might mean a service owner who joins the daily meeting, or a product representative who sits with the service desk once a week.
5. **Match trust with accountability.** Principle 5 asks you to trust motivated people. State clearly what each team owns, what it may decide alone, and what it must escalate. Trust grows when decisions and their results are visible.
6. **Talk first, record second.** During an incident, get the right people into one conversation, in person or on a call, and have someone write down decisions and timings as they happen. That serves principle 6 and gives you a record for later review (see Topic 3.2 — Incident Management).
7. **Count outcomes, not activity.** Principle 7 makes working software the measure of progress. For a service, choose measures such as time to restore service, how many users use a new feature, and how often a failure recurs. Avoid measures that reward closing tickets quickly without fixing anything (see Topic 5.6 — Metrics and Measurement).
8. **Protect the pace.** Principle 8 asks for a pace the team could keep forever. Review on-call load, overtime, and the number of urgent interruptions, and treat a rising trend as a service risk, not a personal failing.
9. **Pay down technical debt on a schedule.** Principle 9 links quality to agility. Reserve a visible share of each cycle for repairs, upgrades, and tests, and connect it to problem records so that the work is based on evidence (see Topic 3.3 — Problem Management).
10. **Delete things.** Principle 10 values the work not done. Once a quarter, list services, reports, forms, and approval steps and retire those that no one uses or that no longer reduce risk.
11. **Give teams guardrails, not scripts.** Principle 11 holds that good designs come from self-organizing teams. Set the boundaries, such as security rules, budgets, and service levels, and let the team choose how to meet them.
12. **Finish every reflection with a change.** Principle 12 asks the team to reflect, then adjust. After each retrospective or post-incident review, agree one change, name an owner, and check it at the next review.

## Questions to discuss with your team

**Which of the twelve principles do we follow best today, and which do we follow least?**

Give each person the list and ask them to mark one principle they think the team follows well and one it follows poorly, then compare. Disagreement is useful because it shows where people see the work differently. Ask for a recent example behind each mark. A facilitator should keep the talk on events and away from character. End by choosing one principle for the team to work on.

**How long does it take us to get a small, useful improvement in front of our users, and what slows it down?**

This question tests principles 1 and 3. Trace one recent small change from the request to its release, writing down each wait. Typical answers include approval meetings, manual testing, and release windows. Some of these waits protect against real risk, so ask what each one is protecting. Follow up by picking one wait to shorten.

**When did a late change in what a customer wanted last hurt us, and what would have let us accept it?**

Ask for a real case and avoid generalities. People often name contract terms, fixed scope, or a release that was already frozen. Look for the point where saying yes would have cost little, and ask what would have made that possible. This question connects principle 2 to how the team plans.

**Who from the business talks to the people who run and build our services every day, and who should?**

Map the people involved in one service: the owner, the users, the support staff, the builders. Mark how often each pair talks. Gaps often appear between support staff and builders, or between users and anyone with authority to decide. A facilitator can ask which gap has caused the most trouble in the past six months and propose a small, regular contact to close it.

**What would it take for us to work at this pace for another five years?**

This question tests principle 8. Ask about on-call load, weekend work, and how the team feels about taking leave. Watch for answers that treat heroics as normal. Ask for facts, such as how many out-of-hours calls the last rota produced, and keep the discussion on the system, not on individuals. Follow up with one change that would lower the load.

**What are we doing that we could stop doing without harming a customer?**

This question applies principle 10. Invite people to name reports nobody reads, meetings that repeat each other, and approvals that never refuse anything. Ask who would notice if each was removed. The answers need checking before action, so give someone the job of finding out. Teams often discover quick wins here, and the exercise builds the habit of questioning old rules.

## In practice: an agile ITIL example

A regional hospital's IT department supports about forty clinical and administrative applications with a service desk of six people and a small team of developers who maintain in-house tools. Clinical staff complain that fixes to the appointment-booking tool take months, and the developers say that most of that time is spent waiting for the monthly change board and for a quiet weekend to deploy.

The department head runs a half-day workshop using the twelve principles as a checklist. The group looks at the last six changes to the booking tool. Five were small fixes, and each waited an average of five weeks for the change board. The group sees that principles 2 and 3 are not being followed in practice, and that principle 4 is also weak because the clinical lead for the booking tool only sees changes after they are built.

The department agrees on a trial. Fixes that touch only one screen, have passing automated tests, and can be reversed in minutes will be treated as standard changes and approved in advance, with the clinical lead notified automatically. A weekly ten-minute meeting between the clinical lead, a developer, and a service desk analyst will choose what to fix next. The team adds a monthly review of how the change types are working, which serves principle 12.

After three months, small fixes reach users in about a week. The service desk reports fewer repeat calls about known bugs. One difficulty remains: two of the weekly meetings were skipped when the clinical lead was on the wards, and a decision that needed the lead's approval waited a week. The department agrees to name a deputy. They also find that some staff read "trust the team" as permission to skip the notification step, so they make the notification automatic instead of relying on people to send it.

## Four perspectives

### Product and delivery teams

Delivery teams can use the principles as a test for their own work. Ask whether a feature is small enough to release soon, whether it can be monitored and rolled back, and whether support staff know about it. Principles 3, 7, and 9 are the ones that most often decide whether a release is a gift or a burden to the people who must run it.

### Service and operations teams

Operations teams will recognise several principles as old truths: talk to each other during an incident, keep a sustainable pace, and keep things simple. Use them to argue for time to fix recurring problems, for rotas that people can live with, and for early involvement in design. Be ready to explain which ITSM controls exist for good reasons, so that the conversation is about purpose and not about slogans.

### Leadership and governance

Leaders shape how far the principles can be followed. Welcoming change means accepting that plans move, and trusting teams means accepting that you will not approve every decision. Ask what evidence you need to be comfortable with that trust, such as service level reports, audit trails, or incident reviews, and make sure the team can produce it without heavy manual work.

### Customers and users

For customers the principles promise frequent, useful changes and a say in what comes next. They also ask for something in return: daily or at least regular contact, quick decisions, and willingness to try small releases. Customers who only appear at the start and end of a project will receive the slowest form of the benefits.

## Common failure modes

- **Treating the principles as a rulebook.** Teams argue over wording and miss the intent. Instead, use a principle to start a conversation about a real event and decide what to change.
- **Reading "welcome change" as "accept anything."** Without limits, a service is destabilized by every request. Instead, welcome change through a defined route that checks risk, cost, and value quickly.
- **Releasing often without quality.** Frequent releases with weak tests produce frequent outages. Instead, treat principle 9 as a condition for principle 3, and invest in tests and rollback before you speed up.
- **Confusing a constant pace with a slow pace.** A team that uses "sustainable" to avoid hard work loses trust. Instead, agree what a steady, ambitious pace looks like and measure it over months.
- **Replacing face-to-face conversation with a tool.** Chat channels and tickets fill with detail nobody reads. Instead, hold a conversation when a matter is urgent or unclear, and record decisions afterwards.
- **Measuring progress by activity.** Counting tickets closed or releases shipped rewards motion. Instead, track outcomes users can see, such as restored service, adopted features, and fewer repeat incidents.
- **Holding retrospectives that change nothing.** The team talks and the next cycle is the same. Instead, agree one change at each retrospective and check it first at the next one.
- **Ignoring the principles' silence on risk.** Teams skip security and compliance because the principles do not mention them. Instead, add them as explicit constraints and discuss how to meet them in small steps.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Delivery rhythm (principles 1–3) | Releases are infrequent and large | Some teams release in small steps | Teams share a short release rhythm and a route for late changes | Release interval and lead time are tracked and reviewed | Release rhythms are coordinated across services and suppliers |
| Collaboration (principles 4–6) | Business and technical staff meet at milestones | Some teams meet daily with business representatives | Every service has a named owner and regular contact with its users | Gaps in collaboration are found in reviews and fixed | Customers and suppliers take part in planning and incident reviews |
| Sustainability and quality (principles 7–10) | Pressure is handled by overtime; quality problems are tolerated | Some teams track on-call load and technical debt | Time for repairs and a fair rota are built into planning | Outcomes, load, and recurring failures are measured and acted on | Simplification is routine across the organisation |
| Learning and self-organization (principles 11–12) | Reviews happen after serious failures only | Some teams run regular retrospectives | Every team reviews its work at a fixed rhythm and records one change | Review actions are tracked to completion and results are checked | Improvements from one team spread to others without central direction |

## Checklist

- [ ] Every team member has read the twelve principles at agilemanifesto.org.
- [ ] We have reviewed one recent release or incident against at least three principles.
- [ ] We know our release interval, and we have listed what stops us shortening it.
- [ ] Low-risk changes have a quick approval route, and risky changes have a fuller one.
- [ ] Each service has a named owner who talks to its users regularly.
- [ ] Incidents bring the right people into one conversation, with decisions recorded.
- [ ] We track on-call load and review it at least once a quarter.
- [ ] A visible share of each cycle goes to repairs and technical debt.
- [ ] We have retired at least one report, step, or service in the last quarter.
- [ ] Every retrospective ends with one agreed change, an owner, and a date to check it.

## AI prompts

**Purpose: review a recent release or incident against the twelve principles.**

```text
You are helping a team review a recent event against the twelve principles behind the Agile Manifesto.

The twelve principles, in short: (1) satisfy the customer through early and continuous delivery; (2) welcome changing requirements; (3) deliver frequently, preferring shorter timescales; (4) business people and developers work together daily; (5) build around motivated individuals and trust them; (6) face-to-face conversation; (7) working software is the primary measure of progress; (8) a sustainable, constant pace; (9) attention to technical excellence and good design; (10) simplicity, maximising the work not done; (11) self-organizing teams; (12) regular reflection and adjustment.

Event: [paste a factual, blameless description of a release, incident, or delayed change, in the order things happened].

Pick the three principles most relevant to this event. For each, say in two or three sentences whether the team's behaviour matched the principle, citing only details from the event text. Then suggest two questions for the team to discuss. Ask me up to three clarifying questions first if the event description is too thin. Mark assumptions, and list what you are unsure of.
```

**Purpose: find what slows small changes down, using principles 2 and 3.**

```text
I want to understand why small changes take a long time to reach our users. Here is the sequence of steps for one recent small change, with how long each step took: [paste the steps and durations; for example "request raised, 1 day; waiting for change board, 9 days"].

Our change process is described as: [paste a short description of the change approval process, including who approves what].

List the waits in order of length. For each wait, suggest what risk it may be protecting against and one lighter way to manage that risk. Do not claim that any standard or regulation requires a step unless I have pasted its text. Mark where you are guessing, and list what you are unsure of.
```

**Purpose: turn principles into questions for a retrospective.**

```text
Create a 45-minute retrospective plan for a team of [number and type of people, e.g. "seven people who build and run an internal payroll service"]. The retrospective should use the twelve Agile Manifesto principles to look at the last [period, e.g. "four weeks"].

Context: [paste 3-5 sentences about what happened in the period, including any incident, release, or conflict].

Include a timed agenda, one activity that surfaces facts, one that groups them by principle, and a closing step where the team agrees exactly one change with an owner and a date to review. Keep it free of any specific tool. If information is missing, ask me clarifying questions first, and list what you are unsure of.
```

**Purpose: check a proposed process for simplicity (principle 10).**

```text
Here is a process we use: [paste the steps, who does them, and the forms or approvals involved].

For each step, ask what purpose it serves, who benefits, and what would happen if it were removed. Then propose a shorter version that keeps the purposes that matter. Flag any step that exists because of an external requirement I have named: [list any laws, contracts, or standards you are certain apply, or write "none known"]. Do not invent requirements. List your assumptions and what you are unsure of.
```

## AI skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): use to check a team practice or decision against the principles and to talk through what each one means in context.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run the regular reflection that principle 12 asks for and to turn it into a real change.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan small, continuous improvements after a reflection or review.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use to plan frequent, small releases in line with principles 1 and 3.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use when helping a team move from following rituals to understanding the principles behind them.

## Key sources

- **Principles behind the Agile Manifesto** (agilemanifesto.org): the primary text of the twelve principles; read it in full.
- **Manifesto for Agile Software Development** (agilemanifesto.org): the four values that the principles elaborate.
- **History: The Agile Manifesto** (agilemanifesto.org): the authors' account of how the group met and what it wanted to change.
- **Agile software development** (Wikipedia): an overview with history, practices, and criticism, useful for finding further reading.

## References

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
