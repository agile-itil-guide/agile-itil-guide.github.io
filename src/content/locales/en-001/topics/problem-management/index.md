# Problem Management

**Problem management finds and removes the causes behind recurring incidents, and its agile form is a steady stream of small, evidence-based fixes in the backlog instead of occasional large investigations.**

## Why this matters

A team that handles incidents well but never removes their causes is on a treadmill. Each outage is repaired, the same fault returns, and the on-call engineers get tired. Problem management is the practice that steps off the treadmill: it asks why the incident happened, whether it will happen again, and what would stop it.

Agile teams are well placed to do this. They have a backlog in which a fix can compete with a feature, they work in short cycles that make small fixes cheap, and they hold retrospectives where patterns can be noticed. What they often lack is the habit of connecting incidents to each other and the discipline to search for causes properly. Problem management supplies both.

The [Wikipedia article on root cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis) is the main source read for this topic, because the English Wikipedia has no article titled "Problem management" at the address checked. That article describes root cause analysis (RCA) as a problem-solving method used in IT operations and other fields, and it carries maintenance tags for missing citations. The ITIL vocabulary used here, such as known error and workaround, comes from widely published descriptions of the practice, which this guide could not confirm against the framework owner's text. Read the owner's current publications when exact definitions matter (see Topic 2.2 — ITIL).

## Core concepts

### Incident, problem, known error

Three terms are used together, and the distinctions matter:

| Term | Meaning, as widely used in ITSM | Example |
|---|---|---|
| **Incident** | An unplanned interruption to a service or reduction in its quality | The booking page is down for twenty minutes |
| **Problem** | The underlying cause, or suspected cause, of one or more incidents | A memory leak in the booking service |
| **Known error** | A problem whose cause has been identified, usually with a workaround recorded | A memory leak is understood; restarting the service every night prevents outages until it is fixed |

A **workaround** is a way to reduce or avoid the impact of an incident or problem without removing its cause. Problem management is about removing the cause, and incident management is about restoring service (see Topic 3.2 — Incident Management).

### Reactive and proactive

The root cause analysis article distinguishes reactive and proactive approaches in general terms. Reactive work treats symptoms quickly. Proactive work aims to prevent problems and puts diagnostic accuracy ahead of speed. In ITSM practice, both exist: reactive problem management investigates problems after incidents, and proactive problem management looks for patterns and weaknesses before they cause incidents.

### What a root cause is

The article defines a root cause with a practical test: a factor is the root cause of a problem if removing it prevents the problem from recurring. It distinguishes a root cause from other causal factors. This is a useful rule. If you remove a factor and the problem can still return, you have found a contributor, not the root.

The article also warns of limits. It says that missing monitoring data, very high event volumes, multiple root causes, and investigators who stop at a superficial root all complicate the analysis. In IT, it notes, RCA often lacks fault trees or design specifications, so "there is no root cause" has become a common saying. For complex systems, expect several contributing causes and not a single culprit.

### Principles of root cause analysis

The article lists general steps:

1. Describe the problem clearly.
2. Build a timeline from normal operation to the failure.
3. Separate the root cause from other causal factors.
4. Map a causal graph linking the root cause to the problem.

It adds that investigators should look at defenses that failed or were missing (barrier analysis), avoid bias in the lines of inquiry, decide on corrective actions, and review whether those actions were effective.

### Methods

The article says that, according to ISO/IEC 31010, RCA may use five whys, failure mode and effects analysis (FMEA), fault tree analysis, Ishikawa (fishbone) diagrams, and Pareto analysis. It credits Kaoru Ishikawa with the causal diagram that bears his name. It also calls fishbone and five-whys methods "not rigorous enough," an opinion it does not support with a source. A practical reading: simple methods are good starting points for team discussion, and complex or high-risk failures may need more rigorous ones.

| Method | What it does | When it helps |
|---|---|---|
| **Five whys** | Asks "why" repeatedly to move from a symptom toward a cause | Quick, team-level discussion of simple chains of cause |
| **Ishikawa (fishbone) diagram** | Groups possible causes by category | Brainstorming many possible causes |
| **Pareto analysis** | Ranks causes by frequency or impact | Choosing which recurring problem to tackle first |
| **Fault tree analysis** | Maps combinations of failures that lead to an outcome | Safety-critical or complex failures |
| **FMEA** | Looks ahead at how parts could fail and what the effect would be | Proactive design review |

### Effective corrective actions

The article says corrective actions that merely add paperwork or training are less effective. In practice this suggests favoring actions that change the system: automate a check, remove a failure mode, add a safeguard, improve monitoring. An action such as "remind engineers to be careful" is weak.

### The blameless principle

Problem investigation shares the blameless principle described for postmortems in Google's SRE book: identify contributing causes without blaming individuals, since people can be taught and systems can be fixed (see Topic 3.2 — Incident Management). An investigation that finds "human error" and stops has usually stopped too early. Ask what made the error possible and what would make it harder.

### Problem management in an agile flow

A practical agile approach looks like this:

- Incidents and postmortems create candidate problems.
- A short, regular review groups repeated incidents and ranks problems by impact and frequency.
- Selected problems enter the backlog as ordinary items, with an owner, a hypothesis, and a time limit for investigation.
- Workarounds are recorded as known errors so that the service desk and on-call engineers can use them (see Topic 3.9 — Knowledge Management).
- Fixes are small and tested, released in the normal way, and checked afterward to see whether the incidents stopped.

## Best practices

1. **Link incidents to problems.** Record which incidents seem to have the same cause. Without links you cannot see the pattern, and without the pattern you cannot argue for a fix.
2. **Review incidents for patterns on a schedule.** Once a month, group recent incidents by service and likely cause and choose the top few. Use Pareto thinking: a few causes usually account for much of the pain.
3. **Treat problems as backlog items.** Give each selected problem an owner, a statement, and a time-box for investigation, and let it compete with other work. A separate queue of "problems" that nobody schedules is a graveyard.
4. **Start with a clear problem statement.** Write what happens, where, how often, and what the impact is, using facts. Vague statements lead to vague fixes.
5. **Build a timeline.** Collect logs, changes, and events from normal operation to failure. The article lists the timeline as a core step, and many surprises come from changes that nobody had connected.
6. **Ask for the cause that, if removed, prevents recurrence.** Use the article's test. When the team proposes a cause, ask whether removing it would stop the problem returning.
7. **Expect more than one cause.** Look for contributing factors in design, monitoring, process, and people's knowledge. Do not stop at the first plausible one.
8. **Choose methods to fit the problem.** Use five whys or a fishbone for quick team discussion, and more rigorous tools for serious or complex failures.
9. **Prefer actions that change the system.** Favor automation, safeguards, and better monitoring over reminders and training. Record the expected effect so you can check it.
10. **Record workarounds as known errors.** Write what the symptom looks like, the workaround, and who owns the fix. Share the record with the service desk and on-call staff.
11. **Check that the fix worked.** After a fix, watch for recurrence for an agreed period and report the result. A fix that is never checked is a hope.
12. **Share what you find.** Publish short summaries of problems and fixes so that other teams can recognize similar patterns.

## Questions to discuss with your team

**Which incident keeps coming back, and what do we think causes it?**

Ask people to name the incident they are most tired of. Compare answers. Then ask what each person believes is the cause, and how they know. Beliefs often differ, which shows how little shared evidence exists. The facilitator can ask what data would settle it. Choose one to investigate with a time-box.

**How do we know whether two incidents have the same cause?**

Look at how incidents are recorded and ask whether anyone could find related incidents quickly. Typical answers are free text, memory, or luck. Ask what small change to records would help, such as a field for service and likely cause. Agree on one.

**What do we do when we find "human error" in a review?**

Ask for a recent example. The question is whether the review stopped there. Discuss what in the system made the error possible: unclear instructions, a confusing tool, time pressure. Compare with the idea that you cannot fix people, but you can fix systems. Agree on a question to ask each time, such as "What made this easy to do?"

**What actions from past reviews actually changed the system, and which only added a reminder?**

List the actions from the last five reviews and mark each as a system change or a reminder. The article says reminders and paperwork are less effective. Ask why reminders are so common: they are quick, cheap, and feel like action. Choose one reminder to replace with a stronger fix.

**Where do we have workarounds that nobody has written down?**

Ask on-call engineers and desk analysts what tricks they use. Each unwritten workaround is a risk. Record them as known errors with symptom, workaround, and owner. The facilitator can ask who benefits from each record. Make a short list this week.

**How would we know that a fix has worked?**

Pick a recent fix and ask what evidence showed it. If the answer is "no more complaints," ask how long you waited and what you measured. Discuss a simple check: watch for the specific symptom for a set period. Agree to record the check with every fix.

## In practice: an agile ITIL example

A mid-sized logistics company runs a route-planning service used by its drivers and dispatchers. The platform team of nine has handled the same incident roughly every two weeks: route calculations time out for ten to fifteen minutes in the morning and then recover. Each time, the on-call engineer restarts a worker process, and the incident is closed. Dispatchers complain that morning planning cannot be relied on.

The team lead starts a monthly review of incidents, grouping them by service and likely cause. The morning timeouts top the list. She writes a problem statement from the incident records: timeouts occur on weekdays between 7:00 and 7:30, last ten to fifteen minutes, and affect all dispatchers. The team builds a timeline that includes a scheduled data import at 7:00 and a recent change that increased the import's size. A five whys discussion suggests the import saturates the database. They try the obvious fix, adding capacity, but incidents continue at a lower rate, so they conclude that capacity was a contributor and not the root.

A second look finds that the import locks a table that route calculations also read. The team moves the import to a separate replica and adds an alert for lock waits. They record the restart as a known error with the symptom and workaround until the fix is live, and they agree to watch for the symptom for six weeks. The incidents stop. Some issues remain: another import from a partner still runs at peak time, and the team has not yet persuaded the partner to change its schedule. They put the partner schedule on the next planning agenda, and keep the lock alert in place.

## Four perspectives

### Product and delivery teams

Delivery teams hold the knowledge to fix causes. Take the top problems into your backlog, and treat them as work that earns trust. Add monitoring and tests that would have revealed the cause, and write the known error in language the desk can use.

### Service and operations teams

Operations teams see the incidents and keep the records. Link incidents, run the monthly review, and record workarounds as known errors. Push the evidence to delivery teams in a form that makes the case, with frequency, impact, and timeline.

### Leadership and governance

Leaders decide whether problem fixing gets time. Ask for the top recurring problems and what is being done about them. Resist counting incidents closed as a measure of success, since it rewards repair. Support fixes that take effort but remove pain.

### Customers and users

Customers and users benefit when repeat failures stop. Report recurring problems with dates and effects, since patterns help the team. Ask providers what they have done about the causes of repeated outages, and expect an answer beyond "we restarted it."

## Common failure modes

- **Repair without removal.** Incidents are closed and return. Instead, link repeats to a problem and fix the cause.
- **A problem queue nobody schedules.** Problems wait forever. Instead, put selected problems in the backlog with owners and time-boxes.
- **Stopping at human error.** The review ends with someone to blame. Instead, ask what made the error possible and fix the system.
- **Weak actions.** Reminders and training replace system changes. Instead, prefer automation, safeguards, and better monitoring.
- **Searching for one root cause.** The team insists on a single culprit. Instead, accept several contributing causes and address the most effective ones.
- **No check that the fix worked.** The problem is closed on release. Instead, define a way to see whether the symptom returns.
- **Unwritten workarounds.** Knowledge lives with individuals. Instead, record known errors and share them.
- **Method worship.** Teams argue about techniques. Instead, choose methods to fit the problem and spend the effort on evidence.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Linking and prioritizing | Incidents are not linked | Some teams note repeats | Incidents are linked to problems and reviewed for patterns on a schedule | Problems are ranked by measured impact and frequency | Problem priorities are shared across teams and suppliers |
| Investigation | Investigation is informal | Some teams use simple methods | A written approach with timelines and evidence is used | Investigation quality and time are reviewed | Investigations span teams and suppliers with shared data |
| Corrective action | Fixes are ad hoc or reminders | Some fixes change the system | Actions are chosen for effect, with owners and dates | Effects are checked and recurrence is measured | Fixes spread to similar systems across the organization |
| Known errors and knowledge | Workarounds are unwritten | Some are recorded by individuals | Known errors are recorded and shared with the desk and on-call | Use and accuracy of known errors are tracked | Known errors are shared with users, suppliers, and partners |

## Checklist

- [ ] Incidents that seem to share a cause are linked.
- [ ] A regular review groups incidents and picks the top recurring problems.
- [ ] Selected problems are in the backlog with owners and time-boxes.
- [ ] Each problem has a written statement with facts.
- [ ] A timeline is built for each investigation.
- [ ] Reviews ask what in the system allowed any human error.
- [ ] Actions favor system changes over reminders, with the expected effect recorded.
- [ ] Workarounds are recorded as known errors and shared with the desk and on-call staff.
- [ ] Each fix has a check for recurrence over an agreed period.
- [ ] Summaries of problems and fixes are shared with other teams.

## AI prompts

**Purpose: find repeated incidents and candidate problems in your records.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Purpose: write a clear problem statement from evidence.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Purpose: prepare a five whys session and record the chain of reasoning.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: evaluate whether proposed corrective actions change the system.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## AI skills

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): use to guide an investigation from a clear problem statement to a tested cause.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): use to brainstorm possible causes by category with a team.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): use to lay out how causes and effects connect in a complicated failure.
- [postmortem](../../../../skills/postmortem/SKILL.md): use to run the review that identifies candidate problems.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use when you need data-based methods to analyze variation or recurring defects.

## Key sources

- **Root cause analysis** (Wikipedia): a general overview of the method, principles, and limits, with ISO/IEC 31010 listed for the methods.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): the blameless approach to learning from failures.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): how incident handling feeds later analysis.
- **Ishikawa diagram** and **Five whys** (Wikipedia): background on two common simple methods.

## References

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
