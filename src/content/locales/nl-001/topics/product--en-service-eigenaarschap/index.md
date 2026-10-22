# Product- en service-eigenaarschap

**Product- en service-eigenaarschap geeft elk product of elke service één verantwoordelijke persoon en één team dat haar bouwt en beheert, zodat beslissingen over waarde, kwaliteit en kosten worden genomen door de mensen die met de gevolgen leven.**

## Waarom dit ertoe doet

In veel organisaties bezit niemand een service als geheel. Een project bouwt haar, een beheerteam draait haar, een leverancier levert een deel en een financiële afdeling betaalt ervoor. Wanneer er iets misgaat, zijn er vier vergaderingen en geen beslissing. Wanneer gebruikers iets verbeterd willen zien, gaat het verzoek naar een wachtrij die van niemand is. De service verkommert tussen teams.

Eigenaarschap pakt dit rechtstreeks aan. Het vraagt twee dingen: een persoon die verantwoordelijk is voor de waarde van het product of de service en een team met de vaardigheden en bevoegdheid om haar te bouwen, te beheren en te verbeteren. Het idee is in sommige vormen oud en in andere in de mode, en de details verschillen sterk tussen organisaties. Het goed doen is een van de belangrijkste voorwaarden om al het andere in deze gids te laten werken.

Twee ideeën liggen achter het onderwerp. Het eerste is de Product Owner van de Scrum Guide, die verantwoordelijk is voor het maximaliseren van de waarde van het product en het ordenen van zijn backlog, en die één persoon is en geen commissie (zie Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven). Het tweede is de slogan "you build it, you run it", geassocieerd met Werner Vogels, de technisch directeur van Amazon, in een interview dat in 2006 in ACM Queue werd gepubliceerd, dat deze gids niet rechtstreeks kon lezen (de pagina gaf een toegangsfout) en uit secundaire beschrijvingen kent. Zoals die beschrijvingen het weergeven, zette Vogels het oude model, waarin ontwikkelaars software over een muur naar beheer gooien, af tegen een model waarin ontwikkelaars dagelijks contact houden met het beheer van hun software en met de klant. Het [Wikipedia-artikel over productmanagement](https://en.wikipedia.org/wiki/Product_management) geeft een algemene beschrijving van de discipline maar zegt niets over de agile rol van product owner of over service-eigenaarschap, dus dit onderwerp doet het verbindende werk en zegt dat.

## Kernconcepten

### Product, service, project

| Term | Betekenis, in gangbaar gebruik | Tijdshorizon |
|---|---|---|
| **Project** | Een tijdelijke inspanning met een gedefinieerde scope, begin en einde | Eindigt wanneer de scope is geleverd |
| **Product** | Iets wat aan klanten of gebruikers wordt aangeboden en in de loop van de tijd wordt ontwikkeld en verbeterd | Gaat door zolang het waarde creëert |
| **Service** | Een manier om waarde aan anderen te leveren zonder dat zij de kosten en risico's bezitten (zie Onderwerp 2.1 — IT-servicemanagement) | Gaat door zolang ze wordt aangeboden |

Een digitaal product is vaak ook een service: gebruikers zijn ervan afhankelijk dat ze goed draait. Het onderscheid tussen product en service doet er minder toe dan de stap van project naar voortdurende verantwoordelijkheid, zoals Onderwerp 1.9 — Agile management beschrijft.

### Productmanagement

Het Wikipedia-artikel beschrijft productmanagement als het bedrijfsproces van het plannen, ontwikkelen, lanceren en beheren van een product of service, zodat producten aan de behoeften van de doelmarkt voldoen en de bedrijfsstrategie ondersteunen over de levenscyclus van het product. Het noemt verantwoordelijkheden van productmanagers: de productlijn dagelijks beheren, de businesscase en levering aan de markt bezitten, klantonderzoek en concurrentie analyseren, eisen documenteren, strategie bepalen en de roadmap maken en afstemmen met ontwerp, ontwikkeling, marketing, verkoop, support en juridische zaken. Het herleidt het concept tot een memo uit 1931 van Neil H. McElroy, president van Procter & Gamble, waarin hij vroeg om "Brand Men" om producten te beheren. Het zegt dat productmanagers vaak worden gemeten op verantwoordelijkheid voor winst en verlies.

Het artikel verbindt productmanagement niet met de agile Product Owner, dus de koppeling is de lezing van deze gids: een Product Owner is verantwoordelijk voor de waarde van het product en ordent de backlog, en in veel organisaties vervult een productmanager de bredere zakelijke rol. In kleine teams kan één persoon beide doen.

### De product owner en de service-eigenaar

| Rol | Verantwoordelijk voor | Typische vragen |
|---|---|---|
| **Product Owner** (Scrum) | De waarde van het product maximaliseren; de Product Backlog ordenen | Wat moeten we hierna bouwen of verbeteren en waarom? |
| **Productmanager** | De businesscase, strategie en roadmap van een product | Is dit het juiste product, voor de juiste markt? |
| **Service-eigenaar** (ITSM-gebruik) | De prestaties en verbetering van een service over haar leven | Voldoet de service aan de behoeften van gebruikers, tegen aanvaardbare kosten en risico? |

De rollen overlappen. Voor een interne IT-service kan één persoon product owner en service-eigenaar zijn. De Scrum Guide benadrukt dat de Product Owner één persoon is, geen commissie, zodat beslissingen over volgorde een duidelijke eigenaar hebben. Welke titel ook, de toets is of één benoemde persoon afwegingen kan maken tussen nieuwe functies, betrouwbaarheid en kosten.

### "You build it, you run it"

Zoals beschreven in secundaire samenvattingen van het interview met Vogels uit 2006, drukt de zin een model uit waarin het team dat een service bouwt haar ook beheert, en zo in dagelijks contact blijft met gebruikers en met de gevolgen van zijn ontwerp. Het interview werd afgenomen door Jim Gray en in 2006 in ACM Queue gepubliceerd; de eigen blog van Amazon noteerde het interview toen het verscheen. Deze gids heeft het origineel niet gelezen, dus citeert het niet. Het model heeft zowel kosten als voordelen:

| Voordeel | Kosten of risico |
|---|---|
| Bouwers voelen de pijn van slechte bedienbaarheid en repareren die | Bouwers dragen belasting door bereikbaarheidsdienst en kunnen uitbranden |
| Kortere feedback van gebruikers en incidenten | Vaardigheden in beheer, beveiliging en compliance moeten in het team bestaan |
| Geen overdracht waarbij kennis verloren gaat | Standaarden over teams heen hebben andere mechanismen nodig |
| Duidelijke verantwoording | Kleine teams vinden de hele belasting misschien te zwaar |

Site reliability engineering en DevOps bieden manieren om zulke teams te ondersteunen (zie Onderwerp 5.2 — DevOps en Onderwerp 5.3 — Site reliability engineering). Platformteams kunnen gemeenschappelijke tools bieden zodat elk productteam ze niet opnieuw bouwt.

### Teams die bezitten

Eigenaarschap vraagt een team met de vaardigheden om te leveren en te beheren en de bevoegdheid om te handelen. Scrum beschrijft een klein cross-functioneel, zelfsturend team dat voor het geheel van zijn werk niet van anderen afhangt. In de praktijk zijn productteams ook afhankelijk van gedeelde platforms, beveiliging en dataservices. Het beheren van die afhankelijkheden is onderdeel van eigenaarschap (zie Onderwerp 1.8 — Agile opschalen).

### Financiering en doelen

Eigenaarschap vraagt stabiele financiering en duidelijke doelen. Een team dat per project wordt gefinancierd, wordt ontbonden wanneer het project eindigt en een service-eigenaar heeft geen team. Een vast team dat voor een product of service wordt gefinancierd, met doelen die veranderen naarmate het leert, is het gebruikelijke antwoord (zie Onderwerp 1.9 — Agile management). Doelen moeten over uitkomsten voor gebruikers en de business gaan en met de eigenaar worden gesteld.

### Eigenaarschap in servicemanagement

ITIL-praktijken hebben eigenaren nodig: elke service heeft een eigenaar, elke praktijk heeft een eigenaar en elk groot proces heeft een eigenaar (zie Onderwerp 5.1 — Agile servicemanagement). De service-eigenaar houdt het serviceniveau, het catalogusitem, de verbeterlijst en de relatie met klanten in handen (zie Onderwerp 3.7 — Servicelevelmanagement en Onderwerp 3.8 — Servicecatalogusmanagement).

### Grenzen en waarschuwingen

De voor deze gids gelezen bronnen bieden geen bewijs over hoe goed eigenaarschapsmodellen werken en het Wikipedia-artikel over productmanagement noemt geen kritiek. Praktische waarschuwingen uit ervaring omvatten eigenaren met een titel en zonder bevoegdheid, eigenaren die met meerdere producten overbelast zijn, "you build it, you run it" zonder ondersteuning wat tot uitputting leidt, en eigenaarschap dat bij de teamgrens stopt terwijl de waardestroom die oversteekt (zie Onderwerp 5.4 — Waardestroommanagement).

## Goede praktijken

1. **Benoem voor elk product of elke service één verantwoordelijke persoon.** Schrijf de naam in de servicecatalogus (ITIL spelt het "service catalogue"). Zorg dat die persoon zeggenschap heeft over prioriteiten en een stem in de financiering.
2. **Definieer wat de eigenaar beslist.** Vermeld welke beslissingen de eigenaar alleen neemt, welke met het team en welke escalatie vragen. Zonder dit is eigenaarschap een titel.
3. **Geef de eigenaar tijd.** Maak geen eigenaren van meerdere grote producten, of eigenaren die ook een volledige leveringsbaan hebben. Eigenaarschap is echt werk.
4. **Financier het team voor de levensduur van de service.** Vermijd teams te ontbinden wanneer projecten eindigen. Review de financiering volgens een regelmatige cyclus aan uitkomsten.
5. **Stel uitkomstdoelen met de eigenaar.** Beschrijf wat beter moet worden voor gebruikers en de business, met een paar maten die het team zelf kan produceren (zie Onderwerp 5.6 — Maatstaven en meten).
6. **Zet bouwen en beheren waar mogelijk in één team.** Neem de vaardigheden voor ontwikkeling, beheer en support op en geef het team binnen veilige grenzen toegang tot productiegegevens en tools. Waar dat niet kan, maak sterke werkafspraken.
7. **Ondersteun het team met een platform.** Bied gedeelde tooling voor deployment, monitoring en beveiliging zodat elk team niet zijn eigen bouwt. Behandel het platform als product met gebruikers.
8. **Deel de belasting door bereikbaarheidsdienst eerlijk.** Beperk nachtelijke oproepen, stem alarmen af en let op burn-out. "You build it, you run it" faalt wanneer de mensen die haar beheren uitgeput zijn.
9. **Houd één backlog per product.** Neem functies, defecten, beheerwerk en verbeteritems op in één geordende lijst, zodat de eigenaar ze tegen elkaar kan afwegen.
10. **Verbind eigenaren met elkaar.** Houd regelmatige gesprekken tussen eigenaren van afhankelijke producten en services om conflicten op te lossen en plannen af te stemmen.
11. **Review eigenaarschap jaarlijks.** Controleer dat elke service nog een actieve eigenaar, een team en een backlog heeft en dat de rollen nog passen.
12. **Houd rekening met kleine teams.** Groepeer, waar één team veel kleine services bezit, ze verstandig en gebruik lichte praktijken. Pas geen zwaar model toe op een kleine service.

## Vragen om met je team te bespreken

**Wie is verantwoordelijk voor elk van onze services en zouden ze dat zelf zeggen?**

Maak een lijst van de belangrijkste services en noem de eigenaar. Vraag dan elke genoemde persoon of ze zichzelf eigenaar zouden noemen. Kloven tussen de lijst en de antwoorden onthullen hoeveel eigenaarschap nominaal is. De facilitator kan vragen welke service geen eigenaar heeft en wat dat heeft gekost.

**Wat kan onze eigenaar vandaag beslissen zonder iemand te vragen?**

Vraag om voorbeelden: prioriteiten, uitgaven, een release, een toezegging aan een klant. Als de meeste beslissingen goedkeuring van anderen vragen, bespreek dan welke moeten worden gedelegeerd en onder welke limieten. Spreek één beslissing af om te verplaatsen.

**Wie wordt gewekt wanneer er iets misgaat in productie en hebben ze de middelen om het te repareren?**

Vraag wie in bereikbaarheidsdienst is en wat ze kunnen wijzigen. Als het niet de bouwers zijn, vraag waarom. Bespreek hoe feedback van incidenten de mensen bereikt die de service ontwerpen. Spreek één route af om te verkorten.

**Hoe financieren we deze service en wat gebeurt er wanneer een project eindigt?**

Volg de financiering voor een belangrijke service. Vraag wie aan verbeteringen kan uitgeven en wie besluit te stoppen. Als het team na een project wordt ontbonden, bespreek dan de kosten van verloren kennis. Stel een proef met vaste financiering voor één service voor.

**Welke vaardigheden missen we om onze service te bouwen en te beheren en hoe zouden we ze kunnen krijgen?**

Maak een lijst van de vaardigheden die het werk nodig heeft: ontwikkeling, beheer, beveiliging, data, support. Markeer gaten. Bespreek pairing, training, een specialist lenen of een gedeeld platform. Kies één gat om te dichten.

**Hoeveel eigenaren vragen we één persoon te zijn?**

Tel de producten en services waarvoor elke eigenaar verantwoordelijk is. Overbelaste eigenaren kunnen geen goede beslissingen nemen. Bespreek splitsen, delegeren of services uitfaseren. Spreek een maximum af en een plan voor een eigenaar die daarboven zit.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal uitvoeringsorgaan voor werk draait een online vacaturematchingservice die door werkzoekenden en werkgevers wordt gebruikt. De service werd door een projectteam gebouwd, aan een beheergroep overgedragen en wordt nu gefinancierd als een reeks kleine projecten. Het hoofd digitale diensten ontdekt dat niemand kan zeggen wie haar bezit: de oorspronkelijke projectsponsor is met pensioen, beheer handelt incidenten af en een beleidseenheid vraagt om wijzigingen via een wachtrij die maanden duurt. Werkgevers klagen over een registratieformulier dat drie jaar niet is veranderd.

Het hoofd benoemt een service-eigenaar uit de eenheid werkgeversrelaties, iemand die zowel werkgevers als de service begrijpt, en geeft haar zeggenschap over de backlog en een deel van het budget. Een vast team van acht, dat ontwikkelaars, een beheerengineer, een tester en een ontwerper combineert, wordt gevormd uit de mensen die al aan de service werkten. Het team sluit aan bij het bereikbaarheidsrooster, met een limiet op nachtelijke oproepen, en gebruikt een gedeeld platform voor deployment en monitoring dat door een centraal team wordt onderhouden. De verzoeken van de beleidseenheid gaan in de ene backlog, waar de eigenaar ze tegen verbeteringen en oplossingen rangschikt. Het team en de eigenaar spreken drie uitkomstdoelen voor het jaar af met een paar maten: het aandeel voltooide registraties van werkgevers, de tijd die werkzoekenden nodig hebben om een match te vinden en het aantal terugkerende incidenten.

Na acht maanden is het registratieformulier herbouwd, verbetert de voltooiing en dalen terugkerende incidenten. De eigenaar kan vragen van werkgevers over wat is gepland beantwoorden. Er blijven moeilijkheden. De eigenaar is ook verantwoordelijk voor een andere kleine service en is overbelast, de beleidseenheid vindt het vervelend dat ze om backlogplekken moet concurreren en de engineers in bereikbaarheidsdienst zeggen dat het gedeelde platform een tool mist die ze nodig hebben. Het hoofd digitale diensten vermindert de andere taken van de eigenaar, vraagt de beleidseenheid en de eigenaar een maandelijkse planningsbijeenkomst op te zetten en zet het platformverzoek op de backlog van het centrale team.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams moeten met een duidelijke eigenaar werken en het beheer van wat ze bouwen op zich nemen. Bied de eigenaar bewijs van gebruikers, incidenten en kosten en wees eerlijk over afwegingen. Vraag om de tools en ondersteuning die je nodig hebt om bereikbaarheidsdienst eerlijk te dragen.

### Service- en beheerteams

Beheerteams ondersteunen productteams met expertise, platforms en gedeelde standaarden. Benoem, waar ze services voor anderen draaien, eigenaren en spreek serviceniveaus af. Weersta het elk operationeel probleem door te geven aan een centrale groep die niets bezit.

### Leiderschap en governance

Leiders scheppen eigenaarschap door eigenaren te benoemen, hun bevoegdheid en tijd te geven en vaste teams te financieren. Vraag eigenaren om uitkomsten en bewijs en onthoud je ervan hun prioriteiten zonder gesprek te overrulen. Let op eigenaren die de titel hebben maar niet de macht.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer ze weten wie voor een service instaat en die kunnen bereiken. Vertel de eigenaar wat het meest telt en wat pijn doet. Verwacht duidelijke informatie over wat is gepland en een stem in hoe prioriteiten worden gesteld.

## Veelvoorkomende faalpatronen

- **Titel zonder bevoegdheid.** Een eigenaar kan niets beslissen. Vermeld in plaats daarvan wat de eigenaar beslist en steun dat.
- **Eigenaarschap door een commissie.** Niemand is verantwoordelijk. Benoem in plaats daarvan één persoon voor elk product of elke service.
- **Overbelaste eigenaren.** Eén persoon bezit te veel producten. Beperk in plaats daarvan het aantal en delegeer.
- **Teams ontbinden na projecten.** Kennis loopt weg. Financier in plaats daarvan vaste teams voor voortdurende services.
- **"You build it, you run it" zonder ondersteuning.** Teams branden uit. Bied in plaats daarvan een platform, gedeelde bereikbaarheidsdienst en afgestemde alarmen.
- **Eigenaarschap dat bij het team stopt.** De waardestroom doorkruist teams. Verbind in plaats daarvan eigenaren van afhankelijke services.
- **Meerdere backlogs.** Functies, defecten en beheer concurreren in verborgen wachtrijen. Houd in plaats daarvan één geordende backlog per product.
- **Een model kopiëren zonder context.** Een patroon van een groot bedrijf wordt op een kleine service toegepast. Pas in plaats daarvan het model aan op omvang en risico.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Verantwoording | Services hebben geen duidelijke eigenaar | Sommige services hebben informele eigenaren | Elke service heeft een benoemde eigenaar met gedefinieerde beslissingsrechten en tijd | Effectiviteit en uitkomsten van eigenaren worden gereviewd | Eigenaren coördineren over afhankelijke services en met klanten |
| Team en vaardigheden | Bouwen en beheren zijn aparte teams | Sommige teams delen bereikbaarheidsdienst | Vaste teams bezitten bouwen en beheren met de vaardigheden die ze nodig hebben | Vaardigheidsgaten en belasting worden gemeten en aangepakt | Vaardigheden en platforms worden over teams en leveranciers gedeeld |
| Financiering en doelen | Financiering gaat per project | Er bestaan enkele vaste teams | Services hebben vaste financiering en uitkomstdoelen | Financiering volgt gemeten uitkomsten | Financiering en doelen zijn over services en met klanten afgestemd |
| Backlog en prioriteiten | Prioriteiten komen uit veel wachtrijen | Sommige eigenaren houden een lijst bij | Eén geordende backlog per product omvat alle soorten werk | Backlogflow en prioriteiten worden met belanghebbenden gereviewd | Prioriteiten zijn over eigenaren en met klanten afgestemd |

## Checklist

- [ ] Elk product of elke service heeft één benoemde, verantwoordelijke eigenaar, vermeld in de servicecatalogus.
- [ ] Wat elke eigenaar alleen, met het team en via escalatie beslist, is opgeschreven.
- [ ] Eigenaren hebben tijd voor de rol en een beheersbaar aantal services.
- [ ] Voor elke voortdurende service is een vast team gefinancierd.
- [ ] Elke service heeft uitkomstdoelen met een paar maten.
- [ ] Het team dat een service bouwt heeft de vaardigheden en toegang om haar te beheren, of heeft duidelijke werkafspraken met wie dat doet.
- [ ] Belasting door bereikbaarheidsdienst wordt eerlijk gedeeld met limieten en afgestemde alarmen.
- [ ] Een gedeeld platform ondersteunt teams met deployment, monitoring en beveiliging.
- [ ] Elk product heeft één geordende backlog voor functies, defecten, beheer en verbetering.
- [ ] Eigenaarschap wordt minstens eenmaal per jaar gereviewd.

## AI-prompts

**Doel: beslissingsrechten voor een product- of service-eigenaar opstellen.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: services zonder duidelijke eigenaar vinden.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Doel: een bereikbaarheidsmodel plannen voor een team dat bouwt en beheert.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een pleidooi voorbereiden voor vaste financiering van een service.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om duidelijk te maken wie elk product of elke service bezit, ondersteunt en wordt geraadpleegd.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): gebruik dit om richting en plannen voor de korte termijn van een product of service te beschrijven.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): gebruik dit om bij de start het doel, de uitkomsten en de grenzen van een team vast te stellen.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): gebruik dit om een eigenaar te helpen de backlog naar waarde en kosten te ordenen.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): gebruik dit om te valideren wat een product of service hierna moet doen voordat je bouwt.

## Belangrijkste bronnen

- **The Scrum Guide** (Ken Schwaber en Jeff Sutherland, scrumguides.org): de definitie van de verantwoordelijkheid van de Product Owner en van het cross-functionele, zelfsturende team.
- **Product management** (Wikipedia): een algemene beschrijving van de discipline, haar verantwoordelijkheden en geschiedenis.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): het interview waarin "you build it, you run it" wordt beschreven; lees het origineel voor de exacte formulering.
- **Site Reliability Engineering** (Google, sre.google): een manier om teams te ondersteunen die beheren wat ze bouwen.

## Referenties

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
