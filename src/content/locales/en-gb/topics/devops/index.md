# DevOps

**DevOps is the effort to bring development and operations into one flow of work with shared ownership, automation, and fast feedback, and it complements service management by putting the controls ITIL cares about into the pipeline.**

## Why this matters

DevOps is the name most organisations give to the meeting point between agile delivery and IT operations. It grew from a frustration: developers were rewarded for change and operations staff for stability, so the two groups pulled in opposite directions, and the handover between them was where speed and quality were lost. DevOps asks both to share responsibility for the whole path from idea to running service.

For people who work in ITSM, DevOps can seem either threatening or redundant. Threatening, because it appears to dismiss the processes that operations built after hard experience. Redundant, because much of what it recommends, such as incident reviews, automation, and continual improvement, is already in ITIL. Neither view is quite right. The Wikipedia article on DevOps contrasts DevOps with what it calls ITIL's "top-down" and rigid framework of the 1990s, which is true of older versions; ITIL 4 was written to align with agile, DevOps, and lean (see Topic 2.2 — ITIL).

The definition of DevOps is contested, and the Wikipedia article says so. This topic uses the article, DORA's research pages, and Gene Kim's account of the "Three Ways," and it names what is established, what is debated, and what this guide could not verify.

## Core concepts

### What DevOps is

The [Wikipedia article on DevOps](https://en.wikipedia.org/wiki/DevOps) describes it as the integration and automation of software development and IT operations, which can shorten development time and improve the development life cycle. It quotes academic researchers Len Bass, Ingo Weber, and Liming Zhu, who describe it as a set of practices that aim to reduce the time between committing a change to a system and its normal production placement. The article notes that the term is used in several contexts and that its definition is debated, and that academic studies from 2015 to 2017 found no consensus on its characteristics.

The article reports that proposals to combine development methods with deployment and operations date to the late 1980s and early 1990s, and that the first DevOps Days conference was held in Ghent, Belgium, in 2009, founded by Patrick Debois. It generally characterises DevOps by three principles, shared ownership, workflow automation, and rapid feedback, and notes that this characterisation is itself debated.

### The Three Ways

Gene Kim, an author of *The Phoenix Project* and *The DevOps Handbook*, describes three principles from which, he argues, DevOps patterns can be derived. As summarised in Kim's own post on the IT Revolution site and in secondary summaries:

| Way | Idea | Examples |
|---|---|---|
| **The First Way: flow** | Look at the performance of the whole system, not a single silo; speed work from idea to value | Do not pass known defects downstream; do not let local optimisation degrade the whole; always seek to increase flow |
| **The Second Way: feedback** | Shorten and amplify the signals that flow back from later stages to earlier ones | Telemetry, fast-failing pipelines, customer feedback |
| **The Third Way: continual learning and experimentation** | Build a culture that takes small, deliberate risks and learns from them | Reserving time for learning, turning local discoveries into global improvements |

These match this guide's own themes: flow (see Topic 1.5 — Kanban and Topic 1.7 — Lean Software Development), feedback (see Topic 3.10 — Monitoring and Event Management), and learning (see Topic 1.10 — Agile Learning). A note on terminology: Kim's post labels the Second Way "amplify feedback loops," and the Handbook calls it "feedback."

### Practices

According to Wikipedia, continuous integration and continuous delivery are critical to DevOps success, alongside automation. The article mentions version control, virtual machines, containerization, and database DevOps, which applies version control, automated tests, and CI/CD to schema and data changes. It describes GitOps as managing deployment configuration in version control, and DevSecOps as integrating security into delivery through "shift left" testing, including static and dynamic analysis. DORA's list of capabilities includes continuous delivery, continuous integration, deployment automation, test automation, trunk-based development, version control, database change management, monitoring and observability, pervasive security, working in small batches, and limits on work in process (see Topic 3.5 — Release and Deployment Management).

### Culture

DORA's capability list, read for this guide, includes cultural items: generative organisational culture, learning culture, transformational leadership, job satisfaction, well-being, and team experimentation. The page that lists them does not explain them, and does not rank them. Another DORA page says its metrics predict organisational performance and well-being of team members, and warns against siloed ownership, recommending shared ownership across development, operations, and release teams. This agrees with the Third Way: DevOps is as much about how people work together as about tools.

The common mnemonic **CALMS** (culture, automation, lean, measurement, sharing) is often used to summarise DevOps. The Wikipedia article on DevOps does not mention it, and this guide did not verify its origin, so it is named here only because readers will meet it.

### DevOps and agile

The article says automated build and test, continuous integration, and continuous delivery originated in the agile world, and that Scrum's omission of engineering practices caused automation work to split off into DevOps. This fits Topic 1.4 — Delivery Forecasting and Planning Metrics, which notes that Scrum does not say how to build, test, deploy, or operate software. Extreme Programming already contains many of the engineering practices (see Topic 1.6 — Extreme Programming). DevOps extends the agile concern past the point of release.

### DevOps and ITIL

The article contrasts DevOps with ITIL's "top-down" and rigid framework of the 1990s and does not discuss ITSM further. A fairer picture for today:

| | Tends to emphasise | Risk if used alone |
|---|---|---|
| **DevOps** | Flow, automation, shared ownership, rapid feedback | Neglecting records, controls, and the wider service view |
| **ITIL 4** | Value, practices, governance, a wide range of service practices | Treating practices as heavy process |

ITIL 4's own certification scheme includes a specialist module called High Velocity IT (HVIT) in the Managing Professional track, as the Wikipedia article on ITIL lists. That shows the owner treating fast-moving, digital work as a topic in its own right. A practical combination: use DevOps practices to implement the ITIL practices in the pipeline, such as recording changes automatically, running tests as the risk control, and monitoring as the event practice (see Topic 3.4 — Change Enablement and Topic 5.1 — Agile Service Management).

### DevOps and site reliability engineering

The Wikipedia article says Google developed site reliability engineering in 2003, and that some of its original authors see SRE as an implementation of DevOps. The SRE article calls it a specific implementation of DevOps, narrower because it concentrates on building reliable systems (see Topic 5.3 — Site Reliability Engineering).

### Measures

DORA's software delivery performance measures give a common vocabulary: change lead time, deployment frequency, failed deployment recovery time, change fail rate, and deployment rework rate (see Topic 3.4 — Change Enablement and Topic 5.6 — Metrics and Measurement). The Wikipedia article reports that the metrics were published in 2016, that the recovery measure was renamed in the 2023 report, that a rework measure was added in 2024, and that in 2025 DORA replaced performance tiers with seven team archetypes. It also records that some experts criticized the DORA research methodology and metrics. Treat the measures as useful questions and not as scores.

### Criticisms and limits

Beyond the lack of a settled definition, the article reports criticism of the DORA methodology. Common practical criticisms, offered here as practice experience and not as source findings, include "DevOps" being used as a job title for the old operations role, tools adopted without culture change, and compliance neglected in the pursuit of speed. The article gives no adoption statistics.

## Best practices

1. **Agree what you mean by DevOps.** Write a short statement of what it means for your teams, such as shared ownership of a service, automated delivery, and quick feedback. A shared definition prevents arguments about labels.
2. **Share ownership of the service.** Make the people who build a service responsible for how it runs, and give them the means: on-call, monitoring, and access. Support them with operations expertise.
3. **Automate the path to production.** Build a pipeline that builds, tests, and deploys every change. Record what it did. Treat the pipeline as a product with users.
4. **Work in small batches.** Release small changes often. This reduces risk and speeds feedback, as DORA's list of capabilities suggests.
5. **Shorten the feedback loops.** Make test results, monitoring, and user feedback visible to the team within minutes or hours. Follow the Second Way: amplify the signals that flow back.
6. **Look at the whole flow.** Map the path from idea to running service and find the longest waits, including those outside the development team. Follow the First Way: do not optimise one silo at the cost of the whole (see Topic 5.4 — Value Stream Management).
7. **Build in security and compliance.** Put automated security checks and policy checks in the pipeline, and record evidence as a by-product (see Topic 3.13 — Information Security Management and Topic 5.7 — Governance, Risk, and Compliance).
8. **Treat culture as a first-class concern.** Invest in learning, blameless reviews, psychological safety, and shared goals. DORA's capability list includes culture alongside technical items for a reason.
9. **Make time to learn and experiment.** Reserve time and safe places for experiments, and share lessons. Follow the Third Way.
10. **Use ITIL practices where they help.** Keep incident, problem, change, and knowledge practices, implemented through automation and lightweight records. Remove steps that do not serve their purpose.
11. **Measure with care.** Track DORA-style measures per service, improve against your own past performance, and avoid setting them as targets (see Topic 5.6 — Metrics and Measurement).
12. **Avoid the title trap.** Do not create a separate "DevOps team" that becomes a new silo between development and operations. Spread the practices across teams, and use platform or enabling teams to help.

## Questions to discuss with your team

**What does DevOps mean here, and where did we first hear the word?**

Ask each person for a one-sentence definition. Compare. The Wikipedia article says the definition is debated, so differences are expected. Write a shared statement that is concrete: who owns what, what is automated, what feedback exists. The facilitator can ask what has changed because of the word so far.

**Where does a change wait between "ready" and "live," and who owns the wait?**

Trace a recent change and list the waits: reviews, approvals, environments, release windows. Mark the ones outside the team. Ask which waits protect against real risks and which are habit. Choose one to shorten, working with its owner.

**When something breaks in production, who is on call, and do they have the means to fix it?**

Ask who is paged and what they can do alone. If the builders are not on call, ask why. If operations staff cannot change the code, ask what they do. Discuss what shared ownership would look like here and what support would be needed.

**What feedback do we get after a release, and how fast?**

List the signals: tests, monitoring, support tickets, user comments. Ask how long each takes to reach the team. Typical answers: tests in minutes, tickets in days. Choose one signal to speed up.

**How safe is it to try something and fail?**

Ask for a recent example of a failed experiment and what happened to the people involved. The Third Way depends on learning from small failures. Discuss what would make experiments safer, such as limits, rollbacks, and blameless review.

**How do our ITIL practices show up in the pipeline, and where do they not?**

Take change, incident, and knowledge practices and ask where each appears in the automation. Gaps point to manual work or to controls that are not evidenced. Agree on one practice to move into the pipeline.

## In practice: an agile ITIL example

A national postal service has a development group of 40 and an operations group of 25. Developers release a major version every quarter and hand a package and a long document to operations, who deploy it over a weekend. Operations complain that developers do not understand production, and developers complain that operations cannot be reached when a defect needs a quick fix. A recent release took 19 hours, broke the parcel-tracking page, and led to a day of finger pointing.

A new head of platform proposes a trial with one product team, the parcel-tracking service. Four developers and two operations engineers form a single team that owns the service end to end. Developers join the on-call rota, supported by the operations engineers. The team builds a pipeline that builds, tests, and deploys every merged change to a staging environment, and deploys to production with one approval step that the service owner gives. Change records are created by the pipeline. Monitoring is added, alerts go to the whole team, and each production incident gets a short blameless review. The team agrees to release at least weekly, and the head of platform asks it to track lead time, deployment frequency, change fail rate, and time to recover.

After four months the team releases twice a week, the median time from merge to production is under a day, and the last incident was fixed in under an hour by the developer who wrote the change. Not everything works. The operations engineers find that developers' alerts are noisy, and developers resent being on call at night. A neighbouring team that depends on parcel tracking was not told about the new rhythm and was surprised by a change. The head of platform sets aside time for the team to tune alerts, adds a rota with a limit on night calls, and arranges a monthly meeting with dependent teams. Internal audit asks to see the evidence for approvals, and the head of platform shows the pipeline records and the incident reviews.

## Four perspectives

### Product and delivery teams

Delivery teams take on operational responsibility: monitoring, on-call, and incident learning. Build the pipeline and the feedback you need, and ask for operations expertise rather than handing over. Keep changes small and visible.

### Service and operations teams

Operations teams bring knowledge of how services fail and what controls matter. Help build the platform and the checks, share on-call, and teach. Avoid being a gate; become an enabler who makes the safe route the easy route.

### Leadership and governance

Leaders create the conditions: shared goals across development and operations, time for automation, a culture that learns from failure, and trust in evidence from the pipeline. Avoid renaming teams without changing incentives, and ask for outcomes, not for DevOps adoption.

### Customers and users

Customers and users see DevOps as faster improvement and faster recovery. Expect frequent small changes and clear communication about them. Give feedback quickly, since the team is set up to use it.

## Common failure modes

- **A DevOps team as a new silo.** Development and operations still do not talk. Instead, spread practices across teams and use platform teams to enable.
- **Tools without culture.** A pipeline is built and nothing else changes. Instead, change ownership, incentives, and feedback together.
- **Speed without safety.** Releases accelerate and failures rise. Instead, invest in tests, monitoring, and rollback before pace.
- **Dropping ITIL entirely.** Records and controls vanish. Instead, keep the practices and implement them in the pipeline.
- **Developers on call without support.** Burnout follows. Instead, share the rota, tune alerts, and limit night calls.
- **Metrics as targets.** Teams game deployment counts. Instead, use several measures and compare with your own history.
- **Ignoring dependent teams.** Changes surprise neighbours. Instead, communicate rhythm and changes to teams that depend on yours.
- **Treating the word as the goal.** Labels replace outcomes. Instead, ask what better flow, feedback, and learning look like for your users.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Shared ownership | Development and operations hand over at release | Some teams share on-call | Teams own their services end to end with support | Ownership effects on quality and load are measured | Ownership models are coordinated across teams, platforms, and suppliers |
| Automation and flow | Delivery is manual and batched | Some pipelines exist | A common pipeline builds, tests, deploys, and records changes | Lead time, frequency, failure, and recovery are measured and tuned | Pipelines and flow are optimised across teams and value streams |
| Feedback | Feedback arrives from users after problems | Some teams monitor releases | Tests, monitoring, and user feedback reach teams within minutes or hours | Feedback speed and quality are measured and improved | Feedback loops span teams, suppliers, and customers |
| Culture and learning | Blame follows failure | Some blameless reviews | Blameless reviews, experiments, and learning time are routine | Learning actions are tracked and results checked | Learning spreads across the organisation continuously |

## Checklist

- [ ] We have a shared written definition of what DevOps means for us.
- [ ] Teams that build a service share responsibility for running it.
- [ ] A pipeline builds, tests, and deploys changes and records what it did.
- [ ] Changes are released in small batches, often.
- [ ] Test, monitoring, and user feedback reach the team quickly.
- [ ] Security and policy checks run in the pipeline.
- [ ] On-call is shared, with limits on night calls and tuned alerts.
- [ ] Incident reviews are blameless and produce owned actions.
- [ ] We track lead time, deployment frequency, change fail rate, and recovery time for each service.
- [ ] Dependent teams are told about our release rhythm and major changes.

## AI prompts

**Purpose: map the waits between "ready" and "live."**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: check where ITIL practices appear in your pipeline.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a pilot of shared ownership with one team.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: design a blameless incident review for a mixed team.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use to plan small, frequent releases and the checks around them.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): use to build the automated tests a pipeline depends on.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): use to move testing and security checks earlier in the pipeline.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use to design shared on-call with fair limits.
- [postmortem](../../../../skills/postmortem/SKILL.md): use to run blameless reviews that feed the Third Way.

## Key sources

- **DevOps** (Wikipedia): an overview of definitions, practices, relationships to agile, SRE and DevSecOps, and DORA metrics, with noted debates.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): the source for flow, feedback, and continual learning.
- **DORA capabilities and metrics** (dora.dev): the research program's list of capabilities and its software delivery measures.
- **The DevOps Handbook** and **The Phoenix Project** (Gene Kim and co-authors): the books that develop the Three Ways in detail.

## References

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
