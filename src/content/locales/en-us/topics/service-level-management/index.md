# Service Level Management

**Service level management turns what users need into targets that a team can measure and defend, and the most useful form for agile teams is a small number of user-focused objectives with an explicit budget for failure.**

## Why this matters

Every service has a level of quality, whether anyone has measured it or not. If it is not stated, users assume one and the team assumes another, and the gap is discovered during an outage. Service level management is the practice of stating the level, measuring it, and acting on the results. It gives a team something to steer by and gives customers something to rely on.

Agile teams often resist service levels because they associate them with contracts and penalties. Yet an agile team that releases weekly is making a decision, whether it knows it or not, about how much risk to take with availability. A clear objective makes that decision explicit. Google's *Site Reliability Engineering* book, in its chapter on service level objectives, describes how to do this in a way that suits fast-moving teams: pick a few indicators that matter to users, set targets, and use the room between perfect and acceptable, the error budget, to decide when to release.

This topic combines that chapter with the [Wikipedia article on service-level agreements](https://en.wikipedia.org/wiki/Service-level_agreement) for definitions of agreements, and with widely used ITIL vocabulary that this guide could not confirm against the framework owner's text. The SRE chapter reflects one organization's practice and argues for a specific approach; read it as a well-explained option, not a universal rule.

## Core concepts

### Indicator, objective, agreement

The SRE chapter distinguishes three terms that are often muddled:

| Term | Meaning | Example |
|---|---|---|
| **Service level indicator (SLI)** | A carefully defined quantitative measure of some aspect of the level of service | The fraction of well-formed requests that succeed |
| **Service level objective (SLO)** | A target value or range for an SLI | At least 99.9% of requests succeed over a month |
| **Service level agreement (SLA)** | An explicit or implicit contract with users that includes consequences for meeting or missing the objectives, most often financial | A refund if availability falls below a stated level |

The chapter's test for telling an SLA from an SLO is whether there is an explicit consequence. If not, it is an SLO. The example numbers in the table are illustrations, not recommendations.

The Wikipedia article describes an SLA as an agreement, typically a binding contract, between a provider and a customer that defines aspects of the service such as quality, availability, and responsibilities. It lists typical contents: a description of the service, performance levels, monitoring and reporting, how issues are reported, response and resolution timeframes, and consequences for non-performance. It names common metrics such as mean time between failures, mean time to repair, uptime, first-call resolution, and turnaround time. It notes that large organizations often use internal SLAs between units. It describes types by scope: customer-based, service-based, and multilevel.

### Choosing indicators

The SRE chapter advises choosing a few indicators that reflect what users care about, not every metric you can track. User-facing systems usually focus on availability, latency, and throughput. Storage systems add durability, and all systems should track correctness. It suggests that client-side measurement can catch problems that server-side metrics miss. A practical consequence for service teams: start with the user's experience, such as "I can book an appointment and it takes a few seconds," then find an indicator that approximates it.

### Averages hide pain

The chapter argues against relying on averages: "Most metrics are better thought of as distributions rather than averages." High percentiles, such as the 99th or 99.9th, show plausible worst cases, while the median shows the typical case. Averages can hide a long tail of slow requests. If your measure is an average, a few users could be having a very bad time without the number moving.

### Choosing targets

The chapter's guidance on targets is direct and useful:

- **Start from users.** "Start by thinking about (or finding out!) what your users care about, not what you can measure."
- **Do not anchor on current performance.** Picking a target based on what you achieve now can lock in heroic effort.
- **Keep it simple.** Complicated aggregations obscure changes and are harder to reason about.
- **Avoid absolutes.** Promises of "always" available are unrealistic.
- **Have as few SLOs as possible.** Each one should be worth defending in a priority discussion.
- **Perfection can wait.** It is better to start with a loose target that you tighten than one that must later be relaxed.

### Error budgets

The chapter says requiring 100% compliance is unrealistic and slows innovation. Instead, teams allow an **error budget**: the rate at which an SLO can be missed, tracked daily, weekly, or monthly. The budget informs decisions about releases. When there is plenty of budget left, a team can take more risk with change; when it is nearly spent, the team slows change and invests in reliability. This gives agile teams and operations a shared, numerical way to argue about speed versus stability, in place of argument by authority.

### Setting expectations

The chapter notes that publishing an SLO sets user expectations. Teams can keep a safety margin with a tighter internal target. It also warns against overachieving, since users come to depend on whatever performance they observe. If a service is far better than its stated objective, users will build on that, and the objective no longer protects the team.

### The control loop

The chapter describes SLIs and SLOs as the basis of a control loop: monitor the SLIs, compare them with the SLOs, decide whether action is needed, work out what action will meet the target, and take it. Without an SLO, a team cannot tell whether or when to act (see Topic 3.10 — Monitoring and Event Management).

### Internal and external agreements

An SLA is between a provider and a customer. Within a provider, teams depend on each other and on suppliers. The Wikipedia article mentions that SLAs may be supported by operational-level agreements (OLAs) but does not explain them. In ITIL vocabulary, an OLA is an agreement between internal teams that supports an SLA, and an underpinning contract is the equivalent with an external supplier. The sources read here do not confirm those definitions, so check them against ITIL publications. The practical point is that a promise to a customer is only as good as the promises behind it (see Topic 3.14 — Supplier Management).

### Service level expectations in Kanban

In Kanban, a **service level expectation** is a forecast of how long a work item should take, based on past cycle times (see Topic 1.5 — Kanban). It is not an agreement, but it serves a similar purpose for items of work, and can feed targets for requests and incidents.

## Best practices

1. **Start with what users need.** Ask users and customers what matters most and what hurts when it fails. Write it in their words before you choose a measure.
2. **Choose a few indicators.** For each service, pick two to four indicators that reflect user experience, such as success rate and speed. Resist adding more until you have used these.
3. **Use percentiles for speed.** Measure the slow end of the distribution, not only the average, so that users with a bad experience are visible.
4. **Set loose targets first, then tighten.** Begin with a target you can meet and defend, and tighten it once you have data and confidence. This follows the chapter's advice that perfection can wait.
5. **Do not copy current performance.** If your service is currently excellent, do not set an objective at that level unless users need it. A looser objective gives room for change and avoids heroic effort.
6. **Agree an error budget and use it.** Define how much failure is acceptable in a period, and let the remaining budget guide release decisions. Review it in a regular meeting with delivery and operations together.
7. **Write the agreement in plain language.** An SLA should say what is provided, how it is measured, how problems are reported, what happens when targets are missed, and when it is reviewed. Avoid terms that only a lawyer or engineer can read.
8. **Separate objectives from agreements.** Keep internal objectives that are tighter than the agreements you sign. The margin gives you room to react before you owe anything.
9. **Know what your promise depends on.** List the teams and suppliers that your service level relies on, and check that their commitments support yours.
10. **Report in a form customers can use.** Share results regularly, with a short comment on what happened and what you are doing. Avoid dashboards without commentary.
11. **Review targets with customers.** At least yearly, ask whether the levels still match what customers need and what you can deliver. Change them when the answer is no.
12. **Do not use service levels to punish people.** Use them to start conversations and decisions. A target that is used as a stick will be gamed (see Topic 5.6 — Metrics and Measurement).

## Questions to discuss with your team

**What does a good day look like for our users, and how would we know?**

Ask the team to describe, in the user's words, what a good experience of the service is. Then ask what we measure that corresponds to it. Often the measures we have describe our systems and not the user's experience. The facilitator can ask whether we would notice if a group of users had a bad day. Pick one indicator to add or change.

**Do we have a number we promise or aim for, and who agreed to it?**

List the targets that exist, formally or informally. For each, ask who set it, when, and on what basis. Many targets turn out to have been set by habit or by someone who left. Discuss which should be confirmed, changed, or dropped. Agree who owns each.

**How much failure can we afford, and what would we do with the room?**

Introduce the idea of an error budget. Ask what level of unavailability users would tolerate and what the team could do with the room, such as faster releases. The aim is to see the trade-off in numbers. Do not expect precise answers; ask for a first guess to test.

**Where are our averages hiding bad experiences?**

Look at one measure that reports an average. Ask what the slowest one percent of users experience. If you do not know, discuss how to find out. Often a small group of users or a particular time of day has a much worse experience. Plan to look at one percentile for a month.

**What do we depend on that we have not asked about?**

List the services, suppliers, and teams your service relies on. For each, ask what they have promised and how you would know if they missed it. Many dependencies have no stated level. Choose the most important and open a conversation.

**When did a target last change, and what triggered it?**

Ask for the last change. If it was a long time ago, ask what has changed in user needs or in the team's ability since. Discuss a regular review. Good triggers are new user needs, incidents that exposed an unrealistic target, or a change in architecture.

## In practice: an agile ITIL example

A national lottery operator runs an online ticket-purchase service. A team of twelve builds and runs it. The business has an informal rule that the service must be "always up," while the team releases twice a week and has had four short outages in a year. After a bad weekend, the executive sponsor demands "100% availability," and the team lead is worried that this will end frequent releases.

The team lead and the sponsor hold a workshop with the head of customer service. They ask what matters to players. The answer is that players must be able to buy a ticket in the hour before a draw closes; outside that hour the service can be down for minutes without harm. They define an indicator: the share of purchase attempts that succeed in the two hours before each draw closes. They set an objective that the team believes it can meet, a little below its recent performance, and agree an error budget for each month. They also agree that when the budget is nearly spent, releases that touch purchasing stop until the next month, and the team invests in reliability.

Three months later the budget is used up once, in a month with a payment-provider failure, and the team pauses risky releases for two weeks without conflict. The objective gives the team and sponsor a shared way to talk. Some difficulties remain. The payment provider's own commitment is weaker than the team's objective, so the team's promise depends on a supplier that has not agreed to it. The measure also ignores a slow checkout page that users complain about, because it counts only success. The team adds a speed indicator at the 99th percentile and opens talks with the provider about its service levels.

## Four perspectives

### Product and delivery teams

Delivery teams should help choose indicators and use the error budget in planning. Build the measurement into the service so that the numbers are reliable. Treat a depleted budget as a reason to work on reliability, not as a punishment.

### Service and operations teams

Operations teams usually run the monitoring and report on levels. Keep the set of measures small, show them with commentary, and bring the data to planning conversations. Keep a list of what your service depends on and check that commitments line up.

### Leadership and governance

Leaders and sponsors set expectations. Avoid asking for perfection; ask what users need and what the trade-off costs. Support the use of an error budget as a shared rule, and make sure it applies to your own requests too. Review service levels with customers on a schedule.

### Customers and users

Customers and users benefit when the level of service is stated and met. Say what matters to you, including when. Ask for reports in a form you can understand, and tell the provider when the stated level no longer fits your needs.

## Common failure modes

- **Too many metrics.** Nobody knows which one matters. Instead, choose a few that reflect user experience.
- **Averages only.** A group of users suffers while the average looks fine. Instead, include a high-percentile measure.
- **Targets copied from current performance.** The team is locked into heroics. Instead, set objectives from user needs and tighten with data.
- **Demanding 100%.** Releases stop and innovation slows. Instead, agree an error budget and a rule for using it.
- **Promises you cannot back.** The service level depends on suppliers that have not agreed. Instead, check dependencies and align commitments.
- **Agreements nobody reads.** Terms are in legal language. Instead, write plainly and review with customers.
- **Dashboards without commentary.** Numbers are reported without meaning. Instead, add a short explanation of what happened and what will change.
- **Punishing misses.** People hide problems. Instead, use misses to prompt decisions and learning.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Defining levels | Levels are assumed or informal | Some services have stated targets | Each service has user-based indicators and objectives with owners | Objectives are reviewed against user needs and data | Levels are set jointly with customers and suppliers |
| Measuring | Measures are ad hoc | Some indicators are measured | Indicators are measured reliably, including percentiles | Measurement quality is reviewed and gaps fixed | Measurement is shared and validated across teams and suppliers |
| Using error budgets | Failure is unplanned | Some teams discuss acceptable failure | Budgets guide release decisions on key services | Budget use is reviewed and rules are tuned | Budgets are coordinated across dependent services |
| Agreements and dependencies | Promises are informal | Some agreements exist | Agreements are in plain language, with known dependencies | Agreements and supplier commitments are checked against results | Agreements form a consistent chain across teams, suppliers, and customers |

## Checklist

- [ ] For each service, we have described in users' words what good looks like.
- [ ] Each service has two to four indicators that reflect user experience.
- [ ] At least one speed measure uses a high percentile, not only an average.
- [ ] Objectives are set from user needs, not only from current performance.
- [ ] An error budget exists and guides release decisions for at least one service.
- [ ] Agreements are written in plain language and reviewed with customers.
- [ ] Dependencies on other teams and suppliers are listed with their commitments.
- [ ] Results are reported regularly with commentary.
- [ ] Targets are reviewed at least once a year.
- [ ] Service level data are used in planning and not as a stick.

## AI prompts

**Purpose: turn user needs into candidate indicators and objectives.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: analyze whether averages are hiding bad experiences.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Purpose: draft a plain-language service level agreement outline.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: plan an error budget policy.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use to draft or review an agreement in plain language.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use to choose and interpret measures of delivery and service performance.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use to select early-warning indicators that show a service level is at risk.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to check that capacity supports the levels you promise.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to align supplier commitments with the levels you offer.

## Key sources

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): the clearest public explanation of indicators, objectives, agreements, percentiles, and error budgets.
- **Service-level agreement** (Wikipedia): the definition, typical contents, types, and history of SLAs.
- **DORA's software delivery performance metrics** (dora.dev): related measures of delivery speed and stability.
- **Quality of service** (Wikipedia): background on how service quality is described and measured.

## References

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
