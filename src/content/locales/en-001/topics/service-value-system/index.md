# The ITIL Service Value System

**The ITIL service value system describes how everything an organization does, from guiding principles to day-to-day practices, fits together to turn demand and opportunity into value, and it is more useful as a map for conversations than as a structure to copy.**

## Why this matters

The ITIL 4 service value system (SVS) replaced the linear service lifecycle of earlier ITIL versions with a model of components that work together. For an agile team the change is important. A lifecycle suggests that strategy comes first, design next, then transition, and operation last, which fits poorly with teams that build, run, and change a service in the same weeks. A system of connected parts can describe both a monthly planning cycle and a Friday-night incident.

The SVS also gives a shared answer to a question teams struggle with: what is all of this for? The answer, in ITIL's words as widely summarized, is that the system takes demand and opportunity as input and produces value as output. That framing connects the daily work of a service desk or a platform team to what customers get out of the service, and it gives you a way to ask whether a practice is contributing to value or only to the process.

This topic describes the SVS and its components as summarized in the public material read for this guide. Most of that material comes from training providers and software vendors, not from the framework owner, so details may differ from the official publications. Where it matters, check the owner's current publications (see Topic 2.2 — ITIL for the state of versions).

## Core concepts

### Value, demand, and opportunity

PeopleCert's ITIL 4 Foundation page describes the service value system as "the framework that will help you create, deliver, and manage services." Secondary sources describe it more concretely: it takes **opportunity and demand** as input and produces **value** as output. Opportunity is a chance to add value or improve something. Demand is the need or desire for products and services from customers and users.

This framing matters because it puts value on the outcome side. A service that handles all its tickets and fails to help its users has not produced value, however good its processes are. It also reminds you that not all input is a request: an opportunity, such as a new technology that could reduce toil, enters the system on equal terms.

### Five components

Training providers and vendors describe five components of the SVS. The table lists them with a plain description and an agile reading.

| Component | What it is | An agile reading |
|---|---|---|
| **Guiding principles** | Seven recommendations that guide an organization in all circumstances | A short set of values to test any practice against (see Topic 2.4 — ITIL Guiding Principles) |
| **Governance** | The means by which an organization is directed and controlled | Clear direction and limits within which teams can make decisions (see Topic 5.7 — Governance, Risk, and Compliance) |
| **Service value chain** | The operating model at the center of the SVS, with six activities | A flexible set of activities that teams combine into value streams (see Topic 2.6 — The Service Value Chain) |
| **Practices** | Sets of organizational resources designed for performing work or accomplishing an objective; ITIL 4 cites 34 | Capabilities you draw on, not processes you run in order (see Part 3) |
| **Continual improvement** | An ongoing effort to improve products, services, and practices | The habit that keeps the rest of the system honest (see Topic 3.15 — Continual Improvement) |

One secondary source describes the guiding principles as recommendations that can guide an organization "regardless of changes in its goals, strategies, type of work, or management structure." Another source describes governance as the means by which an organization is directed and controlled.

### The service value chain at the center

The service value chain is described as the operating model of the SVS. Its six activities, as widely summarized, are plan, improve, engage, design and transition, obtain and build, and deliver and support. Sources stress that the activities are not a sequence. Teams combine them in different orders to form **value streams** that respond to a specific situation, such as handling an incident or releasing a new feature. See Topic 2.6 — The Service Value Chain for more.

### Practices

The practices are the capabilities the organization draws on. Sources cite 34 practices, such as incident management and change enablement, and group them into general management, service management, and technical management practices. Wikipedia's article on ITIL gives the same count and splits them into 22 product and service management practices and 12 general management practices. The groupings differ between sources, so use the owner's current publication when you need an exact list.

In an agile setting, a practice is not a process document. It is a resource, made up of people, information, technology, and ways of working, that a team can use. The same practice may appear in many value streams.

### How the SVS relates to the four dimensions

PeopleCert lists four dimensions of service management: organizations and people, information and technology, partners and suppliers, and value streams and processes. They apply to every part of the SVS. A practice, a value chain activity, or a guiding principle can each be examined through the four dimensions to see what is missing: perhaps skills, perhaps tooling, perhaps a supplier arrangement, perhaps a defined flow of work (see Topic 2.5 — Four Dimensions of Service Management).

### What the SVS is not

The SVS is a model, not a method. It does not tell you what steps to follow. It does not require a particular organization chart, tool, or ticketing process. A general model like this is hard to disagree with and can be hard to apply, so judge it by whether it helps your team ask better questions. The Wikipedia article on ITIL does not describe the SVS or name criticisms, so this topic does not attribute any to named people.

### The SVS in ITIL 5

PeopleCert announced ITIL 5 in 2026, and some sources use "ITIL 4 and ITIL 5 service value systems" together. This guide could not confirm from the owner's public pages how the SVS is described in ITIL 5. If you work with the new version, read the new publications and compare them with this topic.

## Best practices

1. **Use the SVS as a map, not a blueprint.** Draw your organization's version of the five components on one page, with what exists and what is missing. Use it to start conversations, and avoid making it a design to implement.
2. **Start from demand and opportunity.** List what is coming into your team: requests, incidents, ideas, and opportunities. Ask which of these add value and which are noise. Track opportunities as well as demands.
3. **Say what value means for each service.** For each service, write one or two sentences about the value for the people who use it and for the organization. Use these statements to judge practices.
4. **Treat the principles as a test.** Run a proposed process change against the seven principles. If it fails one, ask why, and either change it or write down the trade-off (see Topic 2.4 — ITIL Guiding Principles).
5. **Define governance in plain terms.** State who sets direction, what limits teams work within, and how results are checked. Governance that is clear to teams lets them act quickly (see Topic 5.7 — Governance, Risk, and Compliance).
6. **Think of value streams, not departments.** Trace how work flows from demand to value for one service, across teams. Strengthen the weakest link and not the best-run department.
7. **Treat practices as shared resources.** Allow several teams to use the same practice, such as incident management, in their own value streams. Maintain the practice centrally enough to be consistent and locally enough to be useful.
8. **Check all four dimensions.** When something is not working, ask whether the gap is in people, information and technology, partners and suppliers, or processes. Fixing the wrong dimension is a common waste.
9. **Make continual improvement visible.** Keep an improvement list with owners and dates, and review it regularly. An improvement process that nobody can see is a good intention.
10. **Keep the model small.** If a diagram or document about the SVS grows beyond a page, stop and ask who will use it. A model that nobody uses has no value.
11. **Use the owner's current publications for definitions.** When you need an exact definition for an audit or a contract, take it from the framework owner and not from a summary, including this one.
12. **Revisit the map yearly.** Check whether the components still describe how the organization works, especially after reorganizations or new versions of the framework.

## Questions to discuss with your team

**What value does our main service create for the people who use it, in their words?**

Ask each person to write a sentence and compare. Differences show that the team holds different pictures. Ask what evidence supports the description, such as user feedback or usage data. Teams often find they know their processes better than their value. The facilitator can end by drafting one shared sentence and noting what evidence is missing.

**What demand and opportunity arrive at our team, and how do we tell which to act on?**

List the sources: tickets, projects, ideas, regulatory changes, new tools. Ask who decides what is taken on and how. Look for opportunities that never get time because demand fills the day. Ask what would be lost by ignoring each. Choose one opportunity to examine in the next month.

**Which of the five components do we have in some form, and which are weakest?**

Draw the five components on a board and mark each as clear, partly clear, or missing. Ask for a recent example behind each mark. The weakest component often explains recurring problems: unclear governance causes slow decisions, and a missing improvement habit causes repeat incidents. Choose one to strengthen.

**How does a recent piece of work flow from demand to value across our teams?**

Trace one example from first request to delivered value. List the teams and the handoffs. Look for waits and for steps that add nothing. Ask who saw the whole path. The aim is to describe a value stream in practice (see Topic 5.4 — Value Stream Management). Pick one handoff to improve.

**Where does a gap in people, technology, suppliers, or process show up most often in our incidents?**

Review a handful of recent incidents or delays and mark which dimension each points to. Patterns can be revealing: many problems in the partners dimension suggest unclear supplier arrangements. Do not treat the exercise as a diagnosis; it is a prompt. Ask what one change in the weakest dimension would do.

**What is the one improvement we have promised and not delivered, and why?**

Ask for the oldest item on any improvement list. Find out whether it was never prioritized, lost its owner, or became irrelevant. A frank answer shows how seriously continual improvement is taken. Agree to decide on that item: do it, schedule it, or drop it openly.

## In practice: an agile ITIL example

A national public library service runs a digital lending platform used by readers across the country, with a team of fourteen people split between a development group and an operations group. Leaders ask why the platform keeps having outages during popular events such as summer reading campaigns, even though each team reports that it follows its processes well.

An improvement lead holds a workshop based on the service value system. The group begins with demand and opportunity: the campaigns are known months ahead, but the information reaches the operations group only a week before. They describe the value of the platform in readers' terms, which is being able to borrow a book in under a minute, and see that none of their measures covers that. On the practices component, they find that capacity planning is not done by anyone, because it falls between development and operations. Governance is unclear on who may approve a temporary increase in cloud spending.

The group agrees on three changes. The communications team shares the campaign calendar when it is set. A named engineer owns capacity planning for the platform and reports before each campaign. The head of digital services sets a spending limit that the team may use without approval during campaigns. The next campaign passes without an outage. Some issues remain: a supplier of the search service is not included in planning and slows down under load, and the readers' measure is still estimated and not measured. The team adds the supplier to the planning meeting and starts to record page response times as a first measure.

## Four perspectives

### Product and delivery teams

Delivery teams can use the SVS to see the whole path from demand to value. Look at how your work reaches users and who supports it. Raise opportunities, such as automation, as well as requests. Participate in governance conversations so that limits fit the way you work.

### Service and operations teams

Operations teams carry many of the practices in the SVS. Use the model to show how your practices serve value streams and not just internal targets. Describe what you need from delivery teams and suppliers, and use the four dimensions to explain gaps.

### Leadership and governance

Leaders are accountable for governance and direction. Make decisions about priorities and limits explicit and available. Ask whether the system produces value that you can see, and what evidence supports it. Avoid asking teams to reproduce the SVS diagram in their documents.

### Customers and users

Customers and users supply demand and receive value. Expect to be asked what value means for you, and to see it reflected in how services are planned and measured. Tell the provider about opportunities as well as complaints, since both feed the system.

## Common failure modes

- **Drawing the diagram and stopping.** The model becomes a poster. Instead, use it to identify one weak component and improve it.
- **Treating practices as processes in sequence.** Teams run a strict order of steps for everything. Instead, combine practices into value streams that fit the situation.
- **Ignoring opportunity.** Only demand is tracked, and improvement ideas never get time. Instead, keep a visible list of opportunities and review it.
- **Vague governance.** Nobody knows who decides. Instead, write down direction, limits, and decision rights in plain language.
- **Optimizing one component.** A beautiful practice library does not help if the value stream is broken. Instead, check all components and all four dimensions.
- **Confusing summaries with the framework.** A training slide is taken as the definition. Instead, use the owner's publications when precision matters.
- **No measure of value.** Teams report activity and cannot show benefit. Instead, choose at least one measure that reflects what users get.
- **Copying the model into every document.** Overuse breeds cynicism. Instead, use it briefly where it helps and let the day-to-day work show the results.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Value and demand | Value is assumed; demand is handled as it arrives | Some services state their value | Every service has a stated value and a way to see demand and opportunity | Value and demand are measured and reviewed | Value is defined with customers and demand is planned jointly |
| Components in place | Components exist by accident | Some components are written down | The five components are described and owned | Component health is reviewed and gaps are planned | Components are adapted across teams and suppliers as conditions change |
| Value streams | Work flows through departments | Some streams are mapped | Key value streams are mapped, with owners | Flow and waiting times are measured and reduced | Streams cross organizational boundaries and are improved together |
| Improvement | Improvement follows crises | Some teams keep improvement lists | A shared improvement list with owners is reviewed regularly | Results of improvements are checked | Improvements are generated and spread by every team |

## Checklist

- [ ] We have written, for each service, what value means to its users.
- [ ] We can name the main sources of demand and opportunity for our team.
- [ ] The five components of the system are drawn for our organization, with gaps marked.
- [ ] Governance (direction, limits, decision rights) is written in plain language.
- [ ] We have mapped at least one value stream across teams.
- [ ] Practices are shared resources with owners, not duplicated by each team.
- [ ] We check the four dimensions when diagnosing a problem.
- [ ] There is a visible improvement list with owners and dates.
- [ ] We use the framework owner's publications for exact definitions.
- [ ] The map is reviewed at least once a year.

## AI prompts

**Purpose: draw your own map of the five components.**

```text
Help me describe how the five components of the ITIL service value system appear in my organization. The components are: guiding principles, governance, service value chain, practices, and continual improvement.

About us: [describe the organization, team, and main services in a few sentences].
What we do for each component today, as best I can say: [write a sentence or two for each; write "unknown" where you cannot].

For each component, say whether my description shows it as clear, partly clear, or missing, and quote my words. Suggest one question for the team per component. Do not add facts about ITIL that I did not paste. Ask me clarifying questions first, and list what you are unsure of.
```

**Purpose: classify demand and opportunity.**

```text
Here is a list of things that came to our team in the last [period]: [paste short descriptions, one per line].

Classify each as demand (a request or need), incident, or opportunity (a chance to add value or improve something). For each, say in one sentence what value it might create for users or the organization, using only what I wrote. Mark items where you cannot tell. Then suggest two questions about what we are not getting time for. Do not invent details, and list what you are unsure of.
```

**Purpose: write a value statement for a service.**

```text
Help me write a value statement for the service [name].

What the service does: [describe].
Who uses it and what they say about it: [paste feedback or write "none"].
Any data we have: [paste facts, or write "none"].

Write two versions of a one-sentence statement of the value for users, and one of the value for the organization. Use only the information given. Mark any phrase that is a guess. Suggest one measure we could start collecting that would show whether the value is delivered, without inventing numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: trace a value stream across teams.**

```text
Help me trace the flow of one piece of work from demand to delivered value.

The work: [describe, such as "a request for a new access role"].
Steps in order, with the team that did each, and dates if known: [paste].

Produce a simple text diagram of the stream. Mark each handoff and each wait, using only dates I gave. Identify the two longest waits and suggest questions to ask about them. If dates are missing, say what to collect. Mark assumptions, and list what you are unsure of.
```

## AI skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use to trace how demand becomes value across teams and to find waits and handoffs.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make governance and decision rights clear for a service.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to turn the continual improvement component into small, regular changes.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use to understand who supplies demand and who receives value.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): use when mapping how services, practices, and technology fit together at the organization level.

## Key sources

- **ITIL 4 Foundation** (PeopleCert): the owner's page that lists the service value system and four dimensions among the topics studied.
- **ITIL** (Wikipedia): the history of ITIL 4 and the count of practices, with a note about the move away from the lifecycle model.
- **Service value system explainer** (Purple Griffon): a training provider's summary of the components; useful, but secondary.
- **The ITIL 4 Service Value System** (ManageEngine): a software vendor's summary; useful for a quick overview, but secondary.

## References

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
6. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
7. Value stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
8. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
9. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
10. Governance — Wikipedia — https://en.wikipedia.org/wiki/Governance
