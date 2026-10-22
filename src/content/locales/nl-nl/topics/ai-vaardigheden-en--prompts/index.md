# AI-vaardigheden en -prompts

**Een goede prompt geeft een AI-assistent het materiaal, de taak en de controles die ze nodig heeft, en een goede vaardigheid (skill) verpakt die kennis zodat een team haar kan hergebruiken, waardoor de AI-prompts en -vaardigheden in deze gids beginpunten zijn die je aanpast en verifieert.**

## Waarom dit ertoe doet

Elk onderwerp in deze gids eindigt met prompts en vaardigheden. Ze bestaan omdat veel taken in servicemanagement goed passen bij een assistent die een stapel tickets kan lezen, een runbook kan opstellen of notities in een plan kan omzetten. Ze bestaan ook omdat een vaag verzoek aan een AI vage, soms foute, resultaten oplevert. Het verschil tussen een bruikbaar antwoord en een aannemelijk maar leeg antwoord ligt vaak in hoe het verzoek was geschreven en welk materiaal erbij hoorde.

Dit onderwerp legt uit hoe je de prompts en vaardigheden van de gids gebruikt, waarom ze zo zijn geschreven en hoe je er zelf voor je team schrijft. Het gaat meer over gewoonten dan over trucs: echt materiaal aanleveren, zeggen wat je wilt, de assistent vragen te markeren wat ze niet weet en controleren wat terugkomt. Het bouwt voort op de waarschuwingen in het vorige onderwerp, dat beschrijft waar AI helpt en waar ze kan schaden (zie Onderwerp 6.2 — AI in IT-servicemanagement).

De bronnen zijn praktisch. De eigen vaardigheid `skills/prompt-engineering` van de gids beschrijft het schrijven van prompts als de bewuste praktijk van het ontwerpen en itereren van de instructies aan een taalmodel, waarbij een prompt wordt behandeld als een klein stuk software dat wordt geschreven, aan echte gevallen getest en herzien. De documentatie van Claude Code beschrijft hoe vaardigheden zijn gestructureerd als mappen met een `SKILL.md`-bestand. Het [Wikipedia-artikel over grote taalmodellen](https://en.wikipedia.org/wiki/Large_language_model) geeft achtergrond. Geen voor deze gids gelezen bron biedt bewijs over welke promptingtechnieken het best werken; behandel de technieken hier als gewoonten om te toetsen.

## Kernconcepten

### Prompts, vaardigheden en waarvoor ze dienen

Een **prompt** is de instructie en het materiaal dat je een AI-assistent voor één taak geeft. Een **vaardigheid (skill)**, in het formaat dat in de map `skills/` van deze gids wordt gebruikt, is een herbruikbaar pakket kennis voor een soort taak: een map met een `SKILL.md`-bestand dat zegt wanneer het te gebruiken en hoe het werk te doen. In de documentatie van Claude Code is een skill een map met een verplicht `SKILL.md`-bestand waarvan de frontmatter een naam en een beschrijving heeft en waarvan de body de instructies geeft; de assistent gebruikt de beschrijving om te beslissen wanneer de skill wordt toegepast en laadt de volledige body alleen wanneer ze wordt gebruikt.

| | Prompt | Vaardigheid |
|---|---|---|
| **Reikwijdte** | Eén taak, nu | Een soort taak, hergebruikt |
| **Leeft** | In een chat of een document | In een map, zoals `skills/` of de skillsmap van een project |
| **Gewijzigd door** | Jou, elke keer | Het team, met review |
| **Het best voor** | Specifieke analyse van je eigen materiaal | Herhaalbare methoden zoals een retrospective houden |

### Hoe de prompts van de gids zijn opgebouwd

De prompts in deze gids volgen een eenvoudig patroon, uiteengezet in de stijlgids:

1. **Een vetgedrukt doel van één regel** zegt waarvoor de prompt dient.
2. **Een omheind blok** bevat tekst die je kunt kopiëren en plakken.
3. **Plaatshouders tussen vierkante haken** markeren wat je moet aanleveren, met een hint over wat daar te zetten.
4. **Een taak** die de gewenste uitvoer noemt.
5. **Grenzen**: verzin geen getallen, bronnen, citaten of compliancebeweringen; gebruik alleen het geplakte materiaal.
6. **Een verzoek om eerst te vragen** wanneer informatie ontbreekt en om aannames te markeren.
7. **Een eindcontrole**: "List what you are unsure of."

Deze onderdelen bestaan met een reden. Plaatshouders dwingen je echt materiaal mee te brengen. De grens voorkomt dat de assistent gaten met verzinsel vult. Het verzoek om verduidelijkende vragen maakt van een gok in één keer een kort gesprek. De laatste regel laat de assistent haar eigen zwakke plekken markeren, wat je helpt beslissen wat te controleren.

### Patronen die helpen

De vaardigheid `prompt-engineering` van de gids somt technieken op, die deze gids in eigen woorden samenvat:

- **Wees specifiek over de uitvoer die je wilt,** zoals een tabel met benoemde kolommen, of een genummerde lijst van hooguit vijf items, zodat de assistent de vorm niet hoeft te raden.
- **Geef voorbeelden wanneer instructies dubbelzinnig zijn,** en toon het gewenste patroon in een kort voorbeeld.
- **Lever de context die de assistent niet kan kennen,** zoals je terminologie, beperkingen en het document in kwestie, en zeg wat ze niet mag aannemen.
- **Itereer aan echte testgevallen,** door de prompt op een reeks echte invoer te draaien en te herzien waar ze faalt, in plaats van haar op één goed voorbeeld te beoordelen.

Een prompt die op één invoer is afgestemd, kan op andere falen. De vaardigheid maakt het punt dat een korte, vreemd geformuleerde invoer, of een die een veld mist, een prompt kan breken die het oorspronkelijke voorbeeld aankon.

### Verificatiegewoonten

Elke uitvoer moet worden gecontroleerd naar verhouding van de kosten van een fout. Gewoonten die helpen:

- **Controleer feiten aan de bron die je plakte.** Vraag de assistent het deel van je materiaal te citeren dat elke uitspraak ondersteunt.
- **Accepteer nooit referenties die je niet hebt gezien.** De gevallen die in het vorige onderwerp worden beschreven omvatten verzonnen rechtbankcitaten; herhaal ze niet.
- **Scheid wat de assistent zag van wat ze aannam.** De prompts van de gids vragen hierom.
- **Test berekeningen zelf,** of vraag om de uitwerking en controleer die.
- **Gebruik een tweede blik voor alles wat het team verlaat,** zoals een antwoord aan een klant of een beleid.
- **Houd vastleggingen bij van belangrijk gebruik,** zoals beschreven in Onderwerp 6.2 — AI in IT-servicemanagement.

### Gegevens beschermen

Vraag voordat je iets in een prompt plakt wat het bevat en waar het heen gaat. Verwijder persoonsgegevens, inloggegevens en vertrouwelijke commerciële details tenzij de tool en haar voorwaarden daarvoor zijn goedgekeurd (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement). De prompts van de gids vragen je te anonimiseren, maar de verantwoordelijkheid is de jouwe. Beschrijf de situatie in algemene termen als je twijfelt.

### Hoe een vaardigheid eruitziet

Volgens de documentatie van Claude Code en de vaardigheden in deze gids is een skill een map zoals `skills/runbook/` met `SKILL.md`. Het bestand begint met YAML-frontmatter tussen `---`-markeringen, met minstens een `name` en een `description`. De documentatie zegt dat de beschrijving de assistent vertelt wat de skill doet en wanneer ze te gebruiken, en raadt aan het belangrijkste gebruiksgeval eerst te zetten. De body geeft de methode in markdown. Andere bestanden, zoals referentiedocumenten of scripts, kunnen ernaast staan en worden geladen wanneer nodig; de documentatie raadt aan `SKILL.md` zelf kort te houden, onder 500 regels.

De gekopieerde vaardigheden in deze gids volgen dezelfde vorm. Hun beschrijvingen beginnen met "Use when asked to…", wat duidelijk maakt wanneer elk geldt.

### Waar vaardigheden leven

De documentatie beschrijft persoonlijke skills in de skillsmap in de thuismap van een gebruiker, projectskills in de skillsmap van een repository die kan worden gecommit en met een team gedeeld, en andere locaties zoals plugins. Voor een team is een projectmap onder versiebeheer de natuurlijke plek: skills worden gereviewd, via hetzelfde proces als ander werk gewijzigd en zijn voor iedereen beschikbaar.

### Je eigen teamvaardigheden schrijven

Een teamvaardigheid legt een praktijk vast die het team herhaalt en consistent gedaan wil hebben. Voorbeelden voor servicemanagement: hoe je een postmortem in je huisstijl schrijft, hoe je een bepaald soort ticket triageert, hoe je een wijzigingsverzoek voorbereidt, hoe je je vrijdagreview houdt. Om er een te schrijven:

1. **Kies een taak die je herhaalt** en waarvoor een bekende goede manier bestaat.
2. **Schrijf eerst de beschrijving,** beginnend met "Use when…" en het belangrijkste gebruiksgeval, zodat de assistent en je collega's weten wanneer ze geldt.
3. **Schrijf de methode** als korte stappen, met het uitvoerformaat, controles en wat te vermijden.
4. **Voeg voorbeelden toe** van een goed resultaat, met gevoelige details verwijderd.
5. **Zeg wat ze niet mag doen,** zoals cijfers verzinnen of iets zonder review verzenden.
6. **Test haar op echte gevallen** en herzie.
7. **Geef haar een eigenaar en een reviewdatum,** zoals elk ander gedeeld document.

### Vaardigheden in deze gids

De map `skills/` in deze repository bevat kopieën van skills uit de verzameling skills-on-ai, vermeld in `skills/README.md`, en twee skills die voor deze gids zijn geschreven: een voor lezers en een voor beheerders. Elk onderwerp linkt naar de skills die het nuttigst zijn voor het onderwerp, met een zin over wanneer elk te gebruiken. De gekopieerde skills zijn generiek, niet specifiek voor de inhoud van deze gids, dus gebruik ze als beginpunten en pas hun uitvoer aan je context aan.

### Grenzen

Geen voor deze gids gelezen bron meet hoe goed enige promptingtechniek werkt en AI-tools veranderen snel. De gelezen documentatie van Claude Code was lang en werd maar gedeeltelijk gelezen. Wat volgt is praktisch advies dat in algemeen gebruik standhield, aangeboden als gewoonten om te toetsen en niet als garanties.

## Goede praktijken

1. **Begin bij een echte taak en echt materiaal.** Kies iets wat je gedaan moet krijgen en plak de werkelijke feiten, niet een beschrijving ervan. Vul elke plaatshouder met specifieke gegevens.
2. **Vermeld het doel in één regel.** Zeg waarvoor de uitvoer dient en wie haar zal gebruiken. Het helpt de assistent het juiste detailniveau te kiezen.
3. **Specificeer de uitvoer.** Noem het formaat, de lengte en de structuur die je wilt. Vraag om een tabel wanneer je wilt vergelijken, een lijst wanneer je stappen wilt.
4. **Stel grenzen.** Zeg wat de assistent niet mag doen: getallen, bronnen of citaten verzinnen; feiten aannemen die niet zijn gegeven; beweren dat een regel geldt zonder de tekst.
5. **Vraag eerst om verduidelijkende vragen.** Zeg de assistent te vragen wat ze nodig heeft voordat ze antwoordt. Antwoord kort en vraag haar dan door te gaan.
6. **Vraag haar feiten van aannames te scheiden.** Laat haar markeren wat ze uit je materiaal nam en wat ze veronderstelde. De prompts van deze gids eindigen met "List what you are unsure of."
7. **Vraag om bewijs.** Vraag om citaten uit je materiaal die elke bewering ondersteunen, zodat je snel kunt controleren.
8. **Itereer.** Behandel het eerste antwoord als concept. Zeg wat er mis is en vraag om een herziening, of wijzig de prompt en probeer opnieuw.
9. **Test prompts op meerdere gevallen.** Draai een prompt, voordat je erop vertrouwt, op drie of vier echte invoeren, waaronder een ongewone. Noteer waar ze faalt.
10. **Bescherm gegevens.** Verwijder persoonlijke en vertrouwelijke details voordat je plakt. Gebruik goedgekeurde tools. Volg het beleid van je organisatie.
11. **Controleer vóór gebruik.** Verifieer feiten, getallen en referenties. Laat een persoon alles reviewen wat naar klanten gaat of een systeem wijzigt.
12. **Deel wat werkt.** Zet prompts die nuttig blijken, met hun notities, in een teamskill of -document onder versiebeheer, met een eigenaar.

## Vragen om met je team te bespreken

**Welke taken herhalen we waarbij een assistent kan helpen en wat zouden we moeten controleren?**

Vraag iedereen taken op te sommen en het risico te markeren als de uitvoer fout was. Groepeer ze in laag, midden en hoog risico. Begin met een laagrisicotaak. De facilitator kan vragen wat de controlestap zou zijn. Kies één taak voor een proef.

**Wat plakken we vandaag in AI-tools en zouden we dat moeten?**

Wees eerlijk en niet veroordelend. Maak een lijst van voorbeelden. Vergelijk met het gegevensbeleid en de goedgekeurde tools. Spreek een snelle controle af die mensen vóór het plakken kunnen toepassen: "bevat dit persoonsgegevens, geheimen of vertrouwelijke details?"

**Welke van de prompts van deze gids zouden we het eerst proberen en met welk echt materiaal?**

Blader samen door de prompts en kies er een. Identificeer het echte materiaal om te plakken, verwijder gevoelige details en draai haar. Vergelijk resultaten en bespreek wat in de prompt te veranderen. Dit is een snelle manier om het patroon te leren.

**Hoe zouden we weten dat een prompt werkt?**

Vraag om een testset: een paar echte invoeren met bekende goede uitvoer. Bespreek hoe antwoorden te scoren en wie beslist. Een prompt zonder testset is een hoop. Spreek een kleine set voor één prompt af.

**Welke praktijk herhalen we die een teamvaardigheid verdient te zijn?**

Maak een lijst van kandidaten: een reviewformat, een triageroutine, een sjabloon voor rapporten. Kies er een en schrijf samen de beschrijving en stappen. Beslis wie haar bezit en wanneer ze wordt gereviewd.

**Wat zouden we een AI nooit zelf willen laten doen?**

Maak een lijst van acties: naar klanten verzenden, productie wijzigen, toegang goedkeuren, over een prioriteit beslissen. Bespreek waarom. De antwoorden zijn de grenzen om in je prompts en vaardigheden te schrijven. Spreek een korte lijst af.

## In de praktijk: een agile ITIL-voorbeeld

De IT-servicedesk van een regionaal ziekenhuis heeft veertien analisten. Het hoofd van de desk heeft gemerkt dat collega's een AI-assistent op verschillende manieren gebruiken: een plakt hele tickets, inclusief patiëntnamen, in een openbare chatbot; een ander schrijft uitgebreide prompts en krijgt nuttige samenvattingen; de meesten gebruiken haar helemaal niet. Een recent kennisartikel, door een assistent opgesteld, bevatte een procedurestap die niet bestond.

Het hoofd van de desk houdt een sessie van een uur volgens de aanpak van deze gids. Ze begint met gegevens: de groep spreekt een regel af dat geen patiëntgegevens of inloggegevens in enige tool gaan en dat de goedgekeurde assistent, die het ziekenhuis met geschikte voorwaarden heeft gelicentieerd, de enige is die met tickettekst wordt gebruikt. Ze kiest één taak, een kennisartikel opstellen uit een opgelost ticket, en gebruikt het patroon uit de prompts van deze gids: een doel van één regel, een plaatshouder voor het geanonimiseerde ticket, instructies alleen de inhoud van het ticket te gebruiken, elke afgeleide stap met een tag te markeren en op te sommen waarover ze onzeker is. Twee analisten laten de prompt op vijf eerdere tickets draaien en de groep leest de resultaten samen. De prompt verzint in één geval een stap; ze voegen een regel toe die om een citaat uit het ticket voor elke stap vraagt.

Het hoofd van de desk schrijft de verbeterde prompt als teamskill in de gedeelde map van de desk, met een beschrijving die begint met "Use when…", een eigenaar en een reviewdatum, en voegt een regel toe dat elk opgesteld artikel vóór publicatie door een tweede analist wordt gecontroleerd. Na twee maanden is het aantal per week opgestelde artikelen verdubbeld en vinden reviewers minder fouten dan voorheen. Er blijven kwesties. Twee analisten plakken onder druk nog details in een openbare tool, de skill produceert te formele bewoordingen die analisten herschrijven en één reviewer geeft toe te scannen. Het hoofd van de desk herhaalt de gegevensregel bij elke teamvergadering, voegt een stijlvoorbeeld aan de skill toe en vraagt reviewers een korte checklist af te vinken.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams gebruiken assistenten voor code, tests en documentatie. Pas dezelfde gewoonten toe: echt materiaal, duidelijke grenzen, verificatie en review. Houd geheimen uit prompts en bewaar de nuttige prompts en vaardigheden bij de code.

### Service- en beheerteams

Beheerteams kunnen prompts gebruiken om tickets te analyseren, runbooks op te stellen en reviews voor te bereiden. Houd persoonsgegevens eruit, controleer uitvoer aan logs en vastleggingen en schrijf skills voor routines die het team herhaalt, zoals postmortems en dienstoverdrachten.

### Leiderschap en governance

Leiders stellen de regels vast voor wat mag worden gebruikt, met welke gegevens en wie verantwoordelijk is. Vraag om een inventaris, een gegevensbeleid en bewijs uit pilots. Steun tijd voor teams om prompts en vaardigheden te schrijven en te testen en zorg dat gedeelde skills eigenaren hebben.

### Klanten en gebruikers

Klanten en gebruikers kunnen de resultaten van prompts en vaardigheden zien in antwoorden, artikelen en samenvattingen. Verwacht dat verleners ze controleren en je vertellen wanneer ze geautomatiseerde tools gebruiken waar het ertoe doet. Meld fouten, want die helpen het onderliggende materiaal te verbeteren.

## Veelvoorkomende faalpatronen

- **Vage verzoeken.** De assistent gokt. Lever in plaats daarvan het materiaal, het doel en de gewenste uitvoer.
- **Gevoelige gegevens plakken.** Persoonlijke of vertrouwelijke details verlaten de organisatie. Verwijder ze in plaats daarvan en gebruik goedgekeurde tools.
- **Verzonnen inhoud accepteren.** Verzonnen stappen, getallen of referenties worden gebruikt. Stel in plaats daarvan grenzen, vraag om citaten en verifieer.
- **Afstemmen op één voorbeeld.** Een prompt werkt eenmaal en faalt elders. Test in plaats daarvan op meerdere echte invoeren.
- **Skills zonder eigenaren.** Gedeelde prompts verouderen. Wijs in plaats daarvan een eigenaar en reviewdatum toe en houd ze in versiebeheer.
- **Overmatig vertrouwen in gekopieerde prompts.** Een prompt van internet of uit deze gids wordt ongewijzigd gebruikt. Pas in plaats daarvan aan op je context en controleer resultaten.
- **Geen tweede blik.** AI-uitvoer gaat rechtstreeks naar klanten. Laat in plaats daarvan een persoon alles reviewen wat het team verlaat.
- **De assistent als gezaghebbend behandelen.** Haar zekerheid wordt voor juistheid aangezien. Vraag in plaats daarvan waarover ze onzeker is en controleer.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Promptpraktijk | Mensen schrijven ad-hocprompts | Sommige mensen delen prompts | Teams gebruiken een gemeenschappelijk patroon met doel, materiaal, grenzen en controles | Promptkwaliteit wordt op sets echte gevallen getest | Prompts worden over teams uit gedeelde testresultaten verbeterd |
| Vaardigheden | Geen gedeelde skills | Enkele persoonlijke skills bestaan | Teamskills met eigenaren en reviewdata leven in versiebeheer | Gebruik en resultaten van skills worden gereviewd | Skills worden over teams en partners gedeeld en onderhouden |
| Verificatie en gegevens | Uitvoer wordt vertrouwd; gegevens worden vrij geplakt | Enige controles en gegevensregels | Verificatiegewoonten en een gegevensbeleid zijn routine | Fouten en gegevensincidenten worden gevolgd en erop wordt gehandeld | Verificatie en gegevenspraktijk worden over de organisatie gecoördineerd |
| Leren | Leren is individueel | Enkele tips worden gedeeld | Teams houden regelmatige sessies om prompts en vaardigheden te verbeteren | Verbeteringen worden gevolgd en gemeten | Leren verspreidt zich voortdurend over teams |

## Checklist

- [ ] Het team heeft een korte regel over welke gegevens in welke AI-tools mogen.
- [ ] Prompts waarop we vertrouwen hebben een vermeld doel, echt materiaal, grenzen en een verzoek om waarover de assistent onzeker is.
- [ ] Elke prompt waarop we vertrouwen is op minstens drie echte invoeren getest.
- [ ] Uitvoer die buiten het team gaat, wordt door een persoon gereviewd.
- [ ] Referenties en getallen uit AI-uitvoer worden aan bronnen gecontroleerd.
- [ ] Nuttige prompts worden met notities op een gedeelde plek onder versiebeheer bewaard.
- [ ] Teamskills hebben een duidelijke "Use when…"-beschrijving, een eigenaar en een reviewdatum.
- [ ] Het team heeft acties opgesomd die AI nooit zelf mag doen.
- [ ] Medewerkers weten welke tools zijn goedgekeurd.
- [ ] We reviewen onze prompts en vaardigheden minstens twee keer per jaar.

## AI-prompts

**Doel: een prompt verbeteren die je al gebruikt.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Doel: een herhaalde taak omzetten in een concept voor een teamskill.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een kleine testset voor een prompt opbouwen.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een door AI geschreven concept aan zijn bron toetsen.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## AI-vaardigheden

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): gebruik dit om prompts te schrijven, te testen en te verbeteren zodat ze betrouwbare resultaten geven.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): gebruik dit om te documenteren waarvoor een model dient en wat zijn grenzen zijn wanneer je team op een model vertrouwt.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): gebruik dit wanneer je een team helpt in de loop van de tijd gewoonten rond prompts en vaardigheden op te bouwen.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): gebruik dit om onderwerpen in deze gids te vinden, een teamgesprek uit haar vragen te houden of een van haar prompts aan te passen.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): gebruik dit wanneer je een onderwerp, prompt of skill-link voor deze gids schrijft of controleert.

## Belangrijkste bronnen

- **Claude Code skills documentation** (code.claude.com): de beschrijving van hoe skills zijn gestructureerd als mappen met een `SKILL.md`-bestand.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` van deze gids): een korte weergave van technieken en het pleidooi om prompts op echte invoeren te testen.
- **Large language model** (Wikipedia): achtergrond over hoe deze systemen zijn gebouwd en waar ze kunnen falen.
- **AI Risk Management Framework** (NIST): het vrijwillige raamwerk voor het beheren van AI-risico's, nuttig voor teambeleid.

## Referenties

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
