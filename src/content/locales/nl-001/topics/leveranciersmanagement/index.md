# Leveranciersmanagement

**Leveranciersmanagement zorgt ervoor dat de externe partijen waarvan een service afhangt zorgvuldig worden gekozen, aan duidelijke verwachtingen worden gehouden en als onderdeel van de service worden behandeld, want een belofte aan je klanten is maar zo sterk als de beloften erachter.**

## Waarom dit ertoe doet

Bijna geen enkele moderne service wordt door één team alleen gebouwd en beheerd. Ze hangt af van cloudplatforms, softwareleveranciers, betalingsverwerkers, netwerkaanbieders, contractanten en gespecialiseerde partners. Wanneer een van hen faalt, maakt de klant geen onderscheid tussen jouw falen en dat van hen. Hun storing is de jouwe, en het werk om haar uit te leggen ook.

Agile teams maken makkelijk gebruik van leveranciers: een creditcard, een paar regels configuratie en een nieuwe mogelijkheid draait. Die snelheid is waardevol en schept een kloof. Misschien heeft niemand gevraagd wat er gebeurt als de service van de leverancier verslechtert, zijn voorwaarden wijzigt of sluit. Misschien weet niemand wie de relatie bezit. Leveranciersmanagement is de praktijk om die kloof te dichten in verhouding tot het risico, zonder van elke aankoop een project te maken.

Het [Wikipedia-artikel over supplier relationship management](https://en.wikipedia.org/wiki/Supplier_relationship_management) beschrijft de systematische, ondernemingsbrede beoordeling van sterktes, prestaties en capaciteiten van leveranciers, afgestemd op bedrijfsstrategie, en merkt op dat zijn bronnen dun en gedateerd zijn, met meerdere referenties van 2009 tot 2012. Het [artikel over service integration and management](https://en.wikipedia.org/wiki/Service_integration_and_management) beschrijft een aanpak voor organisaties die meerdere leveranciers gebruiken. Dit onderwerp combineert ze met de andere onderwerpen van de gids en met in servicemanagement gangbare praktijk, en zegt wanneer het dat laatste doet.

## Kernconcepten

### Supplier relationship management

Volgens Wikipedia coördineert supplier relationship management (SRM) de interacties met leveranciers over de levenscyclus van de relatie, met als doel tweezijdige partnerschappen met strategische leveranciers op te bouwen, analoog aan customer relationship management. Het artikel maakt verschillende punten die nuttig zijn voor serviceteams:

- **Segmenteer leveranciers.** Leveranciers worden gesegmenteerd naar totale potentiële waarde over meerdere dimensies, niet alleen uitgaven, en naar de mate van risico die die waarde raakt. Het artikel bekritiseert een "one size fits all"-aanpak.
- **Meet prestaties in beide richtingen.** Organisaties gebruiken gezamenlijke, tweezijdige balanced scorecards met kwantitatieve en kwalitatieve maten, en sommige gebruiken 360-gradenscorecards die ook leveranciers bevragen.
- **Werk samen.** Gezamenlijke activiteiten omvatten leverancierstoppen, directiebijeenkomsten, gezamenlijke bedrijfsplanning, operationele reviews en gezamenlijke vraagprognoses. Het artikel beweert dat gezamenlijke prognoses en procesherontwerp voor toonaangevende organisaties besparingen van 10 tot 30 procent hebben opgeleverd, maar het artikel draagt onderhoudstags voor zwakke formulering en ontbrekende bronvermeldingen, dus behandel het cijfer als bewering en niet als bevinding.

### Waarom segmentatie ertoe doet

Je kunt niet elke leverancier van dichtbij beheren. Een nuttige segmentatie stelt twee vragen: hoeveel hangt de service van deze leverancier af en hoe moeilijk zou die te vervangen zijn? Hieronder een grof raster.

| Afhankelijkheid en vervangbaarheid | Voorbeelden | Aanpak |
|---|---|---|
| **Kritiek en moeilijk te vervangen** | Het cloudplatform, de betalingsverwerker | Nauwe relatie: benoemde eigenaar, regelmatige reviews, gezamenlijke planning, exit- en continuïteitsplannen |
| **Belangrijk maar vervangbaar** | Een monitoringtool, een berichtendienst | Regelmatige review, duidelijke serviceniveaus en een plan om over te stappen indien nodig |
| **Routine en makkelijk te vervangen** | Kantoorbenodigdheden, een kleine bibliotheek | Licht contract en periodieke controle |

Het raster is een illustratie van deze gids, niet uit een bron.

### Leveranciersprestaties en de service die je belooft

Je serviceniveaus hangen af van die van je leveranciers (zie Onderwerp 3.7 — Servicelevelmanagement). Als je 99,9% beschikbaarheid belooft en je enige cloudaanbieder minder belooft, klopt de rekensom niet. Leveranciersmanagement omvat het vergelijken van wat leveranciers hebben toegezegd met wat jij hebt beloofd en ontwerpen rond de kloof met redundantie of door je eigen belofte aan te passen.

In ITIL-vocabulaire heet een overeenkomst met een externe leverancier die een service level agreement ondersteunt een underpinning contract, en een overeenkomst tussen interne teams die haar ondersteunt een operational-level agreement. De voor deze gids gelezen bronnen definiëren deze niet, dus controleer de ITIL-publicaties op de exacte termen.

### Omgevingen met meerdere leveranciers en SIAM

Het artikel over service integration and management (SIAM) beschrijft een aanpak om meerdere leveranciers te beheren en in één, op de business gerichte service te integreren. Het merkt op dat organisaties steeds vaker IT-capaciteiten van meerdere externe leveranciers betrekken, een model dat multisourcing heet, dat kosten kan verlagen en concurrentie kan stimuleren maar beheeroverhead toevoegt en servicemanagement van begin tot eind moeilijker maakt. Een **service integrator** biedt governance en coördinatie zodat verleners samenwerken.

Het artikel noemt vier modellen voor de integrator (intern, hoofdleverancier, extern en hybride) en drie lagen: de klantorganisatie, de service integrator en de serviceverleners. Het zegt dat SIAM rond 2005 ontstond in de Britse publieke sector, voor het eerst ontworpen voor het Department for Work and Pensions, en noemt mijlpalen waaronder een body of knowledge in 2016 en herzieningen in 2019 voor COBIT 2019 en ITIL 4. Het merkt op dat ITIL een basis en gemeenschappelijke taal biedt voor het werken met leveranciers maar omgevingen met meerdere leveranciers niet diepgaand behandelt. Implementatie-uitdagingen die het noemt zijn onder meer niet-op-elkaar-afgestemde service level agreements, verleners die elkaar de schuld geven, onduidelijk eigenaarschap van beslissingen over grondoorzaken en communicatiegaten.

Weinig agile teams hebben een formele SIAM nodig, maar de lessen zijn nuttig: wanneer meerdere partijen aan één service bijdragen, moet iemand het geheel bezitten, afspreken hoe problemen over grenzen heen worden afgehandeld en de serviceniveaus van de leveranciers onderling consistent houden.

### Contracten en wendbaarheid

Contracten kunnen agile werk helpen of hinderen. Contracten met vaste scope en vaste prijs passen slecht bij al doende leren (zie Onderwerp 1.1 — Het Agile Manifest over samenwerking met de klant boven contractonderhandeling). Overeenkomsten die verandering toestaan, met duidelijke manieren om scope aan te passen en waarde te meten, passen beter. Een contract moet ook de zaken dekken waar servicemanagement om geeft: serviceniveaus, ondersteuningsuren, incidentafhandeling, gegevensbescherming, beveiligingsverplichtingen, auditrechten, exit en continuïteit. Je juridische en inkoopcollega's moeten het voortouw nemen bij de juridische voorwaarden.

### Risico

Leveranciers brengen risico's: falen, wijziging van voorwaarden of prijs, beveiligingszwaktes, concentratie bij één aanbieder, lock-in en de eigen afhankelijkheden van de leverancier. Het SRM-artikel noemt het verminderen van het risico van falen als doel zonder methoden te beschrijven. Praktische maatregelen zijn onder meer de eigen continuïteitsregelingen van de leverancier kennen, kritieke afhankelijkheden spreiden, gegevens overdraagbaar houden en exit repeteren (zie Onderwerp 3.12 — Servicecontinuïteitsmanagement en Onderwerp 3.13 — Informatiebeveiligingsmanagement).

### Relatie, niet alleen contract

Het SRM-artikel benadrukt tweezijdige partnerschappen. Leveranciers die je plannen begrijpen, kunnen helpen; leveranciers die alleen als bron van facturen worden behandeld niet. Deel prognoses, betrek hen bij incidentreviews die hen aangaan en luister naar hun feedback over jouw gedrag, zoals late betalingen of onduidelijke verzoeken.

### Grenzen van de bronnen

Het SRM-artikel geeft geen selectiecriteria, contractclausules of implementatietijdlijnen. Het SIAM-artikel heeft geen sectie met kritiek. Beide zijn algemeen. Vertrouw voor juridische en financiële voorwaarden op je inkoop- en juridische functies en op het contract zelf.

## Goede praktijken

1. **Maak een lijst van je leveranciers en waarvoor je van hen afhangt.** Neem cloud, software, netwerk, betalingen en contractanten mee. Noteer voor elke welke service ze ondersteunt en wie in je team de relatie bezit.
2. **Segmenteer op afhankelijkheid en vervangbaarheid.** Beslis welke weinige leveranciers kritiek zijn en investeer daar je aandacht. Houd een lichte hand voor de rest.
3. **Benoem een eigenaar voor elke belangrijke leverancier.** Eén persoon moet het contract, de contacten, de prestaties en de plannen kennen. Zonder eigenaar vervallen relaties.
4. **Controleer dat toezeggingen van leveranciers je beloften ondersteunen.** Vergelijk wat elke kritieke leverancier heeft toegezegd met wat je klanten hebt verteld. Dicht de kloof door ontwerp, onderhandeling of door je belofte te wijzigen.
5. **Spreek incidentafhandeling vooraf af.** Weet hoe je een probleem bij de leverancier meldt, hoe snel ze reageren, wie kan escaleren en hoe ze communiceren. Test de route voordat je haar nodig hebt.
6. **Neem beveiliging en gegevensbescherming mee.** Vraag leveranciers hoe ze jouw informatie beschermen en wat ze je na een inbreuk vertellen. Leg het met het juridische team in het contract vast.
7. **Plan voor exit en falen.** Houd gegevens voor kritieke leveranciers overdraagbaar, ken alternatieven en schrijf een kort plan voor het falen van de leverancier of jouw vertrek. Repeteer het deel dat je kunt.
8. **Review prestaties samen.** Houd regelmatige reviews met kritieke leveranciers, deel gegevens in beide richtingen en spreek acties af. Vraag de leverancier hoe je een betere klant kunt zijn.
9. **Betrek leveranciers bij het leren.** Nodig hen uit voor incidentreviews en planningssessies die hen betreffen. Deel lessen die hen helpen jou te helpen.
10. **Maak contracten flexibel waar leren wordt verwacht.** Geef voor ontwikkelwerk de voorkeur aan overeenkomsten die scopeverandering toestaan, met duidelijke reviewpunten, boven beloften met vaste scope. Houd de serviceverplichtingen vast.
11. **Gebruik één integrator wanneer veel leveranciers bijdragen.** Benoem voor een service die van meerdere aanbieders afhangt wie het resultaat van begin tot eind bezit en hoe problemen tussen leveranciers worden opgelost. Laat het niet aan de klant over.
12. **Review de leveranciersportfolio regelmatig.** Controleer eens per jaar welke leveranciers nog nodig zijn, welke geconcentreerde risico's zijn en welke elders goedkoper of beter zijn.

## Vragen om met je team te bespreken

**Welke leveranciers zouden onze service kunnen stoppen als ze faalden en wat zouden we doen?**

Vraag iedereen de afhankelijkheden te noemen waar ze zich het meest zorgen over maken. Stel de lijst samen en markeer elke als kritiek, belangrijk of routine. Vraag bij elke kritieke wat het team in het eerste uur van een falen zou doen. Typische antwoorden onthullen gaten in contacten, alternatieven en gegevens. Kies er een om voor te plannen.

**Wat hebben onze leveranciers ons beloofd en wat hebben wij onze klanten beloofd?**

Leg de twee naast elkaar voor een belangrijke service. Waar de belofte van de leverancier zwakker is, is de klantbelofte in gevaar. De facilitator kan vragen of iemand de serviceniveaus van de leverancier recent heeft gelezen. Spreek één kloof af om te dichten.

**Wie bezit elke belangrijke leveranciersrelatie?**

Loop de lijst af en benoem voor elke een eigenaar. Gaten zijn gebruikelijk: de persoon die het contract tekende vertrok, of een tool werd met een kaart gekocht en niemand beheert haar. Vraag wat de eigenaar nodig zou hebben om het werk te doen, zoals tijd en een contact. Wijs eigenaren toe waar ze ontbreken.

**Hoe komen we erachter dat een leverancier een probleem heeft en hoe vertellen we het onze gebruikers?**

Volg de laatste keer dat een leverancier een storing had. Vraag hoe je ervan hoorde, hoe lang het duurde en wat je klanten vertelde. Bespreek statuspagina's, contacten en afgesproken kanalen. Plan een verbetering, zoals een abonnement op de statusfeed van de leverancier of een benoemd escalatiecontact.

**Wat zou er nodig zijn om deze leverancier te verlaten en zouden we dat ooit willen?**

Vraag voor een kritieke leverancier naar gegevensexport, alternatieve producten en contractvoorwaarden. Teams vinden vaak lock-in die ze niet bedoelden. Bespreek hoe die te verminderen waar het risico de kosten rechtvaardigt. Leg een korte exitnotitie vast.

**Weten onze leveranciers wat wij plannen en weten wij wat zij plannen?**

Vraag wanneer elke kritieke leverancier voor het laatst van je plannen hoorde en wanneer jij voor het laatst van die van hen hoorde. Verrassingen in beide richtingen veroorzaken problemen. Bespreek een regelmatig gesprek. Spreek één leverancier af om mee te beginnen.

## In de praktijk: een agile ITIL-voorbeeld

Een regionale omroep draait een nieuwsapp en website met een team van veertien. De service hangt af van een cloudaanbieder, een content delivery network, een pushmeldingsservice, een tool voor commentaarmoderatie en een klein bedrijf dat een live-blogwidget levert. Toen de service van de live-blogleverancier uitviel tijdens een verkiezingsavond, toonde de app twee uur lang fouten en leed de reputatie van de omroep. Niemand in het team kon zeggen wie het contact bij de leverancier was; de widget was toegevoegd door een ontwikkelaar die inmiddels was vertrokken.

Het hoofd platform leidt een review. Het team maakt een lijst van alle leveranciers en sorteert ze naar hoeveel de service van hen afhangt en hoe makkelijk elk te vervangen is. De cloudaanbieder en het content delivery network zijn kritiek, en de meldingsservice en de widget zijn belangrijk maar vervangbaar. Elk krijgt een eigenaar in het team. Voor de widgetleverancier verkrijgt het team contacten, leest het de voorwaarden en ontdekt het dat geen serviceniveau wordt beloofd. Ze besluiten de leverancier te houden maar een terugvaloptie toe te voegen: als de widget niet laadt, toont de pagina een statische link naar het live blog. Voor de cloudaanbieder vergelijken ze zijn toezeggingen met de beschikbaarheid die ze de redacteuren van de omroep hebben beloofd en vinden ze een kloof in één regio, die ze dichten door de service over twee te spreiden.

Zes maanden later wordt een tweede storing bij de meldingsaanbieder binnen minuten door monitoring gedetecteerd, brengt de eigenaar die via de afgesproken route bij de leverancier aan en blijft de app werken met vertraagde meldingen. Er blijven moeilijkheden. De redacteuren willen dat de live-blogwidget meer doet, maar de leverancier is te klein om zich aan een serviceniveau te binden, en de inkoopregels van de omroep maken vervanging traag. Het hoofd platform spreekt met inkoop af een kleine proef met een alternatief te doen en de leverancierslijst jaarlijks te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams kiezen en integreren veel leveranciers. Leg elke afhankelijkheid vast wanneer je haar toevoegt, benoem een eigenaar en vraag naar serviceniveaus en exit voordat je erop vertrouwt. Bouw terugvalopties voor de fouten die je je kunt voorstellen.

### Service- en beheerteams

Beheerteams hebben bij incidenten met leveranciers te maken. Houd contacten en escalatieroutes actueel, test ze en leg leveranciersprestaties vast. Breng dit bewijs naar reviews en naar inkoop.

### Leiderschap en governance

Leiders en inkoop bepalen de voorwaarden en de relatie. Vraag om een lijst van kritieke leveranciers en hun risico's, steun flexibele contracten voor op leren gebaseerd werk en zorg dat het contract serviceniveaus, beveiliging en exit dekt. Vraag wie het resultaat van begin tot eind bezit wanneer veel leveranciers bijdragen.

### Klanten en gebruikers

Klanten en gebruikers vertrouwen op de hele keten, niet op één schakel. Vraag verleners welke leveranciers ertoe doen voor de service die je gebruikt en hoe ze die beschermen. Verwacht, wanneer er iets misgaat, eerlijkheid over welk deel faalde en wat eraan wordt gedaan.

## Veelvoorkomende faalpatronen

- **Verborgen afhankelijkheden.** Een tool die een ontwikkelaar toevoegde wordt kritiek en niemand bezit haar. Leg in plaats daarvan elke afhankelijkheid vast en benoem een eigenaar.
- **Eén maat voor alles.** Elke leverancier krijgt hetzelfde zware proces, of geen enkele. Segmenteer in plaats daarvan op afhankelijkheid en vervangbaarheid.
- **Beloften die niet optellen.** De klantbelofte is sterker dan die van de leverancier. Vergelijk in plaats daarvan toezeggingen en dicht de kloof.
- **Geen geteste route.** De supportlijn van de leverancier wordt tijdens een storing gevonden. Spreek in plaats daarvan contacten en escalatie vooraf af en test ze.
- **Lock-in per ongeluk.** Gegevens kunnen niet worden geëxporteerd. Controleer in plaats daarvan vroeg de overdraagbaarheid en leg een exitnotitie vast.
- **Alleen contract, geen relatie.** De leverancier is een vreemde wanneer er problemen zijn. Houd in plaats daarvan regelmatige reviews en deel plannen.
- **Niemand bezit het geheel.** Meerdere leveranciers geven elkaar de schuld. Benoem in plaats daarvan een integrator voor de service van begin tot eind en spreek de afhandeling tussen leveranciers af.
- **Contracten met vaste scope voor onzeker werk.** Het contract werkt leren tegen. Gebruik in plaats daarvan overeenkomsten die scope binnen duidelijke grenzen laten veranderen.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Leveranciers kennen | Leveranciers zijn bij individuen bekend | Sommige teams maken een lijst van hun leveranciers | Een gedeelde lijst met afhankelijkheid, vervangbaarheid en eigenaren | De lijst wordt aan incidenten en wijzigingen getoetst | De lijst wordt over teams gedeeld en aan services gekoppeld |
| Toezeggingen en service | Serviceniveaus van leveranciers zijn onbekend | De voorwaarden van belangrijke leveranciers worden gelezen | Leverancierstoezeggingen worden met klantbeloften vergeleken | Leveranciersprestaties worden gemeten en gereviewd | Toezeggingen worden over de keten afgestemd met gezamenlijke review |
| Incidenten en risico | Leveranciersproblemen worden bij toeval gevonden | Sommige contacten zijn bekend | Escalatieroutes zijn afgesproken en getest; risico's worden vastgelegd | Leveranciersincidenten en -risico's worden gevolgd en erop wordt gehandeld | Incidentafhandeling en risicoplannen zijn gezamenlijk met leveranciers |
| Relatie en exit | Leveranciers zijn transactioneel | Enkele leveranciersbijeenkomsten | Regelmatige reviews met kritieke leveranciers en korte exitnotities | Relatiegezondheid en exitgereedheid worden gereviewd | Leveranciers nemen deel aan planning en verbetering |

## Checklist

- [ ] We hebben een lijst van leveranciers en wat elke ondersteunt.
- [ ] Leveranciers zijn gesorteerd op afhankelijkheid en vervangbaarheid.
- [ ] Elke belangrijke leverancier heeft een benoemde eigenaar.
- [ ] We hebben voor belangrijke services leverancierstoezeggingen met onze klantbeloften vergeleken.
- [ ] Escalatiecontacten en -routes voor kritieke leveranciers zijn bekend en getest.
- [ ] Verwachtingen over beveiliging en gegevensbescherming staan in het contract of zijn schriftelijk afgesproken.
- [ ] Er bestaat voor elke kritieke leverancier een korte exit- of faalnotitie.
- [ ] We houden regelmatige reviews met kritieke leveranciers.
- [ ] Waar meerdere leveranciers bijdragen, bezit iemand het resultaat van begin tot eind.
- [ ] De leverancierslijst wordt minstens eenmaal per jaar gereviewd.

## AI-prompts

**Doel: een leveranciers- en afhankelijkheidslijst opbouwen uit wat je weet.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: toezeggingen van leveranciers vergelijken met je klantbeloften.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Doel: je voorbereiden op een leveranciersreviewbijeenkomst.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een korte exitnotitie voor een kritieke leverancier opstellen.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om selectie, review en de relatie met een leverancier te plannen.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om leveranciersrisico's en hun beheersing vast te leggen.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gebruik dit om te begrijpen wie in je organisatie en bij de leverancier ertoe doet voor de relatie.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): gebruik dit om te controleren dat toezeggingen van leveranciers ondersteunen wat je belooft.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om duidelijk te maken wie elke leveranciersrelatie bezit en wie wordt geraadpleegd.

## Belangrijkste bronnen

- **Supplier relationship management** (Wikipedia): een overzicht van segmentatie, scorecards en samenwerking met leveranciers, met onderhoudstags die tonen waar de bronnen zwak zijn.
- **Service integration and management** (Wikipedia): de aanpak voor meerdere leveranciers, met lagen, modellen en implementatie-uitdagingen.
- **Service-level agreement** (Wikipedia): achtergrond over overeenkomsten die leveranciers en klanten tekenen.
- **ITIL** (Wikipedia): context over hoe ITIL leveranciers behandelt.

## Referenties

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
