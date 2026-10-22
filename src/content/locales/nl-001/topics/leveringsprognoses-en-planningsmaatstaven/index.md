# Leveringsprognoses en planningsmaatstaven

**Leveringsprognoses en planningsmaatstaven laten een team met eerlijke bandbreedtes zeggen wanneer werk waarschijnlijk klaar is en hoeveel het aankan, door de continue stroom afgerond werk en de capaciteit van het team te volgen, en ze werken voor serviceteams wanneer gepland werk en onderbrekingsgedreven werk samen worden geteld.**

## Waarom dit ertoe doet

Agile teams streven naar continue softwarelevering, en iedereen die van die levering afhangt, stelt dezelfde vragen: wanneer is dit klaar, hoeveel kan het team aan en wat gebeurt er als er iets urgents binnenkomt? Een team dat deze vragen niet met bewijs kan beantwoorden, valt terug op beloften die het niet kan nakomen, en de mensen die van het team afhangen leren elke datum te wantrouwen.

Een team dat services beheert voelt dit scherper dan de meeste. Gepland verbeterwerk, servicerequests en incidenten delen dezelfde mensen. Een plan dat het ongeplande deel negeert, faalt de eerste week dat een incident binnenkomt. Een prognose die uit de eigen geschiedenis van het team komt en haar bandbreedte noemt, overleeft de confrontatie met de werkelijkheid beter dan een datum die uit hoop komt.

Dit onderwerp beschrijft hoe je prognoses maakt uit de stroom van afgerond werk, hoe je plant rond de capaciteit van het team en welke planningsmaatstaven helpen of misleiden. Scrum, sprints en velocity zijn één manier om te plannen; een korte sectie aan het eind behandelt ze voor teams die ze gebruiken. De maatstaven hier bouwen voort op de flowmaatstaven in Onderwerp 1.5 — Kanban en de bredere meetrichtlijnen in Onderwerp 5.6 — Maatstaven en meten.

## Kernconcepten

### Prognose uit flow, niet uit beloften

Een prognose is een uitspraak over de toekomst op basis van bewijs uit het verleden, en ze draagt onzekerheid in zich. De Kanban Guide definieert een service level expectation als een prognose van hoe lang een werkitem nodig heeft om door de workflow te stromen, gebaseerd op eerdere cyclustijden, en zegt dat dit geen overeenkomst is. Die definitie is een goed model voor alle leveringsprognoses: gebruik echte geschiedenis, zeg wat ze dekt en beloof niet meer dan je hebt gemeten (zie Onderwerp 1.5 — Kanban).

Twee soorten prognose komen vaak voor:

- **Hoe lang duurt één item?** Kijk hoe lang vergelijkbare afgeronde items duurden en geef een bandbreedte of een uitspraak als "de meeste items van dit type zijn binnen een bepaald aantal dagen klaar".
- **Hoeveel zijn we klaar op een datum, of wanneer is een reeks items klaar?** Kijk hoeveel items het team gewoonlijk in een periode afrondt en pas die bandbreedte toe op het resterende werk.

### De flowmaatstaven achter een prognose

De Kanban Guide definieert vier maatstaven, en ze zijn het ruwe materiaal van leveringsprognoses:

| Maatstaf | Wat het je vertelt | Hoe het een prognose voedt |
|---|---|---|
| **Cyclustijd** | Hoe lang een afgerond item duurde van start tot einde | De spreiding van recente cyclustijden geeft een bandbreedte voor hoe lang een nieuw item duurt |
| **Doorvoer** | Hoeveel items in een periode zijn afgerond | De bandbreedte van recente doorvoer geeft een bandbreedte voor hoeveel er in een toekomstige periode klaar komt |
| **Onderhanden werk (WIP)** | Hoeveel items zijn gestart maar niet afgerond | Te veel WIP verlengt cyclustijden en maakt elke prognose minder betrouwbaar |
| **Leeftijd van een werkitem** | Hoe lang een onafgerond item al onderhanden is | Toont items die al ouder zijn dan de meeste afgeronde, terwijl er nog tijd is om te handelen |

De gids merkt op dat teams deze maatstaven mogen hernoemen en waar nuttig andere moeten toevoegen, en dat maatstaven er alleen toe doen wanneer ze informeren hoe het team werkt. Gebruik percentielen en bandbreedtes, niet alleen gemiddelden, omdat lange staarten zich in gemiddelden verbergen (zie Onderwerp 5.6 — Maatstaven en meten).

### Een eenvoudige prognosemethode

Een team kan zonder speciale tools een prognose maken:

1. Verzamel de doorvoer van elk van de laatste acht tot twaalf weken, of vergelijkbare perioden, uit echte afgeronde items.
2. Neem de laagste, een typische en de hoogste van deze cijfers.
3. Deel het aantal resterende items door elk cijfer om een bandbreedte aan perioden tot afronding te krijgen.
4. Geef de bandbreedte, de gegevens waaruit ze komt en wat haar zou veranderen, zoals nieuw werk, een teamwijziging of een afhankelijkheid.

Dit is een vuistregel, geen standaard. Ze neemt aan dat toekomstig werk op eerder werk lijkt en dat items ruwweg even groot zijn. Wanneer dat niet zo is, zeg dat dan en behandel de bandbreedte als breder. Vergelijk elke prognose met wat er gebeurde en pas de methode aan, zoals Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties adviseert voor vraagprognoses.

### Teamcapaciteit

Capaciteit is hoeveel werk een team in een periode kan opnemen. Voor een leveringsteam is dat niet het aantal mensen vermenigvuldigd met de dagen in de periode. Verlof, supporttaken, vergaderingen en ongepland werk verminderen allemaal wat beschikbaar is voor geplande items. Een nuttige capaciteitsuitspraak noemt mensen en beschikbare dagen en trekt daar een deel van af dat is gereserveerd voor ongepland werk, gebaseerd op wat de laatste perioden lieten zien.

De capaciteitsplanningsvaardigheid en Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties beschrijven capaciteit voor services en infrastructuur. Dezelfde logica geldt voor een team: plan met bandbreedtes, controleer tegen wat er gebeurde en herzie het plan als de feiten veranderen.

### Gepland en ongepland werk samen

Serviceteams ontvangen incidenten, urgente verzoeken en wijzigingen die niemand heeft ingepland. Als deze niet worden geteld, is de prognose voor gepland werk te optimistisch. Geef ongepland werk eigen itemtypen, tel hoeveel er binnenkomen en hoe lang ze duren, en houd de gegevens naast het geplande werk. Dit geeft ook de Product Owner of service-eigenaar bewijs over welke terugkerende incidenten capaciteit opslokken, wat beslissingen ondersteunt over het oplossen van oorzaken (zie Onderwerp 3.3 — Probleemmanagement).

### Continue levering: flow en releaseritme

Teams die continu leveren, geven kleine wijzigingen vrij wanneer ze klaar zijn, in plaats van te wachten op het einde van een planningsperiode. Dit verkort de tijd tussen afronden en opleveren en maakt prognoses eenvoudiger te controleren: elk afgerond item is een datapunt. Wijzigingen volgen nog steeds de change-enablementaanpak van de organisatie, en vooraf geautoriseerde standaardwijzigingen helpen hierbij (zie Onderwerp 3.4 — Change enablement en Onderwerp 3.5 — Release- en deploymentmanagement).

### Als je Scrum, sprints en velocity gebruikt

Sommige teams plannen in cycli van vaste lengte. De Scrum Guide 2020, van Ken Schwaber en Jeff Sutherland, definieert Scrum als een lichtgewicht raamwerk voor adaptieve oplossingen voor complexe problemen. De gebeurtenissen vinden plaats binnen de Sprint, een tijdsbox van een maand of minder. Deze sectie behandelt het minimum dat een team nodig heeft als het ze gebruikt; lees de gids zelf voordat je de werkwijze van een team verandert.

- **Sprint en Sprint Goal:** de Sprint is de tijdsbox en het Sprint Goal is het enige doel ervan. Een doel dat iemand buiten het team kan begrijpen, stuurt keuzes beter dan een lijst tickets.
- **Product Backlog, Product Owner en Scrum Master:** de Product Backlog is een geordende lijst van wat het product nodig heeft. De Product Owner is één persoon die verantwoordelijk is voor de volgorde ervan, en de Scrum Master is verantwoordelijk voor het vestigen van Scrum en het helpen van het team het toe te passen.
- **Increment en Definition of Done:** een Increment is een bruikbare, geverifieerde stap naar het Product Goal, en de Definition of Done is de kwaliteitsnorm waaraan werk moet voldoen om mee te tellen. Een serviceteam kan monitoring, een runbook en een geteste rollback erin opnemen.
- **Gebeurtenissen:** Sprint Planning, de Daily Scrum, de Sprint Review en de Sprint Retrospective. De retrospective is waar het team onderzoekt hoe het werkte en verbeteringen plant (zie Onderwerp 6.1 — Teamgesprekken).
- **Velocity:** een op schattingen gebaseerd cijfer dat sommige teams gebruiken om te plannen hoeveel werk ze aannemen. Gebruik het alleen voor de eigen planning van het team. Als het een doel wordt, blazen teams schattingen op, dus geef de voorkeur aan flowmaatstaven, die afgeronde items tellen, en aan uitkomstmaatstaven.

De gids zegt dat Scrum een raamwerk is, geen volledige methode. Het behandelt geen incidentafhandeling, servicelevels of het wijzigingsproces, en alleen delen ervan gebruiken maakt het resultaat niet tot Scrum. Als je het aanpast, noem de variant dan eerlijk. Een mix van Scrum-gebeurtenissen en Kanban-flow wordt soms [Scrumban](https://en.wikipedia.org/wiki/Scrumban) genoemd.

## Goede praktijken

1. **Maak prognoses uit je eigen geschiedenis.** Gebruik de cyclustijden en doorvoer van recent afgeronde items en geef de periode die de gegevens beslaan. Leen geen cijfers van een ander team.
2. **Geef een bandbreedte, geen enkele datum.** Toon een laag, een typisch en een hoog geval en zeg wat het resultaat zou verschuiven. Een datum zonder bandbreedte belooft zekerheid die je niet hebt.
3. **Tel ongepland werk.** Registreer incidenten, urgente verzoeken en onderbrekingen als werkitems met eigen typen. Meet hoeveel er binnenkomen en hoe lang ze duren.
4. **Stel capaciteit vast uit gegevens.** Noem mensen en beschikbare dagen, trek verlof en supporttaken af en reserveer een deel voor ongepland werk op basis van recente perioden. Herzie dat aandeel regelmatig.
5. **Beperk onderhanden werk.** Te veel gestart werk verlengt cyclustijden en verzwakt elke prognose. Stel een limiet in en herzie die wanneer de gegevens veranderen (zie Onderwerp 1.5 — Kanban).
6. **Bekijk dagelijks de leeftijd van werkitems.** Leeftijd toont problemen in onafgeronde items terwijl er nog tijd is om te handelen. Bekijk eerst de oudste items.
7. **Gebruik percentielen en verdelingen.** Zeg dat de meeste items van een type binnen een aantal dagen klaar zijn en toon de trage staart. Gemiddelden verbergen die.
8. **Vergelijk prognoses met werkelijke uitkomsten.** Leg na elke periode vast wat er werd voorspeld en wat er gebeurde. Pas de methode aan, niet alleen het getal.
9. **Houd schattingen voor plannen, niet voor oordelen.** Als het team items schat, gebruik de cijfers dan voor de eigen planning en rangschik mensen of teams er niet op (zie Onderwerp 5.6 — Maatstaven en meten).
10. **Maak prognoses zichtbaar voor de mensen die ervan afhangen.** Deel de bandbreedte en de aannames met klanten en belanghebbenden en werk ze bij wanneer de feiten veranderen.
11. **Breng verbeterwerk in dezelfde flow.** Zet probleemoplossingen, monitoringwerk en automatisering naast functies, zodat de afwegingen zichtbaar zijn (zie Onderwerp 3.15 — Continue verbetering).
12. **Als je sprints en velocity gebruikt, houd ze klein en eerlijk.** Spreek af welke delen van Scrum je volgt, noem de variant en test een op flow gebaseerde aanpak als onderbrekingen domineren.

## Vragen om met je team te bespreken

**Hoe beantwoorden we vandaag "wanneer is dit klaar?", en waarop is het antwoord gebaseerd?**

Vraag naar de laatste drie antwoorden die het team gaf en waarop elk was gebaseerd. Vergelijk ze met wat er gebeurde. Teams vinden vaak dat datums uit hoop of uit de mening van de meest senior persoon kwamen. Vraag daarna welke geschiedenis het team in plaats daarvan kon gebruiken.

**Welk deel van onze tijd gaat naar werk dat niemand had gepland, en weten we dat uit gegevens?**

Tel gepland werk, urgente verzoeken en incidenten over de afgelopen weken. De facilitator kan vragen of het aandeel stabiel is of per seizoen varieert, en wie beslist wanneer een onderbreking het wint van gepland werk. Spreek af hoe je het vanaf nu registreert.

**Hoe zien onze cyclustijden eruit, en wat zouden we zeggen als een klant vroeg hoe lang een typisch verzoek duurt?**

Zet de cyclustijden van de laatste afgeronde items in een grafiek of lijst. Vraag wat de meeste duren, wat de traagste duren en wat de trage verklaart. Bespreek of een service level expectation op basis van deze geschiedenis eerlijk zou zijn en wie haar zou moeten horen.

**Welke van onze huidige items zijn al ouder dan de meeste afgeronde items?**

Kijk naar de oudste open items. Vraag waarom elk vastzit, wie het kan losmaken en wat het team vandaag doet. Sluit af door te beslissen hoe vaak het team de leeftijd bekijkt.

**Wanneer bleek een prognose van ons voor het laatst onjuist, en wat hebben we daarna veranderd?**

Vraag om een recent voorbeeld, de prognose en de uitkomst. Zoek wat de prognose miste: ongepland werk, een afhankelijkheid of items die groter waren dan verwacht. Spreek één verandering van de methode af en hoe het team ze controleert.

**Als we sprints of velocity gebruiken, wat doen die dan voor ons, en wat zouden we verliezen als we ze lieten vallen?**

Vraag eerlijk welk probleem elk oplost. Zoek bewijs, zoals betere focus of duidelijker doelen, en schade, zoals opgeblazen schattingen of genegeerde onderbrekingen. Een facilitator let op elke verandering die feedbackloops verwijdert, de nuttige onderdelen. Spreek één experiment af en hoe je de resultaten vergelijkt.

## In de praktijk: een agile ITIL-voorbeeld

De IT-afdeling van een regionaal ziekenhuis heeft een team van zeven dat de patiëntplanningsapplicatie onderhoudt. Kliniekmanagers vragen om datums en het team geeft ze. De meeste datums worden gemist, omdat incidenten van de afdelingen, verzoeken van klinieken en beveiligingspatches blijven binnenkomen en het team de meeste dagen daarmee bezig is.

De teamlead begint elk item te registreren, gepland of niet, met start- en einddatum. Na acht weken tonen de gegevens dat ongeveer de helft van de tijd van het team naar ongepland werk gaat en dat de meeste geplande items in minder dan twee weken klaar zijn, met een lange staart van items die op een ander team wachten. Het team spreekt drie veranderingen af. Het geeft elke prognose als bandbreedte, op basis van recente doorvoer en cyclustijden. Het reserveert de helft van zijn capaciteit voor ongepland werk en plant alleen op de rest. Het bekijkt elke ochtend de oudste open items.

In de twee maanden daarna zijn de prognoses grotendeels juist, en de kliniekmanagers, die nu een bandbreedte en de aannames zien, plannen eromheen. De service-eigenaar, een manager klinische operaties, kan zien welke terugkerende incidenten capaciteit opslokken en verhoogt de prioriteit van een fix voor een terugkerende storing in de afspraaksynchronisatie; de storing stopt. Er blijven moeilijkheden. Een groot incident verschuift nog steeds werk, en de managers die de snelle antwoorden van de oude regeling waardeerden, vinden de bandbreedtes minder bevredigend. Het team spreekt af te vertellen wat er in de prognose veranderde wanneer ze verschuift, en bij de volgende review zijn aanpak voor het verbeterwerk te vergelijken met een methode met vaste cycli.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams hebben het meeste baat bij prognoses met hun eigen flowgegevens. Registreer werk wanneer het start en eindigt, beperk onderhanden werk en geef kleine wijzigingen continu vrij. Deel de bandbreedte met de mensen die wachten en gebruik de Definition of Done, als je die hebt, om het operationele werk op te nemen dat een release ondersteunbaar maakt.

### Service- en beheerteams

Beheerteams bezitten het ongeplande werk waardoor prognoses falen. Registreer incidenten, verzoeken en wijzigingen als werkitems en deel terugkerende patronen zodat ze de volgorde van het werk beïnvloeden. Gebruik cyclustijdgegevens om realistische verwachtingen met klanten te stellen en wees expliciet over hoeveel capaciteit naar gepland verbeterwerk gaat.

### Leiderschap en governance

Leiders krijgen een eerlijker beeld uit prognosebandbreedtes en flowmaatstaven dan uit statusrapporten. Vraag om bandbreedtes met hun aannames, om prognosenauwkeurigheid over tijd en om wat het team veranderde op basis van de gegevens. Vermijd het stellen van doelen voor individuele cijfers, wat tot gesjoemel leidt, en accepteer dat een prognose verschuift wanneer de feiten dat doen.

### Klanten en gebruikers

Klanten en gebruikers profiteren van duidelijker verwachtingen en minder gemiste datums. Vraag het team om de verwachte tijd voor jouw type verzoek en verwacht dat ze op geschiedenis rust. Als je verzoek urgent is, verwacht dan dat je wordt gevraagd waarom, omdat het naar voren halen ervan het werk van iedereen anders raakt.

## Veelvoorkomende faalpatronen

- **Datums beloven uit hoop.** Datums komen uit meningen en worden gemist. Maak in plaats daarvan prognoses uit recent afgeronde items en toon de bandbreedte.
- **Ongepland werk negeren.** Onderbrekingen verpesten elke periode het plan. Tel ze in plaats daarvan als werkitems en reserveer capaciteit op basis van gegevens.
- **Prognoses met één getal.** Eén datum verbergt de onzekerheid. Geef in plaats daarvan een laag, typisch en hoog geval met aannames.
- **Alleen gemiddelden gebruiken.** De lange staart van trage items blijft verborgen. Gebruik in plaats daarvan percentielen en verdelingen.
- **Te veel starten.** Hoog onderhanden werk verlengt elke cyclustijd. Beperk het in plaats daarvan en rond af voordat je start.
- **Velocity of doorvoer als prestatiedoel gebruiken.** Teams blazen schattingen op of splitsen items om er goed uit te zien. Gebruik de cijfers in plaats daarvan voor planning en beoordeel uitkomsten (zie Onderwerp 5.6 — Maatstaven en meten).
- **De prognose nooit controleren.** De methode verbetert nooit. Vergelijk in plaats daarvan elke prognose met wat er gebeurde.
- **Vaste cycli toepassen op werk dat er niet bij past.** Een rij onvoorspelbare verzoeken die in vaste perioden wordt geperst, veroorzaakt frustratie. Test in plaats daarvan een op flow gebaseerde aanpak en vergelijk resultaten.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Prognoses | Datums komen uit meningen | Sommige teams gebruiken eerdere gegevens | Teams maken prognoses als bandbreedtes uit hun eigen flowgegevens | Prognosenauwkeurigheid wordt gevolgd en de methode verbeterd | Prognoses worden gecoördineerd over teams en leveranciers |
| Flowmaatstaven | Weinig maatstaven worden verzameld | Sommige teams registreren cyclustijd of doorvoer | De vier flowmaatstaven worden consistent verzameld | Maatstaven worden gereviewd en gebruikt om verwachtingen te stellen | Flowgegevens worden over teams gedeeld en gebruikt om samen te plannen |
| Capaciteit en ongepland werk | Onderbrekingen worden niet geteld | Sommige teams volgen ongepland werk | Capaciteit voor ongepland werk wordt uit gegevens vastgesteld | Het aandeel en de oorzaken van ongepland werk worden gereviewd en verminderd | Beheer- en leveringsteams plannen capaciteit samen |
| Gebruik van schattingen en vaste cycli | Schattingen worden gebruikt om mensen te beoordelen | Sommige teams gebruiken schattingen voor eigen planning | Teams spreken af welke praktijken ze gebruiken en benoemen varianten | De effecten van de praktijken worden gereviewd aan flow en uitkomsten | Praktijken worden over teams aangepast op basis van gedeeld leren |

## Checklist

- [ ] Prognoses komen uit de eigen geschiedenis van afgeronde items van het team.
- [ ] Elke prognose is een bandbreedte met genoemde aannames.
- [ ] Incidenten, verzoeken en verbeterwerk worden allemaal als werkitems geregistreerd.
- [ ] Capaciteit voor ongepland werk wordt uit gegevens vastgesteld en gereviewd.
- [ ] Cyclustijd, doorvoer, onderhanden werk en leeftijd van werkitems worden gevolgd.
- [ ] Onderhanden werk heeft een limiet die het team reviewt.
- [ ] De oudste open items worden regelmatig gereviewd.
- [ ] Prognoses worden na elke periode met de werkelijkheid vergeleken.
- [ ] Schattingen en velocity, indien gebruikt, zijn geen doelen.
- [ ] Elk gebruik van Scrum, sprints of een variant is opgeschreven en eerlijk benoemd.

## AI-prompts

**Doel: een prognosebandbreedte opbouwen uit je eigen doorvoergegevens.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Doel: cyclustijden analyseren en een service level expectation voorstellen.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Doel: meten hoeveel capaciteit naar ongepland werk gaat.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Doel: de oudste open items bekijken en het losmaken plannen.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## AI-vaardigheden

- [kanban](../../../../skills/kanban/SKILL.md): gebruik dit om flowmaatstaven, limieten op onderhanden werk en een service level expectation op te zetten.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om te controleren of beschikbare capaciteit de verwachte vraag dekt, en wat te doen aan een tekort.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): gebruik dit om toekomstige belasting als bandbreedte te schatten uit eerdere gegevens en bedrijfsplannen.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gebruik dit om een maatstaf te kiezen, haar sjoemelvector en vangrail te benoemen en een metrics charter in te vullen.
- [scrum](../../../../skills/scrum/SKILL.md): gebruik dit als het team in sprints plant, om rollen, gebeurtenissen en artefacten op te zetten of te beoordelen.

## Belangrijkste bronnen

- **The Kanban Guide** (kanbanguides.org): definieert de flowmaatstaven en de service level expectation als prognose op basis van eerdere cyclustijden.
- **The Scrum Guide** (Ken Schwaber en Jeff Sutherland, scrumguides.org): de gezaghebbende, korte definitie van Scrum, voor teams die sprints gebruiken.
- **Kanban (development)** (Wikipedia): een overzicht van de flowmaatstaven en het pull-systeem van Kanban.
- **Scrum (software development)** (Wikipedia): een overzicht van de geschiedenis, rollen, gebeurtenissen en kritiek op Scrum.

## Referenties

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
