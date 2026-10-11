# Service Desk

**The service desk is the place where users and the service provider meet, and in an agile organisation its most valuable output is not closed tickets but what it learns about how users experience the service.**

## Why this matters

For most users, the service desk is the service. They rarely see the engineers, the architecture, or the pipeline; they see the person who answers when something goes wrong. How that conversation goes shapes their trust in everything behind it. A friendly, competent desk can soften a bad outage, and a dismissive one can sour a good service.

The desk is also the best sensor an organisation has. Every contact is a small piece of evidence about what users find confusing, what breaks, and what they wish the service did. Agile teams that release often need that evidence quickly. A desk that is isolated from delivery teams produces tickets, and a desk that is connected produces improvements.

The [Wikipedia article on IT service management](https://en.wikipedia.org/wiki/IT_service_management) describes the service desk as a single point of contact between providers and users or customers, handling incidents and service requests. The [Wikipedia article on help desks](https://en.wikipedia.org/wiki/Help_desk) is short: it covers the definition, queue management, and call routing, and says nothing about history, support tiers, metrics, or the difference between a help desk and a service desk. This topic therefore draws on those two articles for definitions, and the rest is practical guidance offered as such, not as established findings.

## Core concepts

### What a service desk is

A **help desk**, according to Wikipedia, is a department or person that gives assistance and information, usually for electronic or computer problems. A **service desk**, in ITSM usage, is broader: the single point of contact for users and customers, handling both incidents (disruptions or potential disruptions to a service) and service requests (routine requests for something the service normally provides). The help desk article lists "service desk" only as a related topic, so the exact boundary between the two terms is not given there. Many organisations use the words interchangeably; what matters is what your desk is expected to do.

### Users and customers

The ITSM article distinguishes users, who use the service, from customers, who pay for it or commission it. A desk hears mainly from users. It should also know who the customers are, because they decide priorities and funding. A good desk can speak to both.

### Queues and routing

Wikipedia says large help desks have a person or team that manages incoming requests, often called queue managers or queue supervisors, who assign each issue to a specialised team by type. Some desks use telephone systems with automatic call distribution that route calls on specific topics to analysts with the right experience. Routing is the desk's main tool for matching the problem to the person who can solve it.

### Levels of support

Many desks organise support in levels, often called tiers. The sources read for this guide do not describe tiers, so the following is a common practice described in general terms, not a claim from a source:

| Level | Typical role |
|---|---|
| First line | Receives contacts, records them, resolves common issues using documented knowledge, and routes the rest |
| Second line | Handles harder issues that need deeper technical skill |
| Third line | Specialists, often the engineers who build the service, who fix underlying faults |

The model has a known weakness: it can make each level a place where work waits. Agile teams often try to shorten the path so that a desk analyst can reach an engineer directly (see Topic 3.2 — Incident Management).

### Channels

Contacts arrive through telephone, email, chat, a web portal, or in person. Each channel suits different users and problems. A portal can make requests structured and fast. A telephone line suits an urgent outage. Offering several channels is good, provided all feed the same record, so that demand is visible in one place (see Topic 2.1 — IT Service Management on the single front door).

### Self-service and knowledge

Many desks offer self-service: a portal where users can find answers and make routine requests without speaking to anyone. The sources read do not describe self-service, but it connects to two practices in this guide: a good knowledge base (see Topic 3.9 — Knowledge Management) and a clear list of services (see Topic 3.8 — Service Catalog Management).

### The desk as a source of evidence

What a desk records can be valuable to the whole organisation: the most common questions, the most common faults, how long things take, and what users say. This evidence helps delivery teams decide what to fix, helps problem management find causes (see Topic 3.3 — Problem Management), and helps service level management agree realistic targets (see Topic 3.7 — Service Level Management). A desk that records only enough to close tickets wastes this.

### Measures

Desks are often judged by counts: contacts handled, time to answer, time to close. Counts are easy to collect and easy to misuse. Time to close can be gamed by closing tickets early, and counts of contacts can reward handling repeat problems instead of removing them. Better measures include user satisfaction, how often a contact is resolved at first touch, and whether repeat contacts about the same issue fall over time. Treat any measure as a prompt for a question and agree what you will do with it (see Topic 5.6 — Metrics and Measurement).

### Criticisms and limits

The Wikipedia articles read for this guide name no criticisms of help desks or service desks. Practitioners commonly raise some familiar concerns: that desks are treated as a cost to minimise, that scripts replace judgment, that the people who answer have no power to fix anything, and that turnover is high. These are widely discussed but are presented here as common concerns, not as findings from the sources.

## Best practices

1. **Give the desk a clear purpose.** Write down what the desk is for: who it serves, what it handles, and what it passes on. A desk without a stated purpose drifts into handling whatever arrives.
2. **Offer a few good channels that feed one record.** Choose the channels your users prefer, and make sure each creates a record in the same place. Hidden channels, such as personal messages to engineers, hide demand.
3. **Separate incidents from requests from questions.** Use simple categories and examples, so analysts classify consistently. The separation matters for priority and for reporting (see Topic 3.6 — Service Request Management).
4. **Put knowledge in front of the analyst.** Provide short, searchable guidance for the most common problems, and update it when the answer changes. Ask analysts which articles they use and which are wrong.
5. **Let the desk fix what it can.** Where safe, give analysts authority and tools to resolve common issues, such as password resets and access grants. Every unnecessary escalation costs the user time.
6. **Create a direct line to engineers.** Make it easy for analysts to ask a delivery team about a new fault, and for the team to tell the desk about a release. A shared channel and a named contact are enough to start.
7. **Tell the desk about changes before users feel them.** Share release notes and known issues with the desk in advance (see Topic 3.5 — Release and Deployment Management). Surprises make the desk look uninformed.
8. **Record enough to learn, and no more.** Capture the category, the service affected, what happened, and how it was fixed. Review fields regularly and remove those nobody uses.
9. **Review contacts in themes.** Once a month, group recent contacts by cause and look at the top few. Share the themes with delivery teams and problem management.
10. **Ask users how it went.** Use a short question after a contact, such as whether the problem was solved. Read the comments. Combine with other evidence, since a satisfaction score alone is easy to misread.
11. **Look after the people.** Provide training, variety, and a path to other roles. A desk is only as good as the people who staff it, and high turnover is a cost that does not appear in ticket counts.
12. **Treat the desk as part of delivery.** Include a desk representative in sprint reviews and planning, and treat desk feedback as backlog input (see Topic 5.1 — Agile Service Management).

## Questions to discuss with your team

**What does a user experience when they contact us, from the first moment to the answer?**

Walk through a typical contact as the user. Note how they find the desk, what they are asked, how long they wait, and what they hear. Ask a few users if possible. The aim is to see the service from outside. A facilitator can ask where the user is most likely to feel ignored. Follow up by picking one step to improve.

**What do we hear most often, and what has been done about it?**

List the five most common contact reasons from the last month. Beside each, write what, if anything, has been done to reduce it. A gap shows where the desk's evidence is not reaching anyone who can act. Ask who should receive the list and how often. Agree to send the first one this month.

**Where can an analyst not solve something that they could with the right tool, access, or knowledge?**

Ask analysts for examples of escalations that felt unnecessary. Typical answers include access they lack, knowledge that is out of date, and fear of making a mistake. Treat the answers as a list of improvements. Ask which can be done safely now, and what safeguards would help for the rest.

**How do we find out about changes that affect users, and how soon?**

Look at the last few releases or outages and ask when the desk learned of each. Late information is common. Ask what channel would work: a shared feed, a short briefing, a named contact. The delivery teams should be in the room. Agree on a simple rule, such as no release without a note to the desk.

**Which of our measures help us improve, and which do we only report?**

List the measures the desk produces and ask who uses each. Measures nobody uses are candidates for removal. Ask which measure people fear, and why. If analysts game a measure, it needs to change. Choose one measure to replace or add that would show whether users are better off.

**How do we keep the people who work here, and what do they say they need?**

Ask analysts what would make the job better and what would make them leave. Common answers are variety, training, recognition, and a way to grow. Do not promise what you cannot deliver; do commit to one visible change. The facilitator should treat turnover as a service risk and not only a staffing matter.

## In practice: an agile ITIL example

A national tax authority's internal IT service desk supports about 9,000 staff with a team of 25 analysts. Contacts arrive by telephone, email, and a portal. Staff complain that they must explain their problem several times, and delivery teams complain that they hear about faults only when an angry manager calls.

The desk manager meets the leads of three delivery teams and proposes three changes. First, a shared chat channel connects analysts and delivery teams, with a rule that the first response is expected within a working hour. Second, every release gets a short note to the desk before deployment, written by the delivery team using a one-page template. Third, the desk produces a monthly list of the ten most common contact reasons and shares it with all delivery teams, who commit to look at the top three.

After three months, the desk and delivery teams report that several repeat faults have been fixed, and analysts say they feel better informed. Some difficulties remain. The shared channel has become noisy and some analysts ignore it, the release notes are late on busy days, and one delivery team has not responded to the monthly list at all. The desk manager asks the delivery teams to nominate a person to watch the channel, moves late release notes to the release checklist, and raises the unresponsive team's silence with the head of IT, who asks the team lead to attend the next monthly review.

## Four perspectives

### Product and delivery teams

Delivery teams should treat the service desk as a colleague and as a customer. Tell the desk what is changing and what to expect. Read its monthly themes and take the top ones into the backlog. Invite an analyst to reviews, so that the people who hear users every day inform the next steps.

### Service and operations teams

Operations teams staff the desk or work closely with it. Give analysts the knowledge and authority to resolve common issues, and make escalation quick and respectful. Use the desk's evidence in problem management and capacity planning, and protect the people from being treated as a ticket factory.

### Leadership and governance

Leaders decide whether the desk is a cost to minimise or a source of insight. Ask for themes and outcomes, not only volumes. Protect training and career paths. Be cautious about targets that reward closing quickly or deflecting contacts, which lower quality while improving the numbers.

### Customers and users

Customers and users benefit from a desk that is easy to reach, understands the problem, and keeps them informed. Describe the problem clearly, say what you were doing, and tell the desk what outcome you need. Give feedback after a contact, since it is one of the few signals that reach the team.

## Common failure modes

- **Treating the desk as a cost centre only.** The desk is staffed minimally and scored on volume. Instead, measure outcomes and invest in the desk's skills and tools.
- **Hidden channels.** Users bypass the desk by messaging engineers. Instead, make the official channels easy and route informal requests into the record.
- **Escalating by default.** Analysts pass on everything to avoid blame. Instead, train, equip, and trust analysts to resolve what they can.
- **Out-of-date knowledge.** Articles describe systems that changed. Instead, assign owners and review dates, and ask analysts which articles fail them.
- **The desk finds out last.** Releases and outages surprise it. Instead, make briefing the desk part of the release checklist.
- **Metrics that invite gaming.** Time to close drives early closure. Instead, pair a speed measure with a quality measure and watch for patterns.
- **No feedback to delivery.** The desk's evidence goes nowhere. Instead, share monthly themes and expect a response.
- **Ignoring the people.** High turnover and low morale are accepted. Instead, give training, variety, and routes to other roles.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Contact handling | Contacts arrive by many informal routes | A desk exists with some shared channels | One front door with agreed categories and routing | Handling and outcomes are measured and reviewed | Contact handling is coordinated across teams and suppliers |
| Knowledge and tools | Answers live in individuals' heads | Some guidance exists | Maintained knowledge and common tools support first-line resolution | Use and accuracy of knowledge are tracked | Knowledge and tools are shared with users, delivery teams, and suppliers |
| Link to delivery | The desk learns of changes from users | Some delivery teams brief the desk | Releases include a note to the desk and a named contact | Information flow is measured and gaps closed | The desk and delivery teams plan and review together |
| Learning from contacts | Contacts are closed and forgotten | Some themes are noticed | Monthly themes are shared and tracked | Themes lead to planned fixes whose effect is checked | Themes feed planning across services and with customers |

## Checklist

- [ ] The desk has a written purpose that says who it serves and what it handles.
- [ ] All channels create a record in one place.
- [ ] Incidents, requests, and questions are classified consistently.
- [ ] Analysts have searchable guidance for the most common issues, with owners and review dates.
- [ ] Analysts can resolve common issues without escalating.
- [ ] There is a direct route between analysts and delivery teams.
- [ ] The desk is told about releases and known issues before users feel them.
- [ ] Monthly themes are shared with delivery teams and problem management.
- [ ] Users are asked briefly how a contact went.
- [ ] Training and career paths exist for desk staff.

## AI prompts

**Purpose: find themes in a month of contacts.**

```text
Below is a list of contacts to our service desk from the last [period]: [paste short, anonymized descriptions, one per line; remove names and personal data first].

Group them into themes based only on what is written. For each theme, give a name, the number of contacts in my list, one example, and one question that delivery teams or problem management could ask. Highlight the top three themes by count from my list. Mark contacts you could not classify. Do not invent categories beyond the text or estimate counts for contacts I did not provide. List what you are unsure of.
```

**Purpose: write a one-page release note for the service desk.**

```text
Help me write a one-page release note for a service desk about this change.

What changed (plain words): [describe].
Who is affected and when: [describe].
What users might ask or report: [list, or write "unknown"].
Known issues and workarounds: [list, or write "none known"].
How to roll back or who to call: [describe].

Write the note in short sections: what changed, what users will notice, what to tell users, what to do if it goes wrong, and who to contact. Use only my information. Mark assumptions as such, ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Purpose: improve a knowledge article that analysts use.**

```text
Here is a knowledge article that service desk analysts use: [paste it].
Here is what analysts say is wrong or missing: [paste their comments, or write "none yet"].

Rewrite it so that a first-line analyst can follow it in under two minutes: a one-line symptom, steps to check, the fix, when to escalate and to whom, and the date and owner of the article. Do not add technical facts that are not in the article or the comments. Mark any step you are unsure of with [CHECK], and list what you are unsure of.
```

**Purpose: plan a conversation between the service desk and a delivery team.**

```text
Plan a 45-minute conversation between a service desk of [number] analysts and a delivery team of [number] people.

Recent frictions: [describe in a few sentences].
What each side says it needs: [describe, or write "unknown"].

Give a timed agenda, five questions for each side, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use to give the desk a clear list of the services it supports and the requests it handles.
- [runbook](../../../../skills/runbook/SKILL.md): use to turn common fixes into short procedures that first-line analysts can follow.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use to design how the desk asks users for feedback.
- [survey-design](../../../../skills/survey-design/SKILL.md): use to design a short satisfaction survey that produces usable answers.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to understand the volume and kinds of contacts and to plan staffing.

## Key sources

- **IT service management** (Wikipedia): the definition of the service desk as a single point of contact, with incidents and service requests.
- **Help desk** (Wikipedia): a short overview of the help desk definition, queue management, and call routing.
- **Technical support** (Wikipedia): background on the wider field of support that help desks belong to.
- **ITIL** (Wikipedia): context on how service desk practice sits within ITIL.

## References

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
