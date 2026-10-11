# Governance, Risk, and Compliance

**Governance, risk, and compliance sets the direction, limits, and evidence for an organization's work, and in an agile organization it works best as guardrails built into the way teams deliver, not as gates placed at the end.**

## Why this matters

Every organization that provides services is accountable to someone: customers, a board, a regulator, the public. That accountability takes a few familiar forms. There must be clear direction and decision rights (governance). There must be an honest view of what could go wrong and what is being done about it (risk). And there must be evidence that the organization follows the laws, contracts, and policies that apply to it (compliance).

Agile teams and governance functions often meet in a state of mutual suspicion. Teams see approval boards, long forms, and rules whose reason they cannot see. Governance and audit staff see teams that change production quickly and leave little record. Both sides have a point. The way through is not for either to win, but to design governance that is compatible with frequent change: clear limits, risk-based controls, and evidence produced by the work itself.

The [Wikipedia article on governance, risk management, and compliance](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) describes GRC as a holistic approach to governance, risk management, and regulatory compliance, developed in the 2000s to manage increasingly complex financial compliance requirements. It names no criticisms and no IT-specific frameworks. This topic combines it with the articles on risk management and regulatory compliance, with the earlier topics on change, security, and continuity, and with DORA's guidance on approval. It does not give legal advice; the rules that apply to you depend on your country, sector, and contracts, and the right source is the text of the rule.

## Core concepts

### Governance

The GRC article describes corporate governance as the processes set by the board that shape structure and assign roles. In IT, governance is about who decides what, on what basis, and how decisions are checked. COBIT, described in Wikipedia as an ISACA framework for IT management and governance, is one reference (see Topic 2.7 — ITSM Frameworks and Standards). ITIL's service value system includes governance as a component (see Topic 2.3 — The ITIL Service Value System).

Good governance in an agile organization is explicit about:

- **Direction:** goals and priorities, and who sets them.
- **Limits:** what teams may decide alone, and what needs escalation (see Topic 1.9 — Agile Management).
- **Accountability:** who answers for each service (see Topic 5.5 — Product and Service Ownership).
- **Evidence:** how the organization knows that its direction and limits are being followed.

### Risk management

Wikipedia describes risk management as the identification, evaluation, and prioritization of risks, followed by minimizing, monitoring, and controlling their impact or probability. The article names four treatment options:

| Option | Meaning | Example |
|---|---|---|
| **Avoidance** | Do not do the risky activity (which also forgoes potential gains) | Decide not to store certain data |
| **Reduction** | Lower the severity or likelihood | Automated tests, staged rollouts, extra monitoring |
| **Sharing** | Transfer the burden or benefit, such as through insurance or outsourcing; the article notes that "risk transfer" is often a misnomer, since the original party usually keeps legal responsibility | Insurance, contracting a supplier |
| **Retention** | Accept the loss, typically for small or uninsurable risks | A decision to live with a minor risk |

The article also treats opportunities, positive uncertain events, with parallel strategies. It notes that risk assessment weighs severity and probability, and that rate data are often scarce, especially for catastrophic events. It cites criticism: Douglas Hubbard (2009) is cited as saying some standards show no measurable improvement in risk, though confidence in decisions seems to rise; later research suggests financial benefits depend more on how often and by what method risks are assessed than on the formula used; and Benoit Mandelbrot's distinction between "mild" and "wild" risk, with underestimating wildness a common error. The article cites ISO 31000, "Risk management — Guidelines," and is itself flagged as needing more citations.

### The risk register

A **risk register** is a record of identified risks, with a description, an assessment, an owner, the chosen treatment, and the status. The article excerpt read for this guide does not mention it, so this is common practice. Keep it short, owned, and reviewed. Risks for services include security, availability, supplier failure, key-person dependence, and compliance (see Topic 3.13 — Information Security Management, Topic 3.12 — Service Continuity Management, and Topic 3.14 — Supplier Management).

### Compliance

The Wikipedia article on regulatory compliance describes it as the goal organizations aspire to achieve in staying aware of and following relevant laws, policies, and regulations, and notes that organizations increasingly combine controls into shared frameworks to reduce duplicated work. It says the definition of an effective compliance plan has been elusive, and mentions standards such as ISO 37301 and ISO 19600. It names regimes including the Sarbanes–Oxley Act (2002), HIPAA, GDPR, PCI-DSS, the Gramm–Leach–Bliley Act, and others. It records criticisms: psychological research cited in the article argues that rewards or fines can weaken intrinsic motivation and undermine compliance, privacy advocates question data retention requirements, enforcement differs across jurisdictions, and rapidly changing requirements are hard to track.

A practical point: compliance is not one thing. Each regime has its own scope and requirements. Find out which apply to which of your services from your legal or compliance function, and obtain the text.

### GRC as one view

The GRC article says GRC covers three related facets: corporate governance, enterprise risk management, and compliance, and mentions variants such as financial, legal, and operational GRC. It credits the term to Scott Mitchell's 2007 paper and the Open Compliance and Ethics Group, and notes that software for GRC has existed since 2002 and that some companies began using AI tools for GRC in 2025. The advantage of the combined view is that the three are linked: governance sets what matters, risk management finds what threatens it, and compliance shows what is being done.

### Guardrails, not gates

A **gate** is a checkpoint, usually manual, where work waits for approval. A **guardrail** is a limit built into the path that keeps work from going off course without stopping it. Examples: automated tests that must pass, policy checks in the pipeline that block unsafe configurations, budgets with alerts, and role-based access. DORA's guidance on change approval says approval is best achieved through peer review and automation, that heavyweight external approval is associated with worse delivery performance, and that adding approvals in response to instability tends to make things worse (see Topic 3.4 — Change Enablement). Guardrails apply the same idea across governance: the control is in the system and produces its own evidence.

### Evidence as a by-product

Auditors need evidence that controls operate. A pipeline that records who reviewed, what tested, and what was deployed gives evidence for every change. A service catalog (ITIL spells it "service catalog") with owners gives evidence of accountability. Postmortems give evidence of learning. This is much stronger than a quarterly document written for an audit. Discuss early with auditors what they will accept (see Topic 5.1 — Agile Service Management).

### Regulated environments

The Wikipedia article on agile software development reports that regulated domains such as medical devices, pharmaceuticals, finance, nuclear, automotive, and avionics were first thought unsuitable for agile, and that adaptations now exist, with concerns for quality assurance, safety and security, traceability, and verification and validation (see Topic 1.3 — Agile Software Development). The pattern that works is typically to keep the required controls, automate their evidence, and make them part of the definition of done, rather than to remove them.

### Limits of the sources

The GRC article names no frameworks or criticisms and was read for this guide in a short form. The risk management article was read only in part and is flagged as needing citations. The compliance article gives no costs and no audit procedures. Use these as maps and go to the primary sources for specifics.

## Best practices

1. **Write down decision rights.** For each team or service, say what it may decide alone, what requires consultation, and what needs approval. Publish it, and review it with the teams.
2. **Set direction and limits, not detailed instructions.** State the outcomes, budgets, risk limits, and non-negotiable rules. Let teams decide how to work within them.
3. **Keep a short risk register.** For each important service, list the top risks with an owner, a treatment, and a review date. Review it at a regular meeting, and drop risks that have gone.
4. **Choose the treatment on purpose.** For each risk, decide to avoid, reduce, share, or retain it, and record who made the decision. Remember that sharing a risk does not remove your own accountability.
5. **Assess often, with simple methods.** The article reports that benefits depend more on frequency and method than on the formula. Review risks regularly using a method the team understands.
6. **Know which rules apply to which services.** Ask your legal or compliance function for a list of the regimes that apply, with the source text. Record it against each service.
7. **Build guardrails into the pipeline.** Automate tests, security scans, policy checks, and access limits so that unsafe work is stopped early. Treat the controls as code with owners.
8. **Capture evidence as a by-product.** Make sure the tools record reviews, approvals, test results, deployments, and incidents. Agree with auditors what they will accept.
9. **Map controls once.** If you must meet several frameworks, describe your controls once and map them to each requirement, as the compliance article says organizations increasingly do.
10. **Use risk-based paths for change.** Make low-risk changes fast, flag high-risk ones for review, and keep a central body for coordination and trade-offs (see Topic 3.4 — Change Enablement).
11. **Include governance in retrospectives.** Ask periodically which controls helped and which only added delay. Remove or redesign the latter, with the owner and the auditor.
12. **Plan for change in the rules.** Name someone to follow changes in laws, standards, and contracts, and report what matters for your services.

## Questions to discuss with your team

**Which approvals do we need to get, and what does each one protect against?**

List the approvals on a typical change or purchase. For each, ask what risk it addresses and whether it has ever refused anything. Approvals that protect nothing are candidates for removal. Approvals that protect against a real risk may be met in a lighter way. The facilitator can ask what evidence the approver would accept instead of a signature.

**What are the top five risks for our main service, and who owns each?**

Ask people to list risks independently, then compare. The differences show what the team sees. Check that each has an owner and a treatment. Discuss which are being accepted by default, not by decision.

**Which rules apply to us, and where is the text?**

Ask for the list of laws, standards, and contracts that apply. If nobody can say, find out who can. Check that engineering knows what each requires of it. Agree on a way to keep the list current.

**What evidence do our tools already produce that an auditor could use?**

List the records: reviews, test results, deployment history, incident reviews. Ask what an auditor has asked for recently and whether the tools could supply it. Identify one record to automate. Invite an auditor to look.

**Where have we added a control after a problem, and did it help?**

Ask for examples. Compare with the DORA warning that adding approvals in response to instability tends to make things worse. Ask whether a different response, such as better tests or smaller changes, would have worked. Record one lesson.

**What would a guardrail look like for something we now gate?**

Pick one gate. Ask what the gate is meant to prevent and how that could be prevented automatically. For example, a policy check that blocks a risky configuration. Agree on a trial with the owner of the gate.

## In practice: an agile ITIL example

A national pension fund runs an online benefits calculator and a payments service. It is regulated, audited annually, and subject to strict rules on data handling. The fund's governance office requires every production change to be reviewed by a change board that meets weekly, and every project to complete a 30-page risk assessment before release. Developers release rarely and in large batches. A recent release caused an incorrect calculation for a small group of members, and the board's response was to add another approval.

The head of risk and the head of engineering decide to try another way. They start with a list of the regimes that apply to the calculator and the payments service, obtained from the fund's legal team with the text of each, and map the fund's controls to them once. The change board's role changes: routine, well-tested changes with automated tests and peer review proceed without it, high-risk changes (those touching calculation rules or payments) are flagged by a short list of signals and reviewed by a risk specialist within two days, and the board meets to coordinate and handle exceptions. The pipeline records who reviewed and what tests passed, and a policy check blocks releases that fail the calculation test suite. The risk assessment is replaced by a one-page register entry per service, reviewed monthly.

An internal auditor sees the pipeline records and the register, and asks for a sample of reviews to test whether peer review is genuine; the head of engineering arranges a quarterly sampling by a senior engineer. After six months, releases are weekly, change fail rate is lower, and the audit finds the evidence sufficient. Some difficulties remain. Two teams apply the high-risk signals inconsistently, one regulator's guidance requires an explicit sign-off for certain calculation changes that the new path does not capture, and the register entries are written with little care in some teams. The head of risk adds the sign-off step for those changes, issues examples of the signals, and asks the teams to bring one register entry to a monthly review.

## Four perspectives

### Product and delivery teams

Delivery teams carry out controls through their pipelines and practices. Learn which rules apply to your service and why, offer ways to produce evidence automatically, and bring risk into planning. Treat guardrails as part of the product.

### Service and operations teams

Operations teams own many controls: access, monitoring, continuity, and records. Keep evidence in tools, tell governance what works in practice, and help redesign gates that only add delay. Take part in risk reviews with real incident data.

### Leadership and governance

Leaders set direction, limits, and accountability, and decide what risks to accept. Ask for plain-language risk views and for evidence, not volume of documents. Be willing to replace a gate with a guardrail when the purpose can be met. Keep the board's role focused on coordination and real trade-offs.

### Customers and users

Customers and users rely on the organization to handle their data and money properly. Ask providers which standards and rules they follow and how they show it. Expect honest information after a failure. If you have special requirements, such as a regulator's rule, tell the provider early.

## Common failure modes

- **Governance as a final gate.** Reviews arrive at the end and slow everything. Instead, build guardrails into the work and review by risk.
- **Documents as evidence.** Reports are written for the auditor. Instead, produce evidence from the tools used in the work.
- **One path for all change.** Routine changes wait with risky ones. Instead, classify by risk.
- **A risk register nobody reads.** It becomes a long list. Instead, keep it short, owned, and reviewed.
- **Treating risk transfer as risk removal.** Insurance or outsourcing is assumed to end accountability. Instead, remember that the original party usually keeps responsibility.
- **Unknown rules.** Teams do not know which laws and standards apply. Instead, get the list and the text from legal or compliance.
- **Control added after every incident.** Process grows and speed falls. Instead, look for the cause and fix it with tests, smaller changes, or faster recovery.
- **Compliance as punishment.** Fines and fear dominate. Instead, explain the purpose of rules and make the safe path the easy one.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Governance and decision rights | Decisions follow habit and hierarchy | Some teams have written limits | Decision rights, limits, and owners are written and shared | Governance effectiveness is reviewed against outcomes | Governance is aligned across teams, suppliers, and partners |
| Risk management | Risks are discussed informally | Some services have risk lists | Short owned risk registers with treatments are reviewed regularly | Risk measures and events inform assessment and treatment | Risk views are shared and consolidated across the organization |
| Compliance and evidence | Evidence is assembled for audits | Some evidence is produced by tools | Applicable rules are listed; controls are mapped once; evidence comes from tools | Control operation and evidence quality are measured | Evidence is shared with auditors and partners continuously |
| Guardrails and change paths | Controls are manual gates | Some automated checks exist | Risk-based paths and pipeline guardrails are standard | Guardrail effectiveness and false blocks are tracked and tuned | Guardrails are shared and improved across teams |

## Checklist

- [ ] Decision rights and limits are written for each team or service.
- [ ] Each important service has a short risk register with owners, treatments, and review dates.
- [ ] We have a list of the laws, standards, and contracts that apply to each service, with source text.
- [ ] Our controls are described once and mapped to each requirement.
- [ ] The pipeline records reviews, tests, and deployments as evidence.
- [ ] Auditors have said what evidence they accept in place of signatures.
- [ ] Routine and risky changes follow different paths with clear criteria.
- [ ] Each approval has a stated purpose, and approvals that never refuse are reviewed.
- [ ] Controls added after incidents are reviewed for their effect.
- [ ] Someone follows changes in applicable rules and reports them.

## AI prompts

**Purpose: turn an approval chain into guardrail options.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: draft a risk register entry.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: list the evidence your tools already produce for a control.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare a governance conversation between delivery teams and audit.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [risk-register](../../../../skills/risk-register/SKILL.md): use to record and review risks, treatments, and owners.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): use to keep a lightweight log of risks, actions, issues, and decisions.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use to choose early-warning measures for risks.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use to prepare for audits and to organize evidence.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make decision rights and accountabilities explicit.

## Key sources

- **Governance, risk management, and compliance** (Wikipedia): a short overview of GRC, its components, and its history.
- **Risk management** (Wikipedia): the definition, treatment options, and caveats about risk assessment.
- **Regulatory compliance** (Wikipedia): the definition, named regimes, and criticisms.
- **Streamlining change approval** (DORA, dora.dev): research-based guidance on replacing heavyweight approval with peer review and automation.

## References

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
