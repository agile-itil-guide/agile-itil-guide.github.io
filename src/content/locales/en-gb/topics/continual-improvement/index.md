# Continual Improvement

**Continual improvement is the habit of making services and ways of working a little better again and again, and it only becomes real when improvement work is visible, owned, scheduled, and checked, like any other work.**

## Why this matters

Every practice in this guide ends in the same place: learn from what happened and change something. Incidents lead to problems, problems lead to fixes, retrospectives lead to experiments, and reviews of service levels lead to new targets. Continual improvement is the practice that connects them and keeps them moving. Without it, each practice produces insight that nobody acts on.

In many organisations, improvement is the first thing to be squeezed. Delivery pressure fills every day, and improvement ideas pile up in a document nobody opens. Agile teams have a head start, since retrospectives are built in, but retrospectives that produce no change are common. The test of a continual improvement practice is simple: can you name three things that are better this quarter because of it?

The [Wikipedia article on the continual improvement process](https://en.wikipedia.org/wiki/Continual_improvement_process) describes it as an ongoing effort to improve products, services, or processes, whether incremental or breakthrough, with feedback, efficiency, and evolution through small steps as key features. The [article on PDCA](https://en.wikipedia.org/wiki/PDCA) describes the plan–do–check–act cycle behind many improvement methods. Both are general. ITIL treats continual improvement as a component of the service value system (see Topic 2.3 — The ITIL Service Value System) and as a practice, but the framework owner's text was not available for this guide, so this topic does not describe ITIL's improvement model in detail.

## Core concepts

### What it is

According to Wikipedia, a continual improvement process (CIP), also called continuous improvement, is an ongoing effort to improve products, services, or processes. The article describes it as a meta-process for management systems such as quality, project, and program management, with three key features: feedback, efficiency, and evolution through small, incremental steps. It credits W. Edwards Deming as a pioneer, who saw CIP as part of a system that evaluates process and customer feedback against organisational goals.

### Continual or continuous

The article notes a terminology point: in the late 1990s the developers of ISO 9001:2000 changed "continuous" to "continual," reportedly because the committee preferred step-wise improvement and thought "continuous" could imply minute-by-minute change. ITIL uses "continual." In practice the terms are used interchangeably. What matters is regular, repeated improvement.

### Kaizen

**Kaizen** is a Japanese term meaning roughly "change for good." According to the article, Masaaki Imai's 1986 book *Kaizen: The Key to Japan's Competitive Success* popularized it, and its features include many small changes, ideas from existing workers, low cost, and employee ownership. This fits agile teams, where the people doing the work are best placed to see what to improve (see Topic 1.7 — Lean Software Development).

### The PDCA cycle

PDCA (plan, do, check, act) is, in Wikipedia's words, an iterative method for controlling and continually improving processes and products. It is also called the Shewhart cycle, after Walter Shewhart at Bell Telephone Laboratories in the 1920s; W. Edwards Deming modified it in the 1940s and applied it to management in Japan in the 1950s. The steps:

| Step | What you do |
|---|---|
| **Plan** | Establish objectives and the processes needed to deliver the results you want |
| **Do** | Carry out the plan, preferably on a small scale |
| **Check** | Compare the data you collected with the expected outcomes and look for trends |
| **Act** | Investigate root causes of problems, adjust the process, and start the next cycle |

The article ties PDCA to the scientific method and its hypothesis, experiment, evaluation pattern. A variant, PDSA, replaces "check" with "study," which Deming preferred. The article says iteration is central: each cycle refines knowledge. Teams that call a change an "experiment" with a stated expectation and a check are using this pattern.

### Where improvement comes from

Improvement ideas come from many places in a service organisation:

| Source | Example | Where it is covered |
|---|---|---|
| Incidents and postmortems | A fault shows a missing alert | Topic 3.2 — Incident Management |
| Problem investigation | Repeated outages show a design flaw | Topic 3.3 — Problem Management |
| Service desk themes | The same question comes up weekly | Topic 3.1 — Service Desk |
| Retrospectives | The team finds its handover slow | Topic 1.4 — Delivery Forecasting and Planning Metrics |
| Flow data | A queue grows at one step | Topic 1.5 — Kanban |
| Customer feedback | Users find a form confusing | Topic 3.6 — Service Request Management |
| Service level reviews | A target is missed repeatedly | Topic 3.7 — Service Level Management |
| Audits and risk reviews | A control is found weak | Topic 5.7 — Governance, Risk, and Compliance |

The practice of continual improvement collects these into one visible list, chooses what to do, and checks the results.

### Improvement as work

The central discipline is treating improvement as work: items in a backlog with owners, expected benefits, and dates. Without it, improvement depends on enthusiasm and spare time. This also means making a trade-off with delivery work in the open, so that capacity is protected deliberately. A common arrangement is to reserve a share of each cycle for improvement, or to run short improvement cycles alongside delivery.

### Measuring improvement

To know that something improved, you need a before and after. Choose a measure related to the change, such as time to restore service, repeat incidents, or waiting time, and look at it before and after. Avoid measures that are easy to move without improving anything. Use several and discuss what the numbers mean (see Topic 5.6 — Metrics and Measurement). The articles consulted give no evidence on the effectiveness of improvement programs, so the teams' own results are the evidence.

### Methods

Many methods support improvement: root cause analysis, Six Sigma and DMAIC for data-driven reduction of defects, value stream mapping, and kaizen events. The Wikipedia article on continual improvement does not mention Six Sigma, DMAIC, or the ITIL improvement model, so this guide does not attribute them to it. Choose methods to fit the size of the problem: a retrospective action for a small friction, a data-driven project for a persistent defect.

### Limits

The article records no criticisms of continual improvement, and some of its sources are weak or dated. Practical risks are well known: improvement fatigue when too many changes arrive, improvement theatre where lists grow and nothing changes, and local optimisation where one team improves its part and worsens the whole. Guard against them with a short, visible list and a regular check on results.

## Best practices

1. **Keep one visible improvement list.** Gather ideas from incidents, retrospectives, feedback, and reviews in one place. Give each item an owner, the problem it addresses, and the benefit expected.
2. **Treat improvement items as work.** Put them in the backlog alongside delivery items, and decide in planning how much capacity they get. Protect that share when pressure rises.
3. **Choose few and finish them.** Work on the most valuable one to three items at a time. A long list of started items is a sign of improvement theatre.
4. **Use the cycle.** For each change, state the plan and the expected result, make the change on a small scale, check the data, and decide whether to adopt, adjust, or drop it. Write the decision down.
5. **Define success before you start.** Choose the measure and what you expect to see, before the change. This prevents explaining any result as a success afterwards.
6. **Start small and local.** Let teams improve their own work without waiting for permission, within clear limits. Reserve larger programs for problems that cross teams.
7. **Share what you learn.** Publish short notes on what changed and what happened, including failures. Other teams can reuse or avoid it.
8. **Look at the whole system.** Before adopting an improvement, ask whom it affects. A local gain that adds work for another team is not an improvement overall (see Topic 2.4 — ITIL Guiding Principles on thinking holistically).
9. **Review the list regularly.** Once a month, look at the list with the team and the service owner: what is done, what is stuck, what should be dropped. Remove items that have lost their point.
10. **Celebrate results, not activity.** Recognise improvements that made things better for users or staff, with evidence. Do not reward the number of ideas or meetings.
11. **Match method to problem.** Use quick experiments for small problems, data-based methods for persistent defects, and bring in specialist help for complex ones.
12. **Involve users and suppliers.** Ask them what to improve, and invite them to review results where they are affected (see Topic 3.14 — Supplier Management).

## Questions to discuss with your team

**What got better in the last quarter because of something we decided to change?**

Ask for specific examples with evidence. If people struggle, that is the finding. If there are examples, ask what made them work: an owner, time, a clear measure. Compare with improvements that stalled. The facilitator can ask which pattern is more common in your team.

**Where do our improvement ideas go?**

Trace several recent ideas: from an incident review, a retrospective, a customer comment. Find out where each ended up. Often they are scattered across documents and tickets. Discuss a single list, who maintains it, and how it is reviewed. Create the first version in the session.

**How much of our capacity goes to improvement, and who decided?**

Look at the last few cycles and estimate the share. Often it is far smaller than people believe, and nobody chose it. Ask what the team and managers think it should be. Agree a starting share and a way to protect it.

**Which of our changes did we check afterwards?**

Ask about the last three changes and what evidence showed they worked. Many were never checked. Discuss a simple habit: before the change, state what you expect to see and when you will look. Choose one current change to apply it to.

**What improvement helped us and hurt someone else?**

Collect examples of local improvements that moved a problem elsewhere. These often come from changes to handovers or approvals. Discuss how to ask affected people earlier. The aim is a simple question to ask before a change.

**What is the oldest item on our improvement list, and why is it still there?**

Pick the oldest item and trace its history. Reasons include no owner, no time, disagreement, or overtaken by events. Decide to do it, schedule it, or drop it openly. Dropping an item on purpose is a sign of a healthy list.

## In practice: an agile ITIL example

A regional water utility has a customer billing and meter-reading platform run by a team of eleven. Retrospectives are held every two weeks and produce lists of actions, but few are completed. Incidents are reviewed, and actions from those reviews are filed in a separate system. The utility's regulator has asked for evidence of how the utility learns from service failures.

The service owner and the team lead decide to make improvement visible. They create a single improvement list that collects actions from retrospectives, incident reviews, and customer feedback. Each item has an owner, a statement of the problem, the expected benefit, and a measure. They reserve 15 percent of each two-week cycle for improvement items, and cap the number in progress at three. For each, they follow plan, do, check, and act: they write what they expect to see, try the change on a subset, look at the numbers after a set period, and record the decision. A monthly review with the service owner and a customer service representative looks at what has been done and what has been learned.

After six months, the team has completed nine items, including a fix for a repeated meter-data import failure that cut repeat incidents on that cause to near zero, and a clearer bill explanation that reduced calls on the topic. It also has evidence for the regulator in the form of the list and the checks. Some difficulties remain. Two items were completed without being checked because the cycle moved on, and one improvement to the import process made a downstream reporting team's work slower, which came to light only a month later. The team adds a "who else is affected" question to the list template and a calendar reminder for each check.

## Four perspectives

### Product and delivery teams

Delivery teams own much of the improvement list. Bring ideas from retrospectives and incidents into one place, finish what you start, and check results. Be willing to spend capacity on improvement rather than only on new features.

### Service and operations teams

Operations teams see the friction first. Feed incident themes, desk contacts, and flow data into the list, and take part in checking results. Make the case for improvements that reduce toil and repeat incidents.

### Leadership and governance

Leaders protect the capacity for improvement and ask about results. Ask what has improved and how it was checked, not how many ideas there are. Remove obstacles that teams name and show that you have done so. Support improvements that cross team boundaries.

### Customers and users

Customers and users supply some of the best ideas. Tell the team what frustrates you and ask to hear what changed as a result. Join reviews where your service is concerned. Your feedback on whether a change helped is the most direct check there is.

## Common failure modes

- **Ideas without owners.** The list grows and nothing is done. Instead, require an owner and an expected benefit for each item.
- **Improvement as spare time.** Delivery crowds it out. Instead, reserve capacity and protect it.
- **Too many at once.** Everything is started and little is finished. Instead, limit work in progress for improvement items.
- **No check.** Changes are adopted because they were planned. Instead, state the expected result in advance and look at the data.
- **Local optimisation.** One team improves and another suffers. Instead, ask who else is affected before and after.
- **Improvement theatre.** Workshops and posters replace results. Instead, count completed and verified improvements.
- **Measures that can be gamed.** The number moves and nothing improves. Instead, use several measures and look at the underlying work.
- **Forgetting to share.** Lessons stay with the team. Instead, publish short notes and invite others to reuse them.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Collecting and prioritising | Ideas are scattered and unprioritized | Some teams keep lists | One visible list per team with owners and expected benefits | Priorities use data on impact and effort | Improvement lists are aligned across teams and with customers |
| Capacity and flow | Improvement is done in spare time | Some capacity is reserved | A protected share of capacity and limits on work in progress | Capacity and throughput of improvement are reviewed | Capacity is shared across teams for cross-cutting improvements |
| Checking results | Results are not checked | Some changes are reviewed | Each change has a stated expectation and a check | Results are measured and linked to decisions | Evidence is shared across teams and used to guide the organisation |
| Learning and spread | Lessons stay local | Some notes are shared | Lessons are published and reviewed | Reuse of improvements is tracked | Improvements spread across teams and suppliers routinely |

## Checklist

- [ ] We have one visible improvement list with owners and expected benefits.
- [ ] Ideas from retrospectives, incident reviews, desk themes, and feedback all feed it.
- [ ] A protected share of each cycle goes to improvement items.
- [ ] We limit the number of improvement items in progress.
- [ ] Each change states an expected result and a time to check it.
- [ ] We check results and record the decision to adopt, adjust, or drop.
- [ ] We ask who else is affected before making a change.
- [ ] The list is reviewed at least monthly.
- [ ] We share short notes on what changed and what we learned.
- [ ] We can name three things that are better this quarter because of improvement work.

## AI prompts

**Purpose: consolidate improvement ideas into a single prioritised list.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Purpose: turn an improvement idea into a small experiment.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: review the state of an improvement list.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Purpose: check whether an improvement worked.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## AI skills

- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan and review small, continuous improvements.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to run retrospectives that produce owned actions.
- [dmaic](../../../../skills/dmaic/SKILL.md): use for data-driven improvement of persistent defects, through define, measure, analyse, improve, and control.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use when variation and defects are the main problem and you need a statistical approach.
- [futurespective](../../../../skills/futurespective/SKILL.md): use to look ahead together and agree on improvements for the next period.

## Key sources

- **Continual improvement process** (Wikipedia): the definition, kaizen, PDCA, and the continual versus continuous terminology.
- **PDCA** (Wikipedia): the plan–do–check–act cycle, its origins, and variants such as PDSA.
- **Kaizen** (Wikipedia): background on small, continuous improvement and its origins in Japanese industry.
- **Lean software development** (Wikipedia): the lean ideas behind continuous improvement in software work.

## References

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
