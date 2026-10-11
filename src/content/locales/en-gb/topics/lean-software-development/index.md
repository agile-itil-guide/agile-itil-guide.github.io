# Lean Software Development

**Lean software development applies the lean ideas of eliminating waste, learning fast, and optimising the whole system to software work, and it gives service teams a shared way to see where time and effort leak out of the flow from request to value.**

## Why this matters

Agile methods tell you to deliver in small steps and learn. Lean asks a sharper question: where does the time go? In most service organisations, the working time on a request is a small part of the elapsed time. The rest is waiting for approvals, handovers between teams, rework from defects, and work that nobody wanted in the first place. Lean gives you words and tools for seeing that waste and removing it.

Lean also puts the focus on the whole system. A team that speeds up its own part while the queue before or after it grows has not improved anything for the customer. This view fits service management well. A service is the sum of many teams, tools, and suppliers, and a delay anywhere is a delay for the user. The principle "optimise the whole" is a standing reminder to look at the end-to-end flow.

Lean is a source for much of what appears elsewhere in this guide. Kanban draws on the same roots (see Topic 1.5 — Kanban), value stream management applies lean mapping to digital work (see Topic 5.4 — Value Stream Management), and continual improvement echoes the lean habit of constant small gains (see Topic 3.15 — Continual Improvement). This topic explains the ideas and how to use them without turning them into slogans.

## Core concepts

### Where lean comes from

According to the [Wikipedia article on lean manufacturing](https://en.wikipedia.org/wiki/Lean_manufacturing), lean grew out of the [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System). After the Second World War Japanese manufacturers had little cash, space, or raw material, and Taiichi Ohno and Shigeo Shingo redesigned Toyota's process around small factories and low inventory, building on the teaching of W. Edwards Deming. John Krafcik coined the term "lean" in a 1988 article, and James Womack and Daniel Jones defined it formally in their 1996 book *Lean Thinking*.

The term "lean software development" comes from the 2003 book *Lean Software Development: An Agile Toolkit* by Mary and Tom Poppendieck, according to the [Wikipedia article on lean software development](https://en.wikipedia.org/wiki/Lean_software_development). The book adapts lean manufacturing principles to software and compares lean tools with agile practices. The Poppendiecks' talks at agile conferences helped bring the ideas into the agile community.

### Five principles of lean thinking

Womack and Jones set out five principles of lean thinking, as the manufacturing article records them:

1. **Value:** define value from the customer's point of view.
2. **Value stream:** identify the whole sequence of steps that creates that value, and challenge the steps that add none.
3. **Flow:** make the remaining steps flow without interruption.
4. **Pull:** let the customer's demand pull work through, instead of pushing it.
5. **Perfection:** keep improving, so that waste keeps being removed.

### Seven principles for software

The Wikipedia article on lean software development lists seven principles for software:

| Principle | What it asks | In service work |
|---|---|---|
| **Eliminate waste** | Remove anything that does not add value for the customer | Drop approvals that never refuse, reports nobody reads, and features nobody uses |
| **Amplify learning** | Shorten the cycle from trying something to learning how it went | Release small changes and watch what users do |
| **Decide as late as possible** | Delay commitments until you have facts, while keeping options open | Do not fix the design of a service's full future before you know how it is used |
| **Deliver as fast as possible** | Reduce the time from idea to value; fast delivery lets you see and analyse results sooner | Shorten the path for small changes and routine requests |
| **Empower the team** | Let the people doing the work make decisions about it | Give the service desk the authority to resolve common problems without escalation |
| **Build integrity in** | Build quality in as work is done, instead of inspecting it afterward | Automated tests, monitoring, and clear runbooks as part of the work |
| **Optimise the whole** | Improve the end-to-end flow, not the performance of one part | Measure the time from request to resolution across teams, not each team's own queue |

The article says these principles succeed only when applied together and with sound judgment about the environment. It also calls the belief that "haste makes waste" a myth, arguing that fast delivery helps teams see and analyse output sooner. That claim is a view, not a law: speed without built-in quality does produce waste, which is why "build integrity in" sits beside "deliver as fast as possible."

### Waste in software and service work

Lean's seven wastes (called *muda*) come from Shingo's list for manufacturing: inventory, overproduction, over-processing, transportation, excess motion, waiting, and defects. The lean software article maps them to software like this:

| Manufacturing waste | Software equivalent | Example in a service team |
|---|---|---|
| Inventory | Partially done work | A long list of started but unfinished changes |
| Overproduction | Extra features | A report or service nobody asked for |
| Over-processing | Extra processes | Four approvals on a low-risk change |
| Transportation | Task switching | An engineer pulled between incidents and project work |
| Waiting | Waiting | A ticket waiting for another team's queue |
| Motion | Handoffs | A request passing through five people |
| Defects | Defects | A bug that causes rework and repeat incidents |

The Japanese terms *mura* (unevenness) and *muri* (overburden) are sometimes added to discussions of waste. The Wikipedia articles consulted here list only the seven wastes, so use the extra terms with care, and define them when you do.

### Value stream mapping

The lean software article names value stream mapping as the technique for finding waste, with waste removed in repeated rounds. A map shows each step in the path from request to delivered value, with the time work spends being worked on and the time it spends waiting. The result is often a shock: a path that takes weeks may contain hours of actual work.

### Pull, flow, and kanban

Lean's pull principle is behind Kanban's limits on work in progress. The software article describes just-in-time development in which the customer states the needed result and the team organises its own tasks, pulling work as capacity allows. Kanban cards are a visible form of that pull (see Topic 1.5 — Kanban).

### Kaizen: constant small improvement

Kaizen means continuous, incremental improvement. The manufacturing article traces it to improvement teams at Toyota in 1936. In a service team, it appears as small changes made often and by the people closest to the work, such as a revised template, a new automated check, or a clearer handoff. It differs from large improvement programs in that it never waits for a budget cycle.

### Limits of lean

The articles consulted name no formal criticisms, but practical limits are well known. Lean came from repeatable manufacturing, and knowledge work varies far more. Counting waste can reduce slack that a team needs to cope with surprises, so a fully loaded team is slow to respond to an incident. Treat lean as a lens that finds waste, and keep spare capacity where variation is high (see Topic 3.11 — Availability, Capacity, and Performance).

## Best practices

1. **Define value from the customer's side.** For each service, write what the user actually gets and when they get it. Use this to judge every step: does it add value for the user, or does it only serve our own process?
2. **Map the value stream for one real request type.** Choose a common request or change, and trace it from the first contact to delivery. Record working time and waiting time at each step. A rough map drawn in an hour is more useful than a perfect one drawn in a quarter.
3. **Name the wastes you find.** Use the seven categories as a checklist: partially done work, extra features, extra process, task switching, waiting, handoffs, defects. Naming them makes them easier to discuss without blaming individuals.
4. **Attack the longest wait first.** The biggest delay in the map usually sits between steps, not inside them. Reducing it usually beats polishing a step that is already fast.
5. **Limit work in progress.** Finishing work is faster than juggling it. Cap the number of open items per team and watch what happens to the time each takes.
6. **Build quality in.** Add checks at the moment of work, such as automated tests, peer review, and pre-release monitoring, so that defects are found early. Inspecting at the end is slower and more expensive.
7. **Delay decisions that you cannot yet make well.** Keep options open until you have facts, but set a date by which you will decide. This avoids both early commitment to a wrong design and endless indecision.
8. **Empower the people closest to the work.** Let service desk analysts, on-call engineers, and developers make decisions within clear limits. State the limits, such as spending or risk thresholds, and review them after incidents.
9. **Look at the whole, not the part.** Measure end-to-end time from request to resolution, and discuss it with all teams involved. A change that helps one team and slows another is not an improvement.
10. **Make improvement small, frequent, and local.** Encourage each team to make one small improvement each week or two, and to share what it learned. Record the change and its result.
11. **Keep slack where variation is high.** Do not fill every hour of an on-call team. Leave capacity for surprises, and judge it by how quickly the team recovers when something goes wrong.
12. **Use lean with other practices.** Combine value stream maps with flow measures from Kanban, and with problem management for recurring defects (see Topic 3.3 — Problem Management).

## Questions to discuss with your team

**If we followed one common request from start to finish, how much of the elapsed time would be actual work?**

Pick a typical request and gather the dates of each step. Mark the time when someone was working on it and the time it sat in a queue. The proportion is often a shock. Ask people where they expected the waits to be, and where they were. The facilitator should resist solutions at first and ask the group to agree on what the map shows.

**Which of the seven wastes do we see most often in our daily work?**

Give people the list and ask for a recent example of each. Expect partially done work, task switching, waiting, and handoffs to come up often. Ask which of them the team can change alone and which need other teams or managers. Close by choosing one waste to reduce this month.

**What do we do that our customers would not miss if we stopped?**

List reports, meetings, forms, and approvals. For each, ask who uses it and what happens if it stops. Some will be needed for audit or safety, which is a good reason. Others will turn out to be habit. Assign someone to check each doubtful item before removing it.

**Where do we inspect quality at the end instead of building it in?**

Look at your release, change, and incident processes for end-of-line checks. Ask what defects those checks find and when they could have been found earlier. Typical answers include testing after development finishes and review of documents after the fact. Pick one check to move earlier and describe how you will tell whether it helped.

**Who can make decisions in our team without asking, and who should?**

Ask people to list the last five decisions they wanted to make and could not, and why. Look for patterns, such as spending limits, change approvals, or priority calls. Ask what would make it safe to move one of those decisions closer to the work, such as a guardrail or an after-the-fact review. Do not push for a yes; the aim is to find what people believe is needed.

**If everything we do now got faster, what would break first?**

This question tests "deliver as fast as possible" and "build integrity in" together. Ask where a faster flow would overload a team, a tool, or a person. Typical answers are testing, approvals, and on-call load. Treat the answers as the next things to improve. Remember that lean values flow of the whole system, so the bottleneck is where to invest.

## In practice: an agile ITIL example

A national tax agency's IT department runs an internal service for staff to request software access. A typical request takes about three weeks, and staff complain loudly. The team of five that fulfils requests believes it works hard and is surprised by the complaint.

A manager leads a value stream mapping session with the team, the security group, and two business users. Together they trace ten recent requests. Each request passes through eight steps: form submission, line manager approval, data owner approval, security review, license check, ticket assignment, installation, and confirmation. The map shows that the actual work takes about an hour, and nearly all of the three weeks is waiting between steps, mostly for the two approvals and the security review. In three of the ten cases, the request was returned to the user because of a missing field in the form.

The group agrees on three changes. The form gets required fields and a short guide, which removes the returns. Requests for a short list of common, low-risk applications get a single approval from the line manager, with the data owner informed. The security group agrees to review a sample of such requests each week, rather than every request before installation. After two months, the typical time falls to about one week. A difficulty remains: requests for sensitive applications still take three weeks, and the security group notes that sampling caught two requests that should have been refused. They adjust the list of applications eligible for fast approval, and decide to review it each quarter.

## Four perspectives

### Product and delivery teams

Delivery teams can use lean to look beyond their own sprint or board. Map the path from an idea to a user's hands, including testing, security review, and release approvals, and find where the work waits. Treat unfinished work as waste, and prefer finishing to starting.

### Service and operations teams

Operations teams see waste daily: repeated incidents, handoffs between tiers, and requests that bounce. Use maps to show where work waits, and use problem management to remove the causes of repeats. Make the case for spare capacity by showing what happens to flow when every hour is planned.

### Leadership and governance

Leaders shape the system that creates most waste: approval rules, funding cycles, and reporting. Ask your teams where those rules cost the most time and what risk each protects against. Be ready to replace a control with a lighter check that meets the same purpose.

### Customers and users

Customers define value in lean thinking, and they feel waste as delay. Expect to be asked what you actually need and how soon. Tell the team what part of a service matters most to you, since that guides where effort goes. In return, you can expect shorter, more predictable waits.

## Common failure modes

- **Cutting capacity in the name of waste.** Teams run at full load and cannot respond to surprises. Instead, keep slack where variation is high and judge by how quickly the team recovers.
- **Mapping without acting.** The value stream map goes on a wall and nothing changes. Instead, pick the largest wait and agree one change with an owner before the session ends.
- **Optimising one team.** A local gain moves the queue elsewhere. Instead, measure the end-to-end time and agree changes with all teams in the stream.
- **Removing controls without understanding them.** A step that looked like waste was protecting against a real risk. Instead, ask what each step protects and replace it with a lighter check where you can.
- **Using lean words as slogans.** People say "waste" to dismiss colleagues' work. Instead, use the terms to describe the flow and keep the conversation about the system.
- **Pushing speed over quality.** Faster delivery produces more defects and rework. Instead, treat "build integrity in" as a precondition for speed.
- **Applying manufacturing numbers to knowledge work.** Targets from a factory do not fit variable work. Instead, use lean as a way to see and ask, and set measures from your own data.
- **Treating lean as a one-off project.** Gains fade when attention moves on. Instead, make small improvements part of every team's routine.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Seeing waste | Waste is felt but not described | Some teams map their own work | Teams use shared waste categories and value stream maps | Waiting and rework are measured along the value stream | Maps and measures cross teams and suppliers |
| Flow and pull | Work is pushed and started in bulk | Some teams limit work in progress | Pull rules and limits are standard | Flow measures guide changes to limits and policies | Flow is coordinated across the whole stream |
| Building quality in | Quality is inspected at the end | Some teams test early and review work | Automated checks and built-in reviews are standard | Defect escape rates are tracked and reduced | Quality practices are shared and improved across teams |
| Continuous improvement | Improvement follows crises | Some teams make small regular changes | Every team has a regular improvement routine | Improvements are tracked and their effect checked | Improvements spread between teams and suppliers routinely |

## Checklist

- [ ] We have defined what value means for at least one service from the user's side.
- [ ] We have mapped the value stream for one common request type, with working time and waiting time.
- [ ] The team can name the seven wastes and give a recent example of each.
- [ ] Work in progress is limited, and unfinished work is visible.
- [ ] Quality checks happen during the work as well as at the end.
- [ ] We have chosen at least one wait to reduce, with an owner and a date.
- [ ] The team has clear limits for decisions it can make without asking.
- [ ] We measure end-to-end time for at least one flow across teams.
- [ ] We keep spare capacity for surprises where demand varies.
- [ ] Each team makes and records a small improvement on a regular rhythm.

## AI prompts

**Purpose: analyse a value stream from the times you provide.**

```text
Help me analyse a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Purpose: classify examples of waste from your own team's work.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Purpose: test whether removing a control is safe.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Purpose: plan a value stream mapping workshop.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use to map the steps, working time, and waiting time of a request from start to finish.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan small, continuous improvements once waste has been found.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to analyse how work moves between roles and find handoffs and delays.
- [kanban](../../../../skills/kanban/SKILL.md): use to apply pull and work-in-progress limits to the flow you have mapped.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use when defects and variation, not only waiting, are the main problem and you need a data-based method to reduce them.

## Key sources

- **Lean software development** (Wikipedia): the seven principles, the waste mapping, and links to further reading.
- **Lean manufacturing** (Wikipedia): the history of lean at Toyota, the wastes, and the five principles of lean thinking.
- **Lean Software Development: An Agile Toolkit** (Mary and Tom Poppendieck, 2003): the book that brought lean ideas into the agile community.
- **Lean Thinking** (James Womack and Daniel Jones, 1996): the formal statement of the five principles of lean.

## References

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
