# Kennismanagement

**Kennismanagement maakt wat mensen weten beschikbaar voor anderen wanneer ze het nodig hebben, en de aanpak die voor agile teams werkt is kennis vastleggen als bijproduct van het werk, haar kort en bezeten houden en schrijven combineren met gesprek.**

## Waarom dit ertoe doet

Elke service hangt af van kennis: hoe ze werkt, wat er eerder misging, hoe het te repareren en waarom ze zo is gebouwd. Wanneer die kennis alleen in een paar hoofden leeft, is de service kwetsbaar. Een vakantie, een ontslag of een slechte nacht in bereikbaarheidsdienst kan van een oplossing van tien minuten een storing van tien uur maken. Kennismanagement is de praktijk die ervoor zorgt dat de mensen die het moeten weten, het kunnen uitzoeken.

De agile traditie neigt naar gesprek en werkende software boven documentatie, en de auteurs van het Agile Manifest zijn daarvoor bekritiseerd (zie Onderwerp 1.1 — Het Agile Manifest). Een eerlijke lezing is dat documentatie haar plek moet verdienen. Kennismanagement geeft een manier om te beslissen wat die plek verdient: kennis die vaak wordt gebruikt, duur is om opnieuw te ontdekken of door te weinig mensen wordt bezeten. Voor de rest kunnen gesprek en pairing beter dienen.

Het [Wikipedia-artikel over kennismanagement](https://en.wikipedia.org/wiki/Knowledge_management) is breed en beschrijft het vakgebied als het verwerken van kennis om organisatiedoelen te bereiken, onderscheiden van content- of informatiemanagement. Het legt geschiedenis, modellen, benaderingen, bevorderende factoren, barrières en kritiek vast en zegt niets specifieks over IT-services. Dit onderwerp gebruikt de algemene ideeën van het artikel en past ze toe op serviceteams, en geeft aan waar het toepast en niet rapporteert.

## Kernconcepten

### Wat kennismanagement is

Wikipedia beschrijft kennismanagement (KM) als omvattend processen voor organisatiebewustzijn, leren, samenwerking en innovatie, waarbij kennis wordt gebruikt en gedeeld om de doelen van een organisatie te ondersteunen. Het merkt op dat praktijken als leerlingschap, bedrijfsbibliotheken en mentoring de term lang voorafgaan. KM kwam begin jaren negentig op als vakgebied, waarbij academici waaronder Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport en Baruch Lev het veld hielpen ontwikkelen. Het artikel zegt dat ISO 9001:2015 een specificatie voor "organisatiekennis" toevoegde.

### Stilzwijgende en expliciete kennis

Het artikel onderscheidt twee vormen. **Stilzwijgende (tacit) kennis** is geïnternaliseerd en vaak niet bewust bekend. **Expliciete kennis** wordt bewust gehouden en kan makkelijk worden gecommuniceerd. Het SECI-model van Nonaka (socialisatie, externalisatie, combinatie, internalisatie), dat het artikel toeschrijft aan het boek van Nonaka en Takeuchi uit 1995, beschrijft een spiraal tussen de twee. Het artikel merkt ook op dat latere onderzoekers de splitsing een versimpeling noemden.

Voor een serviceteam is het onderscheid praktisch. Een ervaren engineer kan vaak aanvoelen dat een alarm waarschijnlijk ruis is of dat een bepaalde release riskant is, en kan niet makkelijk opschrijven waarom. Een deel van dat gevoel kan in runbooks en controles worden omgezet; een deel kan alleen worden gedeeld door samen te werken.

### Codificatie en personalisatie

In navolging van Hansen en collega's (1999) onderscheidt het artikel twee strategieën. **Codificatie** slaat kennis op in opslagplaatsen zodat anderen haar kunnen hergebruiken. **Personalisatie** deelt kennis via direct contact tussen mensen. Elk past bij andere kennis:

| Strategie | Past bij | Voorbeelden in een serviceteam |
|---|---|---|
| Codificatie | Herhaalde, goed begrepen taken | Runbooks, vastleggingen van bekende fouten, servicebeschrijvingen, hoe-doe-je-artikelen |
| Personalisatie | Complexe, veranderende of oordeelsintensieve zaken | Samen in bereikbaarheidsdienst, meelopen, communities of practice, ontwerpdiscussies |

De meeste teams hebben beide nodig. Een kennisbank met recepten leert geen oordeelsvermogen en gesprek alleen schaalt niet naar de nachtdienst.

### Communities of practice

Het artikel noemt communities of practice onder de gezichtspunten op KM. In een serviceorganisatie kunnen ze zo eenvoudig zijn als een regelmatige informele bijeenkomst van mensen die over teams heen aan vergelijkbare problemen werken, zoals database-engineers of deskanalisten. Ze verspreiden kennis en normen en geven mensen een plek om te vragen.

### Wat vast te leggen

Niet alles verdient een vastlegging. Nuttige kandidaten in een serviceteam zijn:

- **Hoe een service te herstellen:** runbooks en herstelstappen (zie Onderwerp 3.2 — Incidentmanagement).
- **Bekende fouten en workarounds:** symptoom, workaround en eigenaar (zie Onderwerp 3.3 — Probleemmanagement).
- **Servicebeschrijvingen:** wat een service doet, wie haar bezit en waarvan ze afhangt (zie Onderwerp 3.8 — Servicecatalogusmanagement).
- **Beslissingen en hun redenen:** waarom een ontwerp is gekozen, zodat toekomstige wijzigingen het niet blind ongedaan maken.
- **Lessen uit incidenten:** postmortems die anderen kunnen lezen.
- **Antwoorden op veelgestelde gebruikersvragen:** korte artikelen voor de servicedesk en voor self-service.

### Bevorderende factoren en barrières

Het artikel noemt mensen en cultuur, processen en structuur en technologie als kerncomponenten. Het merkt op dat motivaties innovatie, kortere ontwikkelcycli en het benutten van expertise omvatten en dat organisaties prikkels gebruiken zoals verplichte inzending van content, maar zegt dat er geen consensus is of prikkels werken. Het noemt barrières zoals kennis die niet overgedragen wordt, onvoldoende opleiding en het verlies van kennis wanneer ervaren medewerkers vertrekken. Voor serviceteams zijn de belangrijkste barrières tijdsdruk, onduidelijk eigenaarschap van content, tools die onhandig zijn om te gebruiken en een cultuur die heldendaden beloont boven delen.

### Kennis in de flow van het werk

Een praktisch principe, breed gebruikt bij servicedesks, is kennis vast te leggen als onderdeel van het werk en niet als aparte taak. Wanneer een analist een nieuw probleem oplost, wordt de oplossing een conceptartikel voordat het ticket wordt gesloten. Wanneer een engineer een incident repareert, gaan de stappen in het runbook. Dit maakt van elk stuk werk een kleine bijdrage. De voor deze gids gelezen bronnen beschrijven geen specifieke methode om dit te doen, dus behandel het principe als gangbare praktijk om te toetsen en kijk wat met je tools werkt.

### Kritiek en grenzen

Het artikel legt kritiek vast: dat de praktische relevantie van academisch KM-onderzoek is betwijfeld, dat het onderscheid tussen stilzwijgend en expliciet is bekritiseerd, dat de effectiviteit van prikkels wordt betwist en dat het beschermen van kennis risico's draagt zoals overbescherming en toe-eigening. Het meldt geen gemeten bewijs voor de effectiviteit of het rendement van KM. Voor een serviceteam is de les bescheiden ambitie: begin met de kennis waarvan het ontbreken pijn deed, meet of ze wordt gebruikt en laat vallen wat niet wordt gebruikt.

### Kennis en organisatieleren

Het artikel zegt dat KM lijkt op organisatieleren maar meer nadruk legt op kennis als strategisch bezit en op informatie delen, en dat KM organisatieleren faciliteert. Dit sluit aan op agile leren (zie Onderwerp 1.10 — Agile leren) en op continue verbetering (zie Onderwerp 3.15 — Continue verbetering).

## Goede praktijken

1. **Begin met de kennis waarvan het ontbreken pijn deed.** Maak een lijst van de laatste paar incidenten of vertragingen die door ontbrekende kennis zijn veroorzaakt. Begin met die onderwerpen en niet met een poging alles te documenteren.
2. **Leg kennis vast op het moment van het werk.** Maak het schrijven van een korte notitie onderdeel van het sluiten van een incident, verzoek of wijziging. Een ruwe notitie nu geschreven is waardevoller dan een gepolijst artikel dat later is gepland.
3. **Houd artikelen kort en gestructureerd.** Gebruik een consistente vorm: symptoom, oorzaak indien bekend, stappen, wanneer te escaleren, eigenaar, laatste reviewdatum. Mensen onder druk lezen koppen en genummerde stappen.
4. **Geef elk artikel een eigenaar en een reviewdatum.** Content zonder eigenaar vervalt. Toon de reviewdatum op het artikel zodat lezers het vertrouwen kunnen beoordelen.
5. **Verwijder en voeg samen.** Faseer artikelen uit die niemand gebruikt en voeg duplicaten samen. Een kleinere, actuele basis is beter dan een grote, verouderde.
6. **Maak het makkelijk te vinden.** Zet kennis waar mensen al werken, test zoeken met echte zoekvragen en link artikelen vanuit tickets, de servicecatalogus (ITIL spelt het "service catalogue") en runbooks.
7. **Test runbooks door ze te gebruiken.** Vraag de persoon die een runbook gaat gebruiken haar op een testgeval te volgen. Repareer wat onduidelijk is. Dit maakt van een document werkende kennis.
8. **Pair en loop mee voor het stilzwijgende.** Laat minder ervaren mensen met ervaren mensen werken aan echte incidenten en wijzigingen. Plan het pairen, want het gebeurt niet als iedereen het druk heeft.
9. **Steun communities of practice.** Geef mensen tijd en een plek om over teams heen te ontmoeten. Laat de onderwerpen van de leden komen.
10. **Leg beslissingen en redenen vast.** Houd een korte vastlegging bij van belangrijke ontwerp- en procesbeslissingen en waarom ze werden genomen. Het voorkomt herontdekking en helpt nieuwkomers.
11. **Deel de lessen.** Publiceer postmortems en probleemsamenvattingen breed, in gewone taal, en vraag andere teams wat voor hen geldt (zie Onderwerp 3.2 — Incidentmanagement).
12. **Let op kennisrisico.** Maak eens per kwartaal een lijst van de vaardigheden en systemen die van één persoon afhangen en plan ze te verspreiden. Behandel vertrek als aanleiding voor review.

## Vragen om met je team te bespreken

**Wat zouden we niet kunnen doen als één benoemde persoon een maand weg was?**

Vraag het team mensen te noemen wier afwezigheid pijn zou doen en waarom. Maak een lijst van de taken die van hen afhangen. Dit is meestal een lange lijst en ongemakkelijk voor de genoemde mensen. Presenteer het als een risico voor de service, niet als een oordeel. De facilitator kan vragen welke taak het dringendst te delen is en hoe. Kies er een om mee te beginnen.

**Wat schrijven we op en leest iemand het?**

Vraag naar de laatste drie documenten die mensen gebruikten en de laatste drie die ze schreven. Vergelijk. De kloof toont waar documentatie-inspanning misplaatst is. Vraag hoe een nuttige versie van de ongelezen documenten eruit zou zien, of dat ze moeten worden verwijderd. Spreek af er een uit te faseren of te repareren.

**Waar gaat de kennis heen als we iets nieuws repareren?**

Volg het laatste nieuwe probleem: wie het repareerde, wie weet hoe en waar het werd vastgelegd. Als het antwoord "in een ticket" of "in mijn hoofd" is, bespreek dan hoe een betere route eruit zou zien. Vaak maakt een kleine gewoonte, zoals een sjabloon bij afsluiting, het verschil. Probeer er een een maand.

**Welke kennis wordt het best gedeeld door samen te werken, niet door te schrijven?**

Vraag waar oordeel telt: een grafiek lezen, beslissen wanneer te escaleren, een klant kennen. Bespreek hoe nieuwkomers dit nu leren. Typische antwoorden zijn geluk en tijd. Plan een bewuste regeling, zoals meelopen in bereikbaarheidsdienst. Spreek af wie met wie pairt.

**Hoe weten we of een kennisartikel nog waar is?**

Kies een artikel en test het. Controleer de eigenaar, de reviewdatum en of de stappen werken. Veel falen de test. Vraag welke reviewcyclus realistisch is en wie artikelen kan uitfaseren. Het doel is een zichtbaar teken van vertrouwen op elk artikel.

**Wat weerhoudt ons ervan te delen wat we weten?**

Verzamel eerlijke antwoorden: geen tijd, angst er dwaas uit te zien, geen duidelijke plek, geen erkenning. Het Wikipedia-artikel merkt op dat de effectiviteit van prikkels wordt betwist, dus vermijd gemakkelijke antwoorden. Vraag welke obstakels het team kan veranderen en welke management nodig hebben. Zeg één zichtbare verandering toe.

## In de praktijk: een agile ITIL-voorbeeld

Het reizigersinformatieteam van veertien van een nationale spoorwegmaatschappij beheert de systemen achter stationsdisplays en de dienstregelingsapp. De meest ervaren engineer, die de displaycontroller bouwde, kondigt zijn pensionering over zes maanden aan. Niemand anders begrijpt hoe de controller met fouten omgaat en de documentatie is een ontwerpdocument van 200 pagina's dat tien jaar geleden is geschreven.

De teamlead maakt een lijst van wat de engineer weet dat anderen niet weten. Hij krijgt drie groepen: hoe de controller na een fout te herstellen (expliciet en herhaalbaar), waarom bepaald vreemd gedrag bestaat (deels geschreven, deels in het geheugen) en hoe te beoordelen wanneer een fout ernstig is (stilzwijgend). Voor de eerste schrijft het team runbooks met de engineer en test elk door een collega het op een testunit te laten volgen. Voor de tweede interviewt een paar engineers hem wekelijks en schrijft korte beslisnotities in een gedeelde map, elk met een eigenaar. Voor de derde loopt een minder ervaren engineer zes maanden bij elk bereikbaarheidsincident met hem mee en neemt bij sommige de leiding terwijl hij toekijkt.

Aan het eind van zes maanden kunnen drie engineers controllerfouten afhandelen, is het document van 200 pagina's vervangen door elf korte runbooks en twintig beslisnotities en heeft het team een maandelijkse sessie waarin iemand uitlegt wat die weet. Er blijven problemen. Twee runbooks faalden bij een test op een andere hardwareversie en moesten worden herschreven, en het stilzwijgende oordeel is slechts deels overgedragen: de meelopende engineer zegt dat sommige beslissingen nog als gokken voelen. Het team plant een tweede ronde meelopen met de opvolger van de vertrekkende engineer en spreekt af de runbooks elk kwartaal te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams hebben veel van de kennis over hoe services worden gebouwd. Schrijf korte runbooks en beslisnotities als onderdeel van je definition of done en test ze met de mensen die ze gaan gebruiken. Deel ontwerpredenen met beheer zodat wijzigingen ze niet ongedaan maken.

### Service- en beheerteams

Beheerteams genereren en gebruiken veel van de dagelijkse kennis. Leg oplossingen vast wanneer je tickets sluit, houd bekende fouten actueel en vraag leveringsteams om wat je nodig hebt. Maak artikelen makkelijk te vinden voor de desk en voor self-service.

### Leiderschap en governance

Leiders bepalen of delen wordt beloond of ontmoedigd. Het Wikipedia-artikel zegt dat prikkels worden betwist, dus richt je op het wegnemen van obstakels: geef tijd, maak de tools makkelijk en beloon mensen die anderen helpen. Volg kennisrisico, zoals enkele punten van expertise, op dezelfde manier als andere servicerisico's.

### Klanten en gebruikers

Klanten en gebruikers profiteren van duidelijke antwoorden en self-servicearticelen. Vertel het team wanneer een artikel onjuist is of ontbreekt. Vraag verleners hoe ze van incidenten leren en hoe ze delen wat ze leren met jou.

## Veelvoorkomende faalpatronen

- **Alles documenteren.** De basis wordt groot en verouderd. Begin in plaats daarvan met kennis waarvan het ontbreken pijn deed en voeg toe naar behoefte.
- **Schrijven los van werken.** Vastleggen is achteraf een klus. Maak in plaats daarvan een korte notitie onderdeel van het afsluiten van het werk.
- **Geen eigenaren.** Niemand werkt artikelen bij. Benoem in plaats daarvan voor elk een eigenaar en een reviewdatum.
- **Slecht zoeken.** Mensen kunnen niet vinden wat bestaat en schrijven daarom duplicaten. Test in plaats daarvan zoeken met echte zoekvragen en link artikelen vanuit waar mensen werken.
- **Het stilzwijgende negeren.** Alles wordt als schrijfbaar aangenomen. Plan in plaats daarvan pairing, meelopen en communities of practice.
- **Ongetoetste runbooks.** Stappen falen wanneer nodig. Laat in plaats daarvan een gebruiker elk runbook op een testgeval volgen.
- **Hamsteren als status.** Mensen beschermen kennis om hun positie te beschermen. Erken in plaats daarvan delen en spreid afhankelijkheid.
- **Content verplichten.** Kwantiteitsdoelen produceren dunne artikelen. Richt je in plaats daarvan op gebruik en kwaliteit en onthoud dat het effect van prikkels wordt betwist.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Kennis vastleggen | Kennis leeft in hoofden en chat | Sommige teams houden notities en runbooks bij | Een notitie vastleggen is onderdeel van het sluiten van werk | Vastleggingspercentages en bruikbaarheid worden gereviewd | Kennisvastlegging wordt over teams en leveranciers gedeeld |
| Kwaliteit en eigenaarschap | Geen eigenaren; content vervalt | Sommige artikelen hebben eigenaren | Elk artikel heeft een eigenaar en een reviewdatum | Juistheid en gebruik worden gemeten; verouderde content wordt verwijderd | Kwaliteitspraktijken worden over de organisatie gedeeld en verbeterd |
| Vindbaarheid en gebruik | Zoeken is slecht; mensen vragen elkaar | Sommige content is vanuit tickets gelinkt | Kennis is gelinkt vanuit tickets, catalogus en runbooks | Gebruik en mislukte zoekopdrachten worden gemeten en gerepareerd | Kennis is waar passend beschikbaar voor gebruikers, leveranciers en partners |
| Het stilzwijgende delen | Delen gebeurt bij toeval | Er vindt enig pairing en meelopen plaats | Pairing, meelopen en communities of practice zijn gepland | Kennisrisico wordt gevolgd en verminderd | Communities en rotatie verplaatsen kennis routinematig over teams |

## Checklist

- [ ] We hebben de kennis waarvan het ontbreken ons pijn deed op een lijst gezet en daar begonnen.
- [ ] Het sluiten van een incident, verzoek of wijziging omvat een korte notitie wanneer iets nieuw was.
- [ ] Artikelen volgen een korte gemeenschappelijke structuur met een eigenaar en een reviewdatum.
- [ ] Runbooks zijn getest door iemand die ze niet schreef.
- [ ] Zoeken werkt voor echte zoekvragen en artikelen zijn gelinkt vanuit tickets en de servicecatalogus.
- [ ] Ongebruikte en dubbele artikelen worden uitgefaseerd.
- [ ] We hebben een plan om kennis van één persoon te verspreiden.
- [ ] Pairing of meelopen is gepland voor oordeelsintensief werk.
- [ ] Lessen uit incidenten worden buiten het team gedeeld.
- [ ] We reviewen kennisrisico minstens elk kwartaal.

## AI-prompts

**Doel: een opgelost ticket omzetten in een concept voor een kennisartikel.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Doel: kennisrisico in je team vinden.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een runbook op duidelijkheid reviewen voordat je het test.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Doel: een kennisoverdracht plannen voor iemand die vertrekt.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om stapsgewijze procedures te schrijven die iemand anders onder druk kan volgen.
- [postmortem](../../../../skills/postmortem/SKILL.md): gebruik dit om lessen uit incidenten vast te leggen in een vorm die anderen kunnen lezen.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): gebruik dit om vast te leggen waarom een ontwerpbeslissing werd genomen.
- [decision-records](../../../../skills/decision-records/SKILL.md): gebruik dit om een korte vastlegging bij te houden van belangrijke niet-architecturale beslissingen.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): gebruik dit om vaardigheidsgaten te vinden die kennisdeling moet aanpakken.

## Belangrijkste bronnen

- **Knowledge management** (Wikipedia): een breed overzicht van de geschiedenis, modellen, benaderingen en kritiek van het vakgebied.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): hoe één organisatie lessen uit incidenten deelt.
- **Tacit knowledge** (Wikipedia): achtergrond over de kennis die moeilijk op te schrijven is.
- **Community of practice** (Wikipedia): achtergrond over groepen over teams heen die kennis delen.

## Referenties

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
