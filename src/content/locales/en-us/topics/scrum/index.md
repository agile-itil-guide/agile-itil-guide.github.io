# Scrum

**Scrum is a small, fixed framework of roles, events, and artifacts that helps a team deliver in short cycles and adjust from what it learns, and it can work for service teams if you plan for interrupt-driven work instead of ignoring it.**

## Why this matters

Scrum is the most widely used agile framework, and many teams that run services meet it first through a development team that already uses it. Knowing what Scrum actually asks for, and what it leaves open, lets you work with those teams, borrow what helps, and avoid the common mistake of treating it as a synonym for "agile."

For a team that runs services, Scrum raises a practical question: how do planned work in a time-boxed cycle and unplanned work such as incidents live together? Scrum does not answer that question for you. The Scrum Guide describes a framework for complex problems, and an incident queue behaves differently from a product roadmap. Teams that succeed with Scrum in operations usually make deliberate choices about capacity, interruptions, and what the Sprint Goal covers.

This topic summarizes the 2020 Scrum Guide in plain words, then looks at how the parts fit with IT service management (ITSM) practice. Read the guide itself, which is short, before you change a team's way of working.

## Core concepts

### What Scrum is

The Scrum Guide, written by Ken Schwaber and Jeff Sutherland and published in November 2020 under a Creative Commons Attribution-ShareAlike license, defines Scrum as a lightweight framework that helps people, teams, and organizations create value through adaptive solutions to complex problems. The [Wikipedia article on Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)) places its beginnings in the 1990s, and the 2001 Manifesto authors included both Schwaber and Sutherland (see Topic 1.1 — Agile Manifesto).

The guide says Scrum is built on empiricism and lean thinking. Empiricism means that knowledge comes from experience and from making decisions based on what is observed. Lean thinking reduces waste and focuses on what is essential (see Topic 1.7 — Lean Software Development).

### Three pillars and five values

Three pillars hold up the empirical approach:

- **Transparency:** the work and the results are visible to the people who need to see them.
- **Inspection:** the team and stakeholders check progress and artifacts often enough to find problems.
- **Adaptation:** when inspection shows a problem, the team adjusts as soon as possible.

The five values are commitment, focus, openness, respect, and courage. They matter most when pressure is high, for example when an incident disrupts the plan and the team has to decide what to drop.

### The Scrum Team

The guide describes one Scrum Team of ten or fewer people focused on one Product Goal. It has no sub-teams or hierarchy and is cross-functional and self-managing. Three accountabilities exist:

| Accountability | What it is accountable for | A note for service teams |
|---|---|---|
| **Developers** | Creating a usable Increment each Sprint, planning the Sprint, holding each other to the Definition of Done | "Developers" means whoever does the work, which can include operations engineers, testers, and analysts |
| **Product Owner** | Maximizing the value of the product, and managing the Product Backlog, including the Product Goal and the order of items | For a service this person decides the order of improvements, fixes, and new capability |
| **Scrum Master** | Establishing Scrum, coaching the team, removing impediments, and helping the organization understand Scrum | In a service team this person also helps manage the boundary between planned and unplanned work |

The guide stresses that the Product Owner is one person, not a committee, so that decisions about order have a clear owner.

### Events

Every event happens within the Sprint, a fixed timebox of one month or less. A new Sprint starts straight after the previous one finishes.

| Event | Purpose | Limit for a one-month Sprint |
|---|---|---|
| **Sprint Planning** | Choose a Sprint Goal and the Product Backlog items that serve it, and plan how to do them | Eight hours |
| **Daily Scrum** | Let the Developers inspect progress toward the Sprint Goal and plan the next day | 15 minutes |
| **Sprint Review** | Show the Increment to stakeholders, discuss progress, and adjust the Product Backlog | Four hours |
| **Sprint Retrospective** | Inspect how the team worked, including people, processes, tools, and the Definition of Done, and plan improvements | Three hours |

Shorter Sprints have shorter limits. The guide says only the Product Owner can cancel a Sprint, for example if the Sprint Goal becomes obsolete.

### Artifacts and commitments

Each artifact has a commitment that makes the artifact useful:

- **Product Backlog and Product Goal:** an ordered list of what the product needs, and the long-term objective the team works toward.
- **Sprint Backlog and Sprint Goal:** the selected backlog items and the plan for delivering them, with one objective for the Sprint.
- **Increment and Definition of Done:** a usable, verified step toward the Product Goal, and the quality standard that work must meet to count.

For a service team, the Definition of Done is a natural place to put operational requirements such as monitoring, a runbook, and a tested rollback (see Topic 3.5 — Release and Deployment Management).

### What Scrum does not say

The guide states that Scrum is a framework, not a complete method. It does not tell you how to build, test, deploy, or operate software. It says nothing about incident response, service levels, or the change process. It also says that using only parts of it does not make the result Scrum, though Scrum can act as a container for other techniques. When a team uses a subset, say so honestly and call it by another name.

### Scrum and flow-based alternatives

Scrum works in fixed cycles. Kanban manages a continuous flow with limits on work in progress (see Topic 1.5 — Kanban). Teams with a high share of unpredictable work often use a mix, sometimes called [Scrumban](https://en.wikipedia.org/wiki/Scrumban). Neither is better in general. Choose by looking at the work: how predictable it is, how often priorities change, and how much of it arrives uninvited.

## Best practices

1. **Read the Scrum Guide and agree on what you are doing.** Put the current guide on the table and decide which parts the team follows as written. If you leave parts out, note which and why, so that the team does not claim Scrum for something else.
2. **Choose a Sprint length that matches the rhythm of the work.** Sprints of one to four weeks are common. Shorter Sprints give faster feedback, and longer ones make sense when work is hard to split. Hold the length steady long enough to learn from it.
3. **Set a Sprint Goal that people can explain.** A goal such as "the checkout service recovers from a database failover without manual steps" guides daily choices better than a list of tickets. Write it so that someone outside the team can tell whether it was met.
4. **Plan capacity for unplanned work.** If incidents and urgent requests arrive in every Sprint, use past data to set aside a share of capacity for them, and do not fill the whole Sprint. Revisit the share at each retrospective.
5. **Include operational work in the Product Backlog.** Put problem fixes, monitoring improvements, and service-level work next to features, in one order. The Product Owner can then weigh them against each other openly (see Topic 3.3 — Problem Management).
6. **Put operations into the Definition of Done.** Ask operations staff what a release needs before they can support it, and write those items into the definition. Review the definition at each retrospective.
7. **Use the Daily Scrum to adapt the plan.** The guide describes it as a meeting for the Developers to plan the next day toward the Sprint Goal. Keep it short, and avoid turning it into a status report for a manager.
8. **Invite real stakeholders to the Sprint Review.** Show working changes to the people who use the service, and record what they say. A review attended only by the team is a demo to yourselves.
9. **Make the retrospective produce change.** Pick one or two improvements, assign owners, and add them to the Sprint Backlog so that they are visible and competing for capacity (see Topic 3.15 — Continual Improvement).
10. **Train the Product Owner and Scrum Master roles, not just the team.** These roles are often given to people who have not done them before. Provide coaching and time, and do not combine either with a full-time delivery role.
11. **Handle major incidents outside the Sprint cycle, then learn from them inside it.** Let the incident process run as usual, and bring its outcomes into the next Sprint Planning or retrospective as backlog items (see Topic 3.2 — Incident Management).
12. **Try a flow-based variation if the work does not fit.** If a team spends most of its time on interrupts, test Kanban or Scrumban for a few cycles, and compare outcomes before you decide.

## Questions to discuss with your team

**What part of our work is predictable enough to plan for a Sprint, and what part arrives without warning?**

Look back over the last few cycles and tally planned items, urgent requests, and incidents. Teams often discover that unplanned work is bigger than they said. Ask what share of capacity is realistic to protect. The facilitator can follow up by asking who decides when an interrupt wins over a Sprint item, and whether that decision is written down.

**Could we write a Sprint Goal for the last Sprint that someone outside the team could understand?**

Try it with a real Sprint. If the best you can do is a list of tickets, the Sprint may have lacked a purpose. Ask what the one most valuable outcome would have been. Teams may find the exercise uncomfortable, so keep it light and focused on learning. Follow up by drafting the goal for the next Sprint.

**What does "done" mean for us, and does it include being able to run the thing?**

Ask for the current definition and compare it with what the service desk or on-call engineer needed in the last release. Typical gaps are monitoring, documentation, and a rollback. Ask who has the authority to say that something is not done. Close by adding one item to the definition.

**Who is our Product Owner for the service, and does that person have the authority and time to order the work?**

The guide describes the Product Owner as one person who is accountable for the order of the backlog. In practice the role is often split, delegated, or overruled. Ask what happens when two senior people disagree on priority. Look for a concrete step, such as agreeing who has the final word and communicating it to stakeholders.

**What did our last retrospective change, and how do we know it worked?**

Ask for the action, the owner, and the evidence. If people cannot answer, the action may have been too vague or may have been dropped. Discuss why. Possible reasons include no room in the Sprint, no owner, or no review. Agree on one small action for this cycle and how it will be checked at the next retrospective.

**If Scrum is not fitting our work, what would we change, and what would we call it?**

This question invites honesty about adaptation. The guide says that using only parts of Scrum does not make the result Scrum. Naming the variation keeps expectations clear. Ask what problem each proposed change solves, and how you will tell whether it did. A facilitator should watch for changes that remove the feedback loops, which are the parts that make Scrum useful.

## In practice: an agile ITIL example

A regional hospital's IT department has a team of seven who maintain the patient-scheduling application. The team adopted Scrum with two-week Sprints because its work had grown from occasional fixes into continuous improvement. In the first three Sprints, the Sprint Goals were missed each time. Incidents from the wards, requests from clinic managers, and security patching kept arriving, and the team spent most days on them.

At the third retrospective the Scrum Master brings a simple count of how the last six weeks were spent. About half the time went on unplanned work. The team agrees on three changes. It will reserve half of each Sprint's capacity for unplanned work and set the Sprint Goal against the other half. Incidents will be logged as backlog items so that the Product Owner sees patterns. The Definition of Done will include an updated runbook and a monitoring alert for each new feature.

Four Sprints later the Sprint Goals are mostly met, and the Product Owner, a clinic operations manager, can see which recurring incidents are consuming capacity. She raises the priority of a fix for a recurring appointment-sync failure, and the failure stops. Difficulties remain. Planned work now feels slow to the clinic managers, who liked the quick response of the old arrangement, and one major incident forces the team to abandon a Sprint Goal. They agree that abandoning a goal for a major incident is acceptable, and that the Product Owner will decide in the next planning session what to do with the unfinished work. They also begin comparing their approach with Kanban for the support queue.

## Four perspectives

### Product and delivery teams

Delivery teams get the clearest benefit from Scrum's short cycles and its habit of inspecting what was built. Use the Definition of Done to build in the operational requirements that make a release supportable, and treat operations staff as stakeholders in the Sprint Review.

### Service and operations teams

Operations teams can use Scrum for improvement work and Kanban for the incident and request queue, or mix the two. Be explicit about how much capacity goes to each. Ask to join Sprint Planning and Reviews for services you will run, and bring recurring incident data so that it affects the order of the backlog.

### Leadership and governance

Leaders protect Scrum by giving the Product Owner real authority, funding training, and not interrupting Sprints with unrelated demands. Ask for the Sprint Goals and review outcomes as your view of progress, in place of detailed status reports, and accept that scope within a Sprint will change as the team learns.

### Customers and users

Customers and users take part through the Sprint Review and through the Product Owner. Expect to see working changes regularly and to be asked what should come next. In return, the team needs prompt feedback and clear priorities, even when that means saying that something you asked for is less important than another item.

## Common failure modes

- **Calling it Scrum while dropping the feedback loops.** Without reviews and retrospectives the team loses the means to adapt. Instead, keep the events or name the variation honestly.
- **Treating the Daily Scrum as a status report.** The meeting becomes a show for a manager. Instead, have the Developers plan the next day toward the Sprint Goal and take side conversations offline.
- **Filling the whole Sprint with planned work.** Interrupts then wreck the plan and the team misses every goal. Instead, set aside capacity for unplanned work based on past data.
- **Having no real Product Owner.** The role is split among several people or held by someone with no authority. Instead, name one person who can order the backlog and make trade-offs.
- **Sprint Goals that are lists of tickets.** The team cannot tell what matters most when trade-offs arise. Instead, state one outcome in a sentence and use it to guide choices.
- **Ignoring operations in the Definition of Done.** Releases pass the Sprint Review and fail in production. Instead, include monitoring, support notes, and rollback in the definition.
- **Using velocity as a performance target.** Teams inflate estimates to look good. Instead, use throughput and outcome measures to understand flow, and keep estimates for planning only (see Topic 5.6 — Metrics and Measurement).
- **Applying Scrum to work that does not fit.** A queue of unpredictable support requests forced into Sprints creates frustration. Instead, test a flow-based approach and compare results.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Scrum events | Meetings are held irregularly or in name only | Some teams hold the events with a common length | All teams hold the five events as described in the guide, or name their variations | Event outcomes, such as goals met and actions completed, are reviewed | Teams adjust Sprint rhythms across services and suppliers |
| Roles and accountability | Roles are unclear or combined | Some teams have a named Product Owner and Scrum Master | Every team has named roles with the time and authority to act | Role effectiveness is reviewed and coaching is provided | Product Owners coordinate priorities across services |
| Planned and unplanned work | Interrupts are not counted | Some teams track unplanned work | Capacity for unplanned work is set from data | The share and causes of unplanned work are reviewed and reduced | Operations and delivery teams plan capacity together |
| Definition of Done | Quality checks are informal | Some teams write a definition | A shared definition includes testing and operations | Escaped defects and release issues are reviewed against the definition | The definition is improved across teams from shared incident learning |

## Checklist

- [ ] The team has read the current Scrum Guide and agreed what it follows as written.
- [ ] Each Sprint has a Sprint Goal that someone outside the team can understand.
- [ ] One named person acts as Product Owner with authority over the order of the backlog.
- [ ] A Scrum Master role exists with time to coach and remove impediments.
- [ ] Capacity is set aside for unplanned work, based on past data.
- [ ] Operational work and service improvements are in the Product Backlog.
- [ ] The Definition of Done includes monitoring, documentation, and rollback.
- [ ] Sprint Reviews include real users or stakeholders.
- [ ] Each retrospective ends with an owned action that is checked next time.
- [ ] Any departure from the guide is written down and named honestly.

## AI prompts

**Purpose: draft a Sprint Goal and a list of questions for Sprint Planning.**

```text
Help me prepare Sprint Planning for a team of [number and type of people, e.g. "six engineers who build and run a booking service"].

Items at the top of our Product Backlog: [paste the top 5-8 items, with one line each].
What happened last Sprint: [paste 3-5 sentences, including what we finished, what we did not, and unplanned work].
Capacity next Sprint (people and days available, and a rough share for unplanned work): [paste].

Propose two possible Sprint Goals, each one sentence and understandable to a non-technical stakeholder, and for each list which backlog items serve it. Then list three questions the Product Owner and Developers should answer in Planning. Do not invent estimates or dates. If information is missing, ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: build a Definition of Done that covers running the service.**

```text
Help us write a Definition of Done for [service or product]. 

Our current Definition of Done: [paste it, or write "none"].
What the operations or support team says they need before they can support a release: [paste a list, or write "unknown"].
Known rules we must follow (security, audit, safety): [list only rules you are sure apply, or write "none known"].

Produce 8 to 12 checklist items grouped into build quality, release readiness, and operational readiness. Mark any item you added as an assumption. Do not claim that a standard requires an item unless I have pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: analyze how much of a Sprint went to unplanned work.**

```text
Below is a list of the work items our team completed last [number] Sprints, with each marked as planned or unplanned and the time it took: [paste the list as a table; use only real data].

Calculate the share of time on planned and unplanned work for each Sprint, using only the numbers I gave. Describe what pattern you see, suggest what share of capacity to reserve for unplanned work next Sprint, and name two assumptions behind your suggestion. If the data are too thin, say so and ask me what to add. List what you are unsure of.
```

**Purpose: prepare a retrospective that leads to one real change.**

```text
Plan a 60-minute Sprint Retrospective for a team of [number] people. The team uses Scrum with [Sprint length] Sprints, and the main frustration this cycle was [frustration].

Include: a timed agenda, a way to gather facts before opinions, a way to choose one or two improvements, and a closing step that records each action with an owner and a date for review. Add three questions to ask about how unplanned work affected the Sprint. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI skills

- [scrum](../../../../skills/scrum/SKILL.md): use to set up or review a Scrum team's roles, events, and artifacts.
- [scrumban](../../../../skills/scrumban/SKILL.md): use when a team has a mix of planned and unplanned work and wants to combine Scrum events with flow.
- [agile-standup](../../../../skills/agile-standup/SKILL.md): use to improve the Daily Scrum so that it plans the day and does not report status.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run the Sprint Retrospective and turn it into an owned action.
- [user-story](../../../../skills/user-story/SKILL.md): use to write Product Backlog items with clear acceptance criteria.

## Key sources

- **The Scrum Guide** (Ken Schwaber and Jeff Sutherland, scrumguides.org): the authoritative, short definition of Scrum; read it in full.
- **Scrum (software development)** (Wikipedia): an overview of Scrum's history, roles, events, and criticism, with citations.
- **Manifesto for Agile Software Development** (agilemanifesto.org): the values that Scrum is meant to serve.
- **Agile software development** (Wikipedia): the wider family of methods that Scrum belongs to.

## References

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
3. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
4. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
5. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
