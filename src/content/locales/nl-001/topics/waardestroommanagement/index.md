# Waardestroommanagement

**Waardestroommanagement kijkt naar het hele pad van verzoek naar waarde, meet waar werk wacht en verbetert de flow over teams heen, omdat de grootste vertragingen in een serviceorganisatie meestal tussen teams zitten en niet erbinnen.**

## Waarom dit ertoe doet

De meeste teams meten hun eigen werk: gesloten tickets, afgeronde stories, uitgebrachte wijzigingen. Deze getallen kunnen er goed uitzien terwijl de klant weken wacht. De reden is dat het grootste deel van de verstreken tijd van een typisch verzoek wordt besteed aan wachten, in wachtrijen, op goedkeuringen, tussen teams. Een team dat zijn eigen stap sneller maakt, kan niets veranderen voor de persoon die erom vroeg.

Lean denken heeft een methode om dit te zien: de waardestroomkaart, die elke stap van het begin van een proces tot de klant tekent en tijd en volume bij elke fase vastlegt. ITIL 4 heeft een eigen idee van een waardestroom, een set activiteiten die een service creëert en levert, waarbij activiteiten van de waardeketen in verschillende volgordes worden gecombineerd (zie Onderwerp 2.6 — De servicewaardeketen). De twee passen bij elkaar. Het ITIL-idee zegt wat een stroom is en de lean-methode toont hoe er een te meten en te verbeteren.

Waardestroommanagement gaat verder dan een eenmalige kartingworkshop. Het betekent de werkstroom voortdurend beheren, met gedeelde maten, een benoemde eigenaar en regelmatige reviews waaraan elk team in de stroom deelneemt. De capabilitylijst van DORA omvat zichtbaarheid van werk in de waardestroom en limieten op onderhanden werk, en haar richtlijn over limieten beschrijft al het werk zichtbaar maken, ook werk buiten het team. Dit onderwerp put uit het Wikipedia-artikel over value-stream mapping, DORA en de Kanban Guide, en vermeldt waar de bronnen zwijgen.

## Kernconcepten

### Wat een waardestroom is

Een **waardestroom** is de reeks stappen waarlangs een verzoek geleverde waarde wordt. Het [Wikipedia-artikel over value-stream mapping](https://en.wikipedia.org/wiki/Value-stream_mapping) beschrijft de methode als een lean-managementtechniek die de huidige toestand analyseert en een toekomstige toestand ontwerpt voor de gebeurtenissen die een product of service van het begin van een proces naar de klant brengen. In het ITIL-beeld is een waardestroom een specifieke set activiteiten die een bepaalde service of een bepaald product creëert en aan klanten levert (zie Onderwerp 2.6 — De servicewaardeketen).

Voorbeelden in een serviceorganisatie: een incident afhandelen van melding tot herstel, een wijziging van idee naar productie brengen, een nieuwe klant onboarden of een toegangsverzoek vervullen.

### Waardestroomkartering

Het artikel zegt dat de resulterende visuele kaart elke kritieke stap toont en tijd en volume bij elke fase kwantificeert. Het beschrijft twee kaarten: een **kaart van de huidige toestand**, opgebouwd door de werkelijke stroom van materiaal en informatie te observeren en te volgen, en een **kaart van de toekomstige toestand**, die het ideale proces na verbeteringen toont. De huidige toestand moet eerst worden opgebouwd. Het artikel citeert *Learning to See* van Mike Rother en John Shook (Lean Enterprise Institute, 1999) als bron. Het noemt softwareontwikkeling, productontwikkeling, projectmanagement en administratieve en kantoorprocessen als toepassingsgebieden, en noemt twee op software gerichte benaderingen van Ali en collega's: analyse van ontwikkelartefacten en analyse van informatiestroom.

Het artikel definieert doorlooptijd, verwerkingstijd of percentage compleet en juist niet, noemt geen symbolen en bespreekt geen kritiek. De DORA-pagina over continue levering verwijst echter naar waardestroomkartering als manier om knelpunten bloot te leggen door verstreken tijd te vergelijken met waardetoevoegende tijd en het percentage compleet en juist (%C/A) te meten. De onderstaande termen zijn het gangbare gebruik:

| Term | Betekenis, in gangbaar gebruik |
|---|---|
| **Doorlooptijd (lead time)** | Totale verstreken tijd van het begin van een verzoek tot levering |
| **Verwerkingstijd (process time of touch time)** | Tijd waarin iemand daadwerkelijk aan het verzoek werkt |
| **Wachttijd** | Tijd dat het verzoek stilligt tussen stappen |
| **Percentage compleet en juist (%C/A)** | Aandeel werk dat bij een stap aankomt en geen correctie of ontbrekende informatie nodig heeft |
| **Flow-efficiëntie** | Verwerkingstijd gedeeld door doorlooptijd, als percentage |

Flow-efficiëntie is een eenvoudige verhouding, voor de illustratie van deze gids berekend, en de gelezen bronnen definiëren haar niet.

### Flowmaten

De Kanban Guide noemt vier maten van flow (zie Onderwerp 1.5 — Kanban): **onderhanden werk** (items begonnen maar niet afgerond), **doorvoer** (items afgerond per periode), **leeftijd van werkitems** (tijd sinds een onafgerond item begon) en **cyclustijd** (tijd van begin tot einde voor een afgerond item). Deze werken op het niveau van de werkstroom van een team. Waardestroommanagement past dezelfde ideeën over teams heen toe: meet de verstreken tijd van het verzoek tot de ontvangst door de klant, niet vanaf het moment dat één team het oppakt.

De maten van DORA voor softwarelevering, zoals de doorlooptijd van wijzigingen, gelden voor één stuk van de stroom, van commit naar productie (zie Onderwerp 3.4 — Change enablement). Het eerdere deel, van idee naar commit, hoort ook bij de waardestroom en heeft vaak de langste wachttijden.

### Limieten op onderhanden werk

De DORA-pagina over limieten op onderhanden werk (WIP) beschrijft ze als plafonds op hoeveel items in elke fase van een werkstroom kunnen zijn. Ze zegt dat het onderzoek van DORA WIP-limieten alleen in combinatie met andere capabilities, zoals visuele displays en feedbackloops uit monitoring, aan betere prestaties bij softwarelevering koppelt, en geeft geen effectgroottes. Het implementatieadvies omvat al het werk zichtbaar maken, ook werk buiten het team, elke limiet op teamcapaciteit baseren, limieten vasthouden en niet verhogen wanneer mensen niets te doen hebben, werk alleen trekken wanneer een plek vrijkomt, doorlooptijd en haar variabiliteit volgen, overdrachten verminderen en limieten geleidelijk verlagen om de volgende beperking bloot te leggen. Valkuilen die ze noemt zijn onder meer upstream- en downstreamwerk negeren, wat tot lokale optimalisatie leidt, en te hoge limieten stellen.

### De hele stroom zien

De valkuil van "lokale optimalisatie" is de centrale. Een stroom met vijf teams heeft vijf wachtrijen. Als één team zijn snelheid verdubbelt, verandert de doorlooptijd van de stroom misschien nauwelijks, omdat de anderen nog wachten. Waardestroommanagement zoekt de **beperking (constraint)**, de stap die het geheel begrenst, en verbetert die eerst (zie Onderwerp 1.7 — Lean softwareontwikkeling over het geheel optimaliseren).

### Eigenaarschap en governance

Een stroom doorkruist teams, dus iemand moet voor het geheel verantwoordelijk zijn. Een waardestroomeigenaar (of een kleine groep) houdt de kaart, de maten en de verbeterlijst bij en roept de teams bijeen. Zonder eigenaar staat niemand voor de stroom in en blijven verbeteringen binnen teamgrenzen. Dit sluit aan op product- en service-eigenaarschap (zie Onderwerp 5.5 — Product- en service-eigenaarschap).

### Tools

Softwaretools voor waardestroommanagement verzamelen gegevens uit ticketing, broncodebeheer en pipelines om flow over de toolchain te tonen. De voor deze gids gelezen bronnen bespreken zulke tools niet. Controleer als je er een evalueert welke gegevens ze nodig heeft, hoe nauwkeurig ze is en of de maten een vraag beantwoorden die je hebt. Een ruwe kaart met de hand getekend met de betrokken teams is een goede plek om te beginnen en onthult vaak meer dan een dashboard.

### Grenzen

Het Wikipedia-artikel bespreekt geen kritiek en de DORA-WIP-pagina geeft geen effectgroottes of streefwaarden. Praktische waarschuwingen, aangeboden als ervaring, omvatten karteringen die nooit tot verandering leiden, maten die worden gebruikt om teams te rangschikken en kaarten die uit het geheugen van managers worden getekend in plaats van uit observatie van echte items.

## Goede praktijken

1. **Kies één stroom die ertoe doet.** Kies een flow waar gebruikers om geven, zoals een wijziging die productie bereikt of een toegangsverzoek. Een smalle, echte stroom leert meer dan een brede, abstracte.
2. **Breng in kaart uit echte items.** Volg meerdere recente items van begin tot eind en leg de werkelijke data vast, niet het procesdocument. Observatie wint van herinnering, zoals de nadruk van het artikel op het observeren en volgen van de echte flow suggereert.
3. **Leg tijd en wachten bij elke stap vast.** Noteer voor elke stap de werktijd en het wachten ervoor. De wachttijden zijn meestal het verhaal.
4. **Neem iedereen in de stroom mee.** Nodig mensen uit van elk team dat het item raakt, inclusief goedkeurders en leveranciers. Doe de karteringsessie samen, zodat niemand door de uitkomst wordt verrast.
5. **Bereken doorlooptijd, verwerkingstijd en flow-efficiëntie.** Vergelijk verstreken tijd met werktijd en kijk hoeveel wachten is. Gebruik de getallen om gesprekken te starten.
6. **Kijk naar juistheid.** Vraag hoe vaak werk onvolledig of onjuist bij een stap aankomt en herwerk vraagt. Een stap met een laag percentage compleet en juist veroorzaakt downstream vertraging.
7. **Vind de beperking.** Identificeer de stap die de hele stroom begrenst en verbeter die eerst. Andere stappen verbeteren levert weinig voordeel op.
8. **Teken de toekomstige toestand.** Ontwerp samen met de teams een betere stroom, niet een ideale, en kies de eerste een of twee wijzigingen. Spreek eigenaren en data af.
9. **Beperk onderhanden werk.** Begrens wat elke fase bevat, stel limieten op capaciteit, houd ze vast wanneer mensen niets te doen hebben en verlaag ze geleidelijk, zoals de richtlijn van DORA beschrijft.
10. **Maak het werk zichtbaar.** Toon de stroom op een gedeeld bord of een gedeelde kaart die werk buiten elk afzonderlijk team omvat. Werk haar bij naarmate items bewegen.
11. **Benoem een stroomeigenaar.** Kies een persoon die verantwoordelijk is voor de prestaties van de stroom en teams kan bijeenroepen en verbeteringen naar leiders kan brengen.
12. **Review regelmatig.** Houd een korte maandelijkse review van doorlooptijd, wachttijden en de verbeterlijst. Teken de kaart opnieuw na belangrijke wijzigingen.

## Vragen om met je team te bespreken

**Als we één verzoek volgden van het eerste contact tot de ontvangst door de klant, hoe lang zou het duren en hoeveel daarvan is werktijd?**

Kies een recent item en verzamel data. Vraag mensen het antwoord te raden voordat ze kijken. De gok is meestal optimistisch. Bereken het aandeel werktijd. De facilitator kan vragen waar de grootste wachttijd optrad en wie die bezat. Kies die als eerste doel.

**Met wie in de stroom hebben we nooit gesproken?**

Maak een lijst van de teams, goedkeurders en leveranciers die een item raakt. Markeer degenen die het team nooit heeft ontmoet. Vraag wat er te winnen is door hen uit te nodigen voor een karteringssessie. Typische antwoorden: begrip van waarom ze wachten, of wat ze nodig hebben om sneller te werken. Nodig er een uit.

**Wat dragen we onvolledig over en wat ontvangen we onvolledig?**

Vraag om voorbeelden van werk dat voor herwerk terugkwam. Noteer welke overdrachten de meeste terugzendingen veroorzaken en wat ontbreekt. Dit is het idee van percentage compleet en juist in gewone termen. Spreek een korte checklist voor één overdracht af.

**Waar zit de beperking in onze stroom en wat gebeurt er als we iets anders versnellen?**

Bespreek welke stap de langste wachtrij heeft. Vraag wat er met de tijd van begin tot eind zou gebeuren als een andere stap zijn snelheid verdubbelde. Het punt is te zien dat het verbeteren van een niet-beperking weinig verandert. Kies ervoor aan de beperking te werken.

**Aan hoeveel dingen werkt elk team tegelijk en wat zou er gebeuren als we dat begrensden?**

Tel het onderhanden werk per team. Bespreek wat het zou betekenen te stoppen met beginnen. Typische angsten: iets belangrijks zal wachten. Typische voordelen: dingen worden afgemaakt. Spreek een proeflimiet voor één team af en een manier om het resultaat te beoordelen.

**Wie is verantwoordelijk voor deze stroom als geheel?**

Vraag het team de persoon te noemen. Als niemand, bespreek dan wie dat zou kunnen zijn en welke bevoegdheid die nodig zou hebben. De facilitator kan opmerken dat verbeteringen over teams heen zelden gebeuren zonder eigenaar. Stel een naam voor en neem die mee naar de betrokken leider.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale milieutoezichthouder geeft vergunningen af aan industriële exploitanten. Aanvragers klagen dat een typische vergunning ongeveer vier maanden duurt en de groep digitale diensten van twaalf van de toezichthouder wordt gevraagd het te versnellen. De groep had al een sneller online aanvraagformulier gebouwd, maar de verstreken tijd is nauwelijks veranderd.

Het hoofd van de groep roept mensen uit elk deel van de stroom bijeen: het aanvraagteam, twee technische beoordelaars, een juridisch functionaris, het legesbureau en het team dat de vergunningsdocumenten uitgeeft. Ze brengen zes recente vergunningen in kaart van de datum van indiening tot de datum waarop de vergunning de aanvrager bereikte. De resultaten zijn ontnuchterend. De totale tijd was ongeveer 110 dagen en de werktijd ongeveer 12. De langste wachttijd zat in de wachtrij van de technische beoordeling, waar aanvragen gemiddeld 40 dagen wachtten voordat iemand ze opende, en ongeveer een derde van de aanvragen kwam met ontbrekende informatie die opnieuw moest worden opgevraagd. Het legesbureau en het documententeam voegden elk een week wachten voor batchverwerking toe.

De groep spreekt drie wijzigingen af. Het online formulier controleert vóór indiening op de vaak ontbrekende items. Het technische beoordelingsteam stelt een limiet op onderhanden werk in en een regel om elke aanvraag binnen vijf werkdagen te openen om op volledigheid te controleren. Het legesbureau en het documententeam stappen van wekelijkse batches over op dagelijkse verwerking. Ze benoemen het hoofd digitale diensten tot stroomeigenaar en reviewen de doorlooptijd maandelijks. Na drie maanden is de mediane doorlooptijd ongeveer 70 dagen en daalt het aandeel aanvragen dat wegens ontbrekende informatie wordt teruggestuurd. Er blijven problemen. Het beoordelingsteam zegt dat de limiet het moeilijker maakt grote, complexe aanvragen af te handelen, en de juridisch functionaris is een enkel punt van vertraging dat niemand had geteld. De stroomeigenaar vraagt het beoordelingsteam complexe gevallen in een eigen baan te scheiden en werkt met het juridische bureau aan een tweede beoordelaar.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams zien maar een deel van de stroom. Doe mee aan karteringssessies, deel je gegevens en kijk naar wat er gebeurt voordat werk jou bereikt en nadat je released. Behandel de doorlooptijd van de stroom als gedeeld doel, niet alleen je eigen stap.

### Service- en beheerteams

Beheerteams hebben vaak de langste wachtrijen: toegang, goedkeuringen, omgevingen, support. Wees open over je capaciteit en je beperkingen. Gebruik de kaart om upstreamteams om volledige invoer te vragen en je prioriteiten uit te leggen.

### Leiderschap en governance

Leiders kunnen beperkingen over teams heen wegnemen die teams niet kunnen. Benoem stroomeigenaren, vraag om doorlooptijd van begin tot eind en reageer op de verbeteringen die de kaart suggereert. Vermijd stroommaten te gebruiken om teams te rangschikken, wat eerlijke gegevens ontmoedigt.

### Klanten en gebruikers

Klanten en gebruikers ervaren de hele stroom. Vertel het team waar de vertragingen schaden, geef vooraf volledige informatie en doe mee aan een karteringssessie als je wordt uitgenodigd. Jouw kijk op wanneer het verzoek werkelijk klaar was, is het ware einde van de stroom.

## Veelvoorkomende faalpatronen

- **Een enkel team optimaliseren.** Een lokale winst verandert niets van begin tot eind. Zoek en pak in plaats daarvan de beperking aan.
- **Karteren uit geheugen.** De kaart weerspiegelt wat managers geloven. Volg in plaats daarvan echte items met echte data.
- **Ontbrekende stemmen.** Leveranciers en goedkeurders zijn niet in de kamer. Betrek in plaats daarvan elk team in de stroom.
- **Een kaart en geen verandering.** De poster hangt aan de muur. Spreek in plaats daarvan een of twee wijzigingen met eigenaren af voordat de sessie eindigt.
- **Geen eigenaar.** Niemand staat voor de stroom in. Benoem in plaats daarvan een stroomeigenaar met bevoegdheid om bijeen te roepen.
- **Maten als ranglijsten.** Teams verbergen wachttijden. Gebruik in plaats daarvan maten om de stroom te begrijpen en bespreek ze openlijk.
- **Limieten die verschuiven.** WIP-limieten worden verhoogd wanneer mensen niets te doen hebben. Houd in plaats daarvan limieten vast en repareer oorzaken, zoals DORA adviseert.
- **Eerst de tool.** Een dashboard wordt gekocht voordat de vragen bekend zijn. Begin in plaats daarvan met een met de hand getekende kaart en voeg tools toe naar behoefte.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| De stroom zien | Flow wordt op gevoel beoordeeld | Sommige teams brengen hun eigen stappen in kaart | Belangrijke stromen worden van begin tot eind uit echte items in kaart gebracht, met alle teams | Doorlooptijd, wachttijden en juistheid worden gemeten en gereviewd | Stromen worden over organisaties en leveranciers in kaart gebracht en gemeten |
| Flow verbeteren | Teams versnellen hun eigen stappen | Enkele wijzigingen over teams worden geprobeerd | Een op beperkingen gerichte verbeterlijst per stroom met eigenaren | Verbeteringen zijn gekoppeld aan gemeten doorlooptijd en gecontroleerd | Stroomverbetering is routine en wordt over stromen gedeeld |
| Limieten en zichtbaarheid | Onderhanden werk is onbeperkt en verborgen | Sommige teams gebruiken borden en limieten | Werk is over teams zichtbaar met afgesproken limieten | Limieten worden met doorlooptijdgegevens afgestemd | Limieten en zichtbaarheid worden over stromen gecoördineerd |
| Eigenaarschap en governance | Niemand bezit de stroom | Er zijn informele coördinatoren | Elke belangrijke stroom heeft een benoemde eigenaar en een regelmatige review | Eigenaren zijn verantwoordelijk voor gemeten uitkomsten | Eigenaren werken over stromen samen om het geheel te optimaliseren |

## Checklist

- [ ] We hebben één belangrijke stroom gekozen en uit echte items in kaart gebracht.
- [ ] De kaart toont werktijd en wachttijd bij elke stap.
- [ ] Mensen van elk team in de stroom namen deel aan de karteringssessie.
- [ ] We kennen de doorlooptijd van begin tot eind en hoeveel daarvan wachten is.
- [ ] We hebben de beperking geïdentificeerd en een of twee wijzigingen gekozen.
- [ ] Onderhanden werk is over teams zichtbaar, met afgesproken limieten in belangrijke fasen.
- [ ] Een benoemde persoon bezit de stroom.
- [ ] Een korte regelmatige review kijkt naar doorlooptijd, wachttijden en de verbeterlijst.
- [ ] We volgen hoe vaak werk onvolledig bij een overdracht aankomt.
- [ ] Stroommaten worden niet gebruikt om teams te rangschikken.

## AI-prompts

**Doel: doorlooptijd en flow-efficiëntie berekenen uit echte items.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Doel: een waardestroomkarteringsworkshop plannen.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: de kwaliteit van overdracht tussen twee teams analyseren.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Doel: een proef met een limiet op onderhanden werk ontwerpen.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gebruik dit om een stroom in kaart te brengen, tijden vast te leggen en de beperking te vinden.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gebruik dit om te bestuderen hoe werk tussen rollen beweegt en waar het wacht.
- [kanban](../../../../skills/kanban/SKILL.md): gebruik dit om visualisatie en limieten op onderhanden werk voor de stroom in te richten.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gebruik dit om te begrijpen wat de stroom instroomt en in welk volume.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): gebruik dit om te beslissen welke stromen en initiatieven investering verdienen.

## Belangrijkste bronnen

- **Value-stream mapping** (Wikipedia): de definitie van kaarten van de huidige en toekomstige toestand en een verwijzing naar *Learning to See*.
- **Work in process limits** (DORA, dora.dev): richtlijn voor het stellen en vasthouden van limieten en het vermijden van lokale optimalisatie.
- **The Kanban Guide** (kanbanguides.org): definities van de vier flowmaten.
- **Lean software development** (Wikipedia): de verspillingen en principes achter waardestroomdenken.

## Referenties

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
