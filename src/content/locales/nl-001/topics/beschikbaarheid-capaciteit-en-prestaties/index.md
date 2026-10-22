# Beschikbaarheid, capaciteit en prestaties

**Beschikbaarheid, capaciteit en prestaties zijn drie blikken op de vraag of een service er is, groot genoeg is en snel genoeg is wanneer gebruikers haar nodig hebben, en de agile aanpak is doelen te kiezen uit gebruikersbehoeften, ze eerlijk te prijzen en te testen voordat de vraag komt.**

## Waarom dit ertoe doet

Gebruikers scheiden de drie niet. Een service die "up" is maar te traag om te gebruiken, heeft hen teleurgesteld, en een service die snel is op een rustige dag en bezwijkt in de piek, heeft hen teleurgesteld op het moment dat ze haar het meest nodig hebben. Teams die beschikbaarheid, capaciteit en prestaties apart bekijken, missen vaak de manieren waarop ze op elkaar inwerken: capaciteit toevoegen verandert kosten en complexiteit, perfecte beschikbaarheid najagen beperkt hoe snel je kunt veranderen en afstemmen op snelheid kan veerkracht verminderen.

Agile teams worstelen met een bijzondere versie van het probleem. Ze veranderen de service vaak en elke wijziging kan prestaties of resourcebehoeften veranderen op manieren die niemand heeft getest. Ze werken ook meestal met korte tijdshorizonten, zodat capaciteitsbehoeften waarvan het maanden duurt ze te regelen, zoals hardware, contracten of licenties, gemist kunnen worden. De praktijken in dit onderwerp geven een manier om vooruit te kijken zonder terug te keren naar langetermijnplanning om de planning.

Het boek *Site Reliability Engineering* van Google is in zijn hoofdstuk "Embracing Risk" een heldere bron over de economie van beschikbaarheid: het zegt dat zijn aanpak niet streeft naar 100% betrouwbaarheid, omdat stabiliteit maximaliseren vanaf een bepaald punt beperkt hoe snel nieuwe functies kunnen worden ontwikkeld en de kosten van betrouwbaarheid steil stijgen. Het [Wikipedia-artikel over capaciteitsplanning](https://en.wikipedia.org/wiki/Capacity_planning) geeft algemene definities en strategieën. Beide zijn gedeeltelijk, en het hier gebruikte ITIL-vocabulaire komt uit breed gepubliceerde beschrijvingen die deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk.

## Kernconcepten

### Beschikbaarheid

**Beschikbaarheid** is het vermogen van een service om te doen wat gebruikers nodig hebben wanneer ze het nodig hebben. Een gangbare manier om haar uit te drukken is als percentage over een periode. Het SRE-hoofdstuk noemt twee manieren om haar te meten. Voor een enkel systeem is beschikbaarheid tijdgebaseerd: 99,99% staat ongeveer 52,56 minuten ongeplande downtime per jaar toe. Voor gedistribueerde services die altijd gedeeltelijk up zijn, wordt ze beter gemeten als slagingspercentage van verzoeken over een voortschrijdend venster; het voorbeeld van het hoofdstuk is een service met 2,5 miljoen dagelijkse verzoeken en een doel van 99,99%, wat tot 250 fouten toestaat. Het hoofdstuk richt zich op ongeplande downtime. Geplande downtime heeft een eigen afspraak met gebruikers nodig.

### De prijs van elke extra negen

Het hoofdstuk zegt dat de kosten van betrouwbaarheid niet-lineair stijgen: één extra negen kan 100 keer zoveel kosten als de vorige stap, inclusief redundante middelen en de alternatieve kosten van engineers die geen gebruikersgerichte functies bouwen. Het geeft een illustratie: beschikbaarheid verhogen van 99,9% naar 99,99% bij een service met $1 miljoen aan omzet is ongeveer $900 aan waarde waard, dus de investering loont alleen als de extra negen minder kost dan dat. De getallen zijn het voorbeeld van de bron en de jouwe moeten uit je eigen omzet of waarde komen. Het principe geldt: kies de beschikbaarheid die gebruikers nodig hebben en prijs alles daarboven.

### Risicotolerantie

Het hoofdstuk beschrijft samenwerken met product owners om bedrijfsdoelen om te zetten in expliciete doelstellingen. Factoren zijn de vereiste beschikbaarheid, de vorm van fouten (een constant laag foutenpercentage tegenover incidentele volledige storingen, waarbij blootstelling van gegevens bijzonder ernstig is), kosten en andere maten zoals latentie. Het merkt op dat infrastructuur die veel clients bedient kan worden aangeboden op expliciet gedefinieerde serviceniveaus, zodat elke client het goedkoopste niveau kiest dat aan zijn behoeften voldoet.

### Foutbudgetten

Het hoofdstuk legt het foutbudget uit als een gedeelde, objectieve maat tussen productteams, die op snelheid worden gemeten, en betrouwbaarheidsteams, die op betrouwbaarheid worden gemeten. Zolang er budget is, gaan releases door. Wanneer het is opgebruikt, vertragen releases en verschuift inspanning naar betrouwbaarheid (zie Onderwerp 3.7 — Servicelevelmanagement).

### Capaciteit

Het Wikipedia-artikel definieert capaciteitsplanning als het bepalen van de productiecapaciteit die een organisatie nodig heeft om aan veranderende vraag te voldoen, en zegt dat het in IT een synoniem is voor capaciteitsmanagement: de opslag-, hardware-, software- en connectiviteitsmiddelen schatten die over een toekomstige periode nodig zijn. Het artikel onderscheidt **ontwerpcapaciteit**, de maximaal mogelijke output, van **effectieve capaciteit**, de output na beperkingen. Plan in de praktijk voor effectieve capaciteit, die altijd lager is dan het ontwerpcijfer.

### Capaciteitsstrategieën

Het artikel beschrijft vier strategieën om capaciteit toe te voegen:

| Strategie | Wat het betekent | Afweging |
|---|---|---|
| **Lead** | Capaciteit toevoegen vóór de vraag | Goede service en korte doorlooptijden, maar riskant als de vraag onvoorspelbaar is |
| **Lag** | Capaciteit pas toevoegen nadat op of boven volle capaciteit is gedraaid | Lager risico van overbouwen, maar kan klanten verliezen |
| **Match** | Capaciteit in kleine stappen toevoegen naarmate de vraag verandert | In balans, vraagt goede monitoring |
| **Adjustment** | Capaciteit met kleine of grote hoeveelheden toevoegen of verminderen naarmate vraag of architectuur verandert | Flexibel, vraagt snelle provisioning |

Het artikel beschrijft korte-, middellange- en langetermijnplanning (operationeel, tactisch en strategisch), van dagen tot jaren. In een cloudomgeving zijn "match" en "adjustment" vaak makkelijker omdat middelen snel kunnen worden toegevoegd, maar kosten en contracten vragen nog steeds planning (zie Onderwerp 4.5 — IT-financieel management en FinOps).

### Prestaties

**Prestaties** zijn hoe snel en hoe goed de service reageert. Het hoofdstuk over monitoring in het SRE-boek suggereert latentie, verkeer, fouten en verzadiging te meten en waarschuwt dat gemiddelden trage uitschieters verbergen (zie Onderwerp 3.10 — Monitoring en eventmanagement). Verzadiging, hoe "vol" de service is, koppelt prestaties aan capaciteit: het hoofdstuk merkt op dat prestaties vaak verslechteren vóór 100% benutting.

### Hoe de drie op elkaar inwerken

- Meer capaciteit kan beschikbaarheid en prestaties verhogen, tegen een prijs.
- Hoge beschikbaarheidsdoelen vragen meestal redundantie, wat extra capaciteit is.
- Afstemmen op topprestaties kan de ruimte voor falen verkleinen.
- Wijzigingen in de service veranderen alle drie, daarom doet testen ertoe.

Een nuttige discipline is de doelen voor elke service samen te vermelden: hoe beschikbaar, hoe snel en hoeveel belasting ze moet dragen.

### Vraag en prognoses

Capaciteit hangt af van vraag. Vraag komt van gebruikers en van de business: marketingcampagnes, seizoenspieken, nieuwe klanten. De business weet meer over de toekomst dan IT, dus vraag het. Plan met bereiken in plaats van enkele getallen en herzie de prognose regelmatig (zie de vaardigheid voor vraagprognoses hieronder).

### Testen

Claims over capaciteit en prestaties zijn hypothesen tot ze zijn getest. Load testing en performance testing passen realistische vraag toe om te zien hoe de service zich gedraagt, en chaos testing introduceert fouten om te zien of de beschikbaarheid standhoudt. Deze kunnen deel uitmaken van de leveringspipeline.

### Grenzen van de bronnen

Het Wikipedia-artikel over capaciteitsplanning noemt ITIL-capaciteitsmanagement niet en analyseert de relatie tussen capaciteit, prestaties en beschikbaarheid niet, en zijn sectie over bedrijfsmiddelen is gemarkeerd als zonder bronvermeldingen. Het SRE-hoofdstuk beschrijft de praktijken van een zeer grote organisatie met aparte economie. Gebruik ze voor principes, niet voor getallen.

## Goede praktijken

1. **Vermeld beschikbaarheids-, prestatie- en belastingsdoelen samen.** Schrijf voor elke service op hoe beschikbaar ze moet zijn, hoe snel ze moet reageren en hoeveel belasting ze moet dragen. Baseer ze op gebruikersbehoeften en spreek ze af met de service-eigenaar en klanten.
2. **Prijs de doelen.** Schat wat een extra niveau van beschikbaarheid of snelheid kost, in geld en in vertraagde functies. Vergelijk het met wat gebruikers en de business zouden winnen. Gebruik je eigen cijfers, niet het voorbeeld uit een boek.
3. **Meet beschikbaarheid op een manier die bij de service past.** Gebruik voor services die altijd gedeeltelijk up zijn het slagingspercentage over een voortschrijdend venster zoals het SRE-hoofdstuk doet. Gebruik voor eenvoudige systemen tijdgebaseerde maten. Tel ongeplande en geplande downtime apart.
4. **Plan voor effectieve capaciteit.** Schat wat de service kan dragen na echte beperkingen zoals overhead, uitval van componenten en onderhoud. Houd een marge.
5. **Kies bewust een capaciteitsstrategie.** Beslis of je per resource leidt, volgt of aansluit, op basis van doorlooptijden, kosten van tekort en kosten van overbouwen. Schrijf de keuze op en herzie haar.
6. **Vraag de business naar de vraag.** Ontmoet leiders van marketing, verkoop en operatie volgens een regelmatige cyclus om te horen over campagnes, lanceringen en seizoenspieken. Leg de verwachte belasting met bereiken vast.
7. **Let op verzadiging.** Volg hoe vol belangrijke resources zijn en stel alarmen ruim vóór het punt waarop prestaties verslechteren. Ken het niveau waarop je service gaat vertragen.
8. **Test vóór de piek.** Voer load- en performancetests uit die op echt verkeer lijken, vóór bekende pieken en na belangrijke wijzigingen. Repareer wat je vindt zolang er tijd is.
9. **Test falen, niet alleen belasting.** Oefen in een veilige omgeving het verlies van een component, een zone of een leverancier en kijk of de beschikbaarheid standhoudt (zie de chaos-testingvaardigheid hieronder).
10. **Neem capaciteit mee in wijzigings- en releasewerk.** Vraag bij ontwerp en review of een wijziging de resourcebehoeften verandert. Voeg prestatiecontroles aan de pipeline toe voor de paden die ertoe doen (zie Onderwerp 3.5 — Release- en deploymentmanagement).
11. **Gebruik het foutbudget om afwegingen te beslechten.** Als er budget is, besteed het aan verandering. Als het op is, besteed inspanning aan betrouwbaarheid en capaciteit. Review de regel met levering en beheer samen.
12. **Review prognoses tegen de werkelijkheid.** Vergelijk elk kwartaal voorspelde en werkelijke vraag en pas je methode aan. Behandel verrassingen als informatie.

## Vragen om met je team te bespreken

**Wat hebben onze gebruikers werkelijk nodig aan beschikbaarheid, snelheid en capaciteit, en wie besliste dat?**

Vraag naar de huidige doelen en waar ze vandaan kwamen. Vaak zijn ze lang geleden gesteld, of door het team zonder gebruikers te vragen. Vraag gebruikers en klanten wat het meest pijn doet. Bespreek of de doelen overeenkomen. De facilitator kan vragen wat er zou gebeuren als het doel één stap lager was en wat dat zou vrijmaken.

**Wat kost de volgende negen ons?**

Kies een service met een hoog beschikbaarheidsdoel. Schat wat het zou kosten om het één stap te verhogen of te verlagen, in geld en in vertraagd werk. Vergelijk met de waarde voor gebruikers. Het voorbeeld van het SRE-hoofdstuk toont hoe snel de rekensom tegen een hoger doel kan keren. Doe de berekening met je eigen getallen en leg de aannames vast.

**Wat is de volgende vraagpiek die we kennen en wat hebben we gedaan om ons voor te bereiden?**

Maak een lijst van de bekende pieken: een campagne, een deadline, een seizoensdrukte. Vraag bij elke wie de verwachte belasting kent en of de service op dat niveau is getest. Vaak heeft niemand het gevraagd. Spreek een persoon af om de getallen te verzamelen en een datum voor de test.

**Waar zit onze service het dichtst bij verzadiging en wat gebeurt er als ze daar komt?**

Vraag naar de zwaarst gebruikte resource. Kijk naar de trend. Vraag wat de service doet bij die grens: vertragen, fouten of falen. Als niemand het weet, test het. Kies een drempel waarop je handelt en een alarm ervoor.

**Welke van onze laatste paar wijzigingen beïnvloedden prestaties of capaciteit en wisten we dat vooraf?**

Review recente wijzigingen en vraag hoe prestaties werden gecontroleerd. Als dat niet gebeurde, bespreek dan wat een lichte controle zou zijn. Typische opties zijn een test op het kritieke pad of een canary release met monitoring. Spreek er een af voor de volgende release.

**Als nu één component uitviel, wat zou er met de beschikbaarheid gebeuren?**

Neem een belangrijke service en volg een storing van een database, een zone of een leverancier. Vraag wat het ontwerp aanneemt en wat is getest. Kloven tussen aanname en bewijs zijn risico's. Plan één gecontroleerde faaltest in een veilige omgeving.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale pensioenautoriteit draait een online service waar burgers hun aanspraken controleren en formulieren indienen. De service heeft een rustig jaar behalve de weken nadat jaaroverzichten zijn verstuurd, wanneer het verkeer tot een veelvoud van het normale niveau stijgt. Vorig jaar vertraagde de service zo erg dat veel gebruikers opgaven en het callcenter overspoeld werd. Het platformteam van negen en de beheermanager willen herhaling vermijden.

Het team begint met de communicatiedienst te vragen naar de verwachte belasting. De dienst zegt dat overzichten in twee batches worden verstuurd en geeft data, maar geen cijfers. Het team schat het bereik uit de gegevens van vorig jaar en stelt een doel: de formulierenpagina moet voor de verwachte piek binnen een acceptabele tijd reageren en de service moet door de twee batches beschikbaar blijven. Ze voeren een loadtest uit op een kopie van productie en ontdekken dat de database de eerste resource is die verzadigd raakt, ver onder de voorspelde piek. Ze nemen een "lead"-strategie aan voor de database, omdat de doorlooptijd om capaciteit toe te voegen lang is, en een "match"-strategie voor de webservers, die in minuten kunnen worden toegevoegd. Een faaltest toont dat het verlies van één databasenode de capaciteit halveert, wat bij de piek onaanvaardbaar zou zijn, dus voegen ze een reserve toe.

Bij de piek blijft de service up en houden de responstijden stand in de eerste batch. In de tweede batch vertraagt een component voor betalingsbevestiging die niemand had getest onder belasting en zien sommige gebruikers vertragingen. Het team kende de grens van die afhankelijkheid niet en was niet verteld dat de tweede batch groter zou zijn. Ze voegen de component toe aan de volgende loadtest, vragen de communicatiedienst eerder om het volume van elke batch en spreken af het prognoseproces het volgende kwartaal te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams beïnvloeden alle drie via ontwerp en wijziging. Neem prestaties en capaciteit op in ontwerpreviews en in de pipeline. Vertel beheer over wijzigingen die belasting veranderen en vraag de business naar de verwachte vraag.

### Service- en beheerteams

Beheerteams dragen meestal de monitoring en capaciteitsplannen. Volg verzadiging en trend, houd een overzicht van doorlooptijden voor resources en breng bewijs naar de planning. Help de business te begrijpen wat elk niveau van beschikbaarheid kost.

### Leiderschap en governance

Leiders bepalen de prijs die ze bereid zijn te betalen voor betrouwbaarheid en snelheid. Vraag om doelen die bij gebruikersbehoeften passen, met kosten, en accepteer dat perfecte beschikbaarheid geen verstandig doel is. Steun testen vóór bekende pieken en het budget voor veerkracht waar het ertoe doet.

### Klanten en gebruikers

Klanten en gebruikers voelen het resultaat. Vertel de verlener wanneer je extra belasting verwacht, zoals een campagne of deadline, en wat voor jou het meest telt aan snelheid en beschikbaarheid. Meld traagheid net als storingen, want beide zijn vanuit jouw kant falen.

## Veelvoorkomende faalpatronen

- **Doelen uit gewoonte.** "Vijf negens" wordt geëist zonder te vragen waarom. Leid doelen in plaats daarvan af uit gebruikersbehoeften en prijs ze.
- **Verrassingspieken.** De business kent een campagne en IT niet. Ontmoet elkaar in plaats daarvan volgens een regelmatige cyclus en leg de verwachte belasting vast.
- **Gemiddelden voor prestaties.** Trage uitschieters blijven ongezien. Kijk in plaats daarvan naar hoge percentielen en verzadiging.
- **Capaciteit pas na problemen toegevoegd.** Een lag-strategie wordt per ongeluk gebruikt. Kies in plaats daarvan bewust een strategie, op basis van doorlooptijden.
- **Ongetoetste veerkracht.** Redundantie bestaat op papier. Test in plaats daarvan het falen van componenten in een veilige omgeving.
- **Wijzigingen zonder prestatiecontroles.** Een release verslechtert de snelheid. Voeg in plaats daarvan controles aan de pipeline toe voor de paden die ertoe doen.
- **Afhankelijkheden vergeten.** Een component van een derde beperkt de hele service. Maak in plaats daarvan een lijst van afhankelijkheden en test ze.
- **De prognose als vast behandelen.** Plannen negeren fouten. Gebruik in plaats daarvan bereiken en vergelijk prognoses met de werkelijkheid.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Doelen en kosten | Doelen zijn informeel of gekopieerd | Sommige services hebben vermelde doelen | Services hebben afgesproken beschikbaarheids-, prestatie- en belastingsdoelen met bekende kosten | Doelen en kosten worden aan uitkomsten getoetst | Doelen worden samen met klanten en leveranciers gesteld en op bewijs bijgesteld |
| Vraag- en capaciteitsplanning | Capaciteit wordt na problemen toegevoegd | Sommige teams prognosticeren bekende pieken | Vraag wordt volgens een cyclus bij de business opgehaald, met een vermelde capaciteitsstrategie | Prognosenauwkeurigheid wordt gevolgd en methoden verbeterd | Planning wordt over teams, leveranciers en de business gecoördineerd |
| Testen | Weinig testen van belasting of falen | Enkele tests vóór grote gebeurtenissen | Load- en faaltests zijn routine voor belangrijke services | Testresultaten sturen gevolgde verbeteringen | Tests worden over afhankelijke services gedeeld en gecoördineerd |
| Monitoring en respons | Problemen worden laat opgemerkt | Enige verzadiging wordt gevolgd | Verzadiging, latentie en fouten worden gemonitord met alarmen vóór grenzen | Trends en drempels worden uit gegevens afgestemd | Signalen en reacties worden over teams en leveranciers gecoördineerd |

## Checklist

- [ ] Elke service heeft vermelde doelen voor beschikbaarheid, prestaties en belasting, met hun bron.
- [ ] We hebben geschat wat het volgende niveau van beschikbaarheid zou kosten.
- [ ] We weten hoe beschikbaarheid voor elke service wordt gemeten en wat als downtime telt.
- [ ] We hebben voor elke belangrijke resource een capaciteitsstrategie gekozen.
- [ ] We ontmoeten de business regelmatig om over verwachte vraag te horen.
- [ ] Verzadiging van belangrijke resources wordt gemonitord met alarmen vóór grenzen.
- [ ] Loadtests zijn uitgevoerd vóór de laatste bekende piek.
- [ ] Het falen van minstens één belangrijke component is in een veilige omgeving getest.
- [ ] Wijzigingen die prestaties of capaciteit beïnvloeden, worden bij review gemarkeerd.
- [ ] Prognoses worden elk kwartaal met de werkelijke vraag vergeleken.

## AI-prompts

**Doel: gemeten gegevens omzetten in een beeld van capaciteitsruimte.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Doel: een hoger beschikbaarheidsdoel prijzen.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een loadtest plannen vóór een bekende piek.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een faaltest ontwerpen.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om de resources te schatten die een service in de loop van de tijd nodig heeft en een strategie te kiezen om ze toe te voegen.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gebruik dit om toekomstige belasting als bereik te schatten uit eerdere gegevens en bedrijfsplannen.
- [load-testing](../../../../skills/load-testing/SKILL.md): gebruik dit om tests te ontwerpen die realistische vraag toepassen vóór een piek.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): gebruik dit om snelheid en resourcegebruik op kritieke paden te controleren als onderdeel van levering.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gebruik dit om te testen of de beschikbaarheid standhoudt wanneer componenten falen.

## Belangrijkste bronnen

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): de economie van beschikbaarheid, meting op basis van verzoeken en het foutbudget.
- **Capacity planning** (Wikipedia): definities en de strategieën lead, lag, match en adjustment.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): de gouden signalen inclusief verzadiging.
- **High availability** (Wikipedia): achtergrond over het ontwerpen van systemen voor continue werking.

## Referenties

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
