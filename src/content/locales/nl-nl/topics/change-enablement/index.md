# Change enablement

**Change enablement bestaat om nuttige wijzigingen veilig en snel te laten plaatsvinden, en het bewijs uit onderzoek naar softwarelevering is dat risico beter wordt beheerst door kleine wijzigingen, peer review en geautomatiseerde controles dan door elke wijziging naar een commissie te sturen.**

## Waarom dit ertoe doet

Wijziging is waar continue levering en servicemanagement het vaakst botsen. Leveringsteams willen vaak releasen, omdat kleine, frequente wijzigingen makkelijker te begrijpen en terug te draaien zijn. Beheer en governance willen storingen vermijden en vastleggingen bijhouden, omdat eerdere wijzigingen services hebben gebroken. Beide hebben gelijk. De onenigheid gaat meestal over hoe risico te beheersen: door goedkeuring vóór de wijziging, of door de kwaliteit van de wijziging en de snelheid van herstel.

De praktijk heet in ITIL 4 change enablement. De nieuwe naam is een doelstelling. Het doel is nuttige wijzigingen te laten gebeuren, niet wijzigingen te voorkomen. Oudere ITIL-versies noemden de praktijk change management en gaven haar een sterke rol bij goedkeuringen en schema's, wat veel teams als een poort ervoeren.

Dit onderwerp gebruikt het beste beschikbare bewijs: de richtlijnen van het DORA-onderzoeksprogramma over goedkeuring van wijzigingen en zijn maatstaven voor softwarelevering, gelezen op de eigen pagina's van het programma. De pagina's van DORA melden dat zware externe goedkeuring samengaat met slechtere leveringsprestaties. Ze geven ook geen effectgroottes of statistische details en verwijzen naar een rapport uit 2019 voor het onderliggende onderzoek, dus behandel de richtlijn als sterk maar niet definitief en toets haar in je eigen context. Het ITIL-vocabulaire komt hier uit breed gepubliceerde beschrijvingen die deze gids niet kon controleren aan de tekst van de eigenaar van het raamwerk (zie Onderwerp 2.2 — ITIL).

## Kernconcepten

### Wat change enablement doet

Een **wijziging** is het toevoegen, aanpassen of verwijderen van alles wat een service kan beïnvloeden. Change enablement is de praktijk die ervoor zorgt dat wijzigingen worden beoordeeld, geautoriseerd en gepland zodat risico wordt beheerst en nuttige wijzigingen doorgang vinden. De praktijk houdt ook vast wat er veranderde, wat van vitaal belang is voor incidentrespons omdat veel incidenten beginnen met een recente wijziging (zie Onderwerp 3.2 — Incidentmanagement).

### Soorten wijziging

ITIL 4 wordt breed beschreven als erkennend van drie soorten wijziging, elk met een ander pad:

| Soort | Wat het is | Typisch pad |
|---|---|---|
| **Standaardwijziging** | Een laagrisico, goed begrepen wijziging die een gedocumenteerde procedure volgt | Vooraf geautoriseerd; vastgelegd, zonder goedkeuring per geval |
| **Normale wijziging** | Een wijziging die beoordeling en autorisatie nodig heeft | Beoordeeld op risico en impact en dan geautoriseerd door de geëigende persoon of groep |
| **Spoedwijziging** | Een wijziging die dringend moet worden doorgevoerd, bijvoorbeeld om de service te herstellen | Versnelde autorisatie, met een uitgebreidere review achteraf |

De namen en exacte definities moeten worden gecontroleerd aan de publicaties van de eigenaar. Het principe is stabiel: stem het niveau van beheersing af op het risico.

### Wijzigingsautoriteit

Elke soort wijziging heeft iemand nodig met de bevoegdheid haar goed te keuren. In oudere praktijk was dit vaak een change advisory board (CAB). De DORA-pagina schaft het CAB niet af; ze suggereert een "strategische" rol: coördineren tussen teams, procesverbetering ondersteunen en zakelijke afwegingen maken zoals time-to-market tegenover risico. Voor routinewijzigingen, zegt ze, wordt goedkeuring het best uitgevoerd via peer review tijdens de ontwikkeling, ondersteund door automatisering.

### Wat DORA meldt over goedkeuring

De pagina van DORA over het stroomlijnen van goedkeuring van wijzigingen zegt:

- Zware externe goedkeuring, zoals een CAB of handtekening van een senior manager, gaat samen met slechtere prestaties bij softwarelevering.
- De pagina meldt geen bewijs dat formelere externe review het percentage mislukte wijzigingen verlaagt.
- Ze stelt dat zware goedkeuring levering vertraagt, wat leidt tot grotere, minder frequente releases met hoger risico, en zegt dat haar gegevens deze hypothese steunden.

De pagina noemt valkuilen: vertrouwen op een centraal CAB om fouten te vangen, dezelfde goedkeuringsprocedure toepassen op alle wijzigingen ongeacht risico, het proces niet verbeteren aan de hand van maatstaven en proces en goedkeuringen toevoegen als reactie op productie-instabiliteit, wat volgens haar de zaken meestal verergert. "Er is geen bewijs gevonden" betekent dat bewijs voor het voordeel niet is gevonden; het bewijst niet dat externe review geen effect heeft. De pagina geeft geen criteria voor wat een hoogrisicowijziging is, geen richtlijnen voor specifieke regelgeving en geen transitieplan voor gereguleerde sectoren.

### Het alternatief: beheersing in de pipeline

DORA suggereert functiescheiding te vervullen via peer review die in het ontwikkelplatform wordt vastgelegd, en continue tests, continue integratie en monitoring te gebruiken om slechte wijzigingen vroeg te detecteren, te voorkomen en te corrigeren. Ze suggereert ook het platform als product te behandelen dat ontwikkelaars snelle feedback geeft over beveiliging, prestaties, stabiliteit en defecten, hoogrisicowijzigingen te markeren voor extra toetsing en het normale wijzigingsproces snel genoeg te maken om spoed aan te kunnen. De beheersing zit in het bewijs dat de pipeline produceert: wie reviewde, welke tests slaagden, wat is uitgerold en hoe het ongedaan kan worden gemaakt.

### Wijziging meten

De pagina van DORA over maatstaven voor prestaties bij softwarelevering noemt vijf maten:

| Maat | Wat het is | Groep |
|---|---|---|
| Doorlooptijd van wijzigingen | Tijd van het committen van een wijziging naar versiebeheer tot deployment in productie | Doorvoer |
| Deploymentfrequentie | Hoe vaak deployments plaatsvinden | Doorvoer |
| Hersteltijd na mislukte deployment | Hoe lang het duurt om te herstellen van een deployment die faalt en onmiddellijk ingrijpen vraagt | Doorvoer |
| Percentage mislukte wijzigingen | Het aandeel deployments dat onmiddellijk ingrijpen vraagt, zoals een rollback of hotfix | Instabiliteit |
| Deployment-herwerkpercentage | Het aandeel deployments dat ongepland is en voortkomt uit een productie-incident | Instabiliteit |

De pagina zegt dat snelheid en stabiliteit geen afweging zijn: de maten correleren bij de meeste teams en topprestaties zijn goed op alle vijf. Ze waarschuwt ervoor de maten als doelen te stellen (de wet van Goodhart), op één maatstaf te vertrouwen, sterk verschillende applicaties te vergelijken en met andere teams te concurreren. Ze suggereert dat teams verbeteren ten opzichte van hun eigen eerdere prestaties. De pagina geeft geen benchmarkdrempels of formules, dus definieer elke maat voor je eigen context voordat je haar gebruikt (zie Onderwerp 5.6 — Maatstaven en meten).

### Vastleggingen en het configuratiebeeld

Een wijzigingsrecord moet zeggen wat er veranderde, waarom, wie het goedkeurde en wanneer het werd gedaan, en bij voorkeur linken naar de getroffen services. Tools voor versiebeheer, build en deployment kunnen veel hiervan automatisch produceren. Wijzigingen koppelen aan de configuratie van services ondersteunt impactanalyse en incidentrespons (zie Onderwerp 4.4 — Configuratiemanagement).

### Wijziging en release

Change enablement beslist of een wijziging mag doorgaan. Release- en deploymentmanagement brengt haar in productie (zie Onderwerp 3.5 — Release- en deploymentmanagement). Bij continue levering smelten de twee in de praktijk samen, met goedkeuringen ingebed in de pipeline.

## Goede praktijken

1. **Classificeer wijzigingen op risico.** Definieer een korte lijst van wijzigingssoorten, met criteria en voorbeelden. Stem het pad af op het risico, zodat routinewijzigingen snel zijn en riskante aandacht krijgen.
2. **Autoriseer laagrisicowijzigingen vooraf.** Spreek voor wijzigingen die goed begrepen, getest en omkeerbaar zijn een standaardprocedure af en laat ze zonder goedkeuring per geval doorgaan. Leg ze automatisch vast.
3. **Maak peer review de standaardgoedkeuring.** Eis dat een tweede persoon wijzigingen vóór de merge reviewt en leg de review vast in het ontwikkelplatform. Dit voldoet voor de meeste wijzigingen aan functiescheiding, zoals de DORA-pagina beschrijft.
4. **Automatiseer de controles.** Draai tests, beveiligingsscans en beleidscontroles bij elke wijziging en maak de resultaten onderdeel van de vastlegging. Een goedkeuring op basis van bewijs is sterker dan een op basis van een formulier.
5. **Houd wijzigingen klein.** Kleine wijzigingen zijn makkelijker te reviewen, testen en terug te draaien. Als een wijziging riskant voelt, vraag dan of ze kan worden opgesplitst.
6. **Maak terugdraaien makkelijk en geoefend.** Weet voor elke wijzigingssoort hoe je haar ongedaan maakt en oefen dat. Het vermogen snel te herstellen verkleint de noodzaak elke fout te voorspellen.
7. **Markeer de hoogrisicowijzigingen.** Definieer signalen, zoals wijzigingen in betalingslogica of gedeelde infrastructuur, die extra review activeren. Pas het zwaardere pad alleen daarop toe.
8. **Geef de wijzigingsautoriteit een strategische rol.** Gebruik een centraal board om tussen teams te coördineren, conflicten op te lossen en zakelijke afwegingen te maken. Gebruik het niet als controlepunt voor elke wijziging.
9. **Behandel spoed via het normale pad.** Maak het reguliere proces snel en betrouwbaar genoeg zodat spoedwijzigingen het volgen, met review achteraf. Vaak gebruikte spoedroutes wijzen erop dat het normale pad te traag is.
10. **Voeg na een incident niet standaard goedkeuringen toe.** De pagina van DORA zegt dat proces toevoegen als reactie op instabiliteit de zaken meestal verergert. Vraag eerst of de oplossing betere tests, kleinere wijzigingen of sneller herstel is.
11. **Meet het proces.** Volg doorlooptijd, tijd die wordt besteed aan wachten op goedkeuring, het aandeel wijzigingen dat zonder handmatige goedkeuring doorgaat en het percentage mislukte wijzigingen. Gebruik de maten om te verbeteren, niet om teams te rangschikken.
12. **Leg het proces uit.** De pagina van DORA merkt op dat het duidelijk communiceren van het bestaande proces en teams helpen het te doorlopen samenhangt met betere prestaties nog voordat je iets verandert. Publiceer een gids van één pagina met voorbeelden.

## Vragen om met je team te bespreken

**Welk deel van onze wijzigingen is laagrisico en goed begrepen, en hoe worden ze nu goedgekeurd?**

Neem een maand wijzigingen en sorteer ze. De meeste teams vinden dat de grote meerderheid routine is. Vraag hoe lang routinewijzigingen op goedkeuring wachten en wat de goedkeurder toevoegt. De facilitator kan vragen of iemand zich een routinewijziging herinnert die door goedkeuring van falen werd gered. Gebruik het antwoord om een eerste kandidaat voor voorafgaande autorisatie te identificeren.

**Wat vangt onze goedkeuringsstap eigenlijk?**

Maak een lijst van de laatste tien wijzigingen die bij goedkeuring werden afgewezen of vertraagd en waarom. Vergelijk met de problemen die ondanks goedkeuring in productie kwamen. Als goedkeuring weinig vangt, vraag dan wat dezelfde problemen eerder zou vangen, zoals tests of peer review. Onthoud dat de DORA-pagina geen bewijs meldt dat formelere externe review het percentage mislukte wijzigingen verlaagt. Spreek een verandering af om te proberen.

**Hoe zouden we een slechte wijziging ongedaan maken en hoe snel?**

Kies een recente wijziging en beschrijf de rollback. Als die onduidelijk, ongetest of handmatig is, is dat het risico. Vraag hoe lang het zou duren en wie het zou doen. Spreek af deze maand één rollback te oefenen. Een team dat in minuten kan herstellen, kan meer verandering aan.

**Welke van onze wijzigingen hebben extra toetsing nodig en hoe zouden we ze herkennen?**

Verzamel voorbeelden van wijzigingen die ernstige incidenten veroorzaakten. Zoek kenmerken die ze delen: gedeelde infrastructuur, beveiligingsmaatregelen, datamigraties. Stel drie signalen op die een wijziging als hoogrisico zouden markeren. Vraag wie gemarkeerde wijzigingen moet reviewen en hoe snel.

**Wanneer hebben we na een incident een beheersmaatregel toegevoegd en hielp die?**

Vraag om voorbeelden. Maak een lijst van wat werd toegevoegd, de problemen die het aanpakte en of het probleem terugkeerde. De DORA-pagina noemt het toevoegen van goedkeuringen als reactie op instabiliteit een valkuil. Bespreek of een andere reactie, zoals betere tests of kleinere wijzigingen, had gewerkt. Leg één les vast.

**Welk bewijs uit onze pipeline zou een auditor accepteren in plaats van een handtekening?**

Vraag een auditor of compliance-collega erbij te komen. Maak een lijst van het bewijs dat de pipeline al produceert: reviews, testresultaten, deploymentvastleggingen. Vraag wat ontbreekt. Veel auditors accepteren vastgelegde peer review en geautomatiseerd bewijs wanneer het betrouwbaar is. Spreek een korte beschrijving van de beheersmaatregel en een proefperiode af.

## In de praktijk: een agile ITIL-voorbeeld

De IT-afdeling van een regionaal ziekenhuis ondersteunt een klinisch roostersysteem dat door een eigen team van zeven wordt bijgewerkt. Elke wijziging, van een tikfout tot een databasemigratie, gaat naar een wekelijks change advisory board. Kleine oplossingen wachten tot acht dagen. Clinici klagen en de ontwikkelaars zijn begonnen oplossingen in grotere releases te bundelen om de wachtrij te omzeilen, wat elke release riskanter maakt.

Het hoofd IT en de voorzitter van het board reviewen een jaar aan wijzigingen. De meeste waren klein, twee hadden incidenten veroorzaakt en geen van die twee was door het board gevangen. Ze ontwerpen een aanpak met drie banen. Standaardwijzigingen, zoals tekst- en configuratiewijzigingen binnen afgesproken grenzen, met slagende geautomatiseerde tests en een geteste rollback, worden vooraf geautoriseerd en automatisch gelogd. Normale wijzigingen vragen een peer review die in het ontwikkelplatform wordt vastgelegd en een controle tegen een korte lijst van hoogrisicosignalen zoals wijzigingen in de verwerking van patiëntgegevens. Wijzigingen die als hoogrisico zijn gemarkeerd, gaan naar het board, dat twee keer per week vergadert. Spoedwijzigingen volgen het normale pad met een review na implementatie.

Na vier maanden gaan standaardwijzigingen binnen een dag live en ziet het board ongeveer een vijfde van het volume dat het gewend was. Het percentage mislukte wijzigingen stijgt niet. Er blijven problemen: twee ontwikkelaars passen de hoogrisicosignalen inconsistent toe en één gemarkeerde wijziging bereikte het board laat, en interne audit vraagt om bewijs dat peer reviews geen stempelwerk zijn. Het team schrijft voorbeelden van de signalen, voegt een steekproefreview van peer reviews door een senior engineer toe en spreekt met audit af het bewijs bij de volgende kwartaalbijeenkomst te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams dragen het grootste deel van de beheersing: review, tests, kleine wijzigingen en rollback. Bouw deze in de pipeline in en maak het bewijs zichtbaar. Houd wijzigingen klein en vertel beheer wat eraan komt. Gebruik het wijzigingsproces als plek om risico-informatie te delen, niet alleen om toestemming te krijgen.

### Service- en beheerteams

Beheerteams weten welke wijzigingen services hebben geschaad. Deel die kennis als signalen voor extra review en help controles te bouwen die ze vroeg vangen. Steun lichtere paden voor laagrisicowijzigingen en houd de vastleggingen bij die incidentrespons sneller maken.

### Leiderschap en governance

Leiders beslissen hoeveel goedkeuring de organisatie vereist. De richtlijn van DORA suggereert te vragen om bewijs van beheersing en niet om handtekeningen bij elke wijziging. Steun het meten van doorlooptijd en percentage mislukte wijzigingen en vermijd proces toevoegen na incidenten zonder oorzaken te onderzoeken. Spreek met audit af welk bewijs acceptabel is.

### Klanten en gebruikers

Klanten en gebruikers profiteren van frequente kleine verbeteringen en minder grote verstoringen. Verwacht te worden geïnformeerd over wijzigingen die jou raken, in gewone taal en vooraf. Als je bijzondere behoeften hebt, zoals vriesperioden, vertel het de verlener dan vroeg zodat er rekening mee kan worden gehouden.

## Veelvoorkomende faalpatronen

- **Eén pad voor elke wijziging.** Routinewijzigingen staan in de rij achter riskante. Classificeer in plaats daarvan op risico en geef elke klasse een eigen pad.
- **Goedkeuring als enige beheersing.** Een handtekening vervangt kwaliteit. Bouw in plaats daarvan tests, review en rollback in de pipeline in.
- **Een board dat reviewt wat het niet kan beoordelen.** Leden keuren wijzigingen goed die ze niet begrijpen. Stuur wijzigingen in plaats daarvan naar mensen met de kennis en gebruik het board voor coördinatie.
- **Bundelen om de wachtrij te omzeilen.** Teams combineren wijzigingen, wat elke release riskanter maakt. Maak de wachtrij in plaats daarvan kort genoeg dat kleine wijzigingen het makkelijke pad zijn.
- **Na elk incident beheersmaatregelen toevoegen.** Proces groeit en snelheid daalt. Zoek in plaats daarvan de oorzaak en los die op met tests, kleinere wijzigingen of sneller herstel.
- **Stempel-peer-review.** Reviews zijn formeel maar oppervlakkig. Neem in plaats daarvan steekproeven van reviews, deel voorbeelden van goede en houd wijzigingen klein genoeg om te reviewen.
- **Geen rollback.** Wijzigingen kunnen niet ongedaan worden gemaakt. Eis en oefen in plaats daarvan een rollback voor elke wijzigingssoort.
- **De maatstaven manipuleren.** Teams splitsen wijzigingen of verbergen fouten om er goed uit te zien. Gebruik in plaats daarvan meerdere maten, review ze samen en richt je op verbetering in de tijd.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Classificatie en paden | Alle wijzigingen volgen één pad of geen | Sommige teams hebben een snel pad voor eenvoudige wijzigingen | Wijzigingssoorten met criteria en aparte paden zijn standaard | Aandeel wijzigingen per pad en wachttijden worden gemeten en bijgesteld | Paden worden over teams aangepast op basis van gedeeld bewijs |
| Goedkeuring en bewijs | Goedkeuring is per handtekening of niet vastgelegd | Sommige wijzigingen krijgen peer review | Peer review en geautomatiseerde controles worden voor de meeste wijzigingen vastgelegd | Reviewkwaliteit en bewijs worden steekproefsgewijs gecontroleerd en verbeterd | Bewijs stroomt automatisch naar audit en partners |
| Herstel | Rollback is ad hoc | Sommige wijzigingen hebben rollbackstappen | Rollback is voor elke wijzigingssoort gedefinieerd en geoefend | Hersteltijd wordt gemeten en verkort | Herstelpraktijken worden over teams en leveranciers gedeeld en getest |
| Meting en verbetering | Weinig maten | Sommige teams volgen doorlooptijd | Doorlooptijd, frequentie, percentage mislukte wijzigingen en hersteltijd worden per service gevolgd | Maten sturen geplande verbeteringen en worden niet als doelen gebruikt | Teams leren van elkaars maten en verbeteren over de organisatie |

## Checklist

- [ ] We hebben wijzigingssoorten met criteria en voorbeelden gedefinieerd.
- [ ] Laagrisico, goed begrepen wijzigingen worden vooraf geautoriseerd en automatisch vastgelegd.
- [ ] Peer review wordt voor normale wijzigingen in het ontwikkelplatform vastgelegd.
- [ ] Geautomatiseerde tests en controles draaien bij elke wijziging.
- [ ] Elke wijzigingssoort heeft een rollback die is geoefend.
- [ ] We hebben signalen die hoogrisicowijzigingen voor extra toetsing markeren.
- [ ] Een eventueel centraal board heeft een duidelijke rol in coördinatie en afwegingen.
- [ ] We volgen voor elke service de doorlooptijd van wijzigingen, deploymentfrequentie, hersteltijd na mislukte deployment en percentage mislukte wijzigingen.
- [ ] Onze auditors hebben gezegd welk bewijs ze accepteren in plaats van handtekeningen.
- [ ] We hebben een gids van één pagina over het wijzigingsproces met voorbeelden.

## AI-prompts

**Doel: de wijzigingen van vorige maand classificeren naar risico en goedkeuringspad.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Doel: een standaardwijzigingsprocedure schrijven.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: je voorbereiden om met een auditor het bewijs te bespreken dat onze pipeline produceert.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Doel: een proef met lichtere goedkeuring ontwerpen.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [change-request](../../../../skills/change-request/SKILL.md): gebruik dit om wijzigingsrecords op te stellen die bevatten wat beheer en auditors nodig hebben.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): gebruik dit wanneer een wijziging organisatorisch is en gepland moet worden voor mensen en voor systemen.
- [release-notes](../../../../skills/release-notes/SKILL.md): gebruik dit om gebruikers en de servicedesk te vertellen wat een wijziging doet.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): gebruik dit om omkeerbare beslissingen die snel kunnen worden genomen te onderscheiden van onomkeerbare die meer zorg vragen.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om de risico's die wijziging introduceert en hoe ze worden beheerst vast te leggen en te reviewen.

## Belangrijkste bronnen

- **Streamlining change approval** (DORA, dora.dev): de richtlijn van het onderzoeksprogramma over peer review, automatisering en de rol van een wijzigingsboard.
- **DORA's software delivery performance metrics** (dora.dev): definities en waarschuwingen voor doorlooptijd van wijzigingen, deploymentfrequentie, hersteltijd, percentage mislukte wijzigingen en herwerkpercentage.
- **ITIL** (Wikipedia): achtergrond over ITIL-versies en de verschuiving naar ITIL 4.
- **Continuous delivery** (Wikipedia): achtergrond over praktijken die kleine, frequente wijzigingen veilig maken.

## Referenties

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
