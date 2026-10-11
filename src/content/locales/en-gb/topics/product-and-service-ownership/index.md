# Product and Service Ownership

**Product and service ownership gives each product or service one accountable person and one team that builds and runs it, so that decisions about value, quality, and cost are made by the people who live with the results.**

## Why this matters

In many organisations, nobody owns a service as a whole. A project builds it, an operations team runs it, a vendor supplies a part, and a finance department pays for it. When something goes wrong, there are four meetings and no decision. When users want something improved, the request goes to a queue that belongs to nobody. The service decays between teams.

Ownership addresses this directly. It asks for two things: a person who is accountable for the value of the product or service, and a team that has the skills and authority to build it, run it, and improve it. The idea is old in some forms and fashionable in others, and the details differ a lot between organisations. Getting it right is one of the most important conditions for everything else in this guide to work.

Two ideas sit behind the topic. The first is the Product Owner of the Scrum Guide, who is accountable for maximising the value of the product and for ordering its backlog, and who is one person and not a committee (see Topic 1.4 — Scrum). The second is the slogan "you build it, you run it," associated with Amazon's chief technology officer Werner Vogels in an interview published in ACM Queue in 2006, which this guide could not read directly (the page returned an access error) and knows from secondary descriptions. As those descriptions report it, Vogels contrasted the old model, in which developers throw software over a wall to operations, with one in which developers stay in day-to-day contact with the operation of their software and with the customer. The [Wikipedia article on product management](https://en.wikipedia.org/wiki/Product_management) gives a general description of the discipline but says nothing about the agile product owner role or about service ownership, so this topic does the connecting work and says so.

## Core concepts

### Product, service, project

| Term | Meaning, in common usage | Time horizon |
|---|---|---|
| **Project** | A temporary effort with a defined scope, start, and end | Ends when the scope is delivered |
| **Product** | Something offered to customers or users that is developed and improved over time | Continues while it creates value |
| **Service** | A way of delivering value to others without them owning the costs and risks (see Topic 2.1 — IT Service Management) | Continues while it is offered |

A digital product is often also a service: users depend on it running well. The distinction between product and service matters less than the move from project to continuing responsibility, as Topic 1.9 — Agile Management describes.

### Product management

The Wikipedia article describes product management as the business process of planning, developing, launching, and managing a product or service, ensuring products meet target-market needs and support business strategy across the product lifecycle. It lists responsibilities of product managers: managing the product line day to day, owning the business case and delivery to market, analysing customer research and competition, documenting requirements, setting strategy and creating the roadmap, and aligning with design, development, marketing, sales, support, and legal. It traces the concept to a 1931 memo by Procter & Gamble's president Neil H. McElroy asking for "Brand Men" to manage products. It says product managers are often measured by profit-and-loss responsibility.

The article does not connect product management with the agile Product Owner, so the link is this guide's reading: a Product Owner is accountable for the value of the product and orders its backlog, and in many organisations a product manager performs the wider business role. In small teams one person may do both.

### The product owner and the service owner

| Role | Accountable for | Typical questions |
|---|---|---|
| **Product owner** (Scrum) | Maximising the value of the product; ordering the product backlog | What should we build or improve next, and why? |
| **Product manager** | The business case, strategy, and roadmap of a product | Is this the right product, for the right market? |
| **Service owner** (ITSM usage) | The performance and improvement of a service over its life | Is the service meeting users' needs, at an acceptable cost and risk? |

The roles overlap. For an internal IT service, one person may be product owner and service owner. The Scrum Guide stresses that the Product Owner is one person, not a committee, so that decisions about order have a clear owner. Whatever the title, the test is whether one named person can make trade-offs among new features, reliability, and cost.

### "You build it, you run it"

As described in secondary summaries of Vogels's 2006 interview, the phrase expresses a model in which the team that builds a service also runs it, and so stays in daily contact with users and with the consequences of its design. The interview was conducted by Jim Gray and published in ACM Queue in 2006; Amazon's own blog noted the interview when it appeared. This guide has not read the original, so it does not quote it. The model has costs as well as benefits:

| Benefit | Cost or risk |
|---|---|
| Builders feel the pain of poor operability and fix it | Builders carry on-call load and may burn out |
| Shorter feedback from users and incidents | Skills in operations, security, and compliance must exist in the team |
| No handover to lose knowledge | Cross-team standards need other mechanisms |
| Clear accountability | Small teams may find the whole load too heavy |

Site reliability engineering and DevOps offer ways to support such teams (see Topic 5.2 — DevOps and Topic 5.3 — Site Reliability Engineering). Platform teams can provide common tools so that each product team does not rebuild them.

### Teams that own

Ownership needs a team with the skills to deliver and run, and the authority to act. Scrum describes a small cross-functional, self-managing team that does not depend on others for the whole of its work. In practice, product teams also depend on shared platforms, security, and data services. Managing these dependencies is part of ownership (see Topic 1.8 — Scaling Agile).

### Funding and goals

Ownership needs stable funding and clear goals. A team funded project by project is disbanded when the project ends, and a service owner has no team. A standing team funded for a product or service, with goals that change as it learns, is the usual answer (see Topic 1.9 — Agile Management). Goals should be about outcomes for users and the business, and should be set with the owner.

### Ownership in service management

ITIL practices need owners: each service has an owner, each practice has an owner, and each major process has an owner (see Topic 5.1 — Agile Service Management). The service owner holds the service level, the catalog entry, the improvement list, and the relationship with customers (see Topic 3.7 — Service Level Management and Topic 3.8 — Service Catalog Management).

### Limits and cautions

The sources read for this guide do not offer evidence on how well ownership models work, and the Wikipedia article on product management lists no criticisms. Practical cautions offered from experience include owners with title and no authority, owners who are overloaded with several products, "you build it, you run it" without support leading to exhaustion, and ownership that stops at the team boundary while the value stream crosses it (see Topic 5.4 — Value Stream Management).

## Best practices

1. **Name one accountable person for each product or service.** Write the name in the service catalog (ITIL spells it "service catalogue"). Make sure they have authority over priorities and a say in funding.
2. **Define what the owner decides.** State which decisions the owner makes alone, which with the team, and which need escalation. Without this, ownership is a title.
3. **Give the owner time.** Do not make owners of several large products, or owners with a full delivery job as well. Ownership is real work.
4. **Fund the team for the life of the service.** Avoid disbanding teams when projects end. Review funding on a regular cycle against outcomes.
5. **Set outcome goals with the owner.** Describe what should be better for users and the business, with a few measures the team can produce itself (see Topic 5.6 — Metrics and Measurement).
6. **Put building and running in one team where you can.** Include the skills for development, operations, and support, and give the team access to production data and tools within safe limits. Where you cannot, create strong working agreements.
7. **Support the team with a platform.** Provide shared tooling for deployment, monitoring, and security so each team does not build its own. Treat the platform as a product with users.
8. **Share the on-call load fairly.** Limit night calls, tune alerts, and watch for burnout. "You build it, you run it" fails when the people running it are exhausted.
9. **Keep one backlog per product.** Include features, defects, operations work, and improvement items in one ordered list, so the owner can weigh them against each other.
10. **Connect owners to each other.** Hold regular conversations among owners of dependent products and services, to resolve conflicts and align plans.
11. **Review ownership annually.** Check that every service still has an active owner, a team, and a backlog, and that the roles still fit.
12. **Allow for small teams.** Where one team owns many small services, group them sensibly and use light practices. Do not apply a heavy model to a small service.

## Questions to discuss with your team

**Who is accountable for each of our services, and would they say so?**

List the main services and name the owner. Then ask each named person whether they would call themselves the owner. Gaps between the list and the answers reveal how much ownership is nominal. The facilitator can ask which service has no owner and what that has cost.

**What can our owner decide today without asking anyone?**

Ask for examples: priorities, spending, a release, a customer commitment. If most decisions need approval from others, discuss which should be delegated and under what limits. Agree on one decision to move.

**When something goes wrong in production, who is woken up, and do they have the means to fix it?**

Ask who is on call and what they can change. If it is not the builders, ask why. Discuss how the feedback from incidents reaches the people who design the service. Agree on one route to shorten.

**How do we fund this service, and what happens when a project ends?**

Trace the funding for a main service. Ask who can spend on improvements and who decides to stop. If the team is disbanded after a project, discuss the cost of lost knowledge. Propose a trial of standing funding for one service.

**What skills do we lack to build and run our service, and how could we get them?**

List the skills the work needs: development, operations, security, data, support. Mark gaps. Discuss pairing, training, borrowing a specialist, or a shared platform. Choose one gap to close.

**How many owners are we asking one person to be?**

Count the products and services each owner is responsible for. Overloaded owners cannot make good decisions. Discuss splitting, delegating, or retiring services. Agree on a maximum, and a plan for an owner who is above it.

## In practice: an agile ITIL example

A national employment agency runs an online job-matching service used by job seekers and employers. The service was built by a project team, handed to an operations group, and is now funded as a series of small projects. The head of digital services finds that nobody can say who owns it: the original project sponsor has retired, operations handles incidents, and a policy unit asks for changes through a queue that takes months. Employers complain about a registration form that has not changed in three years.

The head names a service owner from the employer relations unit, a person who understands both employers and the service, and gives her a say over the backlog and a share of the budget. A standing team of eight, combining developers, an operations engineer, a tester, and a designer, is formed from the people who were already working on the service. The team joins the on-call rota, with a limit on night calls, and uses a shared platform for deployment and monitoring maintained by a central team. The policy unit's requests go into the single backlog, where the owner ranks them against improvements and fixes. The team and the owner agree three outcome goals for the year with a few measures: the share of employer registrations completed, the time job seekers take to find a match, and the number of repeat incidents.

After eight months, the registration form is rebuilt, completion improves, and repeat incidents fall. The owner can answer employers' questions about what is planned. Some difficulties remain. The owner is also responsible for another small service and is stretched, the policy unit resents having to compete for backlog slots, and the on-call engineers say the shared platform lacks a tool they need. The head of digital services reduces the owner's other duties, asks the policy unit and the owner to set up a monthly planning meeting, and puts the platform request on the central team's backlog.

## Four perspectives

### Product and delivery teams

Delivery teams should work with a clear owner and take on the running of what they build. Offer the owner evidence from users, incidents, and costs, and be honest about trade-offs. Ask for the tools and support you need to carry on-call fairly.

### Service and operations teams

Operations teams support product teams with expertise, platforms, and shared standards. Where they run services for others, name owners and agree service levels. Resist handing every operational problem to a central group that owns nothing.

### Leadership and governance

Leaders create ownership by naming owners, giving them authority and time, and funding standing teams. Ask owners for outcomes and evidence, and refrain from overriding their priorities without discussion. Watch for owners who have the title but not the power.

### Customers and users

Customers and users benefit when they know who answers for a service and can reach them. Tell the owner what matters most and what hurts. Expect clear information about what is planned, and a say in how priorities are set.

## Common failure modes

- **Title without authority.** An owner cannot decide anything. Instead, state what the owner decides and back it.
- **Ownership by committee.** Nobody is accountable. Instead, name one person for each product or service.
- **Overloaded owners.** One person owns too many products. Instead, limit the number and delegate.
- **Disbanding teams after projects.** Knowledge walks away. Instead, fund standing teams for continuing services.
- **"You build it, you run it" without support.** Teams burn out. Instead, provide a platform, shared on-call, and tuned alerts.
- **Ownership that stops at the team.** The value stream crosses teams. Instead, connect owners of dependent services.
- **Multiple backlogs.** Features, defects, and operations compete in hidden queues. Instead, keep one ordered backlog per product.
- **Copying a model without context.** A big-company pattern is applied to a small service. Instead, fit the model to the size and risk.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Accountability | Services have no clear owner | Some services have informal owners | Every service has a named owner with defined decision rights and time | Owner effectiveness and outcomes are reviewed | Owners coordinate across dependent services and with customers |
| Team and skills | Build and run are separate teams | Some teams share on-call | Standing teams own build and run with the skills they need | Skills gaps and load are measured and addressed | Skills and platforms are shared across teams and suppliers |
| Funding and goals | Funding is by project | Some standing teams exist | Services have standing funding and outcome goals | Funding follows measured outcomes | Funding and goals are aligned across services and with customers |
| Backlog and priorities | Priorities come from many queues | Some owners keep a list | One ordered backlog per product includes all kinds of work | Backlog flow and priorities are reviewed with stakeholders | Priorities are aligned across owners and with customers |

## Checklist

- [ ] Each product or service has one named, accountable owner, listed in the service catalog.
- [ ] What each owner decides alone, with the team, and by escalation is written down.
- [ ] Owners have time for the role and a manageable number of services.
- [ ] A standing team is funded for each continuing service.
- [ ] Each service has outcome goals with a few measures.
- [ ] The team that builds a service has the skills and access to run it, or has clear working agreements with those who do.
- [ ] On-call load is shared fairly with limits and tuned alerts.
- [ ] A shared platform supports teams with deployment, monitoring, and security.
- [ ] Each product has one ordered backlog covering features, defects, operations, and improvement.
- [ ] Ownership is reviewed at least once a year.

## AI prompts

**Purpose: draft decision rights for a product or service owner.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: find services with no clear owner.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Purpose: plan an on-call model for a team that builds and runs.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Purpose: prepare a case for standing funding of a service.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make clear who owns, supports, and is consulted for each product or service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): use to describe direction and near-term plans for a product or service.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): use to set a team's purpose, outcomes, and limits at the start.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): use to help an owner order the backlog by value and cost.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): use to validate what a product or service should do next before building it.

## Key sources

- **The Scrum Guide** (Ken Schwaber and Jeff Sutherland, scrumguides.org): the definition of the Product Owner accountability and the cross-functional, self-managing team.
- **Product management** (Wikipedia): a general description of the discipline, its responsibilities, and its history.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): the interview in which "you build it, you run it" is described; read the original for the exact wording.
- **Site Reliability Engineering** (Google, sre.google): one way to support teams that run what they build.

## References

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
