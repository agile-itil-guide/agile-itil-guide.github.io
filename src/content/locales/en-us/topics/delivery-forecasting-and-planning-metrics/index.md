# Delivery Forecasting and Planning Metrics

**Delivery forecasting and planning metrics let a team say, with honest ranges, when work is likely to finish and how much it can take on, by watching the continuous flow of finished work and the capacity of the team, and they work for service teams when planned work and interrupt-driven work are counted together.**

## Why this matters

Agile teams aim for continuous software delivery, and everyone who depends on that delivery asks the same questions: when will this be done, how much can the team take on, and what happens when something urgent arrives? A team that cannot answer these questions with evidence falls back on promises it cannot keep, and the people who depend on it learn to distrust every date.

A team that runs services feels this more sharply than most. Planned improvement work, service requests, and incidents share the same people. A plan that ignores the unplanned part will fail the first week an incident arrives. A forecast that comes from the team's own history, and states its range, survives contact with reality better than a date that comes from hope.

This topic describes how to forecast from the flow of finished work, how to plan around team capacity, and which planning metrics help or mislead. Scrum, sprints, and velocity are one way to plan; a short section near the end covers them for teams that use them. The measures here build on the flow measures in Topic 1.5 — Kanban and the wider measurement guidance in Topic 5.6 — Metrics and Measurement.

## Core concepts

### Forecast from flow, not from promises

A forecast is a statement about the future based on evidence from the past, and it carries uncertainty. The Kanban Guide defines a service level expectation as a forecast of how long a work item should take to flow through the workflow, based on past cycle times, and it says this is not an agreement. That definition is a good model for all delivery forecasting: use real history, say what it covers, and avoid promising more than you have measured (see Topic 1.5 — Kanban).

Two kinds of forecast are common:

- **How long will one item take?** Look at how long similar finished items took, and state a range or a statement such as "most items of this type finish within a given number of days."
- **How much will we finish by a date, or when will a set of items finish?** Look at how many items the team usually finishes in a period, and apply that range to the work that remains.

### The flow measures behind a forecast

The Kanban Guide defines four measures, and they are the raw material of delivery forecasting:

| Measure | What it tells you | How it feeds a forecast |
|---|---|---|
| **Cycle time** | How long a finished item took from start to finish | The spread of recent cycle times gives a range for how long a new item will take |
| **Throughput** | How many items were finished in a period | The range of recent throughput gives a range for how much will finish in a future period |
| **Work in progress (WIP)** | How many items are started but not finished | Too much WIP lengthens cycle times and makes every forecast less reliable |
| **Work item age** | How long an unfinished item has been in progress | Shows items that are already older than most finished ones, while there is time to act |

The guide notes that teams may rename these measures and should add others where useful, and that measures matter only when they inform how the team works. Use percentiles and ranges, not only averages, because long tails hide in averages (see Topic 5.6 — Metrics and Measurement).

### A simple forecasting method

A team can forecast without special tools:

1. Collect the throughput for each of the last eight to twelve weeks, or similar periods, from real finished items.
2. Take the lowest, a typical, and the highest of these figures.
3. Divide the number of items remaining by each figure to get a range of periods to finish.
4. State the range, the data it came from, and what would change it, such as new work, a team change, or a dependency.

This is a rule of thumb, not a standard. It assumes that future work resembles past work and that items are of broadly similar size. When that is false, say so, and treat the range as wider. Compare each forecast with what happened and adjust the method, as Topic 3.11 — Availability, Capacity, and Performance advises for demand forecasts.

### Team capacity

Capacity is how much work a team can absorb in a period. For a delivery team it is not the number of people multiplied by the days in the period. Leave, support duties, meetings, and unplanned work all reduce what is available for planned items. A useful capacity statement lists people and days available, then subtracts a share held back for unplanned work, based on what the last several periods showed.

The capacity-planning skill and Topic 3.11 — Availability, Capacity, and Performance describe capacity for services and infrastructure. The same logic applies to a team: plan with ranges, check against what happened, and revisit the plan when the facts change.

### Planned and unplanned work together

Service teams receive incidents, urgent requests, and changes that nobody scheduled. If these are not counted, the forecast for planned work will be too optimistic. Give unplanned work its own item types, count how many arrive and how long they take, and keep the data next to the planned work. This also gives the Product Owner or service owner evidence about which recurring incidents consume capacity, which supports decisions about fixing causes (see Topic 3.3 — Problem Management).

### Continuous delivery flow and release cadence

Teams that deliver continuously release small changes when they are ready, instead of waiting for the end of a planning period. This shortens the time between finishing and delivering, and it makes forecasts simpler to check: each finished item is a data point. Changes still follow the organization's change enablement approach, and pre-authorized standard changes help here (see Topic 3.4 — Change Enablement and Topic 3.5 — Release and Deployment Management).

### If you use Scrum, sprints, and velocity

Some teams plan in fixed-length cycles. The 2020 Scrum Guide, by Ken Schwaber and Jeff Sutherland, defines Scrum as a lightweight framework for adaptive solutions to complex problems. Its events happen within the Sprint, a timebox of one month or less. This section covers the minimum a team needs if it uses them; read the guide itself before changing a team's way of working.

- **Sprint and Sprint Goal:** the Sprint is the timebox, and the Sprint Goal is the single objective for it. A goal someone outside the team can understand guides choices better than a list of tickets.
- **Product Backlog, Product Owner, and Scrum Master:** the Product Backlog is an ordered list of what the product needs. The Product Owner is one person accountable for its order, and the Scrum Master is accountable for establishing Scrum and helping the team apply it.
- **Increment and Definition of Done:** an Increment is a usable, verified step toward the Product Goal, and the Definition of Done is the quality standard that work must meet to count. A service team can include monitoring, a runbook, and a tested rollback in it.
- **Events:** Sprint Planning, the Daily Scrum, the Sprint Review, and the Sprint Retrospective. The retrospective is where the team inspects how it worked and plans improvements (see Topic 6.1 — Team Conversations).
- **Velocity:** an estimate-based figure that some teams use to plan how much work to take on. Use it for the team's own planning only. If it becomes a target, teams inflate estimates, so prefer flow measures, which count finished items, and outcome measures.

The guide says Scrum is a framework, not a complete method. It does not cover incident response, service levels, or the change process, and using only parts of it does not make the result Scrum. If you adapt it, name the variation honestly. A mix of Scrum events and Kanban flow is sometimes called [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Best practices

1. **Forecast from your own history.** Use the cycle times and throughput of recent finished items, and state the period the data covers. Do not borrow numbers from another team.
2. **Give a range, not a single date.** Show a low, a typical, and a high case, and say what would move the result. A date with no range promises certainty you do not have.
3. **Count unplanned work.** Log incidents, urgent requests, and interrupts as work items with their own types. Measure how many arrive and how long they take.
4. **Set capacity from data.** List people and days available, subtract leave and support duties, and hold back a share for unplanned work based on recent periods. Revisit the share regularly.
5. **Limit work in progress.** Too much started work lengthens cycle times and weakens every forecast. Set a limit and review it when the data change (see Topic 1.5 — Kanban).
6. **Watch work item age daily.** Age shows trouble in unfinished items while there is still time to act. Review the oldest items first.
7. **Use percentiles and distributions.** Say that most items of a type finish within a number of days, and show the slow tail. Averages hide it.
8. **Compare forecasts with actuals.** After each period, record what was forecast and what happened. Adjust the method, not only the number.
9. **Keep estimates for planning, not for judging.** If the team estimates items, use the figures for its own planning, and do not rank people or teams by them (see Topic 5.6 — Metrics and Measurement).
10. **Make forecasts visible to the people who depend on them.** Share the range and the assumptions with customers and stakeholders, and update them when the facts change.
11. **Bring improvement work into the same flow.** Put problem fixes, monitoring work, and automation next to features, so that the trade-offs are visible (see Topic 3.15 — Continual Improvement).
12. **If you use sprints and velocity, keep them small and honest.** Agree which parts of Scrum you follow, name the variation, and test a flow-based approach if interrupts dominate.

## Questions to discuss with your team

**How do we answer "when will this be done?" today, and what is the answer based on?**

Ask for the last three answers the team gave and what each was based on. Compare them with what happened. Teams often find that dates came from hope or from the most senior person's opinion. Follow up by asking what history the team could use instead.

**What share of our time goes to work nobody planned, and do we know it from data?**

Tally planned items, urgent requests, and incidents over the last several weeks. The facilitator can ask whether the share is stable or varies by season, and who decides when an interrupt wins over planned work. Agree on how to record it from now on.

**What do our cycle times look like, and what would we say if a customer asked how long a typical request takes?**

Plot or list the cycle times of the last finished items. Ask what most take, what the slowest take, and what explains the slow ones. Discuss whether a service level expectation based on this history would be fair, and who should hear it.

**Which of our current items are already older than most finished items?**

Look at the oldest open items. Ask why each is stuck, who can unblock it, and what the team will do today. Close by deciding how often the team will review age.

**When did a forecast of ours last turn out wrong, and what did we change afterwards?**

Ask for a recent example, the forecast, and the outcome. Look for what the forecast missed: unplanned work, a dependency, or items bigger than expected. Agree on one change to the method and how the team will check it.

**If we use sprints or velocity, what are they doing for us, and what would we lose if we dropped them?**

Ask honestly what problem each solves. Look for evidence, such as better focus or clearer goals, and for harm, such as inflated estimates or ignored interrupts. A facilitator should watch for any change that removes feedback loops, which are the useful parts. Agree on one experiment and how to compare results.

## In practice: an agile ITIL example

A regional hospital's IT department has a team of seven who maintain the patient-scheduling application. Clinic managers ask for dates, and the team has been giving them. Most of the dates are missed, because incidents from the wards, requests from clinics, and security patching keep arriving, and the team spends most days on them.

The team lead starts to log every item, planned or not, with its start and finish dates. After eight weeks the data show that about half the team's time goes on unplanned work and that most planned items finish in under two weeks, with a long tail of items that wait for another team. The team agrees on three changes. It will state each forecast as a range, using recent throughput and cycle times. It will hold back half of its capacity for unplanned work and plan only against the rest. It will review the oldest open items every morning.

Over the next two months the forecasts are mostly right, and the clinic managers, who now see a range and its assumptions, plan around it. The service owner, a clinic operations manager, can see which recurring incidents consume capacity, and raises the priority of a fix for a recurring appointment-sync failure; the failure stops. Difficulties remain. A major incident still pushes some work out, and the managers who liked the quick answers of the old arrangement find the ranges less satisfying. The team agrees to tell them what changed in the forecast whenever it moves, and to compare its approach with a fixed-cycle method for the improvement work at the next review.

## Four perspectives

### Product and delivery teams

Delivery teams gain the most from forecasting with their own flow data. Log work as it starts and finishes, limit work in progress, and release small changes continuously. Share the range with the people waiting, and use the Definition of Done, if you have one, to include the operational work that makes a release supportable.

### Service and operations teams

Operations teams own the unplanned work that makes forecasts fail. Record incidents, requests, and changes as work items, and share recurring patterns so that they influence the order of work. Use cycle time data to set realistic expectations with customers, and be explicit about how much capacity goes to planned improvement.

### Leadership and governance

Leaders get a more honest picture from forecast ranges and flow measures than from status reports. Ask for ranges with their assumptions, for forecast accuracy over time, and for what the team changed because of the data. Avoid targeting individual numbers, which produces gaming, and accept that a forecast will move when the facts do.

### Customers and users

Customers and users benefit from clearer expectations and fewer missed dates. Ask the team for the expected time for your type of request and expect it to rest on history. If your request is urgent, expect to be asked why, because moving it ahead affects everyone else's work.

## Common failure modes

- **Promising dates from hope.** Dates come from opinion and are missed. Instead, forecast from recent finished items and show the range.
- **Ignoring unplanned work.** Interrupts wreck the plan every period. Instead, count them as work items and hold back capacity based on data.
- **Single-number forecasts.** One date hides the uncertainty. Instead, give a low, typical, and high case with assumptions.
- **Using averages only.** The long tail of slow items is hidden. Instead, use percentiles and distributions.
- **Starting too much.** High work in progress lengthens every cycle time. Instead, limit it and finish before starting.
- **Using velocity or throughput as a performance target.** Teams inflate estimates or split items to look good. Instead, use the figures for planning, and judge outcomes (see Topic 5.6 — Metrics and Measurement).
- **Never checking the forecast.** The method never improves. Instead, compare each forecast with what happened.
- **Applying fixed cycles to work that does not fit.** A queue of unpredictable requests forced into fixed periods creates frustration. Instead, test a flow-based approach and compare results.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Forecasting | Dates come from opinion | Some teams use past data | Teams forecast as ranges from their own flow data | Forecast accuracy is tracked and the method is improved | Forecasts are coordinated across teams and suppliers |
| Flow measures | Few measures are collected | Some teams record cycle time or throughput | The four flow measures are collected consistently | Measures are reviewed and used to set expectations | Flow data are shared across teams and used to plan together |
| Capacity and unplanned work | Interrupts are not counted | Some teams track unplanned work | Capacity for unplanned work is set from data | The share and causes of unplanned work are reviewed and reduced | Operations and delivery teams plan capacity together |
| Use of estimates and fixed cycles | Estimates are used to judge people | Some teams use estimates for their own planning | Teams agree which practices they use and name variations | The effects of the practices are reviewed against flow and outcomes | Practices are adjusted across teams from shared learning |

## Checklist

- [ ] Forecasts come from the team's own history of finished items.
- [ ] Each forecast is a range with stated assumptions.
- [ ] Incidents, requests, and improvement work are all recorded as work items.
- [ ] Capacity for unplanned work is set from data and reviewed.
- [ ] Cycle time, throughput, work in progress, and work item age are tracked.
- [ ] Work in progress has a limit that the team reviews.
- [ ] The oldest open items are reviewed regularly.
- [ ] Forecasts are compared with actuals after each period.
- [ ] Estimates and velocity, if used, are not targets.
- [ ] Any use of Scrum, sprints, or a variation is written down and named honestly.

## AI prompts

**Purpose: build a forecast range from your own throughput data.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Purpose: analyze cycle times and propose a service level expectation.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Purpose: measure how much capacity goes to unplanned work.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Purpose: review the oldest open items and plan unblocking.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## AI skills

- [kanban](../../../../skills/kanban/SKILL.md): use to set up flow measures, work-in-progress limits, and a service level expectation.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to check whether available capacity meets projected demand, and what to do about a gap.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use to estimate future load as a range from past data and business plans.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use to choose a metric, name its gaming vector and guardrail, and fill in a metrics charter.
- [scrum](../../../../skills/scrum/SKILL.md): use if the team plans in sprints, to set up or review its roles, events, and artifacts.

## Key sources

- **The Kanban Guide** (kanbanguides.org): defines the flow measures and the service level expectation as a forecast based on past cycle times.
- **The Scrum Guide** (Ken Schwaber and Jeff Sutherland, scrumguides.org): the authoritative, short definition of Scrum, for teams that use sprints.
- **Kanban (development)** (Wikipedia): an overview of Kanban's flow measures and pull system.
- **Scrum (software development)** (Wikipedia): an overview of Scrum's history, roles, events, and criticism.

## References

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
