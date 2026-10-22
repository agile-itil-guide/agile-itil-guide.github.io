# Site reliability engineering

**Site reliability engineering behandelt beheer als engineeringprobleem en gebruikt service level objectives, foutbudgetten en een plafond op repetitief handwerk om services betrouwbaar te houden terwijl ze snel blijven veranderen.**

## Waarom dit ertoe doet

Veel servicemanagementpraktijken zijn ontworpen voor een wereld waarin beheerders software draaiden die anderen hadden geschreven en de kosten van beheer meegroeiden met de omvang van de service. Site reliability engineering (SRE) is het antwoord van één organisatie op wat er gebeurt wanneer dat model een zeer grote schaal bereikt: vraag software-engineers de beheerfunctie te ontwerpen en uit te voeren en laat het systeem het werk doen dat mensen anders met de hand zouden doen.

Voor lezers van deze gids is SRE om drie redenen nuttig. Het maakt de afweging tussen snelheid en betrouwbaarheid expliciet, met getallen die product- en beheerteams allebei kunnen lezen. Het geeft een stevig idee van hoeveel handwerk te veel is. En het toont hoeveel ITIL-praktijken, zoals incident-, probleem-, wijzigings- en capaciteitsmanagement, in engineeringtermen kunnen worden uitgevoerd. SRE is niet de enige manier om deze te doen en komt uit de omstandigheden van een zeer groot internetbedrijf, dus wat overdraagbaar is, hangt af van jouw situatie.

Dit onderwerp is vooral gebaseerd op drie hoofdstukken uit het boek *Site Reliability Engineering* van Google, aangevuld met het Wikipedia-artikel over SRE. Het boek beschrijft de praktijk bij één organisatie en pleit voor haar aanpak; het Wikipedia-artikel geeft een breder maar dunner beeld en noemt geen kritiek. Lees beide als bronnen voor ideeën om te toetsen, niet als standaard.

## Kernconcepten

### Wat SRE is

De inleiding van het boek definieert SRE als "wat er gebeurt wanneer je een software-engineer vraagt een beheerteam te ontwerpen." Het [Wikipedia-artikel over site reliability engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) beschrijft het als een discipline binnen software-engineering en IT-infrastructuurondersteuning die de beschikbaarheid en prestaties van gedeployde software en grote services monitort en verbetert, met nadruk op automatisering en infrastructure as code. Het artikel noemt SRE een specifieke implementatie van DevOps, smaller van reikwijdte omdat het zich richt op het bouwen van betrouwbare systemen (zie Onderwerp 5.2 — DevOps). Het boek beschrijft DevOps als een bredere set principes die SRE op een specifieke manier implementeert.

Volgens het artikel begon de SRE-praktijk van Google in 2003 toen Benjamin Treynor Sloss aantrad en een team vormde uit zeven productie-engineers; in 2016 had het team meer dan 1.000 SRE's en hadden andere grote internetbedrijven de praktijk overgenomen. Een enquête uit 2020 onder 572 professionals vond SRE-teams bij 64 procent van de organisaties met 10.000 of meer medewerkers, 44 procent van die met 101 tot 1.000 en 32 procent van die met 100 of minder. De conferentiereeks SREcon wordt sinds 2014 jaarlijks gehouden.

### Het probleem dat SRE aanpakt

De inleiding beschrijft het traditionele model: ontwikkelaars en systeembeheerders zijn in aparte teams gesplitst. Het noemt twee soorten kosten:

- **Directe kosten.** Handmatig wijzigingsmanagement en eventafhandeling worden duur, omdat het beheerteam met de belasting meegroeit.
- **Indirecte kosten.** De teams hebben verschillende vocabulaires, prikkels en aannames over risico, wat tot conflict over releases leidt. Beheer voegt lanceerpoorten toe en ontwikkelaars reageren met omwegen.

SRE wil deze splitsing vermijden door beheer als engineeringprobleem te behandelen. Het hoofdstuk zegt dat de teamgrootte langzamer groeit dan het systeem, omdat engineering voorkomt dat de operationele belasting in de pas met het verkeer groeit.

### De uitgangspunten

De inleiding noemt de gebieden waarvoor SRE-teams verantwoordelijk zijn: beschikbaarheid, latentie, prestaties, efficiëntie, wijzigingsmanagement, monitoring, noodrespons en capaciteitsplanning. Het Wikipedia-artikel noemt kernpraktijken zoals het automatiseren van repetitief werk, het definiëren van betrouwbaarheidsdoelen via service level indicators (SLI's), doelstellingen (SLO's) en foutbudgetten, systemen ontwerpen om risico te verminderen, observability en monitoring, het beheren van toil, een getest incidentmanagementproces, en capaciteitsplanning, releasemanagement en chaos engineering.

### Service level objectives en foutbudgetten

SRE koppelt betrouwbaarheid aan expliciete doelen (zie Onderwerp 3.7 — Servicelevelmanagement voor de volledige behandeling). In het kort:

- Kies een paar indicatoren die weerspiegelen waar gebruikers om geven.
- Stel een doelstelling die geen perfectie eist.
- Sta een **foutbudget** toe: de ruimte tussen perfect en de doelstelling.
- Gebruik het budget om het releasetempo te bepalen: zolang er budget is, gaan releases door; wanneer het is opgebruikt, vertragen releases en verschuift inspanning naar betrouwbaarheid.

Het hoofdstuk "Embracing Risk" legt uit waarom: productteams worden op snelheid gemeten en betrouwbaarheidsteams op betrouwbaarheid, wat spanning schept, en het budget geeft beide een gedeelde, objectieve maat. Hetzelfde hoofdstuk zegt dat de kosten van betrouwbaarheid steil stijgen en dat het doel is het risico van een service af te stemmen op wat de business accepteert (zie Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties).

### Toil

Het hoofdstuk "Eliminating Toil" definieert **toil** als operationeel werk dat aan het draaien van een productieservice is gebonden, en zegt dat het niet zomaar werk is dat iemand vervelend vindt en te onderscheiden is van overhead zoals vergaderingen. Toil is meestal:

| Kenmerk | Betekenis |
|---|---|
| **Handmatig** | Vraagt menselijke handenarbeid, ook als een script de stappen uitvoert |
| **Repetitief** | Steeds opnieuw gedaan, geen nieuw probleem |
| **Automatiseerbaar** | Een machine zou het kunnen doen, of de behoefte kan weg worden ontworpen |
| **Tactisch** | Onderbrekingsgedreven en reactief, zoals reageren op pagina's |
| **Zonder blijvende waarde** | De service is daarna in dezelfde staat |
| **Lineair met groei** | Inspanning schaalt met omvang, verkeer of gebruikers van de service |

Het boek zegt dat SRE's ernaar streven toil onder 50 procent van hun tijd te houden, met minstens de helft besteed aan engineeringprojectwerk, en de inleiding plaatst een plafond van 50 procent op het totale "ops"-werk, waarbij het teveel naar ontwikkelteams teruggaat. Het zegt dat te veel toil stilstand in de loopbaan, lage moraal en burn-out veroorzaakt, functiewerk vertraagt en tot uitstroom leidt; "toil wordt giftig als het in grote hoeveelheden wordt ervaren", hoewel kleine hoeveelheden kalmerend kunnen zijn en sommige onvermijdelijk is. Het hoofdstuk geeft een manier om de ondergrens te berekenen die bereikbaarheidsdienst oplegt (bijvoorbeeld een ondergrens van 33 procent voor een rooster van zes personen onder zijn voorbeeldaannames) en meldt dat onderbrekingen de grootste bron van toil waren, gevolgd door reageren op bereikbaarheidsdienst en daarna releases. Het definieert engineeringwerk als nieuw, oordeel vragend, blijvende verbetering producerend en een strategie volgend.

### Noodrespons en monitoring

De inleiding zegt dat monitoring geen mens mag vereisen om alarmen te interpreteren: software interpreteert gegevens en mensen worden alleen gewaarschuwd wanneer actie nodig is (zie Onderwerp 3.10 — Monitoring en eventmanagement). Het zegt dat SRE's in bereikbaarheidsdienst hooguit ongeveer twee events per dienst moeten ontvangen. Het beweert dat playbooks een ruwweg drievoudige verbetering van de gemiddelde hersteltijd opleveren in vergelijking met improviseren. Incidentafhandeling volgt een incidentcommandobenadering en postmortems zijn schuldvrij en worden voor alle belangrijke incidenten geschreven (zie Onderwerp 3.2 — Incidentmanagement).

### Wijzigingsmanagement

De inleiding stelt dat ongeveer 70 procent van de storingen voortkomt uit wijzigingen aan een live systeem en beveelt progressieve uitrol, snelle probleemdetectie en veilige rollbacks aan. Dit is de eigen bewering van het boek, uit de ervaring van Google, en geldt mogelijk niet voor elke organisatie. De boodschap past bij de DORA-richtlijn over wijziging (zie Onderwerp 3.4 — Change enablement en Onderwerp 3.5 — Release- en deploymentmanagement).

### SRE en ITIL

SRE kan worden gelezen als een engineeringmanier om verschillende ITIL-praktijken uit te voeren:

| ITIL-praktijk | SRE-aanpak |
|---|---|
| Incidentmanagement | Incidentcommandorollen, een live incidentvastlegging, schuldvrije postmortems |
| Probleemmanagement | Postmortemacties in de backlog, toil bij de oorzaak wegnemen |
| Change enablement | Progressieve uitrol, snelle detectie, veilige rollback, geautomatiseerde controles |
| Servicelevelmanagement | SLI's, SLO's, foutbudgetten |
| Monitoring en eventmanagement | Symptoomgebaseerde alarmering, de vier gouden signalen |
| Capaciteitsmanagement | Capaciteitsplanning als engineeringtaak, met load testing |
| Continue verbetering | Een plafond op toil, engineeringprojecten als hoofdwerk |

De koppeling is die van deze gids, niet van de bronnen. Noch het boek noch het Wikipedia-artikel beweert ITIL te implementeren.

### Deploymentmodellen

Het Wikipedia-artikel beschrijft zes organisatiemodellen voor SRE: "Kitchen Sink", infrastructuur, tools, product of applicatie, embedded en consulting. Het zegt dat een hybride gangbaar is in grote organisaties, maar markeert die bewering als bronvermelding nodig hebbend. Welk model bij je past, hangt af van je omvang en het aantal services.

### Grenzen en kritiek

Het Wikipedia-artikel noemt geen kritiek, kosten of faalwijzen en het boek beschrijft het succes van één organisatie. Praktische grenzen zijn uit ervaring bekend en hier als zodanig aangeboden: SRE heeft engineers nodig die software kunnen schrijven en bereid zijn beheer te doen; het plafond van 50 procent heeft steun van het management nodig; foutbudgetten werken alleen als productteams ze respecteren; en de aanpak is moeilijk te kopiëren zonder de schaal en tooling die haar voortbracht. Kleinere organisaties kunnen de ideeën overnemen, zoals doelstellingen, budgetten, toilmeting en schuldvrije review, zonder een team te creëren.

## Goede praktijken

1. **Kies één service en stel een doelstelling.** Kies twee tot vier indicatoren die de gebruikerservaring weerspiegelen, stel een losse eerste doelstelling en meet een paar maanden voordat je haar aanscherpt.
2. **Spreek een foutbudgetbeleid af.** Schrijf op wat er gebeurt wanneer het budget bijna op is en wanneer het is opgebruikt en wie mag overrulen. Maak er een gezamenlijke regel van product en beheer van.
3. **Meet toil.** Vraag mensen vast te leggen hoeveel van hun tijd naar handmatig, repetitief operationeel werk gaat. Gebruik de zes kenmerken om het te classificeren. Kijk naar de belangrijkste bronnen.
4. **Begrens het handwerk.** Stel een plafond voor toil, zoals de helft van iemands tijd, en review het. Stuur bij overschrijding het teveel terug naar de teams die de oorzaken bezitten of verminder de reikwijdte.
5. **Automatiseer eerst de grootste toil.** Kies het item dat de meeste tijd kost en het best herhaalbaar is, automatiseer het met tests en meet de besparing. Geef de voorkeur aan de behoefte weg te ontwerpen boven haar te automatiseren.
6. **Bescherm engineeringtijd.** Plan projectwerk voor beheerengineers als echt werk met eigenaren en data. Zonder dat breidt toil zich uit.
7. **Beperk onderbrekingen.** Streef naar weinig events per dienst in bereikbaarheid, stem alarmen af zodat pagina's uitvoerbaar zijn en repareer terugkerende oorzaken. De richtlijn van het boek is hooguit ongeveer twee events per dienst.
8. **Schrijf playbooks.** Schrijf voor veelvoorkomende fouten korte, geteste responsstappen. Het boek beweert dat ze de hersteltijd verbeteren vergeleken met improviseren.
9. **Maak wijzigingen progressief en omkeerbaar.** Rol geleidelijk uit, detecteer problemen snel en draai veilig terug. Omdat wijzigingen in de ervaring van het boek de gangbaarste oorzaak van storingen zijn, investeer je hier eerst.
10. **Houd schuldvrije postmortems voor belangrijke incidenten,** inclusief bijna-ongelukken die geen pagina gaven. Maak van acties backlogitems.
11. **Begin met de ideeën, niet met het team.** Kleinere organisaties kunnen doelstellingen, budgetten, toilmaten en postmortems met bestaand personeel overnemen voordat ze een toegewijd team vormen.
12. **Kies bewust een organisatiemodel.** Als je een SRE-functie creëert, beslis dan of ze tools levert, bij productteams embedded zit of adviseert, en review de keuze naarmate je groeit.

## Vragen om met je team te bespreken

**Op welke service zouden we eerst een doelstelling zetten en wat zou de doelstelling zijn?**

Vraag iedereen de service en de indicator te noemen die de ervaring van de gebruiker het best weerspiegelt. Vergelijk. Verschillen tonen onduidelijke prioriteiten. De facilitator kan vragen wat er vandaag gebeurt wanneer de service trager of minder beschikbaar is dan gebruikers verwachten. Spreek een service af om mee te beginnen en wat te meten.

**Wat zouden we doen als we deze maand ons hele foutbudget opmaakten?**

Vraag het team en een productvertegenwoordiger de acties te beschrijven, wie beslist en wat wordt beschermd. Veel teams hebben dit nooit afgesproken. Bespreek of een pauze op riskante releases zou worden geaccepteerd. Schrijf een beleid van één pagina.

**Hoeveel van onze week is toil en wat zijn de top drie bronnen?**

Vraag mensen te schatten en houd dan twee weken een vastlegging bij. Vergelijk schattingen met vastleggingen. Het doel is de vorm van het werk te zien, niet te beschuldigen. Kies de grootste bron en vraag of die door ontwerp kan worden weggenomen.

**Welke terugkerende handmatige taak kan een script of een ontwerpwijziging wegnemen?**

Maak een lijst van de taken waar mensen tegenop zien. Schat bij elke frequentie en tijd. De beste kandidaten zijn frequent, stabiel en laagrisico. Vraag wat automatisering veilig zou maken, zoals limieten en logs. Kies er een om te automatiseren.

**Hoeveel events krijgt elke dienst in bereikbaarheid en hoeveel vragen actie?**

Tel over het afgelopen kwartaal. Als het aantal hoog is, bespreek dan waar het vandaan komt. De inleiding suggereert te mikken op ongeveer twee events per dienst. Kies één alarmbron om te repareren.

**Wat zouden we verliezen en winnen als we een toegewijd betrouwbaarheidsteam maakten?**

Vraag om eerlijke meningen. Winsten kunnen focus en vaardigheden zijn; verliezen een nieuwe silo of het afschuiven van operationeel werk. Bespreek alternatieven zoals embedded engineers of een rotatie. Beslis wat je op kleine schaal probeert.

## In de praktijk: een agile ITIL-voorbeeld

Een regionale elektriciteitsdistributeur draait een app voor storingsmeldingen en een dispatchsysteem voor veldploegen. Een gecombineerd team van achttien bouwt en beheert beide. De beheermedewerkers in het team besteden het meeste van hun tijd aan handwerk: vastgelopen jobs herstarten, datafeeds aanpassen en reageren op pagina's. Het hoofd van de groep merkt op dat ze weinig tijd voor verbetering overhouden, en twee van hen hebben gevraagd naar andere teams te gaan.

De teamlead stelt een op SRE geïnspireerde aanpak voor. Voor de storingsmeldingsapp stelt het team twee indicatoren vast: het deel van de meldingen dat slaagt en de tijd om een bevestiging te tonen. Het spreekt met de manager klantenservice een losse doelstelling en een maandelijks foutbudget af en schrijft een beleid van één pagina: wanneer meer dan driekwart van het budget is besteed, wachten riskante releases. Het team vraagt engineers een maand toil te loggen. Het logboek toont dat een derde van hun tijd gaat naar het herstarten van een falende data-importjob en naar handmatige aanpassingen na stormen, wanneer de vraag piekt. Ze stellen een plafond van de helft van hun tijd aan toil, besluiten eerst de oorzaak van de importjob te repareren en de aanpassingen bij stormen te automatiseren met een script dat limieten en een log heeft. Pagina's worden afgestemd zodat alleen voor gebruikers zichtbare symptomen de engineer in bereikbaarheidsdienst alarmeren.

Vier maanden later daalt toil tot ongeveer een derde van de tijd van het team, faalt de importjob niet meer en is het foutbudgetbeleid één keer gebruikt, in een maand met een leverancierstoring, om een functierelease uit te stellen. Er blijven moeilijkheden. Het dispatchsysteem heeft nog geen doelstellingen en de manager klantenservice is tweemaal in de verleiding gekomen het budgetbeleid voor dringende functies te overrulen. De teamlead en de manager spreken af overrulings maandelijks te reviewen en hierna doelstellingen voor dispatch te stellen. Ze leren ook dat het "plafond" een richtlijn is, geen belofte: na een zware storm steeg toil twee weken ver boven de helft en moeten ze beslissen wat te schrappen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams nemen deel aan het stellen van doelstellingen en respecteren het budget. Bouw bedienbaarheid in functies in, accepteer dat toil terugkeert naar het team dat haar veroorzaakt en help automatiseren. Behandel een opgebruikt budget als informatie over de service, niet als straf.

### Service- en beheerteams

Beheerteams kunnen het SRE-werk doen of de ideeën overnemen. Meet toil, bescherm tijd voor engineering en duw terugkerend werk terug naar zijn bron. Gebruik doelstellingen om uit te leggen waarom sommig werk moet worden afgewezen.

### Leiderschap en governance

Leiders moeten het plafond op toil en de foutbudgetregel steunen; zonder steun falen ze. Vraag om doelstellingen en budgetstatus, niet om een telling van incidenten. Geef tijd voor engineeringwerk en wees bereid nee te zeggen tegen functies wanneer het budget is opgebruikt.

### Klanten en gebruikers

Klanten en gebruikers profiteren van duidelijke serviceniveaus en van sneller herstel wanneer dingen falen. Vertel het team wat het meest telt zodat doelstellingen jouw ervaring weerspiegelen. Verwacht eerlijke gesprekken over afwegingen tussen nieuwe functies en betrouwbaarheid.

## Veelvoorkomende faalpatronen

- **De titel kopiëren.** Beheer wordt hernoemd en er verandert niets. Neem in plaats daarvan eerst doelstellingen, budgetten en toilmaten over.
- **Een foutbudget dat niemand respecteert.** Functies overrulen het elke keer. Spreek in plaats daarvan de regel af met product owners en review overrulings.
- **Geen tijd voor engineering.** Toil vult de week. Begrens haar in plaats daarvan en bescherm projecttijd.
- **Het verkeerde automatiseren.** Een zeldzame taak wordt geautomatiseerd terwijl de frequente blijft. Rangschik in plaats daarvan op tijd en frequentie.
- **Perfectiedoelen.** Doelstellingen eisen 100 procent. Stel in plaats daarvan losse doelen uit gebruikersbehoeften en scherp aan met gegevens.
- **Een betrouwbaarheidsteam als dumpplaats.** Ontwikkeling stuurt al het operationele werk erheen. Stuur in plaats daarvan het teveel terug naar zijn bron.
- **De schaal van Google kopiëren.** Praktijken die een grote organisatie vragen worden door een kleine overgenomen. Neem in plaats daarvan de ideeën die passen, zoals doelstellingen en postmortems.
- **Mensen negeren.** Belasting door bereikbaarheidsdienst brandt mensen uit. Beperk in plaats daarvan events per dienst en deel het rooster.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Doelstellingen en budgetten | Betrouwbaarheidsdoelen zijn informeel | Sommige services hebben doelstellingen | Belangrijke services hebben doelstellingen en een afgesproken foutbudgetbeleid | Budgetten sturen releases en beleidsoverrulings worden gereviewd | Doelstellingen en budgetten zijn over afhankelijke services afgestemd |
| Toil en automatisering | Toil wordt niet gemeten | Sommige teams schatten toil | Toil wordt gemeten en begrensd; automatiseringswerk is gepland | Toilbronnen en besparingen worden gevolgd en verminderd | Automatisering wordt gedeeld en toil over teams verminderd |
| Noodrespons | Respons wordt geïmproviseerd | Er bestaan enkele playbooks en een rooster | Rollen, playbooks en schuldvrije postmortems zijn standaard | Eventbelasting en hersteltijden worden gemeten en verbeterd | Respons wordt geoefend en over teams en leveranciers gecoördineerd |
| Wijziging en capaciteit | Wijzigingen zijn riskant en handmatig | Sommige uitrol is gefaseerd | Progressieve uitrol en capaciteitsplanning zijn routine | Wijzigingsfalen en capaciteitsprognoses worden gemeten | Wijzigings- en capaciteitspraktijken worden over de organisatie gedeeld |

## Checklist

- [ ] Minstens één service heeft indicatoren en een losse doelstelling, over tijd gemeten.
- [ ] Een foutbudgetbeleid is met product owners afgesproken en opgeschreven.
- [ ] Toil wordt gemeten met een consistente definitie en de belangrijkste bronnen zijn bekend.
- [ ] Er bestaat een plafond voor toil en het wordt gereviewd.
- [ ] Tijd voor engineeringprojecten is gepland en beschermd.
- [ ] Belasting door bereikbaarheidsdienst wordt gemeten en pagina's zijn uitvoerbaar.
- [ ] Er bestaan playbooks voor de meest voorkomende fouten en ze zijn getest.
- [ ] Uitrol is progressief en rollbacks zijn getest.
- [ ] Belangrijke incidenten en bijna-ongelukken krijgen schuldvrije postmortems met acties met eigenaren.
- [ ] We hebben bewust gekozen hoe betrouwbaarheidswerk wordt georganiseerd.

## AI-prompts

**Doel: je werk classificeren als toil, engineering of overhead.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Doel: een foutbudgetbeleid opstellen.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een toilitem kiezen om eerst te automatiseren.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een playbookvermelding schrijven.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gebruik dit om een eerlijk rooster met limieten op events per dienst te ontwerpen.
- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om de playbooks te schrijven die herstel versnellen.
- [postmortem](../../../../skills/postmortem/SKILL.md): gebruik dit om schuldvrije reviews te houden en acties te volgen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gebruik dit om te testen dat betrouwbaarheidsontwerpen werken door veilig fouten te veroorzaken.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om capaciteit als engineeringtaak te plannen, gekoppeld aan vraag.

## Belangrijkste bronnen

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): de definitie van SRE, het plafond van 50 procent, de uitgangspunten en de splitsing tussen ontwikkeling en beheer die ze wil vermijden.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): de definitie van toil en de redenen om haar te begrenzen.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): de economie van betrouwbaarheid en het foutbudget.
- **Site reliability engineering** (Wikipedia): een bredere samenvatting van de discipline, deploymentmodellen, adoptie-enquête en verder lezen.

## Referenties

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
