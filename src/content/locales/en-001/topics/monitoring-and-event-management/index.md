# Monitoring and Event Management

**Monitoring tells you whether a service is working the way users experience it, and good event management turns a flood of signals into a small number of alerts that a person can understand and act on.**

## Why this matters

A service you cannot see is a service you cannot run. Without monitoring, a team learns about failures from users, and learns about slow decay from nobody. With poor monitoring the problem is the opposite: so many alerts that the on-call engineer stops believing them, and the one that matters is lost in noise. Both extremes cost sleep, trust, and time.

Monitoring and event management also determine how fast an incident can be found and fixed. Everything in incident management depends on knowing something is wrong quickly and having enough information to find out why (see Topic 3.2 — Incident Management). Agile teams that release often need this even more, because each release is a chance to break something and each rollback decision depends on seeing the effect.

Google's *Site Reliability Engineering* book has two chapters that address the subject directly: "Monitoring Distributed Systems" and "Practical Alerting from Time-Series Data." They describe one organization's practice and argue for a deliberately simple, user-focused approach. This topic uses them as the main source, because the Wikipedia articles consulted for this guide give little on the practice. The ITIL vocabulary here, such as event, alert, and event management, is drawn from widely published descriptions that this guide could not confirm against the framework owner's text. Read the SRE chapters as one well-explained option.

## Core concepts

### Monitoring

The SRE chapter defines **monitoring** as collecting, processing, and displaying real-time quantitative data about a system. It says monitoring supports long-term trend analysis, comparison across experiments, alerting, dashboards, and ad hoc debugging after the fact. It stresses that monitoring is a significant engineering effort and that teams typically assign at least one person to it.

### Events, alerts, and incidents

In ITSM usage, an **event** is a change of state that has significance for the management of a service. Most events are informational. Some indicate a warning or an exception. An **alert** is, as the SRE chapter puts it, a notification for a human, delivered as a ticket, email, or page. An **incident** is an unplanned interruption or reduction in quality (see Topic 3.2 — Incident Management). Event management is the practice of deciding which events matter, what to do about them, and who should be told. The flow is events to alerts to, sometimes, incidents.

### Black-box and white-box monitoring

The chapter distinguishes two kinds:

| Kind | What it does | Strength |
|---|---|---|
| **Black-box** | Tests externally visible behavior, as a user would see it | Detects active problems; suited to paging |
| **White-box** | Uses metrics exposed by the system's internals, such as logs or internal handlers | Reveals imminent problems and failures masked by retries; essential for debugging |

The book combines both. A black-box probe tells you that checkout is failing; white-box data helps you find out why.

### Symptoms and causes

The chapter says monitoring should answer two questions: what is broken, and why. It advises focusing alerts on symptoms, which are what users experience, and paging on causes only when they are definite and imminent. A single machine failing is, in its words in the alerting chapter, unacceptable to be alerted about, because it is too noisy. This is the heart of a good alerting approach: tell a human when users are or will be hurt, not whenever a part twitches.

### The four golden signals

The chapter proposes four signals to watch for a user-facing system:

- **Latency:** the time to serve a request. Track failed requests separately, because a "slow error is even worse than a fast error."
- **Traffic:** the demand on the system.
- **Errors:** failed requests, whether explicit, implicit, or by policy.
- **Saturation:** how "full" the service is. Performance often degrades before 100% utilization.

These map naturally to service level indicators (see Topic 3.7 — Service Level Management). The chapter also warns that means hide slow outliers and suggests recording request counts in latency buckets to see the distribution.

### What makes a good alert

The chapter offers questions to ask before writing an alert: does it detect an urgent, actionable, user-visible condition; can it be safely ignored; and can the response be automated? Pages should be actionable, require judgment, and concern novel problems. It says alerts should never fire merely because "something seems a bit weird." Pages whose responses are rote and algorithmic are, in its view, a red flag that calls for automation or root-cause repair.

### Routing alerts

The alerting chapter describes sending page-worthy alerts to on-call staff, subcritical ones to ticket queues, and the rest to status dashboards. It describes tooling to route, deduplicate, and inhibit alerts, and notes that alerts should wait a minimum duration before firing because they can flap. It cautions that "you can only alert on the failures that you expected," which is why combining black-box probes with white-box data matters.

### Keep it simple

The chapter argues for simple, fast systems over "magic" that learns thresholds or detects causality, and notes that complex dependency hierarchies have had limited success. It says to keep rules that catch real incidents simple, remove rarely exercised alerts and unused signals, and keep maintenance costs growing more slowly than the size of the service. The cases it describes, such as a team overwhelmed by alerts that temporarily relaxed its objective and disabled email alerts to free time for lasting fixes, show a willingness to remove noise.

### Dashboards and long-term views

The chapter treats dashboards as prebuilt summary views of a service's key metrics and says dashboards are better than email alerts, which it calls of very limited value. It also recommends reviewing page frequency over time, for example in quarterly reports, to keep leadership informed of the pager load. This turns alert quality into something managers can see (see Topic 1.2 — Agile Principles on sustainable pace).

### Limits of the sources

The SRE chapters do not give thresholds beyond a single worked example, do not discuss runbooks or on-call load limits, and do not describe how to review and retire alerts over time, so those are matters for your own practice. They come from one large organization with strong engineering resources. Smaller teams can apply the principles with simpler tools.

## Best practices

1. **Monitor what users experience.** Add at least one black-box probe that performs a real user action, such as logging in or placing an order, and alert when it fails.
2. **Watch the four golden signals.** For each service, track latency, traffic, errors, and saturation. Add other measures only if they answer a question you have asked.
3. **Alert on symptoms.** Page when users are hurt or soon will be. Treat internal conditions, such as a single failed machine, as lower-priority information unless they are definite and imminent.
4. **Make every page actionable.** Before you create an alert, write what the responder should do. If there is nothing to do, it is not a page.
5. **Route by urgency.** Send urgent alerts to on-call, less urgent ones to a ticket queue, and information to a dashboard. Do not send email alerts to people who will ignore them.
6. **Use distributions, not only averages.** Look at high percentiles for latency, or buckets, so that slow outliers are visible.
7. **Set a minimum duration.** Require a condition to hold for a short time before alerting, to avoid flapping. Tune the duration with real data.
8. **Retire noisy alerts.** Review which alerts fire most and led to no action. Remove or fix them. The SRE chapter treats rote responses as a signal for automation or repair.
9. **Test your monitoring.** Deliberately break something in a test environment and check that the right alert fires. Include the monitoring system itself in the checks, so that its failure is noticed.
10. **Review pager load.** Count pages per shift, out-of-hours interruptions, and false alarms each quarter. Share the results with managers and use them in planning.
11. **Keep monitoring in the definition of done.** For each new feature, ask what signals show whether it works and what alert, if any, it needs (see Topic 3.5 — Release and Deployment Management).
12. **Keep it simple.** Prefer a few understandable rules to a complex scheme. Remove unused signals and review rules after incidents.

## Questions to discuss with your team

**How did we find out about our last three incidents?**

List each incident and how it was first noticed: an alert, a user, a colleague. If most came from users, monitoring is missing the symptoms that matter. The facilitator can ask what a probe would have shown. Pick one user action to monitor first.

**Which alerts do we ignore, and why?**

Ask on-call engineers for the alerts they silence or skip. Each one is a candidate to fix or delete. Ask what makes people trust or distrust an alert. A frank answer often reveals alerts that fire on conditions nobody can act on. Agree to retire or fix three.

**What is the worst night we have had on call, and what would have made it better?**

Collect stories without blame. Look for patterns: repeated pages, unclear alerts, lack of runbooks, no escalation. Each pattern is an improvement. Ask which two changes would help most. The aim is a lighter load and a clearer signal.

**If our monitoring system failed, how would we know?**

Ask who watches the watcher. Many teams have no check that the monitoring is working. Discuss a simple heartbeat or a probe from a separate system. Agree on one check to add.

**What do our dashboards show, and who looks at them?**

List the dashboards and ask who used each in the last month. Unused dashboards are clutter; useful ones tell a story about the service. Ask what question each answers. Keep a small set that answers real questions.

**How would we know that a release made things worse?**

Pick a recent release and ask what signal would show a problem. If the answer is "we'd hear from users," discuss which signals to watch after a release and who is responsible. This question links monitoring to deployment. Write a short post-release checklist.

## In practice: an agile ITIL example

A city's public transport authority runs a journey-planning website and app used by 400,000 people a day. A platform team of ten owns the service with an on-call rota of four. The team has hundreds of alerts: CPU on every server, disk space, queue lengths, and error counts. On-call engineers receive 40 pages in a typical week, most outside working hours, and two incidents in the past quarter were first reported by users on social media.

The team lead and an engineer review three months of pages. They find that three quarters were for conditions that needed no action or that resolved on their own. They agree to follow a simple approach from the SRE book: alert on what users experience. They add a probe that plans a standard journey every minute and measures success and speed, and they keep a small set of alerts on saturation of the database and the queue. They move the rest to a dashboard and a daily ticket. Each remaining page gets a short runbook entry saying what to check.

After a month, pages fall to about five a week, and the two incidents that followed were both detected by the probe before users complained. Some problems remain. The probe covers only one journey type, and a fault affecting journeys by bicycle went unnoticed for a day. One engineer also reports that the "move to the dashboard" decision hid a slow disk problem that later caused a failure. The team adds probes for other journey types, adds a daily review of the dashboard to the rota, and agrees to review pager load every quarter.

## Four perspectives

### Product and delivery teams

Delivery teams know what the software is meant to do and where it is likely to fail. Build the signals into the code: useful logs, metrics, and health checks. Define probes for key user actions, and treat monitoring as part of done. Participate in alert reviews so that pages reflect real problems.

### Service and operations teams

Operations teams carry the pager and the dashboards. Keep alerts few and actionable, route by urgency, and track pager load. Push noisy alerts back to the teams that own them, with evidence, and share what you learn from incidents about what to watch.

### Leadership and governance

Leaders should ask for pager load and incident detection data, not for more alerts. Support time to retire noise and add useful signals. Treat a rising number of out-of-hours pages as a risk to the service and to people.

### Customers and users

Customers and users benefit when problems are found before they notice. Report problems with details, such as what you tried and when, since that helps tune the monitoring. Ask providers how they detect failures and how fast, and whether they publish status information.

## Common failure modes

- **Alerting on everything.** The pager is constant and trust is lost. Instead, page on symptoms and send the rest to tickets or dashboards.
- **Monitoring systems, not users.** All machines are green while users cannot log in. Instead, add black-box probes of real user actions.
- **No action attached.** Pages arrive with nothing to do. Instead, require each page to have a described response, or remove it.
- **Averages only.** A group of users suffers while the mean looks fine. Instead, look at high percentiles or distributions.
- **Complex, clever rules.** Learned thresholds and dependency trees confuse responders. Instead, prefer simple, understandable rules.
- **Unwatched monitoring.** The monitoring system fails silently. Instead, check it with heartbeats and tests.
- **Rote responses.** People repeat the same fix after every page. Instead, automate the response or fix the cause.
- **Ignoring pager load.** Overnight pages are treated as normal. Instead, measure and review them, and treat high load as a risk.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Visibility of user experience | Users report most problems | Some services have probes or metrics for user actions | Key user actions are probed and golden signals are tracked for every service | Detection time and coverage are measured and gaps fixed | Monitoring is shared across teams, suppliers, and customers |
| Alert quality | Many alerts, little action | Some teams prune alerts | Pages are symptom-based, actionable, and routed by urgency | Alert precision and noise are measured and reviewed | Alert design is improved across teams from shared evidence |
| Response and automation | Responses are improvised | Some runbooks exist | Pages link to runbooks, and rote responses are automated | Response time and automation use are measured | Responses are coordinated across teams and suppliers |
| People and load | Pager load is not tracked | Some teams count pages | Pager load is reviewed each quarter | Load is balanced and reduced from data | Load and learning are shared across teams and reflected in planning |

## Checklist

- [ ] Each important service has at least one probe of a real user action.
- [ ] We track latency, traffic, errors, and saturation for each service.
- [ ] Every page has a written response and concerns a user-visible or imminent condition.
- [ ] Alerts are routed by urgency to on-call, tickets, or dashboards.
- [ ] High percentiles or distributions are visible for latency.
- [ ] We review which alerts fire most and retire the ones that lead to no action.
- [ ] The monitoring system itself is checked.
- [ ] Pager load (pages per shift, out-of-hours interruptions) is reviewed each quarter.
- [ ] New features include monitoring in their definition of done.
- [ ] After each release, someone checks the signals against a short list.

## AI prompts

**Purpose: review a list of alerts for noise and actionability.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Purpose: define a probe for a user journey.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: write the response section for an alert.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare a quarterly pager load review.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## AI skills

- [runbook](../../../../skills/runbook/SKILL.md): use to write the response that goes with each page.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use to design a fair rota and to plan how pager load is shared and reviewed.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use to choose and interpret measures of service and delivery performance.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): use to check latency and saturation under load before problems reach users.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use to test that failures are detected and handled by deliberately causing them in a safe setting.

## Key sources

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definitions, the four golden signals, symptoms versus causes, and advice on simple alerting.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): how alerting rules, routing, and flapping work in practice.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): the link between indicators, objectives, and alerts.
- **IT service management** (Wikipedia): the place of monitoring and incidents in ITSM.

## References

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
