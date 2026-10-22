# DevOps

**DevOps is de inspanning om ontwikkeling en beheer samen te brengen in één werkstroom met gedeeld eigenaarschap, automatisering en snelle feedback, en het vult servicemanagement aan door de beheersmaatregelen waar ITIL om geeft in de pipeline te leggen.**

## Waarom dit ertoe doet

DevOps is de naam die de meeste organisaties geven aan het ontmoetingspunt tussen continue levering en IT-beheer. Het kwam voort uit een frustratie: ontwikkelaars werden beloond voor verandering en beheerders voor stabiliteit, dus de twee groepen trokken in tegengestelde richtingen en de overdracht tussen hen was waar snelheid en kwaliteit verloren gingen. DevOps vraagt beide de verantwoordelijkheid voor het hele pad van idee tot draaiende service te delen.

Voor mensen die in ITSM werken kan DevOps bedreigend of overbodig lijken. Bedreigend, omdat het de processen lijkt te verwerpen die beheer na harde ervaring heeft opgebouwd. Overbodig, omdat veel van wat het aanbeveelt, zoals incidentreviews, automatisering en continue verbetering, al in ITIL staat. Geen van beide opvattingen klopt helemaal. Het Wikipedia-artikel over DevOps zet DevOps af tegen wat het het "top-down" en rigide raamwerk van ITIL uit de jaren negentig noemt, wat voor oudere versies klopt; ITIL 4 is geschreven om aan te sluiten bij agile, DevOps en lean (zie Onderwerp 2.2 — ITIL).

De definitie van DevOps wordt betwist en het Wikipedia-artikel zegt dat ook. Dit onderwerp gebruikt het artikel, de onderzoekspagina's van DORA en het verslag van Gene Kim over de "Three Ways", en noemt wat vaststaat, wat wordt betwist en wat deze gids niet kon verifiëren.

## Kernconcepten

### Wat DevOps is

Het [Wikipedia-artikel over DevOps](https://en.wikipedia.org/wiki/DevOps) beschrijft het als de integratie en automatisering van softwareontwikkeling en IT-beheer, wat de ontwikkeltijd kan verkorten en de ontwikkellevenscyclus kan verbeteren. Het citeert de academische onderzoekers Len Bass, Ingo Weber en Liming Zhu, die het beschrijven als een set praktijken die erop gericht zijn de tijd tussen het committen van een wijziging aan een systeem en zijn normale plaatsing in productie te verkorten. Het artikel merkt op dat de term in meerdere contexten wordt gebruikt en dat de definitie wordt betwist, en dat academische studies uit 2015 tot 2017 geen consensus over de kenmerken vonden.

Het artikel meldt dat voorstellen om ontwikkelmethoden met deployment en beheer te combineren teruggaan tot de late jaren tachtig en vroege jaren negentig, en dat de eerste DevOps Days-conferentie in 2009 in Gent, België, werd gehouden, opgericht door Patrick Debois. Het karakteriseert DevOps in het algemeen aan de hand van drie principes: gedeeld eigenaarschap, automatisering van werkstromen en snelle feedback, en merkt op dat die karakterisering zelf wordt betwist.

### De Three Ways

Gene Kim, een auteur van *The Phoenix Project* en *The DevOps Handbook*, beschrijft drie principes waaruit volgens hem DevOps-patronen kunnen worden afgeleid. Zoals samengevat in Kims eigen bericht op de site van IT Revolution en in secundaire samenvattingen:

| Way | Idee | Voorbeelden |
|---|---|---|
| **De eerste Way: flow** | Kijk naar de prestaties van het hele systeem, niet van één silo; versnel werk van idee naar waarde | Geef bekende defecten niet door aan downstream; laat lokale optimalisatie het geheel niet verslechteren; streef altijd naar meer flow |
| **De tweede Way: feedback** | Verkort en versterk de signalen die van latere fasen naar eerdere terugstromen | Telemetrie, snel falende pipelines, klantfeedback |
| **De derde Way: continu leren en experimenteren** | Bouw een cultuur die kleine, bewuste risico's neemt en ervan leert | Tijd voor leren reserveren, lokale ontdekkingen omzetten in globale verbeteringen |

Deze komen overeen met de eigen thema's van deze gids: flow (zie Onderwerp 1.5 — Kanban en Onderwerp 1.7 — Lean softwareontwikkeling), feedback (zie Onderwerp 3.10 — Monitoring en eventmanagement) en leren (zie Onderwerp 1.10 — Agile leren). Een opmerking over terminologie: Kims bericht noemt de tweede Way "amplify feedback loops" en het Handbook noemt hem "feedback".

### Praktijken

Volgens Wikipedia zijn continue integratie en continue levering cruciaal voor het succes van DevOps, naast automatisering. Het artikel noemt versiebeheer, virtuele machines, containerisatie en database-DevOps, dat versiebeheer, geautomatiseerde tests en CI/CD op schema- en gegevenswijzigingen toepast. Het beschrijft GitOps als het beheren van deploymentconfiguratie in versiebeheer en DevSecOps als het integreren van beveiliging in levering via "shift left"-testen, inclusief statische en dynamische analyse. De lijst met capabilities van DORA omvat continue levering, continue integratie, deploymentautomatisering, testautomatisering, trunk-based development, versiebeheer, databasewijzigingsmanagement, monitoring en observability, doordringende beveiliging, werken in kleine batches en limieten op onderhanden werk (zie Onderwerp 3.5 — Release- en deploymentmanagement).

### Cultuur

De capabilitylijst van DORA, gelezen voor deze gids, omvat culturele items: generatieve organisatiecultuur, leercultuur, transformationeel leiderschap, werktevredenheid, welzijn en teamexperimenten. De pagina die ze noemt, legt ze niet uit en rangschikt ze niet. Een andere DORA-pagina zegt dat haar maten organisatieprestaties en het welzijn van teamleden voorspellen, en waarschuwt voor gescheiden eigenaarschap, en beveelt gedeeld eigenaarschap over ontwikkel-, beheer- en releaseteams aan. Dit komt overeen met de derde Way: DevOps gaat net zozeer over hoe mensen samenwerken als over tools.

De gangbare ezelsbrug **CALMS** (culture, automation, lean, measurement, sharing) wordt vaak gebruikt om DevOps samen te vatten. Het Wikipedia-artikel over DevOps noemt hem niet en deze gids verifieerde zijn herkomst niet, dus hij wordt hier alleen genoemd omdat lezers hem tegenkomen.

### DevOps en agile

Het artikel zegt dat geautomatiseerd bouwen en testen, continue integratie en continue levering uit de agile wereld stammen, en dat het feit dat Scrum engineeringpraktijken weglaat ertoe leidde dat automatiseringswerk zich afsplitste naar DevOps. Dit past bij Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven, dat opmerkt dat Scrum niet zegt hoe software te bouwen, testen, deployen of beheren. Extreme Programming bevat al veel van de engineeringpraktijken (zie Onderwerp 1.6 — Extreme Programming). DevOps breidt de agile zorg uit voorbij het moment van release.

### DevOps en ITIL

Het artikel zet DevOps af tegen het "top-down" en rigide raamwerk van ITIL uit de jaren negentig en bespreekt ITSM verder niet. Een eerlijker beeld voor vandaag:

| | Benadrukt meestal | Risico als het alleen wordt gebruikt |
|---|---|---|
| **DevOps** | Flow, automatisering, gedeeld eigenaarschap, snelle feedback | Vastleggingen, beheersmaatregelen en het bredere servicebeeld verwaarlozen |
| **ITIL 4** | Waarde, praktijken, governance, een breed scala aan servicepraktijken | Praktijken als zwaar proces behandelen |

Het eigen certificeringsschema van ITIL 4 omvat een specialistische module genaamd High Velocity IT (HVIT) in het Managing Professional-traject, zoals het Wikipedia-artikel over ITIL noemt. Dat toont dat de eigenaar snel bewegend, digitaal werk als eigen onderwerp behandelt. Een praktische combinatie: gebruik DevOps-praktijken om de ITIL-praktijken in de pipeline te implementeren, zoals wijzigingen automatisch vastleggen, tests draaien als risicobeheersing en monitoring als eventpraktijk (zie Onderwerp 3.4 — Change enablement en Onderwerp 5.1 — Agile servicemanagement).

### DevOps en site reliability engineering

Het Wikipedia-artikel zegt dat Google site reliability engineering in 2003 ontwikkelde en dat sommige van de oorspronkelijke auteurs SRE zien als een implementatie van DevOps. Het SRE-artikel noemt het een specifieke implementatie van DevOps, smaller omdat het zich richt op het bouwen van betrouwbare systemen (zie Onderwerp 5.3 — Site reliability engineering).

### Maatstaven

De maten van DORA voor prestaties bij softwarelevering geven een gemeenschappelijk vocabulaire: doorlooptijd van wijzigingen, deploymentfrequentie, hersteltijd na mislukte deployment, percentage mislukte wijzigingen en deployment-herwerkpercentage (zie Onderwerp 3.4 — Change enablement en Onderwerp 5.6 — Maatstaven en meten). Het Wikipedia-artikel meldt dat de maten in 2016 werden gepubliceerd, dat de hersteltijdmaat in het rapport van 2023 werd hernoemd, dat in 2024 een herwerkmaat werd toegevoegd en dat DORA in 2025 prestatieniveaus verving door zeven teamarchetypen. Het legt ook vast dat sommige experts de onderzoeksmethodologie en maten van DORA bekritiseerden. Behandel de maten als nuttige vragen en niet als scores.

### Kritiek en grenzen

Naast het ontbreken van een vaststaande definitie meldt het artikel kritiek op de methodologie van DORA. Gangbare praktische kritiek, hier aangeboden als praktijkervaring en niet als bronbevinding, omvat "DevOps" dat als functietitel voor de oude beheerrol wordt gebruikt, tools die zonder cultuurverandering worden overgenomen en compliance die in het streven naar snelheid wordt verwaarloosd. Het artikel geeft geen adoptiestatistieken.

## Goede praktijken

1. **Spreek af wat je met DevOps bedoelt.** Schrijf een korte verklaring van wat het voor je teams betekent, zoals gedeeld eigenaarschap van een service, geautomatiseerde levering en snelle feedback. Een gedeelde definitie voorkomt discussies over etiketten.
2. **Deel het eigenaarschap van de service.** Maak de mensen die een service bouwen verantwoordelijk voor hoe ze draait en geef hen de middelen: bereikbaarheid, monitoring en toegang. Ondersteun hen met beheerexpertise.
3. **Automatiseer het pad naar productie.** Bouw een pipeline die elke wijziging bouwt, test en deployt. Leg vast wat ze deed. Behandel de pipeline als product met gebruikers.
4. **Werk in kleine batches.** Release vaak kleine wijzigingen. Dit vermindert risico en versnelt feedback, zoals de capabilitylijst van DORA suggereert.
5. **Verkort de feedbackloops.** Maak testresultaten, monitoring en gebruikersfeedback binnen minuten of uren zichtbaar voor het team. Volg de tweede Way: versterk de signalen die terugstromen.
6. **Kijk naar de hele flow.** Breng het pad van idee naar draaiende service in kaart en vind de langste wachttijden, ook die buiten het ontwikkelteam. Volg de eerste Way: optimaliseer niet één silo ten koste van het geheel (zie Onderwerp 5.4 — Waardestroommanagement).
7. **Bouw beveiliging en compliance in.** Zet geautomatiseerde beveiligings- en beleidscontroles in de pipeline en leg bewijs vast als bijproduct (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement en Onderwerp 5.7 — Governance, risico en compliance).
8. **Behandel cultuur als eersterangszaak.** Investeer in leren, schuldvrije reviews, psychologische veiligheid en gedeelde doelen. De capabilitylijst van DORA bevat cultuur niet voor niets naast technische items.
9. **Maak tijd om te leren en te experimenteren.** Reserveer tijd en veilige plekken voor experimenten en deel lessen. Volg de derde Way.
10. **Gebruik ITIL-praktijken waar ze helpen.** Houd incident-, probleem-, wijzigings- en kennispraktijken, geïmplementeerd via automatisering en lichte vastleggingen. Verwijder stappen die hun doel niet dienen.
11. **Meet met zorg.** Volg maten in DORA-stijl per service, verbeter ten opzichte van je eigen eerdere prestaties en vermijd ze als doelen te stellen (zie Onderwerp 5.6 — Maatstaven en meten).
12. **Vermijd de titelval.** Maak geen apart "DevOps-team" dat een nieuwe silo tussen ontwikkeling en beheer wordt. Spreid de praktijken over teams en gebruik platform- of ondersteunende teams om te helpen.

## Vragen om met je team te bespreken

**Wat betekent DevOps hier en waar hoorden we het woord het eerst?**

Vraag iedereen om een definitie van één zin. Vergelijk. Het Wikipedia-artikel zegt dat de definitie wordt betwist, dus verschillen worden verwacht. Schrijf een gedeelde verklaring die concreet is: wie wat bezit, wat is geautomatiseerd, welke feedback bestaat. De facilitator kan vragen wat er tot nu toe door het woord is veranderd.

**Waar wacht een wijziging tussen "klaar" en "live" en wie bezit de wachttijd?**

Volg een recente wijziging en maak een lijst van de wachttijden: reviews, goedkeuringen, omgevingen, releasevensters. Markeer die buiten het team. Vraag welke wachttijden tegen echte risico's beschermen en welke gewoonte zijn. Kies er een om te verkorten, samen met zijn eigenaar.

**Wie is er in bereikbaarheidsdienst wanneer er iets kapotgaat in productie en hebben ze de middelen om het te repareren?**

Vraag wie wordt gepaged en wat ze alleen kunnen doen. Als de bouwers niet in bereikbaarheidsdienst zijn, vraag waarom. Als beheerders de code niet kunnen wijzigen, vraag wat ze doen. Bespreek hoe gedeeld eigenaarschap hier eruit zou zien en welke ondersteuning nodig zou zijn.

**Welke feedback krijgen we na een release en hoe snel?**

Maak een lijst van de signalen: tests, monitoring, supporttickets, opmerkingen van gebruikers. Vraag hoe lang elk nodig heeft om het team te bereiken. Typische antwoorden: tests in minuten, tickets in dagen. Kies één signaal om te versnellen.

**Hoe veilig is het om iets te proberen en te falen?**

Vraag om een recent voorbeeld van een mislukt experiment en wat er met de betrokken mensen gebeurde. De derde Way hangt af van leren van kleine mislukkingen. Bespreek wat experimenten veiliger zou maken, zoals limieten, rollbacks en schuldvrije review.

**Hoe komen onze ITIL-praktijken in de pipeline voor en waar niet?**

Neem wijzigings-, incident- en kennispraktijken en vraag waar elk in de automatisering voorkomt. Gaten wijzen op handmatig werk of op beheersmaatregelen waarvoor geen bewijs bestaat. Spreek één praktijk af om naar de pipeline te verplaatsen.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale postdienst heeft een ontwikkelgroep van 40 en een beheergroep van 25. Ontwikkelaars brengen elk kwartaal een grote versie uit en geven een pakket en een lang document aan beheer, dat het in een weekend uitrolt. Beheer klaagt dat ontwikkelaars productie niet begrijpen en ontwikkelaars klagen dat beheer onbereikbaar is wanneer een defect een snelle oplossing vraagt. Een recente release duurde 19 uur, brak de pakketvolgpagina en leidde tot een dag van vingerwijzen.

Een nieuw hoofd platform stelt een proef voor met één productteam, de pakketvolgservice. Vier ontwikkelaars en twee beheerengineers vormen één team dat de service van begin tot eind bezit. Ontwikkelaars sluiten aan bij het bereikbaarheidsrooster, ondersteund door de beheerengineers. Het team bouwt een pipeline die elke samengevoegde wijziging bouwt, test en naar een stagingomgeving deployt, en naar productie deployt met één goedkeuringsstap die de service-eigenaar geeft. Wijzigingsrecords worden door de pipeline aangemaakt. Monitoring wordt toegevoegd, alarmen gaan naar het hele team en elk productie-incident krijgt een korte schuldvrije review. Het team spreekt af minstens wekelijks te releasen en het hoofd platform vraagt het doorlooptijd, deploymentfrequentie, percentage mislukte wijzigingen en hersteltijd te volgen.

Na vier maanden released het team twee keer per week, is de mediane tijd van merge naar productie minder dan een dag en werd het laatste incident in minder dan een uur opgelost door de ontwikkelaar die de wijziging schreef. Niet alles werkt. De beheerengineers vinden de alarmen van de ontwikkelaars luidruchtig en ontwikkelaars vinden het vervelend 's nachts in bereikbaarheidsdienst te zijn. Een naburig team dat van de pakketvolging afhangt, was niet verteld over het nieuwe ritme en werd verrast door een wijziging. Het hoofd platform reserveert tijd voor het team om alarmen af te stemmen, voegt een rooster toe met een limiet op nachtelijke oproepen en regelt een maandelijkse bijeenkomst met afhankelijke teams. Interne audit vraagt het bewijs voor goedkeuringen te zien en het hoofd platform toont de pipelinevastleggingen en de incidentreviews.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams nemen operationele verantwoordelijkheid op zich: monitoring, bereikbaarheid en leren van incidenten. Bouw de pipeline en de feedback die je nodig hebt en vraag om beheerexpertise in plaats van over te dragen. Houd wijzigingen klein en zichtbaar.

### Service- en beheerteams

Beheerteams brengen kennis in over hoe services falen en welke beheersmaatregelen ertoe doen. Help het platform en de controles te bouwen, deel de bereikbaarheidsdienst en onderwijs. Vermijd een poort te zijn; word een mogelijkmaker die van de veilige route de makkelijke route maakt.

### Leiderschap en governance

Leiders scheppen de voorwaarden: gedeelde doelen over ontwikkeling en beheer, tijd voor automatisering, een cultuur die van falen leert en vertrouwen in bewijs uit de pipeline. Vermijd teams te hernoemen zonder prikkels te veranderen en vraag om uitkomsten, niet om DevOps-adoptie.

### Klanten en gebruikers

Klanten en gebruikers zien DevOps als snellere verbetering en sneller herstel. Verwacht frequente kleine wijzigingen en duidelijke communicatie erover. Geef snel feedback, want het team is ingericht om die te gebruiken.

## Veelvoorkomende faalpatronen

- **Een DevOps-team als nieuwe silo.** Ontwikkeling en beheer praten nog steeds niet. Spreid in plaats daarvan praktijken over teams en gebruik platformteams om mogelijk te maken.
- **Tools zonder cultuur.** Er wordt een pipeline gebouwd en er verandert niets anders. Verander in plaats daarvan eigenaarschap, prikkels en feedback samen.
- **Snelheid zonder veiligheid.** Releases versnellen en fouten nemen toe. Investeer in plaats daarvan eerst in tests, monitoring en rollback vóór tempo.
- **ITIL helemaal laten vallen.** Vastleggingen en beheersmaatregelen verdwijnen. Houd in plaats daarvan de praktijken en implementeer ze in de pipeline.
- **Ontwikkelaars in bereikbaarheidsdienst zonder ondersteuning.** Burn-out volgt. Deel in plaats daarvan het rooster, stem alarmen af en beperk nachtelijke oproepen.
- **Maten als doelen.** Teams manipuleren deploymentaantallen. Gebruik in plaats daarvan meerdere maten en vergelijk met je eigen geschiedenis.
- **Afhankelijke teams negeren.** Wijzigingen verrassen buren. Communiceer in plaats daarvan ritme en wijzigingen naar teams die van het jouwe afhangen.
- **Het woord als doel behandelen.** Etiketten vervangen uitkomsten. Vraag in plaats daarvan hoe betere flow, feedback en leren er voor je gebruikers uitzien.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Gedeeld eigenaarschap | Ontwikkeling en beheer dragen bij release over | Sommige teams delen bereikbaarheidsdienst | Teams bezitten hun services van begin tot eind met ondersteuning | Effecten van eigenaarschap op kwaliteit en belasting worden gemeten | Eigenaarschapsmodellen worden over teams, platforms en leveranciers gecoördineerd |
| Automatisering en flow | Levering is handmatig en in batches | Er bestaan enkele pipelines | Een gemeenschappelijke pipeline bouwt, test, deployt en legt wijzigingen vast | Doorlooptijd, frequentie, falen en herstel worden gemeten en afgestemd | Pipelines en flow worden over teams en waardestromen geoptimaliseerd |
| Feedback | Feedback komt na problemen van gebruikers | Sommige teams monitoren releases | Tests, monitoring en gebruikersfeedback bereiken teams binnen minuten of uren | Feedbacksnelheid en -kwaliteit worden gemeten en verbeterd | Feedbackloops beslaan teams, leveranciers en klanten |
| Cultuur en leren | Schuld volgt op falen | Enkele schuldvrije reviews | Schuldvrije reviews, experimenten en leertijd zijn routine | Leeracties worden gevolgd en resultaten gecontroleerd | Leren verspreidt zich voortdurend over de organisatie |

## Checklist

- [ ] We hebben een gedeelde schriftelijke definitie van wat DevOps voor ons betekent.
- [ ] Teams die een service bouwen delen de verantwoordelijkheid voor het beheren ervan.
- [ ] Een pipeline bouwt, test en deployt wijzigingen en legt vast wat ze deed.
- [ ] Wijzigingen worden vaak in kleine batches uitgebracht.
- [ ] Test-, monitoring- en gebruikersfeedback bereiken het team snel.
- [ ] Beveiligings- en beleidscontroles draaien in de pipeline.
- [ ] Bereikbaarheidsdienst wordt gedeeld, met limieten op nachtelijke oproepen en afgestemde alarmen.
- [ ] Incidentreviews zijn schuldvrij en leveren acties met eigenaren op.
- [ ] We volgen voor elke service doorlooptijd, deploymentfrequentie, percentage mislukte wijzigingen en hersteltijd.
- [ ] Afhankelijke teams worden verteld over ons releaseritme en grote wijzigingen.

## AI-prompts

**Doel: de wachttijden tussen "klaar" en "live" in kaart brengen.**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: controleren waar ITIL-praktijken in je pipeline voorkomen.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een pilot van gedeeld eigenaarschap met één team plannen.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een schuldvrije incidentreview voor een gemengd team ontwerpen.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gebruik dit om kleine, frequente releases en de controles eromheen te plannen.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): gebruik dit om de geautomatiseerde tests te bouwen waarvan een pipeline afhangt.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): gebruik dit om testen en beveiligingscontroles eerder in de pipeline te verplaatsen.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gebruik dit om gedeelde bereikbaarheidsdienst met eerlijke limieten te ontwerpen.
- [postmortem](../../../../skills/postmortem/SKILL.md): gebruik dit om schuldvrije reviews te houden die de derde Way voeden.

## Belangrijkste bronnen

- **DevOps** (Wikipedia): een overzicht van definities, praktijken, relaties met agile, SRE en DevSecOps en DORA-maten, met genoemde debatten.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): de bron voor flow, feedback en continu leren.
- **DORA capabilities and metrics** (dora.dev): de lijst met capabilities van het onderzoeksprogramma en zijn maten voor softwarelevering.
- **The DevOps Handbook** en **The Phoenix Project** (Gene Kim en coauteurs): de boeken die de Three Ways in detail uitwerken.

## Referenties

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
