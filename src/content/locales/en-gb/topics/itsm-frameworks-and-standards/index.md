# ITSM Frameworks and Standards

**IT service management has many frameworks and standards that overlap, and the useful skill is knowing what each is for: guidance to learn from, a standard you can be certified against, or a governance model that tells you what to control.**

## Why this matters

Ask five people what "we follow ITSM best practice" means and you may get five answers: ITIL, ISO/IEC 20000, COBIT, FitSM, or "whatever the vendor's tool does." The terms are used loosely, and the differences matter. A customer who asks for ISO/IEC 20000 certification cannot be satisfied with ITIL training. An auditor who asks about COBIT controls will not be helped by a service desk process map.

For agile teams, the question is practical: which of these do we have to deal with, and which can we treat as a source of ideas? Many teams are surprised to learn that ITIL, the best known, is guidance for individuals to be certified in and not a standard for organisations. Others are surprised that the main ITSM standard has recently added guidance on agile and DevOps ways of working.

This topic compares the main frameworks and standards, using the [Wikipedia articles on IT service management](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT), and [FitSM](https://en.wikipedia.org/wiki/FitSM). Those articles vary in quality, and several carry maintenance flags. Where they are weak, this topic says so. Check the owners' own publications before you rely on any detail for a contract or an audit.

## Core concepts

### Three kinds of thing

The names in this topic fall into three groups. Keeping them apart avoids many confused conversations.

| Kind | What it gives you | Examples named in the Wikipedia article on ITSM |
|---|---|---|
| **Guidance (a framework or library)** | Ideas and described practices to adapt | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **A certifiable standard** | Requirements an organisation can be audited and certified against | ISO/IEC 20000 |
| **A governance or capability model** | A way to direct, control, or assess IT | COBIT, CMMI, TOGAF |

FitSM sits between the first two, as described below.

### ITIL

ITIL is guidance on ITSM and IT asset management. Certification is for individuals, and no independent assessment of an organisation's ITIL compliance exists (see Topic 2.2 — ITIL). It is the most widely used source of vocabulary.

### ISO/IEC 20000

ISO/IEC 20000 is an international standard for IT service management. According to Wikipedia, Part 1 sets requirements for a service management system covering the planning, delivery, and improvement of services. It was developed from BS 15000, created by BSI Group, and was first published in December 2005. Updates followed: Part 1 in June 2011 and a second revision, ISO/IEC 20000-1:2018, released on 15 July 2018, after which certified organisations had a three-year transition period. The 2018 edition has ten clauses following the ISO high-level structure.

The standard has many parts. The article lists, among others: guidance on applying a service management system (Part 2); guidance on scope and applicability (Part 3); implementation guidance (Part 5); requirements for certification bodies (Part 6); concepts and vocabulary (Part 10); and a technical specification on the relationship with ITIL 4 (Part 11). It also lists recently published parts, from 2023 to 2025, with guidance on service integration and management (SIAM), agile and DevOps, and sustainability. Wikipedia does not say which part number covers which topic, so check the ISO catalog before you cite one.

Organisations can be certified, and individuals can earn qualifications from bodies such as APMG-International, EXIN, and PECB. The article reports that the 2024 ISO survey counted 27,332 certificates, of which 24,056 were in China. That shows how unevenly certification is spread across countries, so do not assume a customer elsewhere will ask for it.

Wikipedia says the standard was originally developed to reflect ITIL best practice, but marks that claim "citation needed." Treat the relationship as close but not identical. The article also says the standard supports other frameworks such as Microsoft Operations Framework and parts of COBIT.

### COBIT

COBIT, according to Wikipedia, is a framework created by ISACA for IT management and governance. It links business goals to IT goals and defines responsibilities for business and IT teams. The article describes five process areas: Evaluate, Direct and Monitor; Align, Plan and Organise; Build, Acquire and Implement; Deliver, Service and Support; and Monitor, Evaluate and Assess. It gives these dates: first released in 1996, version 5 in 2012, and says ISACA offers certification on COBIT 2019 and COBIT 5. The article ties COBIT to ITIL, ISO 27000, CMMI, TOGAF, and the Project Management Institute's PMBOK Guide.

The article itself carries maintenance flags about primary sources and missing citations, and one claim, that the framework helps companies follow law and be more agile, rests on a single source. Use COBIT's own publications for authority.

### FitSM

FitSM is a family of lightweight standards. Wikipedia says it grew from FedSM, an EU-funded project to improve service management in federated e-infrastructures, and that revised deliverables were published under the FitSM name from May 2013. FitSM-1 holds about 85 auditable requirements covering general requirements and 14 processes, and is much shorter than ISO/IEC 20000 Part 1 although similar in scope and style. All parts are published under Creative Commons licenses. Organisations cannot be certified as FitSM-conformant, though conformance can be audited, and a personnel certification scheme began in 2013.

FitSM is useful for small teams that want a short requirement set. The article does not state the current version or the status of its maintaining group, so verify those before relying on it.

### Other names

The ITSM article also lists the following. This guide does not cover them further.

- **CMMI:** a model for establishing, managing, and improving services and processes.
- **TOGAF:** a framework linking business goals to architecture objectives.
- **Microsoft Operations Framework:** service management guidance based on Microsoft technologies.
- **Application Services Library and Business Information Services Library:** frameworks for application management and for information management.
- **USM:** a principle-based system adopted by the Dutch government.

The article adds that ITSM frameworks have drawn on ISO 9000, ISO/IEC 27000, and CMMI. Security management has its own family of standards (see Topic 3.13 — Information Security Management).

### Agile and DevOps in the standards

The ISO/IEC 20000 article lists a recent part of the standard with guidance on agile and DevOps. This is notable because it shows that the standards body treats agile ways of working as something a service management system must accommodate. The article gives no detail on its content, so read the standard itself if you need it. Meanwhile, ITIL 4 describes itself as aligned with agile, DevOps, and lean (see Topic 2.2 — ITIL), and the Wikipedia article on ITSM does not mention agile at all. Sources differ in how much they have caught up.

### Choosing

There is no single right framework. A sensible way to choose is to ask what you need:

| If you need… | Consider… |
|---|---|
| A shared vocabulary and ideas for practices | ITIL |
| Certification of your service management system for customers or tenders | ISO/IEC 20000 |
| A short, auditable set of requirements for a small team | FitSM |
| Governance and control of IT in the enterprise, linked to business goals | COBIT |
| Assessment of process capability | CMMI |

This table is the guide's summary, not a recommendation from any framework owner.

## Best practices

1. **Start with the question you need to answer.** Write down what you need: vocabulary, certification, control, or assessment. Choose the framework that answers it, and not the one with the best marketing.
2. **Learn the difference between guidance and standards.** Teach the team that ITIL certification is for individuals, ISO/IEC 20000 certification is for organisations, and COBIT is a governance model. Many contract and audit confusions start here.
3. **Find out what customers and regulators actually require.** Ask for the exact clause or requirement. Often the request is for a "recognised framework," and a short, honest description of your practice is enough.
4. **Use the standard text, not summaries, for compliance.** When you claim conformance, work from the ISO standard or the framework owner's publication. Summaries, including this one, are for orientation only.
5. **Map your practice once, not four times.** If you must satisfy more than one framework, build a single description of your practice and map it to each, instead of writing separate documents.
6. **Keep the system as small as you can.** ISO/IEC 20000 asks for a service management system and records. Meet each requirement with the lightest approach that works, and automate evidence from your tools.
7. **Pay attention to scope.** A certificate covers a stated scope. Choose a scope that reflects real services and teams, and do not exclude the parts that make the certificate hard.
8. **Check the agile and DevOps guidance in the standards you use.** Where a standard has guidance on agile and DevOps, read it before arguing with an auditor about how an agile team can meet a requirement.
9. **Consider lighter options for small teams.** FitSM or a subset of ITIL may fit a small team better than a full certified system. Note what you give up, such as external certification.
10. **Keep security and service management aligned.** If you use ISO/IEC 27001 for information security, share records and reviews with your service management system to avoid duplicate work (see Topic 3.13 — Information Security Management).
11. **Document your tailoring.** Record which parts of a framework you use, which you do not, and why. This protects you in audits and helps new staff.
12. **Review annually.** Standards and frameworks change. Assign someone to follow updates and report what matters for your team (see Topic 6.4 — Learning Paths and Certification).

## Questions to discuss with your team

**Which of these frameworks or standards are we required to use, and which do we use by habit?**

List what customers, contracts, regulators, and managers actually require, with the document that says so. Then list what the team uses without a requirement. The two lists often differ more than expected. The facilitator can ask who first introduced each and why. Follow up by finding the exact wording of any requirement that drives work.

**If a customer asked whether we are "ITIL certified," what would we answer?**

Practice an honest answer: individuals can be certified, organisations cannot, and here is what we do. Compare answers. Some will overclaim. Discuss what the customer probably needs and what evidence could meet it, such as certification to ISO/IEC 20000 or a description of practice. Agree on a sentence everyone can use.

**What would it cost us to be certified to ISO/IEC 20000, and what would we gain?**

Ask what customers or markets would value it and what the team would have to change. Do not guess at costs; collect real quotes or ask a peer who has done it. List the benefits you can describe: a recognised label, a disciplined system, access to tenders. Decide whether to investigate further.

**Where do our records for audit come from, and could our tools produce them automatically?**

List the records auditors ask for and where each comes from. Many can come from version control, ticket tools, and monitoring if configured with this in mind. Ask which records are produced by hand and why. Choose one to automate.

**How do our agile practices fit what the standards expect, and where is the gap?**

Take a requirement your auditor cares about, such as change authorisation, and describe how an agile team meets it. Where the standard has guidance on agile and DevOps, read the relevant text together. Note gaps in evidence, not in intent.

**Who is following changes in these frameworks for us?**

Ask who reads announcements from the framework owners and standards bodies. A frequent answer is "nobody." Decide who will, how they will report, and when. The facilitator can suggest a short note once a quarter listing what changed and whether it matters.

## In practice: an agile ITIL example

A software company of 120 people sells a hosted scheduling product to hospitals and universities. A large university customer's tender requires "a certified IT service management system." The founders had assumed their ITIL-trained support lead would be enough. The support lead explains that ITIL certification applies to individuals, and the tender most likely means ISO/IEC 20000.

The head of operations investigates. She reads the tender wording, which names ISO/IEC 20000-1, and asks the customer which scope they expect. She reads the standard's table of contents and compares its ten clauses with the company's existing records, which come mostly from its ticket tool, change history, and incident reviews. She finds that much of the evidence already exists, but that there are no documented service management policies, no formal supplier reviews, and no management review. She also finds that the standard now has a part on agile and DevOps guidance, which helps her explain the company's weekly releases to a prospective auditor.

The company decides to pursue certification for the hosted product only, with a modest set of documents and a quarterly management review. It plans for about a year of work. Not everything goes smoothly. Two engineers resist the extra records and a supplier declines to provide formal service review reports. The head of operations replaces some manual records with exports from the company's tools, and negotiates a lighter review arrangement with the supplier. The company wins the tender, and decides to review at the next surveillance audit whether the system helps or hinders the weekly releases.

## Four perspectives

### Product and delivery teams

Delivery teams meet these frameworks as requirements from customers and auditors. Learn which requirement applies, and ask what evidence is acceptable. Many requirements can be met from the tools you already use. Offer to explain your release process in the language of the standard.

### Service and operations teams

Operations teams usually carry the management system. Keep records useful, with a stated purpose for each. Watch for requirements that duplicate each other across frameworks, and map them once. Share the plan with delivery teams so that records are a by-product of work and not a separate task.

### Leadership and governance

Leaders decide which frameworks to adopt and how much to invest in certification. Ask what the business case is, and what customers actually require. Be wary of buying certification as a label. Ensure that the system helps the organisation improve, and that someone owns it.

### Customers and users

Customers who ask for certification often want assurance. Ask providers which standard and scope their certificate covers, and what is outside it. A certificate is evidence of a management system, not a guarantee of any individual outcome.

## Common failure modes

- **Confusing individual and organisational certification.** Teams claim "ITIL certified" for a company. Instead, state exactly what is certified and by whom.
- **Chasing certification as a label.** The system exists for the audit, not for improvement. Instead, make the records useful to the team first.
- **Duplicating documents across frameworks.** Each standard gets its own binder. Instead, describe your practice once and map it.
- **Narrowing the scope to avoid hard parts.** The certificate excludes the services customers care about. Instead, choose a scope that reflects real services.
- **Relying on summaries.** Claims of conformance are based on blog posts. Instead, work from the standard or framework owner's text.
- **Ignoring agile guidance.** Teams argue with auditors without reading the part of the standard that addresses agile and DevOps. Instead, read it and prepare examples.
- **Over-documenting.** The system grows more records than anyone reads. Instead, tie each record to a purpose and automate evidence.
- **Forgetting changes.** The standard moves on and the team does not notice. Instead, name someone to follow updates.

## Maturity model

| Dimension | Initiate | Develop | Standardize | Manage | Orchestrate |
|---|---|---|---|---|---|
| Understanding of frameworks | Names are used loosely | Some staff can say what each framework is for | Teams share a short, accurate description of frameworks in use | Use of frameworks is reviewed against requirements and outcomes | Teams, customers, and suppliers share accurate understanding |
| Requirements and scope | Requirements are assumed | Some requirements are traced to documents | Requirements and scope are documented | Compliance and scope are reviewed and gaps tracked | Requirements are aligned with partners and customers |
| Evidence | Evidence is assembled by hand for each request | Some records are produced from tools | Evidence comes mostly from tools and is consistently described | Evidence quality is measured and improved | Evidence is shared with auditors and partners automatically |
| Currency | Changes to frameworks go unnoticed | Some people follow announcements | A named person reports changes at set intervals | Changes are assessed and acted on | Changes are anticipated and addressed with partners |

## Checklist

- [ ] We can state which frameworks and standards customers, contracts, or regulators actually require.
- [ ] We know which are guidance, which are certifiable standards, and which are governance models.
- [ ] Our claims about certification are accurate and specify the scope.
- [ ] We work from the standard or owner's text for any compliance claim.
- [ ] Our practice is described once and mapped to each framework we must satisfy.
- [ ] Evidence for audits comes mostly from our tools.
- [ ] We have read the agile and DevOps guidance in the standards that apply to us.
- [ ] Someone is named to follow updates and report them.
- [ ] Our tailoring decisions are written down.
- [ ] We have reviewed whether our scope matches real services.

## AI prompts

**Purpose: map a customer requirement to the framework text that supports it.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: describe your practice once so it can be mapped to several frameworks.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Purpose: prepare to answer "are you ITIL certified?" honestly.**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Purpose: plan the evidence a service management audit might ask for.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI skills

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): use to place service management frameworks in the wider picture of enterprise architecture and governance.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use to plan how to prepare for an audit against a standard or contract requirement.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): use to design checks that produce evidence of conformance automatically.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use when a certification scope depends on suppliers and you need to plan supplier reviews.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): use when frameworks such as COBIT or the PMBOK Guide meet your project office.

## Key sources

- **ISO/IEC 20000-1** (International Organisation for Standardisation): the standard itself; read its scope and clause headings in the ISO catalog before making claims.
- **ISO/IEC 20000** (Wikipedia): the history, parts, and certification landscape of the standard, with citations.
- **COBIT** (ISACA, and Wikipedia): ISACA's own publications are authoritative; the Wikipedia article gives history and structure but has weak sourcing.
- **FitSM** (Wikipedia and the FitSM project): a short, freely licensed alternative; check the project's pages for the current version.

## References

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
