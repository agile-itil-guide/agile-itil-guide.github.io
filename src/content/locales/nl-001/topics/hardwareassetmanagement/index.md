# Hardwareassetmanagement

**Hardwareassetmanagement volgt fysieke apparatuur van aankoop tot afvoer, en haar stille risico's zijn het apparaat dat niemand kent, het apparaat dat te lang wordt gehouden en het apparaat dat vertrekt met nog gegevens erop.**

## Waarom dit ertoe doet

Hardware doet er nog toe in een cloud-first wereld. Mensen werken op laptops, telefoons en tablets. Netwerken draaien op switches en access points. Veel organisaties houden servers, opslag en gespecialiseerde apparatuur on-site. Wanneer een laptop kwijtraakt, een server buiten garantie valt of een partij apparaten vervangen moet worden, zijn de vragen dezelfde: wat hebben we, waar is het, wie heeft het, wat is het waard en wat bevat het?

Slecht hardwarebeheer toont zich op bekende manieren. Medewerkers wachten op apparatuur omdat niemand weet wat in het magazijn ligt. Oude apparaten blijven in dienst omdat niemand de gegevens heeft om vervanging te rechtvaardigen, en vallen dan uit op een ongelegen moment. Apparaten worden weggegooid met nog gegevens erop. Garantieclaims worden gemist. Voor een agile team is het effect vertraagde onboarding, mislukte releases op onderhouden testhardware en beveiligingsblootstelling die geen pipeline kan zien.

De [Wikipedia-sectie over IT-assetmanagement](https://en.wikipedia.org/wiki/IT_asset_management), die binnen het artikel over datacentermanagement valt, beschrijft hardware-assetmanagement als omvattend fysieke computer- en netwerkcomponenten van aanschaf tot afvoer, met praktijken van verzoek en goedkeuring, inkoop, levenscyclusmanagement, herinzet en afvoer, en zegt dat het vastleggen van financiële informatie over de levenscyclus een kerncomponent is. Ze is kort. Dit onderwerp voegt de artikelen over elektronisch afval en gegevenswissing voor afvoer toe, en praktische richtlijnen uit gangbare praktijk, met vermelding wanneer het dat doet.

## Kernconcepten

### Reikwijdte

Hardware-assets omvatten apparaten voor eindgebruikers (laptops, desktops, telefoons, tablets), servers en opslag, netwerkapparatuur, randapparatuur en gespecialiseerde of operationele technologie. Ze omvatten ook de accessoires die ze bruikbaar maken. Van elk wil de organisatie de basis weten: wat het is, wie ervoor verantwoordelijk is, waar het is, wat het kostte en in welke staat het is.

### De hardwarelevenscyclus

De Wikipedia-sectie noemt verzoek en goedkeuring, inkoop, levenscyclusmanagement, herinzet en afvoer. Een praktische uitbreiding, breed gebruikt en als zodanig hier aangeboden:

| Fase | Vragen om te beantwoorden | Typische vastleggingen |
|---|---|---|
| **Verzoek en goedkeuring** | Wat is nodig en wie keurt het goed? | Verzoek, goedkeuring, budgetcode |
| **Inkoop** | Wat kochten we, van wie, op welke voorwaarden? | Bestelling, factuur, garantie, leverancier |
| **Ontvangen en voorbereiden** | Is het aangekomen? Is het geconfigureerd en getagd? | Serienummer, assettag, configuratie |
| **Toewijzen en gebruiken** | Wie heeft het? Waarvoor wordt het gebruikt? | Eigenaar of gebruiker, locatie, ondersteunde service |
| **Onderhouden** | Wat is de staat, garantie en patchstatus? | Reparaties, einde garantie, firmwarestatus |
| **Herinzetten** | Kan iemand anders het gebruiken? | Wissen, toewijzingsvastlegging |
| **Uitfaseren en afvoeren** | Zijn gegevens verwijderd? Waar is het heen gegaan? | Wisbewijs, afvoervastlegging |

### Financiële informatie

De Wikipedia-sectie benadrukt het vastleggen van financiële informatie over de hardwarelevenscyclus. Nuttige feiten zijn aanschafkosten, afschrijving, garantie- en supportkosten en de kosten om het draaiende te houden. Deze voeden vervangingsbeslissingen en budgetten (zie Onderwerp 4.5 — IT-financieel management en FinOps). Een apparaat dat meer kost om te ondersteunen dan om te vervangen, is een kandidaat voor uitfasering.

### Vervanging en verversing

Organisaties vervangen apparatuur gewoonlijk volgens een cyclus, zoals om de paar jaar voor laptops. De voor deze gids gelezen bronnen noemen geen aanbevolen perioden en het juiste interval hangt af van de apparatuur, het werk en de kosten van falen. Een datagedreven aanpak kijkt naar faalpercentages, supportkosten, beveiligingsondersteuning en prestaties en vervangt wanneer het bewijs dat zegt. Een vaste cyclus is makkelijker te plannen en een op bewijs gebaseerde kan geld besparen of storingen voorkomen.

### Gegevensbeveiliging aan het einde van de levensduur

Afvoer is waar hardwarebeheer en informatiebeveiliging elkaar ontmoeten (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement). Het Wikipedia-artikel over gegevenswissing beschrijft gegevenswissing als een softwaremethode die elke sector van een schijf overschrijft zodat de opgeslagen gegevens onherstelbaar zijn; gewoon bestanden verwijderen verwijdert alleen verwijzingen en gangbare tools kunnen de gegevens vaak herstellen. Kernpunten uit het artikel:

- **Overschrijven** laat de schijf bruikbaar. **Degaussen** en **fysieke vernietiging** maken de media onbruikbaar en vergroten het elektronisch afval.
- **Solid-state drives en flashmedia** kunnen restgegevens bewaren die wissen mist. Het artikel citeert een studie uit 2011 die vond dat ingebouwde sanitize-commando's werken wanneer ze goed zijn geïmplementeerd, terwijl softwaretechnieken meestal, maar niet altijd, werken.
- **Encryptie** biedt een andere route: het vernietigen van de sleutels van een zelfversleutelende schijf maakt de gegevens ontoegankelijk.
- **Verificatie en certificaten:** goede software moet verifiëren dat het overschrijven het hele apparaat bereikte, inclusief verborgen gebieden, en een validatiecertificaat en een log van sectoren die niet konden worden overschreven afgeven.
- **Standaarden:** het artikel noemt er vele, waaronder NIST Special Publication 800-88 (2006, herzien in 2014), die het citeert als zeggend dat een enkele overschrijfronde met een vast patroon zoals binaire nullen herstel doorgaans belemmert. Het stelt dat één ronde in het algemeen volstaat voor moderne harde schijven.

Het artikel is getagd als bronvermeldingen nodig hebbend en sommige beweringen zijn gemarkeerd. Controleer de standaarden die je sector of land vereist en de actuele stand van de techniek voor je apparatuur; vertrouw niet op een Wikipedia-samenvatting voor een compliancebeslissing.

### Elektronisch afval

Het Wikipedia-artikel over elektronisch afval definieert het als weggegooide elektrische of elektronische apparaten, inclusief items bestemd voor hergebruik, wederverkoop, berging, recycling of afvoer. Het meldt ongeveer 62 miljoen ton wereldwijd gegenereerd in 2022, 82 procent meer dan in 2010, waarvan volgens een studie uit 2024 slechts 22,3 procent formeel werd ingezameld en gerecycled; het noemt ook andere cijfers die conflicteren en draagt onderhoudstags voor niet-geverifieerde beweringen, dus controleer getallen aan primaire bronnen voordat je ze citeert. Het beschrijft gevaren van materialen zoals lood, cadmium, kwik en vlamvertragers en van informele verwerking, met voorbeelden uit Guiyu in China en Agbogbloshie in Ghana. Het merkt op dat het Verdrag van Bazel, aangenomen in maart 1989, de grensoverschrijdende verplaatsing van gevaarlijk afval regelt en dat gecertificeerde recyclers onder schema's als R2 en E-Stewards alle op elektronica opgeslagen gegevens moeten vernietigen. Hergebruik verlengt de levensduur van apparaten en stelt recycling uit.

Voor een organisatie zijn de lessen praktisch: kies afvoerpartners die gecertificeerd zijn en kunnen tonen waar apparaten heen gaan, geef de voorkeur aan hergebruik waar het veilig is en houd vastleggingen bij. Wetten over elektronisch afval verschillen per land en regio; vraag je compliancefunctie welke gelden.

### Hardware en servicemanagement

Hardwarerecords linken aan services: deze switch draagt die service, deze server host die applicatie. Die koppelingen maken van een assetregister een hulpmiddel voor incidentrespons, wijzigingsplanning en risicobeoordeling (zie Onderwerp 4.4 — Configuratiemanagement). Zonder die koppelingen is een uitgevallen apparaat een ticket; met die koppelingen is het een impactverklaring.

### Agile en hardware

Agile teams behandelen hardware als beperking om omheen te ontwerpen, niet als hoofdzaak. Cloud en virtualisatie verkleinen het fysieke bezit, maar niet tot nul. Testapparaten voor mobiele apps, buildagents, laboratoriumapparatuur en edge-apparaten moeten allemaal worden gevolgd. Behandel ze als assets met eigenaren en levenscycli en laat ze niet in een kast liggen.

## Goede praktijken

1. **Tag en leg elk apparaat vast dat ertoe doet.** Wijs bij ontvangst een unieke assettag of serienummervastlegging toe en leg type, eigenaar, locatie en status vast. Maak dit de eerste stap na levering.
2. **Koppel apparaten aan mensen en services.** Leg vast wie elk apparaat heeft en welke service het ondersteunt en werk bij verhuizingen en wijzigingen bij. Gebruik het vertrekproces om apparatuur terug te krijgen en toegang te verwijderen.
3. **Houd financiële gegevens bij de asset.** Leg kosten, garantie, supportvoorwaarden en afschrijving vast. Gebruik ze om reparatie, support en vervanging te vergelijken.
4. **Gebruik discovery om het onbekende te vinden.** Vergelijk het register met netwerk- en endpointdiscovery en onderzoek onbekende apparaten snel (zie Onderwerp 4.1 — IT-assetmanagement).
5. **Monitor staat en supportstatus.** Volg einddata van garantie, firmware- en beveiligingsondersteuningsstatus en faalgeschiedenis. Plan vervanging voordat apparaten uitvallen of hun ondersteuning verliezen.
6. **Vervang op bewijs.** Kijk naar faal- en supportgegevens, prestaties en beveiligingsondersteuning om over vervanging te beslissen en niet alleen naar leeftijd. Review het beleid eenmaal per jaar.
7. **Bereid apparaten consistent voor.** Gebruik een standaardbuild en geautomatiseerde enrolment zodat nieuwe apparaten gereed aankomen, met beveiligingsmaatregelen op hun plaats.
8. **Zet opnieuw in waar het veilig is.** Wis en wijs apparaten opnieuw toe die nog aan de behoeften voldoen, met een vastlegging van het wissen. Vermijd voorraden ongebruikte apparatuur.
9. **Wis gegevens correct en bewaar bewijs.** Gebruik een methode die bij het apparaattype en de gevoeligheid van de gegevens past, verifieer haar en bewaar een certificaat of log. Gebruik voor flashopslag door het apparaat ondersteunde sanitize-commando's of sleutelvernietiging naar gelang van toepassing (zie de aantekeningen over gegevenswissing hierboven).
10. **Kies afvoerpartners zorgvuldig.** Geef de voorkeur aan gecertificeerde recyclers, vraag waar apparaten en materialen heen gaan en houd vastleggingen bij. Neem voorwaarden voor gegevensvernietiging op in het contract.
11. **Plan voor verloren en gestolen apparaten.** Zorg voor een snelle manier om te melden, een extern slot of wis waar beschikbaar en een regel voor wanneer een verlies als beveiligingsincident wordt behandeld (zie Onderwerp 3.2 — Incidentmanagement).
12. **Review regelmatig.** Controleer minstens twee keer per jaar een steekproef van het register tegen de fysieke werkelijkheid voor de belangrijkste apparaatklassen en repareer het proces achter elk gat.

## Vragen om met je team te bespreken

**Als we vandaag elk apparaat telden dat we bezitten, zouden we met het register overeenkomen?**

Kies een verdieping, een team of een magazijn en doe een snelle telling tegen het register. De verschillen zijn de les. Vraag welke afwijkingen het meest tellen: apparaten met gegevens erop, apparaten die niet gepatcht zijn. De facilitator kan vragen wat mensen ervan weerhoudt het register bij te werken op het moment van verandering. Kies één proces om aan te scherpen.

**Wat doen we met een laptop wanneer iemand vertrekt?**

Loop de stappen door: wie haalt haar op, waar gaat ze heen, wie wist haar, wie werkt de vastlegging bij. Gaten verschijnen vaak tussen teams. Vraag om het laatste voorbeeld en volg het. Spreek één eigenaar en een checklist af.

**Hoe beslissen we wanneer apparatuur te vervangen?**

Vraag naar de huidige regel en haar bron. Vaak is het een vaste leeftijd die iemand lang geleden stelde. Bespreek welke gegevens je hebt over falen, supportkosten en beveiligingsondersteuning. Vergelijk met de kosten van te vroeg of te laat vervangen. Spreek af welke gegevens te verzamelen.

**Hoe zouden we bewijzen dat gegevens op een afgevoerd apparaat zijn vernietigd?**

Neem een recente afvoer en vraag welk bewijs bestaat. Als het antwoord "de recycler zei het" is, bespreek dan wat een certificaat of log moet bevatten. Vraag welke methode voor solid-state-opslag is gebruikt. Spreek een minimumstandaard en bewijs af.

**Welke van onze apparaten zijn buiten garantie of buiten beveiligingsondersteuning en wat hangt ervan af?**

Maak een lijst van apparaten bij het einde van hun ondersteuning. Vraag wat elk ondersteunt. Niet-ondersteunde apparaten achter belangrijke services zijn risico's. Plan vervanging in volgorde van impact en beslis waar compenserende maatregelen nodig zijn.

**Wie handelt een verloren of gestolen apparaat af en hoe snel?**

Vraag hoe een gebruiker een verlies meldt en wat er daarna gebeurt. Controleer of extern vergrendelen of wissen beschikbaar is en of iemand het heeft geprobeerd. Bespreek wanneer een verlies een beveiligingsincident wordt. Spreek een duidelijke eerste stap voor gebruikers af.

## In de praktijk: een agile ITIL-voorbeeld

Een provinciale gezondheidsautoriteit levert ongeveer 4.000 laptops en tablets aan wijkverpleegkundigen, die patiënten thuis bezoeken. Apparaten raken vaak kwijt of beschadigd. De vastleggingen van de autoriteit tonen 4.300 apparaten, maar de servicedesk gelooft dat ze er minder beheert. Een beveiligingsreview ontdekt dat een aantal laptops die als uitgefaseerd stonden vermeld in gebruik is gezien, en dat een voorraad oude apparaten in een kast nog patiëntgegevens bevat.

Het hoofd eindgebruikersdiensten zet een klein programma op. Elk apparaat krijgt een unieke tag en een record gekoppeld aan een benoemde verpleegkundige en een team. Een discoverytool vergelijkt het register met apparaten die verbinding maken met het netwerk, en een maandelijkse lijst van niet-overeenkomende apparaten gaat naar teammanagers, die twee weken hebben om ze uit te leggen of terug te geven. Apparaten worden automatisch ingeschreven met encryptie aan en standaardsoftware, zodat een verloren laptop weinig onthult. Een vertrekchecklist voegt het inleveren van het apparaat toe als stap die de manager aftekent. Voor uitfasering contracteert de autoriteit een gecertificeerde recycler die schijven wist, schijven vernietigt die niet kunnen worden gewist en voor elke partij een certificaat levert. De kast wordt leeggehaald en de inhoud gewist en vastgelegd.

Binnen zes maanden komen register en discovery binnen een kleine marge overeen en wordt een verloren laptop in de meeste gevallen binnen het uur extern vergrendeld. Er blijven problemen. Verpleegkundigen delen soms apparaten tijdens drukke diensten, dus het eigenaarveld is onjuist, en de certificaten van de recycler noemen partijen maar niet individuele apparaten, waar de auditor naar vraagt. Het hoofd eindgebruikersdiensten voert een record voor gedeelde apparaten in met dagelijks uitgifte en inname en vraagt de recycler serienummers op de certificaten op te nemen. Ze besluit ook het vervangingsbeleid te reviewen met faalgegevens van het eerste jaar, in plaats van een vaste leeftijd aan te houden.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams hebben testapparaten, buildservers en laboratoriumapparatuur. Registreer ze, geef ze eigenaren en faseer ze correct uit. Vertel assetmanagement wanneer je apparaten nodig hebt, zodat aanbod bij projecten past.

### Service- en beheerteams

Beheer en de servicedesk voeren het grootste deel van de levenscyclus uit: bouwen, uitrollen, ondersteunen en uitfaseren. Houd vastleggingen bij elke stap actueel, gebruik discovery om gaten te vangen en bewaar afvoerbewijs. Deel staat- en faalgegevens met wie vervanging plant.

### Leiderschap en governance

Leiders bepalen vervangingsbudgetten en risicobereidheid. Vraag om het aantal apparaten buiten ondersteuning, het proces voor verloren apparaten en het bewijs voor gegevensvernietiging. Steun op bewijs gebaseerde verversing en de kleine maatregelen, zoals tags en checklists, die vastleggingen juist houden.

### Klanten en gebruikers

Gebruikers hebben de apparatuur dagelijks in handen. Zorg ervoor, meld verlies of schade snel en lever apparatuur in wanneer je vertrekt. Vertel de desk als je een apparaat deelt of naar een andere locatie verhuist, zodat vastleggingen kloppen.

## Veelvoorkomende faalpatronen

- **Ongetagde apparatuur.** Apparaten zijn niet te onderscheiden. Tag en leg in plaats daarvan bij ontvangst vast.
- **Verouderde vastleggingen.** Verhuizingen en vertrekkers worden niet vastgelegd. Koppel updates in plaats daarvan aan gebeurtenissen zoals instroom-, doorstroom- en vertrekprocessen.
- **Verversing op vaste leeftijd zonder gegevens.** Apparaten worden te vroeg of te laat vervangen. Review in plaats daarvan faal-, kosten- en supportgegevens.
- **Zwakke afvoer.** Gegevens blijven op afgevoerde apparaten. Wis en verifieer in plaats daarvan met een methode die bij de media past, bewaar bewijs en gebruik een gecertificeerde partner.
- **Flashopslag negeren.** Overschrijven wordt als werkend aangenomen. Gebruik in plaats daarvan sanitize-commando's of sleutelvernietiging en verifieer.
- **Voorraden.** Ongebruikte apparaten stapelen zich op. Zet in plaats daarvan opnieuw in of faseer volgens schema uit.
- **Geen link met services.** Een uitgevallen apparaat is alleen een ticket. Leg in plaats daarvan de service vast die elk apparaat ondersteunt.
- **Ongecertificeerde recycling.** Apparatuur belandt waar niemand het weet. Kies in plaats daarvan gecertificeerde partners en vraag waar materialen heen gaan.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Inventaris en tracking | Apparaten zijn informeel bekend | Een register dekt de belangrijkste apparaten | Elk apparaat is getagd en vastgelegd en met discovery gereconcilieerd | Juistheid en gaten worden gemeten en gecorrigeerd | Inventaris omvat eigen, geleasede en partnerapparaten met gedeelde gegevens |
| Levenscyclus en verversing | Vervanging gebeurt bij falen | Sommige apparaten volgen een verversplan | Levenscyclusstappen en een verversbeleid zijn gedefinieerd | Faal- en kostengegevens sturen vervangingsbeslissingen | Verversing wordt over de organisatie gepland met leveranciers en financiën |
| Afvoer en gegevensbescherming | Afvoer is ad hoc | Sommige apparaten worden gewist | Een standaard wismethode en gecertificeerde afvoer met bewijs | Afvoerbewijs wordt geaudit en gaten gedicht | Afvoer wordt met partners en hergebruikprogramma's gecoördineerd |
| Link met service en financiën | Apparaten zijn niet aan services of kosten gekoppeld | Enkele kostengegevens worden bijgehouden | Apparaten zijn aan eigenaren, services en kosten gekoppeld | Kosten- en supportgegevens worden gereviewd en in budgetten gebruikt | Assetgegevens worden voortdurend met financiën, beveiliging en leveranciers gedeeld |

## Checklist

- [ ] Elk apparaat dat we volgen heeft een unieke tag of serienummervastlegging en een benoemde eigenaar of gebruiker.
- [ ] Apparaten zijn gekoppeld aan de service die ze ondersteunen.
- [ ] Discovery wordt voor de belangrijkste apparaattypen minstens maandelijks met het register vergeleken.
- [ ] Einddata van garantie en ondersteuning worden vastgelegd en gereviewd.
- [ ] Ons vervangingsbeleid is gebaseerd op gegevens en wordt jaarlijks gereviewd.
- [ ] Vertrek- en doorstroomprocessen halen apparaten terug of wijzen ze opnieuw toe.
- [ ] Gegevenswissing gebruikt een methode die bij de media past, met verificatie en een vastlegging.
- [ ] Afvoerpartners zijn gecertificeerd en leveren bewijs per apparaat of partij.
- [ ] Verloren en gestolen apparaten kunnen snel worden gemeld en waar beschikbaar extern worden vergrendeld of gewist.
- [ ] Een steekproef van het register wordt twee keer per jaar tegen de fysieke werkelijkheid gecontroleerd.

## AI-prompts

**Doel: een fysieke telling met het register reconciliëren.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Doel: een datagedreven vervangingsreview voorbereiden.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Doel: een afvoerchecklist voor apparaten met bewijsvereisten schrijven.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een respons op een verloren apparaat plannen.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gebruik dit om apparaten te koppelen aan de services die ze ondersteunen.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om te plannen hoeveel apparatuur nodig is en wanneer.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gebruik dit om verversings- en supportkosten te voorspellen.
- [data-governance](../../../../skills/data-governance/SKILL.md): gebruik dit om te beslissen wie de gegevens op apparaten bezit en hoe ze bij uitfasering worden beschermd.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om hardwareleveranciers en afvoerpartners te selecteren en te reviewen.

## Belangrijkste bronnen

- **IT asset management** (Wikipedia): de definitie en een beschrijving van hardware-assetmanagement, binnen het artikel over datacentermanagement.
- **Data erasure** (Wikipedia): methoden, standaarden, verificatie en het bijzondere geval van solid-state-opslag.
- **Electronic waste** (Wikipedia): omvang, gevaren, recycling en het Verdrag van Bazel, met kanttekeningen over conflicterende cijfers.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): de primaire richtlijn die het Wikipedia-artikel citeert; lees de actuele herziening voordat je een standaard vaststelt.

## Referenties

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
