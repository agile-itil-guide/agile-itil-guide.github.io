# Organizational Change and Adoption

**Introducing agile ways of working into a service organization is a change in people's habits, roles, and incentives, and it succeeds when it starts where people are, shows early results, and treats resistance as information.**

## Why this matters

Everything in this guide asks an organization to change something: how it approves changes, who owns services, what it measures, how teams talk to each other. Many of those changes fail not because the idea is wrong but because the way it was introduced ignored the people who had to live with it. A new process is announced, training is held, and a year later the old habits are back, with a new set of forms layered on top.

Adopting agile and ITIL ideas together is especially prone to this. Each has its believers, vocabulary, and certificates, and each can be introduced as a replacement for the other. A change program that says "we are going agile and dropping ITIL" or "we are implementing ITIL 4 across the department" invites resistance from the people whose work is being declared obsolete. A change that starts from a shared problem and builds on what works is much more likely to stick.

Research on organizational change is large and contested. The English Wikipedia's article on organizational change redirects to its overview of organizational behavior, which does not describe change models; the article on change management does, and carries a banner that parts may contain unverified text. This topic uses that article, the articles on diffusion of innovations and communities of practice, and the rest of this guide. It names models as maps of what practitioners discuss, and not as proven methods.

## Core concepts

### What change management is

The Wikipedia article on change management describes a discipline focused on managing change within an organization, preparing and supporting individuals, teams, and leaders. It distinguishes organizational change management, which covers the full organization, from the narrower sense of how people and teams are affected. It also notes that in project management the term can mean change control, which is a different matter (see Topic 3.4 — Change Enablement for the technical sense).

### Named models

The article lists several models. They differ, and the article offers no empirical comparison of their effectiveness.

| Model | Outline, as the article gives it | Note |
|---|---|---|
| **Lewin's three steps** | Unfreezing, changing, refreezing | The article reports that some scholars called it "quaintly linear and static," while Burnes argues it was far from simplistic |
| **Kotter's eight steps** | Create a sense of urgency; build a guiding coalition; form a strategic vision and initiatives; enlist a volunteer army; enable action by removing barriers; generate short-term wins; sustain acceleration; institute change | From John Kotter's 1995 *Harvard Business Review* article and 1996 book *Leading Change* |
| **ADKAR** | Awareness, desire, knowledge, ability, reinforcement | Developed by Jeff Hiatt for Prosci; the article says scores of three or below on a five-point scale mark a barrier point and that the steps cannot be skipped or reordered |
| **Lean Change Management** | Favors "meaningful dialogue over broadcasting change communications" | Associated with Jason Little, begun in 2009 |
| **Others** | The Accelerating Implementation Methodology, General Electric's Change Acceleration Process, Bridges' three transition phases, plan–do–check–act, and human-centered design | See the article |

These are tools for thinking. None is a recipe, and the article reports that large top-down, plan-driven programs have reportedly failed, citing McKinsey. The article gives no numeric failure rate, so do not quote one.

### Resistance

The article lists causes of resistance: inertia, managers' reluctance to see themselves as part of a problem, the wish to save face in some cultures, and departments protecting their own interests. It also mentions threat rigidity, an inflexible adherence to routines under threat, and transformation saturation, or overload from too much change. One approach in the article treats resistance as predictable and manageable. A useful reading: resistance is often a signal. People may see a real problem with the change that its designers missed, or may be reacting to loss of status, competence, or control.

### Communication

The article says effective change communication explains the reasons for the change, the benefits, and the details. It describes models that include affected stakeholder groups in the guiding teams and favors dialogue over broadcast. For an agile ITIL change, that means explaining the problem being solved in the terms of the people affected, listening to their objections, and answering questions in person.

### Diffusion of innovations

Everett Rogers's theory of diffusion of innovations, first published in 1962, describes how new ideas spread. According to the Wikipedia article, Rogers defined five adopter categories (innovators, early adopters, early majority, late majority, and laggards) and five attributes that affect the speed of adoption: relative advantage, compatibility, complexity, observability, and trialability. Adoption over time typically follows an S-shaped curve. Opinion leaders matter most during evaluation, and change agents often introduce innovations through gatekeepers and then opinion leaders. The article reports criticism: a pro-innovation bias that assumes innovations are good and should be adopted, an individual-blame bias, and difficulty applying the theory consistently.

Practical lessons: make the new way visibly better than the old (relative advantage), fit it to existing practice (compatibility), keep it simple, let people try it on a small scale (trialability), and make results visible (observability). Win over the respected people in each group and let their experience speak.

### Communities of practice

A community of practice, according to Wikipedia, is a group that shares a concern or a passion for something they do and learns how to do it better as they interact regularly. The concept was introduced by Jean Lave and Etienne Wenger in their 1991 book *Situated Learning*, and Wenger's structure has three parts: the domain, the community, and the practice. The article lists barriers such as personal conflicts, overly large groups, and time constraints, and cites a claimed benefit of faster onboarding and quicker customer responses. It also gives an unverified savings figure for a company example, which this guide does not repeat.

In a change effort, communities of practice, such as one for people who run incident reviews or one for product owners, let practice spread sideways between teams without a central program (see Topic 3.9 — Knowledge Management).

### Coaching

Teams adopting new ways of working benefit from coaches who help them reflect, experiment, and learn, rather than trainers who deliver a method and leave (see Topic 1.10 — Agile Learning). Good coaching is local, continuing, and tied to real work. It also accepts that the right practice depends on context, which is why the Scrum Guide describes its framework as a container for other techniques and not a complete method (see Topic 1.4 — Scrum).

### Starting where you are

ITIL 4's guiding principle "start where you are" and the agile principle of simplicity both advise against beginning with a grand design (see Topic 2.4 — ITIL Guiding Principles). Look first at what exists: practices that already work, people who already use new methods, pains that people want removed. Build on them. A pilot with a willing team teaches more than a plan for the whole organization.

### Sustaining change

Kotter's later steps, generate short-term wins, sustain acceleration, and institute change, address what happens after the early push. Changes decay when attention moves on, when incentives still reward the old way, or when new staff are not brought in. Sustaining requires reinforcement: leaders who model the new behavior, measures that match it, and a way to teach newcomers.

### Limits of the sources

The article on organizational change is only an overview of organizational behavior, the change management article is flagged for unverified text and gives no empirical comparison, and the diffusion article reports that the theory is hard to apply consistently. Use the models for ideas, test them in your setting, and prefer evidence from your own pilots.

## Best practices

1. **Start from a problem people feel.** Choose a pain that teams and customers recognize, such as slow approvals or repeated outages, and frame the change as a response to it. Avoid beginning with a method name.
2. **Find the willing and start there.** Pilot with a team that wants to try. Rogers's categories suggest that innovators and early adopters set the example for others.
3. **Build a guiding group that crosses boundaries.** Include delivery, operations, governance, and a respected voice from the people affected. Kotter's guiding coalition is the idea.
4. **Explain the why, then listen.** State the problem, the expected benefit, and what will change, in words people use. Hold conversations, not only announcements, and record the objections.
5. **Treat resistance as information.** Ask what the resister sees that the plan does not. Address the loss of status or control, and fix real problems.
6. **Make the benefit visible.** Show early results from the pilot to the people watching, with numbers and stories. Visible wins make later steps easier.
7. **Make it easy to try.** Offer small steps, light templates, and help. Rogers's trialability and low complexity speed adoption.
8. **Remove barriers.** Ask each team what stops them, and remove at least one visible obstacle, such as an unnecessary approval or a missing tool.
9. **Use communities of practice.** Support voluntary groups where people share what works. Give them time and a modest budget, and let topics come from members.
10. **Coach, do not only train.** Provide coaching on real work, continuing over months. Make it a conversation about the team's own problems.
11. **Align incentives and measures.** Check that how people are assessed and rewarded matches the new way of working. Otherwise they will follow the incentives (see Topic 5.6 — Metrics and Measurement).
12. **Plan for the long run.** Reinforce the change with leaders' behavior, onboarding for new staff, and regular review. Do not declare victory early.

## Questions to discuss with your team

**What problem are we trying to solve with this change, and who feels it?**

Ask each person to state the problem in one sentence and name who feels it. Compare. If the answers differ, the change may be solving different problems for different people. The facilitator can ask what evidence shows that the problem exists. Write a shared statement.

**Who in the organization would try this first, and why them?**

List teams and individuals who would be willing and who are respected. Discuss what they would need. Avoid choosing the most favorable case only; pick one that is reasonably typical so that results persuade others. Invite them.

**What are we asking people to give up, and what do they gain?**

List the changes in terms of loss and gain for each group: roles, status, control, workload. Be honest about losses. Discuss what could offset them. This turns resistance into a design input.

**What resistance have we heard, and what is it telling us?**

Collect the objections without defending the plan. Group them. Ask which point to a real flaw, which to a communication gap, and which to loss. Choose one flaw to fix and one gap to close.

**How will people find out what works elsewhere in the organization?**

Ask where teams learn from each other now. Discuss a community of practice, a regular show-and-tell, or a shared channel. Remember the barriers: time, size, and conflict. Agree on one low-cost way to start.

**What will make this last after the project team moves on?**

Ask who owns the new way of working in a year, how newcomers learn it, and how it will be measured and rewarded. Gaps here predict decay. Agree on one reinforcing action.

## In practice: an agile ITIL example

A national customs authority has 600 IT staff in three groups: application development, infrastructure operations, and a service management office that owns processes. Releases happen twice a year, and each needs approval from a change board and a security review. A new director wants to move to frequent releases and announces a program to "adopt agile and DevOps" across the department. Within months, the service management office is anxious about its future, operations staff feel blamed, and development teams are cynical about another reorganization.

The director pauses the program and asks the head of the service management office and two team leads to review it. They talk to people in each group. The pain that everyone recognizes is slow, risky releases; the shared problem is clearer than any method. They pick a pilot: a team of nine, mixing developers, operations engineers, and a service management specialist, that runs the importer for customs declarations. The team wants to try. Its leader and the service management office agree on a lighter change path for the team's low-risk changes, with automated tests and recorded peer review, and the security group agrees to review a sample. The pilot team shares results at a monthly open session. A voluntary community of practice for people who run release and incident reviews begins, led by an operations engineer.

After a year, three more teams have asked to adopt the approach, release frequency has risen for the pilot team, and the service management office is writing guidance based on the pilot. Some problems remain. Two teams adopted the forms but not the practices, staff in one group still feel their expertise is undervalued, and annual objectives for managers still reward the number of controls reviewed. The director asks the service management office to coach the next teams on real work, revisits the objectives with human resources, and keeps the community of practice open to everyone.

## Four perspectives

### Product and delivery teams

Delivery teams are often the first to want change and the last to see its effect on others. Listen to operations and governance concerns, include them in the pilot, and avoid presenting your methods as replacements for their work. Share results openly.

### Service and operations teams

Operations teams carry knowledge about what has gone wrong before. Bring it to the change as constraints worth meeting, not as obstacles. Lead on what works, such as incident reviews, and offer your practices as a basis for the new way.

### Leadership and governance

Leaders set the conditions for change: they choose the problem, sponsor pilots, remove barriers, align incentives, and model new behavior. Avoid announcing a method and expecting adoption. Support coaches and communities of practice, and be patient with learning.

### Customers and users

Customers and users feel the effect of change through service quality and responsiveness. Tell the organization what matters most to you, and take part in reviews of pilots. Expect uneven results at first and change in how you are consulted.

## Common failure modes

- **Announcing a method.** The label arrives before the problem is understood. Instead, start from a shared problem.
- **Big-bang rollout.** Everyone changes at once and fails together. Instead, pilot with a willing team and spread from evidence.
- **Replacing ITIL or agile.** One camp is told it is obsolete. Instead, combine the useful practices and respect expertise.
- **Training without coaching.** A course is held and nothing changes. Instead, coach on real work, over months.
- **Ignoring incentives.** The old measures still apply. Instead, align objectives and rewards with the new way.
- **Treating resistance as a defect.** Objections are suppressed. Instead, ask what they reveal and fix real flaws.
- **Declaring victory early.** Attention moves on and habits revert. Instead, reinforce, measure, and bring in newcomers.
- **Copying a model's steps mechanically.** The sequence replaces thought. Instead, use models as prompts and adapt to your context.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Starting and framing | Changes are announced as methods | Some changes start from a stated problem | Changes start from a shared problem with a guiding group and a pilot | Pilot results are measured and used to decide spread | Change is planned jointly across groups, suppliers, and customers |
| Engagement and communication | Communication is one-way | Some consultation happens | Dialogue, objection logs, and visible responses are routine | Engagement and sentiment are measured and acted on | People across the organization shape and lead change |
| Spreading practice | Teams learn alone | Some teams share informally | Communities of practice and coaching are supported | Spread and adoption quality are tracked | Practice flows between teams, suppliers, and partners continually |
| Reinforcement | Old habits return after the project | Some measures and roles are adjusted | Incentives, onboarding, and leadership behavior support the change | Persistence of change is monitored and renewed | The organization adapts its ways of working routinely |

## Checklist

- [ ] The change is framed as a response to a problem that people feel, in a sentence everyone can repeat.
- [ ] A pilot with a willing team is under way, with agreed ways to judge it.
- [ ] A guiding group includes delivery, operations, governance, and respected voices from affected teams.
- [ ] Objections are collected, answered, and used to improve the plan.
- [ ] Early results are shown to the people watching.
- [ ] Obstacles named by teams are removed one by one.
- [ ] A community of practice or similar forum exists with time and a modest budget.
- [ ] Coaching on real work is available beyond initial training.
- [ ] Objectives and measures match the new way of working.
- [ ] A plan exists to onboard newcomers and to review the change after a year.

## AI prompts

**Purpose: state the problem a change is meant to solve, in the words of those affected.**

```text
Help me write a problem statement for a change we are considering.

The change, as proposed: [describe].
What different groups say about the current situation, in their words: [paste quotes from delivery teams, operations, governance, customers; remove names].
Facts we have (incidents, delays, costs): [paste].

Write a problem statement of three to five sentences that each group could accept as accurate, and list the points where the groups disagree about the problem. Suggest three questions to ask each group. Do not invent facts. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: map gains and losses for each group affected by a change.**

```text
For this change: [describe], help me think through what each group gains and loses.

Groups affected: [list roles and teams].
What we know about each group's current work and concerns: [paste].

Produce a table with, for each group: likely gains, likely losses (including status, control, and workload), likely objections, and one question to test each point with real people. Mark every point as an assumption to check. Do not assume motives. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a pilot.**

```text
Plan a three-month pilot of [change] with one team.

Why this team: [describe].
Constraints and rules that must stay (with source text): [paste, or write "none known"].
Support available (coach, sponsor, time): [describe].

Give a plan with: pilot scope, what will stay the same, what we expect to see and how we will judge it (leave targets as [to be agreed]), how objections will be collected, how results will be shared, conditions to stop, and how to decide on spreading. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: set up a community of practice.**

```text
Help me start a community of practice for [topic, e.g. "incident reviews"] across [teams].

Who might join: [list roles].
Time and budget available: [describe].
What would make it useful to members: [list, or write "unknown"].

Propose the domain, the first three sessions, a lightweight way to share outputs, how members decide topics, how to keep it small enough to work, and how to tell after three months whether it is useful. Avoid any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): use to plan the people side of a change across an organization.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use when helping teams adopt new ways of working on real work.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use to map who is affected by a change and what they need.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): use to launch a pilot team with shared goals and working agreements.
- [futurespective](../../../../skills/futurespective/SKILL.md): use to look ahead together at how the change should work in a year.

## Key sources

- **Change management** (Wikipedia): an overview of named change models, resistance, and communication, with a banner about unverified text.
- **Diffusion of innovations** (Wikipedia): Rogers's theory of how new ideas spread, with its adopter categories and criticisms.
- **Community of practice** (Wikipedia): the concept from Lave and Wenger and its use in organizations.
- **Leading Change: Why Transformation Efforts Fail** (John Kotter, *Harvard Business Review*, 1995): the article behind the eight-step model; read it directly for Kotter's own account.

## References

1. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
2. Diffusion of innovations — Wikipedia — https://en.wikipedia.org/wiki/Diffusion_of_innovations
3. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
4. Organizational behavior — Wikipedia — https://en.wikipedia.org/wiki/Organizational_behavior
5. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
6. Kurt Lewin — Wikipedia — https://en.wikipedia.org/wiki/Kurt_Lewin
7. John Kotter — Wikipedia — https://en.wikipedia.org/wiki/John_Kotter
8. ADKAR — Wikipedia — https://en.wikipedia.org/wiki/ADKAR
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
