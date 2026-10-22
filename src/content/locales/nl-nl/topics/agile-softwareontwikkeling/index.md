# Agile softwareontwikkeling

**Agile softwareontwikkeling is een familie van methoden voor continue softwarelevering die in kleine stappen opleveren en van feedback leren, en de praktijken die eruit zijn voortgekomen, zoals geautomatiseerd testen en continue integratie, vormen de praktische basis om veranderende services veilig te beheren.**

## Waarom dit ertoe doet

De meeste teams die een IT-service beheren, bouwen en wijzigen die ook. De manier waarop software wordt gebouwd bepaalt hoe vaak de service verandert, hoe riskant elke wijziging is en hoeveel de mensen die bereikbaar zijn kunnen vertrouwen op wat ze krijgen. Een team dat in grote batches bouwt en zelden overdraagt, geeft beheer een paar grote, beangstigende releases. Een team dat in kleine stappen bouwt, met tests en snelle feedback, kan veel kleine, begrepen releases geven.

Agile softwareontwikkeling is de bekendste verzameling ideeën voor de tweede werkwijze. Het wordt ook wijdverbreid verkeerd begrepen. Sommigen gebruiken "agile" voor "geen plannen en geen documenten", anderen voor elk proces met een dagelijkse vergadering. Dit onderwerp geeft een helderder beeld: waar agile methoden vandaan komen, wat ze gemeen hebben, wat ze niet beweren en welke praktijken het zwaarst wegen voor een team dat een service draaiend moet houden.

Het bewijs vraagt om zorgvuldig lezen. Het [Wikipedia-artikel over agile softwareontwikkeling](https://en.wikipedia.org/wiki/Agile_software_development) zegt dat het anekdotische bewijs voor agile sterk is maar het empirische bewijs "beperkt en niet volledig overtuigend", en het wijst op enquêtes, zoals de jaarlijkse State of Agile-enquête, die voordelen melden maar uit zelfgerapporteerde meningen komen. Behandel agile methoden als veelbelovende benaderingen om in je eigen omgeving te toetsen.

## Kernconcepten

### Wat de term omvat

"Agile softwareontwikkeling" is een overkoepelende term. Het Wikipedia-artikel beschrijft hem als benaderingen die voortkomen uit de waarden en principes die in 2001 door 17 praktijkmensen zijn afgesproken (zie Onderwerp 1.1 — Het Agile Manifest en Onderwerp 1.2 — Agile-principes). Een hoofdletter-A "Agile" wordt vaak gebruikt voor de praktijken die uit die mindset zijn gegroeid, en een kleine letter "agile" voor het vermogen zich aan te passen. Het onderscheid is niet strikt en je hoort beide.

Agile methoden streven naar continue softwarelevering. Ze steunen op voortdurende samenwerking tussen belanghebbenden en ontwikkelaars, bouwen projecten rond gemotiveerde individuen en streven naar continue verbetering via feedback, met aandacht voor kwaliteit. Ze verschillen in wat ze benadrukken. Sommige, zoals Extreme Programming, richten zich op engineeringpraktijken, andere, zoals Scrum en Kanban, op hoe werk wordt beheerd.

### Een korte geschiedenis

Het Wikipedia-artikel voert iteratieve en incrementele ontwikkeling terug tot 1957, waarbij evolutionair projectmanagement en adaptieve softwareontwikkeling in de vroege jaren zeventig opduiken. In de jaren negentig verscheen een groep lichte methoden als reactie op zware, plangedreven processen, vaak het [watervalmodel](https://en.wikipedia.org/wiki/Waterfall_model) genoemd. Het artikel noemt rapid application development (1991), het unified process en de dynamic systems development method, DSDM (1994), Scrum (1995), Crystal Clear en Extreme Programming (1996) en feature-driven development (1997).

In februari 2001 kwamen zeventien praktijkmensen bijeen in Snowbird, Utah, en schreven het Manifest. Latere verklaringen bouwden erop voort: de PM Declaration of Interdependence in 2005, het Software Craftsmanship Manifesto in 2009 en de *Guide to Agile Practices* van de Agile Alliance in 2011, die in 2016 werd hernoemd tot *Agile Glossary*.

### Adaptieve en voorspellende benaderingen

Het artikel beschrijft een continuüm tussen voorspellende en adaptieve benaderingen. Een voorspellende methode plant het meeste werk vooraf in detail en werkt goed wanneer de eisen stabiel en goed begrepen zijn. Een adaptieve methode verwacht verandering en plant op korte horizons. Boehm en Turner, aangehaald in het artikel, stellen dat elke kant zijn eigen "thuisbasis" heeft, wat betekent dat geen van beide overal gelijk heeft.

Dit is belangrijk voor een serviceteam omdat het werk gemengd is. Het vervangen van een datacenternetwerk ligt dichter bij voorspellend werk. Het verbeteren van een klantgerichte app ligt dichter bij adaptief werk. Kies de aanpak per soort werk, niet één keer voor de hele organisatie.

### Gangbare methoden

Het artikel noemt veel methoden. Degene die je het meest zult tegenkomen:

| Methode | Belangrijkste nadruk | Behandeld in |
|---|---|---|
| Scrum | Gedefinieerde rollen, vaste gebeurtenissen en een vast ritme | Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven |
| Kanban | Werk visualiseren en beperken hoeveel er onderhanden is | Onderwerp 1.5 — Kanban |
| Extreme Programming (XP) | Engineeringpraktijken zoals pair programming en test-driven development | Onderwerp 1.6 — Extreme Programming |
| Lean softwareontwikkeling | Lean ideeën toepassen, zoals verspilling verwijderen, op software | Onderwerp 1.7 — Lean softwareontwikkeling |
| Feature-driven development, DSDM, Crystal en adaptieve softwareontwikkeling | Andere lichte methoden voor continue softwarelevering met eigen rollen en praktijken | Dit onderwerp |
| Scrumban | Een mix van Scrum-gebeurtenissen en Kanban-flow | Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven en Onderwerp 1.5 — Kanban |

Geen enkele methode is "de" agile methode. Het artikel citeert Ken Schwabers opvatting dat teams in de problemen komen door te zoeken naar een perfecte methodologie terwijl de onderneming zelf moet veranderen, en de suggestie van Bas Vodde dat Scrum de basis levert die teams lokaal uitbreiden.

### Gangbare praktijken

Het artikel noemt praktijken die veel agile teams gebruiken. Een selectie, met waar elk voor dient:

- **User stories en backlogs:** beschrijf werk vanuit het gezichtspunt van de gebruiker en houd een geprioriteerde lijst bij van wat er hierna moet gebeuren.
- **Dagelijkse stand-up:** een korte dagelijkse bijeenkomst, vaak rond 15 minuten, om voortgang en blokkades te delen.
- **Test-driven development (TDD) en acceptance test-driven development (ATDD):** schrijf eerst tests, zodat "klaar" is gedefinieerd voordat het werk begint.
- **Continue integratie (CI):** voeg wijzigingen vaak samen en bouw en test automatisch. Het artikel merkt op dat Grady Booch de term in 1991 voor het eerst voorstelde.
- **Pair programming en refactoring:** twee mensen delen werk om de kwaliteit te verbeteren en kennis te spreiden, en de code wordt voortdurend verbeterd zonder te veranderen wat ze doet.
- **Retrospectives:** het team reflecteert met regelmatige tussenpozen op hoe het kan verbeteren.

Voor een serviceteam verdienen drie hiervan bijzondere aandacht. Geautomatiseerde tests en continue integratie maken frequente verandering veilig. Retrospectives geven een vaste plek om te verbeteren hoe het team werkt. Backlogs geven één geordende lijst waarin serviceverbeteringen eerlijk concurreren met nieuwe functies.

### Ervaring, meting en valkuilen

Het artikel meldt dat enquêtes, waaronder een enquête van Shine Technologies in 2002–2003 en de State of Agile-enquête sinds 2006, ervaren winst in kwaliteit, productiviteit en tevredenheid van de business vinden. Het merkt ook op dat een VersionOne-enquête onvoldoende training als meest genoemde oorzaak van mislukte invoeringen vond, en noemt valkuilen zoals de rol van product owner laten vervullen door een lid van het ontwikkelteam en gebrek aan steun van de sponsor.

Het meten van "hoe agile" een team is, heeft verschillende zelfbeoordelingen opgeleverd, zoals de Nokia-test, en één index die projecten beoordeelt op duur, risico, nieuwheid, inspanning en interactie. Wees voorzichtig met zo'n score. Een getal is een gespreksstarter, en een team dat voor de score optimaliseert, kan de kern verliezen.

### Grootschalig, gedistribueerd en gereguleerd werk

Het artikel zegt dat opschalen voorbij ongeveer 20 ontwikkelaars, of over locaties heen, uitdagingen meebrengt en dat een aantal raamwerken is voorgesteld, hoewel de meningen verschillen over hoe goed ze werken (zie Onderwerp 1.8 — Agile opschalen). Het meldt ook dat gereguleerde domeinen zoals medische hulpmiddelen, farmacie, financiën, kernenergie, automotive en luchtvaartelektronica eerst als ongeschikt voor agile werden beschouwd, en dat er nu aanpassingen bestaan. De zorgen die het noemt zijn kwaliteitsborging, veiligheid en beveiliging, traceerbaarheid en verificatie en validatie.

Dit zijn precies de zorgen van servicemanagement. Wanneer een toezichthouder of auditor om bewijs vraagt, kan een agile team dat leveren uit de tools die het al gebruikt, zoals de geschiedenis van het versiebeheer, geautomatiseerde testresultaten en wijzigingsregistraties (zie Onderwerp 5.7 — Governance, risico en compliance).

### Kritiek die je moet kennen

Steven Rakitin noemde agile in een brief aan *IEEE Computer* in 2001 "nog een poging om de discipline van software engineering te ondermijnen" en las de voorkeur van het Manifest voor werkende software als vergunning om documentatie over te slaan. Voorstanders antwoorden dat documentatie "net goed genoeg" moet zijn, in de woorden van Scott Ambler. Serviceteams kennen beide kanten: te weinig documentatie vertraagt overdrachten en incidentafhandeling, en te veel veroudert.

## Goede praktijken

1. **Stem de methode af op de soort werk.** Gebruik continue softwarelevering en frequente feedback waar eisen veranderen, en meer vooraf plannen waar ze vaststaan en de kosten van fouten hoog zijn. Beslis dit per soort werk en herzie het als omstandigheden veranderen.
2. **Begin met de kleinste nuttige batch.** Breek werk op in stukken die in dagen kunnen worden gebouwd, getest en vrijgegeven. Kleine batches geven snellere feedback en maken een mislukte wijziging makkelijker te begrijpen en terug te draaien.
3. **Automatiseer testen voordat je releases versnelt.** Frequente releases zonder geautomatiseerde tests verschuiven risico naar je gebruikers. Bouw een suite die bij elke wijziging draait en luid faalt, en behandel een kapotte build als de eerste prioriteit van het team.
4. **Integreer continu.** Voeg werk vaak samen op een gedeelde branch en bouw het automatisch. Langlevende branches verbergen conflicten tot ze duur zijn om op te lossen.
5. **Laat "klaar" beheer omvatten.** Een story is niet af voordat ze kan worden gemonitord, ondersteund en teruggedraaid. Voeg deze controles toe aan je definition of done en vraag beheercollega's mee te schrijven (zie Onderwerp 3.5 — Release- en deploymentmanagement).
6. **Houd één geordende backlog per team.** Zet functies, defecten en serviceverbeteringen in dezelfde geprioriteerde lijst zodat ze openlijk concurreren. Verborgen zijwachtrijen zijn waar operationeel werk stilletjes verhongert.
7. **Schrijf net genoeg documentatie.** Houd documenten die mensen gebruiken, zoals runbooks, servicebeschrijvingen en architectuurnotities, en geef elk een eigenaar en een reviewdatum. Verwijder de rest. Dit beantwoordt de zorg van Rakitin zonder terug te keren naar zware documenten.
8. **Houd regelmatig retrospectives en handel ernaar.** Kies uit elke retrospective één verandering, met een eigenaar en een datum. Een retrospective die alleen discussie oplevert, wordt een ritueel.
9. **Investeer in training en sponsoring.** Het enquêtebewijs in het Wikipedia-artikel wijst op training en steun van de sponsor als gangbare zwakke punten. Plan voor beide voordat je teams vraagt hun werkwijze te veranderen.
10. **Pas aan en zeg waarom.** Pas een methode aan je context aan en schrijf op wat je hebt gewijzigd en waarom. Een praktijk veranderen omdat ze lastig is, zonder reden, is hoe teams van de voordelen afdrijven.
11. **Meet uitkomsten, geen agility-scores.** Volg zaken als doorlooptijd van een wijziging, hoe vaak releases incidenten veroorzaken en hoe snel de service wordt hersteld (zie Onderwerp 5.6 — Maatstaven en meten). Gebruik zelfbeoordelingen alleen als aanleiding voor discussie.
12. **Breng servicedata terug naar de ontwikkeling.** Voed de backlog met terugkerende incidenten en probleemregistraties, zodat ontwikkeling van beheer leert (zie Onderwerp 3.3 — Probleemmanagement).

## Vragen om met je team te bespreken

**Welke agile praktijken gebruiken we echt, en voor welke hebben we alleen namen?**

Maak een lijst van de praktijken waarvan je denkt dat je ze volgt: stand-ups, retrospectives, backlogs, geautomatiseerde tests. Vraag bij elk wanneer het voor het laatst een beslissing veranderde. Praktijken die niemand aan een beslissing kan koppelen, zijn rituelen. Een facilitator vraagt om bewijs zonder te beschuldigen. Kies daarna een ritueel om te verbeteren of te laten vallen.

**Voor welk werk van ons zou een meer voorspellende aanpak verstandiger zijn, en waarom?**

Het Wikipedia-artikel meldt dat elke benadering een "thuisbasis" heeft. Vraag mensen recent werk te sorteren in stabiel en snel veranderend. Typisch stabiel werk omvat hardwarevernieuwing, datacenterverhuizingen en grote contractverlengingen. Vraag wat een zorgvuldiger plan in elk geval zou hebben opgeleverd. Het doel is niet één stijl op alles toe te passen.

**Hoe snel merken we dat iets wat we hebben gebouwd niet werkt, en wat zou dat sneller maken?**

Volg het pad van het schrijven van een wijziging tot het leren hoe ze zich in gebruik gedraagt. Tel de fasen en de wachttijden: review, build, test, release, monitoring. Vraag welke fase het team het minst vertrouwt. Vaak is het antwoord een handmatige test of een releasestap die van één persoon afhangt. Kies een fase om te verkorten en spreek af hoe je weet dat ze korter is geworden.

**Wat zou een auditor of toezichthouder van ons willen zien, en levert onze werkwijze dat al op?**

Vraag iemand met audit- of beveiligingservaring mee te doen. Verzamel het bewijs dat je tools al opleveren: wijzigingsgeschiedenis, testresultaten, goedkeuringen. Maak dan een lijst van wat ontbreekt. Teams zijn vaak verrast dat frequente kleine wijzigingen met geautomatiseerde controles beter bewijs opleveren dan zeldzame grote. Leg de gaten vast voor het governancegesprek in Onderwerp 5.7 — Governance, risico en compliance.

**Waar helpt onze documentatie mensen, en waar bestaat ze alleen omdat ons is gezegd haar te schrijven?**

Vraag mensen welke documenten ze de afgelopen maand hebben gebruikt. Een runbook dat wordt gebruikt en actueel gehouden, telt. Een ontwerpdocument dat niemand heeft gelezen sinds de dag van goedkeuring, telt niet. Laat het team beslissen wat te houden, wat samen te voegen en wat te verwijderen, en wijs eigenaren aan. Dit is een veilige manier om het idee "net goed genoeg" toe te passen.

**Wat hebben we het laatst veranderd aan onze werkwijze vanwege wat we leerden, en wat is de volgende verandering?**

Vraag naar de meest recente concrete verandering uit een retrospective en of ze werkte. Als niemand er een kan noemen, doet de retrospective haar werk niet. Kijk waarom: de acties kunnen te groot zijn, geen eigenaar hebben of met leveringswerk concurreren. Sluit af met het kiezen van een kleine verandering voor de komende twee weken.

## In de praktijk: een agile ITIL-voorbeeld

Een middelgrote webwinkel heeft een ontwikkelteam van tien mensen dat zijn ordermanagementsysteem bouwt en een apart beheerteam van zes dat het draait. Het ontwikkelteam heeft gekozen voor sprints en releases om de twee weken. Het beheerteam ontvangt elke release met een korte notitie en het verzoek haar binnen een venster op donderdagavond uit te rollen. Beheerders klagen dat ze pas weten wat er is veranderd wanneer iets kapotgaat, en ontwikkelaars klagen dat een donderdagvenster te laat is om iets te herstellen wat bij het testen is gevonden.

Tijdens een gezamenlijke retrospective brengen de twee teams één recente release stap voor stap in kaart. Ze zien dat de enige geautomatiseerde tests ongeveer de helft van de orderflow afdekken, dat niemand aan de beheerzijde de release heeft gezien vóór de donderdagnotitie en dat de rollbackstap nooit is geprobeerd. Ze spreken drie veranderingen af. Het ontwikkelteam voegt een monitoringcontrole en een rollbacktest toe aan zijn definition of done. Een beheeringenieur sluit aan bij elke sprintreview. Releases die de volledige geautomatiseerde suite doorstaan, worden uitgerold zodra ze klaar zijn, niet alleen op donderdag.

In de twee maanden daarna worden twee van de volgende vier releases halverwege de week uitgerold. De beheeringenieur ziet in een sprintreview een ontbrekend logbericht, wat in een later incident een uur zoeken bespaart. Niet alles verbetert: de geautomatiseerde suite slaat het terugbetalingspad nog steeds over, en een terugbetalingsfout bereikt klanten. De teams voegen terugbetalingstests toe aan de volgende sprint en spreken af elke maand de gaten in de dekking te bekijken. De beheeringenieur zegt ook dat het bijwonen van de sprintreview tijd kost die het rooster niet toestaat, dus verschuift de beheermanager een deel van de andere taken van die ingenieur.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams bezitten de praktijken die verandering veilig maken: tests, continue integratie, kleine batches en een duidelijke definition of done. Behandel beheer als klant van je werk. Vraag wat ze nodig hebben om een release te draaien en neem het op in de backlog zoals een functie.

### Service- en beheerteams

Beheerders kunnen agile praktijken toepassen op hun eigen werk: een zichtbare backlog met verbeteringen, korte feedbackcycli op incidenten en regelmatige retrospectives. Vraag vroeg om deel te nemen aan planning en review. Breng kennis mee over hoe services falen, wat de nuttigste input is die een leveringsteam kan krijgen.

### Leiderschap en governance

Leiders beslissen of teams de tijd en training krijgen om zo te werken. Het enquêtebewijs in het Wikipedia-artikel wijst op training en sponsoring als gangbare zwakke punten. Vraag welke beheersmaatregelen je nodig hebt en hoe een team daaraan kan voldoen met zijn eigen tools, in plaats van een parallel proces toe te voegen.

### Klanten en gebruikers

Klanten zien het voordeel van agile methoden als zichtbare verbetering in een gestaag ritme, niet als een ceremonie. Verwacht regelmatig werkende wijzigingen te beoordelen en gevraagd te worden wat het belangrijkst is. In ruil daarvoor heeft het team tijdige antwoorden nodig en bereidheid om kleine, onvolmaakte releases te accepteren die in de loop van de tijd verbeteren.

## Veelvoorkomende faalpatronen

- **Rituelen overnemen zonder engineeringpraktijken.** Dagelijkse vergaderingen en borden verschijnen, maar er zijn geen geautomatiseerde tests, dus releases blijven riskant. Investeer in plaats daarvan naast de ceremonies in testen, integratie en releaseautomatisering.
- **Een wijzigingsproces "agile" noemen zonder beslisrechten te veranderen.** Teams wachten nog steeds op verre goedkeuringen. Verplaats in plaats daarvan beslissingen naar de mensen met kennis en stel duidelijke grenzen.
- **Agile als excuus gebruiken voor geen documentatie.** Overdrachten en incidenten lijden eronder. Houd in plaats daarvan de korte documenten die mensen gebruiken en geef elk een eigenaar.
- **Training overslaan.** De VersionOne-bevinding in het Wikipedia-artikel noemt onvoldoende training als meest genoemde oorzaak van mislukte invoeringen. Train in plaats daarvan teams en leiders voor en tijdens de verandering.
- **Een lid van het ontwikkelteam de rol van product owner geven.** Het artikel noemt dit als valkuil. Kies in plaats daarvan iemand die de business vertegenwoordigt en tijd heeft om te beslissen.
- **Opschalen door een raamwerk te kopiëren.** Een groot raamwerk dat zonder begrip wordt geïnstalleerd, voegt proces toe en vertraagt teams. Begin in plaats daarvan bij het probleem dat je hebt en neem alleen over wat helpt (zie Onderwerp 1.8 — Agile opschalen).
- **Een agility-score najagen.** Teams optimaliseren voor de maatstaf. Volg in plaats daarvan uitkomsten zoals doorlooptijd, releasefouten en tijd tot herstel van de service.
- **Ontwikkeling en beheer gescheiden houden.** Het leveringsteam levert op en het beheerteam erft. Breng ze in plaats daarvan samen in gedeelde planning, reviews en incidentleren (zie Onderwerp 5.2 — DevOps).

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Continue softwarelevering | Werk wordt in grote releases geleverd | Sommige teams leveren in korte cycli | Teams delen een gemeenschappelijk leverritme en een definition of done | Doorlooptijd en releaseresultaten worden gemeten en gereviewd | Releaseritmes worden gecoördineerd over teams en leveranciers |
| Engineeringpraktijken | Testen en builds zijn grotendeels handmatig | Sommige teams hebben geautomatiseerde tests en builds | Een gedeelde pipeline draait tests bij elke wijziging | Testdekking en faalpercentages worden gevolgd en gaten worden gedicht | Pipelines en praktijken worden over teams verbeterd op basis van gedeeld bewijs |
| Backlog en prioritering | Verzoeken komen per e-mail en ad hoc binnen | Teams houden eigen backlogs bij | Elk team heeft één geordende backlog met servicewerk | Backlogflow en -leeftijd worden met belanghebbenden gereviewd | Prioriteiten worden afgestemd over teams, klanten en leveranciers |
| Leren en aanpassen | Reviews volgen alleen op grote storingen | Sommige teams houden retrospectives | Alle teams houden regelmatige retrospectives en leggen acties vast | Acties worden tot voltooiing gevolgd en effecten worden gecontroleerd | Lessen verplaatsen zich zonder centrale sturing tussen teams en naar beleid |

## Checklist

- [ ] Het team kan zeggen welke agile methode of praktijken het gebruikt en waarom het ze koos.
- [ ] Werk is ingedeeld in voorspellend en adaptief, met een aangegeven aanpak voor elk.
- [ ] Geautomatiseerde tests draaien bij elke wijziging en een falende build stopt de lijn.
- [ ] Onze definition of done omvat monitoring, supportnotities en een geteste rollback.
- [ ] Elk team heeft één geordende backlog met serviceverbeteringen en defecten.
- [ ] Runbooks en servicebeschrijvingen hebben eigenaren en reviewdatums.
- [ ] Retrospectives worden in een vast ritme gehouden en elk eindigt met één actie met eigenaar.
- [ ] Teams en leiders hebben training gehad in de werkwijze die we van hen vragen.
- [ ] We weten welk bewijs auditors nodig hebben en hoe onze tools dat leveren.
- [ ] Uitkomstmaatstaven, zoals doorlooptijd en tijd tot herstel van de service, worden regelmatig gereviewd.

## AI-prompts

**Doel: je huidige praktijken afbeelden op gangbare agile praktijken en gaten vinden.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Doel: een definition of done opstellen die beheer omvat.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Doel: bewijs voor een auditor voorbereiden uit je agile tools.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Doel: een retrospective plannen over hoe je team agile praktijken invoert.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [scrum](../../../../skills/scrum/SKILL.md): gebruik dit om de rollen, gebeurtenissen en artefacten van een Scrum-team op te zetten of te beoordelen.
- [kanban](../../../../skills/kanban/SKILL.md): gebruik dit om een visueel bord met limieten op onderhanden werk te ontwerpen voor een service- of beheerteam.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): gebruik dit om engineeringpraktijken zoals test-driven development en continue integratie te beoordelen of in te voeren.
- [user-story](../../../../skills/user-story/SKILL.md): gebruik dit om user stories met acceptatiecriteria te schrijven die operationele behoeften omvatten.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om een retrospective te houden die eindigt met één verandering met eigenaar.

## Belangrijkste bronnen

- **Manifesto for Agile Software Development** en **Principles behind the Agile Manifesto** (agilemanifesto.org): de primaire verklaring van waarden en principes.
- **Agile software development** (Wikipedia): een breed overzicht van geschiedenis, methoden, praktijken, invoering en kritiek met veel geciteerde bronnen.
- **Agile Glossary** (Agile Alliance): definities van agile praktijken en termen, onderhouden door de gemeenschap die uit het Manifest is voortgekomen.

## Referenties

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
