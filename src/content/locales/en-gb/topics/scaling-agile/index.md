# Scaling Agile

**Scaling agile means coordinating many teams, services, and suppliers without losing the short feedback loops that made agile work, and the main risk is adding layers of process before you know which problem you are solving.**

## Why this matters

A single agile team of up to ten people can talk to each other every day. A real service usually involves more: several delivery teams, an operations group, a service desk, security, a network team, and suppliers. When the work of many groups must fit together, the daily conversation of one team is not enough, and new problems appear. Priorities conflict, dependencies stall work, and every team improves its own part while the whole service does not improve.

Several frameworks claim to solve this. They differ in size, cost, and philosophy, and they attract strong opinions. Some organisations adopt a large framework as a program and spend years on the rollout. Others scale by removing barriers and keeping a small set of rules. The honest position, backed by the [Wikipedia article on agile software development](https://en.wikipedia.org/wiki/Agile_software_development), is that opinions on the effectiveness of scaling frameworks differ and the evidence is limited.

For people in IT service management (ITSM), scaling matters because ITIL already works at scale. It describes a service value system that links many practices and parties (see Topic 2.3 — The ITIL Service Value System). The question this topic helps with is how to combine the two: how to coordinate many agile teams while keeping the service management practices that protect users, and without building a second layer of bureaucracy on top of the first.

## Core concepts

### Why one team is different from many

The Wikipedia article on agile software development reports that scaling brings challenges when a project involves more than about 20 developers or when teams are distributed across locations. Strategies and frameworks exist for these cases, but the article notes conflicting views about whether they fit the definition of agile.

Three problems recur when you add teams:

- **Alignment:** teams need a shared direction and consistent priorities, or they will optimise different things.
- **Dependencies:** work in one team waits on another, and the waits multiply as the number of teams grows.
- **Integration:** the output of many teams must come together into something that works as a service, and the later you test that, the costlier the surprises.

### Four well-known approaches

The following table summarises four named approaches. The summaries rely on the Wikipedia articles and the framework owners' own pages as read for this guide; check current versions at the sources before relying on details.

| Approach | Creators or owner | Main idea | Size and shape |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Described first in Dean Leffingwell's 2007 book *Scaling Software Agility*; materials published by Scaled Agile, Inc. | A set of organisation and workflow patterns drawing on agile, lean product development, and systems thinking | Configurations from a team and program level (Agile Release Trains) up to large solutions and portfolios |
| **Large-Scale Scrum (LeSS)** | Craig Larman and Bas Vodde | Scale Scrum itself: one Product Owner and one Product Backlog for one product, many cross-functional feature teams, with as few extra roles and artifacts as possible | LeSS for about two to eight teams; LeSS Huge for more, with Requirement Areas of several teams each |
| **Disciplined Agile (DA)** | Scott Ambler and Mark Lines; acquired by the Project Management Institute (PMI) in August 2019 | A toolkit of process goals and options that helps a team choose its own way of working in context | Hybrid and context-sensitive, with several lifecycles and a layer for the enterprise |
| **Scrum@Scale and others** | Named alongside SAFe in the Wikipedia article | Further frameworks for coordinating multiple Scrum teams | See the owners' sites |

### SAFe in more detail

The Wikipedia article says SAFe was first formally described in 2007, with a first release in 2011 and version 6.0 in March 2023. For version 5.1 it lists four configurations: Essential SAFe (team and program level), Large Solution SAFe, Portfolio SAFe, and Full SAFe. The article also lists ten principles, including taking an economic view and applying systems thinking.

SAFe has drawn open criticism, which the article records. Thoughtworks argued that top-down control generates waste, Ken Schwaber criticized it in a 2013 post, and Jeff Gothelf argued in 2021 that SAFe is not agile. Critics call it hierarchical and inflexible and say it can give an organisation the appearance of agility while keeping old processes. Supporters value its common vocabulary and its structure for large organisations. Read both sides before deciding.

### LeSS: scale by removing

Larman and Vodde describe LeSS as Scrum applied to many teams working on one product. It adds no layer on top of Scrum. According to the framework's own introduction, one Product Owner manages one Product Backlog and the teams produce one shippable product in a common Sprint. LeSS states a "more with less" idea: fewer roles, artifacts, and rules produce more responsible teams. For the underlying method, see Topic 1.4 — Delivery Forecasting and Planning Metrics.

### Disciplined Agile: choose your way of working

The Wikipedia article on Disciplined Agile Delivery describes a people-first, hybrid toolkit that covers the whole delivery lifecycle. It supports six lifecycles and describes 21 process goals. The approach is to help teams pick practices that suit their situation, rather than prescribe one framework. The article carries a maintenance notice that it may rely too much on sources close to the subject.

### Scrum of Scrums and simple coordination

Before adopting a framework, consider the simplest tools. A "scrum of scrums" brings representatives of several teams together to share progress and resolve dependencies. Shared quarterly planning, a common backlog for a product, and a regular meeting of team leads are other light options. Many organisations scale well enough with these.

### Scaling in a service organisation

In an IT organisation, teams can be organised in several ways, and the choice affects how well agile scales:

| Organisation | How teams are organised | Effect on scaling |
|---|---|---|
| **By component** | A team per technical layer or system | Features need several teams, so dependencies are many |
| **By feature or product** | Cross-functional teams that own a customer-facing slice | Fewer dependencies; needs shared standards for platforms |
| **By service** | A team per service, owning its build and run | Close to service management; needs a way to deal with shared platforms |
| **Platform plus stream** | Teams that provide a platform, and teams that use it | Needs clear service agreements between them |

No pattern is best for all. Moving from component teams to teams organised around products or services is a common step, and it is hard to do, because it changes who reports to whom.

### What research and criticism say

The agile software development article states that empirical evidence for agile methods in general is limited and less than conclusive. For scaling frameworks, the sources consulted offer mostly opinions and vendor material. Treat any claim of measured improvement with care, ask for the evidence behind it, and test any framework on a small part of your organisation first.

## Best practices

1. **Start from the problem, not the framework.** Name what is going wrong: slow dependencies, conflicting priorities, late integration. Choose the lightest approach that addresses it, and adopt more only if it falls short.
2. **Try the simplest coordination first.** Shared planning, a scrum of scrums, and a common backlog for each product solve many problems at small cost. Add structure only when these stop working.
3. **Organise teams around value.** Prefer teams that own a product or service from end to end, with the skills to build and run it. This reduces handovers and dependencies and fits with how ITIL thinks of services (see Topic 2.6 — The Service Value Chain).
4. **Keep one ordered list per product.** Having one product backlog with one accountable owner, as LeSS recommends, removes much of the conflict between teams. Where this is not possible, make the order of priorities across teams visible.
5. **Plan together at a regular rhythm.** Bring teams and key stakeholders together every few months to align on goals, dependencies, and risks. Keep the event short and based on evidence, and avoid turning it into a negotiation over detailed plans.
6. **Integrate continuously.** Test the output of all teams together as often as possible, ideally every day. Late integration is the most common reason large programs surprise their sponsors (see Topic 1.6 — Extreme Programming).
7. **Make dependencies visible and reduce them.** List which teams wait on which, and count the waits. Reduce them by changing team boundaries, sharing skills, or building shared platforms with clear interfaces.
8. **Define service agreements between teams.** Where one team provides a platform or service to another, agree what is expected: availability, response, support hours, and how to ask for changes (see Topic 3.7 — Service Level Management).
9. **Tailor and write down what you changed.** Whatever framework you adopt, record which parts you follow, which you leave out, and why. Honest labels prevent the situation in which a hybrid is judged against a framework it never intended to follow.
10. **Pilot before you roll out.** Try the approach with a few teams, measure the results you care about, and learn. Extend it only when the pilot shows a benefit you can describe.
11. **Keep governance light and based on outcomes.** Ask for evidence such as delivery flow, incident trends, and user feedback, and not for status reports that every team writes in a different format (see Topic 5.7 — Governance, Risk, and Compliance).
12. **Review the structure regularly.** Hold a review once or twice a year to ask whether team boundaries, roles, and ceremonies still serve the work. Structures that were right for 30 people may be wrong for 300.

## Questions to discuss with your team

**What problem do we expect scaling to solve, and how will we know it has been solved?**

Ask people to name the pain: late integration, conflicting priorities, long waits for other teams. Write each down with a recent example. A framework chosen without a stated problem is a solution looking for one. The facilitator can ask what the simplest possible fix would be for each problem, and what evidence would show that it worked.

**Which other teams do we wait on most, and how long do we wait?**

Map the dependencies on a wall and add the typical wait for each. Teams that thought of themselves as independent are often surprised. Ask which dependencies are real and which come from historical team boundaries. Pick one dependency to remove, either by changing how teams are organised or by sharing skills.

**Who decides the order of work across our teams, and how do we find out?**

Follow a recent priority conflict from start to resolution. Look for escalations, meetings, and informal deals. Ask whether a single accountable person, as in LeSS, could make the call. Consider what would be lost or gained. A good outcome is a clear route for deciding conflicts, even if it is not a new role.

**What would a framework such as SAFe, LeSS, or Disciplined Agile give us that we cannot get more cheaply?**

Ask someone who has read about each to explain it in a few sentences, and ask for the strongest criticisms. The Wikipedia article on SAFe lists several, and the framework owners' sites list benefits. A facilitator should keep the discussion practical: what would we do on Monday if we adopted it, and who would need to change what? Decide what to try, if anything, and what to keep as is.

**How do we test that the work of all our teams fits together, and how often?**

Count the days between a change by one team and its first test with everyone else's changes. Longer gaps mean larger surprises. Ask what prevents daily integration, such as environments, test data, or ownership. Pick one barrier to remove.

**Which of our controls apply to every team in the same way, and which should depend on the risk?**

List standard controls, such as reviews, approvals, and reporting. Ask which of them are adjusted for low-risk work. Uniform controls are easy to administer and slow for everyone. Controls that depend on risk need clear criteria. Choose one control to review.

## In practice: an agile ITIL example

A large retail bank's IT group has 14 delivery teams and a central operations group. Each team has adopted Scrum, but the bank's customers see little improvement. Releases for the mobile banking app need changes from five teams, and every release is coordinated by a program office that tracks dependencies in a spreadsheet. A recent release was delayed three weeks because two teams discovered at the last minute that their changes were incompatible.

An architect and the head of operations run a study of six months of releases. They find that most delays come from late integration and from unclear priorities between the teams that share a backlog of mobile features. They consider adopting a large framework, but decide to start small. They create a single backlog for the mobile app with one accountable product owner, and merge the five teams' planning into a joint session every six weeks. They set up a shared pipeline that builds and tests all the teams' changes together each night, and they add the operations group to the joint planning session.

After two quarters, the number of last-minute incompatibilities falls and releases come every two weeks. Some problems continue. The product owner struggles with the volume of requests and spends most of her time on arbitration, and two teams still depend on a central database team with a long queue. The bank agrees to make the database team's queue visible in the joint planning, and to try a self-service route for common database changes. It also decides to postpone any framework decision until a second product area has tried the same approach.

## Four perspectives

### Product and delivery teams

Delivery teams carry most of the burden of scaling: shared planning, shared pipelines, and agreements with neighbours. Work to reduce dependencies at the source, by learning the skills in the next team, or by building interfaces that do not require coordination. Take part in planning events with real information about progress and risk.

### Service and operations teams

Operations staff should be part of the planning from the start, since many cross-team dependencies are operational: environments, access, monitoring, and support. Bring service data to the planning session, and agree on service levels with the teams that depend on you. Argue for platforms that give delivery teams self-service.

### Leadership and governance

Leaders shape the structure that decides how well scaling works. Resist the temptation to buy a framework as a substitute for deciding what the organisation wants to be. Ask for a clear statement of the problem, a pilot, and evidence. Keep reporting light, and accept that structure changes may be uncomfortable for managers.

### Customers and users

Customers should see a coherent service and not the seams between teams. Expect one point of contact for a product and a clear route for requests. Tell the product owner what matters most, and expect the answer to include trade-offs among competing demands.

## Common failure modes

- **Buying a framework to avoid a decision.** An organisation adopts a framework in the hope that it will resolve disagreements about priorities. Instead, decide who has authority over priorities and then see which framework, if any, helps.
- **Copying a diagram.** Roles and meetings are added without understanding the reasons. Instead, adopt only the elements that address a named problem.
- **Adding layers.** Coordinators, program offices, and committees multiply while teams lose autonomy. Instead, remove dependencies so there is less to coordinate.
- **Late integration.** Teams integrate at the end of a long cycle. Instead, integrate and test all changes together daily.
- **Uniform controls.** Every team follows the same heavy process whatever the risk. Instead, base controls on risk and make low-risk paths fast.
- **Ignoring operations.** Planning includes developers and product managers but no operations staff. Instead, include operations in joint planning and share service data.
- **Judging a hybrid against the framework.** Critics say it is not the framework, and supporters say it is. Instead, give your approach its own name and describe it.
- **Never revisiting the structure.** Boundaries drawn at 30 people persist at 300. Instead, review team and role structure at least yearly.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Alignment and priorities | Each team sets its own priorities | Some teams share a backlog or meet to align | Products have one ordered backlog and joint planning at a regular rhythm | Alignment is checked against outcomes and dependencies are measured | Priorities are adjusted across teams, customers, and suppliers continually |
| Dependencies | Waits for other teams are unmanaged | Some teams list their dependencies | Dependencies are visible and agreements exist between teams | Wait times for dependencies are measured and reduced | Team boundaries are reshaped from evidence to remove dependencies |
| Integration | Integration happens at the end | Some teams integrate more often | Shared pipelines integrate and test everyone's changes frequently | Integration failures and their causes are tracked and fixed | Integration environments and tests are shared and improved across teams |
| Governance and structure | Controls are uniform and slow | Some low-risk paths exist | Controls vary by risk with clear criteria | Outcomes and control effectiveness are reviewed | Structure and controls are reviewed and adjusted across the organisation routinely |

## Checklist

- [ ] We can state in a sentence the problem that scaling should solve.
- [ ] We have mapped the dependencies between our teams and know the typical wait for each.
- [ ] Each product has one ordered backlog with one accountable owner.
- [ ] Teams and key stakeholders plan together at a regular rhythm.
- [ ] The output of all teams is built and tested together at least daily.
- [ ] Teams that provide platforms or services to others have written service agreements.
- [ ] Operations staff take part in cross-team planning.
- [ ] Controls vary with risk, and the low-risk path is quick.
- [ ] Any framework we adopt has been piloted on a small scale first.
- [ ] We have written down which parts of any framework we follow and which we do not.
- [ ] The structure of teams and roles is reviewed at least once a year.

## AI prompts

**Purpose: map dependencies between teams from a description of recent work.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Purpose: compare scaling options against a stated problem.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarise what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: plan a joint planning session for several teams.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: write an agreement between a platform team and the teams that use it.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): use to understand SAFe's roles, events, and levels and to judge which parts you need.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): use to apply Scrum to several teams working on one product.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): use to choose practices by process goal for your context.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): use as a light way to coordinate a few teams before adopting a framework.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use to decide how a number of products and initiatives are chosen and funded.

## Key sources

- **Scaled agile framework** (Wikipedia): an overview of SAFe's history, configurations, and criticisms with citations.
- **Introduction to LeSS** (less.works): the creators' short description of Large-Scale Scrum and its "more with less" idea.
- **Disciplined agile delivery** (Wikipedia): a summary of the toolkit, its lifecycles, and its goals.
- **Agile software development** (Wikipedia): the section on large-scale, offshore, and distributed work and the discussion of conflicting views on scaling frameworks.

## References

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
