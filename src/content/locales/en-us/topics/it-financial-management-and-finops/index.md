# IT Financial Management and FinOps

**IT financial management shows what services cost and what value they return, and FinOps is the cultural practice of bringing engineers, finance, and business teams together so that technology spend, especially in the cloud, is understood and managed as it happens.**

## Why this matters

Money decides what services exist, how well they are staffed, and how long they last. For years IT finance meant an annual budget, a cost-allocation spreadsheet, and the occasional argument about who pays for the network. Cloud computing changed this. Resources can be created in seconds by anyone with the right permissions, and billing follows use. A single misconfigured job can add thousands to a monthly bill before anyone notices, and a thoughtful change can save as much.

For agile teams, the shift is double-edged. They gain the freedom to experiment and scale without waiting for hardware. They also take on a responsibility that used to sit with finance and procurement: knowing what their choices cost. Meanwhile, finance staff who plan in annual cycles face usage that varies daily. Neither side can manage the cost well alone.

The English Wikipedia has no article titled "FinOps" at the address checked. The FinOps Foundation's own site defines FinOps as an operational framework and cultural practice that maximizes the business value of technology and creates financial accountability through collaboration between engineering, finance, and business teams. The Wikipedia article on cloud computing describes pricing models and cost control, and carries a maintenance notice that parts of it may be unverified. ITIL's financial vocabulary here, such as budgeting, accounting, and charging, is drawn from widely published descriptions that this guide could not confirm against the framework owner's text.

## Core concepts

### IT financial management

IT financial management (in ITIL, "financial management for IT services") is widely described as the practice of managing the money of an IT service provider: planning budgets, accounting for costs, and, where relevant, charging for services. Its aim is to give decision makers the information to balance cost against value. The sources read for this guide do not define the practice, so these descriptions are common usage, offered as such.

| Activity | Question it answers |
|---|---|
| **Budgeting and planning** | How much will we spend, and on what, in the coming period? |
| **Cost accounting** | What does each service cost to provide? |
| **Charging or allocation** | Who pays, and how? |
| **Value and investment analysis** | Is a service or a change worth its cost? |

### Showback and chargeback

Two arrangements for sharing cost are widely used. In **showback**, consumers are shown what they use and what it costs, but are not billed. In **chargeback**, they are billed or the cost is moved to their budget. Showback builds awareness with little friction; chargeback creates accountability and can create disputes over allocation rules. Choose one by asking what behavior you want and whether the data are good enough to defend.

### Cloud and the pay-as-you-go model

Wikipedia says cloud computing can reduce upfront capital spending by shifting to an operational expenditure model in which costs scale with usage, and that infrastructure as a service is billed on a utility basis. It describes software as a service as typically a monthly or yearly flat fee per user, or pay-per-use. Its list of cost-control concerns includes unused resources, inefficient configurations, and hidden costs. It notes that providers offer cost tools and cites FinOps as a framework for standardizing cloud financial operations.

The article reports survey findings: a Gartner survey of 200 IT leaders found 69 percent experienced cloud budget overruns in 2023, with the others crediting forecasting, spending monitoring, and optimization; and Flexera's 2024 report named managing cloud spend as the top challenge, reporting that public cloud spending exceeded budgets by an average of 15 percent. The article carries a notice about unverified text, so check these figures against the original reports before quoting them.

### What FinOps is

The FinOps Foundation's site defines FinOps as "an operational framework and cultural practice" that "maximizes the business value of technology" and "creates financial accountability through collaboration between engineering, finance, and business teams." It says the name combines "Finance" and "DevOps," and that the focus extends beyond cloud to software as a service, licensing, data centers, and more. Key points from the site:

- **It is a team sport.** The site names these groups: executives, engineers, FinOps practitioners, operations, and finance and procurement, and says FinOps changes how disparate teams work together. A single team cannot do it alone.
- **It uses a maturity approach** described as "Crawl, Walk, Run."
- **The Foundation** is described as a project under LF Projects, a series of the Linux Foundation, and supports an open-source technical specification called FOCUS (the FinOps Open Cost and Usage Specification). It also offers training and certification.

The page read for this guide does not list the principles or the phases, so this topic does not state them. See the Foundation's principles and phases pages directly.

### Cost data and tagging

Whatever the practice is called, it depends on being able to attribute cost. This needs two things: tags or labels on resources that say who owns them and what service they support (see Topic 4.1 — IT Asset Management), and billing data that can be grouped by those tags. FOCUS exists to standardize the format of cost and usage data across providers. Untagged cost is unowned cost.

### Unit costs and value

A total bill says little. Divide cost by something that means something to the business: per transaction, per user, per service, per environment. Rising total cost with falling unit cost can be healthy growth. Falling total cost with rising unit cost may signal a problem. Unit cost links finance to service levels and value (see Topic 3.7 — Service Level Management).

### Cost, reliability, and speed

Money buys reliability and speed, and every extra level has a price (see Topic 3.11 — Availability, Capacity, and Performance). A team that cuts cost carelessly can reduce resilience. A team that never looks at cost can overbuild. FinOps conversations are a place to make that trade-off explicit, with engineers describing options and finance and the business weighing them.

### Governance and risk

Financial controls include budgets and alerts, approval for large commitments, limits on who can create expensive resources, and regular reviews. Commitments to providers, such as long-term purchase agreements, can lower cost and add risk if usage falls. These are decisions for finance, procurement, and engineering together (see Topic 5.7 — Governance, Risk, and Compliance and Topic 3.14 — Supplier Management).

### Limits of the sources

The FinOps Foundation page is a summary by the organization that promotes the practice, and it gives no founding date, membership figures, or evidence of results. The cloud computing article is flagged for unverified text and gives no pricing mechanics, egress fees, or details of a FinOps practice. This topic should be treated as an introduction; read the Foundation's materials and your provider's documentation for specifics.

## Best practices

1. **Make cost visible to the people who cause it.** Show each team the cost of the services they own, at least monthly, in a form they can understand. People manage what they can see.
2. **Tag everything that costs money.** Require owner, service, and environment tags on cloud resources, and report on untagged spend. Fix it before tuning anything else.
3. **Start with showback.** Show teams their costs before you charge them. Move to chargeback only when the data are trusted and the benefit is clear.
4. **Use unit costs.** Express cost per transaction, user, or service, as well as in total. Review the trend alongside demand and quality.
5. **Set budgets and alerts.** Agree budgets by service or team, and set alerts well before the limit. Review alerts with the owners, not only with finance.
6. **Bring finance and engineering into one conversation.** Hold a regular review where engineers explain what drives cost and finance explains constraints. Include a business owner who can judge value.
7. **Look for waste first.** Find unused or oversized resources, idle environments, and forgotten subscriptions. These savings carry little risk (see Topic 4.2 — Software Asset Management for subscriptions).
8. **Weigh savings against reliability.** Before cutting, ask what the change does to availability, performance, and recovery. Record the trade-off.
9. **Plan commitments with care.** Purchase commitments to providers can reduce cost, but lock in spend. Base them on stable usage, and review them regularly.
10. **Give teams authority and limits.** Let teams make cost decisions within agreed bounds, and require approval for decisions above them. Autonomy with visibility works better than central control alone.
11. **Include cost in design and in the definition of done.** Ask in design reviews what a feature will cost to run, and check after release.
12. **Learn and share.** Publish short notes on what saved money and what backfired. Use a maturity approach such as "crawl, walk, run" to grow the practice.

## Questions to discuss with your team

**Do we know what our main service costs to run, and who owns that number?**

Ask for the monthly cost of the largest service and how it is calculated. Often nobody can answer, or the answer comes from different sources. The facilitator can ask what would be needed to produce the number reliably, such as tags and a report. Choose one service to start with.

**What share of our cloud spend can we attribute to a named owner?**

Ask for the untagged share. A large share means cost cannot be managed. Discuss why resources are untagged: no rule, no tool, or no incentive. Agree on a tagging rule and a date for a first report.

**When did we last find a cost surprise, and how did we find out?**

Collect examples: a forgotten environment, a runaway job, a subscription that renewed. Ask how long it ran before discovery. Discuss alerts and reviews that would have caught it. Pick one alert to add.

**What would we cut if the budget fell by ten percent, and what would we lose?**

Ask the team to propose options and name the consequences, including for reliability. This question makes trade-offs explicit. Do not treat the answers as a plan; use them to start a conversation with finance and the business about value.

**What decisions about spending do engineers make today, and what should they make?**

List the cost decisions teams take: sizes, environments, tools, purchases. Ask what information they use. Discuss what bounds would be reasonable. Agree on one decision to hand over with limits.

**How do finance and engineering talk to each other, and when?**

Ask both groups. Typical answers: at budget time, or when something goes wrong. Discuss a regular joint review. The FinOps Foundation page names collaboration among engineers, finance, and business teams as the heart of the practice. Agree who will organize the first one.

## In practice: an agile ITIL example

A national library service moved its digital catalog, search, and public archives to a cloud provider over three years. The IT director is asked by the finance department why the monthly cloud bill has tripled since the move and why it is hard to explain. A team of ten runs the platform, and each of five project teams has its own cloud account.

The IT director and a finance analyst start by asking for cost data grouped by service. Most resources are untagged, so only a third of the cost can be attributed. They agree a tagging rule with the five teams and run a weekly report listing untagged spend by account. In six weeks the untagged share falls to under a tenth. The analyst then sets up a monthly showback report for each team, showing cost by service and cost per thousand searches for the search service. In the first review, engineers spot a development environment that has run at production size for a year, and a data-processing job that scans an archive more often than needed. Both are corrected. A monthly meeting with the library's head of collections lets the engineers explain what drives cost, such as the large volume of scanned images, and lets the head decide which collections to digitize first.

After two quarters, unit costs fall and the bill is predictable. Not everything is smooth. A cost-cutting change to the search index reduces speed at peak times, and users complain until the team restores capacity. The finance department also wants to buy a one-year commitment with the provider, while engineers are unsure that usage will stay stable, since a migration is planned. They agree to commit only for the stable part of the usage, and to review the commitment when the migration plan is clear.

## Four perspectives

### Product and delivery teams

Delivery teams make most cost decisions through design and configuration. Tag what you create, watch your costs, and ask what a feature will cost to run. Explain cost drivers to finance and the business in plain terms.

### Service and operations teams

Operations teams see utilization and waste. Share data on idle and oversized resources, help set sensible alerts, and ensure that cost savings do not undermine resilience. Keep the link between cost, capacity, and service levels visible.

### Leadership and governance

Leaders and finance set budgets, rules, and accountability. Ask for unit costs and trends, support a showback or chargeback model that people trust, and make decisions about commitments with engineers. Avoid cuts that harm reliability without discussing the trade-off.

### Customers and users

Customers and users pay for services directly or indirectly. Ask providers what drives the price of the services you use, and tell them what value matters most. If you are charged back, expect clear explanations and a way to question the figures.

## Common failure modes

- **Untagged cost.** Nobody owns the bill. Instead, require tags and report on the gap.
- **Finance and engineering in separate rooms.** Each side acts on partial information. Instead, hold a regular joint review with a business owner.
- **Chargeback before the data is trusted.** Disputes consume time. Instead, start with showback and improve the data.
- **Totals without unit costs.** Growth looks like waste or the reverse. Instead, track cost per transaction, user, or service.
- **Cutting cost at the expense of resilience.** Savings cause outages. Instead, state the trade-off and involve the service owner.
- **Overcommitting.** Long-term purchases lock in spend that usage cannot support. Instead, commit only for stable usage and review.
- **Central control only.** Teams wait for approval and bypass the process. Instead, give teams authority within limits, with visibility.
- **Quoting survey figures as fact.** Numbers from vendor surveys drive decisions. Instead, check original sources and use your own data.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Visibility and attribution | Cost is seen only as a total bill | Some teams see their cost | Most spend is tagged and attributed to services and owners | Unit costs and trends are reviewed against demand and quality | Cost data are shared across teams, suppliers, and finance with a common format |
| Governance and budgets | Budgets are annual and fixed | Some budgets and alerts exist | Budgets, alerts, and approval limits are standard | Variances are investigated and rules are tuned | Budget rules are aligned across the organization and partners |
| Collaboration | Finance and engineering meet at budget time | Some joint conversations | A regular joint review with a business owner | Decisions and outcomes are tracked and improved | Finance, engineering, business, and suppliers share goals and data |
| Optimization | Savings come from crises | Some waste is found | Waste, sizing, and commitments are reviewed regularly | Savings are measured against risks to reliability | Optimization is routine, shared, and balanced with service goals |

## Checklist

- [ ] We can state the monthly cost of each major service and who owns it.
- [ ] Cloud resources carry owner, service, and environment tags, and untagged spend is reported weekly or monthly.
- [ ] Teams receive a regular cost report for the services they own (showback).
- [ ] We track at least one unit cost for each major service.
- [ ] Budgets and alerts exist with owners, and alerts fire well before limits.
- [ ] Finance, engineering, and a business owner meet regularly about cost and value.
- [ ] We review unused and oversized resources and subscriptions at least quarterly.
- [ ] Cost cuts are reviewed for effects on reliability and performance.
- [ ] Purchase commitments are based on stable usage and reviewed.
- [ ] We have checked figures from vendor surveys against original sources before using them.

## AI prompts

**Purpose: analyze a cost report for unowned and unusual spend.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Purpose: define a unit cost for a service.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare for a joint review between engineering and finance.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: weigh a cost-saving proposal against reliability.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use to forecast IT and cloud spend and explain variances.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use to estimate future load so that cost forecasts reflect demand.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to link resource needs to cost and to service levels.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to manage provider contracts and commitments.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use to choose and fund services and initiatives by value and cost.

## Key sources

- **What is FinOps?** (FinOps Foundation, finops.org): the Foundation's own definition and description of collaboration among engineering, finance, and business teams.
- **Cloud computing** (Wikipedia): background on pricing models, cost control, and shared responsibility, with a notice on unverified text.
- **Total cost of ownership** (Wikipedia): background on counting all the costs of an asset or service over its life.
- **Software as a service** (Wikipedia): background on subscription pricing.

## References

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
