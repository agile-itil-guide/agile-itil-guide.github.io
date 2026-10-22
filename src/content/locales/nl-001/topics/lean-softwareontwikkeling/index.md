# Lean softwareontwikkeling

**Lean softwareontwikkeling past de lean ideeën van verspilling elimineren, snel leren en het hele systeem optimaliseren toe op softwarewerk, en geeft serviceteams een gedeelde manier om te zien waar tijd en moeite uit de stroom van verzoek naar waarde weglekken.**

## Waarom dit ertoe doet

Agile methoden zeggen dat je in kleine stappen oplevert en leert. Lean stelt een scherpere vraag: waar gaat de tijd heen? In de meeste serviceorganisaties is de werktijd aan een verzoek een klein deel van de verstreken tijd. De rest is wachten op goedkeuringen, overdrachten tussen teams, herwerk door defecten en werk dat niemand in de eerste plaats wilde. Lean geeft je woorden en hulpmiddelen om die verspilling te zien en te verwijderen.

Lean legt de nadruk ook op het hele systeem. Een team dat zijn eigen deel versnelt terwijl de wachtrij ervoor of erna groeit, heeft voor de klant niets verbeterd. Deze kijk past goed bij servicemanagement. Een service is de som van veel teams, tools en leveranciers, en een vertraging ergens is een vertraging voor de gebruiker. Het principe "optimaliseer het geheel" is een blijvende herinnering om naar de flow van begin tot eind te kijken.

Lean is een bron voor veel van wat elders in deze gids staat. Kanban put uit dezelfde wortels (zie Onderwerp 1.5 — Kanban), waardestroommanagement past lean mapping toe op digitaal werk (zie Onderwerp 5.4 — Waardestroommanagement) en continue verbetering echoot de lean gewoonte van voortdurende kleine winsten (zie Onderwerp 3.15 — Continue verbetering). Dit onderwerp legt de ideeën uit en hoe je ze gebruikt zonder er slogans van te maken.

## Kernconcepten

### Waar lean vandaan komt

Volgens het [Wikipedia-artikel over lean manufacturing](https://en.wikipedia.org/wiki/Lean_manufacturing) groeide lean uit het [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System). Na de Tweede Wereldoorlog hadden Japanse fabrikanten weinig geld, ruimte of grondstof, en Taiichi Ohno en Shigeo Shingo ontwierpen het proces van Toyota opnieuw rond kleine fabrieken en lage voorraad, voortbouwend op de leer van W. Edwards Deming. John Krafcik bedacht de term "lean" in een artikel uit 1988, en James Womack en Daniel Jones definieerden hem formeel in hun boek *Lean Thinking* uit 1996.

De term "lean software development" komt volgens het [Wikipedia-artikel over lean softwareontwikkeling](https://en.wikipedia.org/wiki/Lean_software_development) uit het boek *Lean Software Development: An Agile Toolkit* uit 2003 van Mary en Tom Poppendieck. Het boek past lean-manufacturingprincipes toe op software en vergelijkt lean hulpmiddelen met agile praktijken. De lezingen van de Poppendiecks op agile conferenties hielpen de ideeën in de agile gemeenschap te brengen.

### Vijf principes van lean denken

Womack en Jones stelden vijf principes van lean denken vast, zoals het manufacturing-artikel ze noteert:

1. **Waarde:** definieer waarde vanuit het gezichtspunt van de klant.
2. **Waardestroom:** identificeer de hele reeks stappen die die waarde creëert en daag de stappen uit die er niets aan toevoegen.
3. **Flow:** laat de resterende stappen zonder onderbreking stromen.
4. **Pull:** laat de vraag van de klant het werk door het systeem trekken in plaats van het te duwen.
5. **Perfectie:** blijf verbeteren, zodat verspilling blijft worden verwijderd.

### Zeven principes voor software

Het Wikipedia-artikel over lean softwareontwikkeling noemt zeven principes voor software:

| Principe | Wat het vraagt | In servicewerk |
|---|---|---|
| **Elimineer verspilling** | Verwijder alles wat geen waarde voor de klant toevoegt | Laat goedkeuringen vallen die nooit weigeren, rapporten die niemand leest en functies die niemand gebruikt |
| **Versterk het leren** | Verkort de cyclus van iets proberen tot leren hoe het ging | Geef kleine wijzigingen vrij en kijk wat gebruikers doen |
| **Beslis zo laat mogelijk** | Stel toezeggingen uit tot je feiten hebt, terwijl je opties openhoudt | Leg het ontwerp van de volledige toekomst van een service niet vast voordat je weet hoe ze wordt gebruikt |
| **Lever zo snel mogelijk** | Verkort de tijd van idee naar waarde; snelle levering laat je eerder resultaten zien en analyseren | Verkort het pad voor kleine wijzigingen en routineverzoeken |
| **Geef het team macht** | Laat de mensen die het werk doen erover beslissen | Geef de servicedesk de bevoegdheid veelvoorkomende problemen zonder escalatie op te lossen |
| **Bouw integriteit in** | Bouw kwaliteit in terwijl het werk wordt gedaan, in plaats van achteraf te inspecteren | Geautomatiseerde tests, monitoring en duidelijke runbooks als onderdeel van het werk |
| **Optimaliseer het geheel** | Verbeter de flow van begin tot eind, niet de prestatie van één onderdeel | Meet de tijd van verzoek tot oplossing over teams heen, niet de eigen wachtrij van elk team |

Het artikel zegt dat deze principes alleen slagen wanneer ze samen worden toegepast en met gezond oordeel over de omgeving. Het noemt ook de overtuiging dat "haastige spoed is zelden goed" ("haste makes waste") een mythe, met het argument dat snelle levering teams helpt eerder uitvoer te zien en te analyseren. Die bewering is een opvatting, geen wet: snelheid zonder ingebouwde kwaliteit levert wel verspilling op, daarom staat "bouw integriteit in" naast "lever zo snel mogelijk".

### Verspilling in software en servicewerk

De zeven verspillingen van lean (*muda* genoemd) komen uit de lijst van Shingo voor manufacturing: voorraad, overproductie, overbewerking, transport, overtollige beweging, wachten en defecten. Het lean software-artikel koppelt ze zo aan software:

| Verspilling in manufacturing | Equivalent in software | Voorbeeld in een serviceteam |
|---|---|---|
| Voorraad | Gedeeltelijk gedaan werk | Een lange lijst van gestarte maar onafgemaakte wijzigingen |
| Overproductie | Extra functies | Een rapport of service waar niemand om vroeg |
| Overbewerking | Extra processen | Vier goedkeuringen bij een wijziging met laag risico |
| Transport | Taakwisseling | Een engineer die heen en weer wordt getrokken tussen incidenten en projectwerk |
| Wachten | Wachten | Een ticket dat wacht in de wachtrij van een ander team |
| Beweging | Overdrachten | Een verzoek dat door vijf mensen gaat |
| Defecten | Defecten | Een bug die herwerk en terugkerende incidenten veroorzaakt |

De Japanse termen *mura* (ongelijkmatigheid) en *muri* (overbelasting) worden soms aan discussies over verspilling toegevoegd. De hier geraadpleegde Wikipedia-artikelen noemen alleen de zeven verspillingen, dus gebruik de extra termen voorzichtig en definieer ze wanneer je dat doet.

### Waardestroomkartering

Het lean software-artikel noemt waardestroomkartering (value stream mapping) als de techniek om verspilling te vinden, waarbij verspilling in herhaalde rondes wordt verwijderd. Een kaart toont elke stap in het pad van verzoek tot geleverde waarde, met de tijd dat werk wordt bewerkt en de tijd dat het wacht. Het resultaat is vaak een schok: een pad dat weken duurt, kan uren werkelijk werk bevatten.

### Pull, flow en kanban

Het pull-principe van lean ligt achter de limieten van Kanban op onderhanden werk. Het software-artikel beschrijft just-in-time-ontwikkeling waarin de klant het benodigde resultaat noemt en het team zijn eigen taken organiseert, waarbij het werk trekt zodra er capaciteit is. Kanban-kaarten zijn een zichtbare vorm van die pull (zie Onderwerp 1.5 — Kanban).

### Kaizen: voortdurende kleine verbetering

Kaizen betekent voortdurende, stapsgewijze verbetering. Het manufacturing-artikel voert het terug tot verbeterteams bij Toyota in 1936. In een serviceteam verschijnt het als kleine wijzigingen die vaak worden gemaakt door de mensen die het dichtst bij het werk staan, zoals een herzien sjabloon, een nieuwe geautomatiseerde controle of een duidelijkere overdracht. Het verschilt van grote verbeterprogramma's doordat het nooit op een budgetcyclus wacht.

### Grenzen van lean

De geraadpleegde artikelen noemen geen formele kritiek, maar praktische grenzen zijn bekend. Lean kwam voort uit herhaalbare manufacturing, en kenniswerk varieert veel meer. Het tellen van verspilling kan speling verminderen die een team nodig heeft om met verrassingen om te gaan, zodat een volledig belast team traag reageert op een incident. Behandel lean als een lens die verspilling vindt en houd reservecapaciteit waar de variatie hoog is (zie Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties).

## Goede praktijken

1. **Definieer waarde vanuit de kant van de klant.** Schrijf voor elke service wat de gebruiker daadwerkelijk krijgt en wanneer. Gebruik dit om elke stap te beoordelen: voegt ze waarde toe voor de gebruiker, of dient ze alleen ons eigen proces?
2. **Breng de waardestroom in kaart voor één echt verzoektype.** Kies een veelvoorkomend verzoek of een wijziging en volg haar van het eerste contact tot de levering. Leg werktijd en wachttijd bij elke stap vast. Een ruwe kaart die in een uur is getekend, is nuttiger dan een perfecte die in een kwartaal is getekend.
3. **Benoem de verspillingen die je vindt.** Gebruik de zeven categorieën als checklist: gedeeltelijk gedaan werk, extra functies, extra proces, taakwisseling, wachten, overdrachten, defecten. Ze benoemen maakt het makkelijker erover te praten zonder individuen te beschuldigen.
4. **Pak eerst de langste wachttijd aan.** De grootste vertraging op de kaart zit meestal tussen stappen, niet erin. Haar verminderen verslaat meestal het oppoetsen van een stap die al snel is.
5. **Beperk onderhanden werk.** Werk afronden is sneller dan jongleren. Beperk het aantal open items per team en kijk wat er gebeurt met de tijd die elk kost.
6. **Bouw kwaliteit in.** Voeg controles toe op het moment van werken, zoals geautomatiseerde tests, collegiale toetsing en monitoring vóór release, zodat defecten vroeg worden gevonden. Aan het eind inspecteren is langzamer en duurder.
7. **Stel beslissingen uit die je nog niet goed kunt nemen.** Houd opties open tot je feiten hebt, maar stel een datum vast waarop je beslist. Dit voorkomt zowel vroege vastlegging op een verkeerd ontwerp als eindeloze besluiteloosheid.
8. **Geef de mensen die het dichtst bij het werk staan macht.** Laat servicedeskanalisten, ingenieurs in bereikbaarheidsdienst en ontwikkelaars beslissingen nemen binnen duidelijke grenzen. Noem de grenzen, zoals uitgaven- of risicodrempels, en herzie ze na incidenten.
9. **Kijk naar het geheel, niet naar het deel.** Meet de tijd van begin tot eind van verzoek tot oplossing en bespreek haar met alle betrokken teams. Een wijziging die één team helpt en een ander vertraagt, is geen verbetering.
10. **Maak verbetering klein, frequent en lokaal.** Moedig elk team aan elke week of twee een kleine verbetering door te voeren en te delen wat het leerde. Leg de wijziging en het resultaat vast.
11. **Houd speling waar de variatie hoog is.** Vul niet elk uur van een team in bereikbaarheidsdienst. Laat capaciteit over voor verrassingen en beoordeel die naar hoe snel het team herstelt wanneer er iets misgaat.
12. **Gebruik lean met andere praktijken.** Combineer waardestroomkaarten met flowmaatstaven uit Kanban en met probleemmanagement voor terugkerende defecten (zie Onderwerp 3.3 — Probleemmanagement).

## Vragen om met je team te bespreken

**Als we één veelvoorkomend verzoek van begin tot eind volgden, hoeveel van de verstreken tijd zou werkelijk werk zijn?**

Kies een typisch verzoek en verzamel de datums van elke stap. Markeer de tijd dat iemand eraan werkte en de tijd dat het in een wachtrij zat. De verhouding is vaak een schok. Vraag mensen waar ze de wachttijden verwachtten en waar ze waren. De facilitator weerstaat eerst oplossingen en vraagt de groep het eens te worden over wat de kaart toont.

**Welke van de zeven verspillingen zien we het vaakst in ons dagelijks werk?**

Geef mensen de lijst en vraag om een recent voorbeeld van elk. Verwacht dat gedeeltelijk gedaan werk, taakwisseling, wachten en overdrachten vaak ter sprake komen. Vraag welke het team zelf kan veranderen en welke andere teams of managers nodig hebben. Sluit af door één verspilling te kiezen om deze maand te verminderen.

**Wat doen we dat onze klanten niet zouden missen als we ermee stopten?**

Maak een lijst van rapporten, vergaderingen, formulieren en goedkeuringen. Vraag bij elk wie het gebruikt en wat er gebeurt als het stopt. Sommige zijn nodig voor audit of veiligheid, wat een goede reden is. Andere blijken gewoonte. Wijs iemand aan om elk twijfelachtig item te controleren voordat je het verwijdert.

**Waar inspecteren we kwaliteit aan het eind in plaats van haar in te bouwen?**

Kijk naar je release-, wijzigings- en incidentprocessen op eindcontroles. Vraag welke defecten die controles vinden en wanneer ze eerder hadden kunnen worden gevonden. Typische antwoorden zijn testen nadat de ontwikkeling klaar is en review van documenten achteraf. Kies één controle om eerder te leggen en beschrijf hoe je zult zien of het hielp.

**Wie kan in ons team beslissingen nemen zonder te vragen, en wie zou dat moeten kunnen?**

Vraag mensen de laatste vijf beslissingen te noemen die ze wilden nemen en niet konden, en waarom. Zoek patronen, zoals uitgavenlimieten, wijzigingsgoedkeuringen of prioriteitskeuzes. Vraag wat het veilig zou maken om een van die beslissingen dichter bij het werk te leggen, zoals een vangrail of een review achteraf. Dring niet aan op een ja; het doel is te vinden wat mensen denken nodig te hebben.

**Als alles wat we nu doen sneller werd, wat zou er dan als eerste breken?**

Deze vraag toetst "lever zo snel mogelijk" en "bouw integriteit in" samen. Vraag waar een snellere flow een team, een tool of een persoon zou overbelasten. Typische antwoorden zijn testen, goedkeuringen en bereikbaarheidsbelasting. Behandel de antwoorden als de volgende dingen om te verbeteren. Onthoud dat lean de flow van het hele systeem waardeert, dus de bottleneck is waar je moet investeren.

## In de praktijk: een agile ITIL-voorbeeld

De IT-afdeling van een nationale belastingdienst draait een interne service waarmee medewerkers toegang tot software aanvragen. Een typisch verzoek duurt ongeveer drie weken en medewerkers klagen luid. Het team van vijf dat verzoeken afhandelt, gelooft dat het hard werkt en is verrast door de klacht.

Een manager leidt een sessie waardestroomkartering met het team, de beveiligingsgroep en twee zakelijke gebruikers. Samen volgen ze tien recente verzoeken. Elk verzoek doorloopt acht stappen: indienen van het formulier, goedkeuring door de lijnmanager, goedkeuring door de data-eigenaar, beveiligingsreview, licentiecontrole, ticketstoewijzing, installatie en bevestiging. De kaart toont dat het werkelijke werk ongeveer een uur duurt en bijna alle drie weken wachten tussen stappen is, vooral op de twee goedkeuringen en de beveiligingsreview. In drie van de tien gevallen werd het verzoek teruggestuurd naar de gebruiker door een ontbrekend veld in het formulier.

De groep spreekt drie veranderingen af. Het formulier krijgt verplichte velden en een korte handleiding, wat de retouren wegneemt. Verzoeken voor een korte lijst van veelgebruikte applicaties met laag risico krijgen één goedkeuring van de lijnmanager, waarbij de data-eigenaar wordt geïnformeerd. De beveiligingsgroep gaat ermee akkoord elke week een steekproef van zulke verzoeken te beoordelen, in plaats van elk verzoek vóór installatie. Na twee maanden daalt de typische tijd naar ongeveer een week. Er blijft een moeilijkheid: verzoeken voor gevoelige applicaties duren nog steeds drie weken, en de beveiligingsgroep merkt op dat de steekproef twee verzoeken ving die geweigerd hadden moeten worden. Ze passen de lijst van applicaties voor snelle goedkeuring aan en besluiten haar elk kwartaal te herzien.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams kunnen lean gebruiken om voorbij hun eigen sprint of bord te kijken. Breng het pad van een idee naar de handen van een gebruiker in kaart, inclusief testen, beveiligingsreview en releasegoedkeuringen, en vind waar het werk wacht. Behandel onafgemaakt werk als verspilling en geef de voorkeur aan afronden boven starten.

### Service- en beheerteams

Beheerteams zien dagelijks verspilling: terugkerende incidenten, overdrachten tussen niveaus en verzoeken die heen en weer stuiteren. Gebruik kaarten om te tonen waar werk wacht en gebruik probleemmanagement om de oorzaken van herhalingen weg te nemen. Pleit voor reservecapaciteit door te tonen wat er met de flow gebeurt als elk uur is ingepland.

### Leiderschap en governance

Leiders vormen het systeem dat het meeste verspilling creëert: goedkeuringsregels, financieringscycli en rapportage. Vraag je teams waar die regels de meeste tijd kosten en tegen welk risico elk beschermt. Wees bereid een beheersmaatregel te vervangen door een lichtere controle die hetzelfde doel dient.

### Klanten en gebruikers

Klanten definiëren waarde in lean denken, en zij voelen verspilling als vertraging. Verwacht dat je wordt gevraagd wat je werkelijk nodig hebt en hoe snel. Vertel het team welk deel van een service voor jou het belangrijkst is, want dat stuurt waar de inspanning heen gaat. In ruil daarvoor kun je kortere, voorspelbaardere wachttijden verwachten.

## Veelvoorkomende faalpatronen

- **Capaciteit snijden in naam van verspilling.** Teams draaien op volle belasting en kunnen niet op verrassingen reageren. Houd in plaats daarvan speling waar de variatie hoog is en beoordeel naar hoe snel het team herstelt.
- **Karteren zonder te handelen.** De waardestroomkaart gaat aan een muur en niets verandert. Kies in plaats daarvan de grootste wachttijd en spreek vóór het einde van de sessie één verandering met een eigenaar af.
- **Eén team optimaliseren.** Een lokale winst verschuift de wachtrij elders. Meet in plaats daarvan de tijd van begin tot eind en spreek wijzigingen af met alle teams in de stroom.
- **Beheersmaatregelen verwijderen zonder ze te begrijpen.** Een stap die op verspilling leek, beschermde tegen een echt risico. Vraag in plaats daarvan wat elke stap beschermt en vervang haar waar mogelijk door een lichtere controle.
- **Lean-woorden als slogans gebruiken.** Mensen zeggen "verspilling" om het werk van collega's weg te wuiven. Gebruik de termen in plaats daarvan om de flow te beschrijven en houd het gesprek bij het systeem.
- **Snelheid boven kwaliteit zetten.** Snellere levering produceert meer defecten en herwerk. Behandel in plaats daarvan "bouw integriteit in" als voorwaarde voor snelheid.
- **Manufacturingcijfers toepassen op kenniswerk.** Doelen uit een fabriek passen niet bij variabel werk. Gebruik in plaats daarvan lean als manier om te zien en te vragen en stel maatstaven vast uit je eigen gegevens.
- **Lean behandelen als eenmalig project.** Winst vervaagt wanneer de aandacht verschuift. Maak in plaats daarvan kleine verbeteringen onderdeel van de routine van elk team.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Verspilling zien | Verspilling wordt gevoeld maar niet beschreven | Sommige teams brengen hun eigen werk in kaart | Teams gebruiken gedeelde verspillingscategorieën en waardestroomkaarten | Wachten en herwerk worden langs de waardestroom gemeten | Kaarten en maatstaven doorkruisen teams en leveranciers |
| Flow en pull | Werk wordt geduwd en in bulk gestart | Sommige teams beperken onderhanden werk | Pull-regels en limieten zijn standaard | Flowmaatstaven sturen wijzigingen in limieten en beleid | Flow wordt gecoördineerd over de hele stroom |
| Kwaliteit inbouwen | Kwaliteit wordt aan het eind geïnspecteerd | Sommige teams testen vroeg en toetsen werk | Geautomatiseerde controles en ingebouwde reviews zijn standaard | Ontsnappingspercentages van defecten worden gevolgd en verminderd | Kwaliteitspraktijken worden over teams gedeeld en verbeterd |
| Continue verbetering | Verbetering volgt op crises | Sommige teams maken kleine regelmatige wijzigingen | Elk team heeft een regelmatige verbeterroutine | Verbeteringen worden gevolgd en hun effect gecontroleerd | Verbeteringen verspreiden zich routinematig tussen teams en leveranciers |

## Checklist

- [ ] We hebben voor minstens één service gedefinieerd wat waarde betekent vanuit de kant van de gebruiker.
- [ ] We hebben de waardestroom van één veelvoorkomend verzoektype in kaart gebracht, met werktijd en wachttijd.
- [ ] Het team kan de zeven verspillingen noemen en van elk een recent voorbeeld geven.
- [ ] Onderhanden werk is beperkt en onafgemaakt werk is zichtbaar.
- [ ] Kwaliteitscontroles vinden tijdens het werk plaats en niet alleen aan het eind.
- [ ] We hebben minstens één wachttijd gekozen om te verminderen, met een eigenaar en een datum.
- [ ] Het team heeft duidelijke grenzen voor beslissingen die het zonder te vragen mag nemen.
- [ ] We meten de tijd van begin tot eind van minstens één flow over teams heen.
- [ ] We houden reservecapaciteit voor verrassingen waar de vraag varieert.
- [ ] Elk team maakt en legt in een regelmatig ritme een kleine verbetering vast.

## AI-prompts

**Doel: een waardestroom analyseren uit de tijden die je aanlevert.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Doel: voorbeelden van verspilling uit het werk van je eigen team classificeren.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Doel: toetsen of het veilig is een beheersmaatregel te verwijderen.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Doel: een workshop waardestroomkartering plannen.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-vaardigheden

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gebruik dit om de stappen, werktijd en wachttijd van een verzoek van begin tot eind in kaart te brengen.
- [kaizen](../../../../skills/kaizen/SKILL.md): gebruik dit om kleine, voortdurende verbeteringen te plannen nadat verspilling is gevonden.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gebruik dit om te analyseren hoe werk tussen rollen beweegt en overdrachten en vertragingen te vinden.
- [kanban](../../../../skills/kanban/SKILL.md): gebruik dit om pull en limieten op onderhanden werk toe te passen op de flow die je in kaart hebt gebracht.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gebruik dit wanneer defecten en variatie, niet alleen wachten, het hoofdprobleem zijn en je een gegevensgebaseerde methode nodig hebt om ze te verminderen.

## Belangrijkste bronnen

- **Lean software development** (Wikipedia): de zeven principes, de koppeling van verspillingen en verwijzingen naar verder lezen.
- **Lean manufacturing** (Wikipedia): de geschiedenis van lean bij Toyota, de verspillingen en de vijf principes van lean denken.
- **Lean Software Development: An Agile Toolkit** (Mary en Tom Poppendieck, 2003): het boek dat lean ideeën in de agile gemeenschap bracht.
- **Lean Thinking** (James Womack en Daniel Jones, 1996): de formele beschrijving van de vijf principes van lean.

## Referenties

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
