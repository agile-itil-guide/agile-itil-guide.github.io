# Informatiebeveiligingsmanagement

**Informatiebeveiligingsmanagement beschermt de vertrouwelijkheid, integriteit en beschikbaarheid van informatie via risicogebaseerde beheersmaatregelen, en in een agile organisatie werken de maatregelen het best wanneer ze in de leveringspipeline en de dagelijkse gewoonten van teams zijn ingebouwd in plaats van als poort aan het eind te zijn toegevoegd.**

## Waarom dit ertoe doet

Elke service bevat informatie waar iemand om geeft: klantgegevens, betalingsvastleggingen, gezondheidsgegevens, interne plannen. Een beveiligingsfalen schaadt de mensen die de informatie beschrijft, beschadigt de reputatie van de organisatie en kan juridische en financiële boetes met zich meebrengen. Servicemanagementteams zijn vaak de eersten die het falen zien, als incident, en degenen die daarna de normale werking moeten herstellen.

Beveiliging en continue levering worden vaak als tegenpolen neergezet: beveiliging zegt vertragen, levering zegt versnellen. Die kijk helpt niet. Beveiliging die pas aan het eind van een release komt, levert late verrassingen en gehaaste uitzonderingen op. Beveiliging die in het werk is ingebouwd, met controles die automatisch draaien en risico's die vroeg worden besproken, beschermt de service zonder haar tot stilstand te brengen. Hetzelfde geldt voor servicemanagement: de praktijken die wijziging veilig maken, maken ook beveiligingswijzigingen veilig.

Dit onderwerp gebruikt het [Wikipedia-artikel over informatiebeveiliging](https://en.wikipedia.org/wiki/Information_security) en het [artikel over ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) als hoofdbronnen. Beide zijn algemeen. Het eerste is een lang artikel en deze gids las alleen de eerste 100.000 van zijn ongeveer 243.000 tekens. Dit onderwerp geeft geen juridisch advies; wetten, regelgeving en contractuele verplichtingen verschillen per land en sector, en de juiste bron is de tekst van de regel die voor jou geldt.

## Kernconcepten

### Wat informatiebeveiliging is

Wikipedia definieert informatiebeveiliging als het beschermen van informatie door informatierisico's te beperken, met als doel ongeautoriseerde toegang, gebruik, openbaarmaking, verstoring, verwijdering, aantasting, wijziging of waardevermindering van informatie te voorkomen of te verminderen en de impact van incidenten te verkleinen. Het geldt voor elektronische, fysieke en immateriële informatie en maakt deel uit van informatierisicomanagement.

### De CIA-triade

De kerndoelen zijn **vertrouwelijkheid**, **integriteit** en **beschikbaarheid**, afgewogen tegen de efficiëntie van beleid en de productiviteit van de organisatie. Het artikel beschrijft ze zo:

| Doel | Betekenis | Voorbeeld in een service |
|---|---|---|
| **Vertrouwelijkheid** | Informatie is beschermd tegen ongeautoriseerde openbaarmaking | Alleen geautoriseerd personeel kan patiëntendossiers zien |
| **Integriteit** | Informatie is juist en compleet en kan niet op een ongeautoriseerde of onopgemerkte manier worden gewijzigd | Een betalingsbedrag kan niet spoorloos worden aangepast |
| **Beschikbaarheid** | Informatie is toegankelijk wanneer nodig | De service blijft up en weerstaat denial-of-service-aanvallen |

Het artikel merkt op dat vertrouwelijkheid verschilt van privacy, dat het een breder concept noemt. Het merkt ook op dat organisaties doelen kunnen toevoegen zoals authenticiteit, verantwoordingsplicht, onloochenbaarheid en betrouwbaarheid, en dat de Parkerian Hexad, een uitgebreid model, betwiste verdiensten heeft. Beschikbaarheid sluit rechtstreeks aan op servicemanagement (zie Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties).

### Risicomanagement

Het artikel beschrijft risico als de waarschijnlijkheid van schade aan een informatiemiddel. **Kwetsbaarheden** zijn zwaktes, **bedreigingen** zijn mogelijke oorzaken van schade en **impact** is het resulterende verlies. Risicomanagement is een doorlopend, iteratief proces waarin het management een risico kan accepteren, beperken, overdragen (bijvoorbeeld via verzekering) of vermijden. Wat overblijft heet **restrisico**. Het artikel noemt zes stappen: bedrijfsmiddelen identificeren, bedreigingen beoordelen, kwetsbaarheden beoordelen, impact berekenen, beheersmaatregelen selecteren en implementeren en die maatregelen evalueren.

### Beheersmaatregelen en defense in depth

Beheersmaatregelen beschermen vertrouwelijkheid, integriteit of beschikbaarheid. Het artikel beschrijft **defense in depth**, het gelaagd aanbrengen van overlappende maatregelen, met maatregeltypen beschreven als administratief (beleid, procedures), logisch (technische maatregelen zoals toegangsbeheer en encryptie) en fysiek (sloten, faciliteiten). Geen enkele maatregel volstaat; lagen dekken elkaars falen.

### Beveiligingsincidenten

Het artikel beschrijft incidentmanagement voor computerbeveiliging als het monitoren, detecteren en reageren op beveiligingsevents, met incidentresponsplannen die worden geactiveerd wanneer inbreuken worden gedetecteerd, doorgaans uitgevoerd door een incidentresponsteam. Beveiligingsincidenten zijn een soort incident en profiteren van dezelfde rollen, communicatie en schuldvrij leren (zie Onderwerp 3.2 — Incidentmanagement), plus specifieke stappen zoals bewijs bewaren en toezichthouders of getroffen mensen waar vereist op de hoogte stellen.

### ISO/IEC 27001 en 27002

Volgens Wikipedia stelt **ISO/IEC 27001** eisen aan het opzetten, implementeren, onderhouden en voortdurend verbeteren van een informatiebeveiligingsmanagementsysteem (ISMS), inclusief het beoordelen en behandelen van informatiebeveiligingsrisico's. De eisen zijn generiek en bedoeld voor organisaties van elk type, elke omvang en elke aard. De eerste editie kwam uit in oktober 2005 uit de Britse standaard BS 7799-2, de tweede in 2013 en de derde in oktober 2022, afgestemd op ISO/IEC 27002:2022; een amendement in februari 2024 voegde een overweging over klimaatverandering toe.

Kernfeiten uit het artikel:

- De ISMS-eisen staan in clausules 4 tot en met 10: context, leiderschap, planning, ondersteuning, uitvoering, prestatie-evaluatie en verbetering.
- Bijlage A van de editie van 2022 heeft 93 referentiemaatregelen in vier thema's: organisatorisch, mensen, fysiek en technologisch. De editie van 2013 noemde er 114. Bijlage A is een referentieset en geen verplichte checklist: organisaties maken een **Statement of Applicability** dat rechtvaardigt welke maatregelen ze wel en niet opnemen.
- Certificering is optioneel tenzij een wet, contract of schema haar vereist. ISO certificeert geen organisaties; onafhankelijke certificeringsinstanties doen dat, in fasen, gevolgd door surveillance-audits en hercertificering op een driejarige cyclus. Een certificaat geldt alleen binnen haar vermelde reikwijdte.
- **ISO/IEC 27002** geeft richtlijnen over de maatregelen van bijlage A. Het is een richtlijn en daartegen kan niet worden gecertificeerd.

Het artikel merkt op dat een literatuuroverzicht uit 2021 weinig empirische studies naar certificeringsuitkomsten vond. Een certificaat toont dat een managementsysteem bestaat; het is geen bewijs dat een specifieke inbreuk niet kan gebeuren.

### Andere raamwerken en wetten

Het artikel over informatiebeveiliging noemt veel andere standaarden en schema's, zoals het NIST Cybersecurity Framework, Cyber Essentials in het VK, de Essential Eight in Australië en de standaard voor de betaalkaartenindustrie. Het noemt ook wetten, waaronder de Computer Misuse Act (1990) en Data Protection Act (1998) van het VK en HIPAA (1996), de Gramm-Leach-Bliley Act (1999) en de Sarbanes-Oxley Act (2002) van de Verenigde Staten. De lijst toont hoe gevarieerd de regels zijn. Welke voor jou gelden, hangt af van waar je actief bent, de sector en de gegevens die je bewaart; vraag je juridische of compliancefunctie (zie Onderwerp 5.7 — Governance, risico en compliance).

### Beveiliging in de leveringspipeline

Praktijken die bij continue levering passen, zijn onder meer:

- **Vroeg over bedreigingen praten:** vraag bij de planning wat er mis kan gaan met een functie en wie haar zou willen misbruiken.
- **Geautomatiseerde controles:** code, afhankelijkheden en configuratie bij elke wijziging scannen, met resultaten zichtbaar voor het team (zie Onderwerp 3.4 — Change enablement).
- **Minimale rechten (least privilege):** mensen en systemen alleen de toegang geven die ze nodig hebben.
- **Beheer van geheimen:** inloggegevens uit code houden en ze roteren.
- **Beveiligingstesten:** penetratietests en geautomatiseerde tests als onderdeel van de cyclus (zie de vaardigheid voor beveiligingstesten hieronder).
- **Logging en monitoring:** verdachte activiteit detecteren (zie Onderwerp 3.10 — Monitoring en eventmanagement).

De richtlijn van DORA, elders in deze gids aangehaald, noemt doordringende beveiliging onder de praktijken die continue levering ondersteunen (zie Onderwerp 3.5 — Release- en deploymentmanagement).

### Cultuur en mensen

Het artikel over informatiebeveiliging noemt onderzoek naar beveiligingscultuur, inclusief zeven cultuurdimensies van Roer en Petric (2017). Welk model je ook kiest, het punt is dat veel inbreuken bij mensen beginnen: een phishingbericht, een fout, een kortere weg onder druk. Training, duidelijke meldroutes en een schuldvrije houding tegenover eerlijke fouten verbeteren de beveiliging meer dan schuld.

### Grenzen van de bronnen

Het Wikipedia-artikel noemt geen specifieke kritiek op de CIA-triade en werd maar gedeeltelijk gelezen. Het ISO/IEC 27001-artikel bespreekt de relatie met ISO/IEC 20000 of met de plan-do-check-act-cyclus niet. Dit onderwerp geeft geen technische instructies; gebruik gespecialiseerde richtlijnen voor je platforms en de tekst van de standaarden als je conformiteit wilt claimen.

## Goede praktijken

1. **Weet welke informatie je bewaart en waar.** Maak een lijst van de belangrijkste soorten informatie, wie elk bezit, waar het is opgeslagen en hoe gevoelig het is. Je kunt niet beschermen wat je niet hebt geïdentificeerd.
2. **Doe risicobeoordelingen in gewone taal.** Vraag voor elke belangrijke service wat er mis kan gaan met vertrouwelijkheid, integriteit en beschikbaarheid, hoe waarschijnlijk en hoe erg. Leg beslissingen vast om elk risico te accepteren, te verminderen, over te dragen of te vermijden (zie Onderwerp 5.7 — Governance, risico en compliance).
3. **Leg je maatregelen in lagen aan.** Combineer beleid, technische maatregelen en fysieke maatregelen zodat één falen niet volstaat. Review welke lagen je gevoeligste informatie beschermen.
4. **Bouw controles in de pipeline in.** Voer bij elke wijziging geautomatiseerde beveiligingscontroles uit op code, afhankelijkheden en configuratie en maak falende controles zichtbaar. Repareer problemen op het punt van de wijziging.
5. **Geef standaard minimale rechten.** Verleen toegang op basis van rol en behoefte, review haar regelmatig en verwijder haar snel wanneer mensen vertrekken of van rol veranderen (zie Onderwerp 3.6 — Servicerequestmanagement).
6. **Beheer geheimen goed.** Houd inloggegevens uit broncode, bewaar ze in een beheerde kluis en roteer ze. Test dat je ze na een incident snel kunt roteren.
7. **Behandel beveiligingsincidenten als incidenten.** Gebruik dezelfde rollen, communicatie en review als voor andere incidenten en voeg stappen toe voor bewijs, insluiting en melding. Oefen het plan.
8. **Ken je meldplichten.** Ontdek bij je juridische of compliancefunctie welke wetten of contracten eisen dat je na een inbreuk toezichthouders of getroffen mensen op de hoogte stelt en hoe snel. Schrijf het in het incidentplan, met aanhaling van de brontekst.
9. **Betrek leveranciers.** Vraag kritieke leveranciers hoe ze jouw informatie beschermen en zet verwachtingen in contracten (zie Onderwerp 3.14 — Leveranciersmanagement).
10. **Train en praat.** Geef korte, regelmatige training op basis van echte voorbeelden en maak het makkelijk om zonder schuld een fout of een verdacht bericht te melden.
11. **Gebruik standaarden als bron van structuur.** Behandel bijlage A als referentieset als je ISO/IEC 27001 overneemt, schrijf een gerechtvaardigd Statement of Applicability en houd het ISMS licht. Certificering is optioneel tenzij vereist.
12. **Leer van bijna-ongelukken.** Review bijna-ongelukken en gebeurtenissen met lage ernst op patronen en voed er de backlog en het risicoregister mee.

## Vragen om met je team te bespreken

**Welke informatie bewaren we die mensen zou schaden als ze uitlekte en waar is ze?**

Vraag iedereen de gevoeligste gegevens te noemen die ze verwerken en waar ze leven. Vergelijk. Verrassingen zijn gebruikelijk: kopieën in testomgevingen, exports in gedeelde mappen, logs met persoonsgegevens. De facilitator kan vragen welke kopie het minst beschermd is. Kies er een om te verminderen of beter te beschermen.

**Wanneer namen we voor het laatst een beslissing om een beveiligingsrisico te accepteren en wie nam die?**

Vraag om een voorbeeld. Geaccepteerde risico's worden vaak stilzwijgend gemaakt, door uitstel. Bespreek wie moet beslissen, welke informatie diegene nodig heeft en waar het wordt vastgelegd. De lijst van manieren om met risico om te gaan uit het artikel (accepteren, beperken, overdragen, vermijden) is een nuttig kader. Spreek een eenvoudige plek af om de volgende beslissing vast te leggen.

**Welke beveiligingscontroles draaien automatisch bij elke wijziging en wat negeren we?**

Maak een lijst van de controles in de pipeline en de resultaten. Vraag welke bevindingen routinematig worden genegeerd en waarom. Genegeerde bevindingen betekenen meestal ruis, gebrek aan eigenaarschap of gebrek aan tijd. Beslis welke je repareert, welke je met een reden onderdrukt en wie de lijst bezit.

**Wie heeft toegang tot wat en wanneer hebben we dat voor het laatst gereviewd?**

Kies een gevoelig systeem en maak een lijst van wie erbij kan. Vergelijk met wie het nodig heeft. Vaak heeft toegang zich opgehoopt. Vraag hoe snel toegang wordt verwijderd wanneer iemand vertrekt. Spreek een reviewdatum en een eigenaar af.

**Wat zouden we doen in het eerste uur van een vermoedelijke inbreuk?**

Loop de stappen door: wie wordt geïnformeerd, wat wordt bewaard, wat wordt afgesloten, wie praat met wie. Gaten verschijnen meestal rond bevoegdheid en bewijs. Vraag waar het plan is en wanneer het voor het laatst is gebruikt. Plan een tabletop-oefening.

**Welke regels over beveiliging of privacy gelden voor ons en hoe weten we dat?**

Vraag wie verantwoordelijk is om het te weten. Als het antwoord "juridische zaken" of "niemand" is, vraag dan hoe engineering de eisen leert kennen. Regels verschillen per land en sector, dus maak een lijst van de plekken waar je actief bent. Spreek af de juridische of compliancefunctie om een korte lijst te vragen, met de brontekst.

## In de praktijk: een agile ITIL-voorbeeld

De researchcomputingservice van een universiteit bewaart datasets uit medische studies en geeft onderzoekers toegang tot analyseservers. Een team van acht beheert haar. Na een incident waarbij een onderzoeker een onbeschermde dataset naar een persoonlijke cloudmap kopieerde, eist de beveiligingsfunctionaris van de universiteit dat elke wijziging en elk toegangsverzoek door een beveiligingsreview van drie weken gaat. Onderzoekers protesteren dat dit de service onbruikbaar maakt.

De servicemanager stelt een andere aanpak voor en ontmoet de beveiligingsfunctionaris en twee onderzoekers. Ze maken een lijst van de bewaarde informatie en groeperen datasets als openbaar, intern en gevoelig. Voor gevoelige gegevens spreken ze strengere maatregelen af: toegang op naam per rol en project, geen kopieën buiten de service en logging van data-export. Voor andere gegevens gelden lichtere regels. Het team voegt geautomatiseerde controles voor verkeerd geconfigureerde opslag en voor geheimen in code aan de leveringspipeline toe, en de beveiligingsfunctionaris reviewt de resultaten wekelijks in plaats van elke wijziging. Toegangsverzoeken voor gevoelige datasets volgen een verzoekmodel met goedkeuring door de data steward van het project en een vervaldatum. Een korte trainingssessie op basis van het eerdere incident wordt voor onderzoekers gehouden.

Zes maanden later zijn er geen verdere kopieën buiten de service gevonden en kosten toegangsreviews elk kwartaal een middag. Er blijven moeilijkheden. Een groep onderzoekers gebruikt een tool die gegevens exporteert op een manier die de logging niet vastlegt, en de geautomatiseerde controles geven valse alarmen die het team is gaan negeren. Ze spreken met de beveiligingsfunctionaris af de tool aan de loggingreikwijdte toe te voegen, de controles af te stemmen en alarmen maandelijks te reviewen. Ze vragen ook het juridische team om een schriftelijke verklaring van de meldplichten die voor de gevoelige datasets gelden, zodat het incidentplan de bron kan aanhalen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams maken beveiliging echt in code en configuratie. Bespreek bedreigingen vroeg, houd geheimen uit code, reageer op geautomatiseerde bevindingen en vermijd het delen van gevoelige gegevens in tests. Vertel beveiliging en beheer over wijzigingen die de blootstelling veranderen.

### Service- en beheerteams

Beheerteams voeren de maatregelen uit: toegang, monitoring, patchen en back-ups. Behandel beveiligingsevents als incidenten, bewaar bewijs en neem deel aan oefeningen. Voed levering en het risicoregister met incidentpatronen.

### Leiderschap en governance

Leiders bezitten risicobeslissingen en de cultuur eromheen. Vraag om risicosamenvattingen in gewone taal, steun tijd voor training en oefeningen en zorg dat iemand verantwoordelijk is voor elke beslissing om een risico te accepteren. Eis certificering niet als label zonder reden.

### Klanten en gebruikers

Klanten en gebruikers vertrouwen de service hun informatie toe. Gebruik sterke authenticatie waar die wordt aangeboden, meld verdachte berichten en vraag verleners hoe ze jouw gegevens beschermen en hoe ze je over een inbreuk zouden vertellen. Verwacht eerlijkheid en snelheid als er iets misgaat.

## Veelvoorkomende faalpatronen

- **Beveiliging als laatste poort.** Reviews komen aan het eind en vertragen releases. Bespreek in plaats daarvan vroeg bedreigingen en automatiseer controles in de pipeline.
- **Compliance als doel.** Een certificaat verbergt zwakke praktijk. Gebruik in plaats daarvan standaarden voor structuur en meet echte bescherming.
- **Ongevolgde gegevens.** Kopieën verspreiden zich naar testsystemen en persoonlijke opslag. Weet in plaats daarvan waar gevoelige gegevens leven en beperk kopieën.
- **Te veel toegang.** Rechten hopen zich op en worden nooit verwijderd. Review in plaats daarvan toegang regelmatig en laat haar vervallen.
- **Geheimen in code.** Inloggegevens staan in repositories. Gebruik in plaats daarvan een kluis en roteer geheimen.
- **Geen getest incidentplan.** Het eerste gebruik is een echte inbreuk. Oefen in plaats daarvan het plan en schrijf meldplichten op.
- **Schuld voor fouten.** Mensen verbergen fouten. Maak in plaats daarvan melden makkelijk en reageer met leren.
- **Leveranciers negeren.** Derden bewaren gegevens zonder duidelijke bescherming. Vraag, contracteer en review in plaats daarvan.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Informatie en risico | Gevoelige gegevens staan niet op een lijst; risico's zijn impliciet | Sommige services leggen gegevenstypen en risico's vast | Gegevens en risico's worden per service vastgelegd met eigenaren en beslissingen | Risico's worden aan incidenten en maten getoetst | Risicobeelden worden met klanten en leveranciers gedeeld en afgestemd |
| Maatregelen in levering | Beveiligingsreview gebeurt aan het eind, indien al | Sommige teams draaien beveiligingsscans | Beveiligingscontroles zijn geautomatiseerd in een gemeenschappelijke pipeline, met eigenaren voor bevindingen | Bevindingen, oplossingen en ontsnappingen worden gemeten en gereviewd | Maatregelen worden over teams verbeterd uit gedeeld bewijs |
| Toegang en geheimen | Toegang wordt ad hoc verleend; geheimen staan in code | Er bestaan enkele reviews en kluizen | Rolgebaseerde toegang met vervaldatum en beheerde geheimen zijn standaard | Toegangsreviews en rotatie worden gemeten | Praktijken voor toegang en geheimen worden met partners gecoördineerd |
| Incidentrespons en cultuur | Beveiligingsincidenten worden geïmproviseerd | Er bestaan enkele plannen | Beveiligingsincidenten volgen het incidentproces met gedefinieerde extra stappen en worden geoefend | Detectie- en responstijden worden gemeten en leren wordt gedeeld | Respons wordt met leveranciers, klanten en autoriteiten gecoördineerd |

## Checklist

- [ ] We hebben de belangrijkste soorten informatie, hun eigenaren, locaties en gevoeligheid op een lijst gezet.
- [ ] Risico's voor vertrouwelijkheid, integriteit en beschikbaarheid zijn voor belangrijke services beoordeeld en beslissingen zijn vastgelegd.
- [ ] Geautomatiseerde beveiligingscontroles draaien bij elke wijziging en bevindingen hebben eigenaren.
- [ ] Toegang is op rol en behoefte gebaseerd, wordt regelmatig gereviewd en verwijderd wanneer niet meer nodig.
- [ ] Geheimen staan in een beheerde kluis en kunnen snel worden geroteerd.
- [ ] Er bestaat een beveiligingsincidentplan, dat is geoefend en meldplichten met brontekst bevat.
- [ ] Leveranciers die onze informatie bewaren, zijn naar hun bescherming gevraagd.
- [ ] Medewerkers krijgen korte, regelmatige training en kunnen fouten zonder schuld melden.
- [ ] Als we ISO/IEC 27001 gebruiken, hebben we een gerechtvaardigd Statement of Applicability en een licht ISMS.
- [ ] Bijna-ongelukken worden op patronen gereviewd.

## AI-prompts

**Doel: je informatie inventariseren en naar gevoeligheid rangschikken.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een korte bedreigingsdiscussie voor een nieuwe functie houden.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: geautomatiseerde beveiligingsbevindingen reviewen op ruis en prioriteit.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Doel: een beveiligingsincidentoefening voorbereiden.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [security-testing](../../../../skills/security-testing/SKILL.md): gebruik dit om beveiligingstests als onderdeel van de leveringscyclus te plannen.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om beveiligingsrisico's, beslissingen en eigenaren vast te leggen.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gebruik dit om vroegwaarschuwingsmaten voor beveiligingsrisico's te kiezen.
- [data-governance](../../../../skills/data-governance/SKILL.md): gebruik dit om te definiëren wie gegevens bezit en hoe ze mogen worden gebruikt en gedeeld.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): gebruik dit om vragen voor te bereiden voor juridisch of compliancepersoneel over privacyplichten.

## Belangrijkste bronnen

- **Information security** (Wikipedia): de CIA-triade, risicomanagement, beheersmaatregelen en incidentrespons, met een lange lijst van verwante standaarden en wetten.
- **ISO/IEC 27001** (Wikipedia, en de standaard zelf van ISO): de eisen voor een informatiebeveiligingsmanagementsysteem, met de maatregelen van bijlage A en het certificeringsproces.
- **Computer security incident management** (Wikipedia): achtergrond over reageren op beveiligingsevents.
- **Defense in depth** (Wikipedia): achtergrond over gelaagde maatregelen.

## Referenties

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
