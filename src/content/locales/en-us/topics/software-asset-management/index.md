# Software Asset Management

**Software asset management makes sure an organization buys the software it needs, uses what it buys, and follows the terms it has accepted, and for agile teams that now means tracking open-source components and subscriptions as well as licensed products.**

## Why this matters

Software is one of the largest and least visible costs in IT. Licenses are bought for people who have left, subscriptions renew unnoticed, and products are installed in ways the license does not allow. Each is a cost or a risk. A vendor audit can turn a small mismatch into a large bill, and an unpatched component in a forgotten application can open a door for an attacker.

Agile teams change the picture. Developers pull in libraries with a single command, and modern applications are largely assembled from third-party and open-source parts. The software supply chain article on Wikipedia reports that open-source software was found in 96 percent of the commercial codebases one vendor analyzed in 2024, citing Synopsys. Teams also buy cloud services and subscriptions on cards, outside the purchasing process. Software asset management (SAM) has therefore grown beyond counting installations of a few big products into a practice that covers what is used, what is owed, and what is trusted.

The [Wikipedia article on software asset management](https://en.wikipedia.org/wiki/Software_asset_management) describes SAM as a business practice for managing and optimizing the purchase, deployment, maintenance, utilization, and disposal of software, with goals of reducing IT costs, limiting business and legal risk, and improving end-user productivity. It does not cover cloud services, SBOMs, or maturity models, so this topic adds the articles on the software supply chain and open-source software. This topic describes practice and does not give legal advice; license terms differ, and the right source is the license or contract text.

## Core concepts

### What SAM is

According to Wikipedia, SAM is part of IT asset management (see Topic 4.1 — IT Asset Management). It cites ITIL as describing it as including the effective management, control, and protection of software assets. Its strategic goals, as the article lists them, include reducing software and support costs through volume contracts and reallocating unused licenses, enforcing security policies and desktop, server, and mobile standards, improving productivity by deploying technology faster and more reliably, limiting management overhead through automation, and establishing policies for acquisition, deployment, usage, and retirement.

### License compliance

The article describes SAM as balancing the number of licenses purchased against the number actually consumed, and ensuring usage matches each vendor's license terms. It notes that installations are the most common measure of consumption, but some software is licensed by users, capital, processors, or CPU cores. Organizations can reduce liability during audits by vendors or third parties such as the Business Software Alliance, the article says, through ongoing software inventories, purchasing policies, and tools. The article does not describe audit procedures. The point of the exercise is to know your **entitlement** (what you are allowed to use), your **consumption** (what you use), and the gap between them.

### The three questions

A SAM practice answers three questions for each important product:

| Question | What it needs |
|---|---|
| What are we entitled to? | Contracts, license terms, invoices, and proof of purchase |
| What are we using? | Inventory and usage data from discovery and metering |
| What is the gap, and what do we do about it? | Comparison, decisions on buying, reallocating, or removing |

A gap can run in either direction: under-licensing, which is a compliance risk, and over-licensing, which is waste.

### Standards: ISO/IEC 19770

The article lists the parts of the ISO/IEC 19770 family: 19770-1:2017 (IT asset management system requirements, a process framework that can be implemented in staged tiers), 19770-2:2015 (software identification tags), 19770-3:2016 (an entitlement management schema for license, contract, and invoice details), 19770-4:2017 (resource utilization measurement data), and 19770-5:2015 (overview and vocabulary). The article says the software identification standard is supported by IBM, Microsoft, and Adobe. Check the standards for current editions and exact content.

### SAM technologies and their limits

The article lists tools for software inventory, license management, metering, application control, deployment, patch management, request management, and product cataloging. It also gives an example of scale: metering rules in Microsoft's System Center Configuration Manager work well for small estates but generate unmanageable data volumes at enterprise scale. Tools help, but they need a clear question and an owner.

### Open-source software

Wikipedia defines open-source software as software whose source code is publicly available, and which users may use, study, modify, and distribute, typically under an open license. The Open Source Initiative maintains the most common definition, with ten criteria and a list of approved licenses, though the article says the OSI has no legal authority over the term. It describes two license families:

| Family | What it asks of recipients | Examples named |
|---|---|---|
| **Permissive** | Preserve copyright notices and include the license; no duty to release your own code under the same license | BSD, MIT, Apache |
| **Copyleft** | Use the same license for at least some parts of what you distribute (strong copyleft applies to all derivative works; weak copyleft only under certain conditions) | GNU GPL (strong); MPL, EPL (weak) |

Both families, the article says, require preserving copyright notices and providing a copy of the license with the code. It cites *Jacobson v Katzer* (2008), in which a court enforced the terms of an open license, including attribution, under copyright law. It notes that organizations are setting up open source program offices to manage their strategies. Open-source terms are real obligations. Which ones apply depends on how you use and distribute the software; ask your legal function and read the license.

### The software supply chain and SBOMs

The article on the software supply chain describes it as the components, libraries, tools, and processes used to develop, build, and publish a software artifact. It names risks: attackers can compromise an upstream component to reach all downstream users, and cites examples including Log4Shell in 2021, the SolarWinds attack in 2020, and the XZ Utils backdoor in 2024. It describes a **software bill of materials (SBOM)** as an inventory of the components in a software artifact, including open-source and proprietary parts, the software counterpart of a manufacturing bill of materials. SBOMs support vulnerability and license analysis.

The article reports limits: spreadsheets cannot be automatically enriched with vulnerability data and should be stored in a queryable repository; policy-driven SBOMs are rare, with one study finding about 0.56 percent of popular GitHub repositories containing them; fewer than half of tested projects include SBOMs in releases and many are incomplete; and a study of six Java SBOM tools found frequent inaccuracies. It notes that visibility alone cannot guarantee integrity. It also reports that US Executive Order 14028, signed on 12 May 2021, directed NIST and NTIA to issue guidance on software supply chain security including SBOMs, and that NTIA's minimum elements fall into data fields, automation support, and practices and processes. The article does not name SBOM formats or describe the European Union's Cyber Resilience Act. Rules on SBOMs differ by country and sector; ask your compliance function what applies to you.

### SaaS and cloud subscriptions

The SAM article does not discuss software as a service (SaaS) or cloud. Practical experience shows that subscription software creates new problems: purchases outside procurement, seats that nobody removes, overlapping tools, and data placed with suppliers without review (see Topic 3.14 — Supplier Management and Topic 4.5 — IT Financial Management and FinOps). SAM for subscriptions focuses on discovering what is bought, who owns it, who uses it, and when it renews.

### Limits of the sources

The SAM article does not cover audit procedures, license type catalogs, or maturity models, and its main references include dated items from 2006 to 2009. The software supply chain article reports figures from surveys and studies of uneven quality. Use the sources to frame questions, and use license texts and contracts for answers.

## Best practices

1. **Start with the products that matter most.** Choose the few largest or riskiest products by cost or legal exposure and get entitlement, inventory, and usage straight for those first.
2. **Keep proof of entitlement.** Store contracts, invoices, and license terms where they can be found, and link them to the product records. You cannot defend a position in an audit without evidence.
3. **Know the license metric.** For each product, record how it is counted: per user, device, processor, core, or other. Counting installations when the license is per core produces the wrong answer.
4. **Compare entitlement with usage regularly.** At least quarterly for major products, compare what you may use with what you do use. Act on the gap by buying, reallocating, or removing.
5. **Reclaim unused licenses.** Use usage data to find licenses nobody has used for a defined period, and reassign or cancel them after checking with the owner.
6. **Control how software enters.** Make it easy to request approved software and hard to buy outside the process. Include subscriptions and card purchases in spending reviews.
7. **Treat open-source components as assets.** Keep an inventory of the open-source components in your products, with license and version. Check licenses against how you use and distribute the software, with legal advice.
8. **Generate SBOMs in the build.** Produce a software bill of materials automatically for each build, store it in a queryable place, and use it to respond to vulnerabilities and answer customer questions. Check the SBOM against the build, since tools can be inaccurate.
9. **Track subscriptions.** For each, record owner, purpose, cost, number of seats, users, renewal date, and data held. Review before renewal.
10. **Link software to services.** Record which services use which software and versions, so that a vulnerability or a license change can be traced to the services affected (see Topic 4.4 — Configuration Management).
11. **Prepare for audits calmly.** Keep records current, name a contact, and know your rights and duties from the contract. Do not wait for the notice to start organizing.
12. **Retire software properly.** Remove it from systems, end licenses and subscriptions, and update records. Unused software is a cost and an attack surface.

## Questions to discuss with your team

**For our three most expensive software products, do we know what we may use and what we do use?**

Ask for the number of licenses held and the number in use for each. Compare. Common outcomes are surprising: more seats than users, or users beyond the seats. The facilitator can ask where the entitlement evidence is kept. Plan to reconcile the largest gap.

**What software have people bought or installed without telling anyone?**

Be honest and non-judgmental. Ask about tools bought on cards, free tools used at work, and browser extensions. Typical reasons are speed and unclear process. Discuss what would make the approved route fast enough. Agree on a registration step.

**Which open-source components do our products depend on, and what are their licenses?**

Ask whether anyone can produce a list. If not, discuss how to generate it from the build. Then ask how licenses are checked. Remember that obligations differ between permissive and copyleft licenses. Plan with legal to review the high-risk cases.

**If a serious vulnerability appeared in a common library tomorrow, how long would it take to know whether we use it?**

Walk through the steps: who is told, how you search, how you know the version in each service. The answer shows how far SBOMs and inventories would help. Agree on a first improvement, such as generating a bill of materials in the pipeline.

**What subscriptions renew next quarter, and who decides whether to keep them?**

List the renewals. For each, ask who owns it, how many seats are active, and what happens if it is canceled. Often nobody owns the decision. Assign owners and add a review date before each renewal.

**How would we respond to a vendor audit notice?**

Ask who would handle it and what evidence they have. Discuss whether records are complete. The aim is a calm plan, not a fear of audits. Agree on a contact and a checklist.

## In practice: an agile ITIL example

A national postal service runs about 60 internal applications and a customer-facing parcel-tracking platform built by a team of fifteen. A vendor notifies the IT department of a license audit on a database product. The ITAM officer finds that license records are spread across three spreadsheets and that nobody can say how many processor cores the database now runs on, because virtual machines have been moved between hosts many times.

The ITAM officer, a database administrator, and the procurement lead assemble the evidence. They collect the contract, the license metric (by processor core), the invoices, and discovery data on where the database runs. They find that the product runs on more cores than were purchased in one environment, and fewer in another, where licenses are unused. After talking with the vendor, they reallocate the unused licenses, buy a small number of additional ones, and move one non-essential environment to a free alternative. The cost is far below what an audit finding would have been, but is not trivial.

At the same time, the platform team is asked by a large customer for a list of the software components in the parcel-tracking platform. The team realizes it cannot produce one. It adds a build step that generates a bill of materials for each release and stores it in a repository. The first output includes a library with a license the legal team had not reviewed, and they decide to replace it. Problems remain. The team's SBOM tool misses components in one language, and a separate research group continues to buy subscriptions on a department card. The ITAM officer asks the vendor of the tool about the gap, and persuades the department to register its subscriptions.

## Four perspectives

### Product and delivery teams

Delivery teams bring most software into the organization. Record the components and subscriptions you add, generate bills of materials in your builds, and ask before using a library with an unfamiliar license. Share findings with legal and security.

### Service and operations teams

Operations teams run the inventory, patching, and metering. Keep the software inventory linked to services, patch quickly when vulnerabilities appear, and reclaim unused licenses. Help procurement understand how products are really used.

### Leadership and governance

Leaders own the risk of non-compliance and the spend. Ask for entitlement and consumption for the largest products, a view of subscriptions, and a plan for open-source and supply chain risk. Support a purchasing route that is fast enough that people use it.

### Customers and users

Customers and users benefit when software is available and secure. Request what you need through the proper route, return what you no longer use, and tell the team about tools that you have found useful. Customers of your products may ask for bills of materials; expect to be asked.

## Common failure modes

- **Counting installations only.** The license metric is per core or user. Instead, record the metric and count the right thing.
- **Lost proof of entitlement.** Contracts and invoices cannot be found. Instead, store them with the product record.
- **Shelfware.** Licenses are bought and unused. Instead, compare entitlement with usage and reclaim.
- **Shadow purchases.** Subscriptions bought on cards escape the process. Instead, make the approved route fast and review spending for exceptions.
- **Unknown open-source components.** Nobody can list them. Instead, generate bills of materials automatically in builds.
- **Ignoring license terms of open source.** Copyleft obligations are missed. Instead, check licenses against use and distribution with legal advice.
- **Trusting tools blindly.** Tools miss components or list wrong ones. Instead, validate output on a sample and ask vendors about gaps.
- **Audit panic.** Records are assembled after the notice. Instead, keep records current and name an audit contact.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Entitlement and usage | Records are scattered; usage unknown | Major products have entitlement records | Entitlement and usage are recorded for main products and compared regularly | Gaps and unused licenses are measured and acted on | Entitlement and usage are shared with finance, procurement, and suppliers |
| Acquisition and subscriptions | Software is bought by anyone | An approved route exists for some purchases | Purchases and subscriptions follow one route with owners and renewal dates | Spending and seat use are reviewed before renewal | Purchasing, usage, and contracts are coordinated across the organization |
| Open source and supply chain | Components are unknown | Some teams list libraries | Bills of materials are generated in builds and licenses are reviewed | Vulnerability and license findings are tracked to closure | Bills of materials are shared with customers and suppliers as required |
| Audit and compliance | Audit notices cause panic | A contact exists | Records are kept current and an audit routine exists | Compliance risk is measured and reviewed | Compliance practice is aligned across vendors and jurisdictions |

## Checklist

- [ ] For our largest software products we know the entitlement, the license metric, and the usage.
- [ ] Contracts, invoices, and license terms are stored with product records.
- [ ] Entitlement and usage are compared at least quarterly for major products.
- [ ] Unused licenses are reclaimed after checking with owners.
- [ ] Purchases and subscriptions follow one route, with owners and renewal dates recorded.
- [ ] We generate a bill of materials in the build for products we ship or run.
- [ ] Open-source licenses in our components are reviewed against our use, with legal advice.
- [ ] We can find which services use a given component or product.
- [ ] A named person handles vendor audit notices.
- [ ] Retired software is removed from systems and records.

## AI prompts

**Purpose: compare entitlement and consumption for one product.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: review a list of open-source components for license questions.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Purpose: prepare a vulnerability-response lookup using a bill of materials.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: build a subscription review for the next quarter.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## AI skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to manage contracts, renewals, and relationships with software vendors.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use to prepare for a vendor or compliance audit.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use to forecast software and subscription costs.
- [risk-register](../../../../skills/risk-register/SKILL.md): use to record license, vulnerability, and supply chain risks.
- [security-testing](../../../../skills/security-testing/SKILL.md): use to check dependencies and builds for known weaknesses.

## Key sources

- **Software asset management** (Wikipedia): the definition, goals, technologies, and the ISO/IEC 19770 parts.
- **Software supply chain** (Wikipedia): risks, the software bill of materials, adoption figures, and regulatory background.
- **Open-source software** (Wikipedia): the definition, license families, and notes on risks and obligations.
- **ISO/IEC 19770** (International Organization for Standardization): the standards family itself; read the current parts for exact requirements.

## References

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
