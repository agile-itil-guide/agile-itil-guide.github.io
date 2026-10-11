# The Service Value Chain

**The service value chain is a set of six activities that teams combine in different orders to create value streams, and it describes how continuous delivery and service operation fit into one flow instead of two separate ones.**

## Why this matters

Many organisations treat building and running as two stages: first a project builds the service, then an operations group takes it over. The handover is where knowledge is lost, responsibility blurs, and customers feel the gap. The ITIL 4 service value chain was designed to replace that picture with one in which the same activities can happen in any order and as often as needed, depending on the situation.

That is close to how agile teams already work. In one week, a team may plan a feature, build part of it, release it, answer a customer's question about it, and fix a problem found in production. Each of those is a different activity in the chain. Seeing them as parts of one flow helps a team ask where work waits, who does each activity, and which activities are neglected.

This topic describes the six activities, how they combine into value streams, and how an agile team can use the idea. The summaries come from a training provider and a software vendor, because the framework owner's public pages read for this guide name the service value chain only in passing. The vendor page lists the activities without describing them, so treat the descriptions below as widely used readings, and check the ITIL 4 publications for the owner's wording (see Topic 2.2 — ITIL).

## Core concepts

### Where the chain sits

In the service value system, the chain is the operating model at the centre (see Topic 2.3 — The ITIL Service Value System). A vendor page describes it as the part of the system concerned with the delivery pipeline or lifecycle of a product or service, taking demand as an input and producing value as an output. It also notes that in practice the lifecycle is rarely linear.

### The six activities

The table gives each activity, the purpose a training provider's page states for it, and what the activity looks like in an agile team. The right-hand column is this guide's reading.

| Activity | Purpose, as a training provider summarises it | What it can look like in an agile team |
|---|---|---|
| **Plan** | Defines policies, objectives, and guidelines for the organisation's direction, so everyone shares an understanding of vision, current status, and improvement direction | Product goals, roadmaps, quarterly planning, and portfolio choices |
| **Improve** | Continually improves services, practices, and processes across all activities | Retrospectives, post-incident reviews, and improvement items in the backlog |
| **Engage** | Interacts with stakeholders to understand needs, provide information, capture feedback and requirements, and manage relationships | User research, sprint reviews, the service desk, and customer conversations |
| **Design and transition** | Ensures new or changed services meet stakeholder expectations, from design to the live environment | Designing a change, testing it, and getting it ready for release and support |
| **Obtain/build** | Acquires or creates the components needed for services, such as physical resources, infrastructure, knowledge, or software | Developing software, buying a tool, preparing infrastructure, training staff |
| **Deliver and support** | Delivers services as agreed and provides ongoing support to resolve issues and fulfill requests | Running the service, handling incidents and requests, deploying releases |

### Activities are not stages

The training provider's page says the activities "are not linear but are interlinked and can be combined in various ways to form multiple value streams." A **value stream**, in its words, is a specific set of activities that create and deliver a particular service or product to customers. This is the central idea. The chain is a menu of activities, and a value stream is a path through it chosen for a particular purpose.

### Illustrative value streams

The pages read for this guide give no example value streams, so the following are this guide's illustrations of how the activities could combine. They are not from ITIL publications, and a real stream will differ.

| Value stream | One possible path through the activities |
|---|---|
| **Handling an incident** | Engage (a user reports it) → deliver and support (restore service) → improve (review and fix the cause) |
| **Releasing a feature** | Plan (decide the goal) → design and transition (design, test, prepare support) → obtain/build (develop) → deliver and support (release) → engage (get feedback) → improve |
| **Fulfilling an access request** | Engage (request received) → deliver and support (check and grant access) → engage (confirm with the user) |
| **Onboarding a new supplier** | Plan (decide the need) → engage (select and agree terms) → obtain/build (integrate) → deliver and support (operate) → improve (review performance) |

### Practices and the chain

Practices are the capabilities that the activities draw on. Incident management, for example, is a practice used within several value streams. Sources do not agree on every detail of the mapping between practices and activities, so avoid a rigid table. A better test is whether a practice contributes to the value stream you are examining (see Part 3).

### Value streams and agile flow

Agile and lean thinking already uses value streams (see Topic 1.7 — Lean Software Development). A value stream map shows the steps, times, and waits in a path. The ITIL idea adds a vocabulary for classifying the steps and a reminder that the path includes support and improvement as well as building. For digital work, this links to value stream management (see Topic 5.4 — Value Stream Management).

### Limits

The pages read for this guide give no method for designing or selecting value streams, and the vendor page does not explain how the chain relates to continual improvement beyond calling improvement crucial. The chain is a way of describing work, not a way of deciding how to do it. Its value depends on whether you use it to look at real flows.

## Best practices

1. **Pick one value stream and draw it.** Choose a flow that matters to customers, such as releasing a change or handling a request. List the steps in order, and label each with the closest of the six activities.
2. **Include support and improvement in the picture.** Do not stop the stream at release. Show what happens afterwards: handling incidents and learning from them.
3. **Look for activities that are missing.** If a stream has no engage step, nobody is talking to users. If it has no improve step, nothing is learned. Add them where they matter.
4. **Time the waits.** For one stream, record how long work waits between activities and where it crosses a team boundary. The longest wait is the first thing to examine (see Topic 5.4 — Value Stream Management).
5. **Combine activities freely.** Allow different streams to use different paths. A fix for a minor bug may go straight from deliver and support to obtain/build and back, without a planning step.
6. **Put design and transition into the team's work.** Include support notes, monitoring, and training as part of building, not as a handover at the end (see Topic 3.5 — Release and Deployment Management).
7. **Make "engage" a continuous activity.** Do not limit contact with users to the start and the end of a project. Include the service desk and customer feedback in planning.
8. **Connect planning to the evidence from operations.** Use incident and request data in planning conversations so that goals reflect what users actually experience (see Topic 5.1 — Agile Service Management).
9. **Name an owner for each stream.** One person should be able to say how the stream performs, and should be able to bring teams together to improve it.
10. **Use the chain as a checklist for gaps.** When something fails, ask which activity was weak: unclear plan, poor engagement, rushed transition, weak build, shaky support, or no improvement.
11. **Keep the diagram simple.** A rough sketch with six labels is enough. If the drawing needs a legend, simplify it.
12. **Review streams after changes.** When team structures, suppliers, or tools change, check whether the streams still work as drawn.

## Questions to discuss with your team

**What are the three most important value streams for our users, and who owns each?**

Ask people to name the flows that matter most, such as a user getting a new account or a fix reaching production. Compare the lists. Differences show that the team has different pictures of what matters. The facilitator can ask who could answer for each stream from end to end. Often nobody can, which is a finding.

**For one stream, which of the six activities do we do well, and which do we skip?**

Draw the stream and label the steps. Then look for missing activities. Teams often find they plan and build well, and engage and improve poorly. Ask what the missing activity would add and what it would cost. Pick one to add on a small scale.

**Where does work wait between activities, and who owns the wait?**

Mark the handovers and note typical waits. Many waits sit at the boundary between teams. Ask whether the wait is needed, such as for a risk check, or an accident of how teams are organised. Choose one to shorten.

**How do we find out what users think of what we deliver, and how quickly does it change our plans?**

Trace one recent piece of feedback from the user to the backlog. Count the steps. If it took weeks or never arrived, the engage activity is weak. Ask what would shorten the path, such as a shared channel with the service desk. Agree on one change.

**What do we do after an incident or a release to improve the next one?**

Look at the last few incidents and releases for a recorded improvement. If there is none, the improve activity is informal. Ask who owns improvement actions and how they are tracked. Agree on a simple place to record them.

**Which streams cross organisational boundaries, and who speaks for the whole?**

List streams that involve suppliers, other departments, or customers. Ask who is responsible for the end-to-end flow and what happens at the boundaries. A good outcome is to name a coordinator and a regular conversation across the boundary.

## In practice: an agile ITIL example

A regional hospital group runs a patient-portal service used for booking appointments and viewing test results. A team of ten builds and runs it. The team ships new features every two weeks, but patients complain that fixes for reported faults take months and that they get no replies to their feedback messages.

The head of digital services asks the team to draw the value stream for a reported fault, from the patient's message to a fix in production. They label the steps with the six activities. The message arrives by a contact form (engage) and sits in a shared inbox for days before anyone triages it. A triaged fault goes into the same backlog as new features (plan), where it competes poorly. A fix is built (obtain/build), tested, and released with the next feature batch (design and transition, deliver and support). Nobody tells the patient (engage), and nobody records what the fault taught the team (improve).

The team changes the stream. The shared inbox is checked daily by a rota, faults are tagged and given a separate lane in the backlog with a target of the next release, the patient receives a reply on receipt and another when the fix is live, and each fault older than a month is discussed at the fortnightly review. After two months, the median time to fix drops and patient complaints about silence fall. Problems remain: faults that involve the hospital's appointment system, which is run by a supplier, still wait for the supplier's queue, and the reply messages are written by developers in language that some patients find hard to follow. The team invites the supplier to the review and asks the communications team to draft plain-language templates.

## Four perspectives

### Product and delivery teams

Delivery teams usually spend most time on plan, design and transition, and obtain/build. Look at the other three: how you engage users, how you support what you ship, and how you improve. Treat support requests and incident learning as inputs to planning.

### Service and operations teams

Operations teams spend most time on deliver and support, and parts of engage. Use the chain to show how your work depends on earlier activities, such as design and transition, and to ask for what you need from them. Take part in planning so that operational knowledge reaches the start of the stream.

### Leadership and governance

Leaders can use the chain to ask where flow breaks for important services. Support naming stream owners, and give them authority to bring teams together. Avoid turning the six activities into six departments; the point is to connect them.

### Customers and users

Customers and users take part mainly in engage, and they benefit when feedback travels all the way to plans and fixes. Expect replies and visible results. Tell the provider which stream matters most to you, and what delays hurt you.

## Common failure modes

- **Reading the chain as a sequence.** Teams force every piece of work through all six in order. Instead, choose paths that fit the work.
- **Mapping departments, not streams.** Each activity is assigned to a department and the flow is lost. Instead, trace one piece of work across them.
- **Forgetting engage and improve.** The stream ends at release. Instead, include user contact and learning in every stream.
- **Handover instead of design and transition.** Support notes, monitoring, and training are left until the end. Instead, build them into the work from the start.
- **No stream owner.** Nobody can say how a stream performs. Instead, name an owner with authority to convene teams.
- **Over-detailed diagrams.** The map becomes a poster that nobody reads. Instead, keep it to a page and update it when something changes.
- **Treating the vocabulary as the aim.** Teams spend time labeling and not improving. Instead, label only what helps find a gap.
- **Relying on secondary summaries.** Descriptions of the activities differ between sources. Instead, check the owner's publications when precision matters.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Value stream visibility | Flows are known only informally | Some streams are drawn by their teams | Key streams are mapped with owners | Streams are measured for waits and outcomes | Streams cross organisational boundaries and are improved together |
| Activity coverage | Planning and building dominate | Some teams add engage and improve activities | All six activities appear in key streams | Gaps in coverage are tracked and closed | Coverage is balanced across teams and suppliers based on evidence |
| Handovers and transition | Handovers are late and unmanaged | Some teams include support in build | Support, monitoring, and training are part of every release | Transition problems are measured and reduced | Transition is shared across delivery, operations, and suppliers |
| Feedback and improvement | Feedback arrives by complaint | Some feedback reaches the backlog | Feedback and improvement items are tracked with owners | Effects of improvements are checked | Feedback and learning flow across teams and customers continually |

## Checklist

- [ ] We have drawn at least one value stream that matters to users.
- [ ] Each step in the drawing is labeled with the closest value chain activity.
- [ ] The stream includes engagement with users and a step that records improvements.
- [ ] We know where work waits and for how long, at least roughly.
- [ ] Design and transition work, such as monitoring and support notes, is part of building.
- [ ] A named person owns the end-to-end flow of the stream.
- [ ] Feedback from users reaches the backlog and gets a reply.
- [ ] Incident and request data are used in planning.
- [ ] The stream is reviewed after significant changes.
- [ ] We have checked the owner's publication for the exact definition of each activity.

## AI prompts

**Purpose: label the steps of a real stream with the six activities.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: find where feedback is lost on its way to the backlog.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Purpose: plan a value stream workshop with delivery and operations staff.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: write a short guide to the value chain for new team members.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## AI skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use to draw a stream, time its waits, and label its steps.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to analyse how work moves between roles and to find handoff problems.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use to plan how a team delivers in small steps through the build and release activities.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use to design ways to gather feedback from users for the engage activity.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run the reviews that make the improve activity real.

## Key sources

- **ITIL 4 Foundation** (PeopleCert): the owner's page naming the service value chain among the topics studied.
- **ITIL service value system** (Purple Griffon): a training provider's summary of the six activities and value streams; secondary.
- **The ITIL 4 Service Value System** (ManageEngine): a vendor's summary that names the activities; secondary.
- **Value-stream mapping** (Wikipedia): background on the mapping technique that lean practice uses to find waste.

## References

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
