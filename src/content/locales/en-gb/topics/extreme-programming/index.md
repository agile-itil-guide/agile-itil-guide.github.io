# Extreme Programming

**Extreme Programming (XP) is the agile method that is most specific about engineering practice, and its habits of testing first, integrating continuously, and sharing ownership of code are what make frequent change to a live service safe.**

## Why this matters

Frequent change is the aim of continuous delivery and the worry of service management. The way to reconcile them is not more approval meetings but a stronger ability to know that a change works before it reaches users. Extreme Programming is the agile method that says most about how to build that ability: write tests first, integrate several times a day, keep the design simple, and share responsibility for the code.

Many teams take Scrum's events and boards and leave the engineering practices behind. The result is a team that plans in sprints but releases with fear. XP's practices are the missing half. They matter to anyone who has to run the result, because a service built with automated tests, small releases, and shared knowledge is easier to support than one built by a few people in large, untested batches.

XP also asks something of the organisation that is easy to overlook: a sustainable pace, a whole team with all the skills needed, and a customer who is truly available. Those are conditions of the working environment, not only habits of programmers. This topic explains the method, the evidence about its limits, and how its practices connect to ITIL practices such as change enablement, release management, and knowledge management.

## Core concepts

### Where XP came from

Kent Beck developed XP while working on the Chrysler Comprehensive Compensation System (C3), a payroll project. According to the [Wikipedia article on Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming), Beck became project leader in March 1996 and refined the method there, with Ward Cunningham as a major influence and Ron Jeffries joining to coach the team. His book *Extreme Programming Explained* appeared in October 1999. Chrysler cancelled the C3 project in February 2000 after Daimler-Benz acquired the company.

The article points out that many XP practices were not new. It mentions test-first development in NASA's Project Mercury in the early 1960s. XP's move was to take good practices to "extreme" levels: if testing is good, test all the time; if reviews are good, review constantly by working in pairs. Beck and Cunningham were among the 17 people who wrote the Agile Manifesto (see Topic 1.1 — Agile Manifesto).

### The five values

XP states five values:

| Value | What it means | In service work |
|---|---|---|
| **Communication** | Build shared understanding among developers, users, and customers, mainly by talking and keeping designs simple | Developers and operations staff talk about how a release will behave before it ships |
| **Simplicity** | Do the simplest thing that works, and do not build for speculative future needs | Fewer moving parts to monitor, secure, and explain |
| **Feedback** | Learn quickly from tests, from customers, and from the team's own estimates | Fast test results and production monitoring shorten the time to learn |
| **Courage** | Refactor, discard obsolete code, and persist through hard problems | Retiring an old component that nobody dares touch |
| **Respect** | Respect for teammates and for one's own work | Blameless review after failures, and fair on-call load |

The article notes that respect was added in the second edition of *Extreme Programming Explained*, after the original four.

### The practices

The article on XP practices groups twelve practices into four sets. They are best understood as a system that supports itself.

| Group | Practices | Purpose |
|---|---|---|
| **Fine-scale feedback** | Pair programming, planning game, test-driven development, whole team | Get feedback in minutes or days, not months |
| **Continuous process** | Continuous integration, design improvement (refactoring), small releases | Keep the software always in a releasable state |
| **Shared understanding** | Coding standard, collective code ownership, simple design, system metaphor | Let anyone on the team change any part safely |
| **Programmer welfare** | Sustainable pace | Keep people rested and effective over years |

A short description of the main ones:

- **Pair programming:** two people work on one task at one workstation, one writing and one reviewing, and they swap partners often.
- **Test-driven development (TDD):** the programmer writes a failing test first, then writes just enough code to make it pass.
- **Continuous integration (CI):** developers merge their work into the shared repository every few hours, so integration problems surface early.
- **Small releases:** deliver working software in frequent, small steps so that customers can see progress and respond.
- **Collective code ownership:** anyone on the team may change any part of the code.
- **Sustainable pace:** avoid regular overtime, and never allow overtime in two successive weeks.

### Controversies and limits

The article records several criticisms. Matt Stephens and Doug Rosenberg, in a 2003 book, argued that XP's practices depend on each other, so adopting only some undermines the process. Critics also questioned pair programming as the normal way of working, the lack of big design up front, the on-site customer as a single point of failure, and informal change requests leading to rework and scope creep. P. McBreen, and Boehm and Turner, also wrote critical assessments. The article adds that agile practitioners regard many of these criticisms as misunderstandings.

On scale, the article says that Industrial XP, introduced in 2004, extended XP to larger and distributed teams with 23 practices. It also reports a claim, marked as needing a citation, that ThoughtWorks had reasonable success on distributed XP projects with up to sixty people. Read that claim with caution, and see Topic 1.8 — Scaling Agile for the wider discussion.

The article does not discuss deployment or production monitoring beyond continuous integration and small releases. XP says little about running software. You bring that from service management, and you use XP to make the handover less risky.

### XP and the ITIL view of change

ITIL's change enablement practice (see Topic 3.4 — Change Enablement) is concerned with making sure that changes are assessed, authorised, and scheduled so that risk is controlled. XP controls risk in a different place: in the code, through tests, small steps, and shared knowledge. A change that is small, tested automatically, integrated, and easy to reverse is a lower-risk change by any reasonable assessment. The two views fit together when the evidence from XP's practices is used in the change decision.

## Best practices

1. **Adopt practices as a set.** The critics' point that XP's practices support each other is a useful warning. Testing without integration, or integration without small steps, gives less than the sum. Introduce them together where you can, and learn which of them the others depend on.
2. **Write the test first for changes that matter.** For a new behaviour or a bug fix, write a failing test that shows the problem, then fix it. The test stays as a guard against the problem returning, which is especially useful for faults that caused incidents.
3. **Integrate several times a day.** Keep branches short-lived and build and test automatically on every merge. A broken build is the team's first priority.
4. **Release in small steps.** Each small release carries less risk and is easier to understand and reverse. Aim for the smallest interval your pipeline can support safely, and shorten it as confidence grows.
5. **Refactor continuously.** Improve the design a little every day instead of saving it for a rewrite. The test suite is what makes this safe.
6. **Keep the design as simple as it can be.** Build what is needed now, and remove what is not used. A smaller system has less to monitor, patch, and explain.
7. **Share ownership of the code.** Let any team member change any part, supported by tests and shared standards. This reduces dependence on a few experts, which is also an availability risk for the service.
8. **Pair on risky or unfamiliar work.** Use pairing for tricky changes, for onboarding, and for on-call shadowing. Treat it as a tool to spread knowledge and catch errors, and do not make it a rule for every task.
9. **Keep a sustainable pace.** Plan work so that overtime is rare and not repeated week after week. A tired on-call engineer is a service risk (see Topic 1.2 — Agile Principles on the pace).
10. **Make the customer part of the team.** Find a real user or user representative who can answer questions during the work. Remember the criticism that one person is a single point of failure, so involve more than one voice.
11. **Write acceptance criteria as tests where possible.** Turn the customer's expectations into automated checks that run with every build. They then document behaviour and guard it at the same time.
12. **Include operational checks in the tests.** Add checks for monitoring, logging, and recovery behaviour to the pipeline, so that operational readiness is verified with each change (see Topic 3.5 — Release and Deployment Management).

## Questions to discuss with your team

**How do we know that a change works before it reaches users, and how long does it take to know?**

Trace the checks a change passes between a developer's laptop and production. Count how many are automated and how long each takes. Typical answers include a manual test, a review, and a hope. Ask which check has caught the most problems and which has never caught anything. Follow up by choosing one manual check to automate.

**Who can change which parts of our system, and what happens when those people are away?**

List the components and the people who understand each. Components with one person behind them are risks to the service. Collective ownership is the XP answer, and it needs tests and shared standards to be safe. Ask what one person could teach another within a month. The facilitator can ask whether holidays or sickness have ever delayed a fix.

**Where would pairing help us most, and where would it only slow us down?**

Pair programming is controversial, so invite honest views. Ask people about the best and worst pairing they have done. Pairing often helps with unfamiliar systems, tricky changes, and onboarding. It helps less with routine work that one person can do well. Agree on one situation in which to try pairing for a month, and on how you will judge it.

**What happens to our quality when we are under pressure, and what do we drop first?**

Ask for a recent crunch and what was skipped: tests, reviews, documentation. Ask what happened afterwards. Often the skipped work returned as incidents. The point is to notice the pattern and to decide in advance which practices are protected. Avoid blame, and connect the answer to the sustainable pace.

**How often do we merge our work, and what makes us wait?**

Ask how long a typical branch lives and what holds it up. Long branches usually reflect large changes, slow reviews, or an unreliable build. Each is a different fix. Ask what the team could do to make merging in a few hours the normal case. Pick one blocker to remove.

**Do we have a customer or user available to the team, or do we guess what they want?**

Ask who answers questions about what the users need, and how long they take. If the answer is a long chain, ask which question was most costly to get wrong. Remember XP's own critics: a single customer representative can be a bottleneck. Discuss how to reach several users briefly and often.

## In practice: an agile ITIL example

A public transit agency's digital team of nine builds and runs its trip-planning app and a feed of live arrival data used by other developers in the city. The team releases monthly after a manual test cycle of four days. When a release goes wrong, rolling back takes half a day, so the team is reluctant to release more often. The operations lead, who is also the most experienced developer, answers most out-of-hours calls because nobody else knows how the feed works.

The team decides to adopt a few XP practices together. It sets up continuous integration that builds and runs unit tests on every merge. For every bug found in production, it writes a failing test before fixing it. Two developers pair with the operations lead on feed work for an hour a day. The team also adds a deployment step that can switch back to the previous version in minutes.

After four months, the team releases every week. The test suite catches two regressions before release that the manual cycle would have found only on the last day. Three developers can now handle most feed calls. Not everything works: the test suite takes 25 minutes to run, so developers merge less often than intended, and a faulty change to the arrival feed slips through because its tests used sample data that did not match a real edge case. The team moves the slow tests to a second stage so that the first results come within five minutes, and it adds a monitoring check on the feed's output. They also agree that pairing will remain a tool for hard problems and onboarding, not a rule for every task.

## Four perspectives

### Product and delivery teams

Delivery teams own XP's practices. Start with the ones that give feedback fastest: automated tests and continuous integration. Treat your test suite as a product used by operations too. It describes what the service is supposed to do and tells you quickly when it stops doing so.

### Service and operations teams

Operations staff can use XP ideas for their own work: infrastructure and configuration changes tested before they run, small changes integrated often, and knowledge shared across the team through pairing and collective ownership. Ask delivery teams for tests that cover the failures you see in production, and offer incident history to guide what gets tested.

### Leadership and governance

Leaders enable XP by protecting the pace, paying for build and test infrastructure, and accepting that quality is built into the work and not inspected in afterward. Ask for evidence of safety that comes from the pipeline, such as test results and release histories, and do not demand duplicate manual evidence.

### Customers and users

Customers have the most direct role in XP: they are part of the team's feedback loop. Expect to be asked to try small releases, answer questions quickly, and say what matters most this week. In return, you should see fewer surprises and faster fixes for problems you report.

## Common failure modes

- **Adopting only the rituals.** Teams take stand-ups and boards and skip tests and integration. Instead, begin with automated tests and continuous integration, since they give the largest return.
- **Treating pairing as a rule.** Forced pairing on all work frustrates people and slows routine tasks. Instead, use pairing for hard problems, onboarding, and knowledge transfer, and review how it is working.
- **A test suite nobody trusts.** Slow or unreliable tests get ignored. Instead, keep the suite fast and fix or delete flaky tests promptly.
- **Collective ownership without standards.** Anyone can change anything, and the code decays. Instead, pair it with shared coding standards, review, and automated checks.
- **A single customer representative.** One person becomes the bottleneck or the source of bias. Instead, spread contact across several users and check decisions with real use.
- **Skipping design completely.** Teams refactor repeatedly without a direction. Instead, keep a light picture of the architecture and review it at regular intervals.
- **Overtime as normal.** Long hours erode quality and cause incidents. Instead, plan to a sustainable pace and treat repeated overtime as a signal to reduce scope.
- **Ignoring operations.** XP says little about running software, and teams assume it is covered. Instead, add operational checks to the tests and invite operations staff into planning.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Testing | Testing is manual and late | Some teams have automated unit tests | Teams write tests with the code and run them on every change | Test results and escaped defects are tracked and reviewed | Test strategy is coordinated across services and shared with operations |
| Integration and release | Integration is infrequent and releases are large | Some teams use continuous integration | A shared pipeline builds, tests, and deploys every change | Release frequency and failure rate are measured and improved | Pipelines are coordinated across teams and suppliers |
| Shared ownership and knowledge | Knowledge sits with a few individuals | Some teams pair or rotate work | Collective ownership with standards is the norm | Knowledge gaps are tracked and reduced | Knowledge moves freely between teams and into runbooks |
| Pace and welfare | Overtime is routine | Some teams watch their workload | Sustainable pace is a stated policy | On-call load and overtime are measured and reviewed | Workload is balanced across teams based on shared data |

## Checklist

- [ ] The team has agreed which XP practices it uses and has tried them together.
- [ ] Automated tests run on every change, and a failing build is fixed first.
- [ ] Every production bug gets a test that would have caught it.
- [ ] Work is merged to the shared branch several times a day.
- [ ] Releases are small, and a rollback can be done quickly.
- [ ] More than one person can change and support each part of the system.
- [ ] Pairing is used for hard problems and onboarding, and its effect is reviewed.
- [ ] Overtime is rare and not repeated week after week.
- [ ] A user or user representative is available to answer questions during the work.
- [ ] Tests include checks for monitoring and recovery behaviour.

## AI prompts

**Purpose: turn a production incident into a test and a list of lessons.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Purpose: assess how safely your team can release small changes.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Purpose: design a one-month experiment with pairing.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: check a Definition of Done for operational readiness.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## AI skills

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): use to review or introduce XP practices such as pairing, test-driven development, and continuous integration.
- [user-story](../../../../skills/user-story/SKILL.md): use to turn customer needs into stories with acceptance criteria that can become automated tests.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use to plan small, frequent releases and the checks that make them safe.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to review how well the practices are working and choose one change.
- [runbook](../../../../skills/runbook/SKILL.md): use to turn knowledge held by one person into a shared, tested procedure.

## Key sources

- **Extreme programming** and **Extreme programming practices** (Wikipedia): an overview of the history, values, practices, and criticism, with citations.
- **Extreme Programming Explained** (Kent Beck): the original statement of the method; its second edition adds the value of respect.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP is one of the methods whose authors wrote the Manifesto.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens and Doug Rosenberg, 2003): the best-known critique, useful for testing your own assumptions.

## References

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
