# IT-assetmanagement

**IT-assetmanagement houdt bij welke hardware, software en verwante middelen een organisatie bezit of betaalt, van aankoop tot afvoer, zodat beslissingen over kosten, risico en ondersteuning op feiten berusten in plaats van op gissingen.**

## Waarom dit ertoe doet

Vraag de meeste organisaties hoeveel laptops, servers, cloudaccounts en softwarelicenties ze hebben en het eerste antwoord is een gok. Het tweede, na zoeken, is vaak anders. Die kloof kost geld. Er worden licenties gekocht die niemand gebruikt, of gebruikt zonder te zijn gekocht. Oude hardware blijft ongepatcht op het netwerk. Vertrekkend personeel behoudt toegang tot systemen die niemand zich herinnerde te verwijderen. Een servicedesk kan geen apparatuur ondersteunen waarvan ze het bestaan niet kent.

IT-assetmanagement (ITAM) is de praktijk om die kloof te dichten. Het is nauw verbonden met servicemanagement: services draaien op assets, incidenten en wijzigingen raken assets en de kosten van een service zijn grotendeels de kosten van haar assets. Voor agile teams heeft de praktijk een bijzondere wending. Assets omvatten nu cloudresources die in seconden door een script worden aangemaakt en minuten later worden vernietigd, containerimages, open-sourcebibliotheken en abonnementen die met een kaart worden gekocht. Het oude model van een spreadsheet met aangeschafte apparatuur legt ze niet vast.

Het artikel "IT asset management" op de Engelstalige Wikipedia verwijst momenteel door naar het artikel over datacentermanagement, waar ITAM als sectie voorkomt. Die sectie beschrijft ITAM als bedrijfspraktijken die financiële, contractuele en inventarisfuncties verbinden om levenscyclusmanagement en strategische IT-beslissingen te ondersteunen, en ze is kort. Dit onderwerp gebruikt haar voor de definitie, voegt de details uit de artikelen over softwareassetmanagement en configuratiemanagementdatabases toe en plaatst de praktijk in de agile context. Waar het verder gaat dan de bronnen, zegt het dat.

## Kernconcepten

### Wat het is

Volgens de Wikipedia-sectie over datacenter-assetmanagement, die Gartner aanhaalt, is ITAM een set bedrijfspraktijken die financiële, contractuele en inventarisfuncties verbinden om levenscyclusmanagement en strategische IT-beslissingen te ondersteunen. Assets omvatten software en hardware in de bedrijfsomgeving. De praktijk wordt ook inventarismanagement genoemd. Het artikel merkt op dat de praktijk geautomatiseerde discovery gebruikt zodat de inventaris kan worden vergeleken met licentierechten, en dat volledig beheer een opslagplaats van meerdere soorten informatie nodig heeft, geïntegreerd met supply-chain-, helpdesk-, inkoop-, HR- en ITSM-systemen.

### Wat als asset telt

Een bruikbare werklijst voor een serviceorganisatie:

| Assettype | Voorbeelden | Behandeld in |
|---|---|---|
| **Hardware** | Laptops, servers, netwerkapparaten, telefoons, opslag | Onderwerp 4.3 — Hardwareassetmanagement |
| **Software** | Gelicentieerde applicaties, besturingssystemen, open-sourcecomponenten, abonnementen | Onderwerp 4.2 — Softwareassetmanagement |
| **Cloud- en serviceresources** | Virtuele machines, containers, opslagbuckets, SaaS-accounts | Onderwerp 4.2 — Softwareassetmanagement en Onderwerp 4.5 — IT-financieel management en FinOps |
| **Gegevens en informatie** | Datasets, records, back-ups | Onderwerp 3.13 — Informatiebeveiligingsmanagement |
| **Contracten en rechten** | Licenties, supportovereenkomsten, garanties | Onderwerp 4.2 — Softwareassetmanagement en Onderwerp 3.14 — Leveranciersmanagement |
| **Mensen en vaardigheden** | Personeel en capaciteiten (meestal niet in het assetregister, maar onderdeel van de service) | Onderwerp 2.5 — Vier dimensies van servicemanagement |

De tabel is de werklijst van deze gids, geen classificatie uit een bron.

### Levenscyclus

De Wikipedia-sectie beschrijft hardware-assetmanagement als omvattend fysieke computer- en netwerkcomponenten van aanschaf tot afvoer, met vermelde praktijken van verzoek en goedkeuring, inkoop, levenscyclusmanagement, herinzet en afvoer, en zegt dat het vastleggen van financiële informatie over de hardwarelevenscyclus een kerncomponent is. Ze geeft geen formeel fasenmodel. Een gangbare praktische volgorde, breed gebruikt en als zodanig hier aangeboden, is:

1. **Plannen en aanvragen:** beslissen wat nodig is en goedkeuring krijgen.
2. **Verwerven:** kopen of bouwen en de aankoop vastleggen.
3. **Uitrollen:** in dienst nemen en aan de gebruiker of service koppelen.
4. **Beheren en onderhouden:** patchen, ondersteunen, verplaatsen en wijzigingen volgen.
5. **Uitfaseren en afvoeren:** uit dienst nemen, gegevens wissen en veilig afvoeren.

Vraag in elke fase wie verantwoordelijk is en welke vastlegging wordt bijgehouden.

### Inventaris, discovery en vastleggingen

Een assetregister is alleen nuttig als het waar is. Het artikel merkt op dat geautomatiseerde discovery het vergelijken van inventaris met rechten ondersteunt. Discoverytools scannen netwerken en cloudaccounts om te vinden wat bestaat, en het register legt vast wat de organisatie van plan is te bezitten en te betalen. Verschillen tussen de twee zijn bevindingen: onbekende apparaten, ongebruikte licenties, niet-goedgekeurde abonnementen.

### Relatie met ITSM en de CMDB

De Wikipedia-sectie zegt dat ITAM met ITSM integreert maar koppelt het niet in detail aan ITIL-processen. ITIL-beschrijvingen onderscheiden doorgaans assetmanagement, dat gaat over eigendom, kosten en contracten, van configuratiemanagement, dat gaat over relaties tussen componenten. Een **configuration management database (CMDB)** is volgens Wikipedia een ITIL-term voor een database met informatie over hardware- en softwareassets, configuratie-items genoemd, en de relaties daartussen (zie Onderwerp 4.4 — Configuratiemanagement). Assetrecords en configuratierecords overlappen; veel organisaties federeren de gegevens zodat elke bron de controle over de eigen gegevens houdt.

### Standaarden

De Wikipedia-sectie noemt ISO/IEC 19770 als standaardenfamilie voor softwareassetmanagement zonder haar delen te beschrijven. Het artikel over softwareassetmanagement noemt de delen: 19770-1:2017 over eisen aan een IT-assetmanagementsysteem, een procesraamwerk dat in gefaseerde niveaus kan worden geïmplementeerd; 19770-2:2015 over softwareidentificatietags; 19770-3:2016 over rechtenbeheer; 19770-4:2017 over meting van resourcegebruik; en 19770-5:2015 over overzicht en vocabulaire. Controleer de standaarden zelf op exacte formulering en actuele edities.

### Voordelen en grenzen

De Wikipedia-sectie noemt geen voordelen en geen kritiek, en noemt geen tools. Praktische voordelen worden breed beweerd, zoals lagere licentiekosten, minder beveiligingsrisico en betere ondersteuning, maar deze gids heeft er in de gelezen bronnen geen gemeten bewijs voor. Behandel beweerde besparingen met zorg, vraag de mensen die ze beweren om hun bewijs en meet je eigen.

### ITAM in een agile en cloudcontext

Praktijken uit eerdere decennia nemen aan dat assets door IT worden gekocht, geleverd en geïnstalleerd. Tegenwoordig:

- **Teams maken zelf resources aan,** in cloudconsoles of via code. Het register moet ervan horen via het cloudaccount, niet via een inkooporder.
- **Assets zijn kortlevend.** Een container kan een uur bestaan. Volg de service en het account, niet elke instantie.
- **Abonnementen vervangen licenties.** Software wordt maandelijks met iemands kaart betaald en het eigenaarschap is onduidelijk.
- **Open-sourcecomponenten** komen via code binnen, buiten het inkoopsysteem om (zie Onderwerp 4.2 — Softwareassetmanagement).

Deze veranderingen duwen ITAM naar automatisering, tagging en gedeelde verantwoordelijkheid tussen IT en de teams die de assets gebruiken.

## Goede praktijken

1. **Begin met wat het meest telt.** Kies eerst de assets met de hoogste kosten of het hoogste risico: dure licenties, servers met internetverbinding, apparaten met gevoelige gegevens. Een compleet register kan later komen.
2. **Definieer wat een asset is voor jouw doeleinden.** Schrijf een korte lijst op van de assettypen die je volgt en de feiten die je voor elk nodig hebt: eigenaar, locatie of account, kosten, contract en status. Vermijd velden die niemand zal gebruiken.
3. **Benoem een eigenaar voor elke asset.** Een persoon of team moet voor elke asset of groep assets instaan. Assets zonder eigenaar zijn waar verspilling en risico zich ophopen.
4. **Gebruik discovery om te vinden wat bestaat.** Scan netwerken, cloudaccounts en endpoints en vergelijk met het register. Behandel de verschillen als items om te onderzoeken.
5. **Tag cloudresources.** Eis tags voor eigenaar, service en omgeving op resources die in cloudaccounts worden aangemaakt en rapporteer over ongetagde. Tags laten het register snel bewegende assets volgen.
6. **Verbind inkoop met het register.** Zorg dat nieuwe aankopen, inclusief abonnementen en kaartaankopen, een record aanmaken of bijwerken. Review uitgaven op items die dat niet deden.
7. **Koppel assets aan services.** Leg vast welke service elke asset ondersteunt. Zo kun je de impact van een incident, wijziging of uitfasering bepalen (zie Onderwerp 4.4 — Configuratiemanagement).
8. **Volg de financiële kant.** Leg kosten, contractvoorwaarden, verlengingsdata en afschrijving vast waar relevant. Het vastleggen van financiële informatie over de levenscyclus is een kerncomponent van hardwaremanagement, zoals de Wikipedia-sectie zegt.
9. **Beheer het einde van de levensduur.** Plan de uitfasering vanaf het begin: gegevens wissen, retour en afvoer. Verwijder toegang en licenties tegelijkertijd.
10. **Review regelmatig.** Controleer minstens twee keer per jaar het register tegen de werkelijkheid voor de belangrijkste assetklassen. Repareer het proces dat een verschil veroorzaakte.
11. **Deel de gegevens.** Maak assetgegevens beschikbaar voor de servicedesk, beveiliging, financiën en teams, in een vorm die ze kunnen gebruiken. Gegevens die alleen de assetmanager ziet, zijn weinig waard.
12. **Meet de praktijk.** Volg hoe compleet en juist het register is, hoe lang het duurt een asset te vinden en de kosten van ongebruikte items. Gebruik dit om te verbeteren, niet om mensen te rangschikken.

## Vragen om met je team te bespreken

**Als iemand vroeg hoeveel van elk soort asset we hebben, hoe zeker zouden we zijn?**

Vraag iedereen het aantal laptops, servers, cloudaccounts en abonnementen te schatten en vergelijk dan met het register. Verschillen tonen hoeveel onbekend is. De facilitator kan vragen welke categorie mensen het minst vertrouwen. Kies er een om eerst te reconciliëren.

**Wie bezit elk van onze assets en wat gebeurt er wanneer die persoon vertrekt?**

Neem een steekproef van assets en kijk naar het eigenaarveld. Tel die zonder eigenaar of met een vertrokken eigenaar. Vraag welk proces eigenaren moet bijwerken wanneer mensen doorstromen. Spreek één trigger af, zoals het vertrekproces.

**Wat betalen we dat niemand gebruikt?**

Kijk naar licenties, abonnementen en cloudresources en vraag welke geen recent gebruik hebben. Wees voorbereid op verrassingen. Vraag wie kan autoriseren iets op te zeggen. Kies de drie grootste en controleer elk.

**Hoe komen we te weten over een nieuwe cloudresource of een nieuw abonnement?**

Volg de laatste. Vaak is het antwoord "bij de rekening" of "toen het kapotging". Bespreek hoe inkoop, tagging en discovery het eerder konden vangen. Spreek één maatregel af, zoals verplichte tags of een maandelijks rapport van ongetagde items.

**Wat gebeurt er met een laptop of server aan het einde van haar levensduur?**

Loop de stappen door: wie beslist, hoe gegevens worden verwijderd, wat de vastlegging zegt. Gaten verschijnen vaak rond gegevens wissen en vastleggingen. Vraag om bewijs dat een recente afvoer correct is gedaan. Plan een korte checklist.

**Welke assetgegevens hebben andere teams nodig die wij hun niet geven?**

Vraag de servicedesk, beveiliging en financiën wat ze graag zouden zien. Typische verzoeken zijn eigenaar, service en kosten. Bespreek hoe te delen en wie ze actueel houdt. Kies één rapport om te produceren.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal bureau voor de statistiek heeft 1.800 medewerkers en draait zijn enquêteverwerking in een mix van een eigen datacenter en een publiek cloudaccount. Het financiële team merkt dat de cloudrekening in een jaar met een derde is gegroeid en een beveiligingsaudit vindt drie servers in het datacenter die niemand kan identificeren. De ITAM-functie bestaat uit twee mensen met een spreadsheet.

Het hoofd IT stelt een bescheiden doel: de belangrijkste assets kennen, wie ze bezit en wat ze kosten, beginnend met de cloud. Een nieuwe regel eist tags voor eigenaar, service en omgeving op elke cloudresource. Een wekelijks rapport somt ongetagde resources op en teams hebben twee weken om ze op te eisen of te verwijderen. In het datacenter voeren de twee ITAM-medewerkers een discoveryscan uit en vergelijken die met de spreadsheet, waarbij ze 40 apparaten vinden die niet op de lijst staan. Ze achterhalen de eigenaren van de meeste. Inkoop spreekt af dat elk nieuw softwareabonnement binnen een week aan ITAM wordt gemeld.

Na een kwartaal daalt het ongetagde deel van de cloudresources van ongeveer een derde tot een handvol en kan financiën de cloudrekening aan services toeschrijven. Enkele ongebruikte resources worden uitgeschakeld en twee servers uitgefaseerd. Er blijven problemen. Een onderzoeksgroep koopt tools met een afdelingskaart en meldt ze niet, en het wekelijkse rapport wordt maar door een paar teams gelezen. De ITAM-medewerkers praten met de onderzoeksgroep over een eenvoudig registratieformulier en vragen het hoofd financiën abonnementen aan de maandelijkse review toe te voegen. Ze besluiten ook dat het register cloudservices per account en service zal dekken, niet elke kortlevende instantie.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams maken veel assets aan. Tag wat je aanmaakt, registreer de abonnementen en bibliotheken die je toevoegt en faseer uit wat je niet meer nodig hebt. Behandel het register als een service waaraan je bijdraagt en waarvan je profiteert.

### Service- en beheerteams

Beheerteams zijn voor ondersteuning, patchen en incidentrespons afhankelijk van het register. Houd het juist door het bij deployment, wijziging en uitfasering bij te werken. Gebruik discovery om te vinden wat ontbreekt en rapporteer verschillen aan eigenaren.

### Leiderschap en governance

Leiders en financiën gebruiken assetgegevens voor beslissingen over uitgaven, risico en verlengingen. Vraag om een paar betrouwbare getallen, zoals uitgaven per service en het aandeel assets met eigenaren, in plaats van een perfect register. Steun de kleine maatregelen, zoals tags en aankooprapportage, die het waar houden.

### Klanten en gebruikers

Gebruikers profiteren wanneer hun apparatuur en toegang goed worden beheerd: werkende apparaten, snelle vervanging en geen verrassende kosten. Vertel de servicedesk over apparatuur die je toevoegt of niet meer nodig hebt en verwacht gevraagd te worden te bevestigen wat je bezit.

## Veelvoorkomende faalpatronen

- **Een register dat niemand vertrouwt.** Het is verouderd en genegeerd. Beperk in plaats daarvan de reikwijdte, gebruik discovery en werk bij bij elke levenscyclusgebeurtenis.
- **Geen eigenaren.** Assets zijn van niemand. Eis in plaats daarvan een eigenaar voor elke asset of groep.
- **Alles volgen.** De inspanning begraaft de waarde. Begin in plaats daarvan met wat duur of riskant is en groei.
- **De cloud en abonnementen negeren.** Het register dekt alleen aangeschafte hardware. Tag in plaats daarvan cloudresources en leg abonnementen vast.
- **Inkoop buiten het proces.** Kaartaankopen omzeilen het register. Verbind in plaats daarvan inkoop en uitgavenrapporten met ITAM.
- **Geen proces voor einde levensduur.** Oude apparaten behouden gegevens en toegang. Plan in plaats daarvan uitfasering, wissen en afvoer.
- **Gegevens voor anderen verborgen.** Alleen ITAM ziet het register. Deel het in plaats daarvan met de servicedesk, beveiliging en financiën.
- **Tellen zonder te handelen.** Rapporten tonen ongebruikte assets en niets wordt opgezegd. Wijs in plaats daarvan eigenaren aan om op bevindingen te handelen.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Inventaris en discovery | Assets staan in spreadsheets of helemaal niet op een lijst | Sommige assetklassen worden geïnventariseerd | Discovery en een register dekken de belangrijkste assetklassen en worden regelmatig gereconcilieerd | Volledigheid en juistheid worden gemeten en gaten gerepareerd | Inventaris omvat on-premises, cloud en leveranciers met gedeelde gegevens |
| Eigenaarschap en verantwoording | Weinig assets hebben eigenaren | Eigenaren zijn voor sommige assets benoemd | Elke asset of groep heeft een eigenaar, actueel gehouden door een proces | Eigenaarschapsgaten worden gevolgd en opgelost | Eigenaren over teams en leveranciers werken volgens gedeelde regels |
| Levenscyclus en financiële beheersing | Aankoop en afvoer zijn informeel | Sommige assets hebben kosten- en contractgegevens | Levenscyclusstappen en financiële gegevens worden voor de belangrijkste assets vastgelegd | Kosten, verlengingen en benutting worden gereviewd en erop wordt gehandeld | Financiële en levenscyclusgegevens zijn aan services gekoppeld en met financiën gedeeld |
| Gebruik van de gegevens | Gegevens worden door weinigen gebruikt | De servicedesk gebruikt het register soms | Desk, beveiliging en financiën gebruiken assetgegevens routinematig | Datakwaliteit en gebruik worden gemeten en verbeterd | Gegevens voeden beslissingen over de organisatie en met partners |

## Checklist

- [ ] We hebben een korte lijst van assettypen en de feiten die we voor elk vastleggen.
- [ ] Elke gevolgde asset of groep heeft een benoemde eigenaar.
- [ ] Discoveryresultaten worden volgens een regelmatig schema met het register vergeleken.
- [ ] Cloudresources dragen tags voor eigenaar, service en omgeving en ongetagde worden gerapporteerd.
- [ ] Nieuwe aankopen, inclusief abonnementen, maken een record aan of werken er een bij.
- [ ] Assets zijn gekoppeld aan de services die ze ondersteunen.
- [ ] Kosten-, contract- en verlengingsgegevens worden voor de belangrijkste assets vastgelegd.
- [ ] Uitfasering omvat het verwijderen van gegevens, het verwijderen van toegang en een vastlegging.
- [ ] Het register wordt voor de belangrijkste assetklassen minstens twee keer per jaar met de werkelijkheid gereconcilieerd.
- [ ] De servicedesk, beveiliging en financiën kunnen de gegevens zien die ze nodig hebben.

## AI-prompts

**Doel: discoveryresultaten met het register reconciliëren.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Doel: een korte tagstandaard voor cloudresources opstellen.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een uitfaseringschecklist voor een apparaat of server plannen.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: kandidaten voor besparing vinden uit gebruiksgegevens.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## AI-vaardigheden

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gebruik dit om te plannen hoe assets en hun relaties worden vastgelegd en actueel gehouden.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om contracten en verlengingen achter assets te beheren.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gebruik dit om de kosten van assets en abonnementen te voorspellen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om duidelijk te maken wie elke klasse asset bezit, ondersteunt en goedkeurt.
- [data-governance](../../../../skills/data-governance/SKILL.md): gebruik dit om te beslissen wie de op assets bewaarde gegevens bezit en hoe ze worden uitgefaseerd.

## Belangrijkste bronnen

- **IT asset management** (Wikipedia, momenteel binnen het artikel over datacentermanagement): een korte definitie en een beschrijving van hardware-assetmanagement.
- **Software asset management** (Wikipedia): de definitie, doelen, technologieën en de delen van ISO/IEC 19770.
- **Configuration management database** (Wikipedia): de ITIL-term voor de opslag van configuratie-items en relaties.
- **ITIL** (Wikipedia): het raamwerk dat ITAM naast servicemanagement behandelt.

## Referenties

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
