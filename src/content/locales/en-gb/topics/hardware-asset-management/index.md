# Hardware Asset Management

**Hardware asset management follows physical equipment from purchase to disposal, and its quiet risks are the device nobody knows about, the device that is kept too long, and the device that leaves with data still on it.**

## Why this matters

Hardware still matters in a cloud-first world. People work on laptops, phones, and tablets. Networks run on switches and access points. Many organisations keep servers, storage, and specialised equipment on site. When a laptop is lost, a server is out of warranty, or a batch of devices needs replacing, the questions are the same: what do we have, where is it, who has it, what is it worth, and what does it hold?

Poor hardware management shows up in familiar ways. Staff wait for equipment because nobody knows what is in the stockroom. Old devices stay in service because nobody has the data to justify replacement, then fail at an awkward moment. Devices are thrown away with data still on them. Warranty claims are missed. For an agile team the effect is slowed onboarding, failed releases on unmaintained test hardware, and security exposures that no pipeline can see.

The [Wikipedia section on IT asset management](https://en.wikipedia.org/wiki/IT_asset_management), which sits inside its article on data centre management, describes hardware asset management as covering physical computer and network components from acquisition through disposal, with practices of request and approval, procurement, life cycle management, redeployment, and disposal, and says capturing financial information over the life cycle is a key component. It is short. This topic adds the articles on electronic waste and data erasure for disposal, and practical guidance drawn from common practice, saying so when it does.

## Core concepts

### Scope

Hardware assets include end-user devices (laptops, desktops, phones, tablets), servers and storage, network equipment, peripherals, and specialised or operational technology. They also include the accessories that make them usable. For each, the organisation wants to know the basics: what it is, who is responsible for it, where it is, what it cost, and what state it is in.

### The hardware life cycle

The Wikipedia section lists request and approval, procurement, life cycle management, redeployment, and disposal. A practical expansion, widely used and offered here as such:

| Stage | Questions to answer | Typical records |
|---|---|---|
| **Request and approval** | What is needed and who approves it? | Request, approval, budget code |
| **Procurement** | What did we buy, from whom, on what terms? | Order, invoice, warranty, supplier |
| **Receive and prepare** | Did it arrive? Is it configured and tagged? | Serial number, asset tag, configuration |
| **Assign and operate** | Who has it? What is it used for? | Owner or user, location, service supported |
| **Maintain** | What is its condition, warranty, and patch status? | Repairs, warranty end, firmware status |
| **Redeploy** | Can someone else use it? | Wipe, reassignment record |
| **Retire and dispose** | Is data removed? Where did it go? | Erasure evidence, disposal record |

### Financial information

The Wikipedia section stresses capturing financial information about the hardware life cycle. Useful facts include purchase cost, depreciation, warranty and support cost, and the cost of keeping it running. These feed replacement decisions and budgets (see Topic 4.5 — IT Financial Management and FinOps). A device that costs more to support than to replace is a candidate for retirement.

### Replacement and refresh

Organisations commonly replace equipment on a cycle, such as every few years for laptops. The sources read for this guide state no recommended periods, and the right interval depends on the equipment, the work, and the cost of failure. A data-based approach looks at failure rates, support cost, security support, and performance, and replaces when the evidence says so. A fixed cycle is easier to plan, and an evidence-based one can save money or avoid failures.

### Data security at the end of life

Disposal is where hardware management meets information security (see Topic 3.13 — Information Security Management). The Wikipedia article on data erasure describes data erasure as a software method that overwrites every sector of a drive so that the stored data is irrecoverable; ordinary file deletion removes only pointers, and common tools can often recover the data. Key points from the article:

- **Overwriting** leaves the drive usable. **Degaussing** and **physical destruction** make the media unusable and add to electronic waste.
- **Solid-state drives and flash media** can retain remnant data that erasure misses. The article cites a 2011 study finding that built-in sanitize commands work when implemented correctly, while software techniques work most, but not all, of the time.
- **Encryption** offers another route: destroying the keys of a self-encrypting drive renders its data inaccessible.
- **Verification and certificates:** good software should verify that the overwrite reached the whole device, including hidden areas, and issue a validation certificate and a log of sectors that could not be overwritten.
- **Standards:** the article lists many, including NIST Special Publication 800-88 (2006, revised in 2014), which it quotes as saying that a single overwrite pass with a fixed pattern such as binary zeros typically hinders recovery. It states that a single pass is generally sufficient for modern hard drives.

The article is tagged as needing citations and some claims are flagged. Check the standards your sector or country requires and the current state of the art for your equipment; do not rely on a Wikipedia summary for a compliance decision.

### Electronic waste

The Wikipedia article on electronic waste defines it as discarded electrical or electronic devices, including items destined for reuse, resale, salvage, recycling, or disposal. It reports about 62 million tonnes generated globally in 2022, up 82 percent from 2010, with only 22.3 percent formally collected and recycled according to a 2024 study; it also cites other figures that conflict, and it carries maintenance tags for unverified claims, so check numbers against primary sources before quoting them. It describes hazards from materials such as lead, cadmium, mercury, and flame retardants, and from informal processing, with examples from Guiyu in China and Agbogbloshie in Ghana. It notes that the Basel Convention, adopted in March 1989, regulates the transboundary movement of hazardous waste, and that certified recyclers under schemes such as R2 and E-Stewards must destroy all data stored on electronics. Reuse extends device life and delays recycling.

For an organisation the lessons are practical: choose disposal partners who are certified and can show where devices go, prefer reuse where it is safe, and keep records. Laws on electronic waste differ by country and region; ask your compliance function which apply.

### Hardware and service management

Hardware records link to services: this switch carries that service, this server hosts that application. Those links turn an asset register into a tool for incident response, change planning, and risk assessment (see Topic 4.4 — Configuration Management). Without them, a failed device is a ticket; with them, it is an impact statement.

### Agile and hardware

Agile teams treat hardware as a constraint to design around, not the main event. Cloud and virtualization reduce the physical estate, but not to zero. Test devices for mobile apps, build agents, lab equipment, and edge devices all need tracking. Treat them as assets with owners and life cycles, and do not leave them in a cupboard.

## Best practices

1. **Tag and record every device that matters.** Assign a unique asset tag or serial record at receipt, and record type, owner, location, and status. Make this the first step after delivery.
2. **Link devices to people and services.** Record who has each device and what service it supports, and update on moves and changes. Use the leaver process to recover equipment and remove access.
3. **Keep financial data with the asset.** Record cost, warranty, support terms, and depreciation. Use it to compare repair, support, and replacement.
4. **Use discovery to find the unknown.** Compare the register with network and endpoint discovery, and investigate unknown devices promptly (see Topic 4.1 — IT Asset Management).
5. **Monitor condition and support status.** Track warranty end dates, firmware and security support status, and failure history. Plan replacement before devices fail or lose support.
6. **Replace on evidence.** Look at failure and support data, performance, and security support to decide on replacement, and not only on age. Review the policy once a year.
7. **Prepare devices consistently.** Use a standard build and automated enrolment so that new devices arrive ready, with security controls in place.
8. **Redeploy where safe.** Wipe and reassign devices that still meet needs, with a record of the wipe. Avoid stockpiles of unused equipment.
9. **Erase data properly and keep evidence.** Use a method suited to the device type and the sensitivity of the data, verify it, and keep a certificate or log. For flash storage, use device-supported sanitize commands or key destruction as appropriate (see the data erasure notes above).
10. **Choose disposal partners carefully.** Prefer certified recyclers, ask where devices and materials go, and keep records. Include data destruction terms in the contract.
11. **Plan for lost and stolen devices.** Have a quick way to report, a remote lock or wipe where available, and a rule on when to treat a loss as a security incident (see Topic 3.2 — Incident Management).
12. **Review regularly.** At least twice a year, check a sample of the register against physical reality for the main device classes, and fix the process behind any gap.

## Questions to discuss with your team

**If we counted every device we own today, would we match the register?**

Pick a floor, a team, or a stockroom and do a quick count against the register. The differences are the lesson. Ask which mismatches matter most: devices with data on them, devices that are unpatched. The facilitator can ask what stops people from updating the register at the moment of change. Choose one process to tighten.

**What do we do with a laptop when someone leaves?**

Walk through the steps: who collects it, where it goes, who wipes it, who updates the record. Gaps often appear between teams. Ask for the last example and trace it. Agree on one owner and a checklist.

**How do we decide when to replace equipment?**

Ask for the current rule and its source. Often it is a fixed age that someone set long ago. Discuss what data you have on failure, support cost, and security support. Compare with the cost of replacing early or late. Agree on what data to collect.

**How would we prove that data on a device we disposed of was destroyed?**

Take a recent disposal and ask what evidence exists. If the answer is "the recycler said so," discuss what a certificate or log should contain. Ask what method was used for solid-state storage. Agree on a minimum standard and evidence.

**Which of our devices are out of warranty or out of security support, and what depends on them?**

List devices near the end of support. Ask what each supports. Unsupported devices behind important services are risks. Plan replacement in order of impact and decide where compensating measures are needed.

**Who handles a lost or stolen device, and how fast?**

Ask how a user reports a loss and what happens next. Check whether remote lock or wipe is available and whether anyone has tried it. Discuss when a loss becomes a security incident. Agree on a clear first step for users.

## In practice: an agile ITIL example

A provincial health authority supplies about 4,000 laptops and tablets to community nurses, who visit patients at home. Devices are lost or damaged frequently. The authority's records show 4,300 devices, but the service desk believes it manages fewer. A security review finds that a number of laptops listed as retired have been seen in use, and that a stock of old devices in a cupboard still contains patient data.

The head of end-user services sets a small program. Each device gets a unique tag and a record linked to a named nurse and a team. A discovery tool compares the register with devices that connect to the network, and a monthly list of unmatched devices goes to team managers, who have two weeks to explain or return them. Devices are enrolled automatically with encryption on and standard software, so that a lost laptop reveals little. A leaver checklist adds device return as a step that the manager signs off. For retirement, the authority contracts with a certified recycler who erases drives, destroys those that cannot be erased, and provides a certificate for each batch. The cupboard is emptied and its contents erased and recorded.

Within six months the register and discovery match within a small margin, and a lost laptop is remotely locked within the hour in most cases. Some problems remain. Nurses sometimes share devices on busy shifts, so the owner field is wrong, and the recycler's certificates list batches but not individual devices, which the auditor asks about. The head of end-user services introduces a shared-device record with a daily sign-out and asks the recycler to include serial numbers on the certificates. She also decides to review the replacement policy using failure data from the first year, instead of keeping a fixed age.

## Four perspectives

### Product and delivery teams

Delivery teams hold test devices, build servers, and lab equipment. Register them, give them owners, and retire them properly. Tell asset management when you need devices, so that supply matches projects.

### Service and operations teams

Operations and the service desk run most of the life cycle: build, deploy, support, and retire. Keep records current at each step, use discovery to catch gaps, and keep disposal evidence. Share condition and failure data with whoever plans replacement.

### Leadership and governance

Leaders decide replacement budgets and risk appetite. Ask for the number of devices out of support, the process for lost devices, and the evidence for data destruction. Support evidence-based refresh and the small controls, such as tags and checklists, that keep records true.

### Customers and users

Users hold the equipment day to day. Look after it, report loss or damage quickly, and return equipment when you leave. Tell the desk if you share a device or move to another location, so that records are right.

## Common failure modes

- **Untagged equipment.** Devices cannot be told apart. Instead, tag and record at receipt.
- **Stale records.** Moves and leavers are not captured. Instead, tie updates to events such as joiner, mover, and leaver processes.
- **Fixed-age refresh without data.** Devices are replaced too early or too late. Instead, review failure, cost, and support data.
- **Weak disposal.** Data remains on disposed devices. Instead, erase and verify with a method suited to the media, keep evidence, and use a certified partner.
- **Ignoring flash storage.** Overwriting is assumed to work. Instead, use sanitize commands or key destruction and verify.
- **Stockpiles.** Unused devices pile up. Instead, redeploy or retire on a schedule.
- **No link to services.** A failed device is only a ticket. Instead, record the service each device supports.
- **Uncertified recycling.** Equipment ends up where nobody knows. Instead, choose certified partners and ask where materials go.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Inventory and tracking | Devices are known informally | A register covers main devices | Every device is tagged and recorded, reconciled with discovery | Accuracy and gaps are measured and corrected | Inventory covers owned, leased, and partner devices with shared data |
| Life cycle and refresh | Replacement happens on failure | Some devices follow a refresh plan | Life cycle steps and a refresh policy are defined | Failure and cost data drive replacement decisions | Refresh is planned across the organisation with suppliers and finance |
| Disposal and data protection | Disposal is ad hoc | Some devices are wiped | A standard erasure method and certified disposal with evidence | Disposal evidence is audited and gaps closed | Disposal is coordinated with partners and reuse programs |
| Link to service and finance | Devices are not linked to services or costs | Some cost data are kept | Devices are linked to owners, services, and costs | Cost and support data are reviewed and used in budgets | Asset data are shared with finance, security, and suppliers continually |

## Checklist

- [ ] Every device we track has a unique tag or serial record and a named owner or user.
- [ ] Devices are linked to the service they support.
- [ ] Discovery is compared with the register at least monthly for main device types.
- [ ] Warranty and support end dates are recorded and reviewed.
- [ ] Our replacement policy is based on data and reviewed annually.
- [ ] Leaver and mover processes recover or reassign devices.
- [ ] Data erasure uses a method suited to the media, with verification and a record.
- [ ] Disposal partners are certified and provide evidence per device or batch.
- [ ] Lost and stolen devices can be reported quickly and remotely locked or wiped where available.
- [ ] A sample of the register is checked against physical reality twice a year.

## AI prompts

**Purpose: reconcile a physical count with the register.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Purpose: prepare a data-based replacement review.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Purpose: write a device disposal checklist with evidence requirements.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorisation, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: plan a lost-device response.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## AI skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use to link devices to the services they support.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use to plan how much equipment is needed and when.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use to forecast refresh and support costs.
- [data-governance](../../../../skills/data-governance/SKILL.md): use to decide who owns the data on devices and how it is protected at retirement.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use to select and review hardware suppliers and disposal partners.

## Key sources

- **IT asset management** (Wikipedia): the definition and a description of hardware asset management, within the article on data centre management.
- **Data erasure** (Wikipedia): methods, standards, verification, and the special case of solid-state storage.
- **Electronic waste** (Wikipedia): scale, hazards, recycling, and the Basel Convention, with caveats about conflicting figures.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): the primary guidance that the Wikipedia article quotes; read the current revision before setting a standard.

## References

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data centre management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
