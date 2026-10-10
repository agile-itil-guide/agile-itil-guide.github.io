# Knowledge Management

**Knowledge management makes what people know available to others when they need it, and the approach that works for agile teams is to capture knowledge as a by-product of the work, keep it short and owned, and combine writing with conversation.**

## Why this matters

Every service depends on knowledge: how it works, what has gone wrong before, how to fix it, and why it was built that way. When that knowledge lives only in a few heads, the service is fragile. A holiday, a resignation, or a bad night on call can turn a ten-minute fix into a ten-hour outage. Knowledge management is the practice of making sure the people who need to know can find out.

The agile tradition leans toward conversation and working software over documentation, and the Agile Manifesto's authors have been criticized for it (see Topic 1.1 — Agile Manifesto). A fair reading is that documentation must earn its place. Knowledge management gives a way to decide what earns it: knowledge that is used often, is costly to rediscover, or is held by too few people. For the rest, conversation and pairing may serve better.

The [Wikipedia article on knowledge management](https://en.wikipedia.org/wiki/Knowledge_management) is broad and describes the field as the processing of knowledge to accomplish organizational goals, distinct from content or information management. It records history, models, approaches, enablers, barriers, and criticisms, and says nothing specific about IT services. This topic uses the article's general ideas and applies them to service teams, flagging where it is applying and not reporting.

## Core concepts

### What knowledge management is

Wikipedia describes knowledge management (KM) as covering processes for organizational awareness, learning, collaboration, and innovation, using and sharing knowledge to support an organization's goals. It notes that practices such as apprenticeships, corporate libraries, and mentoring long predate the term. KM emerged as a discipline in the early 1990s, with academics including Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport, and Baruch Lev helping to develop the field. The article says ISO 9001:2015 added a specification for "organizational knowledge."

### Tacit and explicit knowledge

The article distinguishes two forms. **Tacit knowledge** is internalized and often not consciously known. **Explicit knowledge** is held consciously and can be easily communicated. Nonaka's SECI model (socialization, externalization, combination, internalization), which the article attributes to Nonaka and Takeuchi's 1995 book, describes a spiral between the two. The article also notes that later researchers called the split an oversimplification.

For a service team the distinction is practical. An experienced engineer can often sense that an alarm is probably noise or that a particular release is risky, and cannot easily write down why. Some of that sense can be turned into runbooks and checks; some can only be shared by working together.

### Codification and personalization

Following Hansen and colleagues (1999), the article distinguishes two strategies. **Codification** stores knowledge in repositories so that others can reuse it. **Personalization** shares knowledge through direct contact between people. Each fits different knowledge:

| Strategy | Suits | Examples in a service team |
|---|---|---|
| Codification | Repeated, well-understood tasks | Runbooks, known-error records, service descriptions, how-to articles |
| Personalization | Complex, changing, or judgment-heavy matters | Pairing on-call, shadowing, communities of practice, design discussions |

Most teams need both. A knowledge base of recipes does not teach judgment, and conversation alone does not scale to the night shift.

### Communities of practice

The article lists communities of practice among perspectives on KM. In a service organization they can be as simple as a regular informal meeting of people who work on similar problems across teams, such as database engineers or desk analysts. They spread knowledge and norms and give people a place to ask.

### What to capture

Not everything deserves a record. Useful candidates in a service team include:

- **How to restore a service:** runbooks and recovery steps (see Topic 3.2 — Incident Management).
- **Known errors and workarounds:** symptom, workaround, and owner (see Topic 3.3 — Problem Management).
- **Service descriptions:** what a service does, who owns it, and what it depends on (see Topic 3.8 — Service Catalog Management).
- **Decisions and their reasons:** why a design was chosen, so future changes do not undo it blindly.
- **Lessons from incidents:** postmortems that others can read.
- **Answers to common user questions:** short articles for the service desk and for self-service.

### Enablers and barriers

The article names people and culture, processes and structure, and technology as core components. It notes that motivations include innovation, shorter development cycles, and leveraging expertise, and that organizations use incentives such as mandatory content submission, but it says there is no consensus on whether incentives work. It lists barriers such as knowledge not transferring, insufficient education, and the loss of knowledge when experienced workers leave. For service teams, the barriers that matter most are time pressure, unclear ownership of content, tools that are awkward to use, and a culture that rewards heroics over sharing.

### Knowledge in the flow of work

A practical principle, widely used in service desks, is to capture knowledge as part of the work and not as a separate task. When an analyst solves a new problem, the solution becomes a draft article before the ticket is closed. When an engineer fixes an incident, the steps go into the runbook. This turns each piece of work into a small contribution. The sources read for this guide do not describe a specific method for doing so, so treat the principle as common practice to test, and see what works with your tools.

### Criticisms and limits

The article records criticisms: that the practical relevance of academic KM research has been questioned, that the tacit–explicit distinction has been critiqued, that the effectiveness of incentives is contested, and that protecting knowledge carries risks such as overprotection and misappropriation. It reports no measured evidence of KM's effectiveness or return on investment. For a service team the lesson is modest ambition: start with the knowledge whose absence has hurt, measure whether it gets used, and drop what is not.

### Knowledge and organizational learning

The article says KM is similar to organizational learning but gives more emphasis to knowledge as a strategic asset and to information sharing, and that KM facilitates organizational learning. This links to agile learning (see Topic 1.10 — Agile Learning) and to continual improvement (see Topic 3.15 — Continual Improvement).

## Best practices

1. **Start with the knowledge whose absence has hurt.** List the last few incidents or delays caused by missing knowledge. Start with those topics, not with an attempt to document everything.
2. **Capture knowledge at the moment of work.** Make writing a short note part of closing an incident, a request, or a change. A rough note written now is more valuable than a polished article planned for later.
3. **Keep articles short and structured.** Use a consistent form: symptom, cause if known, steps, when to escalate, owner, last review date. People under pressure read headings and numbered steps.
4. **Give every article an owner and a review date.** Content without an owner decays. Show the review date on the article so that readers can judge trust.
5. **Delete and merge.** Retire articles nobody uses and merge duplicates. A smaller, current base is better than a large, stale one.
6. **Make it easy to find.** Put knowledge where people already work, test search with real queries, and link articles from tickets, the service catalog (ITIL spells it "service catalogue"), and runbooks.
7. **Test runbooks by using them.** Ask the person who will use a runbook to follow it on a test case. Fix what is unclear. This turns a document into working knowledge.
8. **Pair and shadow for the tacit.** Have less experienced people work with experienced ones on real incidents and changes. Plan the pairing, since it will not happen when everyone is busy.
9. **Support communities of practice.** Give people time and a place to meet across teams. Let the topics come from the members.
10. **Record decisions and reasons.** Keep a brief record of significant design and process decisions and why they were made. It prevents rediscovery and helps newcomers.
11. **Share the lessons.** Publish postmortems and problem summaries widely, in plain language, and ask other teams what applies to them (see Topic 3.2 — Incident Management).
12. **Watch for knowledge risk.** Once a quarter, list the skills and systems that depend on one person, and plan to spread them. Treat departures as a prompt to review.

## Questions to discuss with your team

**What would we be unable to do if one named person were away for a month?**

Ask the team to name people whose absence would hurt and why. List the tasks that depend on them. This is usually a long list, and uncomfortable for the people named. Frame it as a risk to the service, not a judgment. The facilitator can ask which task is most urgent to share and how. Choose one to start with.

**What do we write down, and does anyone read it?**

Ask for the last three documents people used and the last three they wrote. Compare. The gap shows where documentation effort is misplaced. Ask what a useful version of the unread documents would look like, or whether they should be deleted. Agree to retire or fix one.

**When we fix something new, where does the knowledge go?**

Trace the last new problem: who fixed it, who knows how, and where it was recorded. If the answer is "in a ticket" or "in my head," discuss what a better route would look like. Often a small habit, such as a template at closure, makes a difference. Try one for a month.

**Which knowledge is best shared by working together, not by writing?**

Ask where judgment matters: reading a graph, deciding when to escalate, knowing a customer. Discuss how newcomers learn these today. Typical answers are luck and time. Plan a deliberate arrangement, such as shadowing on-call. Agree who will pair with whom.

**How do we know whether a knowledge article is still true?**

Pick an article and test it. Check the owner, the review date, and whether the steps work. Many fail the test. Ask what review cycle is realistic, and who can retire articles. The aim is a visible sign of trust on each article.

**What stops us from sharing what we know?**

Collect honest answers: no time, fear of looking foolish, no obvious place, no recognition. The Wikipedia article notes that the effectiveness of incentives is contested, so avoid easy answers. Ask which obstacle the team could change and which needs management. Commit to one visible change.

## In practice: an agile ITIL example

A national railway's passenger information team of fourteen runs the systems behind station displays and the timetable app. The most experienced engineer, who built the display controller, announces his retirement in six months. Nobody else understands how the controller handles failures, and the documentation is a 200-page design document written ten years ago.

The team lead lists what the engineer knows that others do not. He gets three groups: how to restore the controller after a failure (explicit and repeatable), why certain odd behaviors exist (partly written, partly in memory), and how to judge when a fault is serious (tacit). For the first, the team writes runbooks with the engineer and tests each one by having a colleague follow it on a test unit. For the second, a pair of engineers interviews him weekly and writes short decision notes in a shared folder, each with an owner. For the third, a less experienced engineer shadows him on every on-call incident for six months, and takes the lead on some while he watches.

At the end of six months, three engineers can handle controller failures, the 200-page document is replaced by eleven short runbooks and twenty decision notes, and the team has a monthly session where one person explains something they know. Problems remain. Two runbooks failed when tested on a different hardware version and had to be rewritten, and the tacit judgment is only partly transferred: the shadowing engineer says some calls still feel like guesses. The team plans a second round of shadowing with the retiring engineer's successor and agrees to review the runbooks each quarter.

## Four perspectives

### Product and delivery teams

Delivery teams hold much of the knowledge of how services are built. Write short runbooks and decision notes as part of your definition of done, and test them with the people who will use them. Share design reasons with operations so that changes do not undo them.

### Service and operations teams

Operations teams generate and use much of the day-to-day knowledge. Capture solutions when you close tickets, keep known errors current, and ask delivery teams for what you need. Make articles easy to find for the desk and for self-service.

### Leadership and governance

Leaders shape whether sharing is rewarded or discouraged. The Wikipedia article says incentives are contested, so focus on removing obstacles: give time, make the tools easy, and reward people who help others. Track knowledge risk, such as single points of expertise, in the same way as other service risks.

### Customers and users

Customers and users benefit from clear answers and self-service articles. Tell the team when an article is wrong or missing. Ask providers how they learn from incidents and how they share what they learn with you.

## Common failure modes

- **Documenting everything.** The base becomes large and stale. Instead, start with knowledge whose absence has hurt and add as needed.
- **Writing separate from working.** Capture is a chore after the fact. Instead, make a short note part of closing the work.
- **No owners.** Nobody updates articles. Instead, name an owner and a review date for each.
- **Poor search.** People cannot find what exists, so they write duplicates. Instead, test search with real queries and link articles from where people work.
- **Ignoring the tacit.** Everything is assumed to be writable. Instead, plan pairing, shadowing, and communities of practice.
- **Untested runbooks.** Steps fail when needed. Instead, have a user follow each runbook on a test case.
- **Hoarding as status.** People protect knowledge to protect their position. Instead, recognize sharing and spread dependency.
- **Mandating content.** Quantity targets produce thin articles. Instead, focus on use and quality, and remember that the effect of incentives is contested.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Capturing knowledge | Knowledge lives in heads and chat | Some teams keep notes and runbooks | Capturing a note is part of closing work | Capture rates and usefulness are reviewed | Knowledge capture is shared across teams and suppliers |
| Quality and ownership | No owners; content decays | Some articles have owners | Every article has an owner and a review date | Accuracy and use are measured; stale content is removed | Quality practices are shared and improved across the organization |
| Findability and use | Search is poor; people ask each other | Some content is linked from tickets | Knowledge is linked from tickets, catalog, and runbooks | Use and search failures are measured and fixed | Knowledge is available to users, suppliers, and partners as appropriate |
| Sharing the tacit | Sharing is by chance | Some pairing and shadowing happen | Pairing, shadowing, and communities of practice are planned | Knowledge risk is tracked and reduced | Communities and rotation move knowledge across teams routinely |

## Checklist

- [ ] We have listed the knowledge whose absence has hurt us, and started there.
- [ ] Closing an incident, request, or change includes a short note when something was new.
- [ ] Articles follow a short common structure with an owner and a review date.
- [ ] Runbooks have been tested by someone who did not write them.
- [ ] Search works for real queries, and articles are linked from tickets and the service catalog.
- [ ] Unused and duplicate articles are retired.
- [ ] We have a plan to spread knowledge held by one person.
- [ ] Pairing or shadowing is planned for judgment-heavy work.
- [ ] Lessons from incidents are shared beyond the team.
- [ ] We review knowledge risk at least quarterly.

## AI prompts

**Purpose: turn a resolved ticket into a draft knowledge article.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Purpose: find knowledge risk in your team.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: review a runbook for clarity before testing it.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Purpose: plan a knowledge handover for someone leaving.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [runbook](../../../../skills/runbook/SKILL.md): use to write step-by-step procedures that someone else can follow under pressure.
- [postmortem](../../../../skills/postmortem/SKILL.md): use to record lessons from incidents in a form others can read.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): use to record why a design decision was made.
- [decision-records](../../../../skills/decision-records/SKILL.md): use to keep a short record of important non-architectural decisions.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): use to find skills gaps that knowledge sharing should address.

## Key sources

- **Knowledge management** (Wikipedia): a broad overview of the history, models, approaches, and criticisms of the field.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): how one organization shares lessons from incidents.
- **Tacit knowledge** (Wikipedia): background on the knowledge that is hard to write down.
- **Community of practice** (Wikipedia): background on cross-team groups that share knowledge.

## References

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
