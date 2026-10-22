# Agile opschalen

**Agile opschalen betekent veel teams, services en leveranciers coördineren zonder de korte feedbackloops te verliezen die agile deden werken, en het grootste risico is lagen proces toevoegen voordat je weet welk probleem je oplost.**

## Waarom dit ertoe doet

Eén agile team van maximaal tien mensen kan elke dag met elkaar praten. Een echte service omvat meestal meer: meerdere leveringsteams, een beheergroep, een servicedesk, beveiliging, een netwerkteam en leveranciers. Wanneer het werk van veel groepen in elkaar moet passen, volstaat het dagelijkse gesprek van één team niet en ontstaan nieuwe problemen. Prioriteiten botsen, afhankelijkheden laten werk stilvallen en elk team verbetert zijn eigen deel terwijl de service als geheel niet verbetert.

Verschillende raamwerken beweren dit op te lossen. Ze verschillen in omvang, kosten en filosofie en wekken sterke meningen op. Sommige organisaties voeren een groot raamwerk in als programma en besteden jaren aan de uitrol. Andere schalen op door barrières weg te nemen en een kleine set regels aan te houden. De eerlijke positie, gesteund door het [Wikipedia-artikel over agile softwareontwikkeling](https://en.wikipedia.org/wiki/Agile_software_development), is dat de meningen over de effectiviteit van opschalingsraamwerken verschillen en dat het bewijs beperkt is.

Voor mensen in IT-servicemanagement (ITSM) doet opschalen ertoe omdat ITIL al op schaal werkt. Het beschrijft een servicewaardesysteem dat veel praktijken en partijen verbindt (zie Onderwerp 2.3 — Het ITIL-servicewaardesysteem). De vraag waarbij dit onderwerp helpt, is hoe je de twee combineert: hoe je veel agile teams coördineert terwijl je de servicemanagementpraktijken behoudt die gebruikers beschermen, en zonder een tweede laag bureaucratie bovenop de eerste te bouwen.

## Kernconcepten

### Waarom één team anders is dan veel

Het Wikipedia-artikel over agile softwareontwikkeling meldt dat opschalen uitdagingen meebrengt wanneer een project meer dan ongeveer 20 ontwikkelaars omvat of wanneer teams over locaties zijn verspreid. Er bestaan strategieën en raamwerken voor deze gevallen, maar het artikel noteert tegenstrijdige meningen over de vraag of ze aan de definitie van agile voldoen.

Drie problemen keren terug wanneer je teams toevoegt:

- **Afstemming:** teams hebben een gedeelde richting en consistente prioriteiten nodig, anders optimaliseren ze verschillende dingen.
- **Afhankelijkheden:** werk in het ene team wacht op een ander, en de wachttijden vermenigvuldigen zich naarmate het aantal teams groeit.
- **Integratie:** de uitvoer van veel teams moet samenkomen in iets dat als service werkt, en hoe later je dat test, hoe duurder de verrassingen.

### Vier bekende benaderingen

De volgende tabel vat vier benoemde benaderingen samen. De samenvattingen steunen op de Wikipedia-artikelen en de eigen pagina's van de eigenaren van de raamwerken zoals ze voor deze gids zijn gelezen; controleer de actuele versies bij de bronnen voordat je op details vertrouwt.

| Benadering | Makers of eigenaar | Kernidee | Omvang en vorm |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Eerst beschreven in Dean Leffingwells boek *Scaling Software Agility* uit 2007; materialen gepubliceerd door Scaled Agile, Inc. | Een set organisatie- en workflowpatronen op basis van agile, lean productontwikkeling en systeemdenken | Configuraties van team- en programmaniveau (Agile Release Trains) tot grote oplossingen en portfolio's |
| **Large-Scale Scrum (LeSS)** | Craig Larman en Bas Vodde | Schaal Scrum zelf op: één Product Owner en één Product Backlog voor één product, veel cross-functionele featureteams, met zo min mogelijk extra rollen en artefacten | LeSS voor ongeveer twee tot acht teams; LeSS Huge voor meer, met Requirement Areas van elk meerdere teams |
| **Disciplined Agile (DA)** | Scott Ambler en Mark Lines; in augustus 2019 overgenomen door het Project Management Institute (PMI) | Een toolkit van procesdoelen en opties die een team helpt zijn eigen werkwijze in context te kiezen | Hybride en contextgevoelig, met meerdere levenscycli en een laag voor de onderneming |
| **Scrum@Scale en andere** | Genoemd naast SAFe in het Wikipedia-artikel | Verdere raamwerken voor het coördineren van meerdere Scrum-teams | Zie de sites van de eigenaren |

### SAFe in meer detail

Het Wikipedia-artikel zegt dat SAFe in 2007 voor het eerst formeel werd beschreven, met een eerste release in 2011 en versie 6.0 in maart 2023. Voor versie 5.1 noemt het vier configuraties: Essential SAFe (team- en programmaniveau), Large Solution SAFe, Portfolio SAFe en Full SAFe. Het artikel noemt ook tien principes, waaronder een economische blik en het toepassen van systeemdenken.

SAFe heeft openlijke kritiek gekregen, die het artikel vastlegt. Thoughtworks betoogde dat controle van bovenaf verspilling genereert, Ken Schwaber bekritiseerde het in een bericht uit 2013 en Jeff Gothelf betoogde in 2021 dat SAFe niet agile is. Critici noemen het hiërarchisch en inflexibel en zeggen dat het een organisatie de schijn van wendbaarheid kan geven terwijl oude processen blijven bestaan. Voorstanders waarderen het gemeenschappelijke vocabulaire en de structuur voor grote organisaties. Lees beide kanten voordat je beslist.

### LeSS: opschalen door te verwijderen

Larman en Vodde beschrijven LeSS als Scrum toegepast op veel teams die aan één product werken. Het voegt geen laag aan Scrum toe. Volgens de eigen inleiding van het raamwerk beheert één Product Owner één Product Backlog en leveren de teams één opleverbaar product in een gezamenlijke Sprint. LeSS formuleert een idee van "meer met minder": minder rollen, artefacten en regels leveren verantwoordelijker teams op. Voor de onderliggende methode, zie Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven.

### Disciplined Agile: kies je eigen werkwijze

Het Wikipedia-artikel over Disciplined Agile Delivery beschrijft een mensgerichte, hybride toolkit die de hele leveringslevenscyclus dekt. Het ondersteunt zes levenscycli en beschrijft 21 procesdoelen. De aanpak is teams te helpen praktijken te kiezen die bij hun situatie passen, in plaats van één raamwerk voor te schrijven. Het artikel draagt een onderhoudsmelding dat het mogelijk te veel steunt op bronnen die dicht bij het onderwerp staan.

### Scrum of scrums en eenvoudige coördinatie

Overweeg voordat je een raamwerk invoert eerst de eenvoudigste hulpmiddelen. Een "scrum of scrums" brengt vertegenwoordigers van meerdere teams samen om voortgang te delen en afhankelijkheden op te lossen. Gezamenlijke kwartaalplanning, een gemeenschappelijke backlog voor een product en een regelmatige vergadering van teamleads zijn andere lichte opties. Veel organisaties schalen hiermee goed genoeg op.

### Opschalen in een serviceorganisatie

In een IT-organisatie kunnen teams op verschillende manieren worden georganiseerd, en de keuze beïnvloedt hoe goed agile opschaalt:

| Organisatie | Hoe teams zijn georganiseerd | Effect op opschalen |
|---|---|---|
| **Per component** | Een team per technische laag of systeem | Functies vragen meerdere teams, dus er zijn veel afhankelijkheden |
| **Per functie of product** | Cross-functionele teams die een klantgerichte plak bezitten | Minder afhankelijkheden; vraagt gedeelde standaarden voor platforms |
| **Per service** | Een team per service, dat zijn bouw en beheer bezit | Dicht bij servicemanagement; vraagt een manier om met gedeelde platforms om te gaan |
| **Platform plus stroom** | Teams die een platform leveren en teams die het gebruiken | Vraagt duidelijke serviceafspraken tussen hen |

Geen patroon is voor alles het beste. Van componentteams overstappen naar teams die rond producten of services zijn georganiseerd, is een gangbare stap en is moeilijk te doen omdat het verandert wie aan wie rapporteert.

### Wat onderzoek en kritiek zeggen

Het artikel over agile softwareontwikkeling stelt dat het empirische bewijs voor agile methoden in het algemeen beperkt en niet volledig overtuigend is. Voor opschalingsraamwerken bieden de geraadpleegde bronnen vooral meningen en leveranciersmateriaal. Behandel elke bewering van gemeten verbetering met zorg, vraag naar het bewijs erachter en test elk raamwerk eerst op een klein deel van je organisatie.

## Goede praktijken

1. **Begin bij het probleem, niet bij het raamwerk.** Benoem wat er misgaat: trage afhankelijkheden, botsende prioriteiten, late integratie. Kies de lichtste aanpak die het aanpakt en voer meer alleen in als die tekortschiet.
2. **Probeer eerst de eenvoudigste coördinatie.** Gedeelde planning, een scrum of scrums en een gemeenschappelijke backlog voor elk product lossen veel problemen op tegen lage kosten. Voeg alleen structuur toe wanneer deze ophouden te werken.
3. **Organiseer teams rond waarde.** Geef de voorkeur aan teams die een product of service van begin tot eind bezitten, met de vaardigheden om te bouwen en te beheren. Dit vermindert overdrachten en afhankelijkheden en sluit aan bij hoe ITIL over services denkt (zie Onderwerp 2.6 — De servicewaardeketen).
4. **Houd één geordende lijst per product.** Eén productbacklog met één verantwoordelijke eigenaar, zoals LeSS aanbeveelt, neemt veel van de conflicten tussen teams weg. Waar dit niet mogelijk is, maak de volgorde van prioriteiten over teams heen zichtbaar.
5. **Plan samen in een regelmatig ritme.** Breng teams en belangrijke belanghebbenden om de paar maanden samen om doelen, afhankelijkheden en risico's af te stemmen. Houd het evenement kort en op bewijs gebaseerd en voorkom dat het een onderhandeling over gedetailleerde plannen wordt.
6. **Integreer continu.** Test de uitvoer van alle teams zo vaak mogelijk samen, bij voorkeur elke dag. Late integratie is de meest voorkomende reden waarom grote programma's hun sponsors verrassen (zie Onderwerp 1.6 — Extreme Programming).
7. **Maak afhankelijkheden zichtbaar en verminder ze.** Maak een lijst van welke teams op welke wachten en tel de wachttijden. Verminder ze door teamgrenzen te wijzigen, vaardigheden te delen of gedeelde platforms met duidelijke interfaces te bouwen.
8. **Definieer serviceafspraken tussen teams.** Waar het ene team een platform of service aan een ander levert, spreek af wat er wordt verwacht: beschikbaarheid, reactie, supporttijden en hoe je om wijzigingen vraagt (zie Onderwerp 3.7 — Servicelevelmanagement).
9. **Pas aan en schrijf op wat je hebt veranderd.** Welk raamwerk je ook invoert, leg vast welke delen je volgt, welke je weglaat en waarom. Eerlijke etiketten voorkomen de situatie waarin een hybride wordt beoordeeld tegen een raamwerk dat ze nooit wilde volgen.
10. **Pilot voordat je uitrolt.** Probeer de aanpak met een paar teams, meet de resultaten waar je om geeft en leer. Breid haar pas uit wanneer de pilot een voordeel toont dat je kunt beschrijven.
11. **Houd governance licht en gebaseerd op uitkomsten.** Vraag om bewijs zoals leveringsflow, incidenttrends en gebruikersfeedback, en niet om statusrapporten die elk team in een ander formaat schrijft (zie Onderwerp 5.7 — Governance, risico en compliance).
12. **Herzie de structuur regelmatig.** Houd een of twee keer per jaar een review om te vragen of teamgrenzen, rollen en ceremonies het werk nog dienen. Structuren die goed waren voor 30 mensen kunnen verkeerd zijn voor 300.

## Vragen om met je team te bespreken

**Welk probleem verwachten we met opschalen op te lossen, en hoe weten we dat het is opgelost?**

Vraag mensen de pijn te noemen: late integratie, botsende prioriteiten, lange wachttijden op andere teams. Schrijf elk op met een recent voorbeeld. Een raamwerk dat zonder genoemd probleem wordt gekozen, is een oplossing die een probleem zoekt. De facilitator kan vragen wat de eenvoudigst mogelijke oplossing voor elk probleem zou zijn en welk bewijs zou tonen dat het werkte.

**Op welke andere teams wachten we het meest, en hoe lang wachten we?**

Breng de afhankelijkheden op een muur in kaart en voeg de typische wachttijd voor elk toe. Teams die zichzelf als onafhankelijk zagen, zijn vaak verrast. Vraag welke afhankelijkheden echt zijn en welke voortkomen uit historische teamgrenzen. Kies één afhankelijkheid om te verwijderen, door de organisatie van teams te veranderen of door vaardigheden te delen.

**Wie beslist over de volgorde van het werk over onze teams heen, en hoe komen we daarachter?**

Volg een recent prioriteitenconflict van begin tot oplossing. Zoek naar escalaties, vergaderingen en informele deals. Vraag of één verantwoordelijk persoon, zoals in LeSS, de knoop kon doorhakken. Overweeg wat er zou worden verloren of gewonnen. Een goed resultaat is een duidelijke route om conflicten te beslissen, ook als het geen nieuwe rol is.

**Wat zou een raamwerk als SAFe, LeSS of Disciplined Agile ons geven wat we niet goedkoper kunnen krijgen?**

Vraag iemand die over elk heeft gelezen het in een paar zinnen uit te leggen en vraag naar de sterkste kritiek. Het Wikipedia-artikel over SAFe noemt er verschillende en de sites van de eigenaren van de raamwerken noemen voordelen. Een facilitator houdt de discussie praktisch: wat zouden we maandag doen als we het invoerden, en wie zou wat moeten veranderen? Beslis wat je gaat proberen, indien iets, en wat je laat zoals het is.

**Hoe toetsen we dat het werk van al onze teams in elkaar past, en hoe vaak?**

Tel de dagen tussen een wijziging van één team en haar eerste test met de wijzigingen van alle anderen. Langere gaten betekenen grotere verrassingen. Vraag wat dagelijkse integratie belet, zoals omgevingen, testdata of eigenaarschap. Kies één barrière om te verwijderen.

**Welke van onze beheersmaatregelen gelden voor elk team op dezelfde manier, en welke zouden van het risico moeten afhangen?**

Maak een lijst van standaardbeheersmaatregelen, zoals reviews, goedkeuringen en rapportage. Vraag welke worden aangepast voor werk met laag risico. Uniforme beheersmaatregelen zijn eenvoudig te beheren en traag voor iedereen. Beheersmaatregelen die van risico afhangen, hebben duidelijke criteria nodig. Kies één beheersmaatregel om te herzien.

## In de praktijk: een agile ITIL-voorbeeld

De IT-groep van een grote retailbank heeft 14 leveringsteams en een centrale beheergroep. Elk team heeft Scrum ingevoerd, maar de klanten van de bank zien weinig verbetering. Releases voor de mobiele bankapp vragen wijzigingen van vijf teams, en elke release wordt gecoördineerd door een programmabureau dat afhankelijkheden in een spreadsheet bijhoudt. Een recente release liep drie weken vertraging op omdat twee teams op het laatste moment ontdekten dat hun wijzigingen onverenigbaar waren.

Een architect en het hoofd beheer voeren een studie uit van zes maanden releases. Ze zien dat de meeste vertragingen komen van late integratie en van onduidelijke prioriteiten tussen de teams die een backlog van mobiele functies delen. Ze overwegen een groot raamwerk in te voeren, maar besluiten klein te beginnen. Ze maken één backlog voor de mobiele app met één verantwoordelijke product owner en voegen de planning van de vijf teams samen in een gezamenlijke sessie elke zes weken. Ze zetten een gedeelde pipeline op die elke nacht alle wijzigingen van de teams samen bouwt en test, en ze voegen de beheergroep toe aan de gezamenlijke planningssessie.

Na twee kwartalen daalt het aantal onverenigbaarheden op het laatste moment en komen releases om de twee weken. Sommige problemen blijven. De product owner worstelt met het volume aan verzoeken en besteedt het grootste deel van haar tijd aan arbitrage, en twee teams hangen nog af van een centraal databaseteam met een lange wachtrij. De bank besluit de wachtrij van het databaseteam zichtbaar te maken in de gezamenlijke planning en een self-service-route voor veelvoorkomende databasewijzigingen te proberen. Ze besluit ook elke beslissing over een raamwerk uit te stellen tot een tweede productgebied dezelfde aanpak heeft geprobeerd.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams dragen het grootste deel van de last van opschalen: gedeelde planning, gedeelde pipelines en afspraken met buren. Werk eraan afhankelijkheden aan de bron te verminderen, door de vaardigheden van het volgende team te leren of door interfaces te bouwen die geen coördinatie vragen. Neem deel aan planningsevenementen met echte informatie over voortgang en risico.

### Service- en beheerteams

Beheerders moeten vanaf het begin deel zijn van de planning, omdat veel afhankelijkheden tussen teams operationeel zijn: omgevingen, toegang, monitoring en support. Breng servicegegevens mee naar de planningssessie en spreek servicelevels af met de teams die van je afhangen. Pleit voor platforms die leveringsteams self-service geven.

### Leiderschap en governance

Leiders vormen de structuur die bepaalt hoe goed opschalen werkt. Weersta de verleiding een raamwerk te kopen als vervanging voor beslissen wat de organisatie wil zijn. Vraag om een duidelijke formulering van het probleem, een pilot en bewijs. Houd rapportage licht en accepteer dat structuurwijzigingen ongemakkelijk kunnen zijn voor managers.

### Klanten en gebruikers

Klanten zouden één samenhangende service moeten zien en niet de naden tussen teams. Verwacht één aanspreekpunt voor een product en een duidelijke route voor verzoeken. Vertel de product owner wat het belangrijkst is en verwacht dat het antwoord afwegingen tussen concurrerende eisen omvat.

## Veelvoorkomende faalpatronen

- **Een raamwerk kopen om een beslissing te vermijden.** Een organisatie voert een raamwerk in in de hoop dat het meningsverschillen over prioriteiten oplost. Beslis in plaats daarvan wie gezag heeft over prioriteiten en kijk dan welk raamwerk, indien enig, helpt.
- **Een diagram kopiëren.** Rollen en vergaderingen worden toegevoegd zonder de redenen te begrijpen. Neem in plaats daarvan alleen de elementen over die een genoemd probleem aanpakken.
- **Lagen toevoegen.** Coördinatoren, programmabureaus en commissies vermenigvuldigen zich terwijl teams autonomie verliezen. Verwijder in plaats daarvan afhankelijkheden zodat er minder te coördineren valt.
- **Late integratie.** Teams integreren aan het eind van een lange cyclus. Integreer en test in plaats daarvan alle wijzigingen dagelijks samen.
- **Uniforme beheersmaatregelen.** Elk team volgt hetzelfde zware proces, wat het risico ook is. Baseer beheersmaatregelen in plaats daarvan op risico en maak paden met laag risico snel.
- **Beheer negeren.** De planning omvat ontwikkelaars en productmanagers maar geen beheerders. Neem beheer in plaats daarvan op in de gezamenlijke planning en deel servicegegevens.
- **Een hybride beoordelen tegen het raamwerk.** Critici zeggen dat het niet het raamwerk is en voorstanders zeggen van wel. Geef je aanpak in plaats daarvan een eigen naam en beschrijf haar.
- **De structuur nooit herzien.** Grenzen getrokken bij 30 mensen blijven bij 300. Herzie in plaats daarvan de team- en rolstructuur minstens jaarlijks.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Afstemming en prioriteiten | Elk team stelt zijn eigen prioriteiten | Sommige teams delen een backlog of overleggen om af te stemmen | Producten hebben één geordende backlog en gezamenlijke planning in een regelmatig ritme | Afstemming wordt aan uitkomsten getoetst en afhankelijkheden worden gemeten | Prioriteiten worden voortdurend aangepast over teams, klanten en leveranciers |
| Afhankelijkheden | Wachttijden op andere teams worden niet beheerd | Sommige teams noemen hun afhankelijkheden | Afhankelijkheden zijn zichtbaar en er bestaan afspraken tussen teams | Wachttijden voor afhankelijkheden worden gemeten en verminderd | Teamgrenzen worden op bewijs herschikt om afhankelijkheden te verwijderen |
| Integratie | Integratie gebeurt aan het eind | Sommige teams integreren vaker | Gedeelde pipelines integreren en testen ieders wijzigingen frequent | Integratiefouten en hun oorzaken worden gevolgd en opgelost | Integratieomgevingen en tests worden over teams gedeeld en verbeterd |
| Governance en structuur | Beheersmaatregelen zijn uniform en traag | Sommige paden met laag risico bestaan | Beheersmaatregelen variëren naar risico met duidelijke criteria | Uitkomsten en effectiviteit van beheersmaatregelen worden gereviewd | Structuur en beheersmaatregelen worden routinematig in de hele organisatie gereviewd en aangepast |

## Checklist

- [ ] We kunnen in één zin het probleem noemen dat opschalen moet oplossen.
- [ ] We hebben de afhankelijkheden tussen onze teams in kaart gebracht en kennen de typische wachttijd van elk.
- [ ] Elk product heeft één geordende backlog met één verantwoordelijke eigenaar.
- [ ] Teams en belangrijke belanghebbenden plannen samen in een regelmatig ritme.
- [ ] De uitvoer van alle teams wordt minstens dagelijks samen gebouwd en getest.
- [ ] Teams die platforms of services aan anderen leveren, hebben schriftelijke serviceafspraken.
- [ ] Beheerders nemen deel aan de planning over teams heen.
- [ ] Beheersmaatregelen variëren met het risico en het pad met laag risico is snel.
- [ ] Elk raamwerk dat we invoeren, is eerst op kleine schaal gepilot.
- [ ] We hebben opgeschreven welke delen van een raamwerk we volgen en welke niet.
- [ ] De structuur van teams en rollen wordt minstens eens per jaar gereviewd.

## AI-prompts

**Doel: afhankelijkheden tussen teams in kaart brengen uit een beschrijving van recent werk.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Doel: opschalingsopties vergelijken met een genoemd probleem.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een gezamenlijke planningssessie voor meerdere teams plannen.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een afspraak opstellen tussen een platformteam en de teams die het gebruiken.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): gebruik dit om de rollen, gebeurtenissen en niveaus van SAFe te begrijpen en te beoordelen welke delen je nodig hebt.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): gebruik dit om Scrum toe te passen op meerdere teams die aan één product werken.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): gebruik dit om praktijken per procesdoel te kiezen voor je context.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): gebruik dit als lichte manier om een paar teams te coördineren voordat je een raamwerk invoert.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gebruik dit om te beslissen hoe een aantal producten en initiatieven wordt gekozen en gefinancierd.

## Belangrijkste bronnen

- **Scaled agile framework** (Wikipedia): een overzicht van de geschiedenis, configuraties en kritiek op SAFe met bronvermeldingen.
- **Introduction to LeSS** (less.works): de korte beschrijving door de makers van Large-Scale Scrum en haar idee van "meer met minder".
- **Disciplined agile delivery** (Wikipedia): een samenvatting van de toolkit, haar levenscycli en doelen.
- **Agile software development** (Wikipedia): de sectie over grootschalig, offshore en gedistribueerd werk en de discussie over tegenstrijdige meningen over opschalingsraamwerken.

## Referenties

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
