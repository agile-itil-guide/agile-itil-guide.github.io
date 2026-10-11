# Agile Software Development

**Agile software development is a family of methods for continuous software delivery that deliver in small steps and learn from feedback, and the practices it has produced, such as automated testing and continuous integration, are the practical foundation for running changing services safely.**

## Why this matters

Most teams that run an IT service also build and change it. The way software is built decides how often the service changes, how risky each change is, and how much the people on call can trust what they are given. A team that builds in large batches and hands over rarely will give operations a few big, frightening releases. A team that builds in small steps, with tests and quick feedback, can give them many small, understood ones.

Agile software development is the best-known set of ideas for the second way of working. It is also widely misunderstood. Some people use "agile" to mean "no plans and no documents," and others use it for any process with a daily meeting. This topic gives you a clearer picture: where agile methods came from, what they have in common, what they do not claim, and which practices matter most to a team that has to keep a service running.

The evidence needs a careful reading. The [Wikipedia article on agile software development](https://en.wikipedia.org/wiki/Agile_software_development) says that anecdotal evidence for agile is strong but empirical evidence is "limited and less than conclusive," and it points to surveys, such as the annual State of Agile survey, that report benefits but come from self-reported opinions. Treat agile methods as promising approaches to test in your own setting.

## Core concepts

### What the term covers

"Agile software development" is an umbrella term. The Wikipedia article describes it as covering approaches that grew from the values and principles agreed in 2001 by 17 practitioners (see Topic 1.1 — Agile Manifesto and Topic 1.2 — Agile Principles). A capital-A "Agile" is often used for the practices that grew from that mindset, and a lowercase "agile" for the quality of being able to adapt. The distinction is not strict, and you will hear both.

Agile methods aim for continuous software delivery. They rely on continuous collaboration among stakeholders and developers, build projects around motivated individuals, and pursue continuous improvement through feedback, with attention to quality. They differ in what they emphasize. Some, such as Extreme Programming, focus on engineering practices, and others, such as Scrum and Kanban, focus on how work is managed.

### A short history

The Wikipedia article traces iterative and incremental development back to 1957, with evolutionary project management and adaptive software development appearing in the early 1970s. In the 1990s a group of lightweight methods appeared in reaction to heavyweight, plan-driven processes, often called the [waterfall model](https://en.wikipedia.org/wiki/Waterfall_model). The article lists rapid application development (1991), the unified process and the dynamic systems development method, DSDM (1994), Scrum (1995), Crystal Clear and Extreme Programming (1996), and feature-driven development (1997).

In February 2001 seventeen practitioners met at Snowbird, Utah, and wrote the Manifesto. Later statements built on it: the PM Declaration of Interdependence in 2005, the Software Craftsmanship Manifesto in 2009, and the Agile Alliance's *Guide to Agile Practices* in 2011, which was renamed the *Agile Glossary* in 2016.

### Adaptive and predictive approaches

The article describes a continuum between predictive and adaptive approaches. A predictive method plans most of the work in detail before it starts, and works well when requirements are stable and well understood. An adaptive method expects change and plans in short horizons. Boehm and Turner, cited in the article, argue that each side has its own "home ground," meaning that neither is right everywhere.

This matters for a service team because its work is mixed. Replacing a data center network is closer to predictive work. Improving a customer-facing app is closer to adaptive work. Choose the approach per kind of work, not once for the whole organization.

### Common methods

The article lists many methods. Those you are most likely to meet:

| Method | Main emphasis | Covered in |
|---|---|---|
| Scrum | Defined roles, regular events, and a fixed cadence | Topic 1.4 — Scrum |
| Kanban | Visualizing work and limiting how much is in progress | Topic 1.5 — Kanban |
| Extreme Programming (XP) | Engineering practices such as pair programming and test-driven development | Topic 1.6 — Extreme Programming |
| Lean software development | Applying lean ideas, such as removing waste, to software | Topic 1.7 — Lean Software Development |
| Feature-driven development, DSDM, Crystal, and adaptive software development | Other lightweight methods of continuous software delivery with their own roles and practices | This topic |
| Scrumban | A mix of Scrum events and Kanban flow | Topic 1.4 — Scrum and Topic 1.5 — Kanban |

No method is "the" agile method. The article quotes Ken Schwaber's view that teams get into trouble by hunting for a perfect methodology when the enterprise itself needs to change, and Bas Vodde's suggestion that Scrum supplies basics that teams extend locally.

### Common practices

The article lists practices that many agile teams use. A selection, with what each is for:

- **User stories and backlogs:** describe work from the user's point of view and keep a prioritized list of what to do next.
- **Daily stand-up:** a short daily meeting, often around 15 minutes, to share progress and blockers.
- **Test-driven development (TDD) and acceptance test-driven development (ATDD):** write tests first, so that "done" is defined before the work starts.
- **Continuous integration (CI):** merge changes frequently and build and test automatically. The article notes that Grady Booch first proposed the term in 1991.
- **Pair programming and refactoring:** two people share work to improve quality and spread knowledge, and the code is improved continually without changing what it does.
- **Retrospectives:** the team reflects at regular intervals on how to improve.

For a service team, three of these deserve special attention. Automated tests and continuous integration make frequent change safe. Retrospectives provide a standing place to improve how the team works. Backlogs give a single, ordered list in which service improvements compete fairly with new features.

### Experience, measurement, and pitfalls

The article reports that surveys, among them a Shine Technologies survey in 2002–2003 and the State of Agile survey since 2006, find perceived gains in quality, productivity, and business satisfaction. It also notes that a VersionOne survey found insufficient training the most cited cause of failed implementations, and lists pitfalls such as filling the product owner role with a member of the development team and lacking sponsor support.

Measuring "how agile" a team is has produced several self-assessments, such as the Nokia test, and one index that rates projects on duration, risk, novelty, effort, and interaction. Be careful with any such score. A number is a conversation starter, and a team that optimizes for the score can lose the point.

### Large-scale, distributed, and regulated work

The article says that scaling beyond about 20 developers, or across locations, brings challenges, and that a number of frameworks have been proposed, though views differ on how well they work (see Topic 1.8 — Scaling Agile). It also reports that regulated domains such as medical devices, pharmaceuticals, finance, nuclear, automotive, and avionics were first thought unsuitable for agile, and that adaptations now exist. The concerns it lists are quality assurance, safety and security, traceability, and verification and validation.

These are exactly the concerns of service management. When a regulator or an auditor asks for evidence, an agile team can provide it from the tools it already uses, such as version control history, automated test results, and change records (see Topic 5.7 — Governance, Risk, and Compliance).

### Criticism worth knowing

Steven Rakitin, in a letter to *IEEE Computer* in 2001, called agile "yet another attempt to undermine the discipline of software engineering" and read the Manifesto's preference for working software as a license to skip documentation. Proponents answer that documentation should be "just barely good enough," in the phrase of Scott Ambler. Service teams know both sides: too little documentation slows handovers and incident response, and too much goes stale.

## Best practices

1. **Match the method to the kind of work.** Use continuous software delivery and frequent feedback where requirements change, and use more up-front planning where they are fixed and the cost of error is high. Decide this for each kind of work and review it when circumstances change.
2. **Start with the smallest useful batch.** Break work into pieces that can be built, tested, and released in days. Small batches give faster feedback and make a failed change easier to understand and reverse.
3. **Automate testing before you speed up releases.** Frequent releases without automated tests move risk to your users. Build a suite that runs on every change and fails loudly, and treat a broken build as the team's first priority.
4. **Integrate continuously.** Merge work to a shared branch often and build it automatically. Long-lived branches hide conflicts until they are expensive to fix.
5. **Make "done" include operations.** A story is not finished until it can be monitored, supported, and rolled back. Add these checks to your definition of done, and ask operations staff to help write it (see Topic 3.5 — Release and Deployment Management).
6. **Keep one ordered backlog per team.** Put features, defects, and service improvements in the same prioritized list so that they compete openly. Hidden side queues are where operational work quietly starves.
7. **Write just enough documentation.** Keep documents that people use, such as runbooks, service descriptions, and architecture notes, and give each an owner and a review date. Delete the rest. This answers Rakitin's concern without returning to heavy documents.
8. **Hold regular retrospectives and act on them.** Choose one change from each, with an owner and a date. A retrospective that produces only discussion becomes a ritual.
9. **Invest in training and sponsorship.** The survey evidence in the Wikipedia article points to training and sponsor support as common weak points. Plan for both before you ask teams to change how they work.
10. **Tailor, and say why.** Adapt a method to your context, and write down what you changed and the reason. Changing a practice because it is inconvenient, without a reason, is how teams drift away from the benefits.
11. **Measure outcomes, not agility scores.** Track things such as lead time for a change, how often releases cause incidents, and how fast service is restored (see Topic 5.6 — Metrics and Measurement). Use self-assessments only as prompts for discussion.
12. **Bring service data back into development.** Feed recurring incidents and problem records into the backlog, so that development learns from operations (see Topic 3.3 — Problem Management).

## Questions to discuss with your team

**Which agile practices do we actually use, and which do we only have names for?**

List the practices you think you follow: stand-ups, retrospectives, backlogs, automated tests. For each, ask for the last time it changed a decision. Practices that nobody can connect to a decision are rituals. A facilitator should ask for evidence without implying blame. Follow up by choosing one ritual to improve or drop.

**For which of our work would a more predictive approach be wiser, and why?**

The Wikipedia article reports that each approach has a "home ground." Ask people to sort recent work into stable and fast-changing. Typical stable work includes hardware refreshes, data center moves, and major contract renewals. Ask what a more careful plan would have bought in each case. The goal is to avoid applying one style to everything.

**How quickly do we find out that something we built does not work, and what would make that faster?**

Trace the path from writing a change to learning how it behaves in use. Count the stages and the waits: review, build, test, release, monitoring. Ask which stage the team trusts least. Often the answer is a manual test or a release step that depends on one person. Pick one stage to shorten and agree how you will know it got shorter.

**What would an auditor or regulator need to see from us, and does our way of working already produce it?**

Ask someone with audit or security experience to join. Collect the evidence that your tools already produce: change history, test results, approvals. Then list what is missing. Teams are often surprised to find that frequent small changes with automated checks produce better evidence than infrequent large ones. Record the gaps for the governance discussion in Topic 5.7 — Governance, Risk, and Compliance.

**Where does our documentation help people, and where does it only exist because we were told to write it?**

Ask people which documents they used in the last month. A runbook that is used and kept current counts. A design document that nobody has read since the day it was approved does not. Have the team decide which to keep, which to merge, and which to delete, and assign owners. This is a safe way to apply the "just barely good enough" idea.

**What did we last change about how we work because of what we learned, and what is the next change?**

Ask for the most recent concrete change from a retrospective and whether it worked. If nobody can name one, the retrospective is not doing its job. Look at why: the actions may be too large, have no owners, or compete with delivery work. Close by choosing one small change to make in the next two weeks.

## In practice: an agile ITIL example

A mid-sized online retailer has a development team of ten people that builds its order-management system, and a separate operations team of six that runs it. The development team uses sprints and releases every two weeks. The operations team receives each release with a short note and a request to deploy it within a window on Thursday night. Operations staff complain that they learn what changed only when something breaks, and developers complain that a Thursday window is too late to fix anything found in testing.

At a joint retrospective, the two teams map one recent release step by step. They find that the only automated tests cover about half of the order flow, that nobody on the operations side has seen the release before the Thursday note, and that the rollback step has never been tried. They agree on three changes. The development team will add a monitoring check and a rollback test to its definition of done. An operations engineer will join each sprint review. Releases that pass the full automated suite will deploy as soon as they are ready, not only on Thursday.

Over the next two months, two of the next four releases deploy mid-week. The operations engineer catches a missing log message in one sprint review, which saves an hour of searching in a later incident. Not everything improves: the automated suite still skips the refund path, and one refund fault reaches customers. The teams add refund tests to the next sprint and agree to review the gaps in coverage every month. The operations engineer also says that attending the sprint review takes time that the rota does not allow for, so the operations manager shifts some of that engineer's other duties.

## Four perspectives

### Product and delivery teams

Delivery teams own the practices that make change safe: tests, continuous integration, small batches, and a clear definition of done. Treat operations as a customer of your work. Ask what they need to run a release, and include it in the backlog as you would a feature.

### Service and operations teams

Operations staff can use agile practices on their own work: a visible backlog of improvements, short feedback cycles on incidents, and regular retrospectives. Ask to join planning and review sessions early. Bring knowledge of how services fail, which is the most useful input a delivery team can get.

### Leadership and governance

Leaders decide whether teams get the time and training to work this way. The survey evidence in the Wikipedia article points to training and sponsorship as common weak points. Ask what controls you need and how a team can meet them using its own tools, instead of adding a parallel process.

### Customers and users

Customers see the benefit of agile methods as visible improvement at a steady rhythm, not as a ceremony. Expect to review working changes regularly and to be asked what matters most. In return, the team needs timely answers and a willingness to accept small, imperfect releases that improve over time.

## Common failure modes

- **Adopting rituals without engineering practices.** Daily meetings and boards appear, but there are no automated tests, so releases remain risky. Instead, invest in testing, integration, and release automation alongside the ceremonies.
- **Calling a change process "agile" without changing decision rights.** Teams still wait for distant approvals. Instead, move decisions to the people with the knowledge, and set clear limits.
- **Using agile as an excuse for no documentation.** Handovers and incidents suffer. Instead, keep the short documents people use and give each one an owner.
- **Skipping training.** The VersionOne finding in the Wikipedia article names insufficient training as the most cited cause of failed implementations. Instead, train teams and leaders before and during the change.
- **Putting a development team member in the product owner role.** The article lists this as a pitfall. Instead, choose someone who represents the business and has time to decide.
- **Scaling by copying a framework.** A large framework installed without understanding adds process and slows teams. Instead, start with the problem you have and adopt only what helps (see Topic 1.8 — Scaling Agile).
- **Chasing an agility score.** Teams optimize for the metric. Instead, track outcomes such as lead time, release failures, and time to restore service.
- **Keeping development and operations apart.** The delivery team ships and the operations team inherits. Instead, bring them into shared planning, reviews, and incident learning (see Topic 5.2 — DevOps).

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Continuous software delivery | Work is delivered in large releases | Some teams deliver in short cycles | Teams share a common delivery cadence and a definition of done | Lead time and release outcomes are measured and reviewed | Release rhythms are coordinated across teams and suppliers |
| Engineering practices | Testing and builds are mostly manual | Some teams have automated tests and builds | A shared pipeline runs tests on every change | Test coverage and failure rates are tracked and gaps are fixed | Pipelines and practices are improved across teams from shared evidence |
| Backlog and prioritization | Requests arrive by email and ad hoc | Teams keep their own backlogs | Each team has one ordered backlog that includes service work | Backlog flow and age are reviewed with stakeholders | Priorities are aligned across teams, customers, and suppliers |
| Learning and adaptation | Reviews follow major failures only | Some teams hold retrospectives | All teams hold regular retrospectives and record actions | Actions are tracked to completion and effects are checked | Lessons move between teams and into policy without central direction |

## Checklist

- [ ] The team can say which agile method or practices it uses and why it chose them.
- [ ] Work is sorted into predictive and adaptive kinds, with a stated approach for each.
- [ ] Automated tests run on every change, and a failing build stops the line.
- [ ] Our definition of done includes monitoring, support notes, and a tested rollback.
- [ ] Each team has one ordered backlog that includes service improvements and defects.
- [ ] Runbooks and service descriptions have owners and review dates.
- [ ] Retrospectives are held at a regular rhythm and each ends with one owned action.
- [ ] Teams and leaders have had training in the way of working we ask of them.
- [ ] We know what evidence auditors need and how our tools provide it.
- [ ] Outcome measures, such as lead time and time to restore service, are reviewed regularly.

## AI prompts

**Purpose: map your current practices to common agile practices and find gaps.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Purpose: draft a definition of done that includes operations.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare evidence for an auditor from your agile tools.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Purpose: plan a retrospective on how your team adopts agile practices.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## AI skills

- [scrum](../../../../skills/scrum/SKILL.md): use to set up or review a Scrum team's roles, events, and artifacts.
- [kanban](../../../../skills/kanban/SKILL.md): use to design a visual board with limits on work in progress for a service or operations team.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): use to review or adopt engineering practices such as test-driven development and continuous integration.
- [user-story](../../../../skills/user-story/SKILL.md): use to write user stories with acceptance criteria that include operational needs.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run a retrospective that ends with one owned change.

## Key sources

- **Manifesto for Agile Software Development** and **Principles behind the Agile Manifesto** (agilemanifesto.org): the primary statement of values and principles.
- **Agile software development** (Wikipedia): a wide overview of history, methods, practices, adoption, and criticism with many cited sources.
- **Agile Glossary** (Agile Alliance): definitions of agile practices and terms, maintained by the community that grew from the Manifesto.

## References

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
