# Agile Manifesto

**The Manifesto for Agile Software Development is four short value statements that tell a team what to favor when two good things pull against each other, and those choices matter as much for running a live service as for building one.**

## Why this matters

The Agile Manifesto is the root of almost everything else in this guide. Scrum, Kanban, Extreme Programming, and DevOps are all ways of acting on the values it states. If you only know the practices, you will copy the rituals and miss the reasoning, and when a ritual stops working you will have nothing to steer by.

It matters for IT service management (ITSM) for a practical reason. Most teams that run services today also build them, and the two jobs pull in different directions. Building rewards change and speed. Running rewards stability and predictability. The Manifesto does not remove that tension, but it gives a team a shared way to talk about it: which value are we favoring here, and what are we paying for it?

It also helps to know what the Manifesto is not. It is not a process, a certification, or a promise that following it makes projects succeed. The [Wikipedia article on agile software development](https://en.wikipedia.org/wiki/Agile_software_development) notes that evidence for the benefits of agile methods is limited and less than conclusive. Treat the Manifesto as a set of well-argued hypotheses that you test in your own context, not as scripture.

## Core concepts

### Where it came from

Seventeen practitioners met at the Snowbird ski resort in the Wasatch mountains of Utah, from 11 to 13 February 2001, and wrote the Manifesto together. According to the [account on agilemanifesto.org](https://agilemanifesto.org/history.html), they came from methods such as Extreme Programming, Scrum, and Crystal, and they wanted an alternative to heavyweight, documentation-driven processes. The label "Light" had been floated and Alistair Cockburn objected to it, and the group went on to call itself the Agile Alliance.

The signatories were Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland, and Dave Thomas. Several of them had already created the methods they brought: Beck and Cunningham worked on [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), and Schwaber and Sutherland on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

The Manifesto was a reaction to a way of working in which a team plans a whole project up front, builds in long phases, and finds out late whether the result is wanted. That style is often called the [waterfall model](https://en.wikipedia.org/wiki/Waterfall_model). The authors did not invent iterative work (the Wikipedia article traces iterative and incremental methods back to 1957), but they gave it a shared name and a short statement of values.

### The four values

The Manifesto states its values in full as follows. Its copyright notice allows it to be copied freely in any form, but only in its entirety, so it is quoted here whole:

> We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:
>
> **Individuals and interactions** over processes and tools
> **Working software** over comprehensive documentation
> **Customer collaboration** over contract negotiation
> **Responding to change** over following a plan
>
> That is, while there is value in the items on the right, we value the items on the left more.

Three details of the wording are easy to miss and change the meaning:

- **"Over" is not "instead of."** The last sentence says the items on the right still have value. A team that drops all documentation or all planning has misread the Manifesto.
- **It is a preference for when you must choose.** The values do not tell you what to do every day. They tell you which way to lean when a process, a document, a contract, or a plan gets in the way of a better outcome.
- **"By doing it."** The opening sentence says the authors found these values through practice. The claim is empirical, which is why you are invited to check it against your own experience.

### Reading each value for service work

The values were written about software development. Here is what each one can mean for a team that also runs services.

| Value | What it protects against | What it can mean in service work |
|---|---|---|
| Individuals and interactions over processes and tools | A process that works on paper but that nobody can follow under pressure | During a major incident, the people who know the system talk directly. The incident process supports that conversation and does not replace it. |
| Working software over comprehensive documentation | Documents that describe a system that no longer exists | A runbook that is tested by the on-call engineer who uses it is worth more than a long manual nobody has opened. |
| Customer collaboration over contract negotiation | Arguing over a service level agreement (SLA) while the customer's real need goes unmet | Review service levels with customers regularly, and change them when their needs change. |
| Responding to change over following a plan | Freezing a plan after the situation has moved on | A change process that can approve a small, low-risk change in minutes lets the team respond. A process that treats every change alike cannot. |

### The twelve principles

The Manifesto is accompanied by twelve principles that spell the values out. They are the subject of the next topic (see Topic 1.2 — Agile Principles). Together the values and principles are sometimes called the agile mindset.

### Criticisms worth knowing

Critics have objected that the Manifesto undermines engineering discipline. The Wikipedia article quotes Stephen Rakitin, who in a letter to *IEEE Computer* called agile "yet another attempt to undermine the discipline of software engineering," and who read "working software over comprehensive documentation" as permission to skip documentation. Defenders answer that documentation should be "just barely good enough," a phrase Scott Ambler used, and that too little documentation hurts maintenance and knowledge sharing.

For a service team the criticism has teeth. Operations staff inherit what delivery teams leave behind, and thin documentation shows up as slow incident response and long handovers. A fair reading of the Manifesto is that documentation must earn its place, not that it has none.

## Best practices

1. **Treat the values as a decision aid, not a rule set.** When a team disagrees, ask which value is in tension and which way the team should lean. This turns an argument about preferences into a conversation about trade-offs.
2. **Read the sentence that follows the values.** Remind the team often that the items on the right still have value. Write down which processes, documents, contracts, and plans you keep and why.
3. **Test each value against a recent event.** Pick a real incident or release and ask how the work would have gone if the team had leaned the other way. Evidence from your own work persuades better than a quotation.
4. **Keep documentation, and keep it alive.** Prefer short documents that are used, tested, and owned, such as runbooks and service descriptions, over long documents that are written once. Delete what no one reads.
5. **Make customer collaboration routine.** Hold regular conversations with the people who use your services, and bring what you learn into the backlog. Do not wait for a contract review.
6. **Make plans that expect to change.** Plan in short horizons with explicit review points. Keep a longer direction, and accept that the steps toward it will move.
7. **Give processes owners and let them evolve.** Each process in your service management system should have a named owner and a way for the people who use it to propose changes. A process nobody may change will be worked around.
8. **Use the values in hiring and onboarding.** Describe them to new staff with examples from your own team so they see how the values show up in daily choices.
9. **Revisit the values after you scale.** Larger organizations drift toward process and tools. Hold a periodic conversation, perhaps twice a year, asking whether the balance still serves customers.
10. **Do not use the Manifesto as a weapon.** Quoting "individuals over processes" to dismiss a colleague's concern about audit or safety ends a conversation that should have started. Use it to open discussion, not to win it.

## Questions to discuss with your team

**Which of the four values does our team already favor in practice, and which do we only claim to favor?**

Start by listing recent decisions: a release delayed for paperwork, a request refused because it was not in the contract, a plan kept after it stopped making sense. Match each to a value. Teams often find a gap between what they say and what they do, and the gap is the useful finding. A facilitator should avoid blame and ask what pressure produced each choice. Follow up by asking which of those pressures the team can change.

**Where do our processes and tools help people talk to each other, and where do they stand in the way?**

Ask people to name a process that saves them effort and one that costs them effort. The costly one is often a good process applied rigidly, such as a ticket workflow that requires four approvals for a trivial change. Look for places where people avoid the tool and use chat or hallway conversation instead, because that usually signals a mismatch. Close with one process to simplify this month.

**What documentation would we be sorry to lose, and what could we delete tomorrow?**

This question tests the "working software over comprehensive documentation" value without taking it to an extreme. Ask people which documents they used in the last month. Runbooks, architecture diagrams, and customer-facing service descriptions often come up. Documents that nobody mentions are candidates for deletion or merger. Remind the team that deleting is a decision, so assign an owner for it.

**How do our customers take part in shaping our services, and how do we know it is enough?**

Collect examples of customer input that changed a decision. If the list is short, ask why. The causes are usually structural: an account manager in the middle, an SLA review once a year, or a service desk that records complaints but does not pass them on. Ask customers directly, if you can, what they would change. The briefing for the facilitator is to look for one concrete way to shorten the path between a customer and the team.

**What would it take for us to approve a small, low-risk change within the hour, and should we?**

This question connects the fourth value to change control (see Topic 3.4 — Change Enablement). Ask what slows small changes now: a weekly meeting, a manual risk form, a missing test. Ask what evidence would make the team comfortable, such as automated tests or a quick rollback. Do not push for "yes." The aim is to discover what the team believes it would need, which is the start of a plan.

**If a regulator, an auditor, or a major customer read the Manifesto, what would they worry about, and are they right?**

Some worries are fair. Auditors want evidence, and customers want commitments. Invite the team to take those concerns seriously and ask what lightweight evidence and commitments would satisfy them. Teams that can show how agile work produces an audit trail usually earn more freedom, not less. Record the concerns for the governance discussion in Topic 5.7 — Governance, Risk, and Compliance.

## In practice: an agile ITIL example

A mid-sized online retailer has a platform team of eight people that builds and runs its checkout service. The team recently moved from quarterly releases to weekly ones, and now has a problem: the service desk complains that changes arrive without warning, and the platform team complains that the change approval meeting takes a week to approve changes that are ready on Monday.

The team's lead runs a one-hour session using the four values as a frame. They list recent events on a wall. A discount-code fix waited nine days for approval. A database change was approved quickly and caused an outage. A runbook for payment failures was found to describe a system retired the year before. The group places each event against a value. Most of the delay cases sit under "processes and tools over individuals and interactions," meaning the process was run for its own sake. The outage sits under "responding to change over following a plan," since the approval meeting treated every change as equal and did not look closely at the risky one.

They agree on three changes. First, changes that match a short list of low-risk patterns, with passing automated tests and a tested rollback, will be pre-approved and recorded automatically. Second, risky changes will be reviewed by a peer and an operations representative within a day. Third, every runbook will have a named owner and be checked each time it is used during an incident.

Two months later the lead reviews the result with the service desk. Pre-approved changes flow quickly, and the service desk now sees every change in a shared feed. One problem remains: two of the pre-approved patterns were drawn too broadly, and a minor incident followed. The team narrows the patterns and keeps the approach. They also see that the shared feed is no substitute for talking, so the service desk lead joins the platform team's weekly planning.

## Four perspectives

### Product and delivery teams

For delivery teams the Manifesto is a reminder that working software includes working operation. A feature that cannot be monitored, supported, or rolled back is not finished. Use the values to argue for the operational work that makes releases safe, and invite operations staff into planning early.

### Service and operations teams

Operations staff often feel the Manifesto speaks for developers. Read it differently: the values favor people talking, tested artifacts, and quick responses to change, all of which suit good operations. Bring ITIL practices to the table as accumulated experience about what goes wrong, and propose lighter versions that keep the purpose.

### Leadership and governance

Leaders set the conditions that let the values work. If every release needs five signatures, a team cannot favor responding to change however many posters hang on the wall. Ask your teams where your own rules slow them down, and be ready to change a rule when the purpose can be met another way.

### Customers and users

Customers are named in two of the four values. For them the Manifesto promises collaboration, not just delivery. Expect to be asked what you need, to see working changes often, and to be able to change your mind. In return, a team needs timely feedback and decisions from you.

## Common failure modes

- **Using "over" as "instead of."** Teams drop documentation, planning, or contracts entirely and then suffer. Instead, decide what each of those must achieve and keep the lightest form that achieves it.
- **Treating the values as a licence to skip discipline.** "We are agile" becomes an excuse for no testing, no records, and no handover. Instead, tie each value to a concrete practice and check that the practice is happening.
- **Reciting the Manifesto without checking it.** Slogans replace thinking. Instead, review actual events against the values at regular intervals.
- **Using it against colleagues.** Quoting a value to dismiss a concern from audit, security, or operations damages trust. Instead, ask what the concern protects and how to meet it lightly.
- **Adopting practices without the values.** Daily meetings and boards appear, but decisions still wait for approval chains. Instead, ask which decisions should move closer to the people doing the work.
- **Assuming the Manifesto answers operational questions.** It was written about software development in 2001 and says little about running services. Instead, combine it with service management practices and adapt both.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Shared understanding of the values | A few people have read the Manifesto | Some teams discuss it, with differing readings | Teams share a short, written reading of the values for their context | Teams check recent decisions against the values at regular reviews | Teams, suppliers, and customers use a common vocabulary of trade-offs |
| Balance of process and people | Processes are followed or ignored, depending on the person | Some processes are simplified by individual teams | Each process has an owner and a route for change requests | Process friction is measured, for example waiting time per change | Processes are adjusted across teams based on shared evidence |
| Customer collaboration | Feedback arrives by complaint | Some teams meet customers regularly | Every service has a defined way to gather customer input | Customer input is tracked and linked to changes made | Customers help set priorities across services |
| Documentation and plans | Documents are rare or stale | Teams keep the documents they find useful | Required documents are few, owned, and reviewed | Use of documents is observed and unused ones are removed | Documentation is generated or verified as part of delivery |

## Checklist

- [ ] Every team member has read the Manifesto and its twelve principles once.
- [ ] The team can state each value in its own words, with an example from its own work.
- [ ] We have listed which processes, documents, contracts, and plans we keep, and why.
- [ ] Every process in use has a named owner and a way to propose changes.
- [ ] Runbooks and service descriptions have owners and a review date.
- [ ] We hold a regular conversation with the customers of at least one service.
- [ ] We have reviewed at least one recent incident or release against the four values.
- [ ] Rules set by leadership that slow the team have been listed and discussed.
- [ ] We have written down how we will show auditors and regulators what we do.

## AI prompts

**Purpose: turn the four values into a short reading for your own team.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Purpose: review a recent event against the values.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Purpose: prepare to answer an auditor's concern about agile ways of working.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Purpose: design a one-hour team session on the Manifesto.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AI skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): use when you want to check a team practice or a process decision against the Manifesto's principles.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run a retrospective that reviews recent events against the values and leads to a real change.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): use when starting a new team or project and you want a shared reading of the values from day one.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use when you are the person helping a team move from copying rituals to understanding the reasons for them.

## Key sources

- **Manifesto for Agile Software Development** (agilemanifesto.org): the primary text. Read it in full; it takes two minutes.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): the twelve principles, the most useful companion to the values.
- **History: The Agile Manifesto** (agilemanifesto.org): the authors' own short account of the Snowbird meeting.
- **Agile software development** (Wikipedia): a broad overview with history, methods, practices, and criticisms, useful as a map to further reading.

## References

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
