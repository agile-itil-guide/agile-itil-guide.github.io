# Kanban

**Kanban manages work as a flow: it makes the workflow visible, limits how much is in progress, and uses measures of flow to improve, which suits service teams whose work arrives continuously and cannot be planned in fixed cycles.**

## Why this matters

A service desk, an operations team, and a platform team all share one trait: work arrives when it arrives. Incidents, requests, and small changes come in a stream, and the team cannot plan a month of them in advance. Frameworks built around fixed cycles, such as Scrum, fit this work only with adjustments (see Topic 1.4 — Delivery Forecasting and Planning Metrics). Kanban was designed for flow, so it fits more naturally.

Kanban also speaks the language of service management. It asks how long work takes, how much is waiting, and which step is the bottleneck, and these are the questions behind service levels, queue management, and capacity planning. A team that tracks the age and cycle time of its work can talk about service levels with data instead of impressions.

Kanban is simple to start and surprisingly easy to do badly. A board with columns is not Kanban if nothing limits work in progress and nobody uses the measures. This topic explains what the Kanban Guide asks of a team, where the method came from, and how to apply it to service work.

## Core concepts

### What Kanban is

The [Kanban Guide](https://kanbanguides.org/english/), whose current version is dated May 2025 and which lists John Coleman and Daniel Vacanti among its authors, defines Kanban as a strategy for optimizing the flow of value through a process. It describes flow as the movement of potential value through a system. The aim is a balance of three things: effectiveness (delivering what stakeholders want, when they want it), efficiency (using resources well), and predictability (forecasting delivery with an acceptable level of uncertainty). The guide says it applies to knowledge work in any industry.

The word "kanban" is Japanese and means a signboard or billboard. The [Wikipedia article on Kanban in development](https://en.wikipedia.org/wiki/Kanban_(development)) says the method comes from lean manufacturing and the [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System), with a just-in-time system begun at Toyota in the late 1940s. David J. Anderson's 2010 book traces the software version to a 2004 project at Microsoft and a 2006–2007 project at Corbis.

### The three practices

The Kanban Guide names three practices. A team that does all three, and uses the measures below, is practicing Kanban in the sense of the guide.

| Practice | What the team does | A note for service teams |
|---|---|---|
| **Define and visualize the workflow** | Agree a Definition of Workflow (DoW): what a work item is, where it starts and finishes, the states between, how work in progress is limited, the policies for moving work, and a service level expectation (SLE). Show it on a board. | The DoW for a service desk might define incident, request, and change items, with different states and policies for each |
| **Actively manage items in the workflow** | Control the number of items in progress, watch for items that are aging, and unblock stalled items. | A limit on open incidents per engineer forces the team to finish or hand over work before starting more |
| **Improve the workflow** | Change the DoW over time to improve effectiveness, efficiency, and predictability, at set intervals or when needed. | A review of the DoW after a major incident can change policies, limits, or states |

The guide does not prescribe a board layout or any meetings. Teams are free to add practices, provided the core practices, the measures, and the goal of optimizing value stay intact.

### Work in progress limits and pull

Controlling work in progress (WIP) creates what the guide calls a pull system: new work starts only when there is capacity for it. The Wikipedia article gives the example of a "deployment" step with a limit of five. When the step is full, nothing more can enter until something finishes, so a blockage becomes visible and people can help clear it. Without limits a board is only a picture of the mess.

### Four flow measures

The guide lists four measures that a team using Kanban tracks:

- **Work in progress:** the number of items started but not yet finished.
- **Throughput:** the number of items finished in a given period.
- **Work item age:** how long an unfinished item has been in progress.
- **Cycle time:** how long a finished item took from start to finish.

The guide says teams may rename these and should add other measures where useful, and that measures matter only when they inform the three practices. A service level expectation is a forecast of how long an item should take, based on past cycle times. It is not a promise, and it differs from a service level agreement (SLA) negotiated with a customer. See Topic 3.7 — Service Level Management.

### The wider Kanban literature

Other writers have described the method more broadly. The Wikipedia article lists Don Reinertsen's work on flow, Jim Benson and Tonianne DeMaria Barry's *Personal Kanban*, Mike Burrows's *Kanban From the Inside*, and Corey Ladas's *Scrumban*, which proposed Kanban as a way to improve Scrum. Some of these sources list practices beyond the three in the guide, such as making policies explicit, implementing feedback loops, and improving collaboratively. Treat these as useful additions, not as requirements of the guide.

The Wikipedia article carries a tag noting that a major contributor may have a close connection to the subject, so check its claims against the primary sources.

### What Kanban does not say

Kanban is not a project plan, a set of roles, or a release process. It does not tell you how to design a service or run an incident. It gives you a way to see and manage flow, and it relies on you to bring the content of your work. That is also its strength: you can start with the process you have and improve it in small steps (see Topic 3.15 — Continual Improvement).

## Best practices

1. **Start with what you do now.** Draw the real workflow, with the states work actually passes through, including the waits. Do not draw the process you wish you had. You can improve only what you can see.
2. **Define what a work item is.** Decide whether incidents, requests, and changes are one type of item or several, and give each a clear start and finish. Mixed definitions make measures meaningless.
3. **Set WIP limits and keep them.** Begin with a limit that feels slightly tight, such as one or two items per person, and adjust from experience. A limit that is routinely broken gives no information, so discuss each breach.
4. **Make policies explicit.** Write on the board when an item may move to the next state, who may pull it, and what counts as blocked. Visible policies cut arguments and make onboarding easier.
5. **Watch work item age, not just cycle time.** Cycle time is known only after an item finishes, whereas age shows problems while there is still time to act. Review the oldest items every day.
6. **Use a service level expectation based on history.** Take the cycle times of recent finished items and state, for example, that most items of a type finish within a given number of days. Revise it as the data change. Do not promise customers a number you have not measured.
7. **Treat expedited work as an explicit exception.** Urgent incidents will jump the queue. Define a policy, such as a lane with its own limit, so that exceptions are visible and do not silently destroy flow (see Topic 3.2 — Incident Management).
8. **Look for the bottleneck and help it.** When a state is always full, ask whether it needs more capacity, a changed policy, or a different upstream flow. Moving people to the bottleneck usually beats pushing more work into it.
9. **Hold reviews at a regular rhythm.** The guide allows improvement at set intervals or when needed. A short weekly review of the measures and a monthly look at the DoW work for many teams.
10. **Connect the board to the rest of the organization.** Make the board visible to the customers and to neighboring teams. Agree how items cross between boards, such as from a service desk to a development team.
11. **Keep measures for learning.** Use the numbers to ask questions, not to rank people. When flow data becomes a target, teams game it (see Topic 5.6 — Metrics and Measurement).
12. **Combine with other frameworks deliberately.** If the team uses Scrum events for planning and Kanban for flow, say what each is for, and check that the combination reduces confusion (see Topic 1.8 — Scaling Agile for coordinating several teams).

## Questions to discuss with your team

**If we drew our real workflow, including the waits, what would it look like?**

Ask each person to draw the path of one recent item, then combine the drawings on a wall. Differences between the drawings show hidden steps and informal handovers. Expect surprises: approvals nobody mentioned, items waiting for another team, and rework loops. Follow up by marking the three longest waits.

**How much work is in progress for each of us right now, and how much of it is waiting?**

Count the open items per person and mark which ones are blocked or idle. Many teams find that most items are waiting and few are being worked on. Ask what each person does when blocked, and whether starting a new item is the usual answer. The aim is to discuss why starting is rewarded and finishing is not.

**What is the oldest item on our board, and why is it still there?**

Pick the three oldest items and trace what happened. Common answers are an unclear owner, a dependency on another team, or an item nobody wants to cancel. Ask whether the item should be finished, cancelled, or escalated. A facilitator can ask what policy would have caught the item sooner.

**What do we promise our customers about how long things take, and what do our own numbers say?**

Compare the agreed service levels with the actual cycle times of finished items. If you have no data, collect it for a month first. Discuss any gap openly. Ask whether the target should change, or whether the way of working should. Remember that a service level expectation based on data is a forecast, whereas an SLA is an agreement.

**When urgent work arrives, what happens to everything else?**

Walk through the last urgent incident and see which items stalled. Ask whether the team has a policy for urgent work, and whether anyone knows how many urgent items it handles per month. Teams often discover that urgent work is routine, not exceptional, and that the policy needs to reflect it. Follow up by agreeing on a limit for expedited items.

**Which of our measures would we trust enough to base a decision on, and which would we ignore?**

Ask people to rank the available measures by how much they trust them and why. Distrust often comes from inconsistent item definitions or from gaps in the data. Do not turn this into an argument about people; focus on the quality of the data. Close by choosing one measure to improve in the next month.

## In practice: an agile ITIL example

A university's IT service desk has eight analysts who handle incidents and requests from students and staff. The team has a ticketing tool with queues, but no limits, and each analyst has between 20 and 40 open tickets. Customers complain that tickets seem to disappear, and the desk manager cannot say how long a typical request takes.

The manager and analysts build a board that mirrors the tool: new, triaged, in progress, waiting for the customer, waiting for another team, and resolved. They agree on a limit of eight active items per analyst and a rule that tickets waiting for others must name the person who is responsible for the next step. They set aside one lane for urgent incidents, with a limit of two. For a month, they only collect data on cycle time and age.

After the month, the data show that most requests are resolved in a few days but a long tail waits weeks, mostly "waiting for another team." The team sets a service level expectation from the data and starts a daily review of the oldest items. Several long-waiting tickets are closed or escalated in the first week. A problem remains: the network team, which owns many of the waiting tickets, has no board of its own and the desk cannot see its queue. The desk manager arranges a weekly conversation with the network team lead, and the two teams begin to discuss sharing a view of the items that cross between them.

## Four perspectives

### Product and delivery teams

Delivery teams can use Kanban to see where work waits between design, build, test, and release. Limits on work in progress reduce the number of half-finished changes, and flow data can show where a release process needs attention. Treat requests from operations as items in the same flow, with their own policy.

### Service and operations teams

Operations teams are the natural home for Kanban. Visualize incidents, requests, and changes in their own states, set limits, and watch aging. Use cycle time data to set realistic expectations with customers, and use blocked and waiting states to start conversations with other teams.

### Leadership and governance

Leaders benefit from flow measures as a more honest picture than status reports. Ask for cycle time, throughput, and age by type of work, and ask what the team changed because of them. Avoid targeting individual numbers, which produces gaming. Support limits on work in progress even when stakeholders want more started.

### Customers and users

Customers gain from clearer forecasts and fewer lost requests. Ask the team for the service level expectation for your type of request, and expect it to be based on history. If your request is urgent, expect to be asked why, because the team must protect the flow of others.

## Common failure modes

- **A board without limits.** The board shows the mess but does not reduce it. Instead, set and enforce work in progress limits, and review each breach.
- **Mixed item definitions.** Incidents, projects, and tasks share one column set, and the measures mean nothing. Instead, define item types with separate states and policies.
- **Ignoring aging.** Old items sit unnoticed until a customer complains. Instead, review the oldest items every day and decide on each.
- **Turning measures into targets.** Teams split or close items to improve numbers. Instead, use measures to ask questions and review them with the team.
- **Hidden expedite lanes.** Urgent work bypasses limits without trace. Instead, give urgent work a visible lane, a limit, and a policy.
- **Copying a board layout.** A team adopts another team's columns without understanding its own flow. Instead, map the real workflow first.
- **Treating Kanban as a reporting tool.** Managers use the board to watch people and not to improve flow. Instead, use it as the team's tool for deciding what to do next.
- **Never improving the workflow.** The board stays the same for years. Instead, hold regular reviews of the Definition of Workflow and change it when the data call for it.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Visualizing the workflow | Work lives in individual inboxes and heads | Some teams have boards that show their states | Teams share a Definition of Workflow with item types and policies | The board is reviewed and corrected against what actually happens | Boards across teams show cross-team items and handovers |
| Limiting work in progress | No limits; people start more than they finish | Some teams set informal limits | Limits are set and breaches are discussed | Limits are adjusted from flow data | Limits and capacity are balanced across teams and suppliers |
| Flow measures | Few measures are collected | Some teams record cycle time or throughput | The four measures are collected consistently | Measures are reviewed and used to set service level expectations | Flow data are shared across teams and used to plan capacity together |
| Improvement | Changes follow crises | Teams occasionally adjust the board | Teams review the workflow at a regular rhythm | Changes are linked to measures and results are checked | Improvements spread between teams without central direction |

## Checklist

- [ ] We have drawn our real workflow, including waits and handovers.
- [ ] Our work items are defined, with a clear start and finish for each type.
- [ ] Work in progress limits exist and each breach is discussed.
- [ ] Policies for moving and blocking items are written on or near the board.
- [ ] We track cycle time, throughput, work in progress, and work item age.
- [ ] We review the oldest items daily or at least weekly.
- [ ] We have a service level expectation based on our own history.
- [ ] Urgent work has its own visible lane, limit, and policy.
- [ ] The Definition of Workflow is reviewed at a regular rhythm.
- [ ] Neighboring teams and customers can see the items that concern them.

## AI prompts

**Purpose: describe your real workflow and find where work waits.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Purpose: draft a Definition of Workflow for a team.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Purpose: analyze flow data from your ticket system.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Purpose: plan a review of the board with the team.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI skills

- [kanban](../../../../skills/kanban/SKILL.md): use to design or review a board, work in progress limits, and policies for a service or operations team.
- [scrumban](../../../../skills/scrumban/SKILL.md): use when a team wants Scrum's planning events together with Kanban's flow management.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use to map how work moves between teams and where it waits before you design the board.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan small improvements to the workflow after a flow review.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to understand what kinds of work arrive and in what volume before setting limits and capacity.

## Key sources

- **The Kanban Guide** (John Coleman and Daniel Vacanti and others, kanbanguides.org): the concise authoritative definition of the three practices and four measures.
- **Kanban (development)** (Wikipedia): an overview of the history and wider practices, with citations to the main books.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): the account of how Kanban was applied to software work.
- **Toyota Production System** (Wikipedia): background on the lean manufacturing origins of kanban.

## References

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
