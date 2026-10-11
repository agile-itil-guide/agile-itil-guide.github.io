# Service Continuity Management

**Service continuity management prepares an organization to keep its most important services running, or bring them back quickly, after a serious disruption, and its value is proved only by exercises, not by the plan on the shelf.**

## Why this matters

Most incidents are small and local. A few are not: a data center fire, a failed cloud region, a ransomware attack, a supplier collapse, a pandemic, a flood. These events threaten the ability of the organization to deliver at all, and handling them takes planning that ordinary incident management does not cover. A team that has thought through, in advance, what matters most and how it will carry on has a much better chance of getting through.

Agile teams meet this subject with a particular challenge. Their systems change weekly, so a continuity plan written once and filed is out of date within months. Recovery steps that depended on a particular server or script may no longer be valid. The agile answer is not to give up on planning but to make continuity a living part of how services are built and run: recovery designed in, tested often, and kept in version control with the code.

The [Wikipedia article on business continuity planning](https://en.wikipedia.org/wiki/Business_continuity_planning) defines business continuity as the capability of an organization to continue delivering products or services at acceptable levels after a disruption, and treats continuity planning as a subset of risk management. The English Wikipedia's "Disaster recovery" page is only a disambiguation page, with a notice that a full article is wanted, so this topic uses the business continuity article for definitions and adds practical guidance from the guide's other topics, noting where it is practice and not reported source material.

## Core concepts

### Continuity, recovery, and resilience

Terms are used loosely, so use them carefully:

| Term | Meaning, as widely used | Focus |
|---|---|---|
| **Business continuity** | The capability to continue delivering products or services at acceptable levels after a disruption | Keeping the organization going |
| **Business continuity planning** | Creating systems of prevention and recovery for threats to the organization | The plans and arrangements |
| **IT disaster recovery** | Maintaining or reestablishing vital information technology infrastructure (the description given on the Wikipedia disambiguation page) | The technology |
| **Service continuity (ITSM)** | Making sure IT services can be restored to agreed levels after a disruption | IT services within the larger plan |

The Wikipedia article says disaster recovery overlaps with business continuity planning, particularly in the solution phase, and that continuity is the intended outcome of carrying out both. Service continuity management is the IT service view of the same aim.

### Business impact analysis

A **business impact analysis (BIA)** is, according to the article, a method of identifying and evaluating how disruptions affect operations and of setting recovery priorities. Its objectives include identifying critical activities and dependencies, assessing financial, operational, reputational, and legal impacts, determining recovery objectives, and informing risk assessment. For IT services, the BIA asks which services the organization cannot do without, in what order they must come back, and what each depends on (see Topic 4.4 — Configuration Management for dependencies).

### Recovery objectives

The article defines two key terms:

- **Recovery time objective (RTO):** the acceptable time to restore a function.
- **Recovery point objective (RPO):** the acceptable amount of data latency, in other words how much data loss is tolerable.

It also lists the maximum tolerable period of disruption. The article gives no method for choosing these values for a particular organization, so they must come from the business: ask what an hour, a day, and a week of outage cost, and what data the business can afford to lose. Setting them is a business decision with a price, as the cost of meeting a tighter objective rises (see Topic 3.11 — Availability, Capacity, and Performance).

### Plans

A continuity or recovery plan describes who does what, in what order, to restore critical services after a disruption. It should cover: how the plan is invoked and by whom, how people are informed and gathered, the sequence of recovery for services, where recovery will happen, where data comes from, how to communicate with customers and staff, and how to return to normal. Plans for IT services should link to runbooks for the individual systems (see Topic 3.9 — Knowledge Management).

### Testing and exercises

The article cites a 2008 British Standards Institution book describing three types of exercise: a **tabletop** exercise where a small group discusses one aspect of the plan, a **medium** exercise where several teams work on multiple aspects with scripted surprises, and a **complex** exercise that adds no-notice activation, actual evacuation, and use of a disaster recovery site. It describes maintenance on an annual or biannual cycle, including testing technical solutions and recovery procedures, with findings returning to the analysis phase. Exercises are where plans find out they are wrong.

### Recovery tiers

The article mentions SHARE's seven disaster recovery tiers (1992), later updated by IBM to eight tiers (0 to 7). The sources read here do not detail the tiers. As a general practice, organizations classify services into tiers by how quickly they must be restored, and match the recovery approach and cost to the tier.

### Standards

The article cites ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, which replaced the 2012 edition and requires organizations to define continuity objectives, minimum acceptable service levels, and a maximum tolerable period of disruption. ISO 22313:2020 gives guidance on using it. These are standards for a management system that an organization can adopt; they do not replace practical planning. Check the standard text directly if your customers or regulators require conformance.

### Agile continuity

Agile and DevOps practices help continuity:

- **Infrastructure and configuration as code** allow environments to be rebuilt from version control, which makes recovery faster and testable.
- **Automated pipelines** can redeploy services to a recovery site.
- **Frequent releases** keep the team practiced at deploying.
- **Regular exercises** can be treated as a form of testing in the backlog.

They also create risks: heavy dependence on a single cloud account, a CI system that is itself a single point of failure, and secrets stored where they cannot be reached in a disaster. Plan for the tools that recovery itself depends on.

### Human factors

The article mentions the 2002–2003 SARS outbreak as an example of compartmentalized and rotated teams, which is a reminder that continuity includes people: key skills spread across individuals, remote working, communication when normal channels fail, and care for staff under stress.

### Limits of the sources

The article gives no method for setting objectives, no guidance on how often to test beyond the annual or biannual maintenance cycle, and no tool recommendations. It is a general business article, not an IT one. For technical recovery detail, use the documentation of your own platforms and the guide's skills on disaster recovery planning and testing.

## Best practices

1. **Start with a business impact analysis.** Identify the services the organization cannot do without, the cost of their loss over time, and what they depend on. Do it with business owners, not for them.
2. **Set recovery objectives with the business.** For each critical service, agree a recovery time and a recovery point, and record the cost of meeting them. Revisit when the business or the technology changes.
3. **Tier your services.** Group services by how quickly they must return, and apply the recovery approach that matches each tier. Do not apply the most expensive approach to everything.
4. **Write a short plan that people can use.** State how to invoke the plan, who decides, who does what, how to communicate, and the order of recovery. Keep it to a few pages with links to runbooks.
5. **Keep plans with the code and the environment.** Store recovery scripts, configuration, and runbooks in version control and review them when services change. A plan not updated with the system will fail.
6. **Plan for the tools recovery depends on.** Make sure access to the pipeline, the secrets, the documentation, and the communication tools survives the loss of the systems they support.
7. **Exercise regularly.** Start with tabletop discussions, move to technical tests of restores and failovers, and run larger exercises for the most critical services. Schedule them like other work.
8. **Test restores, not only backups.** A backup is proved by restoring from it. Test that data comes back, within the recovery point, and that the service works with it (see the disaster recovery testing skill below).
9. **Treat findings as backlog items.** Each exercise produces gaps. Record them with owners and dates, and check that they are done before the next exercise.
10. **Plan communication.** Decide who tells customers, staff, regulators, and the public what, and prepare templates. Include out-of-band ways to reach people if normal channels are down (see the crisis communication skill below).
11. **Include suppliers.** Ask critical suppliers about their own continuity arrangements and include them in exercises where you can (see Topic 3.14 — Supplier Management).
12. **Review annually, and after any serious incident or major change.** Update the analysis, the objectives, and the plans when the business or technology changes, not only on a calendar.

## Questions to discuss with your team

**Which of our services must come back first, and how do we know?**

Ask each person to rank the services in order of recovery priority. Compare. Disagreement is informative: it shows that the order has never been agreed with the business. The facilitator can ask what it would cost the organization for each to be down for an hour, a day, and a week. Take the question to business owners and agree a list.

**How much data could we lose, and has anyone agreed to that?**

Ask when the last backup of the key data was taken and how often. Compare with what the business would tolerate. Many teams find the answer is not what they assumed. Discuss what a tighter recovery point would cost. Record the decision and who made it.

**When did we last restore from a backup, and what happened?**

Ask for a real date and a real result. If the answer is "never," that is the most important finding. If it was done, ask what went wrong and what was fixed. Plan a restore test for a critical service in the next month.

**What do we need to recover that depends on the thing that has failed?**

Walk through a scenario such as the loss of a cloud account or a data center. Ask where the runbooks, secrets, and pipeline live. Dependencies on the failed system are common, such as a runbook stored on a server that is down. List them and plan to move or copy each.

**Who has the authority to declare a disaster and start the plan?**

Ask people who would decide, and whether they know. Delay in invoking a plan costs time. Discuss a clear rule and a deputy. Check how the person will be reached if usual channels are down.

**What would we do if the people who know the most were not available?**

Imagine key staff unreachable. Ask who else could carry out the recovery and what they would need. This question links continuity to knowledge management. Plan one way to spread critical knowledge.

## In practice: an agile ITIL example

A provincial government's land registry runs an online service where lawyers and surveyors file property transactions. A team of twelve builds and runs it, using a single cloud provider region. A business continuity review finds that the service is classed as critical by the ministry, with an expectation that it can be restored within four hours, and that nobody has ever tested whether this is possible.

The team starts with a tabletop exercise. The scenario: the cloud region is unavailable for a day. They discover that the runbooks are stored in a wiki hosted in the same region, that the infrastructure code covers only part of the environment, and that the database backups are copied to the same region. The ministry's four-hour expectation turns out to have been written by a manager years ago and never costed. The team and the ministry's business owner meet. The owner explains what an outage of a day would mean for filing deadlines, and agrees that four hours is needed for filing days at month end but eight hours is acceptable at other times.

The team copies runbooks and backups to a second region, completes the infrastructure code, and rebuilds the environment from code in a test region in a day-long exercise. The first attempt takes eleven hours, mostly because of manual steps and a missing secret. After fixes, a second attempt takes five. Some problems remain. The month-end target of four hours is still out of reach, the identity provider that staff use to sign in has no recovery arrangement of its own, and the team realizes it depends on a supplier whose continuity plan it has never seen. The team puts the identity provider and the supplier question on the backlog, and the ministry agrees to a longer recovery time for non-peak periods while the work continues.

## Four perspectives

### Product and delivery teams

Delivery teams make recovery possible or impossible through design. Build services so they can be rebuilt from code, keep data replicated, and write recovery steps as part of done. Take part in exercises and fix the gaps they find.

### Service and operations teams

Operations teams hold the plans and run the exercises. Keep plans short and tied to runbooks, test restores and failovers, and make the dependencies of recovery visible. Track the findings of every exercise until they are closed.

### Leadership and governance

Leaders set the objectives and pay for them. Ask for the business impact analysis and the recovery objectives, understand what they cost, and attend an exercise. Accept that some services will take longer to recover, and make the decision on purpose.

### Customers and users

Customers and users depend on the service continuing or returning. Tell the provider how long you can be without it and what data you cannot lose. Ask about their continuity arrangements and what you should do in a disaster, such as an alternative way to submit urgent work.

## Common failure modes

- **A plan nobody has tested.** The first test is the disaster. Instead, start with tabletop exercises and progress to technical restores.
- **Objectives nobody agreed.** The recovery time was written by someone who left. Instead, set recovery time and point with business owners and record the cost.
- **Backups never restored.** Backups exist, but restore fails. Instead, test restores on a schedule and measure the time.
- **Recovery depends on what failed.** Runbooks, secrets, and tools sit in the failed system. Instead, map the dependencies of recovery and keep copies elsewhere.
- **One tier for everything.** All services get the most expensive treatment, or none do. Instead, tier services by need.
- **Plans out of date.** Systems change and plans do not. Instead, keep plans with the code and review them when services change.
- **Ignoring people.** Plans assume the usual staff are available. Instead, plan for absence and for communication when channels are down.
- **Ignoring suppliers.** Critical dependencies have no continuity arrangements. Instead, ask suppliers and include them in exercises.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Impact analysis and objectives | Critical services are assumed | Some services have rough recovery goals | Critical services have agreed recovery time and point, with costs | Objectives are reviewed against exercise results and business change | Objectives are aligned with customers, suppliers, and regulators |
| Plans and recovery design | Recovery is improvised | Some services have recovery notes | Plans and recovery code exist for critical services and are kept with the system | Plan currency and recovery time are measured and improved | Recovery is coordinated across services, teams, and suppliers |
| Exercises and testing | Little or no testing | Some restores are tested | Tabletop and technical tests happen on a schedule | Findings are tracked to closure and tests are tuned to risk | Exercises include suppliers and span organizations |
| Communication and people | Communication is ad hoc | Some contact lists exist | Plans cover who tells whom, with out-of-band routes and deputies | Communication and staffing gaps are measured and closed | Communication is rehearsed with customers, suppliers, and regulators |

## Checklist

- [ ] We have identified our critical services with business owners.
- [ ] Each critical service has an agreed recovery time and recovery point, with the cost known.
- [ ] Services are grouped into tiers that match their recovery needs.
- [ ] A short recovery plan exists, with who can invoke it and how to reach them.
- [ ] Recovery code, configuration, and runbooks are in version control and reviewed with changes.
- [ ] Runbooks, secrets, and tools needed for recovery survive the loss of the primary environment.
- [ ] A restore from backup has been tested for each critical service in the last year.
- [ ] A tabletop exercise has been held in the last year, and findings are tracked.
- [ ] Communication templates and out-of-band routes exist.
- [ ] Critical suppliers have been asked about their own continuity arrangements.

## AI prompts

**Purpose: draft the questions for a business impact analysis.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a tabletop exercise.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: turn exercise notes into a gap list.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Purpose: write a short recovery plan outline for one service.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): use to write the organization-level plan for keeping critical functions going.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): use to plan technical recovery of IT services.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): use to design restore and failover tests.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): use to plan what you tell customers, staff, and the public during a disruption.
- [risk-register](../../../../skills/risk-register/SKILL.md): use to record continuity risks and how they are managed.

## Key sources

- **Business continuity planning** (Wikipedia): definitions of continuity, business impact analysis, recovery objectives, exercises, and standards.
- **ISO 22301** (International Organization for Standardization): the requirements standard for business continuity management systems; read the standard for conformance claims.
- **Incident management** (Wikipedia): the multi-field overview that places continuity next to incident response.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): the economics of reliability that frame recovery objectives.

## References

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
