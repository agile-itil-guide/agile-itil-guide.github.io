# Metrics and Measurement

**Good measurement helps a team see whether its work is helping users and getting better, and the safest way to use any measure is as a question to discuss, never as a target to hit.**

## Why this matters

Teams need numbers to steer. Without them, decisions rely on memory, loud voices, and whoever spoke last. With the wrong numbers, decisions can be worse than none: a team that counts tickets closed learns to close tickets quickly, whether or not users' problems are solved. Measurement is powerful, and it changes behavior in ways its designers do not always intend.

This guide has already used many measures: DORA's software delivery measures (see Topic 3.4 — Change Enablement), the Kanban Guide's four flow measures (see Topic 1.5 — Kanban), service level indicators and objectives (see Topic 3.7 — Service Level Management), and pager load (see Topic 3.10 — Monitoring and Event Management). This topic brings them together, adds goal setting with objectives and key results and customer satisfaction measures, and sets them against the oldest warning in the field: Goodhart's law.

The [Wikipedia article on Goodhart's law](https://en.wikipedia.org/wiki/Goodhart%27s_law) gives the adage in its usual form, "When a measure becomes a target, it ceases to be a good measure," and credits it to the British economist Charles Goodhart, who wrote in a 1975 article on UK monetary policy that any observed statistical regularity tends to collapse once pressure is placed upon it for control purposes. The usual wording is later, and the article attributes it to Keith Hoskin (1996) and Marilyn Strathern's 1997 paper. The point has a long history in different fields, and it is the right starting place for this topic.

## Core concepts

### Measures, targets, and Goodhart's law

A **measure** describes something. A **target** is a number someone is expected to hit. The shift from the first to the second is where trouble starts. Once people are rewarded or punished for a number, they find ways to move the number that are not the same as improving the thing it describes. The article gives examples from monetary policy, school systems, and health care. In a service organization, easy examples are: time to close tickets falling because tickets are closed early, deployment counts rising because changes are split, and availability appearing to rise because outages are reclassified.

The remedy is not to avoid measuring but to measure carefully:

- Use several measures that pull against each other, such as speed and quality.
- Discuss the numbers with the people whose work they describe.
- Do not tie individual rewards or discipline to a single number.
- Change measures when they stop being informative.

### Kinds of measure

| Kind | Question it answers | Examples |
|---|---|---|
| **Outcome** | Are users and the business better off? | User satisfaction, task success, revenue, incidents that harm users |
| **Flow** | How well does work move? | Cycle time, throughput, work item age, work in progress |
| **Delivery performance** | How well do changes reach production? | Change lead time, deployment frequency, change fail rate, recovery time |
| **Service level** | Is the service meeting users' needs? | Availability, latency, error rate against objectives |
| **Health and sustainability** | Can this go on? | Pager load, toil, overtime, staff sentiment |
| **Cost** | What does it cost per unit of value? | Cost per transaction or per user |

A balanced set draws from several rows, so that improving one is not purchased at another's expense.

### DORA measures

DORA's software delivery performance measures are change lead time, deployment frequency, failed deployment recovery time, change fail rate, and deployment rework rate. The DORA guide on the metrics says speed and stability are not trade-offs, as the measures are correlated for most teams. It cautions against setting them as goals, relying on one, comparing very different applications, and competing with other teams, and advises improving against your own past performance. The Wikipedia article on DevOps adds that some experts criticized the DORA research methodology and metrics, so treat them as useful questions with limits (see Topic 5.2 — DevOps).

### Flow measures

The Kanban Guide defines four measures: work in progress, throughput, work item age, and cycle time. It notes that teams may rename them and should add others as needed, and says measures matter only when they inform the practices of defining the workflow, managing items in it, and improving it. Work item age is especially useful because it shows trouble while there is still time to act (see Topic 5.4 — Value Stream Management).

### Service level measures

Service level indicators and objectives (see Topic 3.7 — Service Level Management) give the most direct view of what users experience. The SRE book argues for a few indicators chosen from what users care about, for percentiles and not only averages, and for objectives that are not perfection. Error budgets turn the gap into a shared decision rule (see Topic 5.3 — Site Reliability Engineering).

### Objectives and key results

**Objectives and key results (OKRs)** are a goal-setting framework. The Wikipedia article describes an OKR as an objective, a significant, concrete, clearly defined goal, paired with three to five key results, which are measurable success criteria. It credits Andrew Grove with popularizing the approach at Intel in the 1970s and documenting it in *High Output Management* (1983), and John Doerr with bringing it to Google in 1999. The article says OKRs are scored from 0.0 to 1.0, that aspirational key results target about 0.7, and that Doerr recommends about a 70 percent target success rate, so a key result that is always met should be reevaluated. It advises avoiding business-as-usual objectives and favoring leading indicators over lagging ones.

The article also records criticism: most organizations have stopped setting individual-contributor OKRs, which tend to resemble task lists and blur into performance reviews, and multi-level OKRs can create a waterfall approach. It gives no independent evidence of effectiveness and carries a maintenance tag about relying on sources close to the subject. For service teams, OKRs can connect outcomes (for example, "users complete registration without help") to measurable key results, provided they are not turned into individual targets.

### Customer satisfaction

Measuring what users think is hard to do well. A common instrument is the **net promoter score (NPS)**. According to Wikipedia, it is based on one question about how likely respondents are to recommend a company, product, or service, with promoters scoring 9 or 10, passives 7 or 8, and detractors 6 or lower; the score is the percentage of promoters minus the percentage of detractors. Fred Reichheld of Bain & Company popularized it in a 2003 *Harvard Business Review* article. The article records limits: scholars question whether it reliably predicts company growth, a single item needs large numbers of responses, it says little about specific problems, over-surveying draws complaints, and linking it to pay can distort behavior, so Reichheld recommended decoupling the two. Other instruments exist, such as customer satisfaction scores and customer effort scores, but the article does not discuss them.

Whatever the instrument, ask a short question, always allow a free-text answer, read the comments, and follow up on what you learn.

### Measuring people and sustainability

Measures of staff load and health, such as pager load, toil, overtime, and sentiment, are measures of the service's sustainability (see Topic 5.3 — Site Reliability Engineering). Treat them as information about the system and not as measures of individuals' performance.

### Measuring AI and automation

When an automated or AI-assisted step is introduced, add measures of its quality: how often humans override it, how often it is wrong, and what it costs (see Topic 6.2 — AI in IT Service Management).

### Limits

Measures are partial. They omit what is hard to count, such as trust, craftsmanship, and judgment. They can mislead when data are incomplete or definitions differ between teams. The articles read here offer little empirical evidence on whether measurement programs improve outcomes. Treat any program as an experiment, and review it.

## Best practices

1. **Start with the question.** Ask what decision a measure would inform, and who would act on it. If nobody would, do not collect it.
2. **Choose a small balanced set.** Pick a few measures across outcome, flow, delivery, service level, and health. Make sure some pull against each other.
3. **Define each measure precisely.** Write what is counted, from where, and what is excluded. Two teams that use the same word for different things produce numbers that cannot be compared.
4. **Measure per service or team, and compare with its own past.** Avoid ranking teams. DORA advises improving against your own past performance and being careful in comparing different applications.
5. **Do not make a single number a target.** Use measures as prompts for discussion, and set goals as outcomes. When a measure is a target, watch for gaming (see Goodhart's law).
6. **Pair numbers with stories.** For any trend, look at a few real cases. Numbers tell you where to look; cases tell you why.
7. **Look at distributions.** Use percentiles and ranges, not just averages, for time and size measures.
8. **Prefer leading indicators where you can.** Measures such as work item age show trouble before it lands, unlike measures of past outcomes.
9. **Set goals with objectives and key results carefully.** If you use OKRs, keep them at team and organization level, avoid business-as-usual objectives, and treat a result that is always met as a sign to aim higher.
10. **Ask users, briefly and often.** Use a short question with free text, read the comments, and respond. Do not tie survey scores to individual pay.
11. **Watch the cost of measuring.** Prefer data that tools produce as a by-product of work. Drop manual reporting that nobody uses.
12. **Review the measures themselves.** Once or twice a year, ask which measures led to decisions and which did not, and retire the latter.

## Questions to discuss with your team

**Which of our measures has led to a decision in the last six months?**

List the measures and ask for a decision linked to each. Measures with no link are candidates for removal. The facilitator can ask which measure people trust least and why. Remove or fix one.

**What happens to our behavior when a number is a target?**

Ask for a recent example where a number was a target. Probe what people did to reach it. The Goodhart adage is the frame. Ask what a better measure or a pairing of measures would look like. Agree on one change.

**Do we measure speed and quality together?**

List the speed measures and the quality measures. If the lists are lopsided, discuss the effect. For example, measuring ticket closure time without repeat contacts invites early closure. Choose a pairing.

**What do users tell us about how it is going, and how do we ask?**

Look at the questions you ask users and how often. Read some of the free-text answers aloud. Ask what changed because of them. Agree a short question to try.

**Which of our measures could be used to judge individuals, and what should we do about that?**

Identify measures that people might fear. Discuss the risks and agree explicit rules about what the numbers will not be used for. Write them down.

**If we could only keep five measures, which would we keep?**

Ask each person to choose five and compare. The overlap shows the core; the differences show different needs. The result is a starting set. Check that it covers outcomes, flow, service levels, and health.

## In practice: an agile ITIL example

A national railway's IT group runs the systems behind its passenger information. The group reports a dashboard of 40 measures to the executive team every month. The dashboard is read by few, and two measures dominate the discussion: the number of incidents closed within target time and the number of releases per quarter. The incident team has learned to close incidents quickly and re-open new ones for the same fault, and several delivery teams split work into trivial releases to meet the count.

The head of the IT group asks a small team to rebuild the measures. They begin by asking what decisions the dashboard should inform. For each service they choose a handful of measures: a user-facing service level indicator and objective, change lead time and change fail rate, work item age for open problem items, pager load per engineer, and a monthly one-question satisfaction survey of station staff with a free-text box. The old counts are retired. The executive team agrees that no measure will be used to rank teams or set individual bonuses, and the head of IT writes this as a rule on the dashboard. Teams are asked to set improvement goals for the services they own as objectives with key results, at team level only.

After a year, the dashboard has twelve measures, and the monthly review has become a conversation about the oldest open problems and the free-text comments. Repeat incidents fall, and releases are more meaningful. Some difficulties remain. The satisfaction survey gets few responses from night staff, one team's lead time looks poor because it is the only one that counts time from the idea and not from commit, and a manager has begun to quote the survey score in a performance review. The head of IT asks the team to align definitions, reminds managers of the rule, and arranges a short survey run in the night shift handover.

## Four perspectives

### Product and delivery teams

Delivery teams should choose measures that help them steer, take the numbers from their tools, and discuss them in retrospectives. Watch for measures that reward splitting work or hiding failures. Share what you learn with other teams.

### Service and operations teams

Operations teams carry many of the service level and health measures. Keep definitions clear and data reliable, include pager load and toil, and present numbers with cases and commentary. Push back when a measure is used as a target.

### Leadership and governance

Leaders shape the culture of measurement. Say what the numbers will and will not be used for, ask for trends and stories and not league tables, and resist adding measures for each new worry. Review the whole set from time to time.

### Customers and users

Customers and users are both a source of measures and subjects of them. Answer short surveys when you can, and say what matters. Ask providers what they measure about your experience and what they have done with the results.

## Common failure modes

- **Measures as targets.** Gaming follows. Instead, use measures for discussion and set goals as outcomes.
- **One number.** A single measure distorts behavior. Instead, use a balanced set that pulls against itself.
- **Inconsistent definitions.** Teams count differently. Instead, define each measure and its source.
- **League tables.** Teams compete and hide problems. Instead, compare each team with its own history.
- **Averages only.** Long tails are hidden. Instead, look at distributions and percentiles.
- **Measuring what is easy.** Convenient numbers replace important ones. Instead, start from decisions and users' outcomes.
- **Individual OKRs as task lists.** Goals become performance reviews. Instead, keep OKRs at team and organization level.
- **Survey fatigue and pay links.** Users stop answering, or scores are manipulated. Instead, keep surveys short and decoupled from pay.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Choice and definition | Measures are ad hoc | Some teams define a few measures | A balanced set with clear definitions is used per service | The set is reviewed for usefulness and gaps | Measures are aligned across teams, suppliers, and customers |
| Use in decisions | Numbers are reported but rarely used | Some teams discuss them in reviews | Measures feed regular decisions and improvement | Decisions linked to measures are tracked and learned from | Measures guide decisions across the organization |
| Guarding against gaming | Targets are set on single numbers | Some awareness of distortion | Rules on how measures may be used are written and followed | Gaming signs are monitored and measures adjusted | Measurement culture is shared across the organization |
| User and health measures | Little user or staff data | Some surveys or load data | Short user surveys and sustainability measures are routine | Results lead to planned action and are checked | User and staff voices shape priorities across services |

## Checklist

- [ ] Each measure we report has a stated decision it informs.
- [ ] We use a small balanced set that includes outcome, flow, service level, delivery, and health measures.
- [ ] Each measure has a written definition and source.
- [ ] Teams are compared with their own history, not ranked.
- [ ] We have written down what measures will not be used for.
- [ ] Time measures show distributions or percentiles.
- [ ] Users are asked a short question regularly with room for comments, and answers are read.
- [ ] If we use OKRs, they are at team or organization level and not individual targets.
- [ ] Data are taken from tools as a by-product of work where possible.
- [ ] We review the measures themselves at least once a year.

## AI prompts

**Purpose: choose a balanced set of measures for a service.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: find how a measure could be gamed.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Purpose: write OKRs for a service team without turning them into tasks.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: analyze free-text survey comments.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## AI skills

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use to choose and interpret measures of delivery and service performance.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use to choose early-warning measures for risks to a service.
- [survey-design](../../../../skills/survey-design/SKILL.md): use to design short user and staff surveys that produce usable answers.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use to collect and respond to feedback from users and colleagues.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): use to link measures of outcomes to what the team works on next.

## Key sources

- **DORA's software delivery performance metrics** (dora.dev): definitions of the five measures and cautions about their use.
- **Goodhart's law** (Wikipedia): the origin and wording of the adage that a measure used as a target stops being a good measure.
- **Objectives and key results** (Wikipedia): the framework, its origins, scoring, and criticisms.
- **Net promoter score** (Wikipedia): the definition, uses, and criticisms of one satisfaction measure.

## References

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
