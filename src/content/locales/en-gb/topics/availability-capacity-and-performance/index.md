# Availability, Capacity, and Performance

**Availability, capacity, and performance are three views of whether a service is there, big enough, and fast enough when users need it, and the agile approach is to choose targets from user needs, price them honestly, and test them before demand arrives.**

## Why this matters

Users do not separate the three. A service that is "up" but too slow to use has failed them, and a service that is fast on a quiet day and falls over at peak has failed them at the moment they most need it. Teams that look at availability, capacity, and performance separately often miss the ways they interact: adding capacity changes cost and complexity, chasing perfect availability limits how fast you can change, and tuning for speed can reduce resilience.

Agile teams face a particular version of the problem. They change the service often, and each change can alter performance or resource needs in ways nobody tested. They also tend to work against short time horizons, so capacity needs that take months to arrange, such as hardware, contracts, or licenses, can be missed. The practices in this topic give a way to look ahead without returning to long-range planning for its own sake.

Google's *Site Reliability Engineering* book, in its chapter "Embracing Risk," is a clear source on the economics of availability: it says its approach does not aim for 100% reliability, because past a point maximising stability limits how fast new features can be developed, and reliability costs rise steeply. The [Wikipedia article on capacity planning](https://en.wikipedia.org/wiki/Capacity_planning) gives general definitions and strategies. Both are partial, and the ITIL vocabulary used here comes from widely published descriptions that this guide could not confirm against the framework owner's text.

## Core concepts

### Availability

**Availability** is the ability of a service to do what users need when they need it. A common way to express it is as a percentage over a period. The SRE chapter notes two ways to measure it. For a single system, availability is time-based: 99.99% allows about 52.56 minutes of unplanned downtime per year. For distributed services that are partly up at all times, it is better measured as the request success rate over a rolling window; the chapter's example is a service with 2.5 million daily requests and a 99.99% target, which allows up to 250 errors. The chapter focuses on unplanned downtime. Planned downtime needs its own agreement with users.

### The price of each extra nine

The chapter says reliability costs rise nonlinearly: one extra nine may cost 100 times the previous increment, including redundant resources and the opportunity cost of engineers not building user-facing features. It gives an illustration: raising availability from 99.9% to 99.99% on a service with $1 million of revenue is worth about $900 in value, so the investment pays off only if the extra nine costs less than that. The numbers are the source's example, and your own must come from your own revenue or value. The principle holds: choose the availability that users need, and price anything beyond it.

### Risk tolerance

The chapter describes working with product owners to turn business goals into explicit objectives. Factors include the required availability, the shape of failures (a constant low error rate versus occasional full outages, with data exposure being especially severe), cost, and other measures such as latency. It notes that infrastructure serving many clients can be offered at explicitly defined service levels, so that each client chooses the cheapest level that meets its needs.

### Error budgets

The chapter explains the error budget as a shared, objective measure between product teams, who are measured on velocity, and reliability teams, who are measured on reliability. While budget remains, releases continue. When it is spent, releases slow and effort moves to reliability (see Topic 3.7 — Service Level Management).

### Capacity

The Wikipedia article defines capacity planning as determining the production capacity an organisation needs to meet changing demand, and says that in IT it is a synonym for capacity management: estimating the storage, hardware, software, and connectivity resources needed over a future period. The article distinguishes **design capacity**, the maximum possible output, from **effective capacity**, the output after constraints. In practice, plan for effective capacity, which is always lower than the design figure.

### Capacity strategies

The article describes four strategies for adding capacity:

| Strategy | What it means | Trade-off |
|---|---|---|
| **Lead** | Add capacity ahead of demand | Good service and short lead times, but risky if demand is unpredictable |
| **Lag** | Add capacity only after running at or beyond full capacity | Lower risk of overbuilding, but may lose customers |
| **Match** | Add capacity in small increments as demand changes | Balanced, needs good monitoring |
| **Adjustment** | Add or reduce capacity by small or large amounts as demand or architecture changes | Flexible, needs fast provisioning |

The article describes short-, mid-, and long-term planning (operational, tactical, and strategic), from days to years. In a cloud setting, "match" and "adjustment" are often easier because resources can be added quickly, but cost and contracts still need planning (see Topic 4.5 — IT Financial Management and FinOps).

### Performance

**Performance** is how fast and how well the service responds. The SRE book's chapter on monitoring suggests measuring latency, traffic, errors, and saturation, and it warns that means hide slow outliers (see Topic 3.10 — Monitoring and Event Management). Saturation, how "full" the service is, links performance to capacity: the chapter notes that performance often degrades before 100% utilisation.

### How the three interact

- More capacity can raise availability and performance, at a cost.
- High availability targets usually need redundancy, which is extra capacity.
- Tuning for peak performance may reduce headroom for failure.
- Changes to the service alter all three, which is why testing matters.

A useful discipline is to state the targets together for each service: how available, how fast, and how much load it must carry.

### Demand and forecasting

Capacity depends on demand. Demand comes from users and from the business: marketing campaigns, seasonal peaks, new customers. The business knows more about the future than IT does, so ask. Plan with ranges instead of single numbers, and revisit the forecast regularly (see the demand forecasting skill below).

### Testing

Capacity and performance claims are hypotheses until tested. Load testing and performance testing apply realistic demand to see how the service behaves, and chaos testing introduces failures to see whether availability holds. These can be part of the delivery pipeline.

### Limits of the sources

The Wikipedia article on capacity planning does not mention ITIL capacity management or analyse the relation between capacity, performance, and availability, and its section on assets is flagged as lacking citations. The SRE chapter describes the practices of a very large organisation with distinct economics. Use them for principles, not for numbers.

## Best practices

1. **State availability, performance, and load targets together.** For each service, write how available it must be, how fast it must respond, and how much load it must carry. Base them on user needs and agree them with the service owner and customers.
2. **Price the targets.** Estimate what an extra level of availability or speed costs, in money and in delayed features. Compare it with what users and the business would gain. Use your own figures, not the example in a book.
3. **Measure availability in a way that matches the service.** For services that are partly up all the time, use success rate over a rolling window as the SRE chapter does. For simple systems, use time-based measures. Count unplanned and planned downtime separately.
4. **Plan for effective capacity.** Estimate what the service can carry after real constraints such as overhead, failure of components, and maintenance. Keep a margin.
5. **Choose a capacity strategy on purpose.** Decide whether to lead, lag, or match for each resource, based on lead times, cost of shortage, and cost of overbuilding. Write the choice down and revisit it.
6. **Ask the business about demand.** Meet marketing, sales, and operations leaders on a regular cycle to learn about campaigns, launches, and seasonal peaks. Record the expected load with ranges.
7. **Watch saturation.** Track how full key resources are and set alerts well before the point where performance degrades. Know the level at which your service starts to slow.
8. **Test before the peak.** Run load and performance tests that resemble real traffic, ahead of known peaks and after significant changes. Fix what you find while there is time.
9. **Test failure, not only load.** Practice losing a component, a zone, or a supplier in a safe environment and see whether availability holds (see the chaos testing skill below).
10. **Include capacity in change and release work.** Ask in design and review whether a change alters resource needs. Add performance checks to the pipeline for the paths that matter (see Topic 3.5 — Release and Deployment Management).
11. **Use the error budget to settle trade-offs.** When there is budget, spend it on change. When it is spent, spend effort on reliability and capacity. Review the rule with delivery and operations together.
12. **Review forecasts against actuals.** Each quarter, compare predicted and actual demand and adjust your method. Treat surprises as information.

## Questions to discuss with your team

**What do our users really need in availability, speed, and capacity, and who decided?**

Ask for the current targets and where they came from. Often they were set long ago, or by the team without asking users. Ask users and customers what hurts most. Discuss whether the targets match. The facilitator can ask what would happen if the target were one step lower, and what that would free.

**What does the next nine cost us?**

Pick a service with a high availability target. Estimate what it would cost to raise or lower it by one step, in money and in delayed work. Compare with the value to users. The SRE chapter's example shows how quickly the arithmetic can turn against a higher target. Do the calculation with your own numbers and record the assumptions.

**What is the next demand peak we know about, and what have we done to prepare?**

List the known peaks: a campaign, a deadline, a seasonal rush. For each, ask who knows the expected load and whether the service has been tested at that level. Often nobody has asked. Agree on a person to gather the numbers and a date for the test.

**Where is our service closest to saturation, and what happens when it gets there?**

Ask for the most heavily used resource. Look at the trend. Ask what the service does at that limit: slows, errors, or fails. If nobody knows, test it. Choose a threshold at which to act and an alert for it.

**Which of our last few changes affected performance or capacity, and did we know in advance?**

Review recent changes and ask how performance was checked. If it was not, discuss what a lightweight check would be. Typical options are a test on the critical path or a canary release with monitoring. Agree on one for the next release.

**If one component failed right now, what would happen to availability?**

Take a key service and trace a failure of a database, a zone, or a supplier. Ask what the design assumes and what has been tested. Gaps between assumption and evidence are risks. Plan one controlled failure test in a safe environment.

## In practice: an agile ITIL example

A national pension authority runs an online service where citizens check their entitlements and submit forms. The service has a quiet year except for the weeks after annual statements are posted, when traffic rises to several times the normal level. Last year the service slowed to the point that many users gave up, and the call centre was overwhelmed. The platform team of nine and the operations manager want to avoid a repeat.

The team starts by asking the communications office for the expected load. The office says statements will be sent in two batches and gives dates, but no figures. The team estimates the range from last year's data and sets an aim: the forms page must respond within an acceptable time for the expected peak, and the service must stay available through the two batches. They run a load test on a copy of production and find that the database is the first resource to saturate, well below the predicted peak. They adopt a "lead" strategy for the database, since the lead time to add capacity is long, and a "match" strategy for the web servers, which can be added in minutes. A failure test shows that losing one database node halves capacity, which would be unacceptable at peak, so they add a spare.

At the peak, the service stays up and response times hold in the first batch. In the second batch a payment-confirmation component that nobody had tested slows under load, and some users see delays. The team did not know about this dependency's limit and had not been told that the second batch would be larger. They add the component to the next load test, ask the communications office for the volume of each batch earlier, and agree to review the forecast process in the next quarter.

## Four perspectives

### Product and delivery teams

Delivery teams affect all three through design and change. Include performance and capacity in design reviews and in the pipeline. Tell operations about changes that alter load, and ask the business about expected demand.

### Service and operations teams

Operations teams usually carry the monitoring and capacity plans. Track saturation and trend, keep a view of lead times for resources, and bring evidence to planning. Help the business understand what each level of availability costs.

### Leadership and governance

Leaders set the price they are willing to pay for reliability and speed. Ask for targets that match user needs, with costs, and accept that perfect availability is not a sensible aim. Support testing before known peaks and the budget for resilience where it matters.

### Customers and users

Customers and users feel the result. Tell the provider when you expect extra load, such as a campaign or deadline, and what matters most to you in speed and availability. Report slowness as well as outages, since both are failures from your side.

## Common failure modes

- **Targets from habit.** "Five nines" is demanded without asking why. Instead, derive targets from user needs and price them.
- **Surprise peaks.** The business knows about a campaign and IT does not. Instead, meet on a regular cycle and record expected load.
- **Averages for performance.** Slow outliers go unseen. Instead, look at high percentiles and saturation.
- **Capacity added only after trouble.** Lag strategy is used by accident. Instead, choose a strategy on purpose, based on lead times.
- **Untested resilience.** Redundancy exists on paper. Instead, test failure of components in a safe environment.
- **Changes without performance checks.** A release degrades speed. Instead, add checks to the pipeline for the paths that matter.
- **Forgetting dependencies.** A third-party component limits the whole service. Instead, list dependencies and test them.
- **Treating the forecast as fixed.** Plans ignore error. Instead, use ranges and compare forecasts with actuals.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Targets and cost | Targets are informal or copied | Some services have stated targets | Services have agreed availability, performance, and load targets with known costs | Targets and costs are reviewed against outcomes | Targets are set jointly with customers and suppliers and adjusted by evidence |
| Demand and capacity planning | Capacity is added after trouble | Some teams forecast known peaks | Demand is gathered from the business on a cycle, with a stated capacity strategy | Forecast accuracy is tracked and methods improved | Planning is coordinated across teams, suppliers, and the business |
| Testing | Little testing of load or failure | Some tests before big events | Load and failure tests are routine for key services | Test results drive tracked improvements | Tests are shared and coordinated across dependent services |
| Monitoring and response | Problems are noticed late | Some saturation is tracked | Saturation, latency, and errors are monitored with alerts before limits | Trends and thresholds are tuned from data | Signals and responses are coordinated across teams and suppliers |

## Checklist

- [ ] Each service has stated targets for availability, performance, and load, with their source.
- [ ] We have estimated what the next level of availability would cost.
- [ ] We know how availability is measured for each service, and what counts as downtime.
- [ ] We have chosen a capacity strategy for each key resource.
- [ ] We meet the business regularly to learn about expected demand.
- [ ] Saturation of key resources is monitored with alerts before limits.
- [ ] Load tests have been run before the last known peak.
- [ ] A failure of at least one key component has been tested in a safe environment.
- [ ] Changes that affect performance or capacity are flagged in review.
- [ ] Forecasts are compared with actual demand each quarter.

## AI prompts

**Purpose: turn measured data into a view of capacity headroom.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Purpose: price a higher availability target.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a load test before a known peak.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: design a failure test.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to estimate the resources a service needs over time and choose a strategy for adding them.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use to estimate future load as a range from past data and business plans.
- [load-testing](../../../../skills/load-testing/SKILL.md): use to design tests that apply realistic demand before a peak.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): use to check speed and resource use on critical paths as part of delivery.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use to test whether availability holds when components fail.

## Key sources

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): the economics of availability, request-based measurement, and the error budget.
- **Capacity planning** (Wikipedia): definitions and the lead, lag, match, and adjustment strategies.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): the golden signals including saturation.
- **High availability** (Wikipedia): background on designing systems for continuous operation.

## References

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
