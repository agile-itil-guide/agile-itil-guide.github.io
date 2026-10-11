# Site Reliability Engineering

**Site reliability engineering treats operations as an engineering problem, using service level objectives, error budgets, and a cap on repetitive manual work to keep services reliable while still changing quickly.**

## Why this matters

Many service management practices were designed for a world where operations staff ran software that others had written, and the cost of operating grew with the size of the service. Site reliability engineering (SRE) is one organization's answer to what happens when that model hits a very large scale: ask software engineers to design and run the operations function, and make the system do the work that people would otherwise do by hand.

For readers of this guide, SRE is useful for three reasons. It makes the trade-off between speed and reliability explicit, with numbers that product and operations teams can both read. It gives a firm idea of how much manual work is too much. And it shows how many ITIL practices, such as incident, problem, change, and capacity management, can be done in engineering terms. SRE is not the only way to do these, and it comes from the circumstances of a very large internet company, so what transfers depends on your situation.

This topic is based mainly on three chapters of Google's *Site Reliability Engineering* book, supplemented by the Wikipedia article on SRE. The book describes the practice at one organization and argues for its approach; the Wikipedia article gives a broader but thinner picture and names no criticisms. Read both as sources for ideas to test, not as a standard.

## Core concepts

### What SRE is

The book's introduction defines SRE as "what happens when you ask a software engineer to design an operations team." The [Wikipedia article on site reliability engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) describes it as a discipline within software engineering and IT infrastructure support that monitors and improves the availability and performance of deployed software and large services, with a focus on automation and infrastructure as code. The article calls SRE a specific implementation of DevOps, narrower in scope because it concentrates on building reliable systems (see Topic 5.2 — DevOps). The book describes DevOps as a broader set of principles that SRE implements in a specific way.

According to the article, Google's SRE practice began in 2003 when Benjamin Treynor Sloss joined and formed a team from seven production engineers; by 2016 the team had more than 1,000 SREs, and other large internet companies had adopted the practice. A 2020 survey of 572 professionals found SRE teams at 64 percent of organizations with 10,000 or more employees, 44 percent of those with 101 to 1,000, and 32 percent of those with 100 or fewer. The conference series SREcon has run annually since 2014.

### The problem SRE addresses

The introduction describes the traditional model: developers and system administrators are split into separate teams. It names two kinds of cost:

- **Direct costs.** Manual change management and event handling become expensive, because the operations team grows with the load.
- **Indirect costs.** The teams have different vocabularies, incentives, and assumptions about risk, which leads to conflict over releases. Operations adds launch gates, and developers respond with workarounds.

SRE aims to avoid this split by treating operations as an engineering problem. The chapter says team size grows more slowly than the system, because engineering keeps operational load from growing in step with traffic.

### The tenets

The introduction lists the areas SRE teams are responsible for: availability, latency, performance, efficiency, change management, monitoring, emergency response, and capacity planning. The Wikipedia article lists core practices that include automating repetitive work, defining reliability goals through service level indicators (SLIs), objectives (SLOs), and error budgets, designing systems to reduce risk, observability and monitoring, managing toil, a tested incident management process, and capacity planning, release management, and chaos engineering.

### Service level objectives and error budgets

SRE ties reliability to explicit targets (see Topic 3.7 — Service Level Management for the full treatment). In short:

- Choose a few indicators that reflect what users care about.
- Set an objective that does not demand perfection.
- Allow an **error budget**: the room between perfect and the objective.
- Use the budget to decide on release pace: while budget remains, releases continue; when it is spent, releases slow and effort shifts to reliability.

The "Embracing Risk" chapter explains why: product teams are measured on velocity and reliability teams on reliability, which creates tension, and the budget gives both a shared, objective measure. The same chapter says reliability costs rise steeply and that the goal is to match a service's risk to what the business will accept (see Topic 3.11 — Availability, Capacity, and Performance).

### Toil

The chapter "Eliminating Toil" defines **toil** as operational work tied to running a production service, and says it is not merely work someone dislikes and is distinct from overhead such as meetings. Toil tends to be:

| Characteristic | Meaning |
|---|---|
| **Manual** | Needs hands-on human effort, even if a script runs the steps |
| **Repetitive** | Done over and over, not a novel problem |
| **Automatable** | A machine could do it, or the need could be designed away |
| **Tactical** | Interrupt-driven and reactive, such as responding to pages |
| **Without enduring value** | The service is in the same state afterward |
| **Linear with growth** | Effort scales with service size, traffic, or users |

The book says SREs aim to keep toil below 50 percent of their time, with at least half spent on engineering project work, and the introduction places a 50 percent cap on aggregate "ops" work, sending the excess back to development teams. It says too much toil causes career stagnation, low morale, and burnout, slows feature work, and drives attrition; "toil becomes toxic when experienced in large quantities," although small amounts can be calming and some is unavoidable. The chapter gives a way to calculate the floor that on-call imposes (for example a lower bound of 33 percent for a six-person rotation under its example assumptions) and reports that interrupts were the largest toil source, followed by on-call response and then releases. It defines engineering work as novel, requiring judgment, producing permanent improvement, and following a strategy.

### Emergency response and monitoring

The introduction says monitoring should not require a human to interpret alerts: software interprets data and humans are notified only when action is needed (see Topic 3.10 — Monitoring and Event Management). It says on-call SREs should receive at most about two events per shift. It claims that playbooks produce roughly a threefold improvement in mean time to repair compared with improvising. Incident handling follows an incident command approach, and postmortems are blameless and written for all significant incidents (see Topic 3.2 — Incident Management).

### Change management

The introduction states that roughly 70 percent of outages come from changes to a live system, and recommends progressive rollouts, fast problem detection, and safe rollbacks. This is the book's own claim, from Google's experience, and may not hold for every organization. Its message is consistent with the DORA guidance on change (see Topic 3.4 — Change Enablement and Topic 3.5 — Release and Deployment Management).

### SRE and ITIL

SRE can be read as an engineering way of carrying out several ITIL practices:

| ITIL practice | SRE approach |
|---|---|
| Incident management | Incident command roles, a live incident record, blameless postmortems |
| Problem management | Postmortem actions in the backlog, toil removal at the cause |
| Change enablement | Progressive rollouts, fast detection, safe rollback, automated checks |
| Service level management | SLIs, SLOs, error budgets |
| Monitoring and event management | Symptom-based alerting, the four golden signals |
| Capacity management | Capacity planning as an engineering task, with load testing |
| Continual improvement | A cap on toil, engineering projects as the main work |

The mapping is this guide's, not the sources'. Neither the book nor the Wikipedia article claims to implement ITIL.

### Deployment models

The Wikipedia article describes six organizational models for SRE: "Kitchen Sink," infrastructure, tools, product or application, embedded, and consulting. It says a hybrid is common in large organizations, but marks that claim as needing a citation. Which model suits you depends on your size and the number of services.

### Limits and criticisms

The Wikipedia article states no criticisms, costs, or failure modes, and the book describes one organization's success. Practical limits are well known from experience, and offered here as such: SRE needs engineers who can write software and are willing to do operations; the 50 percent cap needs backing from management; error budgets only work if product teams respect them; and the approach is hard to copy without the scale and tooling that produced it. Smaller organizations can adopt the ideas, such as objectives, budgets, toil measurement, and blameless review, without creating a team.

## Best practices

1. **Pick one service and set an objective.** Choose two to four indicators that reflect user experience, set a loose first objective, and measure for a few months before tightening it.
2. **Agree on an error budget policy.** Write down what happens when the budget is nearly spent and when it is spent, and who may override. Make it a joint rule of product and operations.
3. **Measure toil.** Ask people to record how much of their time goes to manual, repetitive operational work. Use the six characteristics to classify it. Look at the top sources.
4. **Cap the manual work.** Set a ceiling for toil, such as half of a person's time, and review it. When the cap is exceeded, send excess work back to the teams that own the causes or reduce scope.
5. **Automate the largest toil first.** Pick the item that costs the most time and is most repeatable, automate it with tests, and measure the saving. Prefer designing the need away to automating it.
6. **Protect engineering time.** Plan project work for operations engineers as real work with owners and dates. Without it, toil expands.
7. **Limit interrupts.** Aim for few events per on-call shift, tune alerts so pages are actionable, and fix recurring causes. The book's guidance is about two events per shift at most.
8. **Write playbooks.** For common failures, write short, tested response steps. The book claims they improve repair time compared with improvising.
9. **Make changes progressive and reversible.** Roll out gradually, detect problems fast, and roll back safely. Because changes are the commonest cause of outages in the book's experience, invest here first.
10. **Run blameless postmortems for significant incidents,** including near misses that did not page. Turn actions into backlog items.
11. **Start with the ideas, not the team.** Smaller organizations can adopt objectives, budgets, toil measures, and postmortems with existing staff before creating a dedicated team.
12. **Choose an organizational model on purpose.** If you create an SRE function, decide whether it provides tools, embeds with product teams, or consults, and review the choice as you grow.

## Questions to discuss with your team

**Which service would we put an objective on first, and what would the objective be?**

Ask each person to name the service and the indicator that best reflects the user's experience. Compare. Differences show unclear priorities. The facilitator can ask what happens today when the service is slower or less available than users expect. Agree on a service to start with and on what to measure.

**What would we do if we spent our whole error budget this month?**

Ask the team and a product representative to describe the actions, who decides, and what is protected. Many teams have never agreed. Discuss whether a pause on risky releases would be accepted. Draft a one-page policy.

**How much of our week is toil, and what are the top three sources?**

Ask people to estimate and then keep a record for two weeks. Compare estimates with records. The aim is to see the shape of the work, not to blame. Pick the largest source and ask whether it can be removed by design.

**What recurring manual task could a script or a design change remove?**

List the tasks that people dread. For each, estimate frequency and time. The best candidates are frequent, stable, and low risk. Ask what would make automation safe, such as limits and logs. Choose one to automate.

**How many events does each on-call shift get, and how many need action?**

Count for the last quarter. If the number is high, discuss where it comes from. The introduction suggests aiming for about two events per shift. Choose one alert source to fix.

**What would we lose and gain if we created a dedicated reliability team?**

Ask for honest views. Gains might be focus and skills; losses might be a new silo or dumping of operational work. Discuss alternatives such as embedded engineers or a rotation. Decide what to try in a small way.

## In practice: an agile ITIL example

A regional electricity distributor runs an outage-reporting app and a field-crew dispatch system. A combined team of eighteen builds and runs both. The operations staff in the team spend most of their time on manual work: restarting stuck jobs, adjusting data feeds, and responding to pages. The head of the group notes that they have little time left for improvement, and two of them have asked to move to other teams.

The team lead proposes an SRE-inspired approach. For the outage-reporting app, the team sets two indicators: the share of report submissions that succeed and the time to show a confirmation. It agrees a loose objective and a monthly error budget with the customer service manager, and writes a one-page policy: when more than three quarters of the budget is spent, risky releases wait. The team asks engineers to log toil for a month. The log shows that a third of their time goes to restarting a failing data-import job and to manual adjustments after storms, when demand spikes. They set a cap of half their time on toil, decide to fix the import job's cause first, and automate the storm adjustments with a script that has limits and a log. Pages are tuned so only user-visible symptoms alert the on-call engineer.

Four months later, toil falls to about a third of the team's time, the import job no longer fails, and the error budget policy has been used once, in a month with a supplier outage, to postpone a feature release. Difficulties remain. The dispatch system has no objectives yet, and the customer service manager has been tempted to override the budget policy twice for urgent features. The team lead and manager agree to review overrides monthly and to set objectives for dispatch next. They also learn that the "cap" is a guide, not a promise: after a major storm, toil rose well beyond half for two weeks, and they have to decide what to cut.

## Four perspectives

### Product and delivery teams

Delivery teams take part in setting objectives and respect the budget. Build operability into features, accept that toil returns to the team that causes it, and help automate. Treat a spent budget as information about the service, not as a punishment.

### Service and operations teams

Operations teams may do the SRE work or adopt its ideas. Measure toil, protect time for engineering, and push repeat work back to its source. Use objectives to explain why some work should be declined.

### Leadership and governance

Leaders must back the cap on toil and the error budget rule; without backing they fail. Ask for objectives and budget status, not for a count of incidents. Provide time for engineering work and be ready to say no to features when the budget is spent.

### Customers and users

Customers and users gain from clear levels of service and from faster recovery when things fail. Tell the team what matters most, so that objectives reflect your experience. Expect honest conversations about trade-offs between new features and reliability.

## Common failure modes

- **Copying the title.** Operations is renamed and nothing changes. Instead, adopt objectives, budgets, and toil measures first.
- **An error budget nobody respects.** Features override it every time. Instead, agree the rule with product owners and review overrides.
- **No time for engineering.** Toil fills the week. Instead, cap it and protect project time.
- **Automating the wrong thing.** A rare task is automated while the frequent one remains. Instead, rank by time and frequency.
- **Perfection targets.** Objectives demand 100 percent. Instead, set loose targets from user needs and tighten with data.
- **A reliability team as a dumping ground.** Development sends all operational work to it. Instead, return excess work to its source.
- **Copying Google's scale.** Practices that need a large organization are adopted by a small one. Instead, take the ideas that fit, such as objectives and postmortems.
- **Ignoring people.** On-call load burns people out. Instead, limit events per shift and share the rota.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Objectives and budgets | Reliability goals are informal | Some services have objectives | Key services have objectives and an agreed error budget policy | Budgets guide releases and policy overrides are reviewed | Objectives and budgets are aligned across dependent services |
| Toil and automation | Toil is not measured | Some teams estimate toil | Toil is measured and capped; automation work is planned | Toil sources and savings are tracked and reduced | Automation is shared and toil is reduced across teams |
| Emergency response | Response is improvised | Some playbooks and a rota exist | Roles, playbooks, and blameless postmortems are standard | Event load and repair times are measured and improved | Response is rehearsed and coordinated across teams and suppliers |
| Change and capacity | Changes are risky and manual | Some rollouts are staged | Progressive rollout and capacity planning are routine | Change failure and capacity forecasts are measured | Change and capacity practices are shared across the organization |

## Checklist

- [ ] At least one service has indicators and a loose objective, measured over time.
- [ ] An error budget policy is agreed with product owners and written down.
- [ ] Toil is measured with a consistent definition, and the top sources are known.
- [ ] A ceiling for toil exists and is reviewed.
- [ ] Time for engineering projects is planned and protected.
- [ ] On-call load is measured, and pages are actionable.
- [ ] Playbooks exist for the most common failures and have been tested.
- [ ] Rollouts are progressive and rollbacks are tested.
- [ ] Significant incidents and near misses get blameless postmortems with owned actions.
- [ ] We have chosen on purpose how reliability work is organized.

## AI prompts

**Purpose: classify your work as toil, engineering, or overhead.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Purpose: draft an error budget policy.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: choose a toil item to automate first.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: write a playbook entry.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use to design a fair rota with limits on events per shift.
- [runbook](../../../../skills/runbook/SKILL.md): use to write the playbooks that speed up repair.
- [postmortem](../../../../skills/postmortem/SKILL.md): use to run blameless reviews and track actions.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use to test that reliability designs work by causing failures safely.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to plan capacity as an engineering task tied to demand.

## Key sources

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): the definition of SRE, the 50 percent cap, the tenets, and the dev/ops split it aims to avoid.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): the definition of toil and the reasons to cap it.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): the economics of reliability and the error budget.
- **Site reliability engineering** (Wikipedia): a broader summary of the discipline, deployment models, adoption survey, and further reading.

## References

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
