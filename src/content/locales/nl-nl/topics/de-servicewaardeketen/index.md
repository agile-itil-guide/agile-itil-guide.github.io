# De servicewaardeketen

**De servicewaardeketen is een set van zes activiteiten die teams in verschillende volgordes combineren tot waardestromen, en ze beschrijft hoe continue levering en servicebeheer in één flow passen in plaats van in twee gescheiden.**

## Waarom dit ertoe doet

Veel organisaties behandelen bouwen en beheren als twee fasen: eerst bouwt een project de service, daarna neemt een beheergroep haar over. De overdracht is waar kennis verloren gaat, verantwoordelijkheid vervaagt en klanten de kloof voelen. De ITIL 4-servicewaardeketen is ontworpen om dat beeld te vervangen door een beeld waarin dezelfde activiteiten in elke volgorde en zo vaak als nodig kunnen plaatsvinden, afhankelijk van de situatie.

Dat ligt dicht bij hoe agile teams al werken. In één week kan een team een functie plannen, een deel ervan bouwen, haar releasen, een vraag van een klant erover beantwoorden en een in productie gevonden probleem oplossen. Elk daarvan is een andere activiteit in de keten. Ze als onderdelen van één flow zien, helpt een team vragen waar werk wacht, wie elke activiteit doet en welke activiteiten worden verwaarloosd.

Dit onderwerp beschrijft de zes activiteiten, hoe ze tot waardestromen combineren en hoe een agile team het idee kan gebruiken. De samenvattingen komen van een opleidingsaanbieder en een softwareleverancier, omdat de openbare pagina's van de eigenaar van het raamwerk die voor deze gids zijn gelezen de servicewaardeketen slechts terloops noemen. De pagina van de leverancier somt de activiteiten op zonder ze te beschrijven, dus behandel de onderstaande beschrijvingen als veelgebruikte lezingen en controleer de ITIL 4-publicaties op de formulering van de eigenaar (zie Onderwerp 2.2 — ITIL).

## Kernconcepten

### Waar de keten zit

In het servicewaardesysteem is de keten het operationele model in het midden (zie Onderwerp 2.3 — Het ITIL-servicewaardesysteem). Een pagina van een leverancier beschrijft haar als het deel van het systeem dat gaat over de leveringspipeline of levenscyclus van een product of service, dat vraag als invoer neemt en waarde als uitvoer levert. Ze noteert ook dat de levenscyclus in de praktijk zelden lineair is.

### De zes activiteiten

De tabel geeft elke activiteit, het doel dat een opleidingsaanbieder erbij noemt en hoe de activiteit eruitziet in een agile team. De rechterkolom is de lezing van deze gids.

| Activiteit | Doel, zoals een opleidingsaanbieder het samenvat | Hoe het eruit kan zien in een agile team |
|---|---|---|
| **Plan** | Definieert beleid, doelstellingen en richtlijnen voor de richting van de organisatie, zodat iedereen een gedeeld begrip heeft van visie, huidige stand en verbeterrichting | Productdoelen, roadmaps, kwartaalplanning en portfoliokeuzes |
| **Verbeter** | Verbetert voortdurend services, praktijken en processen in alle activiteiten | Retrospectives, post-incidentreviews en verbeteritems in de backlog |
| **Betrek** | Heeft interactie met belanghebbenden om behoeften te begrijpen, informatie te geven, feedback en eisen vast te leggen en relaties te beheren | Gebruikersonderzoek, sprintreviews, de servicedesk en klantgesprekken |
| **Ontwerp en transitie** | Zorgt dat nieuwe of gewijzigde services aan de verwachtingen van belanghebbenden voldoen, van ontwerp tot de live-omgeving | Een wijziging ontwerpen, testen en klaarmaken voor release en ondersteuning |
| **Verkrijg/bouw** | Verwerft of creëert de componenten die nodig zijn voor services, zoals fysieke middelen, infrastructuur, kennis of software | Software ontwikkelen, een tool kopen, infrastructuur voorbereiden, personeel trainen |
| **Lever en ondersteun** | Levert services zoals afgesproken en biedt doorlopende ondersteuning om problemen op te lossen en verzoeken te vervullen | De service beheren, incidenten en verzoeken afhandelen, releases uitrollen |

### Activiteiten zijn geen fasen

De pagina van de opleidingsaanbieder zegt dat de activiteiten "niet lineair zijn maar met elkaar verbonden en op verschillende manieren kunnen worden gecombineerd tot meerdere waardestromen". Een **waardestroom** is in zijn woorden een specifieke set activiteiten die een bepaalde service of product creëert en aan klanten levert. Dit is het centrale idee. De keten is een menu van activiteiten en een waardestroom is een pad erdoorheen, gekozen voor een bepaald doel.

### Illustratieve waardestromen

De voor deze gids gelezen pagina's geven geen voorbeeldwaardestromen, dus de volgende zijn illustraties van deze gids van hoe de activiteiten kunnen combineren. Ze komen niet uit ITIL-publicaties en een echte stroom zal verschillen.

| Waardestroom | Een mogelijk pad door de activiteiten |
|---|---|
| **Een incident afhandelen** | Betrek (een gebruiker meldt het) → lever en ondersteun (herstel de service) → verbeter (review en repareer de oorzaak) |
| **Een functie releasen** | Plan (bepaal het doel) → ontwerp en transitie (ontwerp, test, bereid ondersteuning voor) → verkrijg/bouw (ontwikkel) → lever en ondersteun (release) → betrek (krijg feedback) → verbeter |
| **Een toegangsverzoek vervullen** | Betrek (verzoek ontvangen) → lever en ondersteun (controleer en verleen toegang) → betrek (bevestig bij de gebruiker) |
| **Een nieuwe leverancier introduceren** | Plan (bepaal de behoefte) → betrek (selecteer en spreek voorwaarden af) → verkrijg/bouw (integreer) → lever en ondersteun (beheer) → verbeter (review de prestaties) |

### Praktijken en de keten

Praktijken zijn de capaciteiten waaruit de activiteiten putten. Incidentmanagement is bijvoorbeeld een praktijk die in meerdere waardestromen wordt gebruikt. Bronnen zijn het niet over elk detail van de koppeling tussen praktijken en activiteiten eens, dus vermijd een rigide tabel. Een betere toets is of een praktijk bijdraagt aan de waardestroom die je onderzoekt (zie Deel 3).

### Waardestromen en agile flow

Agile en lean denken gebruikt al waardestromen (zie Onderwerp 1.7 — Lean softwareontwikkeling). Een waardestroomkaart toont de stappen, tijden en wachttijden in een pad. Het ITIL-idee voegt een vocabulaire toe om de stappen te classificeren en een herinnering dat het pad naast bouwen ook ondersteuning en verbetering omvat. Voor digitaal werk sluit dit aan op waardestroommanagement (zie Onderwerp 5.4 — Waardestroommanagement).

### Grenzen

De voor deze gids gelezen pagina's geven geen methode om waardestromen te ontwerpen of te kiezen, en de pagina van de leverancier legt niet uit hoe de keten zich verhoudt tot continue verbetering behalve door verbetering cruciaal te noemen. De keten is een manier om werk te beschrijven, geen manier om te beslissen hoe het te doen. Haar waarde hangt af van of je haar gebruikt om naar echte flows te kijken.

## Goede praktijken

1. **Kies één waardestroom en teken haar.** Kies een flow die voor klanten telt, zoals het uitbrengen van een wijziging of het afhandelen van een verzoek. Maak een lijst van de stappen in volgorde en label elke met de dichtstbijzijnde van de zes activiteiten.
2. **Neem ondersteuning en verbetering op in het beeld.** Laat de stroom niet bij release stoppen. Toon wat er daarna gebeurt: incidenten afhandelen en ervan leren.
3. **Zoek ontbrekende activiteiten.** Als een stroom geen betrek-stap heeft, praat niemand met gebruikers. Als ze geen verbeter-stap heeft, wordt er niets geleerd. Voeg ze toe waar het ertoe doet.
4. **Meet de wachttijden.** Leg voor één stroom vast hoe lang werk tussen activiteiten wacht en waar het een teamgrens oversteekt. De langste wachttijd is het eerste om te onderzoeken (zie Onderwerp 5.4 — Waardestroommanagement).
5. **Combineer activiteiten vrij.** Laat verschillende stromen verschillende paden gebruiken. Een oplossing voor een kleine bug kan rechtstreeks van lever en ondersteun naar verkrijg/bouw en terug gaan, zonder planningsstap.
6. **Neem ontwerp en transitie op in het werk van het team.** Neem supportnotities, monitoring en training op als onderdeel van het bouwen, niet als overdracht aan het eind (zie Onderwerp 3.5 — Release- en deploymentmanagement).
7. **Maak "betrek" een continue activiteit.** Beperk contact met gebruikers niet tot het begin en einde van een project. Neem de servicedesk en klantfeedback op in de planning.
8. **Koppel planning aan bewijs uit beheer.** Gebruik incident- en verzoekgegevens in planningsgesprekken zodat doelen weerspiegelen wat gebruikers werkelijk ervaren (zie Onderwerp 5.1 — Agile servicemanagement).
9. **Benoem een eigenaar voor elke stroom.** Eén persoon moet kunnen zeggen hoe de stroom presteert en teams kunnen samenbrengen om haar te verbeteren.
10. **Gebruik de keten als checklist voor gaten.** Wanneer iets faalt, vraag dan welke activiteit zwak was: onduidelijk plan, slecht betrekken, gehaaste transitie, zwakke bouw, wankele ondersteuning of geen verbetering.
11. **Houd het diagram eenvoudig.** Een ruwe schets met zes labels volstaat. Als de tekening een legenda nodig heeft, vereenvoudig haar dan.
12. **Review stromen na wijzigingen.** Controleer wanneer teamstructuren, leveranciers of tools veranderen of de stromen nog werken zoals getekend.

## Vragen om met je team te bespreken

**Wat zijn de drie belangrijkste waardestromen voor onze gebruikers, en wie bezit elke?**

Vraag mensen de flows te noemen die het meest tellen, zoals een gebruiker die een nieuw account krijgt of een fix die productie bereikt. Vergelijk de lijsten. Verschillen tonen dat het team verschillende beelden heeft van wat telt. De facilitator kan vragen wie voor elke stroom van begin tot eind kan antwoorden. Vaak kan niemand dat, wat een bevinding is.

**Welke van de zes activiteiten doen we voor één stroom goed, en welke slaan we over?**

Teken de stroom en label de stappen. Zoek dan naar ontbrekende activiteiten. Teams vinden vaak dat ze goed plannen en bouwen en slecht betrekken en verbeteren. Vraag wat de ontbrekende activiteit zou toevoegen en wat ze zou kosten. Kies er een om op kleine schaal toe te voegen.

**Waar wacht werk tussen activiteiten, en wie bezit de wachttijd?**

Markeer de overdrachten en noteer typische wachttijden. Veel wachttijden zitten aan de grens tussen teams. Vraag of de wachttijd nodig is, bijvoorbeeld voor een risicocontrole, of een toevalligheid van hoe teams zijn georganiseerd. Kies er een om te verkorten.

**Hoe komen we erachter wat gebruikers vinden van wat we leveren, en hoe snel verandert het onze plannen?**

Volg één recent stuk feedback van de gebruiker naar de backlog. Tel de stappen. Als het weken duurde of nooit aankwam, is de betrek-activiteit zwak. Vraag wat het pad zou verkorten, zoals een gedeeld kanaal met de servicedesk. Spreek één verandering af.

**Wat doen we na een incident of een release om de volgende te verbeteren?**

Kijk naar de laatste paar incidenten en releases op een vastgelegde verbetering. Als die er niet is, is de verbeter-activiteit informeel. Vraag wie verbeteracties bezit en hoe ze worden gevolgd. Spreek een eenvoudige plek af om ze vast te leggen.

**Welke stromen doorkruisen organisatiegrenzen, en wie spreekt voor het geheel?**

Maak een lijst van stromen waarbij leveranciers, andere afdelingen of klanten betrokken zijn. Vraag wie verantwoordelijk is voor de flow van begin tot eind en wat er aan de grenzen gebeurt. Een goed resultaat is een coördinator te benoemen en een regelmatig gesprek over de grens heen.

## In de praktijk: een agile ITIL-voorbeeld

Een regionale ziekenhuisgroep draait een patiëntenportaal dat wordt gebruikt voor het boeken van afspraken en het bekijken van testresultaten. Een team van tien bouwt en beheert het. Het team levert om de twee weken nieuwe functies op, maar patiënten klagen dat oplossingen voor gemelde fouten maanden duren en dat ze geen antwoord krijgen op hun feedbackberichten.

Het hoofd digitale diensten vraagt het team de waardestroom te tekenen voor een gemelde fout, van het bericht van de patiënt tot een oplossing in productie. Ze labelen de stappen met de zes activiteiten. Het bericht komt binnen via een contactformulier (betrek) en ligt dagenlang in een gedeelde inbox voordat iemand het triageert. Een gecategoriseerde fout gaat in dezelfde backlog als nieuwe functies (plan), waar ze slecht concurreert. Een oplossing wordt gebouwd (verkrijg/bouw), getest en vrijgegeven met de volgende batch functies (ontwerp en transitie, lever en ondersteun). Niemand vertelt het de patiënt (betrek) en niemand legt vast wat de fout het team leerde (verbeter).

Het team verandert de stroom. De gedeelde inbox wordt dagelijks door een rooster gecontroleerd, fouten worden getagd en krijgen een aparte baan in de backlog met als doel de eerstvolgende release, de patiënt krijgt een antwoord bij ontvangst en nog een wanneer de oplossing live is, en elke fout ouder dan een maand wordt besproken in de tweewekelijkse review. Na twee maanden daalt de mediane tijd tot oplossing en nemen patiëntenklachten over stilte af. Er blijven problemen: fouten die het afsprakensysteem van het ziekenhuis betreffen, dat door een leverancier wordt beheerd, wachten nog op de wachtrij van de leverancier, en de antwoordberichten worden door ontwikkelaars geschreven in taal die sommige patiënten moeilijk te volgen vinden. Het team nodigt de leverancier uit voor de review en vraagt het communicatieteam sjablonen in gewone taal op te stellen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams besteden meestal de meeste tijd aan plan, ontwerp en transitie en verkrijg/bouw. Kijk naar de andere drie: hoe je gebruikers betrekt, hoe je ondersteunt wat je oplevert en hoe je verbetert. Behandel supportverzoeken en leren van incidenten als input voor de planning.

### Service- en beheerteams

Beheerteams besteden de meeste tijd aan lever en ondersteun en delen van betrek. Gebruik de keten om te tonen hoe je werk afhangt van eerdere activiteiten, zoals ontwerp en transitie, en om te vragen wat je daarvan nodig hebt. Neem deel aan planning zodat operationele kennis het begin van de stroom bereikt.

### Leiderschap en governance

Leiders kunnen de keten gebruiken om te vragen waar de flow bij belangrijke services breekt. Steun het benoemen van stroomeigenaren en geef hen de bevoegdheid teams samen te brengen. Vermijd de zes activiteiten tot zes afdelingen te maken; het punt is ze te verbinden.

### Klanten en gebruikers

Klanten en gebruikers nemen vooral deel aan betrek en profiteren wanneer feedback helemaal tot plannen en oplossingen doordringt. Verwacht antwoorden en zichtbare resultaten. Vertel de verlener welke stroom voor jou het belangrijkst is en welke vertragingen je schaden.

## Veelvoorkomende faalpatronen

- **De keten lezen als een volgorde.** Teams dwingen elk stuk werk in volgorde door alle zes. Kies in plaats daarvan paden die bij het werk passen.
- **Afdelingen in kaart brengen, geen stromen.** Elke activiteit wordt aan een afdeling toegewezen en de flow gaat verloren. Volg in plaats daarvan één stuk werk door ze heen.
- **Betrek en verbeter vergeten.** De stroom eindigt bij release. Neem in plaats daarvan gebruikerscontact en leren in elke stroom op.
- **Overdracht in plaats van ontwerp en transitie.** Supportnotities, monitoring en training worden tot het eind bewaard. Bouw ze in plaats daarvan vanaf het begin in het werk in.
- **Geen stroomeigenaar.** Niemand kan zeggen hoe een stroom presteert. Benoem in plaats daarvan een eigenaar met de bevoegdheid teams bijeen te roepen.
- **Overdetailleerde diagrammen.** De kaart wordt een poster die niemand leest. Houd haar in plaats daarvan bij een pagina en werk haar bij wanneer er iets verandert.
- **Het vocabulaire als doel behandelen.** Teams besteden tijd aan labelen en niet aan verbeteren. Label in plaats daarvan alleen wat helpt een gat te vinden.
- **Op secundaire samenvattingen vertrouwen.** Beschrijvingen van de activiteiten verschillen tussen bronnen. Controleer in plaats daarvan de publicaties van de eigenaar wanneer precisie ertoe doet.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Zichtbaarheid van waardestromen | Flows zijn alleen informeel bekend | Sommige stromen worden door hun teams getekend | Belangrijke stromen zijn met eigenaren in kaart gebracht | Stromen worden gemeten op wachttijden en uitkomsten | Stromen doorkruisen organisatiegrenzen en worden samen verbeterd |
| Dekking van activiteiten | Planning en bouw domineren | Sommige teams voegen betrek- en verbeteractiviteiten toe | Alle zes activiteiten komen in belangrijke stromen voor | Gaten in de dekking worden gevolgd en gedicht | Dekking wordt op basis van bewijs over teams en leveranciers in balans gebracht |
| Overdrachten en transitie | Overdrachten zijn laat en onbeheerd | Sommige teams nemen ondersteuning op in de bouw | Ondersteuning, monitoring en training zijn onderdeel van elke release | Transitieproblemen worden gemeten en verminderd | Transitie wordt gedeeld over levering, beheer en leveranciers |
| Feedback en verbetering | Feedback komt via klachten | Sommige feedback bereikt de backlog | Feedback en verbeteritems worden met eigenaren gevolgd | Effecten van verbeteringen worden gecontroleerd | Feedback en leren stromen voortdurend over teams en klanten |

## Checklist

- [ ] We hebben minstens één waardestroom getekend die voor gebruikers telt.
- [ ] Elke stap in de tekening is gelabeld met de dichtstbijzijnde activiteit van de waardeketen.
- [ ] De stroom omvat betrokkenheid van gebruikers en een stap die verbeteringen vastlegt.
- [ ] We weten, minstens ruwweg, waar werk wacht en hoe lang.
- [ ] Werk voor ontwerp en transitie, zoals monitoring en supportnotities, is onderdeel van het bouwen.
- [ ] Een benoemde persoon bezit de flow van begin tot eind van de stroom.
- [ ] Feedback van gebruikers bereikt de backlog en krijgt een antwoord.
- [ ] Incident- en verzoekgegevens worden in de planning gebruikt.
- [ ] De stroom wordt na belangrijke wijzigingen gereviewd.
- [ ] We hebben de publicatie van de eigenaar gecontroleerd op de exacte definitie van elke activiteit.

## AI-prompts

**Doel: de stappen van een echte stroom labelen met de zes activiteiten.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: vinden waar feedback onderweg naar de backlog verloren gaat.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Doel: een waardestroomworkshop met leverings- en beheermedewerkers plannen.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een korte gids over de waardeketen voor nieuwe teamleden schrijven.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gebruik dit om een stroom te tekenen, haar wachttijden te meten en haar stappen te labelen.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gebruik dit om te analyseren hoe werk tussen rollen beweegt en overdrachtsproblemen te vinden.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gebruik dit om te plannen hoe een team in kleine stappen levert via de bouw- en releaseactiviteiten.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): gebruik dit om manieren te ontwerpen om feedback van gebruikers te verzamelen voor de betrek-activiteit.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om de reviews te houden die de verbeter-activiteit echt maken.

## Belangrijkste bronnen

- **ITIL 4 Foundation** (PeopleCert): de pagina van de eigenaar die de servicewaardeketen onder de bestudeerde onderwerpen noemt.
- **ITIL service value system** (Purple Griffon): de samenvatting van een opleidingsaanbieder van de zes activiteiten en waardestromen; secundair.
- **The ITIL 4 Service Value System** (ManageEngine): de samenvatting van een leverancier die de activiteiten noemt; secundair.
- **Value-stream mapping** (Wikipedia): achtergrond over de karteringstechniek die lean praktijk gebruikt om verspilling te vinden.

## Referenties

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
