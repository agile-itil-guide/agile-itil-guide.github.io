# IT Asset Management

**IT asset management keeps track of the hardware, software, and related resources an organization owns or pays for, from purchase to disposal, so that decisions about cost, risk, and support are based on facts instead of guesses.**

## Why this matters

Ask most organizations how many laptops, servers, cloud accounts, and software licenses they have, and the first answer is a guess. The second, after a search, is often different. That gap has costs. Licenses are bought that nobody uses, or used without being bought. Old hardware stays on the network unpatched. Departing staff keep access to systems that nobody remembered to remove. A service desk cannot support equipment it does not know exists.

IT asset management (ITAM) is the practice of closing that gap. It is closely tied to service management: services run on assets, incidents and changes touch assets, and the cost of a service is largely the cost of its assets. For agile teams, the practice has a particular twist. Assets now include cloud resources created by a script in seconds and destroyed minutes later, container images, open-source libraries, and subscriptions bought on a card. The old model of a spreadsheet of purchased equipment does not capture them.

The English Wikipedia's article titled "IT asset management" currently redirects to its article on data center management, where ITAM appears as a section. That section describes ITAM as business practices that join financial, contractual, and inventory functions to support life cycle management and strategic IT decisions, and it is short. This topic uses it for definition, adds the details from the articles on software asset management and configuration management databases, and places the practice in the agile setting. Where it goes beyond the sources, it says so.

## Core concepts

### What it is

According to the Wikipedia section on data center asset management, citing Gartner, ITAM is a set of business practices that join financial, contractual, and inventory functions to support life cycle management and strategic IT decisions. Assets include software and hardware in the business environment. The practice is also called inventory management. The article notes that the practice uses automated discovery so that inventory can be compared with license entitlements, and that full management needs a repository of several types of information, integrated with supply chain, help desk, procurement, human resources, and ITSM systems.

### What counts as an asset

A useful working list for a service organization:

| Asset type | Examples | Covered in |
|---|---|---|
| **Hardware** | Laptops, servers, network devices, phones, storage | Topic 4.3 — Hardware Asset Management |
| **Software** | Licensed applications, operating systems, open-source components, subscriptions | Topic 4.2 — Software Asset Management |
| **Cloud and service resources** | Virtual machines, containers, storage buckets, SaaS accounts | Topic 4.2 — Software Asset Management and Topic 4.5 — IT Financial Management and FinOps |
| **Data and information** | Datasets, records, backups | Topic 3.13 — Information Security Management |
| **Contracts and entitlements** | Licenses, support agreements, warranties | Topic 4.2 — Software Asset Management and Topic 3.14 — Supplier Management |
| **People and skills** | Staff and capabilities (not usually in the asset register, but part of the service) | Topic 2.5 — Four Dimensions of Service Management |

The table is this guide's working list, not a classification from a source.

### Life cycle

The Wikipedia section describes hardware asset management as covering physical computer and network components from acquisition through disposal, with listed practices of request and approval, procurement, life cycle management, redeployment, and disposal, and says that capturing financial information about the hardware life cycle is a key component. It gives no formal stage model. A common practical sequence, widely used and offered here as such, is:

1. **Plan and request:** decide what is needed and get approval.
2. **Acquire:** buy or build, and record the purchase.
3. **Deploy:** put into service and link to the user or service.
4. **Operate and maintain:** patch, support, move, and track changes.
5. **Retire and dispose:** remove from service, wipe data, and dispose safely.

At each stage, ask who is responsible and what record is kept.

### Inventory, discovery, and records

An asset register is only useful if it is true. The article notes that automated discovery supports comparing inventory with entitlements. Discovery tools scan networks and cloud accounts to find what exists, and the register records what the organization intends to own and pay for. Differences between the two are findings: unknown devices, unused licenses, unapproved subscriptions.

### Relation to ITSM and the CMDB

The Wikipedia section says ITAM integrates with ITSM but does not map it to ITIL processes in detail. ITIL descriptions typically distinguish asset management, which concerns ownership, cost, and contracts, from configuration management, which concerns relationships among components. A **configuration management database (CMDB)**, according to Wikipedia, is an ITIL term for a database storing information about hardware and software assets, called configuration items, and the relationships among them (see Topic 4.4 — Configuration Management). Asset records and configuration records overlap; many organizations federate the data so that each source keeps control of its own.

### Standards

The Wikipedia section names ISO/IEC 19770 as the standards family for software asset management without describing its parts. The article on software asset management lists the parts: 19770-1:2017 on IT asset management system requirements, a process framework that can be implemented in staged tiers; 19770-2:2015 on software identification tags; 19770-3:2016 on entitlement management; 19770-4:2017 on resource utilization measurement; and 19770-5:2015 on overview and vocabulary. Check the standards themselves for exact wording and current editions.

### Benefits and limits

The Wikipedia section lists no benefits and no criticisms, and it names no tools. Practical benefits are widely claimed, such as lower license cost, reduced security risk, and better support, but this guide has no measured evidence for them in the sources read. Treat claims of savings with care, ask the people making them for their evidence, and measure your own.

### ITAM in an agile and cloud setting

Practices from earlier decades assume that assets are bought, delivered, and installed by IT. Today:

- **Teams create resources themselves,** in cloud consoles or through code. The register must learn of them from the cloud account, not from a purchase order.
- **Assets are short-lived.** A container may last an hour. Track the service and the account, not each instance.
- **Subscriptions replace licenses.** Software is paid for monthly by someone's card, and ownership is unclear.
- **Open-source components** enter through code, outside the purchasing system (see Topic 4.2 — Software Asset Management).

These changes push ITAM toward automation, tagging, and shared accountability between IT and the teams that use the assets.

## Best practices

1. **Start with what matters most.** Choose the assets with the highest cost or risk first: expensive licenses, internet-facing servers, devices with sensitive data. A complete register can come later.
2. **Define what an asset is for your purposes.** Write a short list of asset types you will track and the facts you need for each: owner, location or account, cost, contract, and status. Avoid fields nobody will use.
3. **Name an owner for every asset.** A person or team should answer for each asset or group of assets. Assets without owners are where waste and risk collect.
4. **Use discovery to find what exists.** Scan networks, cloud accounts, and endpoints, and compare with the register. Treat the differences as items to investigate.
5. **Tag cloud resources.** Require tags for owner, service, and environment on resources created in cloud accounts, and report on untagged ones. Tags let the register follow fast-moving assets.
6. **Connect purchasing to the register.** Make sure that new purchases, including subscriptions and card purchases, create or update a record. Review spending for items that did not.
7. **Link assets to services.** Record which service each asset supports. This lets you work out the impact of an incident, a change, or a retirement (see Topic 4.4 — Configuration Management).
8. **Track the financial side.** Record cost, contract terms, renewal dates, and depreciation where relevant. Capturing financial information over the life cycle is a key component of hardware management, as the Wikipedia section says.
9. **Manage the end of life.** Plan retirement from the start: data wiping, return, and disposal. Remove access and licenses at the same time.
10. **Review regularly.** At least twice a year, check the register against reality for the most important asset classes. Fix the process that caused any difference.
11. **Share the data.** Make asset data available to the service desk, security, finance, and teams, in a form they can use. Data that only the asset manager sees is worth little.
12. **Measure the practice.** Track how complete and accurate the register is, how long it takes to find an asset, and the cost of unused items. Use these to improve, not to rank people.

## Questions to discuss with your team

**If someone asked how many of each kind of asset we have, how sure would we be?**

Ask each person to estimate the number of laptops, servers, cloud accounts, and subscriptions, then compare with the register. Differences show how much is unknown. The facilitator can ask which category people trust least. Choose one to reconcile first.

**Who owns each of our assets, and what happens when that person leaves?**

Take a sample of assets and look at the owner field. Count the ones with no owner or a departed owner. Ask what process should update owners when people move. Agree on one trigger, such as the leaver process.

**What do we pay for that nobody uses?**

Look at licenses, subscriptions, and cloud resources, and ask which have no recent use. Be ready for surprises. Ask who can authorize canceling something. Pick the three largest and check each.

**How do we find out about a new cloud resource or subscription?**

Trace the last one. Often the answer is "at the bill" or "when it broke." Discuss how purchasing, tagging, and discovery could catch it sooner. Agree on one control, such as required tags or a monthly report of untagged items.

**What happens to a laptop or server at the end of its life?**

Walk through the steps: who decides, how data is removed, what the record says. Gaps often appear around data wiping and records. Ask for evidence that a recent disposal was done properly. Plan a short checklist.

**Which asset data do other teams need that we do not give them?**

Ask the service desk, security, and finance what they would like to see. Typical requests include owner, service, and cost. Discuss how to share it and who keeps it current. Choose one report to produce.

## In practice: an agile ITIL example

A national statistics agency has 1,800 staff and runs its survey processing in a mix of an on-premises data center and a public cloud account. The finance team notices that the cloud bill has grown by a third in a year, and a security audit finds three servers in the data center that nobody can identify. The ITAM function is two people with a spreadsheet.

The head of IT sets a modest aim: know the main assets, who owns them, and what they cost, starting with the cloud. A new rule requires owner, service, and environment tags on every cloud resource. A weekly report lists untagged resources, and teams have two weeks to claim or remove them. In the data center, the two ITAM staff run a discovery scan and compare it with the spreadsheet, finding 40 devices not on the list. They trace owners for most of them. Purchasing agrees that any new software subscription is reported to ITAM within a week.

After a quarter, the untagged share of cloud resources falls from about a third to a handful, and finance can attribute the cloud bill to services. A few unused resources are shut down, and two servers are retired. Problems remain. A research group buys tools on a department card and does not report them, and the weekly report is read by a few teams only. The ITAM staff talk to the research group about a simple registration form, and ask the head of finance to add subscriptions to the monthly review. They also decide that the register will cover cloud services by account and service, not each short-lived instance.

## Four perspectives

### Product and delivery teams

Delivery teams create many assets. Tag what you create, register the subscriptions and libraries you add, and retire what you no longer need. Treat the register as a service you contribute to and benefit from.

### Service and operations teams

Operations teams depend on the register for support, patching, and incident response. Keep it accurate by updating it at deployment, change, and retirement. Use discovery to find what is missing, and report differences to owners.

### Leadership and governance

Leaders and finance use asset data for decisions about spending, risk, and renewals. Ask for a few reliable numbers, such as spend by service and the share of assets with owners, instead of a perfect register. Support the small controls, such as tags and purchase reporting, that keep it true.

### Customers and users

Users benefit when their equipment and access are managed well: working devices, quick replacements, and no surprise charges. Tell the service desk about equipment you add or no longer need, and expect to be asked to confirm what you hold.

## Common failure modes

- **A register nobody trusts.** It is out of date and ignored. Instead, narrow the scope, use discovery, and update at each life cycle event.
- **No owners.** Assets belong to no one. Instead, require an owner for every asset or group.
- **Tracking everything.** The effort buries value. Instead, start with what is costly or risky, and grow.
- **Ignoring the cloud and subscriptions.** The register covers purchased hardware only. Instead, tag cloud resources and capture subscriptions.
- **Purchasing outside the process.** Card purchases bypass the register. Instead, connect purchasing and spending reports to ITAM.
- **No end-of-life process.** Old devices keep data and access. Instead, plan retirement, wiping, and disposal.
- **Data kept from others.** Only ITAM sees the register. Instead, share it with the service desk, security, and finance.
- **Counting without acting.** Reports show unused assets and nothing is canceled. Instead, assign owners to act on findings.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Inventory and discovery | Assets are listed in spreadsheets or not at all | Some asset classes are inventoried | Discovery and a register cover the main asset classes and are reconciled regularly | Completeness and accuracy are measured and gaps fixed | Inventory spans on-premises, cloud, and suppliers with shared data |
| Ownership and accountability | Few assets have owners | Owners are named for some assets | Every asset or group has an owner, kept current by process | Ownership gaps are tracked and resolved | Owners across teams and suppliers work to shared rules |
| Life cycle and financial control | Purchase and disposal are informal | Some assets have cost and contract data | Life cycle steps and financial data are recorded for main assets | Cost, renewals, and utilization are reviewed and acted on | Financial and life cycle data are linked to services and shared with finance |
| Use of the data | Data are used by few | The service desk sometimes uses the register | Desk, security, and finance routinely use asset data | Data quality and use are measured and improved | Data feed decisions across the organization and with partners |

## Checklist

- [ ] We have a short list of asset types and the facts we record for each.
- [ ] Every tracked asset or group has a named owner.
- [ ] Discovery results are compared with the register on a regular schedule.
- [ ] Cloud resources carry owner, service, and environment tags, and untagged ones are reported.
- [ ] New purchases, including subscriptions, create or update a record.
- [ ] Assets are linked to the services they support.
- [ ] Cost, contract, and renewal data are recorded for the main assets.
- [ ] Retirement includes data removal, access removal, and a record.
- [ ] The register is reconciled with reality at least twice a year for the main asset classes.
- [ ] The service desk, security, and finance can see the data they need.

## AI prompts

**Purpose: reconcile discovery results with the register.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Purpose: draft a short tagging standard for cloud resources.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a retirement checklist for a device or server.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: find savings candidates from usage data.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## AI skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use to plan how assets and their relationships are recorded and kept true.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to manage contracts and renewals that sit behind assets.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use to forecast the cost of assets and subscriptions.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use to make clear who owns, supports, and approves each class of asset.
- [data-governance](../../../../skills/data-governance/SKILL.md): use to decide who owns data held on assets and how it is retired.

## Key sources

- **IT asset management** (Wikipedia, currently within the article on data center management): a short definition and a description of hardware asset management.
- **Software asset management** (Wikipedia): the definition, goals, technologies, and ISO/IEC 19770 parts.
- **Configuration management database** (Wikipedia): the ITIL term for the store of configuration items and relationships.
- **ITIL** (Wikipedia): the framework that treats ITAM alongside service management.

## References

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
