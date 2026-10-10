# Change Enablement

**Change enablement exists to let beneficial changes happen safely and quickly, and the evidence from software delivery research is that risk is better controlled by small changes, peer review, and automated checks than by sending every change to a committee.**

## Why this matters

Change is where agile delivery and service management most often collide. Delivery teams want to release often, because small frequent changes are easier to understand and reverse. Operations and governance want to avoid outages and keep records, because past changes have broken services. Both are right. The disagreement is usually about how to control risk: by approval before the change, or by the quality of the change and the speed of recovery.

The practice is called change enablement in ITIL 4. The new name is a statement of purpose. The aim is to enable beneficial changes to happen, not to prevent changes. Older ITIL versions called the practice change management and gave it a strong role in approvals and schedules, which many teams experienced as a gate.

This topic uses the best evidence available: the DORA research program's guidance on change approval and its software delivery metrics, read from the program's own pages. DORA's pages report that heavyweight external approval is associated with worse delivery performance. They also give no effect sizes or statistical detail, and they refer to a 2019 report for the underlying research, so treat the guidance as strong but not final and test it in your own context. ITIL vocabulary here comes from widely published descriptions that this guide could not check against the framework owner's text (see Topic 2.2 — ITIL).

## Core concepts

### What change enablement does

A **change** is the addition, modification, or removal of anything that could affect a service. Change enablement is the practice of making sure changes are assessed, authorized, and scheduled so that risk is managed and beneficial changes proceed. The practice also keeps a record of what changed, which is vital for incident response because many incidents start with a recent change (see Topic 3.2 — Incident Management).

### Types of change

ITIL 4 is widely described as recognizing three types of change, each with a different path:

| Type | What it is | Typical path |
|---|---|---|
| **Standard change** | A low-risk, well-understood change that follows a documented procedure | Pre-authorized; recorded, with no case-by-case approval |
| **Normal change** | A change that needs assessment and authorization | Assessed for risk and impact, then authorized by the appropriate person or group |
| **Emergency change** | A change that must be made urgently, for example to restore service | Expedited authorization, with fuller review afterwards |

The names and exact definitions should be checked against the owner's publications. The principle is stable: match the level of control to the risk.

### Change authority

Each type of change needs someone with authority to approve it. In older practice this was often a change advisory board (CAB). The DORA page does not abolish the CAB; it suggests a "strategic" role, coordinating across teams, supporting process improvement, and making business trade-off decisions such as time to market versus risk. For routine changes, it says, approval is best implemented through peer review during development, backed by automation.

### What DORA reports about approval

DORA's page on streamlining change approval says:

- Heavyweight external approval, such as a CAB or senior manager sign-off, is associated with worse software delivery performance.
- The page reports no evidence that more formal external review lowers change fail rates.
- It argues that heavyweight approval slows delivery, leading to larger, less frequent releases with higher risk, and says its data supported this hypothesis.

The page names pitfalls: relying on a central CAB to catch errors, applying the same approval process to all changes regardless of risk, not improving the process against metrics, and adding process and approvals in response to production instability, which it says tends to make things worse. "No evidence was found" means evidence for the benefit was not found; it does not prove that external review has no effect. The page gives no criteria for what counts as a high-risk change, no guidance for specific regulations, and no transition plan for regulated industries.

### The alternative: control in the pipeline

DORA suggests meeting segregation of duties through peer review recorded in the development platform, and using continuous testing, continuous integration, and monitoring to detect, prevent, and correct bad changes early. It also suggests treating the platform as a product that gives developers fast feedback on security, performance, stability, and defects, flagging high-risk changes for extra scrutiny, and making the normal change process fast enough to handle emergencies. The control is in the evidence the pipeline produces: who reviewed, what tests passed, what was deployed, and how it can be undone.

### Measuring change

DORA's page on software delivery performance metrics lists five measures:

| Measure | What it is | Group |
|---|---|---|
| Change lead time | Time from a change being committed to version control to deployment in production | Throughput |
| Deployment frequency | How often deployments occur | Throughput |
| Failed deployment recovery time | How long it takes to recover from a deployment that fails and needs immediate intervention | Throughput |
| Change fail rate | The share of deployments that need immediate intervention, such as a rollback or hotfix | Instability |
| Deployment rework rate | The share of deployments that are unplanned and result from a production incident | Instability |

The page says speed and stability are not tradeoffs: the measures are correlated for most teams, and top performers do well on all five. It cautions against setting the measures as goals (Goodhart's law), relying on one metric, comparing very different applications, and competing with other teams. It suggests teams improve against their own past performance. The page gives no benchmark thresholds or formulas, so define each measure for your own context before you use it (see Topic 5.6 — Metrics and Measurement).

### Records and the configuration view

A change record should say what changed, why, who approved it, and when it was made, and ideally link to the services affected. Version control, build, and deployment tools can produce much of this automatically. Linking changes to the configuration of services supports impact analysis and incident response (see Topic 4.4 — Configuration Management).

### Change and release

Change enablement decides whether a change may proceed. Release and deployment management gets it into production (see Topic 3.5 — Release and Deployment Management). In continuous delivery the two merge in practice, with approvals embedded in the pipeline.

## Best practices

1. **Classify changes by risk.** Define a short list of change types, with criteria and examples. Match the path to the risk, so that routine changes are fast and risky changes get attention.
2. **Pre-authorize low-risk changes.** For changes that are well understood, tested, and reversible, agree a standard procedure and let them proceed without case-by-case approval. Record them automatically.
3. **Make peer review the default approval.** Require a second person to review changes before merge, and record the review in the development platform. This satisfies segregation of duties for most changes, as the DORA page describes.
4. **Automate the checks.** Run tests, security scans, and policy checks on every change, and make the results part of the record. An approval based on evidence is stronger than one based on a form.
5. **Keep changes small.** Small changes are easier to review, test, and reverse. If a change feels risky, ask whether it can be split.
6. **Make rollback easy and rehearsed.** For each change type, know how to undo it, and practice. The ability to recover quickly reduces the need to predict every failure.
7. **Flag the high-risk changes.** Define signals, such as changes to payment logic or shared infrastructure, that trigger extra review. Apply the heavier path only to them.
8. **Give the change authority a strategic role.** Use any central board to coordinate across teams, resolve conflicts, and make business trade-offs. Do not use it as a checkpoint for every change.
9. **Handle emergencies with the normal path.** Make the regular process fast and reliable enough that emergency changes follow it, with review afterward. Emergency routes used often signal that the normal path is too slow.
10. **Do not add approvals after an incident by default.** DORA's page says adding process in response to instability tends to make things worse. Ask first whether the fix is better tests, smaller changes, or faster recovery.
11. **Measure the process.** Track lead time, time spent waiting for approval, the share of changes that go through without manual approval, and change fail rate. Use the measures to improve, not to rank teams.
12. **Explain the process.** DORA's page notes that clearly communicating the existing process and helping teams navigate it is linked to better performance even before you change it. Publish a one-page guide with examples.

## Questions to discuss with your team

**What proportion of our changes are low-risk and well understood, and how are they approved today?**

Take a month of changes and sort them. Most teams find that the large majority are routine. Ask how long routine changes wait for approval and what the approver adds. The facilitator can ask whether anyone remembers a routine change that approval prevented from failing. Use the answer to identify a first candidate for pre-authorization.

**What does our approval step actually catch?**

List the last ten changes that were rejected or delayed at approval and why. Compare with the problems that reached production despite approval. If approval catches little, ask what would catch the same issues earlier, such as tests or peer review. Remember that the DORA page reports no evidence that more formal external review lowers change fail rates. Agree on one change to try.

**How would we undo a bad change, and how quickly?**

Pick a recent change and describe the rollback. If it is unclear, untested, or manual, that is the risk. Ask how long it would take and who would do it. Agree to rehearse one rollback this month. A team that can recover in minutes can accept more change.

**Which of our changes need extra scrutiny, and how would we recognize them?**

Collect examples of changes that caused serious incidents. Look for features they share: shared infrastructure, security controls, data migrations. Draft three signals that would flag a change as high-risk. Ask who should review flagged changes and how fast.

**When have we added a control after an incident, and did it help?**

Ask for examples. List what was added, the problems it addressed, and whether the problem recurred. The DORA page names adding approvals in response to instability as a pitfall. Discuss whether a different response, such as better tests or smaller changes, would have worked. Record one lesson.

**What evidence would an auditor accept from our pipeline in place of a signature?**

Ask an auditor or compliance colleague to join. List the evidence the pipeline already produces: reviews, test results, deployment records. Ask what is missing. Many auditors accept recorded peer review and automated evidence when it is reliable. Agree on a short description of the control and a trial period.

## In practice: an agile ITIL example

A regional hospital's IT department supports a clinical-scheduling system that is updated by an in-house team of seven. Every change, from a typo fix to a database migration, goes to a weekly change advisory board. Small fixes wait up to eight days. Clinicians complain, and the developers have started to bundle fixes into larger releases to avoid the queue, which makes each release riskier.

The head of IT and the board chair review a year of changes. Most were small, two had caused incidents, and neither of those had been caught by the board. They design a three-lane approach. Standard changes, such as text and configuration changes within agreed limits, with passing automated tests and a tested rollback, are pre-authorized and logged automatically. Normal changes need a peer review recorded in the development platform and a check against a short list of high-risk signals such as changes to patient data handling. Changes flagged as high-risk go to the board, which meets twice a week. Emergency changes follow the normal path with a postimplementation review.

After four months, standard changes go live within a day, and the board sees about a fifth of the volume it used to. Change fail rate does not rise. Problems remain. Two developers apply the high-risk signals inconsistently and one flagged change reached the board late, and internal audit asks for evidence that peer reviews are not rubber stamps. The team writes examples of the signals, adds a sampling review of peer reviews by a senior engineer, and agrees with audit to review the evidence at the next quarterly meeting.

## Four perspectives

### Product and delivery teams

Delivery teams carry most of the control: review, tests, small changes, and rollback. Build these into the pipeline and make the evidence visible. Keep changes small and tell operations what is coming. Use the change process as a place to share risk information, not only to get permission.

### Service and operations teams

Operations teams know which changes have hurt services. Share that knowledge as signals for extra review, and help build checks that catch them early. Support lighter paths for low-risk changes, and keep the records that make incident response faster.

### Leadership and governance

Leaders decide how much approval the organization requires. The DORA guidance suggests asking for evidence of control and not for signatures on every change. Support the measurement of lead time and change fail rate, and avoid adding process after incidents without examining causes. Agree with audit what evidence is acceptable.

### Customers and users

Customers and users benefit from frequent small improvements and fewer big disruptions. Expect to be told about changes that affect you, in plain language and in advance. If you have special needs, such as freeze periods, tell the provider early so that they can be planned for.

## Common failure modes

- **One path for every change.** Routine changes queue behind risky ones. Instead, classify by risk and give each class its own path.
- **Approval as the only control.** A signature stands in for quality. Instead, build tests, review, and rollback into the pipeline.
- **A board that reviews what it cannot assess.** Members approve changes they do not understand. Instead, send changes to people with the knowledge, and use the board for coordination.
- **Batching to avoid the queue.** Teams combine changes, making each release riskier. Instead, make the queue short enough that small changes are the easy path.
- **Adding controls after every incident.** Process grows and speed falls. Instead, look for the cause and fix it with tests, smaller changes, or faster recovery.
- **Rubber-stamp peer review.** Reviews are formal but shallow. Instead, sample reviews, share examples of good ones, and keep changes small enough to review.
- **No rollback.** Changes cannot be undone. Instead, require and rehearse a rollback for every change type.
- **Gaming the metrics.** Teams split changes or hide failures to look good. Instead, use several measures, review them together, and focus on improvement over time.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Classification and paths | All changes follow one path or none | Some teams have a fast path for simple changes | Change types with criteria and distinct paths are standard | Share of changes by path and wait times are measured and tuned | Paths are adjusted across teams based on shared evidence |
| Approval and evidence | Approval is by signature or not recorded | Some changes are peer reviewed | Peer review and automated checks are recorded for most changes | Review quality and evidence are sampled and improved | Evidence flows automatically to audit and partners |
| Recovery | Rollback is ad hoc | Some changes have rollback steps | Rollback is defined and rehearsed for each change type | Recovery time is measured and reduced | Recovery practices are shared and tested across teams and suppliers |
| Measurement and improvement | Few measures | Some teams track lead time | Lead time, frequency, fail rate, and recovery time are tracked per service | Measures drive planned improvements and are not used as targets | Teams learn from each other's measures and improve across the organization |

## Checklist

- [ ] We have defined change types with criteria and examples.
- [ ] Low-risk, well-understood changes are pre-authorized and recorded automatically.
- [ ] Peer review is recorded in the development platform for normal changes.
- [ ] Automated tests and checks run on every change.
- [ ] Each change type has a rollback that has been rehearsed.
- [ ] We have signals that flag high-risk changes for extra scrutiny.
- [ ] Any central board has a clear role in coordination and trade-offs.
- [ ] We track change lead time, deployment frequency, failed deployment recovery time, and change fail rate for each service.
- [ ] Our auditors have said what evidence they accept in place of signatures.
- [ ] We have a one-page guide to the change process with examples.

## AI prompts

**Purpose: classify last month's changes by risk and approval path.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Purpose: write a standard change procedure.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare to discuss with an auditor the evidence our pipeline produces.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Purpose: design a trial of lighter approval.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [change-request](../../../../skills/change-request/SKILL.md): use to draft change records that carry what operations and auditors need.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): use when a change is organizational and needs planning for people as well as systems.
- [release-notes](../../../../skills/release-notes/SKILL.md): use to tell users and the service desk what a change does.
- [changelog](../../../../skills/changelog/SKILL.md): use to keep a readable record of changes over time.
- [risk-register](../../../../skills/risk-register/SKILL.md): use to record and review the risks that change introduces and how they are controlled.

## Key sources

- **Streamlining change approval** (DORA, dora.dev): the research program's guidance on peer review, automation, and the role of a change board.
- **DORA's software delivery performance metrics** (dora.dev): definitions and cautions for change lead time, deployment frequency, recovery time, change fail rate, and rework rate.
- **ITIL** (Wikipedia): background on ITIL versions and the shift to ITIL 4.
- **Continuous delivery** (Wikipedia): background on practices that make small, frequent changes safe.

## References

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
