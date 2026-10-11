# Agile Service Management

**Agile service management applies agile values and methods to the design and improvement of service management itself, treating each process as a product with an owner, a backlog, and users who can say whether it works.**

## Why this matters

Most of this guide has looked at how agile teams can use service management practices. This topic turns the question around: how can service management practices be built and changed in an agile way? Many organizations have processes for incidents, changes, and requests that were designed once, rolled out in a project, and left. They are slow to change, disliked by the people who must follow them, and out of step with how the organization now builds software. That is the opposite of what the Manifesto's principle of welcoming change would suggest (see Topic 1.2 — Agile Principles).

The remedy is not to abandon process but to treat it as something that is designed with its users, released in small steps, and improved from evidence. ITIL 4's guiding principles say as much: start where you are, progress iteratively with feedback, collaborate and promote visibility, and keep it simple and practical (see Topic 2.4 — ITIL Guiding Principles). The Wikipedia article on ITIL says ITIL 4 was aligned with agile, DevOps, and lean ways of working when it was released in 2019. The ISO/IEC 20000 article lists recent parts of that standard, including guidance on agile and DevOps, though it does not give their content.

There is little formal research on agile service management as such, and the Wikipedia articles consulted for this guide do not cover it. This topic therefore draws on the Scrum Guide's description of roles and artifacts, on the agile and ITIL principles, and on the rest of this guide, and offers its approach as practical synthesis to try, not as established method.

## Core concepts

### Processes as products

A **process**, in this sense, is any repeatable way of working that a service organization asks people to follow: how to report an incident, how to request access, how to approve a change. Seen as a product, a process has:

- **Users:** the people who follow it and the people it serves.
- **A purpose:** the outcome it exists to achieve.
- **An owner:** someone accountable for its value, as the Scrum Guide describes the Product Owner as the one person accountable for maximizing the value of the product and ordering its backlog (see Topic 1.4 — Delivery Forecasting and Planning Metrics).
- **A backlog:** an ordered list of improvements.
- **Releases:** changes delivered in small steps, with notes.
- **Measures:** evidence of whether it works.

Thinking this way changes the questions. Not "have we implemented the change process?" but "does the change process help people do their jobs, and what is the next improvement?"

### Roles

| Role | In a product team | For a service management process |
|---|---|---|
| **Product owner** | Orders the backlog and is accountable for value | The process owner, who decides what to improve next and why |
| **Developers / team** | Build the increment | The people who design and run the process, ideally including users from delivery and operations |
| **Scrum Master or coach** | Helps the team apply the framework and removes impediments | A coach who helps the team practice continuous software delivery and gather feedback |
| **Stakeholders** | Review the increment and give feedback | Delivery teams, the service desk, auditors, customers |

The mapping is this guide's, not a standard. Process owners in many organizations lack authority or time, so the first step is often to give them both.

### The process backlog

Improvement ideas for a process come from many places: incident reviews, retrospectives, audit findings, user complaints, and metrics (see Topic 3.15 — Continual Improvement). A process backlog collects them in one ordered list. Items are small and described from the user's view: "As a developer, I want low-risk changes to be approved automatically so that I can release when ready." The product owner orders the list by value and effort, and the team takes items into short cycles.

### Continuous software delivery of process changes

Instead of designing a full process and rolling it out, design the smallest version that could work, try it with a few users, and learn:

| Step | What happens |
|---|---|
| **Find the problem** | Observe how people really work and where they struggle |
| **Design a small change** | A new form, a shorter approval route, a checklist |
| **Try it** | With one team, or one type of work, for a short period |
| **Check** | Compare with what you expected, using data and conversation |
| **Adopt, adjust, or drop** | Spread what worked; fix or abandon what did not |

This is the plan–do–check–act cycle applied to the process itself (see Topic 3.15 — Continual Improvement).

### Design with users

Process designers who do not use the process make avoidable mistakes. Involve the people who follow it: invite engineers to design the change process, desk analysts to design the incident form, and customers to design the request catalog. Watch real work. Test with real cases. This is "customer collaboration over contract negotiation" applied inside the organization (see Topic 1.1 — Agile Manifesto).

### Minimum viable process

A **minimum viable process** is the smallest set of steps, records, and roles that achieves the purpose. Adding to it needs a reason. The guiding principle "keep it simple and practical" supports this. A useful test of each step is to ask what would happen if it were removed, and who would notice. Controls required by law or contract are kept, with the source named; others are questioned.

### Process releases and communication

When a process changes, people need to know. Treat changes like releases: a short note describing what changed, why, and what to do differently, with a contact for questions. Release in small steps, on a rhythm people can follow, and avoid surprising teams with large changes. Keep a visible history of changes.

### Standards, audits, and agility

Many organizations must satisfy standards or auditors. ISO/IEC 20000 is a standard for service management systems, and Wikipedia lists a recent part of it with guidance on agile and DevOps (see Topic 2.7 — ITSM Frameworks and Standards). A process built in small steps can satisfy audits if the records show how it works and how it changes: the backlog, release notes, and measures are themselves evidence. Discuss with auditors early what they need, and show them the way you work.

### Agile service management and DevOps

Practices from DevOps, such as automation and pipelines, are tools for implementing processes (see Topic 5.2 — DevOps). Where a process step can be automated, such as recording a change from a pipeline, do so, and treat the automation as part of the process. Agile service management and DevOps share an interest in short cycles and rapid feedback.

### Limits

The approach assumes people have time and mandate to improve process, which is not always true. It can fail when process ownership is nominal, when stakeholders demand a finished design before they will try anything, or when every change needs a long approval. It also risks constant churn if changes are too frequent for people to absorb. Balance continuous delivery of change with stability: change on a predictable rhythm.

## Best practices

1. **Name an owner for each process.** Choose someone with authority to change it and time to do it. Make their role clear: they are accountable for how well the process serves its purpose.
2. **Write a one-sentence purpose.** State what the process is for and whom it serves. If you cannot, the process may be a candidate for removal.
3. **Keep a process backlog.** Collect ideas from reviews, audits, feedback, and data into one ordered list. Show it to the people who follow the process.
4. **Involve the users in design.** Include engineers, desk analysts, and customers in workshops and trials. Observe real work before changing it.
5. **Start with a minimum viable process.** Design the smallest version that meets the purpose and legal needs. Add steps only when a problem justifies them.
6. **Try before you roll out.** Pilot with one team or one type of work for a short, defined period. Agree what you will look at before you start.
7. **Release changes in small steps on a rhythm.** Publish a short note for each release of the process, with a contact. Avoid large, surprise changes.
8. **Measure the process.** Choose a few measures of whether it works, such as time taken, rework, and user satisfaction (see Topic 5.6 — Metrics and Measurement). Review them with users.
9. **Automate where it helps.** Capture records from tools, not forms; make the easy path the right path. Check that automation does not hide judgment that people should make.
10. **Keep the evidence for auditors.** Store the backlog, decisions, release notes, and measures where auditors can see them. Invite them to a review of how the process changes.
11. **Retire process.** Remove steps, forms, and records that no longer serve their purpose. Treat deletion as an improvement.
12. **Review process ownership yearly.** Check that each process still has an active owner, a current backlog, and users who can reach them.

## Questions to discuss with your team

**Who owns each of our processes, and what authority do they have to change it?**

List the main processes and name the owner for each. Ask what the owner can change without asking anyone. Often the answer is "very little." The facilitator can ask what would be needed for the owner to make small changes quickly. Agree on one process to start with.

**What is our change process for? Can we say it in one sentence?**

Ask each person to write a purpose. Compare. Differences show confusion about why the process exists. Use the shared statement to judge each step. Remove or question steps that do not serve it.

**When did we last change a process because users asked, and how did we find out?**

Ask for examples. If there are none, ask where complaints go. Discuss how feedback could reach the owner: a channel, a regular review, a short survey. Choose one route to try.

**What would a one-month trial of a simpler process look like?**

Choose a process with known friction. Describe a lighter version, who would try it, what you would measure, and what would make you stop. This turns an argument into an experiment. Agree on the details and the date.

**What evidence would our auditors accept from a process of continuous software delivery?**

Ask an auditor or compliance colleague. List what the process produces: a backlog, release notes, measures, records. Discuss gaps. Teams are often surprised by how willing auditors are to accept clear evidence of controlled change.

**How do people find out that a process has changed?**

Trace the last change. Many people learned from a colleague or by running into it. Discuss release notes and a visible change log. Agree on a simple way to announce changes and where they live.

## In practice: an agile ITIL example

A national road-safety agency has an IT department of 90 people who support an application used by police and courts. The department's incident process was written eight years ago: a 14-field form, three approvals to close a high-priority incident, and a monthly report that nobody reads. Delivery teams skip the form during outages and fill it in afterwards, so its records are poor. An audit finding says that incident records are incomplete.

The head of service management names herself owner of the incident process and forms a small working team: two analysts from the service desk, an engineer from each of two delivery teams, and a quality officer from the agency's governance unit. She writes a purpose for the process: to restore service quickly and to learn from what happened. The team watches three real incidents. They find that the form is filled in after the event, mostly with the same few values, and that the approvals add delay without ever changing an outcome. They build a backlog and start with the smallest changes. A trial with two teams reduces the form to six fields filled in automatically from the monitoring tool where possible, drops two of the three approvals, and adds a short blameless review for every high-priority incident.

After six weeks, the trial teams record incidents during the outage rather than after, and the quality officer finds the records more complete than before. The team publishes a one-page release note, extends the change to all teams, and shows the auditor the backlog, the trial results, and the measures. Some difficulties remain. One delivery team never joined the trial and still uses the old form, a supplier's contract requires a field the new form omits, and the quality officer worries that dropping approvals will be questioned in the next audit. The head of service management adds a field for the supplier case, asks the remaining team to join the next round, and agrees with the auditor to review the incident records at the next quarterly meeting.

## Four perspectives

### Product and delivery teams

Delivery teams are the users of many service management processes. Join the design of the ones that affect you, offer data on how they work in practice, and try pilots. Where a process step can be automated in your pipeline, offer to build it.

### Service and operations teams

Operations teams often own the processes. Treat each as a product: write a purpose, keep a backlog, ask users, and release small changes. Make time for process improvement and defend it, because delivery work will crowd it out.

### Leadership and governance

Leaders give process owners authority and time, and set the expectation that processes change from evidence. Ask for the purpose and the measures of each process, and for the backlog. Support trials and be willing to accept evidence in new forms.

### Customers and users

Customers and users of services follow processes too, such as requests and approvals. Tell the owner what is confusing or slow. Offer to take part in a trial. Expect changes to be announced and explained.

## Common failure modes

- **Process without an owner.** Nobody can change it. Instead, name an owner with authority and time.
- **Big-bang redesign.** A whole new process is rolled out at once and rejected. Instead, change in small steps and pilot.
- **Design by committee away from users.** The process suits the designers. Instead, include the people who follow it and watch real work.
- **Constant churn.** Changes arrive too often to absorb. Instead, release on a predictable rhythm.
- **Forgetting the legal requirements.** A control is dropped that was needed. Instead, check what each step is required for and name the source.
- **Changes not announced.** People discover them by accident. Instead, publish short release notes.
- **Evidence not kept.** The audit cannot see how the process changed. Instead, keep the backlog, decisions, and measures.
- **No removal.** Steps accumulate. Instead, treat deletion as an improvement.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Ownership and purpose | Processes have no clear owner or purpose | Some processes have owners | Every process has an owner with authority, and a written purpose | Owners are reviewed for effectiveness and supported | Owners work together across teams to align processes end to end |
| Backlog and change | Changes are projects, rare and large | Some owners keep lists of ideas | Each process has an ordered backlog and releases changes in small steps | Backlog flow and release effects are measured | Process changes are coordinated across processes and with suppliers |
| Involving users | Designers rarely consult users | Some trials are run with users | Users take part in design and trials as standard | User feedback and satisfaction are measured and acted on | Customers and suppliers take part in process design |
| Evidence and audit | Records are poor and changes unrecorded | Some process changes are logged | Backlog, release notes, and measures serve as audit evidence | Auditors review the change record regularly | Evidence is shared with auditors and partners continuously |

## Checklist

- [ ] Each main process has a named owner with authority and time.
- [ ] Each process has a one-sentence purpose and a defined set of users.
- [ ] Each process has a visible, ordered backlog of improvements.
- [ ] Users from delivery and operations take part in design and trials.
- [ ] Changes are piloted before roll-out, with a defined check.
- [ ] Process changes are released on a rhythm with short notes.
- [ ] A few measures show whether each process works.
- [ ] Legal and contractual controls are identified with their sources.
- [ ] Auditors have seen the backlog, release notes, and measures.
- [ ] Steps that no longer serve a purpose are removed.

## AI prompts

**Purpose: draft a purpose statement and user list for a process.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: turn feedback and incident reviews into a process backlog.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Purpose: design a one-month trial of a lighter process.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: write a release note for a process change.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## AI skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make clear who owns each process and who is consulted.
- [user-story](../../../../skills/user-story/SKILL.md): use to write process backlog items from the user's point of view.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to study how a process actually runs and where it struggles.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use to review how a process is working with its users.
- [kaizen](../../../../skills/kaizen/SKILL.md): use to plan small, continuous improvements to a process.

## Key sources

- **The Scrum Guide** (Ken Schwaber and Jeff Sutherland, scrumguides.org): the source for the roles and artifacts used here as an analogy for process ownership and backlogs.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): the agile side of the design approach.
- **ITIL** (Wikipedia): the history of ITIL 4's alignment with agile, DevOps, and lean ways of working.
- **ISO/IEC 20000** (Wikipedia): the list of parts, including recent guidance on agile and DevOps.

## References

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
