# Het Agile Manifest

**Het Manifest voor Agile Softwareontwikkeling bestaat uit vier korte waardeverklaringen die een team vertellen waaraan het de voorkeur moet geven wanneer twee goede dingen botsen, en die keuzes tellen even zwaar voor het draaiend houden van een live service als voor het bouwen ervan.**

## Waarom dit ertoe doet

Het Agile Manifest is de wortel van bijna alles wat in deze gids volgt. Scrum, Kanban, Extreme Programming en DevOps zijn allemaal manieren om te handelen naar de waarden die het noemt. Wie alleen de praktijken kent, kopieert de rituelen en mist de redenering, en als een ritueel niet meer werkt, heeft hij niets om op te sturen.

Het is om een praktische reden van belang voor IT-servicemanagement (ITSM). De meeste teams die vandaag services draaien, bouwen ze ook, en die twee taken trekken in verschillende richtingen. Bouwen beloont verandering en snelheid. Beheren beloont stabiliteit en voorspelbaarheid. Het Manifest neemt die spanning niet weg, maar geeft een team een gedeelde manier om erover te praten: aan welke waarde geven we hier de voorkeur, en wat betalen we daarvoor?

Het helpt ook om te weten wat het Manifest niet is. Het is geen proces, geen certificering en geen belofte dat projecten slagen als je het volgt. Het [Wikipedia-artikel over agile softwareontwikkeling](https://en.wikipedia.org/wiki/Agile_software_development) merkt op dat het bewijs voor de voordelen van agile methoden beperkt en niet volledig overtuigend is. Behandel het Manifest als een reeks goed beargumenteerde hypothesen die je in je eigen context toetst, niet als heilige tekst.

## Kernconcepten

### Waar het vandaan komt

Zeventien praktijkmensen kwamen van 11 tot en met 13 februari 2001 bijeen in het skiresort Snowbird in de Wasatch-bergen in Utah en schreven samen het Manifest. Volgens het [verslag op agilemanifesto.org](https://agilemanifesto.org/history.html) kwamen ze uit methoden als Extreme Programming, Scrum en Crystal, en wilden ze een alternatief voor zware, documentatiegedreven processen. Het label "Light" was geopperd en Alistair Cockburn maakte er bezwaar tegen, waarna de groep zich de Agile Alliance ging noemen.

De ondertekenaars waren Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland en Dave Thomas. Verschillenden van hen hadden de methoden die ze meebrachten al zelf gemaakt: Beck en Cunningham werkten aan [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), en Schwaber en Sutherland aan [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Het Manifest was een reactie op een werkwijze waarin een team een heel project vooraf plant, in lange fasen bouwt en pas laat ontdekt of het resultaat gewenst is. Die stijl heet vaak het [watervalmodel](https://en.wikipedia.org/wiki/Waterfall_model). De auteurs vonden iteratief werken niet uit (het Wikipedia-artikel voert iteratieve en incrementele methoden terug tot 1957), maar ze gaven het een gedeelde naam en een korte verklaring van waarden.

### De vier waarden

Het Manifest formuleert zijn waarden in zijn geheel als volgt. De auteursrechtverklaring staat toe dat het vrij wordt gekopieerd in elke vorm, maar alleen in zijn geheel, dus het wordt hier volledig aangehaald (in een Nederlandse vertaling van de Engelse originele tekst):

> Wij ontdekken betere manieren om software te ontwikkelen door het zelf te doen en anderen daarbij te helpen. Door dit werk zijn wij het volgende gaan waarderen:
>
> **Individuen en interacties** boven processen en hulpmiddelen
> **Werkende software** boven allesomvattende documentatie
> **Samenwerking met de klant** boven contractonderhandeling
> **Inspelen op verandering** boven het volgen van een plan
>
> Dat wil zeggen: hoewel de zaken aan de rechterkant waarde hebben, hechten wij meer waarde aan de zaken aan de linkerkant.

Drie details van de formulering zijn makkelijk te missen en veranderen de betekenis:

- **"Boven" is niet "in plaats van".** De laatste zin zegt dat de zaken aan de rechterkant nog steeds waarde hebben. Een team dat alle documentatie of alle planning laat vallen, heeft het Manifest verkeerd gelezen.
- **Het is een voorkeur voor het moment dat je moet kiezen.** De waarden vertellen niet wat je elke dag moet doen. Ze vertellen welke kant je opleunt wanneer een proces, een document, een contract of een plan een beter resultaat in de weg staat.
- **"Door het zelf te doen."** De openingszin zegt dat de auteurs deze waarden via de praktijk vonden. De bewering is empirisch, daarom word je uitgenodigd haar aan je eigen ervaring te toetsen.

### De waarden lezen voor servicewerk

De waarden zijn geschreven over softwareontwikkeling. Dit kan elke waarde betekenen voor een team dat ook services draait.

| Waarde | Waartegen het beschermt | Wat het kan betekenen in servicewerk |
|---|---|---|
| Individuen en interacties boven processen en hulpmiddelen | Een proces dat op papier werkt maar dat niemand onder druk kan volgen | Tijdens een groot incident praten de mensen die het systeem kennen rechtstreeks met elkaar. Het incidentproces ondersteunt dat gesprek en vervangt het niet. |
| Werkende software boven allesomvattende documentatie | Documenten die een systeem beschrijven dat niet meer bestaat | Een runbook dat getest is door de on-call-engineer die het gebruikt, is meer waard dan een lange handleiding die niemand heeft opengeslagen. |
| Samenwerking met de klant boven contractonderhandeling | Ruziën over een servicelevelovereenkomst (SLA) terwijl de echte behoefte van de klant onvervuld blijft | Bespreek servicelevels regelmatig met klanten en pas ze aan als hun behoeften veranderen. |
| Inspelen op verandering boven het volgen van een plan | Een plan bevriezen nadat de situatie is veranderd | Een wijzigingsproces dat een kleine wijziging met laag risico in minuten kan goedkeuren, laat het team inspelen. Een proces dat elke wijziging gelijk behandelt, kan dat niet. |

### De twaalf principes

Bij het Manifest horen twaalf principes die de waarden uitwerken. Ze zijn het onderwerp van het volgende onderwerp (zie Onderwerp 1.2 — Agile-principes). Samen worden de waarden en principes soms de agile mindset genoemd.

### Kritiek die je moet kennen

Critici hebben bezwaar gemaakt dat het Manifest de discipline van het software engineering ondermijnt. Het Wikipedia-artikel citeert Stephen Rakitin, die in een brief aan *IEEE Computer* agile "nog een poging om de discipline van software engineering te ondermijnen" noemde en "werkende software boven allesomvattende documentatie" las als toestemming om documentatie over te slaan. Verdedigers antwoorden dat documentatie "net goed genoeg" moet zijn, een uitdrukking van Scott Ambler, en dat te weinig documentatie het onderhoud en het delen van kennis schaadt.

Voor een serviceteam heeft de kritiek tanden. Beheerders erven wat leveringsteams achterlaten, en magere documentatie uit zich in trage incidentafhandeling en lange overdrachten. Een eerlijke lezing van het Manifest is dat documentatie haar plek moet verdienen, niet dat ze er niet is.

## Goede praktijken

1. **Behandel de waarden als hulpmiddel bij beslissingen, niet als regelset.** Vraag bij onenigheid welke waarde onder spanning staat en welke kant het team op moet leunen. Zo verandert een ruzie over voorkeuren in een gesprek over afwegingen.
2. **Lees de zin die op de waarden volgt.** Herinner het team er vaak aan dat de zaken aan de rechterkant nog waarde hebben. Schrijf op welke processen, documenten, contracten en plannen je houdt en waarom.
3. **Toets elke waarde aan een recente gebeurtenis.** Kies een echt incident of een echte release en vraag hoe het werk was verlopen als het team de andere kant op had geleund. Bewijs uit je eigen werk overtuigt beter dan een citaat.
4. **Houd documentatie, en houd haar levend.** Geef de voorkeur aan korte documenten die worden gebruikt, getest en beheerd, zoals runbooks en servicebeschrijvingen, boven lange documenten die eenmalig worden geschreven. Verwijder wat niemand leest.
5. **Maak klantsamenwerking routine.** Voer regelmatig gesprekken met de mensen die je services gebruiken en neem wat je leert mee in de backlog. Wacht niet op een contractreview.
6. **Maak plannen die veranderingen verwachten.** Plan op korte horizons met expliciete reviewmomenten. Houd een langere richting aan en accepteer dat de stappen ernaartoe verschuiven.
7. **Geef processen eigenaren en laat ze evolueren.** Elk proces in je servicemanagementsysteem moet een benoemde eigenaar hebben en een manier waarop de gebruikers wijzigingen kunnen voorstellen. Een proces dat niemand mag veranderen, wordt omzeild.
8. **Gebruik de waarden bij werving en onboarding.** Beschrijf ze aan nieuwe collega's met voorbeelden uit je eigen team, zodat ze zien hoe de waarden terugkomen in dagelijkse keuzes.
9. **Bekijk de waarden opnieuw na het opschalen.** Grotere organisaties drijven af naar proces en tools. Houd periodiek een gesprek, bijvoorbeeld twee keer per jaar, over de vraag of de balans de klanten nog dient.
10. **Gebruik het Manifest niet als wapen.** Wie "individuen boven processen" aanhaalt om de zorg van een collega over audit of veiligheid weg te wuiven, beëindigt een gesprek dat nog had moeten beginnen. Gebruik het om de discussie te openen, niet om haar te winnen.

## Vragen om met je team te bespreken

**Aan welke van de vier waarden geeft ons team in de praktijk al de voorkeur, en aan welke beweren we dat alleen?**

Begin met een lijst van recente beslissingen: een release die wachtte op papierwerk, een verzoek dat werd geweigerd omdat het niet in het contract stond, een plan dat werd aangehouden nadat het geen zin meer had. Koppel elke beslissing aan een waarde. Teams vinden vaak een kloof tussen wat ze zeggen en wat ze doen, en die kloof is de nuttige bevinding. Een facilitator vermijdt beschuldigingen en vraagt welke druk elke keuze veroorzaakte. Vraag daarna welke van die drukfactoren het team kan veranderen.

**Waar helpen onze processen en tools mensen met elkaar te praten, en waar staan ze in de weg?**

Vraag mensen een proces te noemen dat hun moeite bespaart en een proces dat hen moeite kost. Het kostbare proces is vaak een goed proces dat star wordt toegepast, zoals een ticketworkflow die vier goedkeuringen vraagt voor een triviale wijziging. Zoek naar plekken waar mensen de tool mijden en chat of gangpraat gebruiken, want dat wijst meestal op een mismatch. Sluit af met één proces om deze maand te vereenvoudigen.

**Welke documentatie zouden we zeker missen, en wat zouden we morgen kunnen verwijderen?**

Deze vraag toetst de waarde "werkende software boven allesomvattende documentatie" zonder haar tot het uiterste door te voeren. Vraag mensen welke documenten ze de afgelopen maand hebben gebruikt. Runbooks, architectuurdiagrammen en servicebeschrijvingen voor klanten komen vaak ter sprake. Documenten die niemand noemt, zijn kandidaten voor verwijdering of samenvoeging. Herinner het team eraan dat verwijderen een beslissing is, dus wijs er een eigenaar voor aan.

**Hoe nemen onze klanten deel aan het vormgeven van onze services, en hoe weten we dat het genoeg is?**

Verzamel voorbeelden van klantinbreng die een beslissing veranderde. Als de lijst kort is, vraag dan waarom. De oorzaken zijn meestal structureel: een accountmanager in het midden, een SLA-review eens per jaar of een servicedesk die klachten registreert maar niet doorgeeft. Vraag klanten, als dat kan, rechtstreeks wat ze zouden veranderen. De opdracht voor de facilitator is te zoeken naar één concrete manier om de weg tussen een klant en het team te verkorten.

**Wat is er nodig om een kleine wijziging met laag risico binnen het uur goed te keuren, en moeten we dat willen?**

Deze vraag verbindt de vierde waarde met wijzigingsbeheersing (zie Onderwerp 3.4 — Change enablement). Vraag wat kleine wijzigingen nu vertraagt: een wekelijkse vergadering, een handmatig risicoformulier, een ontbrekende test. Vraag welk bewijs het team gerust zou stellen, zoals geautomatiseerde tests of een snelle rollback. Dring niet aan op "ja". Het doel is te ontdekken wat het team denkt nodig te hebben, en dat is het begin van een plan.

**Als een toezichthouder, een auditor of een grote klant het Manifest las, waarover zouden ze zich zorgen maken, en hebben ze gelijk?**

Sommige zorgen zijn terecht. Auditors willen bewijs en klanten willen toezeggingen. Nodig het team uit die zorgen serieus te nemen en te vragen welk lichtgewicht bewijs en welke toezeggingen hen tevreden zouden stellen. Teams die kunnen laten zien hoe agile werk een audit trail oplevert, krijgen meestal meer vrijheid, niet minder. Leg de zorgen vast voor het governancegesprek in Onderwerp 5.7 — Governance, risico en compliance.

## In de praktijk: een agile ITIL-voorbeeld

Een middelgrote webwinkel heeft een platformteam van acht mensen dat de checkoutservice bouwt en beheert. Het team is onlangs van kwartaalreleases overgestapt op wekelijkse releases en heeft nu een probleem: de servicedesk klaagt dat wijzigingen onaangekondigd binnenkomen, en het platformteam klaagt dat de wijzigingsgoedkeuringsvergadering een week nodig heeft om wijzigingen goed te keuren die maandag al klaar zijn.

De teamlead houdt een sessie van een uur met de vier waarden als kader. Ze zetten recente gebeurtenissen op een muur. Een fix voor een kortingscode wachtte negen dagen op goedkeuring. Een databasewijziging werd snel goedgekeurd en veroorzaakte een storing. Een runbook voor betalingsstoringen bleek een systeem te beschrijven dat het jaar daarvoor was uitgefaseerd. De groep legt elke gebeurtenis naast een waarde. De meeste vertragingsgevallen vallen onder "processen en hulpmiddelen boven individuen en interacties", wat betekent dat het proces om zichzelf werd uitgevoerd. De storing valt onder "inspelen op verandering boven het volgen van een plan", omdat de goedkeuringsvergadering elke wijziging als gelijk behandelde en niet nauwkeurig naar de riskante keek.

Ze spreken drie veranderingen af. Eerst worden wijzigingen die overeenkomen met een korte lijst van patronen met laag risico, met slagende geautomatiseerde tests en een geteste rollback, vooraf goedgekeurd en automatisch vastgelegd. Ten tweede worden riskante wijzigingen binnen een dag beoordeeld door een collega en een vertegenwoordiger van beheer. Ten derde krijgt elk runbook een benoemde eigenaar en wordt het gecontroleerd telkens wanneer het tijdens een incident wordt gebruikt.

Twee maanden later bekijkt de lead het resultaat met de servicedesk. Vooraf goedgekeurde wijzigingen verlopen snel, en de servicedesk ziet nu elke wijziging in een gedeelde feed. Eén probleem blijft: twee van de vooraf goedgekeurde patronen waren te breed getrokken, en er volgde een klein incident. Het team scherpt de patronen aan en houdt de aanpak. Ze zien ook dat de gedeelde feed geen vervanging is voor praten, dus sluit de leider van de servicedesk aan bij de wekelijkse planning van het platformteam.

## Vier perspectieven

### Product- en leveringsteams

Voor leveringsteams herinnert het Manifest eraan dat werkende software ook werkend beheer omvat. Een functie die niet kan worden gemonitord, ondersteund of teruggedraaid, is niet af. Gebruik de waarden om te pleiten voor het operationele werk dat releases veilig maakt, en betrek beheercollega's vroeg bij de planning.

### Service- en beheerteams

Beheerders hebben vaak het gevoel dat het Manifest namens ontwikkelaars spreekt. Lees het anders: de waarden geven de voorkeur aan mensen die praten, geteste artefacten en snelle reacties op verandering, en dat past allemaal bij goed beheer. Breng ITIL-praktijken in als opgebouwde ervaring over wat er misgaat en stel lichtere versies voor die het doel behouden.

### Leiderschap en governance

Leiders scheppen de voorwaarden waarin de waarden kunnen werken. Als elke release vijf handtekeningen nodig heeft, kan een team niet kiezen voor inspelen op verandering, hoeveel posters er ook aan de muur hangen. Vraag je teams waar je eigen regels hen vertragen en wees bereid een regel te wijzigen wanneer het doel op een andere manier kan worden bereikt.

### Klanten en gebruikers

Klanten worden in twee van de vier waarden genoemd. Voor hen belooft het Manifest samenwerking, niet alleen oplevering. Verwacht dat je wordt gevraagd wat je nodig hebt, dat je vaak werkende wijzigingen ziet en dat je van gedachten mag veranderen. In ruil daarvoor heeft een team tijdige feedback en beslissingen van jou nodig.

## Veelvoorkomende faalpatronen

- **"Boven" gebruiken als "in plaats van".** Teams laten documentatie, planning of contracten helemaal vallen en lijden daaronder. Beslis in plaats daarvan wat elk daarvan moet bereiken en houd de lichtste vorm die dat doet.
- **De waarden behandelen als vrijbrief om discipline over te slaan.** "We zijn agile" wordt een excuus voor geen tests, geen registraties en geen overdracht. Koppel in plaats daarvan elke waarde aan een concrete praktijk en controleer of die praktijk plaatsvindt.
- **Het Manifest opzeggen zonder het te toetsen.** Slogans vervangen denkwerk. Toets in plaats daarvan met regelmatige tussenpozen werkelijke gebeurtenissen aan de waarden.
- **Het tegen collega's gebruiken.** Een waarde aanhalen om een zorg van audit, beveiliging of beheer weg te wuiven, schaadt het vertrouwen. Vraag in plaats daarvan wat de zorg beschermt en hoe je er licht aan kunt voldoen.
- **Praktijken overnemen zonder de waarden.** Dagelijkse meetings en borden verschijnen, maar beslissingen wachten nog steeds op goedkeuringsketens. Vraag in plaats daarvan welke beslissingen dichter bij de mensen moeten komen die het werk doen.
- **Aannemen dat het Manifest operationele vragen beantwoordt.** Het is in 2001 geschreven over softwareontwikkeling en zegt weinig over het draaien van services. Combineer het in plaats daarvan met servicemanagementpraktijken en pas beide aan.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Gedeeld begrip van de waarden | Een paar mensen hebben het Manifest gelezen | Sommige teams bespreken het, met uiteenlopende lezingen | Teams delen een korte, geschreven lezing van de waarden voor hun context | Teams toetsen recente beslissingen met regelmatige reviews aan de waarden | Teams, leveranciers en klanten gebruiken een gemeenschappelijk vocabulaire van afwegingen |
| Balans tussen proces en mensen | Processen worden gevolgd of genegeerd, afhankelijk van de persoon | Sommige processen worden door individuele teams vereenvoudigd | Elk proces heeft een eigenaar en een route voor wijzigingsverzoeken | Procesfrictie wordt gemeten, bijvoorbeeld de wachttijd per wijziging | Processen worden over teams heen aangepast op basis van gedeeld bewijs |
| Klantsamenwerking | Feedback komt via klachten | Sommige teams ontmoeten klanten regelmatig | Elke service heeft een vastgestelde manier om klantinbreng te verzamelen | Klantinbreng wordt gevolgd en gekoppeld aan doorgevoerde wijzigingen | Klanten helpen prioriteiten te stellen over services heen |
| Documentatie en plannen | Documenten zijn zeldzaam of verouderd | Teams houden de documenten die ze nuttig vinden | Vereiste documenten zijn weinig, met eigenaar en gereviewd | Het gebruik van documenten wordt geobserveerd en ongebruikte worden verwijderd | Documentatie wordt gegenereerd of geverifieerd als onderdeel van de levering |

## Checklist

- [ ] Elk teamlid heeft het Manifest en de twaalf principes één keer gelezen.
- [ ] Het team kan elke waarde in eigen woorden noemen, met een voorbeeld uit het eigen werk.
- [ ] We hebben vastgelegd welke processen, documenten, contracten en plannen we houden en waarom.
- [ ] Elk gebruikt proces heeft een benoemde eigenaar en een manier om wijzigingen voor te stellen.
- [ ] Runbooks en servicebeschrijvingen hebben eigenaren en een reviewdatum.
- [ ] We voeren een regelmatig gesprek met de klanten van minstens één service.
- [ ] We hebben minstens één recent incident of één release aan de vier waarden getoetst.
- [ ] Regels van het management die het team vertragen, zijn op een rij gezet en besproken.
- [ ] We hebben opgeschreven hoe we auditors en toezichthouders laten zien wat we doen.

## AI-prompts

**Doel: de vier waarden omzetten in een korte lezing voor je eigen team.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Doel: een recente gebeurtenis aan de waarden toetsen.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Doel: je voorbereiden op het antwoord op de zorg van een auditor over agile werkwijzen.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Doel: een teamsessie van een uur over het Manifest ontwerpen.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AI-vaardigheden

- [agile-principles](../../../../skills/agile-principles/SKILL.md): gebruik dit om een teampraktijk of een procesbeslissing te toetsen aan de principes van het Manifest.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om een retrospective te houden die recente gebeurtenissen aan de waarden toetst en tot echte verandering leidt.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): gebruik dit bij de start van een nieuw team of project als je vanaf dag één een gedeelde lezing van de waarden wilt.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): gebruik dit als je een team helpt van het kopiëren van rituelen naar het begrijpen van de redenen erachter.

## Belangrijkste bronnen

- **Manifesto for Agile Software Development** (agilemanifesto.org): de primaire tekst. Lees hem helemaal; het kost twee minuten.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): de twaalf principes, de nuttigste aanvulling op de waarden.
- **History: The Agile Manifesto** (agilemanifesto.org): het eigen korte verslag van de auteurs over de bijeenkomst in Snowbird.
- **Agile software development** (Wikipedia): een breed overzicht met geschiedenis, methoden, praktijken en kritiek, nuttig als kaart voor verder lezen.

## Referenties

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
