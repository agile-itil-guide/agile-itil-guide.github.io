# Extreme Programming

**Extreme Programming (XP) is de agile methode die het meest specifiek is over engineeringpraktijk, en haar gewoonten om eerst te testen, continu te integreren en eigenaarschap van code te delen maken frequente wijziging van een live service veilig.**

## Waarom dit ertoe doet

Frequente verandering is het doel van continue levering en de zorg van servicemanagement. De weg om ze te verzoenen is niet meer goedkeuringsvergaderingen maar een sterker vermogen om te weten dat een wijziging werkt voordat ze gebruikers bereikt. Extreme Programming is de agile methode die het meest zegt over hoe je dat vermogen opbouwt: schrijf eerst tests, integreer meerdere keren per dag, houd het ontwerp eenvoudig en deel de verantwoordelijkheid voor de code.

Veel teams nemen de gebeurtenissen en borden van Scrum over en laten de engineeringpraktijken liggen. Het resultaat is een team dat in sprints plant maar met angst releaset. De praktijken van XP zijn de ontbrekende helft. Ze doen ertoe voor iedereen die het resultaat moet beheren, omdat een service die is gebouwd met geautomatiseerde tests, kleine releases en gedeelde kennis makkelijker te ondersteunen is dan een die door een paar mensen in grote, ongeteste batches is gebouwd.

XP vraagt ook iets van de organisatie wat makkelijk over het hoofd wordt gezien: een houdbaar tempo, een heel team met alle benodigde vaardigheden en een klant die echt beschikbaar is. Dat zijn voorwaarden van de werkomgeving, niet alleen gewoonten van programmeurs. Dit onderwerp legt de methode uit, het bewijs over haar grenzen en hoe haar praktijken aansluiten op ITIL-praktijken zoals change enablement, releasemanagement en kennismanagement.

## Kernconcepten

### Waar XP vandaan komt

Kent Beck ontwikkelde XP tijdens zijn werk aan het Chrysler Comprehensive Compensation System (C3), een salarisproject. Volgens het [Wikipedia-artikel over Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming) werd Beck in maart 1996 projectleider en verfijnde hij de methode daar, met Ward Cunningham als belangrijke invloed en Ron Jeffries die zich aansloot om het team te coachen. Zijn boek *Extreme Programming Explained* verscheen in oktober 1999. Chrysler annuleerde het C3-project in februari 2000, nadat Daimler-Benz het bedrijf had overgenomen.

Het artikel wijst erop dat veel XP-praktijken niet nieuw waren. Het noemt test-first-ontwikkeling in NASA's Project Mercury in de vroege jaren zestig. De zet van XP was goede praktijken naar "extreme" niveaus te brengen: als testen goed is, test dan voortdurend; als reviews goed zijn, review dan constant door in paren te werken. Beck en Cunningham behoorden tot de 17 mensen die het Agile Manifest schreven (zie Onderwerp 1.1 — Het Agile Manifest).

### De vijf waarden

XP noemt vijf waarden:

| Waarde | Wat het betekent | In servicewerk |
|---|---|---|
| **Communicatie** | Bouw gedeeld begrip op tussen ontwikkelaars, gebruikers en klanten, vooral door te praten en ontwerpen eenvoudig te houden | Ontwikkelaars en beheerders praten over hoe een release zich gaat gedragen voordat ze wordt uitgerold |
| **Eenvoud** | Doe het eenvoudigste dat werkt en bouw niet voor speculatieve toekomstige behoeften | Minder bewegende delen om te monitoren, te beveiligen en uit te leggen |
| **Feedback** | Leer snel van tests, van klanten en van de eigen schattingen van het team | Snelle testresultaten en productiemonitoring verkorten de tijd om te leren |
| **Moed** | Refactor, gooi verouderde code weg en volhard bij moeilijke problemen | Een oud component uitfaseren waar niemand aan durft te komen |
| **Respect** | Respect voor teamgenoten en voor het eigen werk | Schuldvrije review na storingen en een eerlijke bereikbaarheidsbelasting |

Het artikel merkt op dat respect is toegevoegd in de tweede editie van *Extreme Programming Explained*, na de oorspronkelijke vier.

### De praktijken

Het artikel over XP-praktijken groepeert twaalf praktijken in vier reeksen. Ze worden het best begrepen als een systeem dat zichzelf ondersteunt.

| Groep | Praktijken | Doel |
|---|---|---|
| **Fijnmazige feedback** | Pair programming, planning game, test-driven development, whole team | Feedback krijgen in minuten of dagen, niet in maanden |
| **Continu proces** | Continue integratie, ontwerpverbetering (refactoring), kleine releases | De software altijd in releasebare staat houden |
| **Gedeeld begrip** | Codeerstandaard, collectief code-eigenaarschap, eenvoudig ontwerp, systeemmetafoor | Iedereen in het team veilig elk deel laten wijzigen |
| **Welzijn van programmeurs** | Houdbaar tempo | Mensen jarenlang uitgerust en effectief houden |

Een korte beschrijving van de belangrijkste:

- **Pair programming:** twee mensen werken aan één taak op één werkstation, één schrijft en één beoordeelt, en ze wisselen vaak van partner.
- **Test-driven development (TDD):** de programmeur schrijft eerst een falende test en schrijft dan precies genoeg code om haar te laten slagen.
- **Continue integratie (CI):** ontwikkelaars voegen hun werk om de paar uur samen in de gedeelde repository, zodat integratieproblemen vroeg aan het licht komen.
- **Kleine releases:** lever werkende software in frequente, kleine stappen op zodat klanten voortgang zien en kunnen reageren.
- **Collectief code-eigenaarschap:** iedereen in het team mag elk deel van de code wijzigen.
- **Houdbaar tempo:** vermijd regelmatig overwerk en sta overwerk in twee opeenvolgende weken nooit toe.

### Controverses en grenzen

Het artikel noemt verschillende vormen van kritiek. Matt Stephens en Doug Rosenberg betoogden in een boek uit 2003 dat de praktijken van XP van elkaar afhangen, zodat slechts enkele overnemen het proces ondermijnt. Critici trokken ook pair programming als normale werkwijze in twijfel, het ontbreken van groot ontwerp vooraf, de on-site klant als single point of failure en informele wijzigingsverzoeken die tot herwerk en scope creep leiden. P. McBreen, en Boehm en Turner, schreven ook kritische beoordelingen. Het artikel voegt toe dat agile praktijkmensen veel van deze kritiek als misverstanden beschouwen.

Wat schaal betreft zegt het artikel dat Industrial XP, in 2004 geïntroduceerd, XP uitbreidde naar grotere en gedistribueerde teams met 23 praktijken. Het meldt ook een bewering, gemarkeerd als in behoefte aan een bron, dat ThoughtWorks redelijk succes had met gedistribueerde XP-projecten tot zestig mensen. Lees die bewering met voorzichtigheid en zie Onderwerp 1.8 — Agile opschalen voor de bredere discussie.

Het artikel bespreekt deployment of productiemonitoring niet verder dan continue integratie en kleine releases. XP zegt weinig over het draaien van software. Dat breng je mee uit servicemanagement, en je gebruikt XP om de overdracht minder riskant te maken.

### XP en de ITIL-kijk op wijziging

De practice change enablement van ITIL (zie Onderwerp 3.4 — Change enablement) is erop gericht dat wijzigingen worden beoordeeld, geautoriseerd en ingepland zodat het risico wordt beheerst. XP beheerst risico op een andere plek: in de code, via tests, kleine stappen en gedeelde kennis. Een wijziging die klein is, automatisch getest, geïntegreerd en makkelijk terug te draaien, is volgens elke redelijke beoordeling een wijziging met lager risico. De twee zienswijzen passen samen wanneer het bewijs uit de praktijken van XP in de wijzigingsbeslissing wordt gebruikt.

## Goede praktijken

1. **Neem praktijken als set over.** Het punt van de critici dat de praktijken van XP elkaar ondersteunen, is een nuttige waarschuwing. Testen zonder integratie, of integratie zonder kleine stappen, levert minder op dan de som. Voer ze waar mogelijk samen in en leer van welke de andere afhangen.
2. **Schrijf eerst de test voor wijzigingen die ertoe doen.** Schrijf voor een nieuw gedrag of een bugfix een falende test die het probleem toont en repareer het dan. De test blijft als bescherming tegen terugkeer van het probleem, wat vooral nuttig is voor fouten die incidenten veroorzaakten.
3. **Integreer meerdere keren per dag.** Houd branches kortlevend en bouw en test automatisch bij elke samenvoeging. Een kapotte build is de eerste prioriteit van het team.
4. **Release in kleine stappen.** Elke kleine release draagt minder risico en is makkelijker te begrijpen en terug te draaien. Streef naar het kleinste interval dat je pipeline veilig aankan en verkort het naarmate het vertrouwen groeit.
5. **Refactor voortdurend.** Verbeter het ontwerp elke dag een beetje in plaats van het te bewaren voor een herschrijving. De testsuite maakt dit veilig.
6. **Houd het ontwerp zo eenvoudig mogelijk.** Bouw wat nu nodig is en verwijder wat niet wordt gebruikt. Een kleiner systeem heeft minder om te monitoren, te patchen en uit te leggen.
7. **Deel het eigenaarschap van de code.** Laat elk teamlid elk deel wijzigen, ondersteund door tests en gedeelde standaarden. Dit vermindert de afhankelijkheid van een paar experts, wat ook een beschikbaarheidsrisico voor de service is.
8. **Pair bij riskant of onbekend werk.** Gebruik pairing voor lastige wijzigingen, voor onboarding en voor meelopen bij bereikbaarheidsdienst. Behandel het als hulpmiddel om kennis te spreiden en fouten te vangen en maak er geen regel voor elke taak van.
9. **Houd een houdbaar tempo aan.** Plan werk zo dat overwerk zeldzaam is en niet week na week wordt herhaald. Een vermoeide ingenieur in bereikbaarheidsdienst is een risico voor de service (zie Onderwerp 1.2 — Agile-principes over het tempo).
10. **Maak de klant onderdeel van het team.** Vind een echte gebruiker of gebruikersvertegenwoordiger die tijdens het werk vragen kan beantwoorden. Onthoud de kritiek dat één persoon een single point of failure is, dus betrek meer dan één stem.
11. **Schrijf acceptatiecriteria waar mogelijk als tests.** Zet de verwachtingen van de klant om in geautomatiseerde controles die bij elke build draaien. Ze documenteren dan gedrag en bewaken het tegelijk.
12. **Neem operationele controles op in de tests.** Voeg controles voor monitoring, logging en herstelgedrag toe aan de pipeline, zodat operationele gereedheid bij elke wijziging wordt geverifieerd (zie Onderwerp 3.5 — Release- en deploymentmanagement).

## Vragen om met je team te bespreken

**Hoe weten we dat een wijziging werkt voordat ze gebruikers bereikt, en hoe lang duurt het om dat te weten?**

Volg de controles die een wijziging passeert tussen de laptop van een ontwikkelaar en productie. Tel hoeveel er geautomatiseerd zijn en hoe lang elk duurt. Typische antwoorden zijn een handmatige test, een review en hoop. Vraag welke controle de meeste problemen heeft gevangen en welke nooit iets heeft gevangen. Kies daarna één handmatige controle om te automatiseren.

**Wie kan welke delen van ons systeem wijzigen, en wat gebeurt er als die mensen er niet zijn?**

Maak een lijst van de componenten en de mensen die elk begrijpen. Componenten met één persoon erachter zijn risico's voor de service. Collectief eigenaarschap is het XP-antwoord, en het heeft tests en gedeelde standaarden nodig om veilig te zijn. Vraag wat één persoon binnen een maand aan een ander kon leren. De facilitator kan vragen of vakanties of ziekte ooit een fix hebben vertraagd.

**Waar zou pairing ons het meest helpen, en waar zou het ons alleen vertragen?**

Pair programming is omstreden, dus nodig uit tot eerlijke meningen. Vraag mensen naar de beste en slechtste pairing die ze hebben gedaan. Pairing helpt vaak bij onbekende systemen, lastige wijzigingen en onboarding. Het helpt minder bij routinewerk dat één persoon goed kan doen. Spreek één situatie af waarin je een maand lang pairing probeert en hoe je het beoordeelt.

**Wat gebeurt er met onze kwaliteit onder druk, en wat laten we als eerste vallen?**

Vraag naar een recente drukte en wat er werd overgeslagen: tests, reviews, documentatie. Vraag wat er daarna gebeurde. Vaak kwam het overgeslagen werk terug als incidenten. Het punt is het patroon op te merken en vooraf te beslissen welke praktijken worden beschermd. Vermijd beschuldigingen en koppel het antwoord aan het houdbare tempo.

**Hoe vaak voegen we ons werk samen, en waarop wachten we?**

Vraag hoe lang een typische branch leeft en wat haar ophoudt. Lange branches weerspiegelen meestal grote wijzigingen, trage reviews of een onbetrouwbare build. Elk vraagt een andere oplossing. Vraag wat het team kon doen om samenvoegen binnen een paar uur de norm te maken. Kies één blokkade om te verwijderen.

**Hebben we een klant of gebruiker beschikbaar voor het team, of raden we wat ze willen?**

Vraag wie vragen over wat gebruikers nodig hebben beantwoordt en hoe lang dat duurt. Als het antwoord een lange keten is, vraag dan welke vraag het duurst was om verkeerd te hebben. Onthoud de eigen critici van XP: één klantvertegenwoordiger kan een bottleneck zijn. Bespreek hoe je kort en vaak meerdere gebruikers kunt bereiken.

## In de praktijk: een agile ITIL-voorbeeld

Het digitale team van een openbaarvervoerbedrijf, negen mensen, bouwt en beheert de reisplanner-app en een feed met live aankomstgegevens die andere ontwikkelaars in de stad gebruiken. Het team releaset maandelijks na een handmatige testcyclus van vier dagen. Als een release misgaat, duurt terugdraaien een halve dag, dus het team aarzelt vaker te releasen. De beheerlead, die ook de meest ervaren ontwikkelaar is, beantwoordt de meeste oproepen buiten kantooruren omdat niemand anders weet hoe de feed werkt.

Het team besluit enkele XP-praktijken samen in te voeren. Het zet continue integratie op die bij elke samenvoeging bouwt en unit tests draait. Voor elke bug die in productie wordt gevonden, schrijft het een falende test voordat het repareert. Twee ontwikkelaars pairen een uur per dag met de beheerlead aan het feedwerk. Het team voegt ook een deploymentstap toe die in minuten naar de vorige versie kan terugschakelen.

Na vier maanden releaset het team elke week. De testsuite vangt twee regressies vóór release die de handmatige cyclus pas op de laatste dag had gevonden. Drie ontwikkelaars kunnen nu de meeste feedoproepen afhandelen. Niet alles werkt: de testsuite duurt 25 minuten, dus ontwikkelaars voegen minder vaak samen dan bedoeld, en een foute wijziging aan de aankomstfeed glipt erdoor omdat de tests voorbeeldgegevens gebruikten die niet bij een echt randgeval pasten. Het team verplaatst de trage tests naar een tweede fase zodat de eerste resultaten binnen vijf minuten komen, en voegt een monitoringcontrole op de uitvoer van de feed toe. Ze spreken ook af dat pairing een hulpmiddel blijft voor moeilijke problemen en onboarding, geen regel voor elke taak.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams bezitten de praktijken van XP. Begin met de praktijken die de snelste feedback geven: geautomatiseerde tests en continue integratie. Behandel je testsuite als een product dat ook door beheer wordt gebruikt. Ze beschrijft wat de service hoort te doen en vertelt snel wanneer ze dat niet meer doet.

### Service- en beheerteams

Beheerders kunnen XP-ideeën voor hun eigen werk gebruiken: infrastructuur- en configuratiewijzigingen die worden getest voordat ze draaien, kleine wijzigingen die vaak worden geïntegreerd en kennis die via pairing en collectief eigenaarschap over het team wordt gedeeld. Vraag leveringsteams om tests die de fouten dekken die je in productie ziet en bied incidentgeschiedenis aan om te sturen wat wordt getest.

### Leiderschap en governance

Leiders maken XP mogelijk door het tempo te beschermen, build- en testinfrastructuur te betalen en te accepteren dat kwaliteit in het werk wordt ingebouwd en er niet achteraf in wordt gekeurd. Vraag om bewijs van veiligheid dat uit de pipeline komt, zoals testresultaten en releasegeschiedenissen, en eis geen dubbel handmatig bewijs.

### Klanten en gebruikers

Klanten hebben in XP de meest directe rol: ze zijn deel van de feedbackloop van het team. Verwacht dat je wordt gevraagd kleine releases te proberen, snel vragen te beantwoorden en te zeggen wat deze week het belangrijkst is. In ruil daarvoor zou je minder verrassingen en snellere oplossingen voor gemelde problemen moeten zien.

## Veelvoorkomende faalpatronen

- **Alleen de rituelen overnemen.** Teams nemen stand-ups en borden over en slaan tests en integratie over. Begin in plaats daarvan met geautomatiseerde tests en continue integratie, want die leveren het meeste op.
- **Pairing als regel behandelen.** Afgedwongen pairing bij al het werk frustreert mensen en vertraagt routinetaken. Gebruik pairing in plaats daarvan voor moeilijke problemen, onboarding en kennisoverdracht en review hoe het werkt.
- **Een testsuite die niemand vertrouwt.** Trage of onbetrouwbare tests worden genegeerd. Houd de suite in plaats daarvan snel en repareer of verwijder instabiele tests snel.
- **Collectief eigenaarschap zonder standaarden.** Iedereen kan alles wijzigen en de code vervalt. Combineer het in plaats daarvan met gedeelde codeerstandaarden, review en geautomatiseerde controles.
- **Eén klantvertegenwoordiger.** Eén persoon wordt de bottleneck of de bron van vooringenomenheid. Spreid in plaats daarvan het contact over meerdere gebruikers en toets beslissingen aan echt gebruik.
- **Ontwerp helemaal overslaan.** Teams refactoren herhaaldelijk zonder richting. Houd in plaats daarvan een licht beeld van de architectuur en bekijk het met regelmatige tussenpozen.
- **Overwerk als normaal.** Lange uren tasten kwaliteit aan en veroorzaken incidenten. Plan in plaats daarvan op een houdbaar tempo en behandel herhaald overwerk als signaal om de scope te verkleinen.
- **Beheer negeren.** XP zegt weinig over het draaien van software en teams nemen aan dat het gedekt is. Voeg in plaats daarvan operationele controles toe aan de tests en nodig beheerders uit voor de planning.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Testen | Testen is handmatig en laat | Sommige teams hebben geautomatiseerde unit tests | Teams schrijven tests bij de code en draaien ze bij elke wijziging | Testresultaten en ontsnapte defecten worden gevolgd en gereviewd | De teststrategie wordt gecoördineerd over services en gedeeld met beheer |
| Integratie en release | Integratie is zeldzaam en releases zijn groot | Sommige teams gebruiken continue integratie | Een gedeelde pipeline bouwt, test en deployt elke wijziging | Releasefrequentie en faalpercentage worden gemeten en verbeterd | Pipelines worden gecoördineerd over teams en leveranciers |
| Gedeeld eigenaarschap en kennis | Kennis zit bij enkele individuen | Sommige teams pairen of roteren werk | Collectief eigenaarschap met standaarden is de norm | Kennisgaten worden gevolgd en verkleind | Kennis beweegt vrij tussen teams en naar runbooks |
| Tempo en welzijn | Overwerk is routine | Sommige teams letten op hun werkbelasting | Houdbaar tempo is beleid | Bereikbaarheidsbelasting en overwerk worden gemeten en gereviewd | Werkbelasting wordt over teams verdeeld op basis van gedeelde gegevens |

## Checklist

- [ ] Het team heeft afgesproken welke XP-praktijken het gebruikt en heeft ze samen geprobeerd.
- [ ] Geautomatiseerde tests draaien bij elke wijziging en een falende build wordt eerst gerepareerd.
- [ ] Elke productiebug krijgt een test die haar had gevangen.
- [ ] Werk wordt meerdere keren per dag op de gedeelde branch samengevoegd.
- [ ] Releases zijn klein en een rollback kan snel.
- [ ] Meer dan één persoon kan elk deel van het systeem wijzigen en ondersteunen.
- [ ] Pairing wordt gebruikt voor moeilijke problemen en onboarding en het effect wordt gereviewd.
- [ ] Overwerk is zeldzaam en wordt niet week na week herhaald.
- [ ] Een gebruiker of gebruikersvertegenwoordiger is beschikbaar om tijdens het werk vragen te beantwoorden.
- [ ] Tests omvatten controles voor monitoring en herstelgedrag.

## AI-prompts

**Doel: een productie-incident omzetten in een test en een lijst lessen.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Doel: beoordelen hoe veilig je team kleine wijzigingen kan releasen.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Doel: een experiment van een maand met pairing ontwerpen.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een Definition of Done controleren op operationele gereedheid.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## AI-vaardigheden

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): gebruik dit om XP-praktijken zoals pairing, test-driven development en continue integratie te beoordelen of in te voeren.
- [user-story](../../../../skills/user-story/SKILL.md): gebruik dit om klantbehoeften om te zetten in stories met acceptatiecriteria die geautomatiseerde tests kunnen worden.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gebruik dit om kleine, frequente releases en de controles die ze veilig maken te plannen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om te beoordelen hoe goed de praktijken werken en één verandering te kiezen.
- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om kennis die bij één persoon zit om te zetten in een gedeelde, geteste procedure.

## Belangrijkste bronnen

- **Extreme programming** en **Extreme programming practices** (Wikipedia): een overzicht van de geschiedenis, waarden, praktijken en kritiek, met bronvermeldingen.
- **Extreme Programming Explained** (Kent Beck): de oorspronkelijke beschrijving van de methode; de tweede editie voegt de waarde respect toe.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP is een van de methoden waarvan de auteurs het Manifest schreven.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens en Doug Rosenberg, 2003): de bekendste kritiek, nuttig om je eigen aannames te toetsen.

## Referenties

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
