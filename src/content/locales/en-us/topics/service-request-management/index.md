# Service Request Management

**Service request management handles the routine things users ask for, such as access, equipment, and information, and the agile goal is to make each common request fast, predictable, and mostly automatic so that skilled people spend their time on problems.**

## Why this matters

Much of the work that reaches a service desk is not a failure at all. It is a user asking for something the service is meant to provide: a new account, access to a folder, a laptop, a license, a password reset. These requests are predictable and repetitive. Handled well, they are fast and nobody notices. Handled badly, they are the source of long waits, repeated questions, and quiet frustration that damages a team's reputation more than any single outage.

Request handling is also where automation and self-service pay off most. A request that follows the same steps every time can be designed once, tested, and mostly automated. The [Wikipedia article on IT service management](https://en.wikipedia.org/wiki/IT_service_management) defines a service request as a routine request for a service and lists IT process automation, which replaces routine manual steps with automated ones so staff can focus on higher-priority work. That is the aim of this practice in a sentence.

The article gives little more on requests. This topic therefore combines that definition with practical guidance drawn from widely used service management practice, offered as such, and with the guide's other topics on the service desk, the service catalog (ITIL spells it "service catalog"), and knowledge. Where something is a common practice and not a finding from a source, the text says so.

## Core concepts

### What a service request is

A **service request** is a routine request for something a service normally provides. It differs from an **incident**, which is a disruption or potential disruption to a service, and from a **change**, which modifies a service (see Topic 3.2 — Incident Management and Topic 3.4 — Change Enablement). The line can blur: "I need access to the finance system" is a request; "I have access but the system shows an error" is an incident; "add a new field to the finance system" is probably a change.

A practical test: if the work follows a known procedure, has a known cost and risk, and the answer to "is this allowed?" is already decided in advance, it is a request. Anything that needs fresh judgment about risk is more likely a change or a project.

### Why the distinction matters

Mixing requests with incidents distorts both. Counts of "tickets" blur two different kinds of demand. Priorities clash, since an incident that stops work should come before a request that can wait. Response measures mislead: a long average time to close may hide that requests wait on approvals while incidents are fixed quickly. Keeping the two apart lets you set suitable targets and see where the delay is (see Topic 2.1 — IT Service Management).

### Request models

A **request model** is a repeatable pattern for a type of request: what information is needed, who must approve, which steps are done by whom or by automation, and what the expected time is. Request models are a widely used idea in service management. They give a team a way to design the common requests once and run them many times. A catalog of services lists the requests available (see Topic 3.8 — Service Catalog Management).

A model for "new starter laptop" might specify: the information needed from the manager, the approval (none, if the role is on a standard list), the steps (order, configure, ship), and the expected time. A model for "access to a restricted system" will include an approval by the system's owner and a record for audit.

### Approval

Some requests need approval before they proceed: spending, access to sensitive data, or use of scarce resources. The question for design is whether the approval adds real control. An approval that always says yes is a delay. Where approvals are needed, make them quick and visible, tell the approver exactly what is being asked, and give a fallback if they do not respond. Where approval depends on a role, such as a manager approving a team member's request, consider pre-approving standard items for the role.

### Fulfillment and automation

Fulfillment is the work of delivering the request. The ITSM article describes IT process automation as automating routine tasks so staff can focus on higher-priority work. Candidates for automation are requests that are frequent, follow a stable procedure, and carry low risk: password resets, group memberships, standard software installs. Automation should be built with the same care as any change, with tests and a way to see what it did.

### Self-service

Many organizations offer a portal where users can find the service they need, see what information is required, and submit a request without speaking to anyone. Good self-service depends on a clear service list written in users' words and on clear forms. A portal that mirrors the organization chart and asks for information the user does not have will drive people back to email and telephone.

### Enterprise service management

The ITSM article notes that enterprise service management applies ITSM tools and ideas to other business areas such as human resources or facilities. Request management is the easiest place to start, because many functions receive routine requests: onboarding, travel, equipment, office moves. A shared request platform can serve several functions, each with its own request models and owners.

### Measures

Common measures include how long requests take from submission to fulfillment, how often the requester has to come back with questions, how many requests are fulfilled without human effort, and requester satisfaction. As with any measure, avoid targets that reward closing requests early. Look for waiting time, since most of a request's elapsed time is usually waiting for approval or information, not working (see Topic 1.7 — Lean Software Development and Topic 5.6 — Metrics and Measurement).

### Security and compliance

Requests often control access and spending, so they have security and audit implications. Records should show who asked, who approved, what was done, and when. Remove access when it is no longer needed, as part of a leaver request model, not as an afterthought (see Topic 3.13 — Information Security Management).

## Best practices

1. **Start with the most common requests.** List the top ten requests by volume from your records. Design these first. A few well-designed models cover much of the demand.
2. **Define a request model for each.** Write what information is needed, who approves, the steps, who does each, and the expected time. Keep each model to a page.
3. **Use the user's words.** Name requests as users would ("Get a new laptop," not "Hardware provisioning request type 2"). Test names with users.
4. **Ask only for what you need.** Each field on a form should have a purpose. Fetch what you can from systems you already have, such as the user's department, instead of asking the user.
5. **Pre-approve what is routine.** Agree with approvers a standard list of items and roles that need no case-by-case approval. Review the list periodically.
6. **Make real approvals easy and fast.** Show the approver what is being asked and why, allow approval from a phone or email, and set an automatic reminder and a delegate for absence.
7. **Automate the stable and frequent.** Pick requests that follow the same steps each time and carry low risk. Test the automation and record what it did.
8. **Keep a human route.** Allow users to ask for help when a form does not fit their need. Treat those cases as feedback on the model.
9. **Separate requests from incidents and changes.** Give each its own category, queue, and measures. Teach the desk to reclassify when a request turns out to be a fault or a change.
10. **Watch the waits.** Measure time spent waiting for approval or information, not only total time. Choose the longest wait to reduce first.
11. **Close the loop with the requester.** Confirm completion, ask if it worked, and offer a way to say if it did not. A request marked done but not delivered is worse than one still open.
12. **Review the catalog of requests regularly.** Retire requests nobody makes, merge near-duplicates, and add new ones from evidence (see Topic 3.8 — Service Catalog Management).

## Questions to discuss with your team

**Which requests do we handle most often, and how long does each take from start to finish?**

Pull the top ten from the last quarter and trace the elapsed time for each. Mark where each request waits. The surprise is usually that most of the time is waiting, not work. Ask who is waiting on whom. The facilitator can ask which request would be easiest to improve first.

**Which approvals in our requests have never said no?**

Review a sample of approvals and count refusals. An approval that never refuses may be a delay with no benefit. Ask what the approval is for, and who benefits. Some approvals exist for audit or accountability, which is a legitimate purpose that may be met in a lighter way, such as notifying the approver after the fact. Pick one to simplify.

**What do users have to tell us that we already know?**

Look at a request form and mark fields whose answers exist in another system. Each such field is effort for the user and a source of error. Ask what it would take to prefill them. Choose one field to remove or prefill.

**Which of our requests could be done without a person touching them?**

List requests that follow a fixed procedure. For each, ask what stops automation: tools, access, fear of error. Discuss the safeguards that would make automation acceptable, such as limits and logs. Choose one to automate as an experiment.

**How do users find out what they can ask for?**

Ask a few users how they would request something unusual. If the answer is "ask someone I know," the service list is not working. Discuss how the list is presented and whether the names make sense to the users. Test a draft with two or three users.

**When a request turns out to be something else, what happens?**

Collect examples of requests that were really incidents or changes. Ask how long the misclassification cost. Discuss how the desk recognizes and reclassifies, and whether the request form helps users choose correctly. Agree a simple reclassification step.

## In practice: an agile ITIL example

A national statistics office has 3,000 staff and an IT department of 80. New staff routinely wait ten days for a working laptop and accounts, and managers complain that new starters sit idle. The service desk handles the onboarding requests as individual tickets, with each of five teams performing a step and passing the ticket on.

An improvement lead maps one onboarding request. She finds that actual work takes about three hours and the rest is waiting: for the manager to supply details, for a budget approval on a standard laptop, and for each team to notice the ticket. The team designs a request model for new starters. The manager fills in one short form three weeks before the start date, with most fields filled from the human resources system. Standard laptops and accounts for the role are pre-approved. A script creates accounts and groups; hardware is ordered automatically from a stock list; the desk gets a single task list. The new starter's manager receives updates and a confirmation.

After two months, the median time from request to ready laptop falls to three days when the form is submitted on time. Some difficulties remain. About a third of managers still submit the form late, so new starters still wait, and the script fails when the human resources record lacks a department code, producing hand repair work. The team adds a reminder to the human resources onboarding checklist, sets up an alert for failed scripts, and starts to talk to human resources about improving the data. They also keep a human route for roles that do not fit the standard list.

## Four perspectives

### Product and delivery teams

Delivery teams often receive requests that are really changes: a new field, a new report. Help the desk recognize them and route them to your backlog. Where requests for your service are frequent, such as access, build a self-service route with clear limits and logging.

### Service and operations teams

Operations and the desk own most request models. Design the common ones first, remove waiting, and automate where safe. Protect time for building and reviewing models, since request work crowds out improvement work easily. Share data on waits with approvers and managers.

### Leadership and governance

Leaders and approvers shape much of the waiting. Ask which approvals add control and which add delay, and accept pre-approval where risk is low. Support a shared request platform across functions, and ask for measures of waiting time rather than counts of tickets.

### Customers and users

Users benefit from clear names, short forms, and honest estimates. Provide complete information when you ask, and say when it is urgent and why. Tell the team when a request did not deliver what you needed, since that improves the model for the next person.

## Common failure modes

- **Treating requests as incidents or the reverse.** Priorities and reports are distorted. Instead, separate them and teach reclassification.
- **Forms that ask too much.** Users abandon the portal. Instead, ask only for what you need and prefill the rest.
- **Approvals as ritual.** Every request waits for a signature that never refuses. Instead, pre-approve routine items and keep real approvals fast.
- **Automation without safeguards.** A script makes the wrong change at scale. Instead, test, limit, and log automation, and monitor failures.
- **Internal names.** Users cannot find what they need. Instead, name requests in users' words and test them.
- **No human route.** Unusual needs fall through. Instead, offer help and treat odd requests as feedback.
- **Counting speed only.** Requests are closed early. Instead, confirm with the requester and watch repeat requests.
- **Never retiring requests.** The list grows stale. Instead, review use regularly and remove what nobody asks for.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Request models | Each request is handled ad hoc | Models exist for some frequent requests | Models exist for the top requests with owners and expected times | Model performance is measured and tuned | Models are shared across functions and suppliers |
| Approval | Approval is informal or by habit | Some routine items are pre-approved | Pre-approval lists and fast approval routes are standard | Approval outcomes and waits are reviewed | Approval rules are aligned across functions based on risk data |
| Automation and self-service | Requests are handled manually by email | Some requests are available in a portal or automated | Frequent low-risk requests are automated and self-service is standard | Automation success and user effort are measured | Automation and self-service span IT, HR, and facilities |
| Learning and improvement | Requests are not analyzed | Some counts are collected | Waits and repeat requests are reviewed regularly | Improvements are planned from data and effects checked | Improvement ideas come from users and teams across the organization |

## Checklist

- [ ] We know our ten most common requests and how long each takes.
- [ ] Each has a request model: information needed, approver, steps, owner, expected time.
- [ ] Requests are named in users' words.
- [ ] Forms ask only for necessary information and prefill what we know.
- [ ] Routine items are pre-approved, and real approvals have a fast route and a delegate.
- [ ] Frequent, low-risk requests are automated with tests and logs.
- [ ] Requests, incidents, and changes are separated with a reclassification step.
- [ ] We measure waiting time as well as total time.
- [ ] Requesters are asked to confirm completion.
- [ ] The list of requests is reviewed at least twice a year.

## AI prompts

**Purpose: find the most common requests and the longest waits.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Purpose: write a request model for one request.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: rewrite a request form to be shorter and clearer.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: decide what to automate first.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use to list the requests users can make, in their words, with owners.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use to find the most common requests and their volumes.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use to analyze the steps and waits in a request.
- [user-story](../../../../skills/user-story/SKILL.md): use to describe a request from the user's point of view with acceptance criteria.
- [runbook](../../../../skills/runbook/SKILL.md): use to document the steps for requests that remain manual.

## Key sources

- **IT service management** (Wikipedia): defines a service request, enterprise service management, and IT process automation.
- **Help desk** (Wikipedia): background on queue management and routing for requests that reach a desk.
- **Business process automation** (Wikipedia): general background on automating routine work.
- **ITIL** (Wikipedia): the context for service request management in ITIL.

## References

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
