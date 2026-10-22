# Softwareassetmanagement

**Softwareassetmanagement zorgt ervoor dat een organisatie de software koopt die ze nodig heeft, gebruikt wat ze koopt en de voorwaarden naleeft die ze heeft aanvaard, en voor agile teams betekent dat nu ook het volgen van open-sourcecomponenten en abonnementen naast gelicentieerde producten.**

## Waarom dit ertoe doet

Software is een van de grootste en minst zichtbare kostenposten in IT. Licenties worden gekocht voor mensen die vertrokken zijn, abonnementen worden ongemerkt verlengd en producten worden geïnstalleerd op manieren die de licentie niet toestaat. Elk is een kostenpost of een risico. Een leveranciersaudit kan van een kleine afwijking een grote rekening maken, en een ongepatchte component in een vergeten applicatie kan een deur openen voor een aanvaller.

Agile teams veranderen het beeld. Ontwikkelaars halen bibliotheken binnen met één commando en moderne applicaties worden grotendeels uit onderdelen van derden en open source samengesteld. Het Wikipedia-artikel over de softwaretoeleveringsketen meldt dat open-sourcesoftware in 96 procent van de commerciële codebases werd gevonden die een leverancier in 2024 analyseerde, met verwijzing naar Synopsys. Teams kopen ook cloudservices en abonnementen met kaarten, buiten het inkoopproces om. Softwareassetmanagement (SAM) is daarom gegroeid van het tellen van installaties van een paar grote producten tot een praktijk die dekt wat wordt gebruikt, wat verschuldigd is en wat wordt vertrouwd.

Het [Wikipedia-artikel over softwareassetmanagement](https://en.wikipedia.org/wiki/Software_asset_management) beschrijft SAM als een bedrijfspraktijk om de aankoop, uitrol, het onderhoud, het gebruik en de afvoer van software te beheren en te optimaliseren, met als doelen IT-kosten verlagen, zakelijk en juridisch risico beperken en de productiviteit van eindgebruikers verbeteren. Het dekt geen cloudservices, SBOM's of volwassenheidsmodellen, dus dit onderwerp voegt de artikelen over de softwaretoeleveringsketen en open-sourcesoftware toe. Dit onderwerp beschrijft praktijk en geeft geen juridisch advies; licentievoorwaarden verschillen en de juiste bron is de licentie- of contracttekst.

## Kernconcepten

### Wat SAM is

Volgens Wikipedia is SAM onderdeel van IT-assetmanagement (zie Onderwerp 4.1 — IT-assetmanagement). Het haalt ITIL aan als beschrijvend dat het effectief beheer, beheersing en bescherming van softwareassets omvat. De strategische doelen, zoals het artikel ze noemt, omvatten het verlagen van software- en supportkosten via volumecontracten en het toewijzen van ongebruikte licenties, het afdwingen van beveiligingsbeleid en standaarden voor desktops, servers en mobiele apparaten, het verbeteren van productiviteit door technologie sneller en betrouwbaarder uit te rollen, het beperken van beheeroverhead door automatisering en het vaststellen van beleid voor aanschaf, uitrol, gebruik en uitfasering.

### Licentiecompliance

Het artikel beschrijft SAM als het afwegen van het aantal aangeschafte licenties tegen het aantal werkelijk gebruikte, en ervoor zorgen dat gebruik overeenkomt met de licentievoorwaarden van elke leverancier. Het merkt op dat installaties de gangbaarste maat voor verbruik zijn, maar sommige software wordt gelicentieerd per gebruiker, kapitaal, processor of CPU-kern. Organisaties kunnen hun aansprakelijkheid bij audits door leveranciers of derden zoals de Business Software Alliance verkleinen, zegt het artikel, via doorlopende software-inventarissen, inkoopbeleid en tools. Het artikel beschrijft geen auditprocedures. Het punt van de oefening is je **recht** (waarvoor je toestemming hebt), je **verbruik** (wat je gebruikt) en de kloof ertussen te kennen.

### De drie vragen

Een SAM-praktijk beantwoordt voor elk belangrijk product drie vragen:

| Vraag | Wat het nodig heeft |
|---|---|
| Waar hebben we recht op? | Contracten, licentievoorwaarden, facturen en aankoopbewijs |
| Wat gebruiken we? | Inventaris- en gebruiksgegevens uit discovery en metering |
| Wat is de kloof en wat doen we eraan? | Vergelijking, beslissingen over kopen, toewijzen of verwijderen |

Een kloof kan in beide richtingen lopen: ondergelicentieerd, wat een compliancerisico is, en overgelicentieerd, wat verspilling is.

### Standaarden: ISO/IEC 19770

Het artikel noemt de delen van de ISO/IEC 19770-familie: 19770-1:2017 (eisen aan een IT-assetmanagementsysteem, een procesraamwerk dat in gefaseerde niveaus kan worden geïmplementeerd), 19770-2:2015 (softwareidentificatietags), 19770-3:2016 (een schema voor rechtenbeheer voor licentie-, contract- en factuurgegevens), 19770-4:2017 (gegevens over meting van resourcegebruik) en 19770-5:2015 (overzicht en vocabulaire). Het artikel zegt dat de standaard voor softwareidentificatie wordt gesteund door IBM, Microsoft en Adobe. Controleer de standaarden op actuele edities en exacte inhoud.

### SAM-technologieën en hun grenzen

Het artikel noemt tools voor software-inventaris, licentiebeheer, metering, applicatiebeheersing, uitrol, patchmanagement, verzoekmanagement en productcatalogisering. Het geeft ook een voorbeeld van schaal: meteringregels in System Center Configuration Manager van Microsoft werken goed voor kleine omgevingen maar genereren onbeheersbare datavolumes op ondernemingsschaal. Tools helpen, maar ze hebben een duidelijke vraag en een eigenaar nodig.

### Open-sourcesoftware

Wikipedia definieert open-sourcesoftware als software waarvan de broncode openbaar beschikbaar is en die gebruikers mogen gebruiken, bestuderen, aanpassen en verspreiden, doorgaans onder een open licentie. Het Open Source Initiative onderhoudt de gangbaarste definitie, met tien criteria en een lijst van goedgekeurde licenties, hoewel het artikel zegt dat het OSI geen wettelijk gezag over de term heeft. Het beschrijft twee licentiefamilies:

| Familie | Wat het van ontvangers vraagt | Genoemde voorbeelden |
|---|---|---|
| **Permissief** | Bewaar auteursrechtvermeldingen en voeg de licentie bij; geen plicht om je eigen code onder dezelfde licentie vrij te geven | BSD, MIT, Apache |
| **Copyleft** | Gebruik dezelfde licentie voor minstens enkele delen van wat je verspreidt (sterke copyleft geldt voor alle afgeleide werken; zwakke copyleft alleen onder bepaalde voorwaarden) | GNU GPL (sterk); MPL, EPL (zwak) |

Beide families, zegt het artikel, vereisen het bewaren van auteursrechtvermeldingen en het meeleveren van een kopie van de licentie met de code. Het citeert *Jacobson v Katzer* (2008), waarin een rechtbank de voorwaarden van een open licentie, inclusief naamsvermelding, onder het auteursrecht afdwong. Het merkt op dat organisaties open source program offices opzetten om hun strategieën te beheren. Open-sourcevoorwaarden zijn echte verplichtingen. Welke gelden, hangt af van hoe je de software gebruikt en verspreidt; vraag je juridische functie en lees de licentie.

### De softwaretoeleveringsketen en SBOM's

Het artikel over de softwaretoeleveringsketen beschrijft haar als de componenten, bibliotheken, tools en processen die worden gebruikt om een softwareartefact te ontwikkelen, bouwen en publiceren. Het noemt risico's: aanvallers kunnen een upstreamcomponent compromitteren om alle downstreamgebruikers te bereiken, en noemt voorbeelden zoals Log4Shell in 2021, de SolarWinds-aanval in 2020 en de XZ Utils-backdoor in 2024. Het beschrijft een **software bill of materials (SBOM)** als een inventaris van de componenten in een softwareartefact, inclusief open-source en bedrijfseigen onderdelen, het softwarecounterpart van een productiestuklijst. SBOM's ondersteunen kwetsbaarheids- en licentieanalyse.

Het artikel meldt grenzen: spreadsheets kunnen niet automatisch met kwetsbaarheidsgegevens worden verrijkt en moeten in een doorzoekbare opslagplaats worden bewaard; beleidsgedreven SBOM's zijn zeldzaam, waarbij een studie ongeveer 0,56 procent van populaire GitHub-repositories er een vond; minder dan de helft van de geteste projecten neemt SBOM's op in releases en veel zijn onvolledig; en een studie van zes Java-SBOM-tools vond frequente onjuistheden. Het merkt op dat zichtbaarheid alleen integriteit niet kan garanderen. Het meldt ook dat het Amerikaanse Executive Order 14028, getekend op 12 mei 2021, NIST en NTIA opdroeg richtlijnen uit te geven over de beveiliging van de softwaretoeleveringsketen inclusief SBOM's, en dat de minimale elementen van NTIA in gegevensvelden, ondersteuning voor automatisering en praktijken en processen vallen. Het artikel noemt geen SBOM-formaten en beschrijft de Cyber Resilience Act van de Europese Unie niet. Regels over SBOM's verschillen per land en sector; vraag je compliancefunctie wat voor jou geldt.

### SaaS en cloudabonnementen

Het SAM-artikel bespreekt software as a service (SaaS) of cloud niet. Praktijkervaring toont dat abonnementssoftware nieuwe problemen schept: aankopen buiten inkoop om, seats die niemand verwijdert, overlappende tools en gegevens die zonder review bij leveranciers worden geplaatst (zie Onderwerp 3.14 — Leveranciersmanagement en Onderwerp 4.5 — IT-financieel management en FinOps). SAM voor abonnementen richt zich op ontdekken wat wordt gekocht, wie het bezit, wie het gebruikt en wanneer het wordt verlengd.

### Grenzen van de bronnen

Het SAM-artikel dekt geen auditprocedures, catalogi van licentietypen of volwassenheidsmodellen, en zijn belangrijkste referenties omvatten gedateerde items uit 2006 tot 2009. Het artikel over de softwaretoeleveringsketen meldt cijfers uit enquêtes en studies van ongelijke kwaliteit. Gebruik de bronnen om vragen te kaderen en gebruik licentieteksten en contracten voor antwoorden.

## Goede praktijken

1. **Begin met de producten die het meest tellen.** Kies de paar grootste of riskantste producten naar kosten of juridische blootstelling en krijg eerst recht, inventaris en gebruik daarvoor op orde.
2. **Bewaar bewijs van recht.** Bewaar contracten, facturen en licentievoorwaarden waar ze te vinden zijn en koppel ze aan de productrecords. Je kunt bij een audit geen standpunt verdedigen zonder bewijs.
3. **Ken de licentiemetriek.** Leg voor elk product vast hoe het wordt geteld: per gebruiker, apparaat, processor, kern of anders. Installaties tellen wanneer de licentie per kern is, geeft het verkeerde antwoord.
4. **Vergelijk recht met gebruik regelmatig.** Vergelijk voor grote producten minstens per kwartaal wat je mag gebruiken met wat je gebruikt. Handel op de kloof door te kopen, toe te wijzen of te verwijderen.
5. **Win ongebruikte licenties terug.** Gebruik gebruiksgegevens om licenties te vinden die gedurende een bepaalde periode niemand heeft gebruikt en wijs ze opnieuw toe of zeg ze op na afstemming met de eigenaar.
6. **Beheers hoe software binnenkomt.** Maak het makkelijk goedgekeurde software aan te vragen en moeilijk buiten het proces te kopen. Neem abonnementen en kaartaankopen op in uitgavenreviews.
7. **Behandel open-sourcecomponenten als assets.** Houd een inventaris bij van de open-sourcecomponenten in je producten, met licentie en versie. Toets licenties aan hoe je de software gebruikt en verspreidt, met juridisch advies.
8. **Genereer SBOM's in de build.** Produceer automatisch een software bill of materials voor elke build, bewaar die op een doorzoekbare plek en gebruik haar om op kwetsbaarheden te reageren en klantvragen te beantwoorden. Controleer de SBOM tegen de build, want tools kunnen onjuist zijn.
9. **Volg abonnementen.** Leg voor elk eigenaar, doel, kosten, aantal seats, gebruikers, verlengingsdatum en bewaarde gegevens vast. Review vóór verlenging.
10. **Koppel software aan services.** Leg vast welke services welke software en versies gebruiken, zodat een kwetsbaarheid of licentiewijziging kan worden herleid tot de getroffen services (zie Onderwerp 4.4 — Configuratiemanagement).
11. **Bereid audits rustig voor.** Houd vastleggingen actueel, benoem een contactpersoon en ken je rechten en plichten uit het contract. Wacht niet op de kennisgeving om te beginnen met ordenen.
12. **Faseer software correct uit.** Verwijder haar van systemen, beëindig licenties en abonnementen en werk vastleggingen bij. Ongebruikte software is een kostenpost en een aanvalsoppervlak.

## Vragen om met je team te bespreken

**Weten we voor onze drie duurste softwareproducten wat we mogen gebruiken en wat we gebruiken?**

Vraag voor elk om het aantal gehouden licenties en het aantal in gebruik. Vergelijk. Gangbare uitkomsten verrassen: meer seats dan gebruikers, of gebruikers buiten de seats. De facilitator kan vragen waar het bewijs van recht wordt bewaard. Plan de grootste kloof te reconciliëren.

**Welke software hebben mensen gekocht of geïnstalleerd zonder het iemand te vertellen?**

Wees eerlijk en niet veroordelend. Vraag naar tools gekocht met kaarten, gratis tools op het werk en browserextensies. Typische redenen zijn snelheid en een onduidelijk proces. Bespreek wat de goedgekeurde route snel genoeg zou maken. Spreek een registratiestap af.

**Van welke open-sourcecomponenten zijn onze producten afhankelijk en wat zijn hun licenties?**

Vraag of iemand een lijst kan produceren. Zo niet, bespreek dan hoe die uit de build te genereren. Vraag dan hoe licenties worden gecontroleerd. Onthoud dat verplichtingen tussen permissieve en copyleftlicenties verschillen. Plan met juridische zaken de hoogrisicogevallen te reviewen.

**Als er morgen een ernstige kwetsbaarheid in een gangbare bibliotheek verscheen, hoe lang zou het duren om te weten of we haar gebruiken?**

Loop de stappen door: wie wordt geïnformeerd, hoe je zoekt, hoe je de versie in elke service kent. Het antwoord toont hoe ver SBOM's en inventarissen zouden helpen. Spreek een eerste verbetering af, zoals het genereren van een stuklijst in de pipeline.

**Welke abonnementen worden volgend kwartaal verlengd en wie beslist of we ze houden?**

Maak een lijst van de verlengingen. Vraag bij elk wie het bezit, hoeveel seats actief zijn en wat er gebeurt als het wordt opgezegd. Vaak bezit niemand de beslissing. Wijs eigenaren toe en voeg vóór elke verlenging een reviewdatum toe.

**Hoe zouden we reageren op een kennisgeving van een leveranciersaudit?**

Vraag wie het zou afhandelen en welk bewijs ze hebben. Bespreek of vastleggingen compleet zijn. Het doel is een kalm plan, geen angst voor audits. Spreek een contactpersoon en een checklist af.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale postdienst draait ongeveer 60 interne applicaties en een klantgericht pakketvolgplatform dat door een team van vijftien is gebouwd. Een leverancier meldt de IT-afdeling een licentieaudit op een databaseproduct. De ITAM-functionaris ontdekt dat licentievastleggingen over drie spreadsheets zijn verspreid en dat niemand kan zeggen op hoeveel processorkernen de database nu draait, omdat virtuele machines vele malen tussen hosts zijn verplaatst.

De ITAM-functionaris, een databasebeheerder en de leider inkoop stellen het bewijs samen. Ze verzamelen het contract, de licentiemetriek (per processorkern), de facturen en discoverygegevens over waar de database draait. Ze ontdekken dat het product in één omgeving op meer kernen draait dan zijn aangeschaft en in een andere op minder, waar licenties ongebruikt zijn. Na overleg met de leverancier wijzen ze de ongebruikte licenties opnieuw toe, kopen ze een klein aantal extra en verplaatsen ze een niet-essentiële omgeving naar een gratis alternatief. De kosten liggen ver onder wat een auditbevinding zou zijn geweest, maar zijn niet triviaal.

Tegelijkertijd wordt het platformteam door een grote klant gevraagd om een lijst van de softwarecomponenten in het pakketvolgplatform. Het team beseft dat het er geen kan produceren. Het voegt een buildstap toe die voor elke release een stuklijst genereert en in een opslagplaats bewaart. De eerste uitvoer bevat een bibliotheek met een licentie die het juridische team niet had gereviewd, en ze besluiten haar te vervangen. Er blijven problemen. De SBOM-tool van het team mist componenten in één taal en een aparte onderzoeksgroep blijft abonnementen met een afdelingskaart kopen. De ITAM-functionaris vraagt de leverancier van de tool naar de kloof en overtuigt de afdeling haar abonnementen te registreren.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams brengen het grootste deel van de software de organisatie binnen. Leg de componenten en abonnementen die je toevoegt vast, genereer stuklijsten in je builds en vraag het voordat je een bibliotheek met een onbekende licentie gebruikt. Deel bevindingen met juridische zaken en beveiliging.

### Service- en beheerteams

Beheerteams draaien de inventaris, het patchen en de metering. Houd de software-inventaris aan services gekoppeld, patch snel wanneer kwetsbaarheden opduiken en win ongebruikte licenties terug. Help inkoop te begrijpen hoe producten werkelijk worden gebruikt.

### Leiderschap en governance

Leiders bezitten het risico van niet-naleving en de uitgaven. Vraag om recht en verbruik voor de grootste producten, een overzicht van abonnementen en een plan voor open-source- en toeleveringsketenrisico. Steun een inkooproute die snel genoeg is zodat mensen haar gebruiken.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer software beschikbaar en veilig is. Vraag wat je nodig hebt via de juiste route, lever in wat je niet meer gebruikt en vertel het team over tools die je nuttig vond. Klanten van je producten kunnen om stuklijsten vragen; verwacht dat te worden gevraagd.

## Veelvoorkomende faalpatronen

- **Alleen installaties tellen.** De licentiemetriek is per kern of gebruiker. Leg in plaats daarvan de metriek vast en tel het juiste.
- **Verloren bewijs van recht.** Contracten en facturen zijn niet te vinden. Bewaar ze in plaats daarvan bij het productrecord.
- **Shelfware.** Licenties worden gekocht en niet gebruikt. Vergelijk in plaats daarvan recht met gebruik en win terug.
- **Schaduwaankopen.** Abonnementen met kaarten gekocht ontsnappen aan het proces. Maak in plaats daarvan de goedgekeurde route snel en review uitgaven op uitzonderingen.
- **Onbekende open-sourcecomponenten.** Niemand kan ze opsommen. Genereer in plaats daarvan automatisch stuklijsten in builds.
- **Licentievoorwaarden van open source negeren.** Copyleftverplichtingen worden gemist. Toets in plaats daarvan licenties aan gebruik en verspreiding met juridisch advies.
- **Blind op tools vertrouwen.** Tools missen componenten of noemen verkeerde. Valideer in plaats daarvan uitvoer op een steekproef en vraag leveranciers naar gaten.
- **Auditpaniek.** Vastleggingen worden na de kennisgeving samengesteld. Houd in plaats daarvan vastleggingen actueel en benoem een auditcontact.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Recht en gebruik | Vastleggingen zijn verspreid; gebruik onbekend | Grote producten hebben rechtsvastleggingen | Recht en gebruik worden voor de belangrijkste producten vastgelegd en regelmatig vergeleken | Gaten en ongebruikte licenties worden gemeten en erop wordt gehandeld | Recht en gebruik worden met financiën, inkoop en leveranciers gedeeld |
| Aanschaf en abonnementen | Software wordt door iedereen gekocht | Er bestaat een goedgekeurde route voor sommige aankopen | Aankopen en abonnementen volgen één route met eigenaren en verlengingsdata | Uitgaven en seatgebruik worden vóór verlenging gereviewd | Inkoop, gebruik en contracten worden over de organisatie gecoördineerd |
| Open source en toeleveringsketen | Componenten zijn onbekend | Sommige teams noemen bibliotheken | Stuklijsten worden in builds gegenereerd en licenties gereviewd | Kwetsbaarheids- en licentiebevindingen worden tot sluiting gevolgd | Stuklijsten worden waar vereist met klanten en leveranciers gedeeld |
| Audit en compliance | Auditkennisgevingen veroorzaken paniek | Er is een contactpersoon | Vastleggingen worden actueel gehouden en er is een auditroutine | Compliancerisico wordt gemeten en gereviewd | Compliancepraktijk is over leveranciers en rechtsgebieden afgestemd |

## Checklist

- [ ] Voor onze grootste softwareproducten kennen we het recht, de licentiemetriek en het gebruik.
- [ ] Contracten, facturen en licentievoorwaarden zijn bij productrecords opgeslagen.
- [ ] Recht en gebruik worden voor grote producten minstens per kwartaal vergeleken.
- [ ] Ongebruikte licenties worden teruggewonnen na afstemming met eigenaren.
- [ ] Aankopen en abonnementen volgen één route, met vastgelegde eigenaren en verlengingsdata.
- [ ] We genereren in de build een stuklijst voor producten die we leveren of draaien.
- [ ] Open-sourcelicenties in onze componenten worden aan ons gebruik getoetst, met juridisch advies.
- [ ] We kunnen vinden welke services een bepaalde component of een bepaald product gebruiken.
- [ ] Een benoemde persoon handelt kennisgevingen van leveranciersaudits af.
- [ ] Uitgefaseerde software wordt van systemen en vastleggingen verwijderd.

## AI-prompts

**Doel: recht en verbruik voor één product vergelijken.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een lijst open-sourcecomponenten reviewen op licentievragen.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Doel: een kwetsbaarheidsopzoeking voorbereiden met een stuklijst.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een abonnementenreview voor het komende kwartaal opstellen.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## AI-vaardigheden

- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om contracten, verlengingen en relaties met softwareleveranciers te beheren.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): gebruik dit om je voor te bereiden op een leveranciers- of complianceaudit.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gebruik dit om software- en abonnementskosten te voorspellen.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om licentie-, kwetsbaarheids- en toeleveringsketenrisico's vast te leggen.
- [security-testing](../../../../skills/security-testing/SKILL.md): gebruik dit om afhankelijkheden en builds op bekende zwaktes te controleren.

## Belangrijkste bronnen

- **Software asset management** (Wikipedia): de definitie, doelen, technologieën en de delen van ISO/IEC 19770.
- **Software supply chain** (Wikipedia): risico's, de software bill of materials, adoptiecijfers en regelgevingsachtergrond.
- **Open-source software** (Wikipedia): de definitie, licentiefamilies en aantekeningen over risico's en verplichtingen.
- **ISO/IEC 19770** (International Organization for Standardization): de standaardenfamilie zelf; lees de actuele delen voor de exacte eisen.

## Referenties

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
