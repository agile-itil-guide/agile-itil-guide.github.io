# Value Stream Management

**Value stream management looks at the whole path from request to value, measures where work waits, and improves the flow across teams, because the biggest delays in a service organisation usually sit between teams, not inside them.**

## Why this matters

Most teams measure their own work: tickets closed, stories finished, changes released. These numbers can look good while the customer waits weeks. The reason is that most of the elapsed time in a typical request is spent waiting, in queues, for approvals, between teams. A team that makes its own step faster may change nothing for the person who asked.

Lean thinking has a method for seeing this: the value stream map, which draws every step from the start of a process to the customer and records time and volume at each stage. ITIL 4 has its own idea of a value stream, a set of activities that create and deliver a service, combining value chain activities in different orders (see Topic 2.6 — The Service Value Chain). The two fit together. The ITIL idea says what a stream is, and the lean method shows how to measure and improve one.

Value stream management goes beyond a one-off mapping workshop. It means managing the flow of work continually, with shared measures, a named owner, and regular reviews that include every team in the stream. DORA's capability list includes visibility of work in the value stream and limits on work in process, and its guidance on limits describes making all work visible, including work outside the team. This topic draws on the Wikipedia article on value-stream mapping, DORA, and the Kanban Guide, and states where the sources are silent.

## Core concepts

### What a value stream is

A **value stream** is the sequence of steps through which a request becomes delivered value. The [Wikipedia article on value-stream mapping](https://en.wikipedia.org/wiki/Value-stream_mapping) describes the method as a lean-management technique that analyses the current state and designs a future state for the events that take a product or service from the start of a process to the customer. In the ITIL view, a value stream is a specific set of activities that create and deliver a particular service or product to customers (see Topic 2.6 — The Service Value Chain).

Examples in a service organisation: handling an incident from report to restoration, delivering a change from idea to production, onboarding a new customer, or fulfilling an access request.

### Value stream mapping

The article says the resulting visual map shows each critical step and quantifies the time and volume at each stage. It describes two maps: a **current-state map**, built by observing and tracking the real flow of material and information, and a **future-state map**, showing the ideal process after improvements. The current state must be built first. The article cites Mike Rother and John Shook's *Learning to See* (Lean Enterprise Institute, 1999) as a source. It lists software development, product development, project management, and administrative and office processes as areas of use, and mentions two software-focused approaches by Ali and colleagues: analysis of development artifacts and analysis of information flow.

The article does not define lead time, process time, or percent complete and accurate, does not list symbols, and discusses no criticisms. DORA's page on continuous delivery, however, refers to value stream mapping as a way to expose bottlenecks by comparing elapsed time with value-add time and measuring percent complete and accurate (%C/A). The terms below are the common usage:

| Term | Meaning, in common usage |
|---|---|
| **Lead time** | Total elapsed time from the start of a request to delivery |
| **Process time** (or touch time) | Time someone is actually working on the request |
| **Wait time** | Time the request sits idle between steps |
| **Percent complete and accurate (%C/A)** | Share of work arriving at a step that needs no correction or missing information |
| **Flow efficiency** | Process time divided by lead time, as a percentage |

Flow efficiency is a simple ratio calculated for this guide's illustration, and the sources read do not define it.

### Flow measures

The Kanban Guide names four measures of flow (see Topic 1.5 — Kanban): **work in progress** (items started but not finished), **throughput** (items finished per period), **work item age** (time since an unfinished item started), and **cycle time** (time from start to finish for a completed item). These work at the level of a team's workflow. Value stream management applies the same ideas across teams: measure elapsed time from the request to the customer's receipt, not from the point a single team picks it up.

DORA's software delivery measures, such as change lead time, apply to one slice of the stream, from commit to production (see Topic 3.4 — Change Enablement). The earlier part, from idea to commit, is also part of the value stream and often has the longest waits.

### Work in process limits

DORA's page on work in process (WIP) limits describes them as caps on how many items can be in each stage of a workflow. It says DORA's research links WIP limits to better software delivery performance only in combination with other capabilities, such as visual displays and feedback loops from monitoring, and gives no effect sizes. Its implementation advice includes making all work visible, including work outside the team, setting each limit by team capacity, holding limits firm and not raising them when people are idle, pulling work only when a slot opens, tracking lead time and its variability, reducing handoffs, and lowering limits gradually to expose the next constraint. Pitfalls it names include ignoring upstream and downstream work, which leads to local optimisation, and setting limits too high.

### Seeing the whole stream

The "local optimisation" pitfall is the central one. A stream with five teams has five queues. If one team doubles its speed, the stream's lead time may barely change, because the others still wait. Value stream management looks for the **constraint**, the step that limits the whole, and improves that first (see Topic 1.7 — Lean Software Development on optimising the whole).

### Ownership and governance

A stream crosses teams, so it needs someone responsible for the whole. A value stream owner (or a small group) holds the map, the measures, and the improvement list, and convenes the teams. Without an owner, nobody answers for the stream, and improvements stay within team boundaries. This links to product and service ownership (see Topic 5.5 — Product and Service Ownership).

### Tools

Software tools for value stream management collect data from ticketing, source control, and pipelines to show flow across the toolchain. The sources read for this guide do not discuss such tools. If you evaluate any, check what data it needs, how accurate it is, and whether the measures answer a question you have. A rough map drawn by hand with the teams involved is a good place to start and often reveals more than a dashboard.

### Limits

The Wikipedia article discusses no criticisms, and the DORA WIP page gives no effect sizes or target values. Practical cautions, offered as experience, include mapping that never leads to change, measures used to rank teams, and maps drawn from managers' memory instead of observation of real items.

## Best practices

1. **Pick one stream that matters.** Choose a flow users care about, such as a change reaching production or an access request. A narrow, real stream teaches more than a broad, abstract one.
2. **Map from real items.** Follow several recent items from start to finish, and record the actual dates, not the process document. Observation beats recollection, as the article's emphasis on observing and tracking the real flow suggests.
3. **Record time and waiting at each step.** For each step, note the working time and the waiting before it. The waits are usually the story.
4. **Include everyone in the stream.** Invite people from every team that touches the item, including approvers and suppliers. Do the mapping together, so that nobody is surprised by the result.
5. **Compute lead time, process time, and flow efficiency.** Compare elapsed time with working time and look at how much is waiting. Use the numbers to start conversations.
6. **Look at accuracy.** Ask how often work arrives at a step incomplete or wrong, requiring rework. A step with a low percent complete and accurate causes delay downstream.
7. **Find the constraint.** Identify the step that limits the whole stream and improve it first. Improving other steps gives little benefit.
8. **Draw the future state.** Design a better stream with the teams, not an ideal one, and choose the first one or two changes. Agree owners and dates.
9. **Limit work in process.** Cap what each stage holds, set limits by capacity, keep them when people are idle, and lower them gradually, as DORA's guidance describes.
10. **Make the work visible.** Show the stream on a shared board or map that includes work outside any one team. Update it as items move.
11. **Name a stream owner.** Choose a person accountable for the stream's performance who can convene the teams and take improvements to leaders.
12. **Review regularly.** Hold a short monthly review of lead time, waits, and the improvement list. Redraw the map after significant changes.

## Questions to discuss with your team

**If we followed one request from the first contact to the customer's receipt, how long would it take, and how much of that is working time?**

Choose a recent item and gather dates. Ask people to guess the answer before looking. The guess is usually optimistic. Compute the share of working time. The facilitator can ask where the largest wait occurred and who owned it. Pick it as the first target.

**Who in the stream have we never talked to?**

List the teams, approvers, and suppliers an item touches. Mark those the team has never met. Ask what would be gained by inviting them to a mapping session. Typical answers: understanding of why they wait, or what they need to work faster. Invite one.

**What do we hand over incomplete, and what do we receive incomplete?**

Ask for examples of work that returned for rework. Note which handovers cause the most returns and what is missing. This is the percent complete and accurate idea in plain terms. Agree on a short checklist for one handover.

**Where is the constraint in our stream, and what happens if we speed up something else?**

Discuss which step has the longest queue. Ask what would happen to the end-to-end time if another step doubled in speed. The point is to see that improving a non-constraint changes little. Choose to work on the constraint.

**How many things is each team working on at once, and what would happen if we capped it?**

Count work in progress per team. Discuss what it would mean to stop starting. Typical fears: something important will wait. Typical benefits: things finish. Agree on a trial cap for one team and a way to judge the result.

**Who is accountable for this stream as a whole?**

Ask the team to name the person. If nobody, discuss who could be, and what authority they would need. The facilitator can note that improvements across teams rarely happen without an owner. Propose a name and take it to the relevant leader.

## In practice: an agile ITIL example

A national environmental regulator issues permits to industrial operators. Applicants complain that a typical permit takes about four months, and the regulator's digital services group of twelve is asked to speed it up. The group had already built a faster online application form, but the elapsed time has barely changed.

The head of the group convenes people from every part of the stream: the application team, two technical reviewers, a legal officer, the fees office, and the team that issues the permit documents. They map six recent permits from the date of submission to the date the permit reached the applicant. The results are sobering. The total time was about 110 days, and the working time was about 12. The longest wait was in the technical review queue, where applications waited an average of 40 days before anyone opened them, and about a third of applications arrived with missing information that had to be requested again. The fees office and the document team each added a week of waiting for batch processing.

The group agrees three changes. The online form checks for the commonly missing items before submission. The technical review team sets a work-in-process limit and a rule to open every application within five working days to check completeness. The fees office and document team move from weekly batches to daily processing. They name the head of digital services as stream owner and review lead time monthly. After three months, median lead time is about 70 days, and the share of applications returned for missing information falls. Some problems remain. The review team says that the limit makes it harder to handle large, complex applications, and the legal officer is a single point of delay that no one had counted. The stream owner asks the review team to separate complex cases into their own lane, and works with the legal office on a second reviewer.

## Four perspectives

### Product and delivery teams

Delivery teams see only part of the stream. Join mapping sessions, share your data, and look at what happens before work reaches you and after you release. Treat the stream's lead time as a shared goal, not only your own step.

### Service and operations teams

Operations teams often hold the longest queues: access, approvals, environments, support. Be open about your capacity and your constraints. Use the map to ask upstream teams for complete inputs and to explain your priorities.

### Leadership and governance

Leaders can remove cross-team constraints that teams cannot. Name stream owners, ask for end-to-end lead time, and respond to the improvements the map suggests. Avoid using stream measures to rank teams, which discourages honest data.

### Customers and users

Customers and users experience the whole stream. Tell the team where the delays hurt, give complete information at the start, and join a mapping session if invited. Your view of when the request really finished is the true end of the stream.

## Common failure modes

- **Optimising a single team.** A local gain changes nothing end to end. Instead, find and address the constraint.
- **Mapping from memory.** The map reflects what managers believe. Instead, track real items with real dates.
- **Missing voices.** Suppliers and approvers are not in the room. Instead, include every team in the stream.
- **A map and no change.** The poster hangs on the wall. Instead, agree one or two changes with owners before the session ends.
- **No owner.** Nobody answers for the stream. Instead, name a stream owner with authority to convene.
- **Measures as rankings.** Teams hide waits. Instead, use measures to understand the stream and discuss them openly.
- **Limits that move.** WIP limits are raised whenever people are idle. Instead, hold limits and fix causes, as DORA advises.
- **Tool first.** A dashboard is bought before the questions are known. Instead, start with a hand-drawn map and add tools as needed.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Seeing the stream | Flow is judged by feel | Some teams map their own steps | Key streams are mapped end to end from real items, with all teams | Lead time, waits, and accuracy are measured and reviewed | Streams are mapped and measured across organisations and suppliers |
| Improving flow | Teams speed their own steps | Some cross-team changes are tried | A constraint-focused improvement list per stream with owners | Improvements are tied to measured lead time and checked | Stream improvement is routine and shared across streams |
| Limits and visibility | Work in progress is unlimited and hidden | Some teams use boards and limits | Work is visible across teams with agreed limits | Limits are tuned using lead-time data | Limits and visibility are coordinated across streams |
| Ownership and governance | Nobody owns the stream | Informal coordinators exist | Each key stream has a named owner and a regular review | Owners are accountable for measured outcomes | Owners collaborate across streams to optimise the whole |

## Checklist

- [ ] We have chosen one important stream and mapped it from real items.
- [ ] The map shows working time and waiting time at each step.
- [ ] People from every team in the stream took part in the mapping.
- [ ] We know the end-to-end lead time and how much is waiting.
- [ ] We have identified the constraint and chosen one or two changes.
- [ ] Work in process is visible across teams, with limits agreed at key stages.
- [ ] A named person owns the stream.
- [ ] A short regular review looks at lead time, waits, and the improvement list.
- [ ] We track how often work arrives incomplete at a handover.
- [ ] Stream measures are not used to rank teams.

## AI prompts

**Purpose: calculate lead time and flow efficiency from real items.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Purpose: plan a value stream mapping workshop.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: analyse handover quality between two teams.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Purpose: design a work-in-process limit trial.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use to map a stream, record times, and find the constraint.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to study how work moves between roles and where it waits.
- [kanban](../../../../skills/kanban/SKILL.md): use to set up visualisation and work-in-process limits for the stream.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to understand what flows into the stream and in what volume.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use to decide which streams and initiatives deserve investment.

## Key sources

- **Value-stream mapping** (Wikipedia): the definition of current-state and future-state maps and a pointer to *Learning to See*.
- **Work in process limits** (DORA, dora.dev): guidance on setting and holding limits and on avoiding local optimisation.
- **The Kanban Guide** (kanbanguides.org): definitions of the four flow measures.
- **Lean software development** (Wikipedia): the wastes and principles behind value stream thinking.

## References

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
