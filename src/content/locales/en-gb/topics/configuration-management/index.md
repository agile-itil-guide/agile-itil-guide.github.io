# Configuration Management

**Configuration management keeps an accurate, usable picture of the parts of a service and how they relate, and its modern form is a record built from code and discovery that is trusted because the system itself keeps it up to date.**

## Why this matters

When something breaks, the first questions are always the same. What is this component? What does it connect to? What changed? Who owns it? If the answers take an hour to find, an incident that could have been fixed in minutes drags on. When a change is planned, the same questions decide whether you understand the risk. A good picture of the service and its parts is one of the most useful things an operations team can have.

It is also one of the hardest to keep true. Documents of the infrastructure, drawn once, are out of date within weeks. Databases of components, maintained by hand, are wrong in ways nobody can see. Agile and cloud ways of working make this worse in one way, with many small, fast-changing parts, and better in another, because configuration can be written as code, stored in version control, and applied automatically.

The English Wikipedia's article on configuration management describes it as a management process for establishing and maintaining consistency between a product's attributes and its requirements, design, and operational information over its life, with roots in the US Department of Defence in the 1950s. The article on configuration management databases describes the ITIL term for the store of configuration items and their relationships. The article on infrastructure as code describes managing resources through machine-readable definition files. Between them they give the traditional view and the modern one, and this topic connects them.

## Core concepts

### Configuration management in general

According to Wikipedia, configuration management (CM) is used in military systems, in IT service management under ITIL, and in civil engineering. Its history starts with the US Department of Defence in the 1950s as a technical discipline for hardware, with military standards in the late 1960s and 1970s making it a discipline in its own right. The article names several standards, including ANSI/EIA-649, ISO 10007 (2017 edition), and IEEE 828-2012. The core disciplines it lists, from military handbooks and the EIA standard, are:

| Discipline | What it does |
|---|---|
| **Planning and management** | A plan covering people, training, naming conventions, audits, and vendor requirements |
| **Configuration identification** | Setting and maintaining baselines that define architecture and components; the tracked products are **configuration items (CIs)** |
| **Configuration control** | Evaluating change requests and approving or rejecting them |
| **Configuration status accounting** | Recording and reporting CI descriptions and departures from the baseline |
| **Verification and audit** | Independent checks that the system matches its documentation and requirements |

A **baseline** is an agreed reference point; once an attribute is baselined, changes go through formal control, are evaluated, approved, and then re-baselined. The article distinguishes configuration management from asset management, which focuses on financial accounting and the value of IT assets (see Topic 4.1 — IT Asset Management).

### Software configuration management

The article describes software configuration management as identifying software attributes at various points and controlling changes to maintain integrity and traceability, with the same four procedures of identification, control, status accounting, and audits. Version control systems, build tools, and release records are modern instances.

### The configuration management database

Wikipedia describes a **configuration management database (CMDB)** as an ITIL term for a database that stores information about an organisation's hardware and software assets, the CIs, and the relationships among them. It "represents the authorised configuration of the significant components of the IT environment." Key points from the article:

- **CIs have attributes** such as an identifier, names, descriptions, ownership, and importance, which can number in the hundreds.
- **Relationships** usually connect a source CI to a target CI. More advanced relationships add a descriptor, such as a database being a component of an application.
- **Federation:** implementations often federate data from sources such as asset management, so that each source keeps control of its data; the article contrasts this with copying data into the CMDB.
- **Uses:** impact analysis, root cause analysis, change management, incident management, inventory, and builds.
- **CI types:** hardware, software, communications and networks, location, documentation, and people; mature organisations add business types such as products and vendors.
- **Challenges:** relevance (collecting data across each CI's life cycle), maintenance (keeping data quality high, which needs several specialist roles), and usability (CMDBs are often plain databases that lack visualisation, so a further application layer may be needed).

The article names automatic discovery of CIs and change tracking as key success factors. It states no founding date, no specific ITIL version, and no adoption data, and it is flagged as needing more citations. It also says ITIL renamed the process Service Asset and Configuration Management in ITIL version 3 (this comes from the configuration management article).

### Infrastructure as code

The article on infrastructure as code describes the practice of managing and provisioning data centre resources through machine-readable definition files, rather than by manual setup or interactive tools, with definitions kept in version control. It distinguishes:

- **Declarative** approaches, which describe the desired end state and let the system work out the steps, and **imperative** approaches, which specify commands in order. The article says IaC more often uses declarative definitions.
- **Push** methods, where a controlling system sends instructions to servers, and **pull** methods, where servers retrieve their own instructions.

It names many tools from CFEngine (1993) to Terraform, Ansible, Puppet, Chef, Pulumi, and OpenTofu, and relates the practice to DevOps by involving developers in configuration and bringing operations in earlier. Its benefits claims, on cost, speed, and reduced human error, are tagged as needing citations. It cites a 2020 report by Unit 42 that found about 200,000 potential vulnerabilities in IaC templates, a reminder that code can carry flaws too. The article does not mention configuration drift or idempotence.

### Declared and discovered configuration

A useful way to think about modern configuration management is that there are two sources of truth, and the value lies in comparing them:

| Source | What it says | Strength | Weakness |
|---|---|---|---|
| **Declared** (code, definitions in version control) | What we intend the system to be | Reviewable, versioned, repeatable | May not match what is running |
| **Discovered** (scans, cloud APIs, agents) | What exists now | Reflects reality | Does not say what is intended or why |

A CMDB fed by both can show **drift**, the difference between intended and actual state. The sources read for this guide do not use the word, but it names the problem the CM disciplines of status accounting and audit are meant to catch.

### Configuration management and change

Configuration control and change enablement are close partners (see Topic 3.4 — Change Enablement). The CM disciplines say changes to baselined items are evaluated and approved. In a pipeline-based setup, a change to the code that defines the infrastructure is reviewed and tested like any other, and the pipeline's record shows who changed what and when. The CMDB or its equivalent then reflects the result.

### Uses in service management

The relationships recorded in the configuration data answer questions across the other practices:

- **Incidents:** what depends on this failing component, and who owns it (see Topic 3.2 — Incident Management)?
- **Problems:** which components were involved in repeated incidents (see Topic 3.3 — Problem Management)?
- **Changes:** what is the blast radius of this change?
- **Continuity:** what must be recovered, and in what order (see Topic 3.12 — Service Continuity Management)?
- **Security:** what is exposed, and what has changed?

### Limits of the sources

The configuration management article is flagged as possibly needing a rewrite and says little about practical implementation. The CMDB article has no criticisms section and few citations. Experience in the field is that CMDBs often fail by trying to hold too much, too accurately, for too long. Treat that as practical experience that this guide offers, not a finding from the sources.

## Best practices

1. **Start from the questions you need to answer.** List the questions incident responders, change reviewers, and continuity planners ask, such as "what depends on this?" and "who owns it?" Record only what answers them.
2. **Define a small set of configuration item types.** Begin with services, applications, hosts or containers, databases, and key external dependencies. Add types when a question demands them.
3. **Record relationships, not just items.** Capture which items depend on which and which service they support. Relationships make the data useful for impact analysis.
4. **Name an owner for every item.** An item without an owner is a risk. Make ownership part of how items are created.
5. **Keep intended configuration in version control.** Express infrastructure and configuration as code, review it like other code, and let the pipeline apply it. The repository is then a record of intent and history.
6. **Use discovery to find reality.** Scan networks and cloud accounts to see what exists, and compare it with the declared configuration. Investigate differences (drift) rather than ignoring them.
7. **Federate instead of copying where you can.** Let each source of data (asset register, cloud accounts, deployment tools) own its facts, and link to them from the configuration data, as the CMDB article describes.
8. **Automate updates.** Feed the configuration data from the pipeline and from discovery so that it changes as the system changes. Manual updates will fall behind.
9. **Baseline what matters.** For critical services, record the approved configuration and apply formal change control to departures from it. For the rest, lighter control is enough.
10. **Audit regularly.** Compare the data with reality for a sample of items each quarter, and fix the process behind any difference. This is the verification and audit discipline in practice.
11. **Make the data easy to use.** Provide visualisation and search for responders and planners, because data that cannot be read quickly will not be used.
12. **Keep security in view.** Treat configuration code as sensitive, scan templates for weaknesses, and control who can change the baseline. The Unit 42 figure in the infrastructure as code article is a reminder of the risk.

## Questions to discuss with your team

**When an incident happens, how long does it take us to find out what depends on the failing component?**

Look at the last incident and the time spent on this question. Ask where the answer came from: a diagram, a person, a search. The facilitator can ask what would have saved the most time. Often it is a list of dependencies and owners for the most important services. Agree to produce one for one service.

**Where is our infrastructure defined, and does that match what is running?**

Ask whether the main environments are built from code and how often someone changes them by hand. Look for differences. If you do not know, plan a comparison for one environment. Discuss how to prevent manual changes or detect them quickly.

**Which items in our configuration records have no owner or have not been confirmed lately?**

Take a sample and count. Ask why they are in that state: no process for owners, no reminder, no consequence. Discuss a light mechanism, such as an annual confirmation or an owner tag required at creation. Choose one.

**What data do we keep that nobody uses?**

List the fields and record types and ask who used them in the last quarter. The CMDB article names maintenance as a core challenge, and unused data is a cost with no benefit. Remove or stop maintaining what nobody uses.

**What would we need to see in order to approve a change to a critical service with confidence?**

Ask the reviewers. Typical answers: what the change touches, what depends on it, what it did last time. Ask which of these the configuration data can give. Pick one missing piece to add.

**Who is allowed to change the baseline of our critical services, and how do we know when they do?**

Ask for the list and for the evidence of changes. Discuss whether changes outside the pipeline are detected. Agree on how drift will be found and who acts.

## In practice: an agile ITIL example

A national tax agency runs 120 applications and a mix of on-premises servers and cloud services. A team of six operations engineers maintains a CMDB that was loaded from a spreadsheet three years ago. During a major incident on the filing portal, the engineers discover that the CMDB lists a database server that was retired a year earlier and omits the load balancer that actually failed. The incident takes three hours longer to resolve because it takes that long to work out what the portal depends on.

The head of operations and an engineer review what questions the responders ask. They narrow the CMDB's scope to services, applications, the main infrastructure components behind them, and key external dependencies, and drop low-value types. Infrastructure for the filing portal is moved into code in version control, and the pipeline writes a record of each deployed component to the CMDB. A discovery scan of the network and cloud accounts runs nightly, and a report lists differences between the declared and discovered data. Each item has an owner field, which the report also checks. A simple dependency view for the filing portal is built from the data.

A quarter later, the portal's dependency view is accurate enough that the next incident team uses it in the first ten minutes. The nightly difference report finds 14 unmanaged servers, most of which are retired or claimed by owners. Problems remain. Services outside the filing portal still rely on the old data, and one team continues to make hand changes to a database server that the pipeline then overwrites, causing a short outage. The head of operations extends the approach to the next three services, adds a rule that production changes go through the pipeline, and asks the discovery report to flag manual changes.

## Four perspectives

### Product and delivery teams

Delivery teams define configuration through code. Put infrastructure and settings in version control, review them, and let the pipeline apply them. Tag resources with owner and service, and describe dependencies in the repository or the service record.

### Service and operations teams

Operations teams use and maintain the configuration data. Keep the scope small, compare declared and discovered configuration, and chase drift. Feed what you learn from incidents back into the types and relationships you record.

### Leadership and governance

Leaders decide how much effort configuration data deserves. Ask which decisions it supports, such as impact analysis and continuity planning, and judge by use. Avoid funding a huge database for its own sake. Support the pipeline controls that keep records true.

### Customers and users

Customers and users benefit when incidents are resolved faster and changes break less, which good configuration data helps. They rarely see the data. Ask providers how they know what a change affects and how they find the cause of an outage.

## Common failure modes

- **Trying to record everything.** The data is too big to keep true. Instead, start from the questions and the critical services.
- **Manual maintenance.** Records fall behind. Instead, feed data from the pipeline and from discovery.
- **No relationships.** Items are listed but not connected. Instead, capture dependencies and the service each item supports.
- **No owners.** Nobody confirms or fixes records. Instead, require an owner and check regularly.
- **Hand changes outside the pipeline.** Reality and intent drift apart. Instead, route changes through the pipeline and detect drift.
- **Unreadable data.** Responders cannot use the database. Instead, provide search and visualisation.
- **Copying instead of federating.** Duplicated data goes stale. Instead, link to the source that owns the facts.
- **Configuration code treated as harmless.** Templates carry vulnerabilities. Instead, scan and review them.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Scope and relationships | Components are known informally | Some services have component lists | Key services have items, owners, and dependencies recorded | Coverage and accuracy are measured and gaps closed | Configuration data spans teams, clouds, and suppliers |
| Declared configuration | Systems are configured by hand | Some environments use code | Infrastructure and configuration for key services are code in version control | Change history and drift are tracked | Configuration code is shared and reused across teams |
| Discovery and verification | Reality is assumed | Occasional scans are run | Regular discovery is compared with declared data | Differences and their causes are measured and reduced | Discovery and verification are automated across the organisation |
| Use of the data | Data are seldom consulted | Used in some incidents | Used routinely for incidents, changes, and continuity planning | Use and benefit are measured and the data improved | Data support decisions across the organisation and with partners |

## Checklist

- [ ] We have listed the questions our responders and reviewers need configuration data to answer.
- [ ] We record a small set of item types with owners and relationships.
- [ ] Infrastructure and configuration for key services are in version control.
- [ ] Production changes to those services go through the pipeline.
- [ ] Discovery results are compared with declared configuration on a schedule.
- [ ] Differences (drift) are investigated and fixed.
- [ ] Records are fed automatically from the pipeline and discovery where possible.
- [ ] A sample of records is audited against reality each quarter.
- [ ] The data can be searched and visualised easily by responders.
- [ ] Configuration code is reviewed and scanned for weaknesses.

## AI prompts

**Purpose: decide what to record by listing the questions you need to answer.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: summarise drift between declared and discovered configuration.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Purpose: build a dependency view for one service.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a quarterly audit of configuration records.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use to plan what to record, how to keep it true, and how to use it.
- [change-request](../../../../skills/change-request/SKILL.md): use to write change records that reference the items affected.
- [runbook](../../../../skills/runbook/SKILL.md): use to turn configuration knowledge into steps responders can follow.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): use to place services, applications, and infrastructure in an architectural picture.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): use to keep configuration and design changing safely over time.

## Key sources

- **Configuration management** (Wikipedia): the history, core disciplines, baselines, and standards of configuration management.
- **Configuration management database** (Wikipedia): the definition, contents, uses, and challenges of a CMDB.
- **Infrastructure as code** (Wikipedia): managing resources through machine-readable definitions, with a list of tools and notes on benefits and risks.
- **ITIL** (Wikipedia): the framework in which the CMDB and configuration management appear.

## References

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
