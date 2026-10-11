# IT Service Management

**IT service management (ITSM) is the discipline of designing, delivering, operating, and improving IT services around what customers need, and agile teams that run services are already doing it, whether or not they use the name.**

## Why this matters

When a team ships software and then runs it, it becomes a service provider. Users depend on it, expect it to be available, and want help when it fails. ITSM is the body of practice that has grown up around that relationship. Teams that ignore it often rediscover it the hard way: by getting paged at night, by losing track of what changed, or by arguing with customers about what was promised.

ITSM has a reputation for heavy process, and some of that reputation is earned. Agile teams, in turn, have a reputation for moving fast and leaving operations to deal with the result. Both reputations describe failures, not the intent of either field. ITSM asks what the customer needs from a service and how the provider will deliver and improve it. That is a question agile teams care about too.

This topic gives the vocabulary used in the rest of the guide: what a service is, who the customers and users are, what ITSM covers, and where its main frameworks come from. It uses the [Wikipedia article on IT service management](https://en.wikipedia.org/wiki/IT_service_management) as its map. That article is short and lists frameworks more than it explains them, so the topic adds practical interpretation and flags where it does.

## Core concepts

### What ITSM is

The Wikipedia article defines ITSM as the set of activities an organization performs to design, build, deliver, operate, and control IT services offered to customers. It contrasts ITSM with technology-oriented approaches such as network management and systems management. ITSM, it says, takes a process approach, focuses on customer needs rather than on systems, and stresses continual improvement.

The article cites a 2017 survey by CIO WaterCooler reporting that businesses use ITSM mostly in support of customer experience (35%) and service quality (48%). It is one survey, and its sample is not described in the article, so treat the figures as an illustration of how practitioners describe their goals and not as a measure of how common each goal is.

### Service, customer, and user

A **service** is a way of delivering value to others without them having to own the costs and risks. A bank's online payments, a hospital's appointment booking, and a company's shared file storage are all services. The article distinguishes **users**, who use the service, from **customers**, who pay for it or commission it. In a company's internal IT, the customer may be a business unit's head and the users its staff. In a public service, the customer may be a ministry and the users citizens. The two groups have different needs, and a provider that listens only to the customer may miss what users experience.

### Typical ITSM activities

The article names a few core ideas, and standard ITSM practice adds others. Together they give a recognizable shape:

| Activity | What it is for | Where this guide covers it |
|---|---|---|
| **Service desk** | A single point of contact between providers and users; handles incidents and service requests | Topic 3.1 — Service Desk |
| **Incident handling** | Restoring service when something disrupts or threatens it | Topic 3.2 — Incident Management |
| **Service requests** | Providing routine things users ask for, such as access or equipment | Topic 3.6 — Service Request Management |
| **Problems and changes** | Finding and fixing underlying causes, and controlling modifications to services | Topic 3.3 — Problem Management and Topic 3.4 — Change Enablement |
| **Service levels and catalog** | Agreeing what is offered and how well | Topic 3.7 — Service Level Management and Topic 3.8 — Service Catalog Management |
| **Continual improvement** | Making services better over time | Topic 3.15 — Continual Improvement |

The article defines an **incident** as a disruption or potential disruption in service availability or quality, and a **service request** as a routine request for a service. It names **service-level agreements (SLAs)** only in passing, so the guide explains them in Topic 3.7 — Service Level Management.

### Enterprise service management and automation

The article notes two extensions. **Enterprise service management (ESM)** applies ITSM tools and ideas to other parts of a business, such as human resources or facilities, which also receive requests and deliver services. **IT process automation** replaces routine manual steps with automated ones so that staff can focus on higher-priority work. Both matter to agile teams: ESM shows that the discipline is not tied to IT, and automation is how small teams keep up with the volume.

### Frameworks and standards

The article lists many frameworks and standards. The list below repeats its one-line descriptions and is expanded in Topic 2.7 — ITSM Frameworks and Standards.

| Name | What the article says |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Detailed practices for ITSM and IT asset management, aligning IT with business goals |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | An international standard for service management systems, against which an organization can be certified |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | An IT governance framework with control objectives, metrics, and maturity models |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | A lightweight standard, largely aligned with ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | A model for establishing, managing, and improving services |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | A framework linking business goals to architecture objectives |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Service management guidance based on Microsoft technologies |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | A framework for professional application management |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | A best-practice framework for information management |
| Business Process Framework (eTOM) | A process framework for telecommunications providers |

The article adds that ITSM frameworks have drawn on ISO 9000, ISO/IEC 27000, and CMMI, and that ITIL version 2 and BS 15000, the precursor to ISO/IEC 20000, were mutually aligned. It also describes USM, a principle-based management system adopted by the Dutch government.

### What the article does not cover

The article has no history section, no criticisms, and no mention of agile or DevOps. That silence matters. ITSM has been criticized for process overhead and slow change, and agile teams have been criticized for neglecting operations, but you will not find either criticism there. This guide covers the gap in Part 5, starting with Topic 5.1 — Agile Service Management. Where this topic mentions problems, it draws on the guide's other sources and on practical experience, and says so.

### ITSM and ITAM

The ITIL article describes ITIL as covering both ITSM and IT asset management (ITAM). ITAM is the discipline of knowing what IT assets an organization has, what they cost, and how they are used. Services depend on assets, and the two disciplines share information, which is why Part 4 follows ITSM closely (see Topic 4.1 — IT Asset Management).

## Best practices

1. **Define your services from the customer's side.** List what customers and users actually use, in their words, such as "log in," "book an appointment," and "send an invoice." Group the technology behind each. This is the start of a service catalog (ITIL spells it "service catalog"; see Topic 3.8 — Service Catalog Management).
2. **Name who the customers and users are.** For each service, write down who pays or commissions it and who uses it. If they are different people, check that both groups have a voice.
3. **Give every service an owner.** Name one person accountable for how the service performs and improves over time. Without an owner, issues with the service are no one's job.
4. **Start with the activities that hurt most.** If outages are the pain, strengthen incident handling first. If nobody knows what changed, start with change records. Do not roll out every ITSM practice at once.
5. **Use a single front door.** Give users one place to ask for help and to make requests, and make it easy. A service desk that is hard to reach is bypassed, and then you lose the information that ITSM depends on.
6. **Separate incidents from requests from problems.** An incident is a disruption, a request is a routine ask, and a problem is an underlying cause. Mixed queues hide patterns and distort measures.
7. **Record what matters and no more.** Keep records of incidents, changes, and assets that you will use to make decisions. Delete fields nobody reads. Records are a cost, and you should be able to say what each one is for.
8. **Choose frameworks by problem, not by fashion.** Use ITIL, ISO/IEC 20000, COBIT, or lighter models as sources of ideas for the problem you have. Adopt the parts that help and say which you left out.
9. **Automate the routine.** Look for repetitive steps, such as password resets and access grants, and automate them with care. Review automated actions periodically so that they do not drift from what users need.
10. **Measure what customers feel.** Track availability, time to restore service, and user satisfaction before counting internal activity. Use the survey from the Wikipedia article as a reminder that practitioners already name customer experience and quality as the main goals.
11. **Look beyond IT.** If other parts of the organization handle requests badly, consider shared tools and practice through enterprise service management. Do not force IT's vocabulary onto them.
12. **Improve continually.** Set aside regular time to review what is working, using incident and request data, and to make small changes (see Topic 3.15 — Continual Improvement).

## Questions to discuss with your team

**What services do we provide, in the words our users would use?**

Ask each person to write the three things users most often rely on us for. Compare lists. Differences usually show that the team holds different pictures of the service, or that it describes services by technology instead of by use. A facilitator can ask which service has no clear owner. Follow up by agreeing a first list of services.

**Who are the customers and who are the users of our main service, and do they want the same things?**

Name the person who commissions or pays and the people who use. Ask what each wants from the service. In internal IT the customer may care about cost and risk, and the users about speed and ease. Ask where they conflict and how the team learns about it. Pick one conflict to talk through with real people.

**Where do users go when they need help, and how many routes are there?**

Count the ways: a portal, a phone number, email, chat, a colleague's desk. Ask which route users prefer and why. Multiple informal routes mean some demand is invisible. The discussion should end with a decision on which routes to keep, which to merge, and how to capture what arrives by informal routes.

**How well can we tell an incident from a request from a problem, and what happens when we mix them?**

Take ten recent tickets and sort them. Disagreements show that definitions differ across the team. Ask what mixed categories do to reports and to priorities. For example, many requests inside an incident queue can make incident handling look slow. Agree on simple definitions and examples.

**Which ITSM practices are we missing or doing only on paper?**

List the practices in the table above and rate each as working, partly working, or on paper only. Ask for a recent example of each rated as working. The facilitator should resist the urge to fill every gap, and should ask which gap causes the most harm for customers.

**What would we want a framework to do for us, and what are we afraid it would do to us?**

Collect hopes and fears about adopting ITIL or ISO/IEC 20000. Hopes are often consistency and credibility. Fears are often paperwork and slowness. Ask how to get the first without the second. For example, adopt vocabulary and a few practices, and avoid forms. Record the conditions the team would need.

## In practice: an agile ITIL example

A mid-sized online retailer has grown from a founder's website into a business with a team of twelve engineers, a growing customer base, and a small group of support staff. Customers email problems to a shared inbox and call a personal mobile number when the checkout fails. Engineers fix what they hear about and rarely write anything down. After a payment outage that lasted three hours, the founder asks why nobody knew until a customer called.

The head of engineering proposes the lightest possible ITSM. The team lists its services in customer terms: browse and search, checkout and payment, order tracking, and customer accounts. Each gets an owner. A shared support address becomes the single front door, feeding a simple ticket tool with separate types for incidents and requests. Any incident that lasts more than 30 minutes gets a short review, written in a shared document. Changes to checkout and payment are announced in a team channel before they happen.

After three months, the team knows how many incidents it handles and finds that most come from two causes. It fixes both, and the checkout outage does not recur. Some difficulties remain. Customers still phone the founder when they are upset, so some demand bypasses the ticket tool. Engineers also grumble that writing reviews takes time, and two reviews were skipped in a busy month. The head of engineering decides to keep the reviews short, to ask the founder to forward calls to the support address, and to revisit whether a fuller ITIL-style process is needed after another quarter of data.

## Four perspectives

### Product and delivery teams

Delivery teams who also run what they build are already doing ITSM. Name your services, record incidents and changes in a light way, and share the data with whoever supports your services. Treat the service desk as a source of evidence about what users struggle with.

### Service and operations teams

Operations and service desk staff carry most of the ITSM practice. Agile ideas can help by making your work visible, shortening feedback loops with users, and shifting improvement from annual projects to small regular changes. Explain the purpose behind each ITSM rule so that colleagues can adapt it sensibly.

### Leadership and governance

Leaders decide how much structure to require and how much evidence to ask for. Ask for outcomes that customers feel, and a few measures the teams can produce from their tools. Be cautious about buying a framework as a signal; the Wikipedia article lists many, and none is a substitute for knowing your own services.

### Customers and users

Customers and users are the reason ITSM exists. Expect a clear way to ask for help, honest information about what to expect, and someone who owns each service. In return, give timely and specific information when something goes wrong, so that the provider can learn from it.

## Common failure modes

- **Process for its own sake.** Forms and approvals multiply and nobody remembers why. Instead, tie each practice to a purpose and delete those that no longer serve one.
- **No single front door.** Users approach whoever they know, and demand is invisible. Instead, offer one easy route and capture informal requests into it.
- **Mixing incidents, requests, and problems.** Reports mislead and causes stay hidden. Instead, use simple definitions and sort tickets consistently.
- **Services described by technology.** Users cannot find what they need and owners are unclear. Instead, describe services in customer terms and name an owner for each.
- **Adopting a framework wholesale.** Teams copy a large framework and bury themselves in process. Instead, begin with the problem and take only the parts that help.
- **Ignoring the users.** The provider talks only to the customer who pays. Instead, listen to both customers and users and look for conflicts.
- **Measuring activity.** Counts of tickets and calls replace evidence of service quality. Instead, measure availability, time to restore service, and user satisfaction.
- **Treating ITSM as separate from delivery.** Delivery teams ship and leave operations to cope. Instead, connect them through shared services, shared data, and joint reviews (see Topic 5.1 — Agile Service Management).

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Service definition | Services are described by technology or not at all | Some services are listed with owners | All services are described in customer terms with named owners | Service descriptions are checked against usage and feedback | Service definitions are shared with customers and suppliers and adjusted together |
| Support and requests | Help is requested by informal routes | Some teams have a ticket tool or shared inbox | One front door with clear types for incidents and requests | Demand and resolution times are tracked and reviewed | Support is coordinated across teams and suppliers with shared data |
| Records and measures | Few records are kept | Some teams record incidents and changes | Records are consistent and each has a stated purpose | Customer-facing measures are reviewed regularly | Measures are shared across services and used to set priorities together |
| Improvement | Fixes follow crises | Some teams review incidents | Regular review of incident and request data leads to planned changes | Improvement work is resourced and its results checked | Improvement is routine across teams and with customers |

## Checklist

- [ ] We have a list of our services in customer language.
- [ ] Each service has a named owner.
- [ ] We know who the customers and who the users are for each service.
- [ ] Users have one clear front door for help and requests.
- [ ] Incidents, requests, and problems are recorded as different things.
- [ ] Each kind of record has a stated purpose, and unused fields are removed.
- [ ] We measure at least one thing that customers feel, such as availability or time to restore service.
- [ ] We review incident and request data regularly and act on it.
- [ ] We can say which framework ideas we use and which we have left out.
- [ ] Routine tasks that can be safely automated have been identified.

## AI prompts

**Purpose: draft a list of your services in customer language.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Purpose: sort recent tickets into incidents, requests, and problems.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Purpose: choose a small first set of ITSM practices for your situation.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare a conversation between a delivery team and the service desk.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use to draft or review a list of services in customer language, with owners and descriptions.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use when you are ready to agree with customers what level of service to expect.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): use to prepare how your team handles an incident before one happens.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to understand what kinds of requests and incidents arrive and in what volume.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make clear who owns each service and who is consulted or informed.

## Key sources

- **IT service management** (Wikipedia): a short definition with a list of related frameworks and standards, useful as a map.
- **ITIL** (Wikipedia): the history and versions of the best-known ITSM framework, including its ownership changes.
- **ISO/IEC 20000** (Wikipedia): background on the international standard for service management systems.
- **Enterprise service management** (Wikipedia): an introduction to applying ITSM ideas beyond IT.

## References

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
