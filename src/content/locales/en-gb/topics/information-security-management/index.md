# Information Security Management

**Information security management protects the confidentiality, integrity, and availability of information through risk-based controls, and in an agile organisation the controls work best when they are built into the delivery pipeline and the daily habits of teams instead of added as a gate at the end.**

## Why this matters

Every service holds information that someone cares about: customers' details, payment records, health data, internal plans. A security failure harms the people the information describes, damages the organisation's reputation, and can bring legal and financial penalties. Service management teams are often the ones who see the failure first, as an incident, and the ones who must restore normal operation afterward.

Security and continuous delivery are often cast as opposites: security says slow down, delivery says speed up. That view is unhelpful. Security that arrives only at the end of a release produces late surprises and rushed exceptions. Security built into the work, with checks that run automatically and risks discussed early, protects the service without stalling it. The same is true of service management: the practices that make change safe also make security changes safe.

This topic uses the [Wikipedia article on information security](https://en.wikipedia.org/wiki/Information_security) and the [article on ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) as its main sources. Both are general. The first is a long article, and this guide read only the first 100,000 of its roughly 243,000 characters. This topic does not give legal advice; laws, regulations, and contractual obligations differ by country and sector, and the right source is the text of the rule that applies to you.

## Core concepts

### What information security is

Wikipedia defines information security as protecting information by mitigating information risks, aiming to prevent or reduce unauthorized access, use, disclosure, disruption, deletion, corruption, modification, or devaluation of information, and to reduce the impact of incidents. It applies to electronic, physical, and intangible information, and it is part of information risk management.

### The CIA triad

The core goals are **confidentiality**, **integrity**, and **availability**, balanced against policy efficiency and organisational productivity. The article describes them this way:

| Goal | Meaning | Example in a service |
|---|---|---|
| **Confidentiality** | Information is protected from unauthorized disclosure | Only authorised staff can see patient records |
| **Integrity** | Information is accurate and complete and cannot be changed in an unauthorized or undetected way | A payment amount cannot be altered without a trace |
| **Availability** | Information is accessible when needed | The service stays up and resists denial-of-service attacks |

The article notes that confidentiality differs from privacy, which it calls a broader concept. It also notes that organisations may add goals such as authenticity, accountability, non-repudiation, and reliability, and that the Parkerian Hexad, an extended model, has debated merits. Availability links directly to service management (see Topic 3.11 — Availability, Capacity, and Performance).

### Risk management

The article describes risk as the likelihood of harm to an information asset. **Vulnerabilities** are weaknesses, **threats** are potential causes of harm, and **impact** is the resulting loss. Risk management is an ongoing, iterative process in which management may accept, mitigate, transfer (for example through insurance), or avoid a risk. What is left is called **residual risk**. The article lists six steps: identify assets, assess threats, assess vulnerabilities, calculate impact, select and implement controls, and evaluate those controls.

### Controls and defence in depth

Controls protect confidentiality, integrity, or availability. The article describes **defence in depth**, the layering of overlapping controls, with control types described as administrative (policies, procedures), logical (technical measures such as access control and encryption), and physical (locks, facilities). No single control is enough; layers cover each other's failures.

### Security incidents

The article describes computer security incident management as monitoring, detecting, and responding to security events, with incident response plans activated when breaches are detected, typically carried out by an incident response team. Security incidents are a kind of incident and benefit from the same roles, communication, and blameless learning (see Topic 3.2 — Incident Management), plus specific steps such as preserving evidence and notifying regulators or affected people where required.

### ISO/IEC 27001 and 27002

According to Wikipedia, **ISO/IEC 27001** sets out requirements for establishing, implementing, maintaining, and continually improving an information security management system (ISMS), including assessing and treating information security risks. Its requirements are generic and meant for organisations of any type, size, or nature. The first edition came out in October 2005 from the British standard BS 7799-2, the second in 2013, and the third in October 2022, aligned with ISO/IEC 27002:2022; an amendment in February 2024 added a climate-change consideration.

Key facts from the article:

- The ISMS requirements are in clauses 4 to 10: context, leadership, planning, support, operation, performance evaluation, and improvement.
- The 2022 edition's Annex A has 93 reference controls in four themes: organisational, people, physical, and technological. The 2013 edition listed 114. Annex A is a reference set and not a mandatory checklist: organisations produce a **Statement of Applicability** that justifies which controls they include and exclude.
- Certification is optional unless a law, contract, or scheme requires it. ISO does not certify organisations; independent certification bodies do, in stages, followed by surveillance audits and recertification on a three-year cycle. A certificate applies only within its stated scope.
- **ISO/IEC 27002** provides guidance on the Annex A controls. It is guidance and cannot be certified against.

The article notes that a 2021 literature review found few empirical studies of certification outcomes. A certificate shows a management system exists; it is not proof that a specific breach cannot happen.

### Other frameworks and laws

The information security article names many other standards and schemes, such as the NIST Cybersecurity Framework, Cyber Essentials in the UK, the Essential Eight in Australia, and the payment card industry standard. It also lists laws, including the UK's Computer Misuse Act (1990) and Data Protection Act (1998) and the United States' HIPAA (1996), Gramm–Leach–Bliley Act (1999), and Sarbanes–Oxley Act (2002). The list shows how varied the rules are. Which apply to you depends on where you operate, the sector, and the data you hold; ask your legal or compliance function (see Topic 5.7 — Governance, Risk, and Compliance).

### Security in the delivery pipeline

Practices that fit continuous delivery include:

- **Threat discussion early:** ask in planning what could go wrong with a feature and who would want to misuse it.
- **Automated checks:** scanning code, dependencies, and configuration on every change, with results visible to the team (see Topic 3.4 — Change Enablement).
- **Least privilege:** giving people and systems only the access they need.
- **Secrets management:** keeping credentials out of code and rotating them.
- **Security testing:** penetration tests and automated tests as part of the cycle (see the security testing skill below).
- **Logging and monitoring:** detecting suspicious activity (see Topic 3.10 — Monitoring and Event Management).

DORA's guidance, cited elsewhere in this guide, lists pervasive security among the practices that support continuous delivery (see Topic 3.5 — Release and Deployment Management).

### Culture and people

The information security article mentions research on security culture, including seven culture dimensions identified by Roer and Petric (2017). Whatever the model, the point is that many breaches begin with people: a phishing message, a mistake, a shortcut under pressure. Training, clear reporting routes, and a blameless attitude toward honest mistakes improve security more than blame does.

### Limits of the sources

The Wikipedia article states no specific criticisms of the CIA triad and was read only in part. The ISO/IEC 27001 article does not discuss the relationship to ISO/IEC 20000 or to the plan-do-check-act cycle. This topic does not give technical instructions; use specialist guidance for your platforms, and the text of the standards if you need to claim conformance.

## Best practices

1. **Know what information you hold and where.** Make a list of the main types of information, who owns each, where it is stored, and how sensitive it is. You cannot protect what you have not identified.
2. **Do risk assessments in plain language.** For each important service, ask what could go wrong with confidentiality, integrity, and availability, how likely, and how bad. Record decisions to accept, reduce, transfer, or avoid each risk (see Topic 5.7 — Governance, Risk, and Compliance).
3. **Layer your controls.** Combine policies, technical controls, and physical controls so that one failure is not enough. Review which layers protect your most sensitive information.
4. **Build checks into the pipeline.** Run automated security checks on code, dependencies, and configuration with every change, and make failing checks visible. Fix issues at the point of change.
5. **Give least privilege by default.** Grant access by role and need, review it regularly, and remove it promptly when people leave or change roles (see Topic 3.6 — Service Request Management).
6. **Manage secrets properly.** Keep credentials out of source code, store them in a managed vault, and rotate them. Test that you can rotate them quickly after an incident.
7. **Treat security incidents as incidents.** Use the same roles, communication, and review as for other incidents, and add steps for evidence, containment, and notification. Practice the plan.
8. **Know your notification duties.** Find out, from your legal or compliance function, which laws or contracts require you to notify authorities or affected people after a breach, and how fast. Write it into the incident plan, quoting the source text.
9. **Include suppliers.** Ask critical suppliers how they protect your information, and put expectations in contracts (see Topic 3.14 — Supplier Management).
10. **Train and talk.** Provide short, regular training based on real examples, and make it easy to report a mistake or a suspicious message without blame.
11. **Use standards as a source of structure.** If you adopt ISO/IEC 27001, treat Annex A as a reference set, write a justified Statement of Applicability, and keep the ISMS lightweight. Certification is optional unless required.
12. **Learn from near misses.** Review near misses and low-severity events for patterns, and feed them into the backlog and the risk register.

## Questions to discuss with your team

**What information do we hold that would hurt people if it leaked, and where is it?**

Ask each person to name the most sensitive data they handle and where it lives. Compare. Surprises are common: copies in test environments, exports in shared folders, logs containing personal data. The facilitator can ask which copy is least protected. Pick one to reduce or protect better.

**When did we last make a decision to accept a security risk, and who made it?**

Ask for an example. Accepted risks are often made silently, by delay. Discuss who should decide, what information they need, and where it is recorded. The article's list of ways to handle risk (accept, mitigate, transfer, avoid) is a useful frame. Agree on a simple place to record the next decision.

**What security checks run automatically on every change, and what do we ignore?**

List the checks in the pipeline and the results. Ask which findings are routinely ignored and why. Ignored findings usually mean noise, lack of ownership, or lack of time. Decide which to fix, which to suppress with a reason, and who owns the list.

**Who has access to what, and when did we last review it?**

Pick a sensitive system and list who can reach it. Compare with who needs it. Often access has accumulated. Ask how quickly access is removed when someone leaves. Agree on a review date and an owner.

**What would we do in the first hour of a suspected breach?**

Walk through the steps: who is told, what is preserved, what is shut off, who talks to whom. Gaps usually appear around authority and evidence. Ask where the plan is and when it was last used. Schedule a tabletop exercise.

**What rules about security or privacy apply to us, and how do we know?**

Ask who is responsible for knowing. If the answer is "legal" or "nobody," ask how engineering learns of the requirements. Rules differ by country and sector, so list the places you operate. Agree to ask the legal or compliance function for a short list, with the source text.

## In practice: an agile ITIL example

A university's research computing service holds datasets from medical studies and gives researchers access to analysis servers. A team of eight runs it. After an incident in which a researcher copied an unprotected dataset to a personal cloud folder, the university's security officer demands that every change and every access request go through a three-week security review. Researchers object that this will make the service unusable.

The service manager proposes a different approach and meets the security officer and two researchers. They list the information held, grouping datasets as public, internal, and sensitive. For sensitive data, they agree on stricter controls: access by named role and project, no copies outside the service, and logging of data export. For other data, lighter rules apply. The team adds automated checks for misconfigured storage and for secrets in code to the delivery pipeline, and the security officer reviews the results weekly instead of reviewing each change. Access requests for sensitive datasets follow a request model with approval by the project's data steward and an expiry date. A short training session based on the earlier incident is run for researchers.

Six months later, no further copies outside the service have been found, and access reviews take an afternoon each quarter. Some difficulties remain. A group of researchers uses a tool that exports data in a way the logging does not capture, and the automated checks produce false alarms that the team has begun to ignore. They agree with the security officer to add the tool to the logging scope, to tune the checks, and to review alerts monthly. They also ask the legal team for a written statement of the notification duties that apply to the sensitive datasets, so that the incident plan can quote the source.

## Four perspectives

### Product and delivery teams

Delivery teams make security real in code and configuration. Discuss threats early, keep secrets out of code, respond to automated findings, and avoid sharing sensitive data in tests. Tell security and operations about changes that alter exposure.

### Service and operations teams

Operations teams run the controls: access, monitoring, patching, and backups. Treat security events as incidents, preserve evidence, and take part in exercises. Feed incident patterns back to delivery and to the risk register.

### Leadership and governance

Leaders own risk decisions and the culture around them. Ask for plain-language risk summaries, support time for training and exercises, and make sure that someone is accountable for each decision to accept a risk. Do not demand certification as a label without a reason.

### Customers and users

Customers and users trust the service with their information. Use strong authentication where offered, report suspicious messages, and ask providers how they protect your data and how they would tell you about a breach. Expect honesty and speed if something goes wrong.

## Common failure modes

- **Security as a final gate.** Reviews arrive at the end and delay releases. Instead, discuss threats early and automate checks in the pipeline.
- **Compliance as the goal.** A certificate hides weak practice. Instead, use standards for structure and measure real protection.
- **Untracked data.** Copies spread to test systems and personal storage. Instead, know where sensitive data lives and limit copies.
- **Excess access.** Rights accumulate and are never removed. Instead, review access regularly and expire it.
- **Secrets in code.** Credentials are stored in repositories. Instead, use a vault and rotate secrets.
- **No tested incident plan.** The first use is a real breach. Instead, practice the plan and write down notification duties.
- **Blame for mistakes.** People hide errors. Instead, make reporting easy and respond with learning.
- **Ignoring suppliers.** Third parties hold data without clear protections. Instead, ask, contract, and review.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Information and risk | Sensitive data is not listed; risks are implicit | Some services record data types and risks | Data and risks are recorded per service with owners and decisions | Risks are reviewed against incidents and metrics | Risk views are shared with customers and suppliers and aligned |
| Controls in delivery | Security review happens at the end, if at all | Some teams run security scans | Security checks are automated in a common pipeline, with owners for findings | Findings, fixes, and escapes are measured and reviewed | Controls are improved across teams from shared evidence |
| Access and secrets | Access is granted ad hoc; secrets in code | Some reviews and vaults exist | Role-based access with expiry and managed secrets are standard | Access reviews and rotation are measured | Access and secrets practices are coordinated with partners |
| Incident response and culture | Security incidents are improvised | Some plans exist | Security incidents follow the incident process with defined extra steps and are practiced | Detection and response times are measured and learning is shared | Response is coordinated with suppliers, customers, and authorities |

## Checklist

- [ ] We have listed the main types of information, their owners, locations, and sensitivity.
- [ ] Risks to confidentiality, integrity, and availability are assessed for important services, and decisions are recorded.
- [ ] Automated security checks run on every change, and findings have owners.
- [ ] Access is by role and need, reviewed regularly, and removed when no longer needed.
- [ ] Secrets are stored in a managed vault and can be rotated quickly.
- [ ] A security incident plan exists, has been practiced, and includes notification duties with source text.
- [ ] Suppliers that hold our information have been asked about their protections.
- [ ] Staff receive short, regular training and can report mistakes without blame.
- [ ] If we use ISO/IEC 27001, we have a justified Statement of Applicability and a lightweight ISMS.
- [ ] Near misses are reviewed for patterns.

## AI prompts

**Purpose: inventory your information and rank it by sensitivity.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: run a short threat discussion for a new feature.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: review automated security findings for noise and priority.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Purpose: prepare a security incident exercise.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [security-testing](../../../../skills/security-testing/SKILL.md): use to plan security tests as part of the delivery cycle.
- [risk-register](../../../../skills/risk-register/SKILL.md): use to record security risks, decisions, and owners.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use to choose early-warning measures for security risks.
- [data-governance](../../../../skills/data-governance/SKILL.md): use to define who owns data and how it may be used and shared.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): use to prepare questions for legal or compliance staff about privacy duties.

## Key sources

- **Information security** (Wikipedia): the CIA triad, risk management, controls, and incident response, with a long list of related standards and laws.
- **ISO/IEC 27001** (Wikipedia, and the standard itself from ISO): the requirements for an information security management system, with Annex A controls and the certification process.
- **Computer security incident management** (Wikipedia): background on responding to security events.
- **Defence in depth** (Wikipedia): background on layered controls.

## References

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defence in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
