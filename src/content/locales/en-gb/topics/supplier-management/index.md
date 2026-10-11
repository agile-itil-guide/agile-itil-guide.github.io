# Supplier Management

**Supplier management makes sure the outside parties a service depends on are chosen with care, held to clear expectations, and treated as part of the service, because a promise to your customers is only as strong as the promises behind it.**

## Why this matters

Almost no modern service is built and run by one team alone. It depends on cloud platforms, software vendors, payment processors, network carriers, contractors, and specialist partners. When one of them fails, the customer does not distinguish between your failure and theirs. Their outage is yours, and so is the work of explaining it.

Agile teams make use of suppliers easily: a credit card, a few lines of configuration, and a new capability is running. That speed is valuable, and it creates a gap. Nobody may have asked what happens if the supplier's service degrades, changes its terms, or closes. Nobody may know who owns the relationship. Supplier management is the practice of closing that gap in proportion to the risk, without turning every purchase into a project.

The [Wikipedia article on supplier relationship management](https://en.wikipedia.org/wiki/Supplier_relationship_management) describes the systematic, enterprise-wide assessment of suppliers' strengths, performance, and capabilities, aligned with business strategy, and notes that its sourcing is thin and dated, with several references from 2009 to 2012. The [article on service integration and management](https://en.wikipedia.org/wiki/Service_integration_and_management) describes an approach for organisations that use several suppliers. This topic combines them with the guide's other topics and with practice common in service management, and says when it is doing the last.

## Core concepts

### Supplier relationship management

According to Wikipedia, supplier relationship management (SRM) coordinates interactions with suppliers across the relationship life cycle, with the aim of building two-way partnerships with strategic suppliers, in a way analogous to customer relationship management. The article makes several points useful for service teams:

- **Segment suppliers.** Suppliers are segmented by total potential value across several dimensions, not just spend, and by the degree of risk affecting that value. The article criticizes a "one size fits all" approach.
- **Measure performance both ways.** Organisations use joint, two-way balanced scorecards with quantitative and qualitative measures, and some use 360-degree scorecards that also survey suppliers.
- **Collaborate.** Joint activities include supplier summits, executive meetings, joint business planning, operational reviews, and joint demand forecasting. The article claims that joint forecasting and process re-engineering have unlocked savings of 10 to 30 percent for leading organisations, but the article has maintenance tags for weak wording and missing citations, so treat the figure as a claim, not a finding.

### Why segmentation matters

You cannot manage every supplier closely. A useful segmentation asks two questions: how much does the service depend on this supplier, and how hard would it be to replace them? A rough grid follows.

| Dependence and replaceability | Examples | Approach |
|---|---|---|
| **Critical and hard to replace** | The cloud platform, the payment processor | Close relationship: named owner, regular reviews, joint planning, exit and continuity plans |
| **Important but replaceable** | A monitoring tool, a messaging service | Regular review, clear service levels, and a plan to switch if needed |
| **Routine and easy to replace** | Office supplies, a minor library | Light contract and periodic check |

The grid is this guide's illustration, not from a source.

### Supplier performance and the service you promise

Your service levels depend on your suppliers' (see Topic 3.7 — Service Level Management). If you promise 99.9% availability and your only cloud provider promises less, the arithmetic does not work. Supplier management includes comparing what suppliers have committed to with what you have promised, and designing around the gap with redundancy or by adjusting your own promise.

In ITIL vocabulary, an agreement with an outside supplier that supports a service level agreement is called an underpinning contract, and an agreement between internal teams that supports it is called an operational-level agreement. The sources read for this guide do not define these, so check ITIL publications for the exact terms.

### Multi-supplier environments and SIAM

The article on service integration and management (SIAM) describes an approach for managing several suppliers and integrating them into a single, business-facing service. It notes that organisations increasingly source IT capabilities from several external suppliers, a model called multisourcing, which can reduce costs and encourage competition but adds management overhead and makes end-to-end service management harder. A **service integrator** provides governance and coordination so providers work together.

The article lists four models for the integrator (internal, lead supplier, external, and hybrid) and three layers: the customer organisation, the service integrator, and the service providers. It says SIAM originated around 2005 in the UK public sector, first designed for the Department for Work and Pensions, and lists milestones including a body of knowledge in 2016 and revisions in 2019 for COBIT 2019 and ITIL 4. It notes that ITIL provides a foundation and common language for working with suppliers but does not address multi-supplier environments in depth. Implementation challenges it lists include misaligned service level agreements, providers blaming each other, unclear ownership of root-cause decisions, and communication gaps.

Few agile teams need a formal SIAM, but the lessons are useful: when several parties contribute to one service, someone must own the whole, agree how problems are handled across boundaries, and keep the suppliers' service levels consistent with each other.

### Contracts and agility

Contracts can help or hinder agile work. Fixed-scope, fixed-price contracts fit poorly with learning as you go (see Topic 1.1 — Agile Manifesto on customer collaboration over contract negotiation). Agreements that allow change, with clear ways to adjust scope and measure value, fit better. A contract must also cover the things service management cares about: service levels, support hours, incident handling, data protection, security obligations, audit rights, exit, and continuity. Your legal and procurement colleagues should lead on the legal terms.

### Risk

Suppliers bring risks: failure, change in terms or price, security weaknesses, concentration in one provider, lock-in, and the supplier's own dependencies. The SRM article lists reducing the risk of failure as an aim without describing methods. Practical measures include knowing the supplier's own continuity arrangements, spreading critical dependencies, keeping data portable, and rehearsing exit (see Topic 3.12 — Service Continuity Management and Topic 3.13 — Information Security Management).

### Relationship, not only contract

The SRM article stresses two-way partnerships. Suppliers who understand your plans can help; suppliers treated only as sources of invoices will not. Share forecasts, involve them in incident reviews that concern them, and listen to their feedback about your behaviour, such as late payments or unclear requests.

### Limits of the sources

The SRM article gives no selection criteria, contract clauses, or implementation timelines. The SIAM article has no criticism section. Both are general. For legal and financial terms, rely on your procurement and legal functions and on the contract itself.

## Best practices

1. **List your suppliers and what you depend on them for.** Include cloud, software, network, payment, and contractors. For each, note what service it supports and who in your team owns the relationship.
2. **Segment by dependence and replaceability.** Decide which few suppliers are critical and invest your attention there. Keep a light touch for the rest.
3. **Name an owner for each important supplier.** One person should know the contract, the contacts, the performance, and the plans. Without an owner, relationships decay.
4. **Check that supplier commitments support your promises.** Compare what each critical supplier has committed with what you have told customers. Close the gap by design, by negotiation, or by changing your promise.
5. **Agree incident handling in advance.** Know how to report a problem to the supplier, how fast they respond, who can escalate, and how they will communicate. Test the route before you need it.
6. **Include security and data protection.** Ask suppliers how they protect your information and what they will tell you after a breach. Put it in the contract, with the legal team.
7. **Plan for exit and failure.** For critical suppliers, keep data portable, know alternatives, and write a short plan for the supplier's failure or your departure. Rehearse the part you can.
8. **Review performance together.** Hold regular reviews with critical suppliers, share data both ways, and agree actions. Ask the supplier how you could be a better customer.
9. **Include suppliers in learning.** Invite them to incident reviews and planning sessions that involve them. Share lessons that help them help you.
10. **Make contracts flexible where learning is expected.** For development work, prefer agreements that allow scope to change, with clear review points, to fixed-scope promises. Keep the service obligations firm.
11. **Use one integrator when many suppliers contribute.** For a service that depends on several providers, name who owns the end-to-end result and how cross-supplier problems are resolved. Do not leave it to the customer.
12. **Review the portfolio of suppliers regularly.** Once a year, check which suppliers are still needed, which are concentrated risks, and which are cheaper or better elsewhere.

## Questions to discuss with your team

**Which suppliers could stop our service if they failed, and what would we do?**

Ask each person to name the dependencies they would worry about most. Compile the list and mark each as critical, important, or routine. For each critical one, ask what the team would do in the first hour of a failure. Typical answers reveal gaps in contacts, alternatives, and data. Pick one to plan for.

**What have our suppliers promised us, and what have we promised our customers?**

Put the two side by side for a key service. Where the supplier's promise is weaker, the customer promise is at risk. The facilitator can ask whether anyone has read the supplier's service levels recently. Agree on one gap to close.

**Who owns each important supplier relationship?**

Go down the list and name an owner for each. Gaps are common: the person who signed the contract left, or a tool was bought on a card and nobody manages it. Ask what the owner would need to do the job, such as time and a contact. Assign owners where missing.

**How do we find out about a supplier problem, and how do we tell our users?**

Trace the last time a supplier had an outage. Ask how you learned of it, how long it took, and what you told customers. Discuss status pages, contacts, and agreed channels. Plan an improvement, such as a subscription to the supplier's status feed or a named escalation contact.

**What would it take to leave this supplier, and would we ever want to?**

For a critical supplier, ask about data export, alternative products, and contract terms. Teams often find lock-in they did not intend. Discuss how to reduce it where the risk justifies the cost. Record a short exit note.

**Do our suppliers know what we are planning, and do we know what they are planning?**

Ask when each critical supplier last heard about your plans, and when you last heard about theirs. Surprises in either direction cause trouble. Discuss a regular conversation. Agree one supplier to start with.

## In practice: an agile ITIL example

A regional broadcaster runs a news app and website with a team of fourteen. The service depends on a cloud provider, a content delivery network, a push-notification service, a comment-moderation tool, and a small company that supplies a live-blog widget. When the live-blog supplier's service failed during an election night, the app displayed errors for two hours and the broadcaster's reputation suffered. Nobody on the team could say who the supplier's contact was; the widget had been added by a developer who had since moved on.

The head of platform leads a review. The team lists all suppliers, sorting them by how much the service depends on them and how easily each could be replaced. The cloud provider and the content delivery network are critical, and the notification service and the widget are important but replaceable. Each gets an owner on the team. For the widget supplier, the team obtains contacts, reads the terms, and finds that no service level is promised. They decide to keep the supplier but add a fallback: if the widget fails to load, the page shows a static link to the live blog. For the cloud provider, they compare its commitments with the availability they have promised to the broadcaster's editors and find a gap in one region, which they close by spreading the service across two.

Six months later, a second outage at the notification provider is detected by monitoring in minutes, the owner raises it with the supplier through the agreed route, and the app keeps working with delayed notifications. Difficulties remain. The editors want the live-blog widget to do more, but the supplier is too small to commit to a service level, and the broadcaster's procurement rules make a replacement slow. The head of platform agrees with procurement to run a small trial of an alternative, and to review the supplier list yearly.

## Four perspectives

### Product and delivery teams

Delivery teams choose and integrate many suppliers. Record each dependency when you add it, name an owner, and ask about service levels and exit before you rely on it. Build fallbacks for the failures you can imagine.

### Service and operations teams

Operations teams deal with suppliers in incidents. Keep contacts and escalation routes current, test them, and record supplier performance. Bring this evidence to reviews and to procurement.

### Leadership and governance

Leaders and procurement shape the terms and the relationship. Ask for a list of critical suppliers and their risks, support flexible contracts for learning-based work, and make sure that the contract covers service levels, security, and exit. Ask who owns the end-to-end result when many suppliers contribute.

### Customers and users

Customers and users rely on the whole chain, not on any one link. Ask providers which suppliers matter for the service you use and how they protect it. When something goes wrong, expect honesty about which part failed and what is being done.

## Common failure modes

- **Hidden dependencies.** A tool added by one developer becomes critical, and nobody owns it. Instead, record every dependency and name an owner.
- **One-size-fits-all.** Every supplier gets the same heavy process, or none gets any. Instead, segment by dependence and replaceability.
- **Promises that do not add up.** The customer promise is stronger than the supplier's. Instead, compare commitments and close the gap.
- **No tested route.** The supplier's support line is found during an outage. Instead, agree and test contacts and escalation in advance.
- **Lock-in by accident.** Data cannot be exported. Instead, check portability early and record an exit note.
- **Contract only, no relationship.** The supplier is a stranger when trouble comes. Instead, hold regular reviews and share plans.
- **Nobody owns the whole.** Several suppliers blame each other. Instead, name an integrator for the end-to-end service and agree cross-supplier handling.
- **Fixed-scope contracts for uncertain work.** The contract fights learning. Instead, use agreements that let scope change within clear limits.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Knowing suppliers | Suppliers are known to individuals | Some teams list their suppliers | A shared list with dependence, replaceability, and owners | The list is reviewed against incidents and changes | The list is shared across teams and linked to services |
| Commitments and service | Supplier service levels are unknown | Key suppliers' terms are read | Supplier commitments are compared with customer promises | Supplier performance is measured and reviewed | Commitments are aligned across the chain with joint review |
| Incidents and risk | Supplier problems are found by chance | Some contacts are known | Escalation routes are agreed and tested; risks are recorded | Supplier incidents and risks are tracked and acted on | Incident handling and risk plans are joint with suppliers |
| Relationship and exit | Suppliers are transactional | Some supplier meetings | Regular reviews with critical suppliers and short exit notes | Relationship health and exit readiness are reviewed | Suppliers take part in planning and improvement |

## Checklist

- [ ] We have a list of suppliers and what each supports.
- [ ] Suppliers are sorted by dependence and replaceability.
- [ ] Each important supplier has a named owner.
- [ ] We have compared supplier commitments with our customer promises for key services.
- [ ] Escalation contacts and routes for critical suppliers are known and tested.
- [ ] Security and data protection expectations are in the contract or agreed in writing.
- [ ] A short exit or failure note exists for each critical supplier.
- [ ] We hold regular reviews with critical suppliers.
- [ ] Where several suppliers contribute, someone owns the end-to-end result.
- [ ] The supplier list is reviewed at least once a year.

## AI prompts

**Purpose: build a supplier and dependency list from what you know.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: compare supplier commitments with your customer promises.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Purpose: prepare for a supplier review meeting.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: draft a short exit note for a critical supplier.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to plan selection, review, and the relationship with a supplier.
- [risk-register](../../../../skills/risk-register/SKILL.md): use to record supplier risks and how they are managed.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use to understand who in your organisation and the supplier's matters to the relationship.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use to check that supplier commitments support what you promise.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make clear who owns each supplier relationship and who is consulted.

## Key sources

- **Supplier relationship management** (Wikipedia): an overview of segmentation, scorecards, and collaboration with suppliers, with maintenance tags that show where the sourcing is weak.
- **Service integration and management** (Wikipedia): the multi-supplier approach, with its layers, models, and implementation challenges.
- **Service-level agreement** (Wikipedia): background on agreements that suppliers and customers sign.
- **ITIL** (Wikipedia): context on how ITIL treats suppliers.

## References

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
