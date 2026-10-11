# Service Catalog Management

**A service catalog (ITIL spells it "service catalogue") is a curated list of what an organisation offers, with an owner and a plain description for each service, and its worth depends on whether users find it useful and the owners keep it true.**

## Why this matters

Ask a user what IT offers and you will often get a vague answer. Ask the IT team and you will get a list of systems. The two lists rarely match, and the gap causes misunderstandings: users ask for things that do not exist, teams support services nobody uses, and nobody can say who is responsible for what. A service catalog closes that gap by stating, in one place and in plain terms, what is offered and who stands behind it.

For agile teams, the catalog is also a way to make ownership visible. A team that builds and runs a service should be able to say, "this is what we offer, this is who to ask, this is what you can expect." Without that, requests arrive at the wrong place, incidents bounce between teams, and new staff cannot find help.

The [Wikipedia article on service catalogs](https://en.wikipedia.org/wiki/Service_catalog) describes a service catalog as an organised and curated collection of business and information technology services within an enterprise, serving as a knowledge management tool that designates subject matter experts for each listed service. It notes that ITIL's Service Design volume defines an IT service catalog as an exhaustive list of IT-only services and the only part of the service portfolio published to customers, without specifying the ITIL edition. This topic builds on that description, and on the guide's other topics, and keeps the catalog practical and light.

## Core concepts

### What is in a catalog

According to Wikipedia, each entry in a service catalog typically includes a named owner, a description, a category, related request types, underpinning services, entitlements, costs, how the service is requested and fulfilled, and escalation contacts. Common categories include IT, operations, and fulfillment. You do not need all of these for every service. A good catalog starts with the few that users and support staff actually need.

| Field | Why it helps | Who uses it |
|---|---|---|
| **Name and description in plain words** | Users recognise what is offered | Users, service desk |
| **Owner** | Someone answers for the service | Everyone |
| **Who can use it (entitlement)** | Avoids wasted requests | Users, service desk |
| **How to request or get help** | Takes users to the right place | Users, service desk |
| **What it depends on (underpinning services)** | Shows what else must work | Operations, delivery teams |
| **Cost, if charged** | Supports decisions and budgets | Customers, finance |
| **Service level or expectation** | Sets expectations | Users, customers (see Topic 3.7 — Service Level Management) |
| **Escalation contact** | Speeds help during problems | Service desk, operations |

### Catalog and portfolio

The Wikipedia article places the IT service catalog as a subset of the wider enterprise catalog. In ITIL vocabulary, the service portfolio is the complete set of services, including those in development and those being retired, and the catalog is the part published to customers. The sources read here do not define the portfolio in detail: the article on service portfolio management redirects to IT portfolio management, which says only that ITIL v3 calls for a service portfolio management practice that appears functionally equivalent to IT portfolio management. Treat the portfolio idea as: the catalog is what you offer now, and the portfolio is also what you are building and retiring (see Topic 5.7 — Governance, Risk, and Compliance for portfolio choices).

### Enterprise and IT catalogs

An enterprise service catalog covers services from several functions, such as human resources, facilities, and IT. An IT service catalog is a subset. The article cites benefits of a catalog: centralising services across distributed enterprises, identifying service gaps and redundancies, tracking resource allocation, and measuring service demand, supply, approval times, delivery times, and finances. For cloud services it cites self-provisioning and standardised definitions that aid capacity planning and buying forecasts. These are claims from the article, based on its cited sources.

### Business view and technical view

Many organisations distinguish what customers see from what the provider needs internally. The sources read here do not make the distinction, so treat this as common practice. The **customer-facing view** lists services in the user's terms ("Email and calendar"). The **technical view** lists components and teams behind them ("Mail servers, spam filter, directory service"). The customer view helps users choose. The technical view helps operations understand dependencies (see Topic 4.4 — Configuration Management). Keep the two linked, but separate, so that users are not confronted with component names.

### The catalog as a knowledge tool

The Wikipedia article stresses that the catalog designates subject matter experts for each service. This makes it a map of who knows what. A catalog that is kept current helps the service desk route contacts, helps new staff find help, and helps incident responders reach the right person (see Topic 3.9 — Knowledge Management).

### Catalog and requests

The catalog usually includes the requests users can make for each service, such as "request access" or "report a fault." A request model describes how each is fulfilled (see Topic 3.6 — Service Request Management). Not every service needs requests, and not every request needs a catalog entry, but frequent requests should be easy to find.

### Keeping it true

A catalog goes stale fast if nobody owns it. Services change, teams reorganize, and descriptions drift from reality. The most useful discipline is a review cycle: each owner confirms their entries on a schedule, and unused services are retired. The Wikipedia article does not discuss criticisms or limits, but practical experience is consistent: a catalog that is wrong is worse than no catalog, because it sends people to the wrong place with confidence.

### Catalogs and agile teams

Agile teams often resist heavy catalogs because they expect bureaucracy. A lightweight catalog is compatible with agile ways of working. It can be a shared document or page, maintained by the owners themselves, with a few fields per service. The test is use: do users and the desk actually consult it?

## Best practices

1. **List services in users' words.** Start by asking users and the service desk what they would call each thing. Name services by what users do ("Join a video meeting") and not by technology ("Conferencing platform").
2. **Give every service a named owner.** One person should answer for each service. Where a service has several parts, name an owner for the whole and list the contributors.
3. **Start small.** Begin with the 10 to 20 services that users most often ask about. Add more as you learn what is useful. A short, accurate list is better than a long, stale one.
4. **Include only what people use.** For each field, ask who uses it and for what. Remove fields that nobody uses. Add a field only when someone needs it.
5. **Link to requests and help.** For each service, show how to ask for something, report a fault, and find help. Link to the knowledge base (see Topic 3.9 — Knowledge Management).
6. **Show service expectations.** State what users can expect, such as hours of support and typical response, in plain terms. Link to the formal agreement where there is one.
7. **Record dependencies.** For each service, note the main services and suppliers it relies on. This helps incident response and change planning.
8. **Separate the customer view from the technical view.** Keep user-facing descriptions free of jargon. Link them to technical records where those exist.
9. **Review on a schedule.** Ask each owner to confirm their entries at least twice a year, and retire services nobody uses. Show the last review date on each entry.
10. **Make it easy to find and use.** Put the catalog where users already look, such as the intranet or the portal. Test search with real queries.
11. **Use the catalog to find gaps and overlaps.** Look for services nobody owns, services that duplicate each other, and requests with no matching service. Bring the findings to planning (see Topic 5.5 — Product and Service Ownership).
12. **Treat catalog changes as service changes.** When you add, change, or retire a service, announce it to the desk and affected users, as you would a release.

## Questions to discuss with your team

**If a new colleague asked what we offer, what would we answer, and would we all say the same thing?**

Ask each person to list the services in two minutes, then compare. Differences show how fuzzy the boundaries are. The facilitator can ask which items users would not recognise. Use the combined list as a draft catalog, and mark items where there is disagreement.

**Which services have no clear owner?**

Go through the list and mark those where nobody can say who answers for the service. Ownerless services often cause the longest delays in incidents and requests. Ask what stops a person from taking ownership: time, authority, or unclear boundaries. Agree an owner or a decision to retire for each.

**What do users ask for that we do not list, and what do we list that nobody asks for?**

Compare request data with the list. Requests with no matching service reveal gaps; listed services with no requests reveal candidates for retirement. Be cautious: some services are used silently. Ask users before removing. Choose one gap and one candidate to examine.

**What would a user need to see to choose the right service without calling us?**

Take a common choice, such as which tool to use for sharing files. Ask what information would help: a short description, who it is for, a comparison. Draft a one-paragraph entry and test it with two users. The aim is a catalog that deflects calls by being clear.

**How do we find out when a service has changed and the catalog is out of date?**

Ask when the last review took place and who did it. Discuss triggers, such as a reorganization or a major release, and a regular cycle. A visible "last reviewed" date on each entry helps. Agree the first review date and who is responsible.

**What do we depend on that is not in the catalog?**

List the platforms and suppliers behind your services. Ask which are listed and who owns them. Dependencies with no owner are risks. Choose one to add to the technical view.

## In practice: an agile ITIL example

A regional council has 120 staff in its IT department serving 2,500 council employees and several public-facing services. Staff complain that they do not know whom to ask for help, and the service desk spends much of its time redirecting calls. The council once built a service catalog with 300 entries, but it is rarely used and is mostly out of date.

The head of service delivery decides to start again, small. She asks the service desk for the 30 most common reasons people contact them, and groups them into 15 services in users' words: "Email and calendar," "Files and sharing," "Laptops and devices," "Council website," "Finance system," and so on. For each, a named owner writes four things: a two-sentence description, who it is for, how to get help, and what to expect. Dependencies are recorded in a separate technical list for operations. The catalog is a single web page on the council's intranet, and each entry shows the date it was last confirmed by its owner.

After three months, calls to the desk about who to ask drop, and the owners notice gaps: nobody owned the meeting-room booking system, and two services overlapped. These are assigned and merged. Problems remain. Three owners have not confirmed their entries, and some staff still call the desk by habit. The head of service delivery sets a reminder cycle and arranges for the desk to point callers to the catalog while handling their request. She also finds that some entries are written in technical language and asks a communications officer to review them.

## Four perspectives

### Product and delivery teams

Delivery teams should be named as owners of the services they build and run, and should keep their entries current. When you launch or retire a service, update the catalog and tell the service desk. Use the catalog to find who to talk to about a dependency.

### Service and operations teams

Operations and the service desk are the heaviest users. Tell owners what is wrong or missing in entries, and use the catalog for routing and escalation. Keep the technical view linked to the customer view, so that incident responders can see what depends on what.

### Leadership and governance

Leaders can use the catalog to see what the organisation offers, what overlaps, and what is orphaned. Ask for gaps and duplicates to be addressed, and for owners to be named. Do not require every field for every service; ask for what supports decisions.

### Customers and users

Customers and users get a clear view of what they can ask for and what to expect. Use the catalog to find the right service, and tell the owners when an entry is wrong or unclear. If you cannot find what you need, say so, since that is evidence of a gap.

## Common failure modes

- **Too big, too soon.** Hundreds of entries are created and not maintained. Instead, start with the most used services and grow.
- **Written in provider language.** Users cannot find what they need. Instead, name services by what users do and test with users.
- **No owners.** Nobody keeps entries true. Instead, name an owner for every entry and show review dates.
- **A catalog nobody uses.** It sits on a site that users do not visit. Instead, place it where people already look and have the desk point to it.
- **Mixing the customer and technical views.** Users face component names. Instead, keep a clear customer view and link a technical one for operations.
- **No retirement.** Dead services remain listed. Instead, review use and retire what nobody needs.
- **Treating it as a one-off project.** The catalog goes stale after launch. Instead, set a review cycle and make it part of changes.
- **Too many mandatory fields.** Owners fill in fields to satisfy the template. Instead, require only what someone uses.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Coverage and clarity | Services are known informally | A list of some services exists | A catalog of main services in users' words with owners | Use and gaps are measured and the catalog is adjusted | The catalog spans functions and partners and is shaped with users |
| Ownership and currency | Nobody owns the list | Some owners confirm entries occasionally | Every entry has an owner and a review date | Overdue reviews are tracked and resolved | Ownership and review are routine across the organisation |
| Link to requests and help | Requests go by email or phone | Some entries link to forms or help | Entries link to requests, knowledge, and support routes | Click-through and deflection are measured | Requests, knowledge, and support are integrated across functions |
| Dependencies and decisions | Dependencies are tribal knowledge | Some dependencies are listed | Dependencies are recorded and used in incident and change work | Dependency data supports planning and risk review | Dependencies are shared with suppliers and used to plan jointly |

## Checklist

- [ ] We have a list of services in users' words, starting with the most used.
- [ ] Every service has a named owner.
- [ ] Each entry says who it is for, how to get help, and what to expect.
- [ ] The catalog is where users and the service desk already look.
- [ ] Entries show the date they were last confirmed.
- [ ] Owners review their entries at least twice a year.
- [ ] Main dependencies are recorded in a technical view.
- [ ] Unused services are reviewed for retirement.
- [ ] Adding, changing, or retiring a service is announced to the desk and users.
- [ ] We have tested the catalog with real user queries.

## AI prompts

**Purpose: turn contact data into a draft list of services in users' words.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognise, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Purpose: write a clear catalog entry.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: review a catalog for gaps, overlaps, and orphans.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Purpose: plan a catalog review with owners.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use to draft entries and structure a service catalog.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use to understand who uses each service and what they need.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to find which requests and services are used most.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to record who owns, supports, and is consulted about each service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): use to plan how services will be added, changed, or retired over time.

## Key sources

- **Service catalog** (Wikipedia): a short description of contents, benefits, and the ITIL definition of an IT service catalog.
- **IT portfolio management** (Wikipedia): background on portfolio concepts, including the note that ITIL v3 service portfolio management appears functionally equivalent.
- **ITIL** (Wikipedia): context on ITIL versions and where catalog and portfolio ideas come from.
- **Knowledge management** (Wikipedia): background on how catalogs act as knowledge tools.

## References

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
