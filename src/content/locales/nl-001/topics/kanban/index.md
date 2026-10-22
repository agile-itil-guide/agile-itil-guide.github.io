# Kanban

**Kanban beheert werk als een flow: het maakt de workflow zichtbaar, beperkt hoeveel er onderhanden is en gebruikt flowmaatstaven om te verbeteren, wat past bij serviceteams wier werk continu binnenkomt en niet in vaste cycli te plannen is.**

## Waarom dit ertoe doet

Een servicedesk, een beheerteam en een platformteam delen één kenmerk: werk komt wanneer het komt. Incidenten, verzoeken en kleine wijzigingen komen in een stroom binnen en het team kan er niet een maand vooruit op plannen. Raamwerken rond vaste cycli, zoals Scrum, passen bij dit werk alleen met aanpassingen (zie Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven). Kanban is ontworpen voor flow en past daardoor natuurlijker.

Kanban spreekt ook de taal van servicemanagement. Het vraagt hoe lang werk duurt, hoeveel er wacht en welke stap de bottleneck is, en dat zijn de vragen achter servicelevels, wachtrijbeheer en capaciteitsplanning. Een team dat de leeftijd en cyclustijd van zijn werk volgt, kan met gegevens over servicelevels praten in plaats van met indrukken.

Kanban is eenvoudig te beginnen en verrassend makkelijk slecht te doen. Een bord met kolommen is geen Kanban als niets het onderhanden werk beperkt en niemand de maatstaven gebruikt. Dit onderwerp legt uit wat de Kanban Guide van een team vraagt, waar de methode vandaan komt en hoe je haar op servicewerk toepast.

## Kernconcepten

### Wat Kanban is

De [Kanban Guide](https://kanbanguides.org/english/), waarvan de huidige versie van mei 2025 is en die John Coleman en Daniel Vacanti onder zijn auteurs noemt, definieert Kanban als een strategie om de stroom van waarde door een proces te optimaliseren. Hij beschrijft flow als de beweging van potentiële waarde door een systeem. Het doel is een balans van drie dingen: effectiviteit (opleveren wat belanghebbenden willen, wanneer ze het willen), efficiëntie (middelen goed gebruiken) en voorspelbaarheid (levering voorspellen met een acceptabel niveau van onzekerheid). De gids zegt dat hij van toepassing is op kenniswerk in elke sector.

Het woord "kanban" is Japans en betekent bord of reclamebord. Het [Wikipedia-artikel over Kanban in ontwikkeling](https://en.wikipedia.org/wiki/Kanban_(development)) zegt dat de methode voortkomt uit lean manufacturing en het [Toyota Production System](https://en.wikipedia.org/wiki/Toyota_Production_System), met een just-in-time-systeem dat eind jaren veertig bij Toyota begon. Het boek van David J. Anderson uit 2010 voert de softwareversie terug op een project bij Microsoft in 2004 en een project bij Corbis in 2006–2007.

### De drie praktijken

De Kanban Guide noemt drie praktijken. Een team dat alle drie doet en de onderstaande maatstaven gebruikt, beoefent Kanban in de zin van de gids.

| Praktijk | Wat het team doet | Een opmerking voor serviceteams |
|---|---|---|
| **De workflow definiëren en visualiseren** | Spreek een Definition of Workflow (DoW) af: wat een werkitem is, waar het begint en eindigt, de tussenliggende toestanden, hoe onderhanden werk wordt beperkt, de beleidsregels voor het verplaatsen van werk en een service level expectation (SLE). Toon het op een bord. | De DoW voor een servicedesk kan incident-, verzoek- en wijzigingsitems definiëren, met voor elk andere toestanden en beleidsregels |
| **Items in de workflow actief beheren** | Beheers het aantal items dat onderhanden is, let op items die verouderen en maak vastgelopen items los. | Een limiet op open incidenten per engineer dwingt het team werk af te ronden of over te dragen voordat er meer wordt gestart |
| **De workflow verbeteren** | Verander de DoW in de loop van de tijd om effectiviteit, efficiëntie en voorspelbaarheid te verbeteren, met vaste tussenpozen of wanneer nodig. | Een review van de DoW na een groot incident kan beleidsregels, limieten of toestanden veranderen |

De gids schrijft geen bordindeling of vergaderingen voor. Teams mogen praktijken toevoegen, mits de kernpraktijken, de maatstaven en het doel om waarde te optimaliseren intact blijven.

### Limieten op onderhanden werk en pull

Het beheersen van onderhanden werk (WIP) creëert wat de gids een pull-systeem noemt: nieuw werk begint pas wanneer er capaciteit voor is. Het Wikipedia-artikel geeft het voorbeeld van een stap "deployment" met een limiet van vijf. Wanneer de stap vol is, kan er niets meer in totdat iets klaar is, zodat een blokkade zichtbaar wordt en mensen kunnen helpen haar op te ruimen. Zonder limieten is een bord alleen een foto van de chaos.

### Vier flowmaatstaven

De gids noemt vier maatstaven die een team met Kanban volgt:

- **Onderhanden werk:** het aantal items dat is gestart maar nog niet is afgerond.
- **Doorvoer:** het aantal items dat in een bepaalde periode is afgerond.
- **Leeftijd van een werkitem:** hoe lang een onafgerond item al onderhanden is.
- **Cyclustijd:** hoe lang een afgerond item duurde van start tot einde.

De gids zegt dat teams deze mogen hernoemen en waar nuttig andere maatstaven moeten toevoegen, en dat maatstaven er alleen toe doen wanneer ze de drie praktijken informeren. Een service level expectation is een prognose van hoe lang een item zou moeten duren, gebaseerd op eerdere cyclustijden. Het is geen belofte en verschilt van een servicelevelovereenkomst (SLA) die met een klant is onderhandeld. Zie Onderwerp 3.7 — Servicelevelmanagement.

### De bredere Kanban-literatuur

Andere schrijvers hebben de methode breder beschreven. Het Wikipedia-artikel noemt het werk van Don Reinertsen over flow, *Personal Kanban* van Jim Benson en Tonianne DeMaria Barry, *Kanban From the Inside* van Mike Burrows en *Scrumban* van Corey Ladas, dat Kanban voorstelde als manier om Scrum te verbeteren. Sommige van deze bronnen noemen praktijken naast de drie in de gids, zoals beleidsregels expliciet maken, feedbackloops invoeren en gezamenlijk verbeteren. Behandel deze als nuttige aanvullingen, niet als vereisten van de gids.

Het Wikipedia-artikel draagt een label dat opmerkt dat een belangrijke bijdrager een nauwe band met het onderwerp kan hebben, dus controleer de beweringen ervan aan de primaire bronnen.

### Wat Kanban niet zegt

Kanban is geen projectplan, geen set rollen en geen releaseproces. Het zegt niet hoe je een service ontwerpt of een incident afhandelt. Het geeft je een manier om flow te zien en te beheren, en rekent erop dat jij de inhoud van je werk meebrengt. Dat is ook zijn kracht: je kunt beginnen met het proces dat je hebt en het in kleine stappen verbeteren (zie Onderwerp 3.15 — Continue verbetering).

## Goede praktijken

1. **Begin met wat je nu doet.** Teken de echte workflow, met de toestanden waar werk werkelijk doorheen gaat, inclusief de wachttijden. Teken niet het proces dat je graag zou hebben. Je kunt alleen verbeteren wat je kunt zien.
2. **Definieer wat een werkitem is.** Beslis of incidenten, verzoeken en wijzigingen één type item zijn of meerdere, en geef elk een duidelijk begin en einde. Gemengde definities maken maatstaven zinloos.
3. **Stel WIP-limieten in en houd ze aan.** Begin met een limiet die iets te krap aanvoelt, zoals een of twee items per persoon, en pas aan op basis van ervaring. Een limiet die routinematig wordt overschreden geeft geen informatie, dus bespreek elke overschrijding.
4. **Maak beleidsregels expliciet.** Schrijf op het bord wanneer een item naar de volgende toestand mag, wie het mag oppakken en wat als geblokkeerd telt. Zichtbaar beleid vermindert discussies en maakt onboarding makkelijker.
5. **Let op de leeftijd van werkitems, niet alleen op de cyclustijd.** Cyclustijd is pas bekend nadat een item klaar is, terwijl leeftijd problemen toont zolang er nog tijd is om te handelen. Bekijk elke dag de oudste items.
6. **Gebruik een service level expectation op basis van geschiedenis.** Neem de cyclustijden van recent afgeronde items en geef bijvoorbeeld aan dat de meeste items van een type binnen een bepaald aantal dagen klaar zijn. Herzie dit als de gegevens veranderen. Beloof klanten geen getal dat je niet hebt gemeten.
7. **Behandel versneld werk als expliciete uitzondering.** Urgente incidenten springen voor in de rij. Definieer een beleid, zoals een baan met een eigen limiet, zodat uitzonderingen zichtbaar zijn en de flow niet stilletjes verwoesten (zie Onderwerp 3.2 — Incidentmanagement).
8. **Zoek de bottleneck en help haar.** Wanneer een toestand altijd vol is, vraag dan of ze meer capaciteit nodig heeft, een ander beleid of een andere stroom stroomopwaarts. Mensen naar de bottleneck verplaatsen verslaat meestal er meer werk in duwen.
9. **Houd reviews in een regelmatig ritme.** De gids staat verbetering toe met vaste tussenpozen of wanneer nodig. Een korte wekelijkse review van de maatstaven en een maandelijkse blik op de DoW werken voor veel teams.
10. **Verbind het bord met de rest van de organisatie.** Maak het bord zichtbaar voor de klanten en voor naburige teams. Spreek af hoe items tussen borden oversteken, bijvoorbeeld van een servicedesk naar een ontwikkelteam.
11. **Houd maatstaven voor leren.** Gebruik de getallen om vragen te stellen, niet om mensen te rangschikken. Wanneer flowgegevens een doel worden, sjoemelen teams ermee (zie Onderwerp 5.6 — Maatstaven en meten).
12. **Combineer bewust met andere raamwerken.** Als het team Scrum-gebeurtenissen voor planning en Kanban voor flow gebruikt, zeg dan waar elk voor dient en controleer dat de combinatie verwarring vermindert (zie Onderwerp 1.8 — Agile opschalen voor het coördineren van meerdere teams).

## Vragen om met je team te bespreken

**Als we onze echte workflow tekenden, inclusief de wachttijden, hoe zou die eruitzien?**

Vraag iedereen het pad van een recent item te tekenen en combineer dan de tekeningen op een muur. Verschillen tussen de tekeningen tonen verborgen stappen en informele overdrachten. Verwacht verrassingen: goedkeuringen die niemand noemde, items die op een ander team wachten en rework-lussen. Markeer daarna de drie langste wachttijden.

**Hoeveel werk is er nu bij ieder van ons onderhanden, en hoeveel daarvan wacht?**

Tel de open items per persoon en markeer welke geblokkeerd of niet actief zijn. Veel teams ontdekken dat de meeste items wachten en er weinig aan wordt gewerkt. Vraag wat elke persoon doet bij een blokkade en of een nieuw item starten het gebruikelijke antwoord is. Het doel is te bespreken waarom starten wordt beloond en afronden niet.

**Wat is het oudste item op ons bord, en waarom staat het er nog?**

Kies de drie oudste items en volg wat er gebeurde. Veelvoorkomende antwoorden zijn een onduidelijke eigenaar, een afhankelijkheid van een ander team of een item dat niemand wil annuleren. Vraag of het item moet worden afgerond, geannuleerd of geëscaleerd. Een facilitator kan vragen welk beleid het item eerder zou hebben opgemerkt.

**Wat beloven we onze klanten over hoe lang dingen duren, en wat zeggen onze eigen cijfers?**

Vergelijk de afgesproken servicelevels met de werkelijke cyclustijden van afgeronde items. Als je geen gegevens hebt, verzamel ze dan eerst een maand. Bespreek elk verschil openlijk. Vraag of het doel moet veranderen, of de werkwijze. Bedenk dat een service level expectation op basis van gegevens een prognose is, terwijl een SLA een overeenkomst is.

**Wat gebeurt er met al het andere wanneer urgent werk binnenkomt?**

Loop het laatste urgente incident door en zie welke items stilvielen. Vraag of het team een beleid voor urgent werk heeft en of iemand weet hoeveel urgente items het per maand afhandelt. Teams ontdekken vaak dat urgent werk routine is, geen uitzondering, en dat het beleid dat moet weerspiegelen. Spreek daarna een limiet voor versnelde items af.

**Welke van onze maatstaven zouden we genoeg vertrouwen om een beslissing op te baseren, en welke zouden we negeren?**

Vraag mensen de beschikbare maatstaven te rangschikken naar hoeveel ze erop vertrouwen en waarom. Wantrouwen komt vaak voort uit inconsistente itemdefinities of gaten in de gegevens. Maak er geen ruzie over mensen van; richt je op de kwaliteit van de gegevens. Sluit af door één maatstaf te kiezen om de komende maand te verbeteren.

## In de praktijk: een agile ITIL-voorbeeld

De IT-servicedesk van een universiteit heeft acht analisten die incidenten en verzoeken van studenten en medewerkers afhandelen. Het team heeft een tickettool met wachtrijen maar zonder limieten, en elke analist heeft tussen 20 en 40 open tickets. Klanten klagen dat tickets lijken te verdwijnen, en de deskmanager kan niet zeggen hoe lang een typisch verzoek duurt.

De manager en de analisten bouwen een bord dat de tool weerspiegelt: nieuw, gecategoriseerd, in behandeling, wachten op de klant, wachten op een ander team en opgelost. Ze spreken een limiet van acht actieve items per analist af en een regel dat tickets die op anderen wachten de persoon moeten noemen die verantwoordelijk is voor de volgende stap. Ze reserveren één baan voor urgente incidenten, met een limiet van twee. Een maand lang verzamelen ze alleen gegevens over cyclustijd en leeftijd.

Na de maand tonen de gegevens dat de meeste verzoeken in een paar dagen worden opgelost maar een lange staart weken wacht, vooral "wachten op een ander team". Het team stelt een service level expectation vast uit de gegevens en begint een dagelijkse review van de oudste items. Verschillende langwachtende tickets worden in de eerste week gesloten of geëscaleerd. Er blijft een probleem: het netwerkteam, dat veel van de wachtende tickets bezit, heeft geen eigen bord en de desk kan zijn wachtrij niet zien. De deskmanager organiseert een wekelijks gesprek met de teamlead van het netwerk, en de twee teams beginnen te bespreken hoe ze een gedeeld beeld van de items die tussen hen oversteken kunnen delen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams kunnen Kanban gebruiken om te zien waar werk wacht tussen ontwerp, bouw, test en release. Limieten op onderhanden werk verminderen het aantal half afgemaakte wijzigingen, en flowgegevens kunnen tonen waar een releaseproces aandacht nodig heeft. Behandel verzoeken van beheer als items in dezelfde flow, met een eigen beleid.

### Service- en beheerteams

Beheerteams zijn het natuurlijke thuis van Kanban. Visualiseer incidenten, verzoeken en wijzigingen in eigen toestanden, stel limieten in en let op veroudering. Gebruik cyclustijdgegevens om realistische verwachtingen met klanten te stellen en gebruik geblokkeerde en wachtende toestanden om gesprekken met andere teams te beginnen.

### Leiderschap en governance

Leiders hebben baat bij flowmaatstaven als een eerlijker beeld dan statusrapporten. Vraag om cyclustijd, doorvoer en leeftijd per soort werk, en vraag wat het team heeft veranderd vanwege die cijfers. Vermijd het stellen van doelen voor individuele cijfers, wat tot sjoemelen leidt. Steun limieten op onderhanden werk, ook als belanghebbenden willen dat er meer wordt gestart.

### Klanten en gebruikers

Klanten profiteren van duidelijker prognoses en minder verloren verzoeken. Vraag het team om de service level expectation voor jouw soort verzoek en verwacht dat ze op geschiedenis is gebaseerd. Als je verzoek urgent is, verwacht dan dat je wordt gevraagd waarom, omdat het team de flow van anderen moet beschermen.

## Veelvoorkomende faalpatronen

- **Een bord zonder limieten.** Het bord toont de chaos maar vermindert haar niet. Stel in plaats daarvan limieten voor onderhanden werk in en dwing ze af, en bespreek elke overschrijding.
- **Gemengde itemdefinities.** Incidenten, projecten en taken delen één set kolommen en de maatstaven betekenen niets. Definieer in plaats daarvan itemtypen met aparte toestanden en beleidsregels.
- **Veroudering negeren.** Oude items blijven onopgemerkt zitten tot een klant klaagt. Bekijk in plaats daarvan elke dag de oudste items en besluit over elk.
- **Maatstaven tot doelen maken.** Teams splitsen of sluiten items om cijfers te verbeteren. Gebruik in plaats daarvan maatstaven om vragen te stellen en review ze met het team.
- **Verborgen baan voor versneld werk.** Urgent werk omzeilt limieten zonder spoor. Geef in plaats daarvan urgent werk een zichtbare baan, een limiet en een beleid.
- **Een bordindeling kopiëren.** Een team neemt de kolommen van een ander team over zonder zijn eigen flow te begrijpen. Breng in plaats daarvan eerst de echte workflow in kaart.
- **Kanban behandelen als rapportagetool.** Managers gebruiken het bord om mensen te bekijken en niet om flow te verbeteren. Gebruik het in plaats daarvan als het hulpmiddel van het team om te beslissen wat het hierna doet.
- **De workflow nooit verbeteren.** Het bord blijft jarenlang hetzelfde. Houd in plaats daarvan regelmatig reviews van de Definition of Workflow en verander haar wanneer de gegevens erom vragen.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| De workflow visualiseren | Werk leeft in individuele inboxen en hoofden | Sommige teams hebben borden die hun toestanden tonen | Teams delen een Definition of Workflow met itemtypen en beleidsregels | Het bord wordt gereviewd en gecorrigeerd aan wat er werkelijk gebeurt | Borden over teams heen tonen items en overdrachten tussen teams |
| Onderhanden werk beperken | Geen limieten; mensen starten meer dan ze afronden | Sommige teams stellen informele limieten in | Limieten zijn ingesteld en overschrijdingen worden besproken | Limieten worden aangepast op basis van flowgegevens | Limieten en capaciteit worden afgewogen over teams en leveranciers |
| Flowmaatstaven | Weinig maatstaven worden verzameld | Sommige teams registreren cyclustijd of doorvoer | De vier maatstaven worden consistent verzameld | Maatstaven worden gereviewd en gebruikt om service level expectations vast te stellen | Flowgegevens worden over teams gedeeld en gebruikt om samen capaciteit te plannen |
| Verbetering | Veranderingen volgen op crises | Teams passen het bord af en toe aan | Teams reviewen de workflow in een regelmatig ritme | Veranderingen worden gekoppeld aan maatstaven en resultaten worden gecontroleerd | Verbeteringen verspreiden zich tussen teams zonder centrale sturing |

## Checklist

- [ ] We hebben onze echte workflow getekend, inclusief wachttijden en overdrachten.
- [ ] Onze werkitems zijn gedefinieerd, met een duidelijk begin en einde per type.
- [ ] Limieten op onderhanden werk bestaan en elke overschrijding wordt besproken.
- [ ] Beleidsregels voor het verplaatsen en blokkeren van items staan op of bij het bord.
- [ ] We volgen cyclustijd, doorvoer, onderhanden werk en leeftijd van werkitems.
- [ ] We bekijken de oudste items dagelijks of minstens wekelijks.
- [ ] We hebben een service level expectation op basis van onze eigen geschiedenis.
- [ ] Urgent werk heeft een eigen zichtbare baan, limiet en beleid.
- [ ] De Definition of Workflow wordt in een regelmatig ritme gereviewd.
- [ ] Naburige teams en klanten kunnen de items zien die hen aangaan.

## AI-prompts

**Doel: je echte workflow beschrijven en vinden waar werk wacht.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Doel: een Definition of Workflow voor een team opstellen.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Doel: flowgegevens uit je ticketsysteem analyseren.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Doel: een review van het bord met het team plannen.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-vaardigheden

- [kanban](../../../../skills/kanban/SKILL.md): gebruik dit om een bord, limieten op onderhanden werk en beleidsregels voor een service- of beheerteam te ontwerpen of te beoordelen.
- [scrumban](../../../../skills/scrumban/SKILL.md): gebruik dit wanneer een team de planningsgebeurtenissen van Scrum samen met het flowbeheer van Kanban wil.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gebruik dit om in kaart te brengen hoe werk tussen teams beweegt en waar het wacht voordat je het bord ontwerpt.
- [kaizen](../../../../skills/kaizen/SKILL.md): gebruik dit om kleine verbeteringen van de workflow te plannen na een flowreview.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gebruik dit om te begrijpen welk soort werk binnenkomt en in welk volume, voordat je limieten en capaciteit instelt.

## Belangrijkste bronnen

- **The Kanban Guide** (John Coleman en Daniel Vacanti en anderen, kanbanguides.org): de beknopte gezaghebbende definitie van de drie praktijken en vier maatstaven.
- **Kanban (development)** (Wikipedia): een overzicht van de geschiedenis en de bredere praktijken, met verwijzingen naar de belangrijkste boeken.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): het verslag van hoe Kanban op softwarewerk werd toegepast.
- **Toyota Production System** (Wikipedia): achtergrond over de lean-manufacturingherkomst van kanban.

## Referenties

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
