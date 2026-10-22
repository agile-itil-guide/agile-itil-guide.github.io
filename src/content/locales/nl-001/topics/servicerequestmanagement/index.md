# Servicerequestmanagement

**Servicerequestmanagement handelt de routinezaken af waar gebruikers om vragen, zoals toegang, apparatuur en informatie, en het agile doel is elk veelvoorkomend verzoek snel, voorspelbaar en grotendeels automatisch te maken zodat vaardige mensen hun tijd aan problemen besteden.**

## Waarom dit ertoe doet

Veel van het werk dat een servicedesk bereikt is helemaal geen falen. Het is een gebruiker die vraagt om iets wat de service moet bieden: een nieuw account, toegang tot een map, een laptop, een licentie, een wachtwoordreset. Deze verzoeken zijn voorspelbaar en repetitief. Goed afgehandeld zijn ze snel en merkt niemand het. Slecht afgehandeld zijn ze de bron van lange wachttijden, herhaalde vragen en stille frustratie die de reputatie van een team meer schaadt dan elke afzonderlijke storing.

Verzoekafhandeling is ook waar automatisering en self-service het meest opleveren. Een verzoek dat elke keer dezelfde stappen volgt, kan eenmaal worden ontworpen, getest en grotendeels worden geautomatiseerd. Het [Wikipedia-artikel over IT-servicemanagement](https://en.wikipedia.org/wiki/IT_service_management) definieert een servicerequest als een routineverzoek om een service en noemt IT process automation, dat routinematige handmatige stappen door geautomatiseerde vervangt zodat medewerkers zich op werk met hogere prioriteit kunnen richten. Dat is het doel van deze praktijk in één zin.

Het artikel zegt weinig meer over verzoeken. Dit onderwerp combineert daarom die definitie met praktische richtlijnen uit veelgebruikte servicemanagementpraktijk, als zodanig aangeboden, en met de andere onderwerpen van de gids over de servicedesk, de servicecatalogus (ITIL spelt het "service catalogue") en kennis. Waar iets een gangbare praktijk is en geen bevinding uit een bron, zegt de tekst dat.

## Kernconcepten

### Wat een servicerequest is

Een **servicerequest** is een routineverzoek om iets wat een service normaal biedt. Het verschilt van een **incident**, een verstoring of mogelijke verstoring van een service, en van een **wijziging**, die een service aanpast (zie Onderwerp 3.2 — Incidentmanagement en Onderwerp 3.4 — Change enablement). De grens kan vervagen: "Ik heb toegang nodig tot het financiële systeem" is een verzoek; "Ik heb toegang maar het systeem toont een fout" is een incident; "voeg een nieuw veld toe aan het financiële systeem" is waarschijnlijk een wijziging.

Een praktische toets: als het werk een bekende procedure volgt, bekende kosten en risico heeft en het antwoord op "is dit toegestaan?" al van tevoren is beslist, is het een verzoek. Alles wat nieuw oordeel over risico vraagt, is waarschijnlijker een wijziging of een project.

### Waarom het onderscheid ertoe doet

Verzoeken met incidenten mengen vertekent beide. Aantallen "tickets" doen twee verschillende soorten vraag vervagen. Prioriteiten botsen, want een incident dat het werk stillegt moet vóór een verzoek dat kan wachten. Responsmaten misleiden: een lange gemiddelde tijd tot sluiting kan verbergen dat verzoeken op goedkeuringen wachten terwijl incidenten snel worden opgelost. Ze gescheiden houden laat je passende doelen stellen en zien waar de vertraging zit (zie Onderwerp 2.1 — IT-servicemanagement).

### Verzoekmodellen

Een **verzoekmodel** is een herhaalbaar patroon voor een soort verzoek: welke informatie nodig is, wie moet goedkeuren, welke stappen door wie of door automatisering worden gedaan en wat de verwachte tijd is. Verzoekmodellen zijn een veelgebruikt idee in servicemanagement. Ze geven een team een manier om de veelvoorkomende verzoeken eenmaal te ontwerpen en vele malen uit te voeren. Een catalogus van services somt de beschikbare verzoeken op (zie Onderwerp 3.8 — Servicecatalogusmanagement).

Een model voor "laptop voor nieuwe medewerker" kan specificeren: de informatie die nodig is van de manager, de goedkeuring (geen, als de rol op een standaardlijst staat), de stappen (bestellen, configureren, verzenden) en de verwachte tijd. Een model voor "toegang tot een beperkt systeem" bevat een goedkeuring door de eigenaar van het systeem en een vastlegging voor audit.

### Goedkeuring

Sommige verzoeken hebben goedkeuring nodig voordat ze doorgaan: uitgaven, toegang tot gevoelige gegevens of gebruik van schaarse middelen. De ontwerpvraag is of de goedkeuring echte beheersing toevoegt. Een goedkeuring die altijd ja zegt, is een vertraging. Maak waar goedkeuringen nodig zijn ze snel en zichtbaar, vertel de goedkeurder precies wat er wordt gevraagd en geef een terugvaloptie als die niet reageert. Overweeg, waar goedkeuring van een rol afhangt, zoals een manager die het verzoek van een teamlid goedkeurt, standaarditems voor de rol vooraf goed te keuren.

### Vervulling en automatisering

Vervulling is het werk van het leveren van het verzoek. Het ITSM-artikel beschrijft IT process automation als het automatiseren van routinetaken zodat medewerkers zich op werk met hogere prioriteit kunnen richten. Kandidaten voor automatisering zijn verzoeken die frequent zijn, een stabiele procedure volgen en weinig risico dragen: wachtwoordresets, groepslidmaatschappen, standaardinstallaties van software. Automatisering moet met dezelfde zorg worden gebouwd als elke wijziging, met tests en een manier om te zien wat ze deed.

### Self-service

Veel organisaties bieden een portaal waar gebruikers de service kunnen vinden die ze nodig hebben, kunnen zien welke informatie vereist is en een verzoek kunnen indienen zonder met iemand te spreken. Goede self-service hangt af van een duidelijke servicelijst in de woorden van gebruikers en van duidelijke formulieren. Een portaal dat het organigram spiegelt en vraagt om informatie die de gebruiker niet heeft, drijft mensen terug naar e-mail en telefoon.

### Enterprise service management

Het ITSM-artikel merkt op dat enterprise service management ITSM-tools en -ideeën toepast op andere bedrijfsgebieden zoals human resources of facilitair. Verzoekmanagement is de makkelijkste plek om te beginnen, omdat veel functies routineverzoeken ontvangen: onboarding, reizen, apparatuur, kantoorverhuizingen. Een gedeeld verzoekplatform kan meerdere functies bedienen, elk met eigen verzoekmodellen en eigenaren.

### Maatstaven

Gangbare maten zijn hoe lang verzoeken duren van indiening tot vervulling, hoe vaak de aanvrager met vragen moet terugkomen, hoeveel verzoeken zonder menselijke inspanning worden vervuld en tevredenheid van aanvragers. Vermijd, zoals bij elke maat, doelen die het vroeg sluiten van verzoeken belonen. Kijk naar wachttijd, want het grootste deel van de verstreken tijd van een verzoek is meestal wachten op goedkeuring of informatie, niet werken (zie Onderwerp 1.7 — Lean softwareontwikkeling en Onderwerp 5.6 — Maatstaven en meten).

### Beveiliging en compliance

Verzoeken sturen vaak toegang en uitgaven en hebben dus gevolgen voor beveiliging en audit. Vastleggingen moeten tonen wie vroeg, wie goedkeurde, wat er werd gedaan en wanneer. Verwijder toegang wanneer die niet meer nodig is, als onderdeel van een verzoekmodel voor vertrek en niet als bijzaak (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement).

## Goede praktijken

1. **Begin met de meest voorkomende verzoeken.** Maak een lijst van de top tien verzoeken naar volume uit je vastleggingen. Ontwerp deze eerst. Een paar goed ontworpen modellen dekken een groot deel van de vraag.
2. **Definieer voor elk een verzoekmodel.** Schrijf op welke informatie nodig is, wie goedkeurt, de stappen, wie elke doet en de verwachte tijd. Houd elk model tot een pagina.
3. **Gebruik de woorden van de gebruiker.** Noem verzoeken zoals gebruikers dat zouden doen ("Een nieuwe laptop krijgen", niet "Hardwareprovisioning-verzoektype 2"). Toets namen met gebruikers.
4. **Vraag alleen wat je nodig hebt.** Elk veld op een formulier moet een doel hebben. Haal wat je kunt op uit systemen die je al hebt, zoals de afdeling van de gebruiker, in plaats van het de gebruiker te vragen.
5. **Keur routine vooraf goed.** Spreek met goedkeurders een standaardlijst af van items en rollen die geen goedkeuring per geval nodig hebben. Review de lijst periodiek.
6. **Maak echte goedkeuringen makkelijk en snel.** Toon de goedkeurder wat er wordt gevraagd en waarom, sta goedkeuring via telefoon of e-mail toe en stel een automatische herinnering en een vervanger bij afwezigheid in.
7. **Automatiseer het stabiele en frequente.** Kies verzoeken die elke keer dezelfde stappen volgen en weinig risico dragen. Test de automatisering en leg vast wat ze deed.
8. **Houd een menselijke route.** Laat gebruikers om hulp vragen wanneer een formulier niet bij hun behoefte past. Behandel die gevallen als feedback op het model.
9. **Scheid verzoeken van incidenten en wijzigingen.** Geef elk een eigen categorie, wachtrij en maten. Leer de desk herclassificeren wanneer een verzoek een fout of wijziging blijkt.
10. **Let op de wachttijden.** Meet de tijd die wordt besteed aan wachten op goedkeuring of informatie, niet alleen de totale tijd. Kies de langste wachttijd om eerst te verkorten.
11. **Sluit de lus met de aanvrager.** Bevestig voltooiing, vraag of het werkte en bied een manier om te zeggen dat het niet werkte. Een verzoek dat als klaar is gemarkeerd maar niet is geleverd, is erger dan een dat nog open staat.
12. **Review de catalogus van verzoeken regelmatig.** Zet verzoeken die niemand doet buiten gebruik, voeg bijna-duplicaten samen en voeg nieuwe toe op basis van bewijs (zie Onderwerp 3.8 — Servicecatalogusmanagement).

## Vragen om met je team te bespreken

**Welke verzoeken handelen we het vaakst af en hoe lang duurt elk van begin tot eind?**

Haal de top tien van het afgelopen kwartaal op en volg de verstreken tijd van elk. Markeer waar elk verzoek wacht. De verrassing is meestal dat het grootste deel van de tijd wachten is, niet werk. Vraag wie op wie wacht. De facilitator kan vragen welk verzoek het makkelijkst als eerste te verbeteren is.

**Welke goedkeuringen in onze verzoeken hebben nooit nee gezegd?**

Review een steekproef van goedkeuringen en tel de weigeringen. Een goedkeuring die nooit weigert, kan een vertraging zonder voordeel zijn. Vraag waar de goedkeuring voor dient en wie ervan profiteert. Sommige goedkeuringen bestaan voor audit of verantwoording, wat een legitiem doel is dat op een lichtere manier kan worden bereikt, zoals de goedkeurder achteraf informeren. Kies er een om te vereenvoudigen.

**Wat moeten gebruikers ons vertellen wat we al weten?**

Kijk naar een verzoekformulier en markeer velden waarvan de antwoorden in een ander systeem bestaan. Elk zo'n veld is moeite voor de gebruiker en een bron van fouten. Vraag wat nodig is om ze vooraf in te vullen. Kies één veld om te verwijderen of vooraf in te vullen.

**Welke van onze verzoeken kunnen worden gedaan zonder dat een mens ze aanraakt?**

Maak een lijst van verzoeken die een vaste procedure volgen. Vraag bij elk wat automatisering tegenhoudt: tools, toegang, angst voor fouten. Bespreek de waarborgen die automatisering acceptabel zouden maken, zoals limieten en logs. Kies er een om als experiment te automatiseren.

**Hoe komen gebruikers erachter waar ze om kunnen vragen?**

Vraag een paar gebruikers hoe ze iets ongewoons zouden aanvragen. Als het antwoord "iemand vragen die ik ken" is, werkt de servicelijst niet. Bespreek hoe de lijst wordt gepresenteerd en of de namen voor de gebruikers zinvol zijn. Toets een concept met twee of drie gebruikers.

**Wat gebeurt er wanneer een verzoek iets anders blijkt te zijn?**

Verzamel voorbeelden van verzoeken die eigenlijk incidenten of wijzigingen waren. Vraag wat de verkeerde classificatie kostte. Bespreek hoe de desk herkent en herclassificeert en of het verzoekformulier gebruikers helpt correct te kiezen. Spreek een eenvoudige herclassificatiestap af.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal bureau voor de statistiek heeft 3.000 medewerkers en een IT-afdeling van 80. Nieuwe medewerkers wachten gewoonlijk tien dagen op een werkende laptop en accounts, en managers klagen dat nieuwe medewerkers stilzitten. De servicedesk handelt de onboardingverzoeken af als individuele tickets, waarbij elk van vijf teams een stap uitvoert en het ticket doorgeeft.

Een verbeterlead brengt één onboardingverzoek in kaart. Ze ontdekt dat het eigenlijke werk ongeveer drie uur duurt en de rest wachten is: op de manager die details levert, op een budgetgoedkeuring voor een standaardlaptop en op elk team dat het ticket opmerkt. Het team ontwerpt een verzoekmodel voor nieuwe medewerkers. De manager vult drie weken voor de startdatum één kort formulier in, waarvan de meeste velden uit het HR-systeem worden gevuld. Standaardlaptops en accounts voor de rol zijn vooraf goedgekeurd. Een script maakt accounts en groepen aan; hardware wordt automatisch uit een voorraadlijst besteld; de desk krijgt één takenlijst. De manager van de nieuwe medewerker ontvangt updates en een bevestiging.

Na twee maanden daalt de mediane tijd van verzoek tot gereedstaande laptop tot drie dagen wanneer het formulier op tijd wordt ingediend. Er blijven moeilijkheden. Ongeveer een derde van de managers dient het formulier nog te laat in, dus nieuwe medewerkers wachten nog steeds, en het script faalt wanneer het HR-record een afdelingscode mist, wat handmatig herstelwerk oplevert. Het team voegt een herinnering toe aan de onboardingchecklist van HR, stelt een alarm in voor mislukte scripts en begint met HR te praten over het verbeteren van de gegevens. Ze houden ook een menselijke route voor rollen die niet op de standaardlijst passen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams ontvangen vaak verzoeken die eigenlijk wijzigingen zijn: een nieuw veld, een nieuw rapport. Help de desk ze te herkennen en naar jouw backlog te routeren. Bouw, waar verzoeken voor jouw service frequent zijn, zoals toegang, een self-serviceroute met duidelijke grenzen en logging.

### Service- en beheerteams

Beheer en de desk bezitten de meeste verzoekmodellen. Ontwerp eerst de gangbare, verwijder wachttijd en automatiseer waar het veilig is. Bescherm tijd voor het bouwen en reviewen van modellen, want verzoekwerk verdringt verbeterwerk makkelijk. Deel gegevens over wachttijden met goedkeurders en managers.

### Leiderschap en governance

Leiders en goedkeurders bepalen veel van het wachten. Vraag welke goedkeuringen beheersing toevoegen en welke vertraging, en accepteer voorafgaande goedkeuring waar het risico laag is. Steun een gedeeld verzoekplatform over functies heen en vraag om maten voor wachttijd in plaats van ticketaantallen.

### Klanten en gebruikers

Gebruikers profiteren van duidelijke namen, korte formulieren en eerlijke schattingen. Geef volledige informatie wanneer je vraagt en zeg wanneer het urgent is en waarom. Vertel het team wanneer een verzoek niet leverde wat je nodig had, want dat verbetert het model voor de volgende persoon.

## Veelvoorkomende faalpatronen

- **Verzoeken als incidenten behandelen of omgekeerd.** Prioriteiten en rapporten worden vertekend. Scheid ze in plaats daarvan en leer herclassificeren.
- **Formulieren die te veel vragen.** Gebruikers verlaten het portaal. Vraag in plaats daarvan alleen wat je nodig hebt en vul de rest vooraf in.
- **Goedkeuringen als ritueel.** Elk verzoek wacht op een handtekening die nooit weigert. Keur in plaats daarvan routine-items vooraf goed en houd echte goedkeuringen snel.
- **Automatisering zonder waarborgen.** Een script doet op schaal de verkeerde wijziging. Test, beperk en log automatisering in plaats daarvan en bewaak fouten.
- **Interne namen.** Gebruikers kunnen niet vinden wat ze nodig hebben. Noem verzoeken in plaats daarvan in de woorden van gebruikers en toets ze.
- **Geen menselijke route.** Ongewone behoeften vallen erdoorheen. Bied in plaats daarvan hulp en behandel vreemde verzoeken als feedback.
- **Alleen snelheid tellen.** Verzoeken worden vroeg gesloten. Bevestig in plaats daarvan met de aanvrager en let op herhaalverzoeken.
- **Verzoeken nooit buiten gebruik stellen.** De lijst veroudert. Review in plaats daarvan regelmatig het gebruik en verwijder wat niemand vraagt.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Verzoekmodellen | Elk verzoek wordt ad hoc afgehandeld | Er bestaan modellen voor enkele frequente verzoeken | Er bestaan modellen voor de topverzoeken met eigenaren en verwachte tijden | Modelprestaties worden gemeten en bijgesteld | Modellen worden over functies en leveranciers gedeeld |
| Goedkeuring | Goedkeuring is informeel of uit gewoonte | Sommige routine-items zijn vooraf goedgekeurd | Lijsten voor voorafgaande goedkeuring en snelle goedkeuringsroutes zijn standaard | Goedkeuringsuitkomsten en wachttijden worden gereviewd | Goedkeuringsregels worden over functies afgestemd op basis van risicogegevens |
| Automatisering en self-service | Verzoeken worden handmatig per e-mail afgehandeld | Sommige verzoeken zijn in een portaal beschikbaar of geautomatiseerd | Frequente laagrisicoverzoeken zijn geautomatiseerd en self-service is standaard | Succes van automatisering en gebruikersinspanning worden gemeten | Automatisering en self-service omvatten IT, HR en facilitair |
| Leren en verbeteren | Verzoeken worden niet geanalyseerd | Enkele aantallen worden verzameld | Wachttijden en herhaalverzoeken worden regelmatig gereviewd | Verbeteringen worden uit gegevens gepland en effecten gecontroleerd | Verbeterideeën komen van gebruikers en teams in de hele organisatie |

## Checklist

- [ ] We kennen onze tien meest voorkomende verzoeken en hoe lang elk duurt.
- [ ] Elk heeft een verzoekmodel: benodigde informatie, goedkeurder, stappen, eigenaar, verwachte tijd.
- [ ] Verzoeken worden in de woorden van gebruikers benoemd.
- [ ] Formulieren vragen alleen noodzakelijke informatie en vullen vooraf in wat we weten.
- [ ] Routine-items zijn vooraf goedgekeurd en echte goedkeuringen hebben een snelle route en een vervanger.
- [ ] Frequente laagrisicoverzoeken zijn geautomatiseerd met tests en logs.
- [ ] Verzoeken, incidenten en wijzigingen zijn gescheiden met een herclassificatiestap.
- [ ] We meten wachttijd en totale tijd.
- [ ] Aanvragers wordt gevraagd voltooiing te bevestigen.
- [ ] De lijst van verzoeken wordt minstens twee keer per jaar gereviewd.

## AI-prompts

**Doel: de meest voorkomende verzoeken en de langste wachttijden vinden.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Doel: een verzoekmodel voor één verzoek schrijven.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een verzoekformulier korter en duidelijker herschrijven.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: beslissen wat eerst te automatiseren.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gebruik dit om de verzoeken die gebruikers kunnen doen op te sommen, in hun woorden, met eigenaren.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gebruik dit om de meest voorkomende verzoeken en hun volumes te vinden.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gebruik dit om de stappen en wachttijden in een verzoek te analyseren.
- [user-story](../../../../skills/user-story/SKILL.md): gebruik dit om een verzoek vanuit het gezichtspunt van de gebruiker te beschrijven met acceptatiecriteria.
- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om de stappen te documenteren voor verzoeken die handmatig blijven.

## Belangrijkste bronnen

- **IT service management** (Wikipedia): definieert een servicerequest, enterprise service management en IT process automation.
- **Help desk** (Wikipedia): achtergrond over wachtrijbeheer en routering voor verzoeken die een desk bereiken.
- **Business process automation** (Wikipedia): algemene achtergrond over het automatiseren van routinewerk.
- **ITIL** (Wikipedia): de context voor servicerequestmanagement in ITIL.

## Referenties

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
