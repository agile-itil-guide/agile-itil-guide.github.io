# IT-financieel management en FinOps

**IT-financieel management toont wat services kosten en welke waarde ze opleveren, en FinOps is de culturele praktijk om engineers, financiën en businessteams samen te brengen zodat technologie-uitgaven, vooral in de cloud, worden begrepen en beheerd terwijl ze gebeuren.**

## Waarom dit ertoe doet

Geld bepaalt welke services bestaan, hoe goed ze worden bemand en hoe lang ze meegaan. Jarenlang betekende IT-financiën een jaarbudget, een spreadsheet voor kostentoewijzing en de incidentele ruzie over wie het netwerk betaalt. Cloud computing veranderde dat. Resources kunnen in seconden door iedereen met de juiste rechten worden aangemaakt en facturering volgt gebruik. Eén verkeerd geconfigureerde job kan duizenden aan een maandrekening toevoegen voordat iemand het merkt, en een doordachte wijziging kan evenveel besparen.

Voor agile teams is de verschuiving tweesnijdend. Ze krijgen de vrijheid om te experimenteren en op te schalen zonder op hardware te wachten. Ze nemen ook een verantwoordelijkheid op zich die vroeger bij financiën en inkoop lag: weten wat hun keuzes kosten. Ondertussen krijgen financiële medewerkers die in jaarcycli plannen te maken met gebruik dat dagelijks varieert. Geen van beide kanten kan de kosten alleen goed beheren.

De Engelstalige Wikipedia heeft op het gecontroleerde adres geen artikel met de titel "FinOps". De eigen site van de FinOps Foundation definieert FinOps als een operationeel raamwerk en culturele praktijk die de zakelijke waarde van technologie maximaliseert en financiële verantwoording schept via samenwerking tussen engineering-, financiële en businessteams. Het Wikipedia-artikel over cloud computing beschrijft prijsmodellen en kostenbeheersing en draagt een onderhoudsbericht dat delen ervan niet geverifieerd kunnen zijn. Het financiële vocabulaire van ITIL hier, zoals begroting, boekhouding en doorberekening, komt uit breed gepubliceerde beschrijvingen die deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk.

## Kernconcepten

### IT-financieel management

IT-financieel management (in ITIL "financial management for IT services") wordt breed beschreven als de praktijk om het geld van een IT-serviceverlener te beheren: budgetten plannen, kosten boeken en, waar relevant, voor services in rekening brengen. Het doel is beslissers de informatie te geven om kosten tegen waarde af te wegen. De voor deze gids gelezen bronnen definiëren de praktijk niet, dus deze beschrijvingen zijn gangbaar gebruik, als zodanig aangeboden.

| Activiteit | Vraag die ze beantwoordt |
|---|---|
| **Begroten en plannen** | Hoeveel gaan we in de komende periode uitgeven, en waaraan? |
| **Kostenadministratie** | Wat kost het om elke service te leveren? |
| **Doorberekenen of toewijzen** | Wie betaalt en hoe? |
| **Waarde- en investeringsanalyse** | Is een service of wijziging haar kosten waard? |

### Showback en chargeback

Twee regelingen om kosten te verdelen worden breed gebruikt. Bij **showback** wordt consumenten getoond wat ze gebruiken en wat het kost, maar worden ze niet gefactureerd. Bij **chargeback** worden ze gefactureerd of worden de kosten naar hun budget verschoven. Showback bouwt bewustzijn op met weinig wrijving; chargeback schept verantwoording en kan geschillen over toewijzingsregels veroorzaken. Kies er een door te vragen welk gedrag je wilt en of de gegevens goed genoeg zijn om te verdedigen.

### Cloud en het pay-as-you-go-model

Wikipedia zegt dat cloud computing vooraf te investeren kapitaal kan verminderen door te verschuiven naar een model van operationele uitgaven waarin kosten met gebruik meegroeien, en dat infrastructure as a service op nutsbasis wordt gefactureerd. Het beschrijft software as a service als doorgaans een maandelijks of jaarlijks vast bedrag per gebruiker, of betalen naar gebruik. De lijst met zorgen over kostenbeheersing omvat ongebruikte resources, inefficiënte configuraties en verborgen kosten. Het merkt op dat aanbieders kostentools bieden en noemt FinOps als raamwerk voor het standaardiseren van financiële operaties in de cloud.

Het artikel meldt enquêtebevindingen: een enquête van Gartner onder 200 IT-leiders vond dat 69 procent in 2023 overschrijdingen van het cloudbudget ervoer, waarbij de anderen prognoses, uitgavenmonitoring en optimalisatie als reden noemden; en het rapport van Flexera uit 2024 noemde het beheren van cloud-uitgaven als grootste uitdaging, met de melding dat uitgaven voor publieke cloud de budgetten gemiddeld met 15 procent overschreden. Het artikel draagt een bericht over niet-geverifieerde tekst, dus controleer deze cijfers aan de oorspronkelijke rapporten voordat je ze citeert.

### Wat FinOps is

De site van de FinOps Foundation definieert FinOps als "een operationeel raamwerk en culturele praktijk" die "de zakelijke waarde van technologie maximaliseert" en "financiële verantwoording schept via samenwerking tussen engineering-, financiële en businessteams." Ze zegt dat de naam "Finance" en "DevOps" combineert en dat de focus verder reikt dan de cloud tot software as a service, licenties, datacenters en meer. Kernpunten van de site:

- **Het is een teamsport.** De site noemt deze groepen: directie, engineers, FinOps-praktijkmensen, beheer en financiën en inkoop, en zegt dat FinOps verandert hoe uiteenlopende teams samenwerken. Een enkel team kan het niet alleen.
- **Het gebruikt een volwassenheidsaanpak** beschreven als "Crawl, Walk, Run."
- **De Foundation** wordt beschreven als project onder LF Projects, een serie van de Linux Foundation, en ondersteunt een open-source technische specificatie genaamd FOCUS (de FinOps Open Cost and Usage Specification). Ze biedt ook training en certificering.

De voor deze gids gelezen pagina noemt de principes of de fasen niet, dus dit onderwerp vermeldt ze niet. Zie de pagina's van de Foundation over principes en fasen rechtstreeks.

### Kostengegevens en tagging

Hoe de praktijk ook heet, ze hangt ervan af kosten te kunnen toeschrijven. Dit vraagt twee dingen: tags of labels op resources die zeggen wie ze bezit en welke service ze ondersteunen (zie Onderwerp 4.1 — IT-assetmanagement) en factureringsgegevens die op die tags kunnen worden gegroepeerd. FOCUS bestaat om het formaat van kosten- en gebruiksgegevens over aanbieders te standaardiseren. Ongetagde kosten zijn kosten zonder eigenaar.

### Eenheidskosten en waarde

Een totaalrekening zegt weinig. Deel kosten door iets wat voor de business iets betekent: per transactie, per gebruiker, per service, per omgeving. Stijgende totale kosten met dalende eenheidskosten kunnen gezonde groei zijn. Dalende totale kosten met stijgende eenheidskosten kunnen op een probleem wijzen. Eenheidskosten koppelen financiën aan serviceniveaus en waarde (zie Onderwerp 3.7 — Servicelevelmanagement).

### Kosten, betrouwbaarheid en snelheid

Geld koopt betrouwbaarheid en snelheid, en elk extra niveau heeft een prijs (zie Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties). Een team dat onzorgvuldig kosten snijdt, kan veerkracht verminderen. Een team dat nooit naar kosten kijkt, kan overbouwen. FinOps-gesprekken zijn een plek om die afweging expliciet te maken, waarbij engineers opties beschrijven en financiën en de business ze wegen.

### Governance en risico

Financiële beheersmaatregelen omvatten budgetten en alarmen, goedkeuring voor grote verplichtingen, limieten op wie dure resources kan aanmaken en regelmatige reviews. Verplichtingen aan aanbieders, zoals langetermijninkoopovereenkomsten, kunnen kosten verlagen en risico toevoegen als het gebruik daalt. Dit zijn beslissingen voor financiën, inkoop en engineering samen (zie Onderwerp 5.7 — Governance, risico en compliance en Onderwerp 3.14 — Leveranciersmanagement).

### Grenzen van de bronnen

De pagina van de FinOps Foundation is een samenvatting door de organisatie die de praktijk promoot en geeft geen oprichtingsdatum, ledencijfers of bewijs van resultaten. Het artikel over cloud computing is gemarkeerd voor niet-geverifieerde tekst en geeft geen prijsmechanica, egress-kosten of details van een FinOps-praktijk. Dit onderwerp moet als inleiding worden behandeld; lees de materialen van de Foundation en de documentatie van je aanbieder voor specifieke zaken.

## Goede praktijken

1. **Maak kosten zichtbaar voor de mensen die ze veroorzaken.** Toon elk team minstens maandelijks de kosten van de services die ze bezitten, in een vorm die ze begrijpen. Mensen beheren wat ze kunnen zien.
2. **Tag alles wat geld kost.** Eis tags voor eigenaar, service en omgeving op cloudresources en rapporteer over ongetagde uitgaven. Repareer dat voordat je iets anders afstemt.
3. **Begin met showback.** Toon teams hun kosten voordat je ze in rekening brengt. Ga pas naar chargeback wanneer de gegevens worden vertrouwd en het voordeel duidelijk is.
4. **Gebruik eenheidskosten.** Druk kosten uit per transactie, gebruiker of service, naast het totaal. Review de trend naast vraag en kwaliteit.
5. **Stel budgetten en alarmen in.** Spreek budgetten af per service of team en stel alarmen ruim vóór de limiet in. Review alarmen met de eigenaren, niet alleen met financiën.
6. **Breng financiën en engineering in één gesprek samen.** Houd een regelmatige review waarin engineers uitleggen wat kosten drijft en financiën beperkingen toelicht. Neem een zakelijke eigenaar op die waarde kan beoordelen.
7. **Zoek eerst naar verspilling.** Vind ongebruikte of te grote resources, stilstaande omgevingen en vergeten abonnementen. Deze besparingen dragen weinig risico (zie Onderwerp 4.2 — Softwareassetmanagement voor abonnementen).
8. **Weeg besparingen tegen betrouwbaarheid.** Vraag vóór je snijdt wat de wijziging met beschikbaarheid, prestaties en herstel doet. Leg de afweging vast.
9. **Plan verplichtingen zorgvuldig.** Inkoopverplichtingen aan aanbieders kunnen kosten verlagen maar leggen uitgaven vast. Baseer ze op stabiel gebruik en review ze regelmatig.
10. **Geef teams bevoegdheid en grenzen.** Laat teams kostenbeslissingen nemen binnen afgesproken grenzen en eis goedkeuring voor beslissingen daarboven. Autonomie met zichtbaarheid werkt beter dan alleen centrale beheersing.
11. **Neem kosten mee in ontwerp en in de definition of done.** Vraag bij ontwerpreviews wat een functie zal kosten om te draaien en controleer na release.
12. **Leer en deel.** Publiceer korte notities over wat geld bespaarde en wat averechts werkte. Gebruik een volwassenheidsaanpak als "crawl, walk, run" om de praktijk te laten groeien.

## Vragen om met je team te bespreken

**Weten we wat onze belangrijkste service kost om te draaien en wie dat getal bezit?**

Vraag naar de maandelijkse kosten van de grootste service en hoe ze worden berekend. Vaak kan niemand antwoorden, of komt het antwoord uit verschillende bronnen. De facilitator kan vragen wat nodig zou zijn om het getal betrouwbaar te produceren, zoals tags en een rapport. Kies één service om mee te beginnen.

**Welk deel van onze cloud-uitgaven kunnen we aan een benoemde eigenaar toeschrijven?**

Vraag naar het ongetagde deel. Een groot deel betekent dat kosten niet kunnen worden beheerd. Bespreek waarom resources ongetagd zijn: geen regel, geen tool of geen prikkel. Spreek een tagregel en een datum voor een eerste rapport af.

**Wanneer vonden we voor het laatst een kostenverrassing en hoe kwamen we erachter?**

Verzamel voorbeelden: een vergeten omgeving, een op hol geslagen job, een abonnement dat werd verlengd. Vraag hoe lang het liep vóór ontdekking. Bespreek alarmen en reviews die het hadden gevangen. Kies er één alarm om toe te voegen.

**Wat zouden we schrappen als het budget met tien procent daalde en wat zouden we verliezen?**

Vraag het team opties voor te stellen en de gevolgen te noemen, ook voor betrouwbaarheid. Deze vraag maakt afwegingen expliciet. Behandel de antwoorden niet als plan; gebruik ze om een gesprek met financiën en de business over waarde te beginnen.

**Welke beslissingen over uitgaven nemen engineers vandaag en welke zouden ze moeten nemen?**

Maak een lijst van de kostenbeslissingen die teams nemen: groottes, omgevingen, tools, aankopen. Vraag welke informatie ze gebruiken. Bespreek welke grenzen redelijk zouden zijn. Spreek één beslissing af om met limieten over te dragen.

**Hoe praten financiën en engineering met elkaar en wanneer?**

Vraag beide groepen. Typische antwoorden: bij de begroting, of wanneer er iets misgaat. Bespreek een regelmatige gezamenlijke review. De pagina van de FinOps Foundation noemt samenwerking tussen engineers, financiën en businessteams als de kern van de praktijk. Spreek af wie de eerste organiseert.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale bibliotheekdienst verhuisde zijn digitale catalogus, zoekfunctie en publieke archieven in drie jaar naar een cloudaanbieder. De IT-directeur wordt door de financiële afdeling gevraagd waarom de maandelijkse cloudrekening sinds de verhuizing is verdrievoudigd en waarom het moeilijk uit te leggen is. Een team van tien beheert het platform en elk van vijf projectteams heeft een eigen cloudaccount.

De IT-directeur en een financieel analist beginnen met te vragen om kostengegevens gegroepeerd per service. De meeste resources zijn ongetagd, dus slechts een derde van de kosten kan worden toegeschreven. Ze spreken met de vijf teams een tagregel af en laten wekelijks een rapport draaien dat ongetagde uitgaven per account opsomt. In zes weken daalt het ongetagde deel tot onder een tiende. De analist zet dan een maandelijks showbackrapport voor elk team op, met kosten per service en kosten per duizend zoekopdrachten voor de zoekservice. In de eerste review ontdekken engineers een ontwikkelomgeving die een jaar op productiegrootte heeft gedraaid, en een dataverwerkingsjob die een archief vaker scant dan nodig. Beide worden gecorrigeerd. In een maandelijkse bijeenkomst met het hoofd collecties kunnen de engineers uitleggen wat kosten drijft, zoals het grote volume gescande afbeeldingen, en kan het hoofd beslissen welke collecties als eerste worden gedigitaliseerd.

Na twee kwartalen dalen de eenheidskosten en is de rekening voorspelbaar. Niet alles verloopt soepel. Een kostenbesparende wijziging aan de zoekindex vermindert de snelheid op piekmomenten en gebruikers klagen tot het team de capaciteit herstelt. De financiële afdeling wil ook een verplichting van een jaar bij de aanbieder aangaan, terwijl engineers er niet zeker van zijn dat het gebruik stabiel blijft omdat een migratie is gepland. Ze spreken af alleen te verplichten voor het stabiele deel van het gebruik en de verplichting te reviewen wanneer het migratieplan duidelijk is.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams nemen de meeste kostenbeslissingen via ontwerp en configuratie. Tag wat je aanmaakt, houd je kosten in de gaten en vraag wat een functie zal kosten om te draaien. Leg kostendrijvers in gewone taal aan financiën en de business uit.

### Service- en beheerteams

Beheerteams zien benutting en verspilling. Deel gegevens over stilstaande en te grote resources, help zinvolle alarmen instellen en zorg dat kostenbesparingen de veerkracht niet ondermijnen. Houd de koppeling tussen kosten, capaciteit en serviceniveaus zichtbaar.

### Leiderschap en governance

Leiders en financiën stellen budgetten, regels en verantwoording vast. Vraag om eenheidskosten en trends, steun een showback- of chargebackmodel dat mensen vertrouwen en neem beslissingen over verplichtingen met engineers. Vermijd bezuinigingen die de betrouwbaarheid schaden zonder de afweging te bespreken.

### Klanten en gebruikers

Klanten en gebruikers betalen direct of indirect voor services. Vraag aanbieders wat de prijs van de services die je gebruikt drijft en vertel hen welke waarde het meest telt. Verwacht, als je wordt doorbelast, duidelijke uitleg en een manier om de cijfers ter discussie te stellen.

## Veelvoorkomende faalpatronen

- **Ongetagde kosten.** Niemand bezit de rekening. Eis in plaats daarvan tags en rapporteer over het gat.
- **Financiën en engineering in aparte kamers.** Elke kant handelt op gedeeltelijke informatie. Houd in plaats daarvan een regelmatige gezamenlijke review met een zakelijke eigenaar.
- **Chargeback voordat de gegevens worden vertrouwd.** Geschillen kosten tijd. Begin in plaats daarvan met showback en verbeter de gegevens.
- **Totalen zonder eenheidskosten.** Groei lijkt verspilling of omgekeerd. Volg in plaats daarvan kosten per transactie, gebruiker of service.
- **Kosten snijden ten koste van veerkracht.** Besparingen veroorzaken storingen. Vermeld in plaats daarvan de afweging en betrek de service-eigenaar.
- **Oververplichten.** Langetermijnaankopen leggen uitgaven vast die het gebruik niet kan dragen. Verplicht in plaats daarvan alleen voor stabiel gebruik en review.
- **Alleen centrale beheersing.** Teams wachten op goedkeuring en omzeilen het proces. Geef teams in plaats daarvan bevoegdheid binnen limieten, met zichtbaarheid.
- **Enquêtecijfers als feit citeren.** Getallen uit leveranciersenquêtes sturen beslissingen. Controleer in plaats daarvan oorspronkelijke bronnen en gebruik je eigen gegevens.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Zichtbaarheid en toewijzing | Kosten worden alleen als totaalrekening gezien | Sommige teams zien hun kosten | Het meeste uitgegeven geld is getagd en aan services en eigenaren toegeschreven | Eenheidskosten en trends worden aan vraag en kwaliteit getoetst | Kostengegevens worden in een gemeenschappelijk formaat over teams, leveranciers en financiën gedeeld |
| Governance en budgetten | Budgetten zijn jaarlijks en vast | Er bestaan enkele budgetten en alarmen | Budgetten, alarmen en goedkeuringslimieten zijn standaard | Afwijkingen worden onderzocht en regels afgestemd | Budgetregels zijn over de organisatie en partners afgestemd |
| Samenwerking | Financiën en engineering ontmoeten elkaar bij de begroting | Enkele gezamenlijke gesprekken | Een regelmatige gezamenlijke review met een zakelijke eigenaar | Beslissingen en uitkomsten worden gevolgd en verbeterd | Financiën, engineering, business en leveranciers delen doelen en gegevens |
| Optimalisatie | Besparingen komen uit crises | Enige verspilling wordt gevonden | Verspilling, dimensionering en verplichtingen worden regelmatig gereviewd | Besparingen worden gemeten tegen risico's voor betrouwbaarheid | Optimalisatie is routine, gedeeld en in balans met servicedoelen |

## Checklist

- [ ] We kunnen de maandelijkse kosten van elke belangrijke service noemen en wie haar bezit.
- [ ] Cloudresources dragen tags voor eigenaar, service en omgeving en ongetagde uitgaven worden wekelijks of maandelijks gerapporteerd.
- [ ] Teams ontvangen een regelmatig kostenrapport voor de services die ze bezitten (showback).
- [ ] We volgen minstens één eenheidskost voor elke belangrijke service.
- [ ] Budgetten en alarmen bestaan met eigenaren en alarmen gaan ruim vóór limieten af.
- [ ] Financiën, engineering en een zakelijke eigenaar ontmoeten elkaar regelmatig over kosten en waarde.
- [ ] We reviewen ongebruikte en te grote resources en abonnementen minstens per kwartaal.
- [ ] Kostenbesparingen worden gereviewd op effecten voor betrouwbaarheid en prestaties.
- [ ] Inkoopverplichtingen zijn gebaseerd op stabiel gebruik en worden gereviewd.
- [ ] We hebben cijfers uit leveranciersenquêtes aan oorspronkelijke bronnen gecontroleerd voordat we ze gebruikten.

## AI-prompts

**Doel: een kostenrapport analyseren op uitgaven zonder eigenaar en ongebruikelijke uitgaven.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Doel: een eenheidskost voor een service definiëren.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een gezamenlijke review tussen engineering en financiën voorbereiden.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een kostenbesparend voorstel tegen betrouwbaarheid afwegen.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): gebruik dit om IT- en cloud-uitgaven te voorspellen en afwijkingen uit te leggen.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gebruik dit om toekomstige belasting te schatten zodat kostenprognoses de vraag weerspiegelen.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om resourcebehoeften aan kosten en serviceniveaus te koppelen.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om contracten en verplichtingen met aanbieders te beheren.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gebruik dit om services en initiatieven naar waarde en kosten te kiezen en te financieren.

## Belangrijkste bronnen

- **What is FinOps?** (FinOps Foundation, finops.org): de eigen definitie van de Foundation en beschrijving van samenwerking tussen engineering-, financiële en businessteams.
- **Cloud computing** (Wikipedia): achtergrond over prijsmodellen, kostenbeheersing en gedeelde verantwoordelijkheid, met een bericht over niet-geverifieerde tekst.
- **Total cost of ownership** (Wikipedia): achtergrond over het tellen van alle kosten van een asset of service over haar levensduur.
- **Software as a service** (Wikipedia): achtergrond over abonnementsprijzen.

## Referenties

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
