# Maatstaven en meten

**Goed meten helpt een team te zien of zijn werk gebruikers helpt en beter wordt, en de veiligste manier om een maat te gebruiken is als vraag om te bespreken, nooit als doel om te halen.**

## Waarom dit ertoe doet

Teams hebben getallen nodig om bij te sturen. Zonder getallen berusten beslissingen op geheugen, luide stemmen en wie het laatst sprak. Met de verkeerde getallen kunnen beslissingen slechter zijn dan geen: een team dat gesloten tickets telt, leert tickets snel te sluiten, of de problemen van gebruikers nu zijn opgelost of niet. Meten is krachtig en verandert gedrag op manieren die de ontwerpers niet altijd bedoelen.

Deze gids heeft al veel maten gebruikt: de maten van DORA voor softwarelevering (zie Onderwerp 3.4 — Change enablement), de vier flowmaten van de Kanban Guide (zie Onderwerp 1.5 — Kanban), service level indicators en doelstellingen (zie Onderwerp 3.7 — Servicelevelmanagement) en pagerbelasting (zie Onderwerp 3.10 — Monitoring en eventmanagement). Dit onderwerp brengt ze samen, voegt doelen stellen met doelstellingen en kernresultaten en klanttevredenheidsmaten toe en zet ze af tegen de oudste waarschuwing in het vak: de wet van Goodhart.

Het [Wikipedia-artikel over de wet van Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) geeft het adagium in zijn gebruikelijke vorm, "Wanneer een maat een doel wordt, is het geen goede maat meer", en schrijft het toe aan de Britse econoom Charles Goodhart, die in een artikel uit 1975 over Brits monetair beleid schreef dat elke waargenomen statistische regelmaat de neiging heeft in te storten zodra er druk op wordt uitgeoefend voor beheersingsdoeleinden. De gebruikelijke formulering is later en het artikel schrijft haar toe aan Keith Hoskin (1996) en het artikel van Marilyn Strathern uit 1997. Het punt heeft in verschillende vakgebieden een lange geschiedenis en is de juiste plek om dit onderwerp te beginnen.

## Kernconcepten

### Maten, doelen en de wet van Goodhart

Een **maat** beschrijft iets. Een **doel** is een getal dat iemand moet halen. De verschuiving van het eerste naar het tweede is waar de problemen beginnen. Zodra mensen voor een getal worden beloond of gestraft, vinden ze manieren om het getal te laten bewegen die niet hetzelfde zijn als het verbeteren van wat het beschrijft. Het artikel geeft voorbeelden uit monetair beleid, schoolsystemen en gezondheidszorg. In een serviceorganisatie zijn eenvoudige voorbeelden: de tijd tot sluiting van tickets daalt doordat tickets te vroeg worden gesloten, deploymentaantallen stijgen doordat wijzigingen worden gesplitst en de beschikbaarheid lijkt te stijgen doordat storingen worden geherclassificeerd.

Het middel is niet meten te vermijden maar zorgvuldig te meten:

- Gebruik meerdere maten die tegen elkaar in trekken, zoals snelheid en kwaliteit.
- Bespreek de getallen met de mensen wier werk ze beschrijven.
- Koppel individuele beloningen of tuchtmaatregelen niet aan één getal.
- Verander maten wanneer ze niet meer informatief zijn.

### Soorten maten

| Soort | Vraag die ze beantwoordt | Voorbeelden |
|---|---|---|
| **Uitkomst** | Zijn gebruikers en de business beter af? | Gebruikerstevredenheid, taaksucces, omzet, incidenten die gebruikers schaden |
| **Flow** | Hoe goed beweegt werk? | Cyclustijd, doorvoer, leeftijd van werkitems, onderhanden werk |
| **Leveringsprestaties** | Hoe goed bereiken wijzigingen productie? | Doorlooptijd van wijzigingen, deploymentfrequentie, percentage mislukte wijzigingen, hersteltijd |
| **Serviceniveau** | Voldoet de service aan de behoeften van gebruikers? | Beschikbaarheid, latentie, foutenpercentage tegen doelstellingen |
| **Gezondheid en houdbaarheid** | Kan dit zo doorgaan? | Pagerbelasting, toil, overwerk, stemming van personeel |
| **Kosten** | Wat kost het per eenheid waarde? | Kosten per transactie of per gebruiker |

Een gebalanceerde set put uit meerdere rijen, zodat verbetering van de ene niet ten koste van de andere wordt gekocht.

### DORA-maten

De maten van DORA voor prestaties bij softwarelevering zijn doorlooptijd van wijzigingen, deploymentfrequentie, hersteltijd na mislukte deployment, percentage mislukte wijzigingen en deployment-herwerkpercentage. De DORA-gids over de maten zegt dat snelheid en stabiliteit geen afweging zijn, omdat de maten bij de meeste teams correleren. Ze waarschuwt ervoor ze als doelen te stellen, op één te vertrouwen, sterk verschillende applicaties te vergelijken en met andere teams te concurreren, en adviseert te verbeteren ten opzichte van je eigen eerdere prestaties. Het Wikipedia-artikel over DevOps voegt toe dat sommige experts de onderzoeksmethodologie en maten van DORA bekritiseerden, dus behandel ze als nuttige vragen met grenzen (zie Onderwerp 5.2 — DevOps).

### Flowmaten

De Kanban Guide definieert vier maten: onderhanden werk, doorvoer, leeftijd van werkitems en cyclustijd. Ze merkt op dat teams ze mogen hernoemen en andere naar behoefte moeten toevoegen, en zegt dat maten er alleen toe doen wanneer ze de praktijken informeren van het definiëren van de werkstroom, het beheren van items erin en het verbeteren ervan. De leeftijd van werkitems is bijzonder nuttig omdat ze problemen toont terwijl er nog tijd is om te handelen (zie Onderwerp 5.4 — Waardestroommanagement).

### Serviceniveaumaten

Service level indicators en doelstellingen (zie Onderwerp 3.7 — Servicelevelmanagement) geven het meest directe beeld van wat gebruikers ervaren. Het SRE-boek pleit voor een paar indicatoren gekozen uit waar gebruikers om geven, voor percentielen en niet alleen gemiddelden, en voor doelstellingen die geen perfectie zijn. Foutbudgetten zetten de kloof om in een gedeelde beslisregel (zie Onderwerp 5.3 — Site reliability engineering).

### Doelstellingen en kernresultaten

**Doelstellingen en kernresultaten (objectives and key results, OKR's)** zijn een raamwerk voor doelstelling. Het Wikipedia-artikel beschrijft een OKR als een doelstelling, een belangrijk, concreet, duidelijk gedefinieerd doel, gepaard met drie tot vijf kernresultaten, die meetbare succescriteria zijn. Het schrijft Andrew Grove toe dat hij de aanpak in de jaren zeventig bij Intel populair maakte en in *High Output Management* (1983) documenteerde, en John Doerr dat hij haar in 1999 naar Google bracht. Het artikel zegt dat OKR's van 0,0 tot 1,0 worden gescoord, dat aspiratieve kernresultaten ongeveer 0,7 beogen en dat Doerr een succespercentage van ongeveer 70 procent aanbeveelt, dus een kernresultaat dat altijd wordt gehaald moet worden herzien. Het adviseert doelstellingen voor business-as-usual te vermijden en leidende indicatoren boven volgende te verkiezen.

Het artikel legt ook kritiek vast: de meeste organisaties zijn gestopt met OKR's voor individuele medewerkers, die neigen op takenlijsten te lijken en in functioneringsgesprekken te vervagen, en OKR's op meerdere niveaus kunnen een watervalaanpak creëren. Het geeft geen onafhankelijk bewijs van effectiviteit en draagt een onderhoudstag over het vertrouwen op bronnen dicht bij het onderwerp. Voor serviceteams kunnen OKR's uitkomsten (bijvoorbeeld "gebruikers voltooien de registratie zonder hulp") aan meetbare kernresultaten koppelen, mits ze niet in individuele doelen worden veranderd.

### Klanttevredenheid

Meten wat gebruikers denken is moeilijk goed te doen. Een gangbaar instrument is de **net promoter score (NPS)**. Volgens Wikipedia is ze gebaseerd op één vraag over hoe waarschijnlijk respondenten een bedrijf, product of service aanbevelen, waarbij promoters 9 of 10 scoren, passieven 7 of 8 en detractors 6 of lager; de score is het percentage promoters minus het percentage detractors. Fred Reichheld van Bain & Company maakte haar populair in een artikel in de *Harvard Business Review* uit 2003. Het artikel legt grenzen vast: wetenschappers vragen zich af of ze bedrijfsgroei betrouwbaar voorspelt, één item heeft veel antwoorden nodig, ze zegt weinig over specifieke problemen, te veel enquêtes lokken klachten uit en haar aan beloning koppelen kan gedrag vertekenen, dus Reichheld raadde aan de twee los te koppelen. Er bestaan andere instrumenten, zoals klanttevredenheidsscores en klantinspanningsscores, maar het artikel bespreekt ze niet.

Welk instrument ook, stel een korte vraag, sta altijd een vrijetekstantwoord toe, lees de opmerkingen en volg op wat je leert.

### Mensen en houdbaarheid meten

Maten van personeelsbelasting en gezondheid, zoals pagerbelasting, toil, overwerk en stemming, zijn maten van de houdbaarheid van de service (zie Onderwerp 5.3 — Site reliability engineering). Behandel ze als informatie over het systeem en niet als maten van de prestaties van individuen.

### AI en automatisering meten

Voeg, wanneer een geautomatiseerde of AI-ondersteunde stap wordt ingevoerd, maten van haar kwaliteit toe: hoe vaak mensen haar overrulen, hoe vaak ze fout is en wat ze kost (zie Onderwerp 6.2 — AI in IT-servicemanagement).

### Grenzen

Maten zijn gedeeltelijk. Ze laten weg wat moeilijk te tellen is, zoals vertrouwen, vakmanschap en oordeel. Ze kunnen misleiden wanneer gegevens onvolledig zijn of definities tussen teams verschillen. De hier gelezen artikelen bieden weinig empirisch bewijs of meetprogramma's uitkomsten verbeteren. Behandel elk programma als experiment en review het.

## Goede praktijken

1. **Begin bij de vraag.** Vraag welke beslissing een maat zou informeren en wie erop zou handelen. Als niemand dat zou doen, verzamel haar dan niet.
2. **Kies een kleine gebalanceerde set.** Kies een paar maten over uitkomst, flow, levering, serviceniveau en gezondheid. Zorg dat sommige tegen elkaar in trekken.
3. **Definieer elke maat precies.** Schrijf op wat wordt geteld, waarvandaan en wat is uitgesloten. Twee teams die hetzelfde woord voor verschillende dingen gebruiken, produceren getallen die niet vergelijkbaar zijn.
4. **Meet per service of team en vergelijk met het eigen verleden.** Vermijd teams te rangschikken. DORA adviseert te verbeteren ten opzichte van je eigen eerdere prestaties en voorzichtig te zijn met het vergelijken van verschillende applicaties.
5. **Maak van één getal geen doel.** Gebruik maten als aanleiding voor gesprek en stel doelen als uitkomsten. Let, wanneer een maat een doel is, op manipulatie (zie de wet van Goodhart).
6. **Combineer getallen met verhalen.** Kijk bij elke trend naar een paar echte gevallen. Getallen vertellen waar je moet kijken; gevallen vertellen waarom.
7. **Kijk naar verdelingen.** Gebruik percentielen en bereiken, niet alleen gemiddelden, voor tijd- en omvangmaten.
8. **Geef waar mogelijk de voorkeur aan leidende indicatoren.** Maten zoals de leeftijd van werkitems tonen problemen vóór ze landen, anders dan maten van eerdere uitkomsten.
9. **Stel doelen met doelstellingen en kernresultaten zorgvuldig.** Houd OKR's, als je ze gebruikt, op team- en organisatieniveau, vermijd doelstellingen voor business-as-usual en behandel een resultaat dat altijd wordt gehaald als teken hoger te mikken.
10. **Vraag gebruikers, kort en vaak.** Gebruik een korte vraag met vrije tekst, lees de opmerkingen en reageer. Koppel enquêtescores niet aan individuele beloning.
11. **Let op de kosten van meten.** Geef de voorkeur aan gegevens die tools als bijproduct van werk produceren. Laat handmatige rapportage die niemand gebruikt vallen.
12. **Review de maten zelf.** Vraag eenmaal of tweemaal per jaar welke maten tot beslissingen leidden en welke niet en faseer de laatste uit.

## Vragen om met je team te bespreken

**Welke van onze maten heeft de afgelopen zes maanden tot een beslissing geleid?**

Maak een lijst van de maten en vraag bij elke om een gekoppelde beslissing. Maten zonder koppeling zijn kandidaten voor verwijdering. De facilitator kan vragen welke maat mensen het minst vertrouwen en waarom. Verwijder of repareer er een.

**Wat gebeurt er met ons gedrag wanneer een getal een doel is?**

Vraag om een recent voorbeeld waarin een getal een doel was. Peil wat mensen deden om het te halen. Het adagium van Goodhart is het kader. Vraag hoe een betere maat of een paring van maten eruit zou zien. Spreek één verandering af.

**Meten we snelheid en kwaliteit samen?**

Maak een lijst van de snelheidsmaten en de kwaliteitsmaten. Als de lijsten scheef zijn, bespreek dan het effect. Bijvoorbeeld, de sluitingstijd van tickets meten zonder terugkerende contacten nodigt uit tot vroeg sluiten. Kies een paring.

**Wat vertellen gebruikers ons over hoe het gaat en hoe vragen we het?**

Kijk naar de vragen die je gebruikers stelt en hoe vaak. Lees enkele vrijetekstantwoorden hardop voor. Vraag wat er door veranderde. Spreek een korte vraag af om te proberen.

**Welke van onze maten kunnen worden gebruikt om individuen te beoordelen en wat moeten we daaraan doen?**

Identificeer maten die mensen zouden kunnen vrezen. Bespreek de risico's en spreek expliciete regels af over waarvoor de getallen niet zullen worden gebruikt. Schrijf ze op.

**Als we maar vijf maten mochten houden, welke zouden we houden?**

Vraag iedereen er vijf te kiezen en vergelijk. De overlap toont de kern; de verschillen tonen verschillende behoeften. Het resultaat is een startset. Controleer dat ze uitkomsten, flow, serviceniveaus en gezondheid dekt.

## In de praktijk: een agile ITIL-voorbeeld

De IT-groep van een nationale spoorwegmaatschappij beheert de systemen achter haar reizigersinformatie. De groep rapporteert elke maand een dashboard van 40 maten aan het directieteam. Het dashboard wordt door weinigen gelezen en twee maten domineren het gesprek: het aantal incidenten dat binnen de streeftijd is gesloten en het aantal releases per kwartaal. Het incidentteam heeft geleerd incidenten snel te sluiten en nieuwe te heropenen voor dezelfde fout, en verschillende leveringsteams splitsen werk in triviale releases om het aantal te halen.

Het hoofd van de IT-groep vraagt een klein team de maten opnieuw op te bouwen. Ze beginnen met te vragen welke beslissingen het dashboard moet informeren. Voor elke service kiezen ze een handvol maten: een voor gebruikers zichtbare service level indicator en doelstelling, doorlooptijd van wijzigingen en percentage mislukte wijzigingen, leeftijd van werkitems voor open probleemitems, pagerbelasting per engineer en een maandelijkse enquête van één vraag onder stationspersoneel met een vrij tekstvak. De oude aantallen worden uitgefaseerd. Het directieteam spreekt af dat geen maat zal worden gebruikt om teams te rangschikken of individuele bonussen vast te stellen, en het hoofd IT schrijft dit als regel op het dashboard. Teams wordt gevraagd voor de services die ze bezitten verbeterdoelen te stellen als doelstellingen met kernresultaten, alleen op teamniveau.

Na een jaar heeft het dashboard twaalf maten en is de maandelijkse review een gesprek geworden over de oudste open problemen en de vrijetekstopmerkingen. Terugkerende incidenten dalen en releases zijn zinvoller. Er blijven moeilijkheden. De tevredenheidsenquête krijgt weinig antwoorden van nachtpersoneel, de doorlooptijd van één team ziet er slecht uit omdat het als enige de tijd vanaf het idee telt en niet vanaf de commit, en een manager is begonnen de enquêtescore in een functioneringsgesprek aan te halen. Het hoofd IT vraagt het team definities op elkaar af te stemmen, herinnert managers aan de regel en regelt een korte enquête bij de overdracht van de nachtdienst.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams moeten maten kiezen die hen helpen bij te sturen, de getallen uit hun tools halen en ze in retrospectives bespreken. Let op maten die het splitsen van werk of het verbergen van fouten belonen. Deel wat je leert met andere teams.

### Service- en beheerteams

Beheerteams dragen veel van de serviceniveau- en gezondheidsmaten. Houd definities duidelijk en gegevens betrouwbaar, neem pagerbelasting en toil mee en presenteer getallen met gevallen en toelichting. Verzet je wanneer een maat als doel wordt gebruikt.

### Leiderschap en governance

Leiders bepalen de meetcultuur. Zeg waarvoor de getallen wel en niet zullen worden gebruikt, vraag om trends en verhalen en niet om ranglijsten en weersta het toevoegen van maten voor elke nieuwe zorg. Review de hele set van tijd tot tijd.

### Klanten en gebruikers

Klanten en gebruikers zijn zowel een bron van maten als onderwerp ervan. Beantwoord korte enquêtes als je kunt en zeg wat telt. Vraag verleners wat ze over jouw ervaring meten en wat ze met de resultaten hebben gedaan.

## Veelvoorkomende faalpatronen

- **Maten als doelen.** Manipulatie volgt. Gebruik in plaats daarvan maten voor gesprek en stel doelen als uitkomsten.
- **Eén getal.** Een enkele maat vertekent gedrag. Gebruik in plaats daarvan een gebalanceerde set die tegen zichzelf in trekt.
- **Inconsistente definities.** Teams tellen verschillend. Definieer in plaats daarvan elke maat en haar bron.
- **Ranglijsten.** Teams concurreren en verbergen problemen. Vergelijk in plaats daarvan elk team met zijn eigen geschiedenis.
- **Alleen gemiddelden.** Lange staarten blijven verborgen. Kijk in plaats daarvan naar verdelingen en percentielen.
- **Meten wat makkelijk is.** Gemakkelijke getallen vervangen belangrijke. Begin in plaats daarvan bij beslissingen en uitkomsten voor gebruikers.
- **Individuele OKR's als takenlijsten.** Doelen worden functioneringsgesprekken. Houd OKR's in plaats daarvan op team- en organisatieniveau.
- **Enquêtemoeheid en koppelingen met beloning.** Gebruikers stoppen met antwoorden, of scores worden gemanipuleerd. Houd enquêtes in plaats daarvan kort en los van beloning.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Keuze en definitie | Maten zijn ad hoc | Sommige teams definiëren een paar maten | Een gebalanceerde set met duidelijke definities wordt per service gebruikt | De set wordt gereviewd op bruikbaarheid en gaten | Maten zijn over teams, leveranciers en klanten afgestemd |
| Gebruik in beslissingen | Getallen worden gerapporteerd maar zelden gebruikt | Sommige teams bespreken ze in reviews | Maten voeden regelmatige beslissingen en verbetering | Beslissingen die aan maten zijn gekoppeld worden gevolgd en erover geleerd | Maten sturen beslissingen over de organisatie |
| Bescherming tegen manipulatie | Doelen worden op afzonderlijke getallen gesteld | Enig bewustzijn van vertekening | Regels over hoe maten mogen worden gebruikt zijn opgeschreven en worden gevolgd | Tekenen van manipulatie worden gemonitord en maten bijgesteld | Meetcultuur wordt over de organisatie gedeeld |
| Gebruikers- en gezondheidsmaten | Weinig gegevens over gebruikers of personeel | Enkele enquêtes of belastinggegevens | Korte gebruikersenquêtes en houdbaarheidsmaten zijn routine | Resultaten leiden tot geplande actie en worden gecontroleerd | Stemmen van gebruikers en personeel geven vorm aan prioriteiten over services |

## Checklist

- [ ] Elke maat die we rapporteren heeft een vermelde beslissing die ze informeert.
- [ ] We gebruiken een kleine gebalanceerde set die uitkomst-, flow-, serviceniveau-, leverings- en gezondheidsmaten omvat.
- [ ] Elke maat heeft een schriftelijke definitie en bron.
- [ ] Teams worden met hun eigen geschiedenis vergeleken, niet gerangschikt.
- [ ] We hebben opgeschreven waarvoor maten niet zullen worden gebruikt.
- [ ] Tijdmaten tonen verdelingen of percentielen.
- [ ] Gebruikers wordt regelmatig een korte vraag gesteld met ruimte voor opmerkingen en antwoorden worden gelezen.
- [ ] Als we OKR's gebruiken, staan ze op team- of organisatieniveau en zijn het geen individuele doelen.
- [ ] Gegevens worden waar mogelijk als bijproduct van werk uit tools gehaald.
- [ ] We reviewen de maten zelf minstens eenmaal per jaar.

## AI-prompts

**Doel: een gebalanceerde set maten voor een service kiezen.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: vinden hoe een maat kan worden gemanipuleerd.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Doel: OKR's voor een serviceteam schrijven zonder ze tot taken te maken.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: vrijetekstopmerkingen uit enquêtes analyseren.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## AI-vaardigheden

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gebruik dit om maten van levering en serviceprestaties te kiezen en te interpreteren.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gebruik dit om vroegwaarschuwingsmaten voor risico's voor een service te kiezen.
- [survey-design](../../../../skills/survey-design/SKILL.md): gebruik dit om korte gebruikers- en personeelsenquêtes te ontwerpen die bruikbare antwoorden opleveren.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): gebruik dit om feedback van gebruikers en collega's te verzamelen en erop te reageren.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): gebruik dit om maten van uitkomsten te koppelen aan waar het team hierna aan werkt.

## Belangrijkste bronnen

- **DORA's software delivery performance metrics** (dora.dev): definities van de vijf maten en waarschuwingen over hun gebruik.
- **Goodhart's law** (Wikipedia): de oorsprong en formulering van het adagium dat een maat die als doel wordt gebruikt geen goede maat meer is.
- **Objectives and key results** (Wikipedia): het raamwerk, zijn oorsprong, scoring en kritiek.
- **Net promoter score** (Wikipedia): de definitie, het gebruik en de kritiek op één tevredenheidsmaat.

## Referenties

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
