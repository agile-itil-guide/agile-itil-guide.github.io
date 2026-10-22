# Continue verbetering

**Continue verbetering is de gewoonte om services en werkwijzen telkens een beetje beter te maken, en ze wordt pas echt wanneer verbeterwerk zichtbaar, bezeten, ingepland en gecontroleerd is, zoals elk ander werk.**

## Waarom dit ertoe doet

Elke praktijk in deze gids eindigt op dezelfde plek: leren van wat er gebeurde en iets veranderen. Incidenten leiden tot problemen, problemen leiden tot oplossingen, retrospectives leiden tot experimenten en reviews van serviceniveaus leiden tot nieuwe doelen. Continue verbetering is de praktijk die ze verbindt en in beweging houdt. Zonder haar levert elke praktijk inzicht op waar niemand iets mee doet.

In veel organisaties is verbetering het eerste dat wordt weggedrukt. Leveringsdruk vult elke dag en verbeterideeën stapelen zich op in een document dat niemand opent. Agile teams hebben een voorsprong, omdat retrospectives zijn ingebouwd, maar retrospectives die geen verandering opleveren zijn gebruikelijk. De toets van een praktijk van continue verbetering is eenvoudig: kun je drie dingen noemen die dit kwartaal beter zijn dankzij haar?

Het [Wikipedia-artikel over het continual improvement process](https://en.wikipedia.org/wiki/Continual_improvement_process) beschrijft het als een voortdurende inspanning om producten, services of processen te verbeteren, incrementeel of baanbrekend, met feedback, efficiëntie en evolutie in kleine stappen als kernkenmerken. Het [artikel over PDCA](https://en.wikipedia.org/wiki/PDCA) beschrijft de plan-do-check-act-cyclus achter veel verbetermethoden. Beide zijn algemeen. ITIL behandelt continue verbetering als onderdeel van het servicewaardesysteem (zie Onderwerp 2.3 — Het ITIL-servicewaardesysteem) en als praktijk, maar de tekst van de eigenaar van het raamwerk was niet beschikbaar voor deze gids, dus dit onderwerp beschrijft het verbetermodel van ITIL niet in detail.

## Kernconcepten

### Wat het is

Volgens Wikipedia is een continual improvement process (CIP), ook continue verbetering genoemd, een voortdurende inspanning om producten, services of processen te verbeteren. Het artikel beschrijft het als een metaproces voor managementsystemen zoals kwaliteits-, project- en programmamanagement, met drie kernkenmerken: feedback, efficiëntie en evolutie in kleine, incrementele stappen. Het schrijft W. Edwards Deming als pionier toe, die CIP zag als onderdeel van een systeem dat proces en klantfeedback beoordeelt aan de hand van organisatiedoelen.

### Continual of continuous

Het artikel merkt een terminologiepunt op: eind jaren negentig veranderden de ontwikkelaars van ISO 9001:2000 "continuous" in "continual", naar verluidt omdat het comité de voorkeur gaf aan stapsgewijze verbetering en dacht dat "continuous" minuut-tot-minuutverandering kon impliceren. ITIL gebruikt "continual". In de praktijk worden de termen door elkaar gebruikt. Wat telt is regelmatige, herhaalde verbetering.

### Kaizen

**Kaizen** is een Japanse term die grofweg "verandering ten goede" betekent. Volgens het artikel maakte het boek *Kaizen: The Key to Japan's Competitive Success* van Masaaki Imai uit 1986 het populair, en de kenmerken zijn onder meer veel kleine veranderingen, ideeën van bestaande medewerkers, lage kosten en eigenaarschap van medewerkers. Dit past bij agile teams, waar de mensen die het werk doen het best geplaatst zijn om te zien wat te verbeteren (zie Onderwerp 1.7 — Lean softwareontwikkeling).

### De PDCA-cyclus

PDCA (plan, do, check, act) is, in de woorden van Wikipedia, een iteratieve methode om processen en producten te beheersen en voortdurend te verbeteren. Het wordt ook de Shewhart-cyclus genoemd, naar Walter Shewhart van Bell Telephone Laboratories in de jaren twintig; W. Edwards Deming paste haar in de jaren veertig aan en paste haar in de jaren vijftig toe op management in Japan. De stappen:

| Stap | Wat je doet |
|---|---|
| **Plan** | Stel doelstellingen vast en de processen die nodig zijn om de gewenste resultaten te leveren |
| **Do** | Voer het plan uit, bij voorkeur op kleine schaal |
| **Check** | Vergelijk de verzamelde gegevens met de verwachte uitkomsten en zoek trends |
| **Act** | Onderzoek grondoorzaken van problemen, pas het proces aan en begin de volgende cyclus |

Het artikel verbindt PDCA met de wetenschappelijke methode en haar patroon van hypothese, experiment en evaluatie. Een variant, PDSA, vervangt "check" door "study", wat Deming verkoos. Het artikel zegt dat iteratie centraal staat: elke cyclus verfijnt kennis. Teams die een wijziging een "experiment" noemen met een vermelde verwachting en een controle, gebruiken dit patroon.

### Waar verbetering vandaan komt

Verbeterideeën komen in een serviceorganisatie van veel plekken:

| Bron | Voorbeeld | Waar het wordt behandeld |
|---|---|---|
| Incidenten en postmortems | Een fout toont een ontbrekend alarm | Onderwerp 3.2 — Incidentmanagement |
| Probleemonderzoek | Herhaalde storingen tonen een ontwerpfout | Onderwerp 3.3 — Probleemmanagement |
| Thema's van de servicedesk | Dezelfde vraag komt wekelijks terug | Onderwerp 3.1 — Servicedesk |
| Retrospectives | Het team vindt zijn overdracht traag | Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven |
| Flowgegevens | Een wachtrij groeit bij één stap | Onderwerp 1.5 — Kanban |
| Klantfeedback | Gebruikers vinden een formulier verwarrend | Onderwerp 3.6 — Servicerequestmanagement |
| Servicelevelreviews | Een doel wordt herhaaldelijk gemist | Onderwerp 3.7 — Servicelevelmanagement |
| Audits en risicoreviews | Een beheersmaatregel blijkt zwak | Onderwerp 5.7 — Governance, risico en compliance |

De praktijk van continue verbetering verzamelt deze in één zichtbare lijst, kiest wat te doen en controleert de resultaten.

### Verbetering als werk

De centrale discipline is verbetering als werk behandelen: items in een backlog met eigenaren, verwachte voordelen en data. Zonder dat hangt verbetering af van enthousiasme en vrije tijd. Het betekent ook dat de afweging met leveringswerk openlijk wordt gemaakt, zodat capaciteit bewust wordt beschermd. Een gangbare regeling is een deel van elke cyclus voor verbetering te reserveren, of korte verbetercycli naast levering te draaien.

### Verbetering meten

Om te weten dat iets verbeterde, heb je een voor en na nodig. Kies een maat die bij de verandering hoort, zoals tijd om de service te herstellen, terugkerende incidenten of wachttijd, en kijk er voor en na naar. Vermijd maten die makkelijk te verschuiven zijn zonder iets te verbeteren. Gebruik er meerdere en bespreek wat de getallen betekenen (zie Onderwerp 5.6 — Maatstaven en meten). De geraadpleegde artikelen geven geen bewijs over de effectiviteit van verbeterprogramma's, dus de eigen resultaten van de teams zijn het bewijs.

### Methoden

Veel methoden ondersteunen verbetering: root cause analysis, Six Sigma en DMAIC voor datagedreven vermindering van defecten, waardestroomkartering en kaizen-events. Het Wikipedia-artikel over continue verbetering noemt Six Sigma, DMAIC of het ITIL-verbetermodel niet, dus deze gids schrijft ze er niet aan toe. Kies methoden die passen bij de omvang van het probleem: een retrospectiveactie voor kleine wrijving, een datagedreven project voor een hardnekkig defect.

### Grenzen

Het artikel legt geen kritiek op continue verbetering vast en sommige van zijn bronnen zijn zwak of gedateerd. Praktische risico's zijn bekend: verbetermoeheid wanneer er te veel veranderingen komen, verbetertheater waarbij lijsten groeien en niets verandert, en lokale optimalisatie waarbij één team zijn deel verbetert en het geheel verslechtert. Bescherm je daartegen met een korte, zichtbare lijst en een regelmatige controle van resultaten.

## Goede praktijken

1. **Houd één zichtbare verbeterlijst bij.** Verzamel ideeën uit incidenten, retrospectives, feedback en reviews op één plek. Geef elk item een eigenaar, het probleem dat het aanpakt en het verwachte voordeel.
2. **Behandel verbeteritems als werk.** Zet ze in de backlog naast leveringsitems en beslis bij de planning hoeveel capaciteit ze krijgen. Bescherm dat deel wanneer de druk stijgt.
3. **Kies er weinig en maak ze af.** Werk aan de één tot drie meest waardevolle items tegelijk. Een lange lijst van begonnen items is een teken van verbetertheater.
4. **Gebruik de cyclus.** Vermeld voor elke wijziging het plan en het verwachte resultaat, voer de wijziging op kleine schaal door, controleer de gegevens en beslis of je haar overneemt, aanpast of laat vallen. Schrijf de beslissing op.
5. **Definieer succes voordat je begint.** Kies de maat en wat je verwacht te zien vóór de wijziging. Dit voorkomt dat achteraf elk resultaat als succes wordt uitgelegd.
6. **Begin klein en lokaal.** Laat teams hun eigen werk verbeteren zonder op toestemming te wachten, binnen duidelijke grenzen. Bewaar grotere programma's voor problemen die teams overstijgen.
7. **Deel wat je leert.** Publiceer korte notities over wat er veranderde en wat er gebeurde, ook over mislukkingen. Andere teams kunnen het hergebruiken of vermijden.
8. **Kijk naar het hele systeem.** Vraag vóór je een verbetering overneemt wie erdoor wordt geraakt. Een lokale winst die voor een ander team werk toevoegt, is geen verbetering in zijn geheel (zie Onderwerp 2.4 — De ITIL-leidende principes over holistisch denken).
9. **Review de lijst regelmatig.** Bekijk eens per maand de lijst met het team en de service-eigenaar: wat is gedaan, wat zit vast, wat moet worden geschrapt. Verwijder items die hun zin hebben verloren.
10. **Vier resultaten, geen activiteit.** Erken verbeteringen die dingen beter maakten voor gebruikers of personeel, met bewijs. Beloon niet het aantal ideeën of bijeenkomsten.
11. **Stem methode af op probleem.** Gebruik snelle experimenten voor kleine problemen, datagebaseerde methoden voor hardnekkige defecten en haal gespecialiseerde hulp erbij voor complexe.
12. **Betrek gebruikers en leveranciers.** Vraag hen wat te verbeteren en nodig hen uit resultaten te reviewen waar ze erdoor geraakt worden (zie Onderwerp 3.14 — Leveranciersmanagement).

## Vragen om met je team te bespreken

**Wat werd het afgelopen kwartaal beter dankzij iets wat we besloten te veranderen?**

Vraag om specifieke voorbeelden met bewijs. Als mensen moeite hebben, is dat de bevinding. Als er voorbeelden zijn, vraag dan wat ze deed werken: een eigenaar, tijd, een duidelijke maat. Vergelijk met verbeteringen die vastliepen. De facilitator kan vragen welk patroon in jouw team vaker voorkomt.

**Waar gaan onze verbeterideeën heen?**

Volg meerdere recente ideeën: uit een incidentreview, een retrospective, een klantopmerking. Ontdek waar elk terechtkwam. Vaak zijn ze verspreid over documenten en tickets. Bespreek één lijst, wie haar onderhoudt en hoe ze wordt gereviewd. Maak in de sessie de eerste versie.

**Hoeveel van onze capaciteit gaat naar verbetering en wie besliste dat?**

Kijk naar de laatste paar cycli en schat het aandeel. Vaak is het veel kleiner dan mensen geloven en heeft niemand het gekozen. Vraag wat het team en managers denken dat het moet zijn. Spreek een startaandeel af en een manier om het te beschermen.

**Welke van onze wijzigingen hebben we achteraf gecontroleerd?**

Vraag naar de laatste drie wijzigingen en welk bewijs liet zien dat ze werkten. Veel werden nooit gecontroleerd. Bespreek een eenvoudige gewoonte: stel vóór de wijziging vast wat je verwacht te zien en wanneer je gaat kijken. Kies een lopende wijziging om het op toe te passen.

**Welke verbetering hielp ons en schaadde een ander?**

Verzamel voorbeelden van lokale verbeteringen die een probleem elders neerlegden. Die komen vaak van wijzigingen in overdrachten of goedkeuringen. Bespreek hoe getroffen mensen eerder te vragen. Het doel is een eenvoudige vraag om te stellen vóór een wijziging.

**Wat is het oudste item op onze verbeterlijst en waarom staat het er nog?**

Kies het oudste item en volg zijn geschiedenis. Redenen zijn onder meer geen eigenaar, geen tijd, onenigheid of ingehaald door gebeurtenissen. Beslis het te doen, in te plannen of openlijk te laten vallen. Een item bewust laten vallen is een teken van een gezonde lijst.

## In de praktijk: een agile ITIL-voorbeeld

Een regionaal waterbedrijf heeft een platform voor klantfacturatie en meteropname dat door een team van elf wordt beheerd. Retrospectives worden om de twee weken gehouden en leveren lijsten met acties op, maar weinige worden voltooid. Incidenten worden gereviewd en acties uit die reviews worden in een apart systeem opgeslagen. De toezichthouder van het bedrijf heeft gevraagd om bewijs van hoe het bedrijf van servicefalen leert.

De service-eigenaar en de teamlead besluiten verbetering zichtbaar te maken. Ze maken één verbeterlijst die acties uit retrospectives, incidentreviews en klantfeedback verzamelt. Elk item heeft een eigenaar, een omschrijving van het probleem, het verwachte voordeel en een maat. Ze reserveren 15 procent van elke tweewekelijkse cyclus voor verbeteritems en begrenzen het aantal in uitvoering op drie. Voor elk volgen ze plan, do, check en act: ze schrijven op wat ze verwachten te zien, proberen de wijziging op een deel, kijken na een vaste periode naar de getallen en leggen de beslissing vast. Een maandelijkse review met de service-eigenaar en een vertegenwoordiger van de klantenservice kijkt naar wat is gedaan en wat is geleerd.

Na zes maanden heeft het team negen items voltooid, waaronder een oplossing voor een terugkerende storing bij het importeren van meterdata die terugkerende incidenten met die oorzaak tot bijna nul bracht, en een duidelijkere uitleg op de rekening die telefoontjes over dat onderwerp verminderde. Het heeft ook bewijs voor de toezichthouder in de vorm van de lijst en de controles. Er blijven moeilijkheden. Twee items werden voltooid zonder te worden gecontroleerd omdat de cyclus verderging, en één verbetering van het importproces maakte het werk van een downstream-rapportageteam trager, wat pas een maand later aan het licht kwam. Het team voegt een vraag "wie wordt er nog meer geraakt" aan het lijstsjabloon toe en een agendaherinnering voor elke controle.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams bezitten een groot deel van de verbeterlijst. Breng ideeën uit retrospectives en incidenten op één plek samen, maak af wat je begint en controleer resultaten. Wees bereid capaciteit aan verbetering te besteden en niet alleen aan nieuwe functies.

### Service- en beheerteams

Beheerteams zien de wrijving het eerst. Voed de lijst met incidentthema's, deskcontacten en flowgegevens en neem deel aan het controleren van resultaten. Pleit voor verbeteringen die toil en terugkerende incidenten verminderen.

### Leiderschap en governance

Leiders beschermen de capaciteit voor verbetering en vragen naar resultaten. Vraag wat er verbeterd is en hoe het is gecontroleerd, niet hoeveel ideeën er zijn. Verwijder obstakels die teams noemen en toon dat je dat hebt gedaan. Steun verbeteringen die teamgrenzen overstijgen.

### Klanten en gebruikers

Klanten en gebruikers leveren enkele van de beste ideeën. Vertel het team wat je frustreert en vraag te horen wat er als gevolg veranderde. Doe mee aan reviews waar jouw service wordt besproken. Jouw feedback over of een wijziging hielp, is de meest directe controle die er is.

## Veelvoorkomende faalpatronen

- **Ideeën zonder eigenaren.** De lijst groeit en er wordt niets gedaan. Eis in plaats daarvan voor elk item een eigenaar en een verwacht voordeel.
- **Verbetering als vrije tijd.** Levering verdringt haar. Reserveer in plaats daarvan capaciteit en bescherm die.
- **Te veel tegelijk.** Alles wordt begonnen en weinig wordt afgemaakt. Beperk in plaats daarvan het onderhanden werk voor verbeteritems.
- **Geen controle.** Wijzigingen worden overgenomen omdat ze gepland waren. Vermeld in plaats daarvan het verwachte resultaat vooraf en kijk naar de gegevens.
- **Lokale optimalisatie.** Eén team verbetert en een ander lijdt. Vraag in plaats daarvan voor en na wie er nog meer wordt geraakt.
- **Verbetertheater.** Workshops en posters vervangen resultaten. Tel in plaats daarvan voltooide en geverifieerde verbeteringen.
- **Maten die kunnen worden gemanipuleerd.** Het getal beweegt en er verbetert niets. Gebruik in plaats daarvan meerdere maten en kijk naar het onderliggende werk.
- **Vergeten te delen.** Lessen blijven bij het team. Publiceer in plaats daarvan korte notities en nodig anderen uit ze te hergebruiken.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Verzamelen en prioriteren | Ideeën zijn verspreid en niet geprioriteerd | Sommige teams houden lijsten bij | Eén zichtbare lijst per team met eigenaren en verwachte voordelen | Prioriteiten gebruiken gegevens over impact en inspanning | Verbeterlijsten zijn over teams en met klanten afgestemd |
| Capaciteit en flow | Verbetering gebeurt in vrije tijd | Enige capaciteit is gereserveerd | Een beschermd deel van de capaciteit en limieten op onderhanden werk | Capaciteit en doorvoer van verbetering worden gereviewd | Capaciteit wordt over teams gedeeld voor dwarsverbanden |
| Resultaten controleren | Resultaten worden niet gecontroleerd | Sommige wijzigingen worden gereviewd | Elke wijziging heeft een vermelde verwachting en een controle | Resultaten worden gemeten en aan beslissingen gekoppeld | Bewijs wordt over teams gedeeld en gebruikt om de organisatie te sturen |
| Leren en verspreiden | Lessen blijven lokaal | Enkele notities worden gedeeld | Lessen worden gepubliceerd en gereviewd | Hergebruik van verbeteringen wordt gevolgd | Verbeteringen verspreiden zich routinematig over teams en leveranciers |

## Checklist

- [ ] We hebben één zichtbare verbeterlijst met eigenaren en verwachte voordelen.
- [ ] Ideeën uit retrospectives, incidentreviews, deskthema's en feedback voeden haar allemaal.
- [ ] Een beschermd deel van elke cyclus gaat naar verbeteritems.
- [ ] We beperken het aantal verbeteritems in uitvoering.
- [ ] Elke wijziging vermeldt een verwacht resultaat en een tijdstip om het te controleren.
- [ ] We controleren resultaten en leggen de beslissing vast om over te nemen, aan te passen of te laten vallen.
- [ ] We vragen wie er nog meer wordt geraakt voordat we een wijziging doorvoeren.
- [ ] De lijst wordt minstens maandelijks gereviewd.
- [ ] We delen korte notities over wat er veranderde en wat we leerden.
- [ ] We kunnen drie dingen noemen die dit kwartaal beter zijn dankzij verbeterwerk.

## AI-prompts

**Doel: verbeterideeën samenvoegen tot één geprioriteerde lijst.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Doel: een verbeteridee omzetten in een klein experiment.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: de stand van een verbeterlijst reviewen.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Doel: controleren of een verbetering werkte.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## AI-vaardigheden

- [kaizen](../../../../skills/kaizen/SKILL.md): gebruik dit om kleine, continue verbeteringen te plannen en te reviewen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om retrospectives te houden die acties met eigenaren opleveren.
- [dmaic](../../../../skills/dmaic/SKILL.md): gebruik dit voor datagedreven verbetering van hardnekkige defecten, via define, measure, analyze, improve en control.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gebruik dit wanneer variatie en defecten het grootste probleem zijn en je een statistische aanpak nodig hebt.
- [futurespective](../../../../skills/futurespective/SKILL.md): gebruik dit om samen vooruit te kijken en verbeteringen voor de volgende periode af te spreken.

## Belangrijkste bronnen

- **Continual improvement process** (Wikipedia): de definitie, kaizen, PDCA en de terminologie continual tegenover continuous.
- **PDCA** (Wikipedia): de plan-do-check-act-cyclus, haar oorsprong en varianten zoals PDSA.
- **Kaizen** (Wikipedia): achtergrond over kleine, continue verbetering en haar oorsprong in de Japanse industrie.
- **Lean software development** (Wikipedia): de lean-ideeën achter continue verbetering in softwarewerk.

## Referenties

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
