# Governance, risico en compliance

**Governance, risico en compliance stelt de richting, grenzen en het bewijs voor het werk van een organisatie vast, en in een agile organisatie werkt het het best als vangrails ingebouwd in de manier waarop teams leveren, niet als poorten aan het eind.**

## Waarom dit ertoe doet

Elke organisatie die services levert, is verantwoording verschuldigd aan iemand: klanten, een raad van bestuur, een toezichthouder, het publiek. Die verantwoording heeft een paar bekende vormen. Er moeten duidelijke richting en beslissingsrechten zijn (governance). Er moet een eerlijk beeld zijn van wat er mis kan gaan en wat eraan wordt gedaan (risico). En er moet bewijs zijn dat de organisatie de wetten, contracten en beleidsregels volgt die voor haar gelden (compliance).

Agile teams en governancefuncties ontmoeten elkaar vaak in wederzijds wantrouwen. Teams zien goedkeuringsborden, lange formulieren en regels waarvan ze de reden niet zien. Governance- en auditmedewerkers zien teams die productie snel wijzigen en weinig vastlegging achterlaten. Beide kanten hebben een punt. De weg erdoorheen is niet dat een van beiden wint, maar governance te ontwerpen die verenigbaar is met frequente verandering: duidelijke grenzen, risicogebaseerde beheersmaatregelen en bewijs dat door het werk zelf wordt geproduceerd.

Het [Wikipedia-artikel over governance, risk management and compliance](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) beschrijft GRC als een holistische aanpak van governance, risicomanagement en naleving van regelgeving, in de jaren 2000 ontwikkeld om steeds complexere financiële complianceeisen te beheren. Het noemt geen kritiek en geen IT-specifieke raamwerken. Dit onderwerp combineert het met de artikelen over risicomanagement en regelgevingscompliance, met de eerdere onderwerpen over wijziging, beveiliging en continuïteit en met de richtlijn van DORA over goedkeuring. Het geeft geen juridisch advies; de regels die voor jou gelden, hangen af van je land, sector en contracten, en de juiste bron is de tekst van de regel.

## Kernconcepten

### Governance

Het GRC-artikel beschrijft corporate governance als de door de raad van bestuur vastgestelde processen die structuur vormgeven en rollen toewijzen. In IT gaat governance over wie wat beslist, op welke basis en hoe beslissingen worden gecontroleerd. COBIT, door Wikipedia beschreven als een raamwerk van ISACA voor IT-management en -governance, is een referentie (zie Onderwerp 2.7 — ITSM-raamwerken en -standaarden). Het servicewaardesysteem van ITIL omvat governance als component (zie Onderwerp 2.3 — Het ITIL-servicewaardesysteem).

Goede governance in een agile organisatie is expliciet over:

- **Richting:** doelen en prioriteiten en wie ze stelt.
- **Grenzen:** wat teams alleen mogen beslissen en wat escalatie vraagt (zie Onderwerp 1.9 — Agile management).
- **Verantwoording:** wie voor elke service instaat (zie Onderwerp 5.5 — Product- en service-eigenaarschap).
- **Bewijs:** hoe de organisatie weet dat haar richting en grenzen worden gevolgd.

### Risicomanagement

Wikipedia beschrijft risicomanagement als het identificeren, evalueren en prioriteren van risico's, gevolgd door het minimaliseren, monitoren en beheersen van hun impact of waarschijnlijkheid. Het artikel noemt vier behandelingsopties:

| Optie | Betekenis | Voorbeeld |
|---|---|---|
| **Vermijden** | De riskante activiteit niet doen (wat ook mogelijke winst laat liggen) | Besluiten bepaalde gegevens niet op te slaan |
| **Verminderen** | De ernst of waarschijnlijkheid verlagen | Geautomatiseerde tests, gefaseerde uitrol, extra monitoring |
| **Delen** | De last of het voordeel overdragen, zoals via verzekering of uitbesteding; het artikel merkt op dat "risico-overdracht" vaak een verkeerde benaming is, omdat de oorspronkelijke partij meestal juridisch verantwoordelijk blijft | Verzekering, een leverancier contracteren |
| **Behouden** | Het verlies accepteren, doorgaans voor kleine of onverzekerbare risico's | Een besluit met een klein risico te leven |

Het artikel behandelt ook kansen, positieve onzekere gebeurtenissen, met parallelle strategieën. Het merkt op dat risicobeoordeling ernst en waarschijnlijkheid afweegt en dat frequentiegegevens vaak schaars zijn, vooral voor catastrofale gebeurtenissen. Het citeert kritiek: Douglas Hubbard (2009) wordt aangehaald als zeggend dat sommige standaarden geen meetbare verbetering van risico tonen, hoewel het vertrouwen in beslissingen lijkt te stijgen; later onderzoek suggereert dat financiële voordelen meer afhangen van hoe vaak en met welke methode risico's worden beoordeeld dan van de gebruikte formule; en het onderscheid van Benoit Mandelbrot tussen "milde" en "wilde" risico's, waarbij het onderschatten van wildheid een gangbare fout is. Het artikel citeert ISO 31000, "Risk management: Guidelines", en is zelf gemarkeerd als meer bronvermeldingen nodig hebbend.

### Het risicoregister

Een **risicoregister** is een vastlegging van geïdentificeerde risico's, met een beschrijving, een beoordeling, een eigenaar, de gekozen behandeling en de status. Het voor deze gids gelezen artikelfragment noemt het niet, dus dit is gangbare praktijk. Houd het kort, bezeten en gereviewd. Risico's voor services omvatten beveiliging, beschikbaarheid, falen van leveranciers, afhankelijkheid van sleutelpersonen en compliance (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement, Onderwerp 3.12 — Servicecontinuïteitsmanagement en Onderwerp 3.14 — Leveranciersmanagement).

### Compliance

Het Wikipedia-artikel over regelgevingscompliance beschrijft het als het doel dat organisaties willen bereiken door zich bewust te zijn van relevante wetten, beleidsregels en regelgeving en ze te volgen, en merkt op dat organisaties beheersmaatregelen steeds vaker in gedeelde raamwerken combineren om dubbel werk te verminderen. Het zegt dat de definitie van een effectief complianceplan ongrijpbaar is gebleken en noemt standaarden als ISO 37301 en ISO 19600. Het noemt regimes zoals de Sarbanes-Oxley Act (2002), HIPAA, GDPR, PCI-DSS, de Gramm-Leach-Bliley Act en andere. Het legt kritiek vast: psychologisch onderzoek dat het artikel aanhaalt betoogt dat beloningen of boetes intrinsieke motivatie kunnen verzwakken en compliance ondermijnen, privacyvoorvechters trekken bewaarplichten voor gegevens in twijfel, handhaving verschilt per rechtsgebied en snel veranderende eisen zijn moeilijk bij te houden.

Een praktisch punt: compliance is niet één ding. Elk regime heeft zijn eigen reikwijdte en eisen. Ontdek bij je juridische of compliancefunctie welke voor welke van je services gelden en verkrijg de tekst.

### GRC als één blik

Het GRC-artikel zegt dat GRC drie verwante facetten omvat: corporate governance, enterprise risk management en compliance, en noemt varianten als financiële, juridische en operationele GRC. Het schrijft de term toe aan het artikel van Scott Mitchell uit 2007 en de Open Compliance and Ethics Group, en merkt op dat software voor GRC sinds 2002 bestaat en dat sommige bedrijven in 2025 AI-tools voor GRC begonnen te gebruiken. Het voordeel van de gecombineerde blik is dat de drie verbonden zijn: governance bepaalt wat ertoe doet, risicomanagement vindt wat het bedreigt en compliance toont wat eraan wordt gedaan.

### Vangrails, geen poorten

Een **poort** is een controlepunt, meestal handmatig, waar werk op goedkeuring wacht. Een **vangrail** is een grens ingebouwd in het pad die voorkomt dat werk van koers raakt zonder het te stoppen. Voorbeelden: geautomatiseerde tests die moeten slagen, beleidscontroles in de pipeline die onveilige configuraties blokkeren, budgetten met alarmen en rolgebaseerde toegang. De DORA-richtlijn over goedkeuring van wijzigingen zegt dat goedkeuring het best wordt bereikt via peer review en automatisering, dat zware externe goedkeuring samengaat met slechtere leveringsprestaties en dat goedkeuringen toevoegen als reactie op instabiliteit de zaken meestal verergert (zie Onderwerp 3.4 — Change enablement). Vangrails passen hetzelfde idee toe op governance: de beheersing zit in het systeem en produceert haar eigen bewijs.

### Bewijs als bijproduct

Auditors hebben bewijs nodig dat beheersmaatregelen werken. Een pipeline die vastlegt wie reviewde, wat testte en wat werd gedeployed, geeft bewijs voor elke wijziging. Een servicecatalogus (ITIL spelt het "service catalogue") met eigenaren geeft bewijs van verantwoording. Postmortems geven bewijs van leren. Dit is veel sterker dan een kwartaaldocument dat voor een audit is geschreven. Bespreek vroeg met auditors wat ze accepteren (zie Onderwerp 5.1 — Agile servicemanagement).

### Gereguleerde omgevingen

Het Wikipedia-artikel over agile softwareontwikkeling meldt dat gereguleerde domeinen als medische hulpmiddelen, farmacie, financiën, nucleair, automotive en luchtvaart eerst ongeschikt voor agile werden geacht en dat er nu aanpassingen bestaan, met zorgen voor kwaliteitsborging, veiligheid en beveiliging, traceerbaarheid en verificatie en validatie (zie Onderwerp 1.3 — Agile softwareontwikkeling). Het patroon dat werkt is doorgaans de vereiste beheersmaatregelen te houden, hun bewijs te automatiseren en ze onderdeel te maken van de definition of done, in plaats van ze te verwijderen.

### Grenzen van de bronnen

Het GRC-artikel noemt geen raamwerken of kritiek en werd voor deze gids in een korte vorm gelezen. Het artikel over risicomanagement werd maar gedeeltelijk gelezen en is gemarkeerd als bronvermeldingen nodig hebbend. Het compliance-artikel geeft geen kosten en geen auditprocedures. Gebruik ze als kaarten en ga voor specifieke zaken naar de primaire bronnen.

## Goede praktijken

1. **Schrijf beslissingsrechten op.** Zeg voor elk team of elke service wat ze alleen mogen beslissen, wat overleg vraagt en wat goedkeuring nodig heeft. Publiceer het en review het met de teams.
2. **Stel richting en grenzen, geen gedetailleerde instructies.** Vermeld de uitkomsten, budgetten, risicogrenzen en onaantastbare regels. Laat teams beslissen hoe ze daarbinnen werken.
3. **Houd een kort risicoregister bij.** Maak voor elke belangrijke service een lijst van de belangrijkste risico's met een eigenaar, een behandeling en een reviewdatum. Review het in een regelmatige bijeenkomst en schrap risico's die zijn verdwenen.
4. **Kies de behandeling bewust.** Beslis voor elk risico het te vermijden, te verminderen, te delen of te behouden en leg vast wie de beslissing nam. Onthoud dat het delen van een risico je eigen verantwoordelijkheid niet wegneemt.
5. **Beoordeel vaak, met eenvoudige methoden.** Het artikel meldt dat voordelen meer afhangen van frequentie en methode dan van de formule. Review risico's regelmatig met een methode die het team begrijpt.
6. **Weet welke regels voor welke services gelden.** Vraag je juridische of compliancefunctie om een lijst van de regimes die gelden, met de brontekst. Leg het bij elke service vast.
7. **Bouw vangrails in de pipeline.** Automatiseer tests, beveiligingsscans, beleidscontroles en toegangslimieten zodat onveilig werk vroeg wordt gestopt. Behandel de beheersmaatregelen als code met eigenaren.
8. **Leg bewijs vast als bijproduct.** Zorg dat tools reviews, goedkeuringen, testresultaten, deployments en incidenten vastleggen. Spreek met auditors af wat ze accepteren.
9. **Breng beheersmaatregelen eenmaal in kaart.** Beschrijf, als je aan meerdere raamwerken moet voldoen, je beheersmaatregelen eenmaal en koppel ze aan elke eis, zoals het compliance-artikel zegt dat organisaties steeds vaker doen.
10. **Gebruik risicogebaseerde paden voor wijziging.** Maak laagrisicowijzigingen snel, markeer hoogrisicowijzigingen voor review en houd een centraal orgaan voor coördinatie en afwegingen (zie Onderwerp 3.4 — Change enablement).
11. **Neem governance mee in retrospectives.** Vraag periodiek welke beheersmaatregelen hielpen en welke alleen vertraging toevoegden. Verwijder of herontwerp de laatste, met de eigenaar en de auditor.
12. **Plan voor verandering in de regels.** Benoem iemand om veranderingen in wetten, standaarden en contracten te volgen en te rapporteren wat voor je services telt.

## Vragen om met je team te bespreken

**Welke goedkeuringen moeten we krijgen en waartegen beschermt elk?**

Maak een lijst van de goedkeuringen bij een typische wijziging of aankoop. Vraag bij elk welk risico het aanpakt en of het ooit iets heeft geweigerd. Goedkeuringen die niets beschermen, zijn kandidaten voor verwijdering. Goedkeuringen die tegen een echt risico beschermen, kunnen op een lichtere manier worden ingevuld. De facilitator kan vragen welk bewijs de goedkeurder in plaats van een handtekening zou accepteren.

**Wat zijn de top vijf risico's voor onze belangrijkste service en wie bezit elk?**

Vraag mensen onafhankelijk risico's op te sommen en vergelijk dan. De verschillen tonen wat het team ziet. Controleer dat elk een eigenaar en een behandeling heeft. Bespreek welke standaard worden geaccepteerd en niet bij besluit.

**Welke regels gelden voor ons en waar is de tekst?**

Vraag om de lijst van wetten, standaarden en contracten die gelden. Als niemand het kan zeggen, ontdek dan wie dat wel kan. Controleer dat engineering weet wat elk van haar vraagt. Spreek een manier af om de lijst actueel te houden.

**Welk bewijs produceren onze tools al dat een auditor zou kunnen gebruiken?**

Maak een lijst van de vastleggingen: reviews, testresultaten, deploymentgeschiedenis, incidentreviews. Vraag waar een auditor onlangs om vroeg en of de tools het konden leveren. Identificeer één vastlegging om te automatiseren. Nodig een auditor uit om te kijken.

**Waar hebben we na een probleem een beheersmaatregel toegevoegd en hielp die?**

Vraag om voorbeelden. Vergelijk met de DORA-waarschuwing dat goedkeuringen toevoegen als reactie op instabiliteit de zaken meestal verergert. Vraag of een andere reactie, zoals betere tests of kleinere wijzigingen, had gewerkt. Leg één les vast.

**Hoe zou een vangrail eruitzien voor iets wat we nu met een poort bewaken?**

Kies één poort. Vraag wat de poort moet voorkomen en hoe dat automatisch kan worden voorkomen. Bijvoorbeeld een beleidscontrole die een riskante configuratie blokkeert. Spreek een proef af met de eigenaar van de poort.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal pensioenfonds draait een online uitkeringscalculator en een betalingsservice. Het is gereguleerd, wordt jaarlijks geaudit en valt onder strikte regels voor gegevensverwerking. Het governancebureau van het fonds eist dat elke productiewijziging wordt gereviewd door een wijzigingsboard dat wekelijks vergadert, en dat elk project vóór release een risicobeoordeling van 30 pagina's voltooit. Ontwikkelaars releasen zelden en in grote batches. Een recente release veroorzaakte een onjuiste berekening voor een kleine groep leden en het antwoord van het board was nog een goedkeuring toe te voegen.

Het hoofd risico en het hoofd engineering besluiten een andere weg te proberen. Ze beginnen met een lijst van de regimes die voor de calculator en de betalingsservice gelden, verkregen van het juridische team van het fonds met de tekst van elk, en koppelen de beheersmaatregelen van het fonds er eenmaal aan. De rol van het wijzigingsboard verandert: routinematige, goed geteste wijzigingen met geautomatiseerde tests en peer review gaan er zonder door, hoogrisicowijzigingen (die welke berekeningsregels of betalingen raken) worden door een korte lijst signalen gemarkeerd en binnen twee dagen door een risicospecialist gereviewd, en het board vergadert om te coördineren en uitzonderingen te behandelen. De pipeline legt vast wie reviewde en welke tests slaagden, en een beleidscontrole blokkeert releases die de testsuite voor de berekening niet doorstaan. De risicobeoordeling wordt vervangen door een vermelding van één pagina per service in het register, maandelijks gereviewd.

Een interne auditor ziet de pipelinevastleggingen en het register en vraagt om een steekproef van reviews om te toetsen of peer review echt is; het hoofd engineering regelt een kwartaalsteekproef door een senior engineer. Na zes maanden zijn releases wekelijks, is het percentage mislukte wijzigingen lager en vindt de audit het bewijs voldoende. Er blijven moeilijkheden. Twee teams passen de hoogrisicosignalen inconsistent toe, de richtlijn van een toezichthouder vereist voor bepaalde berekeningswijzigingen een expliciete goedkeuring die het nieuwe pad niet vangt, en de registervermeldingen worden in sommige teams met weinig zorg geschreven. Het hoofd risico voegt de goedkeuringsstap voor die wijzigingen toe, geeft voorbeelden van de signalen en vraagt de teams elke maand één registervermelding naar een review te brengen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams voeren beheersmaatregelen uit via hun pipelines en praktijken. Leer welke regels voor je service gelden en waarom, bied manieren om bewijs automatisch te produceren en breng risico in de planning. Behandel vangrails als onderdeel van het product.

### Service- en beheerteams

Beheerteams bezitten veel beheersmaatregelen: toegang, monitoring, continuïteit en vastleggingen. Houd bewijs in tools, vertel governance wat in de praktijk werkt en help poorten herontwerpen die alleen vertraging toevoegen. Neem deel aan risicoreviews met echte incidentgegevens.

### Leiderschap en governance

Leiders stellen richting, grenzen en verantwoording vast en beslissen welke risico's te accepteren. Vraag om risicobeelden in gewone taal en om bewijs, niet om hoeveelheid documenten. Wees bereid een poort door een vangrail te vervangen wanneer het doel kan worden bereikt. Houd de rol van het board gericht op coördinatie en echte afwegingen.

### Klanten en gebruikers

Klanten en gebruikers vertrouwen erop dat de organisatie hun gegevens en geld goed behandelt. Vraag aanbieders welke standaarden en regels ze volgen en hoe ze dat tonen. Verwacht eerlijke informatie na een falen. Als je bijzondere eisen hebt, zoals een regel van een toezichthouder, vertel het de verlener dan vroeg.

## Veelvoorkomende faalpatronen

- **Governance als laatste poort.** Reviews komen aan het eind en vertragen alles. Bouw in plaats daarvan vangrails in het werk in en review naar risico.
- **Documenten als bewijs.** Rapporten worden voor de auditor geschreven. Produceer in plaats daarvan bewijs uit de tools die in het werk worden gebruikt.
- **Eén pad voor alle wijziging.** Routinewijzigingen wachten met riskante. Classificeer in plaats daarvan naar risico.
- **Een risicoregister dat niemand leest.** Het wordt een lange lijst. Houd het in plaats daarvan kort, bezeten en gereviewd.
- **Risico-overdracht als risicoverwijdering behandelen.** Verzekering of uitbesteding wordt aangenomen de verantwoordelijkheid te beëindigen. Onthoud in plaats daarvan dat de oorspronkelijke partij meestal verantwoordelijk blijft.
- **Onbekende regels.** Teams weten niet welke wetten en standaarden gelden. Haal in plaats daarvan de lijst en de tekst bij juridische zaken of compliance.
- **Na elk incident een beheersmaatregel toegevoegd.** Proces groeit en snelheid daalt. Zoek in plaats daarvan de oorzaak en los die op met tests, kleinere wijzigingen of sneller herstel.
- **Compliance als straf.** Boetes en angst domineren. Leg in plaats daarvan het doel van regels uit en maak het veilige pad het makkelijke.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Governance en beslissingsrechten | Beslissingen volgen gewoonte en hiërarchie | Sommige teams hebben schriftelijke grenzen | Beslissingsrechten, grenzen en eigenaren zijn opgeschreven en gedeeld | Governance-effectiviteit wordt aan uitkomsten getoetst | Governance is over teams, leveranciers en partners afgestemd |
| Risicomanagement | Risico's worden informeel besproken | Sommige services hebben risicolijsten | Korte risicoregisters met eigenaren en behandelingen worden regelmatig gereviewd | Risicomaten en -gebeurtenissen informeren beoordeling en behandeling | Risicobeelden worden over de organisatie gedeeld en geconsolideerd |
| Compliance en bewijs | Bewijs wordt voor audits samengesteld | Enig bewijs wordt door tools geproduceerd | Geldende regels staan op een lijst; beheersmaatregelen zijn eenmaal gekoppeld; bewijs komt uit tools | Werking van beheersmaatregelen en bewijskwaliteit worden gemeten | Bewijs wordt voortdurend met auditors en partners gedeeld |
| Vangrails en wijzigingspaden | Beheersmaatregelen zijn handmatige poorten | Er bestaan enkele geautomatiseerde controles | Risicogebaseerde paden en pipeline-vangrails zijn standaard | Effectiviteit van vangrails en valse blokkades worden gevolgd en afgestemd | Vangrails worden over teams gedeeld en verbeterd |

## Checklist

- [ ] Beslissingsrechten en grenzen zijn voor elk team of elke service opgeschreven.
- [ ] Elke belangrijke service heeft een kort risicoregister met eigenaren, behandelingen en reviewdata.
- [ ] We hebben een lijst van de wetten, standaarden en contracten die voor elke service gelden, met brontekst.
- [ ] Onze beheersmaatregelen zijn eenmaal beschreven en aan elke eis gekoppeld.
- [ ] De pipeline legt reviews, tests en deployments als bewijs vast.
- [ ] Auditors hebben gezegd welk bewijs ze in plaats van handtekeningen accepteren.
- [ ] Routine- en riskante wijzigingen volgen verschillende paden met duidelijke criteria.
- [ ] Elke goedkeuring heeft een vermeld doel en goedkeuringen die nooit weigeren worden gereviewd.
- [ ] Na incidenten toegevoegde beheersmaatregelen worden op hun effect gereviewd.
- [ ] Iemand volgt veranderingen in geldende regels en rapporteert ze.

## AI-prompts

**Doel: een goedkeuringsketen omzetten in opties voor vangrails.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een risicoregistervermelding opstellen.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: het bewijs opsommen dat je tools al voor een beheersmaatregel produceren.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een governancegesprek tussen leveringsteams en audit voorbereiden.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om risico's, behandelingen en eigenaren vast te leggen en te reviewen.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): gebruik dit om een licht logboek van risico's, acties, issues en beslissingen bij te houden.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gebruik dit om vroegwaarschuwingsmaten voor risico's te kiezen.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): gebruik dit om je voor te bereiden op audits en bewijs te ordenen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om beslissingsrechten en verantwoordelijkheden expliciet te maken.

## Belangrijkste bronnen

- **Governance, risk management, and compliance** (Wikipedia): een kort overzicht van GRC, zijn componenten en zijn geschiedenis.
- **Risk management** (Wikipedia): de definitie, behandelingsopties en kanttekeningen bij risicobeoordeling.
- **Regulatory compliance** (Wikipedia): de definitie, genoemde regimes en kritiek.
- **Streamlining change approval** (DORA, dora.dev): onderzoeksgebaseerde richtlijn om zware goedkeuring door peer review en automatisering te vervangen.

## Referenties

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
