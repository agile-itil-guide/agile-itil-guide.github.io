# Incident Management

**Incident management restores a degraded service as fast as is safe, and the agile habit that makes it work is clear roles under pressure followed by a blameless review that turns each incident into a change.**

## Why this matters

Incidents are the moment a service is judged. Users do not remember the months of good availability; they remember the outage and how it was handled. A team that has worked out in advance who does what, how it communicates, and when it calls for help restores service faster and makes fewer mistakes than one that improvises.

Agile teams that run what they build often handle incidents informally. This works until an incident is large, spans several teams, or happens at night. Then the lack of roles and records shows: engineers pile onto the technical problem, nobody tells the customers, and two people make conflicting changes. The ITSM practice of incident management, together with practices from site reliability engineering, offers tested ways to prevent that.

The [Wikipedia article on incident management](https://en.wikipedia.org/wiki/Incident_management) covers several fields, from emergency response to computer security. For IT service management it says the aim is to restore normal service within the agreed service level as quickly as possible, quotes ITIL 2011 in defining an incident as an unplanned interruption to an IT service or a reduction in its quality, and lists three challenges: alert noise, lengthy problem resolution, and difficulty predicting outages. For detail, this topic relies heavily on two chapters of Google's *Site Reliability Engineering* book, which describe an incident command approach and blameless postmortems from practice at one large organization. Treat those chapters as one well-documented approach, not as the only one.

## Core concepts

### What an incident is

An **incident**, in ITSM usage, is an unplanned interruption to a service or a reduction in its quality. The ITSM article also includes a "potential" disruption. An incident is not the same as a **problem**, which is the underlying cause, or a **service request**, which is a routine ask (see Topic 3.3 — Problem Management and Topic 3.6 — Service Request Management). Keeping the three apart matters because each is managed for a different goal: restoring service, removing causes, and fulfilling routine demand.

### The goal: restore service, preserve evidence

The first aim of incident management is to restore the service. The SRE chapter on managing incidents adds a second: preserve the evidence needed to find the root cause later. The chapter's own best practices say to prioritize restoring service and preserving evidence, in that spirit. Fixing the cause may come later, in problem management.

### Why unmanaged incidents go wrong

The SRE chapter, written by Andrew Stribblehill, uses an extended example of an on-call engineer whose outage grows into a total failure. It names three hazards of unmanaged incidents:

- **A sharp focus on the technical problem.** Engineers absorbed in a fix lose sight of mitigation and the wider picture.
- **Poor communication.** Nobody knows what others are doing, and stakeholders remain uninformed.
- **Freelancing.** Uncoordinated changes, such as a last-minute deployment, make the situation worse.

### Roles under pressure

The chapter bases its approach on the Incident Command System, which came from emergency response (the Wikipedia article on incident management also mentions it). Its main ideas:

| Role | What it does |
|---|---|
| **Incident commander** | Holds the high-level state, structures the response, removes roadblocks, and holds any role not yet delegated |
| **Operations lead** | Applies tools to the problem; only the operations team changes the system during an incident |
| **Communications lead** | Is the public face of the response; issues periodic updates and keeps the incident document current |
| **Planning lead** | Handles longer-term issues such as filing bugs, arranging handoffs, and tracking divergence from normal so changes can be reverted |

The chapter calls the principle a recursive separation of responsibilities. Clear roles give people autonomy, because they need not second-guess colleagues, and an overloaded person asks for more staff and delegates parts of the work. Handoffs between commanders are explicit and acknowledged.

### The live incident document

The chapter says the commander's most important duty is to keep a live document of the state of the incident, ideally editable by several people at once. It can be messy but must stay useful, with key information near the top, and it is kept for later analysis. A shared channel or a physical room serves as the command post.

### When to declare an incident

The chapter recommends declaring an incident early, not hours into a worsening problem. It suggests treating an event as an incident if a second team must be involved to fix it, if the outage is visible to customers, or if it remains unsolved after an hour of concentrated analysis. These are one organization's rules of thumb. Your own thresholds should reflect your services and users.

### Priority and severity

Sources read for this guide do not define priority or severity levels, and the Wikipedia article states none. In practice, teams define levels from the impact on users and the urgency of the need, and decide in advance who is called at each level. Keep the scheme short, with examples, and check it by applying it to past incidents.

### Communication

Communication has two audiences. Responders need to know the state and who is doing what. Stakeholders and users need to know what is affected, what is being done, and when to expect the next update. The communications lead in the SRE chapter serves the second audience and keeps the log for the first. For public-facing outages, a plan for communication in a crisis is useful (see the crisis communication skill below).

### Blameless postmortems

The SRE chapter on postmortem culture sets out the learning half. A postmortem records the incident, its impact, the mitigation, the root causes, and follow-up actions. Its goals are to document the incident, understand all contributing root causes, and put in place effective preventive actions. It is blameless: it identifies contributing causes without blaming individuals or teams, and assumes everyone "had good intentions and did the right thing with the information they had." In the chapter's words, "You can't 'fix' people, but you can fix systems and processes."

The chapter suggests defining postmortem triggers in advance, such as user-visible downtime beyond a threshold, any data loss, an on-call intervention like a rollback, resolution time above a threshold, or a monitoring failure. It also says "An unreviewed postmortem might as well never have existed," and so recommends regular review sessions and a shared repository. It describes culture-building activities such as a monthly newsletter, reading clubs, and a "Wheel of Misfortune" in which past incidents are reenacted.

### Major incidents

Many ITSM practices define a **major incident** as one needing a more formal response than usual. The sources read here do not define it, so do it in your own words: for example, an incident that affects many users or a critical service and needs a coordinated response across teams. What matters is that people know in advance what changes: who commands, who is called, how often updates go out.

### Incidents and continuous delivery

Incidents often arise from recent changes. Agile teams are well placed to learn from them because they release often and have short feedback loops. The learning needs a route: postmortem actions go into the backlog with owners and dates, and recurring incidents go to problem management. Without that route, incident handling becomes a routine of repair.

## Best practices

1. **Decide in advance what counts as an incident.** Write a short definition with examples, and lower the bar to declaring one. The SRE chapter's rule of thumb is to declare early when a second team is needed, customers can see the problem, or an hour of analysis has not solved it.
2. **Define a few severity levels with examples.** Base them on user impact, and state who is called at each level. Test the scheme on past incidents and adjust.
3. **Assign roles at the start of each incident.** Name an incident commander, an operations lead, and a communications lead. In small teams one person may hold more than one role; say so aloud.
4. **Separate fixing from coordinating.** The people changing the system should not also be answering questions. Let the commander coordinate and the communications lead inform.
5. **Keep a live record.** Use one shared document or channel with timestamps, decisions, and changes made. It supports handoffs and gives the postmortem its material.
6. **Allow only authorized changes.** The SRE chapter says only the operations team should modify the system during an incident. State who may change what, and ask others to speak to the commander.
7. **Communicate on a schedule.** Agree the update interval for each severity and keep to it, even when there is nothing new. Silence breeds worry and duplicate questions.
8. **Hand off explicitly.** When a commander or responder is replaced, say it aloud and have the other person acknowledge it. Unclear handoffs lose context.
9. **Practice.** Run the incident process on small events and in exercises, so that the roles are familiar before a serious outage. Rotate people through roles.
10. **Hold a blameless postmortem when your triggers are met.** Write it with those involved, focus on contributing causes and system fixes, and share it widely (see the postmortem skill below).
11. **Turn actions into backlog items.** Give each follow-up an owner and a date, and review them at a regular meeting. An unreviewed postmortem produces no change.
12. **Feed the evidence to problem management.** Link repeated incidents to a problem record, so that causes are removed and not just repaired (see Topic 3.3 — Problem Management).

## Questions to discuss with your team

**What do we do in the first ten minutes of an incident, and who decides?**

Walk through the last significant incident minute by minute. Note who took the lead, who communicated, and who changed what. Many teams find that roles were assumed and not agreed. The facilitator can ask what would have happened if the usual lead had been away. Follow up by agreeing on how roles are assigned next time.

**When do we call something an incident, and when do we wait?**

Collect examples of events that were declared late. Ask what held people back: not wanting to bother others, uncertainty, or fear of blame. Compare with the SRE chapter's triggers. Agree on a threshold and a way to declare an incident without a fuss.

**How do our users find out what is happening during an outage, and how often?**

Look at the last outage from the user's side. Ask who told them, what they were told, and how long the gap was. Often the answer is a long silence followed by a brief note. Ask who should own communication and what the first message should say. Agree a template and an update rhythm.

**What did our last postmortem change, and how do we know?**

Ask for the actions, owners, and status. If none were completed, ask why: no owner, no time, or unclear value. Find out whether postmortems are read by anyone beyond the team. Agree on a regular session to review open actions.

**Do people feel safe saying what they got wrong?**

This question tests blamelessness. Ask people to describe how they would feel writing about their own mistake in a postmortem. Listen for fear of consequences and examples of when blame occurred. Do not demand openness; ask what the team and leaders would need to do to make it safe. Choose one visible step.

**How do we practice, and when did we last do it?**

Ask whether the team has run an exercise or a simulated incident, and what it learned. If never, discuss a small start, such as replaying a past incident in an hour. The SRE chapter mentions practicing the process on routine changes and disaster recovery exercises. Plan one for the next quarter.

## In practice: an agile ITIL example

A regional power utility's customer portal lets households report outages and view bills. A team of eleven builds and runs it, with an on-call rota of four. During a storm, report traffic surges, the portal slows, and then fails. The on-call engineer tries a database restart, a second engineer simultaneously deploys a configuration fix, and a third rolls back an earlier release. The portal comes back after three hours, and the call center, which was never told, fielded thousands of angry calls.

At the postmortem the team sees the three hazards from the SRE chapter: everyone focused on the technical fix, nobody communicated, and changes collided. They write a one-page incident process. Anyone may declare an incident, and a second team involved, customer visibility, or an hour without progress means they must. The on-call engineer becomes operations lead, and a rota names an incident commander and a communications lead from the wider team. Only the operations lead changes production. The communications lead sends an update every 30 minutes to the call center and the control room. A shared channel holds the live log.

At the next storm the portal slows again, an incident is declared within ten minutes, and service is restored in 70 minutes with updates going to the call center throughout. Problems remain. The commander rota has gaps on holidays, and the team finds that one dependency, a text-message provider, has no escalation contact. The postmortem produces two actions with owners: complete the rota with a fallback, and agree an escalation path with the provider. The team schedules a replay of the storm incident for new rota members.

## Four perspectives

### Product and delivery teams

Delivery teams cause and fix many incidents. Join the on-call rota or provide direct support to it, and treat postmortem actions as backlog items. Build the means to detect and roll back problems into your releases. Take part in exercises so that roles are familiar.

### Service and operations teams

Operations teams own the process. Keep it short and practiced, give people the authority to act, and keep records that others can use. Share what you learn with delivery teams, and push the lessons into problem management and planning.

### Leadership and governance

Leaders set the culture. Ask for postmortems and read them, praise people who report problems, and refuse to hunt for someone to blame. Protect the time to practice and to complete actions. Decide who may spend money or invoke the highest level of response.

### Customers and users

Customers and users need timely, honest updates and a clear way to report problems. Ask your provider what you can expect during an outage and how you will be told. When a postmortem is shared with you, read it for what the provider will change.

## Common failure modes

- **No roles.** Everyone works on the technical fix and nobody coordinates or communicates. Instead, name an incident commander, operations lead, and communications lead each time.
- **Declaring late.** People wait until the problem is bad. Instead, set low, clear thresholds and normalize declaring.
- **Freelancing.** Several people change the system at once. Instead, allow changes only through the operations lead.
- **Silence.** Users and stakeholders hear nothing. Instead, agree an update interval and a template.
- **Blame.** A postmortem looks for the person at fault. Instead, ask what in the system allowed the error and fix that.
- **Postmortems that go nowhere.** Actions have no owners. Instead, put them in the backlog with dates and review them regularly.
- **Never practicing.** The first time the process is used is a major incident. Instead, rehearse on small events and exercises.
- **Treating repair as resolution.** The same incident returns. Instead, link repeats to problem management and fix the cause.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Detection and declaration | Incidents are noticed through user complaints | Some alerts exist and some incidents are declared | Written thresholds and a simple severity scheme are used consistently | Detection time and declaration time are tracked and reduced | Detection and declaration are shared across teams and suppliers |
| Response and roles | Responders improvise | Some teams name a lead | Roles, handoffs, and a live record are standard | Response times and role performance are reviewed | Response is coordinated across teams and suppliers, with joint exercises |
| Communication | Updates are ad hoc | Some updates go to some audiences | Update rhythm and templates exist for each severity | Communication timeliness is measured and users are asked | Communication is coordinated with customers and partners |
| Learning | Reviews follow only the worst incidents | Some postmortems are written | Blameless postmortems follow defined triggers, with actions tracked | Action completion and recurrence are measured | Lessons are shared across teams and feed organization-wide change |

## Checklist

- [ ] We have a short definition of an incident with examples.
- [ ] We have a small severity scheme with user-impact examples and call lists.
- [ ] Each incident starts by naming an incident commander, an operations lead, and a communications lead.
- [ ] A live record is kept for each incident.
- [ ] Only the named operations lead changes production during an incident.
- [ ] Update intervals are agreed for each severity.
- [ ] Postmortem triggers are written down.
- [ ] Postmortems are blameless, shared, and reviewed.
- [ ] Every postmortem action has an owner and a date, and open actions are reviewed.
- [ ] We have practiced the process in the last six months.

## AI prompts

**Purpose: draft a one-page incident process from your current practice.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: turn an incident log into a blameless postmortem draft.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Purpose: write an incident status update for non-technical stakeholders.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Purpose: design a small incident exercise.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI skills

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): use to write the plan that sets roles, thresholds, and communication for your team.
- [postmortem](../../../../skills/postmortem/SKILL.md): use to run a blameless review and record actions after an incident.
- [runbook](../../../../skills/runbook/SKILL.md): use to turn known fixes into short procedures for the responder.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use to design a fair rota with backup and handoffs.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): use to plan what you tell users, staff, and the public during a major outage.

## Key sources

- **Managing Incidents** (Andrew Stribblehill, in *Site Reliability Engineering*, Google, sre.google): the clearest public account of incident command for service teams.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): the case for blameless postmortems, with triggers and culture-building ideas.
- **Incident management** (Wikipedia): a multi-field overview with a section on IT service management.
- **IT service management** (Wikipedia): the definition of incident and the place of incident handling in the service desk.

## References

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
