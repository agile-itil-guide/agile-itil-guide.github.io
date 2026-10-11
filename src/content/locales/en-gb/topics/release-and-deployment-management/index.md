# Release and Deployment Management

**Release and deployment management gets changes into production safely, and the aim in an agile setting is to make releasing so routine, automated, and reversible that it stops being an event.**

## Why this matters

Many organisations still treat a release as a big, tense occasion. A date is fixed, a window is booked, people stay late, and success is measured by whether anything broke. That pattern produces exactly the risk it fears: the more changes bundled into a release, the harder it is to understand what went wrong and the more painful a rollback.

DORA's research program describes the alternative. Its page on continuous delivery defines the practice as "the ability to release changes of all kinds on demand quickly, safely, and sustainably," and reports that doing it well improves delivery performance and availability, and is associated with lower burnout and higher job satisfaction. Its page also warns that deploying more often without changing processes and architecture tends to raise failure rates and burn out teams. The lesson is not "release faster" but "build the ability to release safely, then release often."

Google's *Site Reliability Engineering* book, in its chapter on release engineering, makes a similar point from practice: frequent releases mean fewer changes between versions, so testing and troubleshooting get easier. This topic draws on those two sources, on the guide's other change-related topics, and on widely used ITIL vocabulary that this guide could not confirm against the framework owner's text. Treat the sources as strong, specific, and limited to the contexts they describe.

## Core concepts

### Release and deployment

The two terms are often confused. A common distinction, widely used in service management, is:

- A **release** is a version of a service or component made available for use. It is a decision about what users will get.
- A **deployment** is the act of moving a version into an environment, such as production.

Separating them is powerful. You can deploy code to production without turning it on for users, and release it later in a controlled way. Techniques such as feature switches rely on this separation (see Wikipedia's article on feature toggles).

### Continuous delivery and continuous deployment

DORA's page defines **continuous delivery** as the ability to release changes of all kinds on demand quickly, safely, and sustainably. It distinguishes it from **continuous deployment**, which means deploying every change to production as soon as possible. DORA says teams "can and should start with continuous delivery" even if they never adopt continuous deployment. The decision whether to release remains a business decision; continuous delivery makes it a choice rather than a project.

### What the research recommends

The DORA page lists practices that support continuous delivery:

| Practice | What DORA says |
|---|---|
| **Test automation** | Comprehensive, reliable automated test suites, mostly created and maintained by developers |
| **Deployment automation** | Deployments fully automated, needing no manual intervention |
| **Trunk-based development** | Fewer than three active branches, very short-lived branches, rare code-lock periods |
| **Loosely coupled teams and architecture** | Teams can test and deploy on demand without orchestrating with other services |
| **Other practices** | Continuous integration, continuous testing, version control for all production artifacts, test data management, monitoring and observability, proactive notifications, database change management, pervasive security |

The page reports that continuous delivery is associated with higher quality (less time spent on rework or unplanned work), lower burnout, and less deployment pain. It also says elite teams meeting reliability targets in the 2021 report were three times more likely to have a loosely coupled architecture than low performers. It states no tools, target deployment frequencies, or implementation timeline, and it notes that transformations commonly follow a "J-curve," with a dip in efficiency as automation increases test requirements and technical debt accumulates.

### Lessons from release engineering practice

The SRE book's chapter on release engineering describes one large organisation's approach:

- **Self-service.** Teams run their own release processes. Releases are "truly automatic" and need engineer involvement only if problems arise.
- **High velocity.** Frequent releases mean fewer changes between versions, which makes testing and troubleshooting easier.
- **Hermetic builds.** Builds depend on known tool and library versions, so the same revision gives identical results.
- **Enforced policies.** Access controls gate approvals, release creation, and deployment. Nearly all changes need code review, and each release produces a report of included changes.

The chapter also stresses configuration under source control and code review, and suggests that developers, site reliability engineers, and release engineers collaborate instead of throwing results "over the fence." It says organisations should define release policies even when they cannot yet automate or enforce them, and that it is cheaper to put good practices in place early than to retrofit them. The chapter describes Google's own tools; your environment will use different ones, so draw the principles and not the products.

### Environments and promotion

A release usually moves through a series of environments, such as development, test, and production. Each step provides evidence. A common practice, consistent with the research above, is to build once and promote the same artifact, so that what was tested is what is deployed. The SRE chapter's emphasis on identical builds from the same revision expresses the same idea.

### Rollout and rollback

How a release reaches users can be graduated. The SRE chapter describes rollouts paced to risk, from hourly automatic pushes in development to multi-day rollouts for sensitive infrastructure, and mentions canary releases, where a small share of traffic gets the new version first. Rollback means returning to the previous version, and it should be as practiced as rollout. Teams that can reverse quickly can afford to deploy often (see Topic 3.4 — Change Enablement).

### Release information for support

Support staff and users need to know what changes and what to do if it goes wrong. A release note, a known-issues list, and a named contact are the minimum (see Topic 3.1 — Service Desk). The SRE chapter's release report of included changes serves as a source.

### Measures

DORA's page suggests measuring short lead times for regular and emergency changes, low change fail rates, short time to restore service, and release frequencies that deliver priorities on time. Its overarching goal is that no one works outside business hours to deploy. For definitions and cautions about the measures, see Topic 3.4 — Change Enablement and Topic 5.6 — Metrics and Measurement.

## Best practices

1. **Separate deployment from release.** Deploy code to production in a dormant state and turn it on for users when ready, using feature switches or staged rollouts. This reduces the risk of a deployment and gives the business control.
2. **Automate the deployment.** Aim for no manual steps. Manual steps are slow, vary between people, and cause incidents. Automate in small increments, starting with the steps that go wrong most.
3. **Build once, promote the artifact.** Produce one package and move it through environments, so that what you tested is what you run. Record which version is where.
4. **Make builds reproducible.** Pin tool and library versions so the same revision yields the same result. This follows the SRE chapter's principle of hermetic builds.
5. **Keep branches short-lived.** DORA's trunk-based guidance is fewer than three active branches and branches that merge within about a day. Long branches turn releases into merge events.
6. **Test automatically, and keep the tests fast and reliable.** Aim for feedback in minutes. A flaky or slow test suite makes people bypass it.
7. **Release in small batches.** Smaller releases are easier to review, test, and reverse. If a release is large, ask how to split it.
8. **Roll out in stages.** Start with a small share of users or servers, watch the signals, and expand. Define in advance what you will watch and who can stop the rollout.
9. **Rehearse rollback.** Know how to return to the last good version and practice it. A rollback you have never tried is a hope.
10. **Give support what they need before release.** Provide release notes, known issues, and a contact. Include support staff in sign-off for changes that affect users (see Topic 3.1 — Service Desk).
11. **Keep configuration in version control.** Treat configuration changes like code, with review and a record. Choose where each kind of setting lives and why.
12. **Aim for deployment in working hours.** DORA names this as the overarching goal. If deployments need late nights, the process or architecture needs work.

## Questions to discuss with your team

**How long does it take, and how many steps does it involve, to get a finished change into production?**

Trace one recent change from "ready" to "live." List each step, who does it, and how long it waits. Distinguish manual steps from automated ones. Teams are often surprised by how many steps are manual and by the waiting between them. The facilitator can ask which step has caused the most incidents. Choose one to automate.

**What would have to be true for us to release during working hours without worrying?**

Ask what the team fears about releasing. Typical answers: no tested rollback, weak tests, unclear impact on users. Each is a thing to build. List them and rank them. Ask what the smallest step would be for the first. The DORA goal of no one working outside business hours to deploy is a useful target to discuss.

**Where do we bundle changes because releasing is painful, and what does the bundling cost us?**

Look at the contents of recent releases. Count the changes in each. Ask what happened when a bundle went wrong, and how long it took to find the cause. Discuss what would make single-change releases the easy path. Agree a first step, such as releasing one low-risk change on its own.

**How do we know a release is working once it is live?**

Ask what signals the team watches in the first hour: errors, performance, user reports. If the answer is "we wait for complaints," discuss monitoring that would show a problem quickly. Ask who is watching and what they would do. Agree on a short checklist for after release.

**What does our support team know about a release before it goes out?**

Ask the service desk what they learned about the last release and when. Compare with what they needed. Discuss a simple handover, such as a release note and a named contact. Include the people who answer users' questions in planning for risky releases.

**What is stopping us from deploying without a freeze period, and what would a freeze period cost?**

Freeze periods are common around peak business times. Ask how long they last and what they delay. Discuss whether small, well-tested changes could proceed during them with extra safeguards. The DORA page warns against applying the same approval to all changes regardless of risk or timing, so ask whether the freeze is too blunt.

## In practice: an agile ITIL example

A university runs an online enrolment system for 30,000 students. The development team of eight releases once a term, in a weekend window before enrolment opens. Each release bundles hundreds of changes and needs fifteen people, a long manual checklist, and a call plan. The last release failed at 2 a.m. on Sunday, and the team spent fourteen hours finding which of the changes had caused it.

The team lead proposes a change in approach. First, deployments become fully scripted, starting with the steps that failed last time. Second, the team adds automated tests for the enrolment path that run on every change and take under ten minutes. Third, new features are deployed switched off and enabled by a feature switch after checks. Fourth, a rollback step is written and rehearsed in a test environment. The registrar's office agrees to a rule that no release goes to production in the three weeks of peak enrolment unless it is a fix for a user-visible fault.

Within a term, the team deploys weekly outside peak weeks, in working hours, with the release notes sent to the student helpdesk the day before. Some releases are slowed by flaky tests and one feature switch was left on by mistake and caused a brief confusion. The transformation also hits the J-curve the DORA page describes: for two months, work on tests and scripts slows feature delivery. The team keeps going, fixes the flaky tests, adds a checklist step to remove switches, and agrees with the registrar to review the freeze rule next year. The terms' enrolment peaks pass without a release-related incident.

## Four perspectives

### Product and delivery teams

Delivery teams own the pipeline: tests, builds, deployment scripts, and rollback. Invest in them as a product with users. Release small, release often, and treat each release as evidence about the pipeline. Involve support and operations when changes affect them.

### Service and operations teams

Operations teams benefit from smaller, more predictable releases, and can help by defining what must be true before a release is accepted: monitoring, runbooks, and rollback. Shift from gatekeeping to enabling by providing the platform and checks that delivery teams use. Watch for signals after a release.

### Leadership and governance

Leaders decide whether teams can invest in the pipeline and tolerate the J-curve. Ask for lead time, change fail rate, and recovery time. Resist freezing releases as a blanket response to risk, and ask instead for evidence that risky releases get more scrutiny.

### Customers and users

Customers and users see frequent small improvements and fewer big-bang disruptions. Expect advance notice of changes that affect you and a way to report problems. If you have peak periods, tell the provider so that they can plan staged rollouts around them.

## Common failure modes

- **Big-bang releases.** Hundreds of changes go out together. Instead, release in small batches and separate deployment from release.
- **Manual deployment.** Steps vary by person and fail at night. Instead, automate in increments, starting with the riskiest steps.
- **Releasing more often without safeguards.** Failure rates rise and people burn out, as DORA warns. Instead, invest in tests, rollback, and monitoring first.
- **Different artifacts in different environments.** What is tested is not what runs. Instead, build once and promote the same artifact.
- **Long-lived branches.** Merges become events. Instead, keep branches short and integrate continuously.
- **Untried rollback.** The first rollback happens during an outage. Instead, rehearse it regularly.
- **Support is the last to know.** Staff learn of changes from users. Instead, send release notes and a contact before release.
- **Blanket freezes.** The same freeze applies to all changes. Instead, allow low-risk, well-tested changes through with extra checks and keep the freeze for what is risky.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Deployment automation | Deployments are manual and vary | Some deployments are scripted | Deployments are automated through a common pipeline | Deployment failures and duration are tracked and reduced | Pipelines and practices are shared and improved across teams |
| Release frequency and size | Releases are rare and large | Some teams release in smaller batches | Teams release in small batches on a known rhythm | Frequency, lead time, and size are measured and tuned | Release rhythms are coordinated across services and suppliers |
| Safety (tests, rollout, rollback) | Testing is manual; rollback is untried | Some automated tests and rollback steps exist | Automated tests, staged rollout, and rehearsed rollback are standard | Change fail rate and recovery time are tracked and improved | Safety practices are shared and tested across teams |
| Support readiness | Support learns of releases from users | Some releases have notes | Release notes and contacts are standard | Support feedback on releases is collected and acted on | Support, delivery, and users plan releases together |

## Checklist

- [ ] We can state the difference between deploying and releasing, and we use it.
- [ ] Deployments are automated with no manual steps, or the remaining manual steps are listed.
- [ ] We build once and promote the same artifact through environments.
- [ ] Automated tests run on every change and give feedback in minutes.
- [ ] Branches are short-lived and merged to trunk frequently.
- [ ] A rollback exists for each type of release and has been rehearsed.
- [ ] Rollouts are staged where risk justifies it, with signals defined in advance.
- [ ] Release notes and known issues reach the service desk before a release.
- [ ] Configuration is in version control and reviewed.
- [ ] We track lead time, change fail rate, and recovery time for each service.

## AI prompts

**Purpose: map the steps from "ready" to "live" and find what to automate.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Purpose: write a release note for the service desk and users.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Purpose: plan a staged rollout.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: prepare a case for investing in release automation.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [release-notes](../../../../skills/release-notes/SKILL.md): use to tell users and the service desk what a release changes.
- [changelog](../../../../skills/changelog/SKILL.md): use to keep a running record of changes by version.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): use to build the automated tests that make frequent release safe.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): use to move testing earlier in the pipeline so that problems are found sooner.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use to plan small, frequent releases and the checks around them.

## Key sources

- **Continuous delivery** (DORA, dora.dev): the research program's definition, recommended practices, findings, and pitfalls.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): one organisation's practice of self-service, reproducible builds, and enforced release policy.
- **Streamlining change approval** (DORA, dora.dev): guidance on how approval fits into delivery.
- **Continuous delivery** (Wikipedia): an overview of the practice and its history.

## References

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
