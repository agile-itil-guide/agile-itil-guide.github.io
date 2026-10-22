# DevOps

**DevOps er bestræbelsen på at bringe udvikling og drift ind i ét arbejdsflow med delt ejerskab, automatisering og hurtig feedback, og det supplerer servicestyring ved at lægge de kontroller, ITIL bekymrer sig om, ind i pipelinen.**

## Hvorfor det betyder noget

DevOps er det navn, de fleste organisationer giver mødestedet mellem kontinuerlig levering og IT-drift. Det voksede ud af en frustration: udviklere blev belønnet for forandring og driftspersonale for stabilitet, så de to grupper trak i modsatte retninger, og overdragelsen mellem dem var der, hvor hastighed og kvalitet gik tabt. DevOps beder begge dele ansvar for hele vejen fra idé til kørende service.

For folk, der arbejder med ITSM, kan DevOps virke enten truende eller overflødigt. Truende, fordi det ser ud til at afvise de processer, driften byggede efter hård erfaring. Overflødigt, fordi meget af det, det anbefaler, som hændelsesgennemgange, automatisering og løbende forbedring, allerede findes i ITIL. Ingen af synspunkterne er helt rigtige. Wikipedia-artiklen om DevOps sætter DevOps i kontrast til det, den kalder ITILs "top-down" og stive rammeværk fra 1990'erne, hvilket er sandt for ældre versioner; ITIL 4 blev skrevet for at stemme overens med agile, DevOps og lean (se Emne 2.2 — ITIL).

Definitionen af DevOps er omstridt, og Wikipedia-artiklen siger det. Dette emne bruger artiklen, DORAs forskningssider og Gene Kims beretning om de "tre veje" (Three Ways), og det angiver, hvad der er etableret, hvad der er omdiskuteret, og hvad denne vejledning ikke kunne verificere.

## Kernebegreber

### Hvad DevOps er

[Wikipedia-artiklen om DevOps](https://en.wikipedia.org/wiki/DevOps) beskriver det som integrationen og automatiseringen af softwareudvikling og IT-drift, som kan forkorte udviklingstiden og forbedre udviklingslivscyklussen. Den citerer de akademiske forskere Len Bass, Ingo Weber og Liming Zhu, som beskriver det som et sæt praksisser, der sigter mod at reducere tiden mellem at committe en ændring til et system og dens normale placering i produktion. Artiklen bemærker, at begrebet bruges i flere sammenhænge, og at definitionen er omdiskuteret, og at akademiske undersøgelser fra 2015 til 2017 ikke fandt konsensus om dets kendetegn.

Artiklen rapporterer, at forslag om at kombinere udviklingsmetoder med udrulning og drift går tilbage til slutningen af 1980'erne og begyndelsen af 1990'erne, og at den første DevOps Days-konference blev holdt i Gent, Belgien, i 2009, grundlagt af Patrick Debois. Den karakteriserer generelt DevOps ved tre principper, delt ejerskab, arbejdsflowautomatisering og hurtig feedback, og bemærker, at denne karakteristik selv er omdiskuteret.

### De tre veje

Gene Kim, forfatter til *The Phoenix Project* og *The DevOps Handbook*, beskriver tre principper, hvoraf han argumenterer, at DevOps-mønstre kan udledes. Som opsummeret i Kims eget indlæg på IT Revolution-webstedet og i sekundære opsummeringer:

| Vej | Idé | Eksempler |
|---|---|---|
| **Første vej: flow** | Se på hele systemets ydeevne, ikke et enkelt silo; fremskynd arbejde fra idé til værdi | Giv ikke kendte fejl videre nedstrøms; lad ikke lokal optimering forringe helheden; søg altid at øge flow |
| **Anden vej: feedback** | Forkort og forstærk de signaler, der flyder tilbage fra senere trin til tidligere | Telemetri, hurtigt fejlende pipelines, kundefeedback |
| **Tredje vej: løbende læring og eksperimenter** | Byg en kultur, der tager små, bevidste risici og lærer af dem | At afsætte tid til læring, at gøre lokale opdagelser til globale forbedringer |

Disse svarer til vejledningens egne temaer: flow (se Emne 1.5 — Kanban og Emne 1.7 — Lean softwareudvikling), feedback (se Emne 3.10 — Overvågning og eventstyring) og læring (se Emne 1.10 — Agil læring). En note om terminologi: Kims indlæg kalder den anden vej "amplify feedback loops", og Handbook kalder den "feedback".

### Praksisser

Ifølge Wikipedia er kontinuerlig integration og kontinuerlig levering afgørende for DevOps' succes, sammen med automatisering. Artiklen nævner versionsstyring, virtuelle maskiner, containerisering og database-DevOps, som anvender versionsstyring, automatiserede tests og CI/CD på skema- og dataændringer. Den beskriver GitOps som at styre udrulningskonfiguration i versionsstyring og DevSecOps som at integrere sikkerhed i leveringen gennem "shift left"-test, inklusive statisk og dynamisk analyse. DORAs liste over kapabiliteter omfatter kontinuerlig levering, kontinuerlig integration, udrulningsautomatisering, testautomatisering, trunk-baseret udvikling, versionsstyring, databaseændringsstyring, overvågning og observerbarhed, gennemgående sikkerhed, arbejde i små batches og grænser for igangværende arbejde (se Emne 3.5 — Release- og deploymentstyring).

### Kultur

DORAs kapabilitetsliste, som den er læst til denne vejledning, omfatter kulturelle punkter: generativ organisationskultur, læringskultur, transformationelt lederskab, jobtilfredshed, trivsel og teameksperimenter. Den side, der lister dem, forklarer dem ikke og rangerer dem ikke. En anden DORA-side siger, at dens målinger forudsiger organisatorisk ydeevne og teammedlemmers trivsel, og advarer mod siloopdelt ejerskab og anbefaler delt ejerskab på tværs af udviklings-, drifts- og releaseteams. Det stemmer med den tredje vej: DevOps handler lige så meget om, hvordan folk arbejder sammen, som om værktøjer.

Den almindelige huskeregel **CALMS** (culture, automation, lean, measurement, sharing) bruges ofte til at opsummere DevOps. Wikipedia-artiklen om DevOps nævner den ikke, og denne vejledning verificerede ikke dens oprindelse, så den nævnes her kun fordi læsere vil møde den.

### DevOps og agil

Artiklen siger, at automatiseret build og test, kontinuerlig integration og kontinuerlig levering stammer fra den agile verden, og at Scrums udeladelse af ingeniørpraksisser fik automatiseringsarbejdet til at splitte sig ud i DevOps. Det passer med Emne 1.4 — Leveranceprognoser og planlægningsmålinger, som bemærker, at Scrum ikke siger, hvordan man bygger, tester, udruller eller driver software. Extreme Programming indeholder allerede mange af ingeniørpraksisserne (se Emne 1.6 — Extreme Programming). DevOps udvider den agile bekymring ud over releasepunktet.

### DevOps og ITIL

Artiklen sætter DevOps i kontrast til ITILs "top-down" og stive rammeværk fra 1990'erne og diskuterer ikke ITSM videre. Et mere retfærdigt billede for i dag:

| | Har tendens til at understrege | Risiko hvis det bruges alene |
|---|---|---|
| **DevOps** | Flow, automatisering, delt ejerskab, hurtig feedback | At forsømme registre, kontroller og det bredere servicesyn |
| **ITIL 4** | Værdi, praksisser, governance, en bred vifte af servicepraksisser | At behandle praksisser som tung proces |

ITIL 4s egen certificeringsordning omfatter et specialistmodul kaldet High Velocity IT (HVIT) i Managing Professional-sporet, som Wikipedia-artiklen om ITIL opregner. Det viser, at ejeren behandler hurtigt bevægende, digitalt arbejde som et emne i sig selv. En praktisk kombination: brug DevOps-praksisser til at implementere ITIL-praksisserne i pipelinen, som at registrere ændringer automatisk, køre tests som risikokontrol og bruge overvågning som eventpraksis (se Emne 3.4 — Ændringsunderstøttelse og Emne 5.1 — Agil servicestyring).

### DevOps og site reliability engineering

Wikipedia-artiklen siger, at Google udviklede site reliability engineering i 2003, og at nogle af dens oprindelige forfattere ser SRE som en implementering af DevOps. SRE-artiklen kalder det en specifik implementering af DevOps, snævrere fordi den koncentrerer sig om at bygge pålidelige systemer (se Emne 5.3 — Site reliability engineering).

### Målinger

DORAs målinger af softwareleveringens ydeevne giver et fælles ordforråd: ændringens gennemløbstid, udrulningsfrekvens, genopretningstid efter mislykket udrulning, andel af mislykkede ændringer og omarbejdsrate for udrulninger (se Emne 3.4 — Ændringsunderstøttelse og Emne 5.6 — Metrikker og måling). Wikipedia-artiklen rapporterer, at målingerne blev udgivet i 2016, at genopretningsmålet blev omdøbt i rapporten for 2023, at et omarbejdsmål blev tilføjet i 2024, og at DORA i 2025 erstattede ydelsesniveauer med syv teamarketyper. Den registrerer også, at nogle eksperter kritiserede DORA-forskningens metodologi og målinger. Behandl målingerne som nyttige spørgsmål og ikke som karakterer.

### Kritik og grænser

Ud over manglen på en afklaret definition rapporterer artiklen kritik af DORA-metodologien. Almindelig praktisk kritik, tilbudt her som praksiserfaring og ikke som kildefund, omfatter at "DevOps" bruges som jobtitel for den gamle driftsrolle, værktøjer adopteret uden kulturforandring og compliance forsømt i jagten på hastighed. Artiklen giver ingen adoptionsstatistik.

## God praksis

1. **Bliv enige om, hvad I mener med DevOps.** Skriv en kort erklæring om, hvad det betyder for jeres teams, som delt ejerskab af en service, automatiseret levering og hurtig feedback. En fælles definition forhindrer diskussioner om betegnelser.
2. **Del ejerskabet af servicen.** Gør dem, der bygger en service, ansvarlige for, hvordan den kører, og giv dem midlerne: vagt, overvågning og adgang. Støt dem med driftsekspertise.
3. **Automatisér vejen til produktion.** Byg en pipeline, der bygger, tester og udruller hver ændring. Registrér, hvad den gjorde. Behandl pipelinen som et produkt med brugere.
4. **Arbejd i små batches.** Udgiv små ændringer ofte. Det reducerer risiko og fremskynder feedback, som DORAs liste over kapabiliteter antyder.
5. **Forkort feedbackløkkerne.** Gør testresultater, overvågning og brugerfeedback synlige for teamet inden for minutter eller timer. Følg den anden vej: forstærk de signaler, der flyder tilbage.
6. **Se på hele flowet.** Kortlæg vejen fra idé til kørende service, og find de længste ventetider, inklusive dem uden for udviklingsteamet. Følg den første vej: optimér ikke ét silo på bekostning af helheden (se Emne 5.4 — Værdistrømsstyring).
7. **Byg sikkerhed og compliance ind.** Sæt automatiserede sikkerheds- og politiktjek i pipelinen, og registrér evidens som et biprodukt (se Emne 3.13 — Styring af informationssikkerhed og Emne 5.7 — Governance, risiko og compliance).
8. **Behandl kultur som en førsteklasses bekymring.** Invester i læring, skyldfri gennemgang, psykologisk tryghed og fælles mål. DORAs kapabilitetsliste omfatter kultur ved siden af tekniske punkter af en grund.
9. **Afsæt tid til at lære og eksperimentere.** Afsæt tid og sikre steder til eksperimenter, og del erfaringer. Følg den tredje vej.
10. **Brug ITIL-praksisser, hvor de hjælper.** Behold hændelses-, problem-, ændrings- og videnpraksisser, implementeret gennem automatisering og lette registre. Fjern trin, der ikke tjener deres formål.
11. **Mål med omhu.** Spor DORA-lignende målinger pr. service, forbedr mod jeres egen tidligere ydeevne, og undgå at sætte dem som mål (se Emne 5.6 — Metrikker og måling).
12. **Undgå titelfælden.** Opret ikke et separat "DevOps-team", der bliver et nyt silo mellem udvikling og drift. Spred praksisserne over teams, og brug platforms- eller støtteteams til at hjælpe.

## Spørgsmål til diskussion i teamet

**Hvad betyder DevOps her, og hvor hørte vi først ordet?**

Bed hver person om en definition på én sætning. Sammenlign. Wikipedia-artiklen siger, at definitionen er omdiskuteret, så forskelle forventes. Skriv en fælles erklæring, der er konkret: hvem der ejer hvad, hvad der er automatiseret, hvilken feedback der findes. Facilitatoren kan spørge, hvad der har ændret sig på grund af ordet indtil nu.

**Hvor venter en ændring mellem "klar" og "live", og hvem ejer ventetiden?**

Følg en nylig ændring, og list ventetiderne: gennemgange, godkendelser, miljøer, releasevinduer. Markér dem uden for teamet. Spørg, hvilke ventetider der beskytter mod reelle risici, og hvilke der er vane. Vælg én, der skal forkortes, i samarbejde med dens ejer.

**Når noget går i stykker i produktion, hvem er på vagt, og har de midlerne til at rette det?**

Spørg, hvem der bliver paget, og hvad de kan gøre alene. Hvis bygherrerne ikke er på vagt, så spørg hvorfor. Hvis driftspersonale ikke kan ændre koden, så spørg, hvad de gør. Drøft, hvordan delt ejerskab ville se ud her, og hvilken støtte der ville være brug for.

**Hvilken feedback får vi efter en release, og hvor hurtigt?**

List signalerne: tests, overvågning, supporttickets, brugerkommentarer. Spørg, hvor lang tid hver tager at nå teamet. Typiske svar: tests på minutter, tickets på dage. Vælg ét signal, der skal fremskyndes.

**Hvor sikkert er det at prøve noget og fejle?**

Bed om et nyligt eksempel på et mislykket eksperiment og hvad der skete med de involverede. Den tredje vej afhænger af at lære af små fejl. Drøft, hvad der ville gøre eksperimenter sikrere, som grænser, tilbagerulninger og skyldfri gennemgang.

**Hvordan optræder vores ITIL-praksisser i pipelinen, og hvor gør de ikke?**

Tag ændrings-, hændelses- og videnpraksisser, og spørg, hvor hver optræder i automatiseringen. Huller peger på manuelt arbejde eller på kontroller, der ikke er dokumenteret med evidens. Aftal én praksis, der skal flyttes ind i pipelinen.

## I praksis: et agilt ITIL-eksempel

En national postvirksomhed har en udviklingsgruppe på 40 og en driftsgruppe på 25. Udviklere udgiver en større version hvert kvartal og giver en pakke og et langt dokument videre til driften, som udruller den over en weekend. Driften klager over, at udviklere ikke forstår produktion, og udviklere klager over, at driften ikke kan nås, når en fejl har brug for en hurtig rettelse. En nylig release tog 19 timer, ødelagde pakkesporingssiden og førte til en dag med fingerpegen.

En ny platformschef foreslår et forsøg med ét produktteam, pakkesporingsservicen. Fire udviklere og to driftsingeniører danner ét team, der ejer servicen fra ende til anden. Udviklerne kommer med i vagtplanen, støttet af driftsingeniørerne. Teamet bygger en pipeline, der bygger, tester og udruller hver sammenflettet ændring til et staging-miljø og udruller til produktion med ét godkendelsestrin, serviceejeren giver. Ændringsregistreringer oprettes af pipelinen. Overvågning tilføjes, alarmer går til hele teamet, og hver produktionshændelse får en kort skyldfri gennemgang. Teamet aftaler at udgive mindst ugentligt, og platformschefen beder det spore gennemløbstid, udrulningsfrekvens, andel af mislykkede ændringer og genopretningstid.

Efter fire måneder udgiver teamet to gange om ugen, medianen fra sammenfletning til produktion er under en dag, og den seneste hændelse blev rettet på under en time af udvikleren, der skrev ændringen. Ikke alt virker. Driftsingeniørerne finder, at udvikleres alarmer er støjende, og udviklerne harmes over at være på vagt om natten. Et nabo-team, der afhænger af pakkesporing, blev ikke fortalt om den nye rytme og blev overrasket af en ændring. Platformschefen afsætter tid til, at teamet kan tune alarmer, tilføjer en vagtplan med en grænse for natopkald og arrangerer et månedligt møde med afhængige teams. Intern revision beder om at se evidensen for godkendelser, og platformschefen viser pipelineregistrene og hændelsesgennemgangene.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams tager driftsansvar på sig: overvågning, vagt og hændelseslæring. Byg den pipeline og den feedback, I har brug for, og bed om driftsekspertise i stedet for at overdrage. Hold ændringer små og synlige.

### Service- og driftsteams

Driftsteams bringer viden om, hvordan services svigter, og hvilke kontroller der betyder noget. Hjælp med at bygge platformen og tjekkene, del vagt, og undervis. Undgå at være en port; bliv en muliggører, der gør den sikre vej til den nemme vej.

### Ledelse og governance

Ledere skaber betingelserne: fælles mål på tværs af udvikling og drift, tid til automatisering, en kultur der lærer af fejl og tillid til evidens fra pipelinen. Undgå at omdøbe teams uden at ændre incitamenter, og bed om resultater, ikke om DevOps-adoption.

### Kunder og brugere

Kunder og brugere ser DevOps som hurtigere forbedring og hurtigere genopretning. Forvent hyppige små ændringer og klar kommunikation om dem. Giv feedback hurtigt, da teamet er indrettet til at bruge den.

## Almindelige fejlmønstre

- **Et DevOps-team som et nyt silo.** Udvikling og drift taler stadig ikke sammen. I stedet: spred praksisser over teams, og brug platformsteams til at muliggøre.
- **Værktøjer uden kultur.** En pipeline bygges, og intet andet ændrer sig. I stedet: ændr ejerskab, incitamenter og feedback sammen.
- **Fart uden sikkerhed.** Releases accelererer, og fejl stiger. I stedet: invester i tests, overvågning og tilbagerulning før tempo.
- **At droppe ITIL helt.** Registre og kontroller forsvinder. I stedet: behold praksisserne, og implementér dem i pipelinen.
- **Udviklere på vagt uden støtte.** Udbrændthed følger. I stedet: del vagtplanen, tun alarmer, og begræns natopkald.
- **Målinger som mål.** Teams manipulerer udrulningstal. I stedet: brug flere målinger, og sammenlign med jeres egen historik.
- **At ignorere afhængige teams.** Ændringer overrasker naboer. I stedet: kommunikér rytme og ændringer til teams, der afhænger af jeres.
- **At behandle ordet som målet.** Betegnelser erstatter resultater. I stedet: spørg, hvordan bedre flow, feedback og læring ser ud for jeres brugere.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Delt ejerskab | Udvikling og drift overdrager ved release | Nogle teams deler vagt | Teams ejer deres services fra ende til anden med støtte | Ejerskabets virkninger på kvalitet og belastning måles | Ejerskabsmodeller koordineres på tværs af teams, platforme og leverandører |
| Automatisering og flow | Levering er manuel og i batches | Nogle pipelines findes | En fælles pipeline bygger, tester, udruller og registrerer ændringer | Gennemløbstid, frekvens, fejl og genopretning måles og tunes | Pipelines og flow optimeres på tværs af teams og værdistrømme |
| Feedback | Feedback kommer fra brugere efter problemer | Nogle teams overvåger releases | Tests, overvågning og brugerfeedback når teams inden for minutter eller timer | Feedbackhastighed og -kvalitet måles og forbedres | Feedbackløkker spænder over teams, leverandører og kunder |
| Kultur og læring | Skyld følger fejl | Nogle skyldfri gennemgange | Skyldfri gennemgange, eksperimenter og læringstid er rutine | Læringshandlinger spores og resultater tjekkes | Læring spredes løbende i organisationen |

## Tjekliste

- [ ] Vi har en fælles skriftlig definition af, hvad DevOps betyder for os.
- [ ] Teams, der bygger en service, deler ansvaret for at drive den.
- [ ] En pipeline bygger, tester og udruller ændringer og registrerer, hvad den gjorde.
- [ ] Ændringer udgives i små batches, ofte.
- [ ] Test-, overvågnings- og brugerfeedback når teamet hurtigt.
- [ ] Sikkerheds- og politiktjek kører i pipelinen.
- [ ] Vagt er delt, med grænser for natopkald og tunede alarmer.
- [ ] Hændelsesgennemgange er skyldfri og producerer handlinger med ejere.
- [ ] Vi sporer gennemløbstid, udrulningsfrekvens, andel af mislykkede ændringer og genopretningstid for hver service.
- [ ] Afhængige teams får besked om vores releaserytme og større ændringer.

## AI-prompts

**Formål: at kortlægge ventetiderne mellem "klar" og "live".**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at tjekke, hvor ITIL-praksisser optræder i jeres pipeline.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en pilot af delt ejerskab med ét team.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at designe en skyldfri hændelsesgennemgang for et blandet team.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): brug den til at planlægge små, hyppige releases og de tjek, der omgiver dem.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): brug den til at bygge de automatiserede tests, en pipeline afhænger af.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): brug den til at flytte test og sikkerhedstjek tidligere i pipelinen.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): brug den til at designe delt vagt med fair grænser.
- [postmortem](../../../../skills/postmortem/SKILL.md): brug den til at køre skyldfri gennemgange, der fodrer den tredje vej.

## Vigtigste kilder

- **DevOps** (Wikipedia): en oversigt over definitioner, praksisser, forhold til agil, SRE og DevSecOps og DORA-målinger, med noterede debatter.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): kilden til flow, feedback og løbende læring.
- **DORA capabilities and metrics** (dora.dev): forskningsprogrammets liste over kapabiliteter og dets målinger af softwarelevering.
- **The DevOps Handbook** og **The Phoenix Project** (Gene Kim og medforfattere): bøgerne, der udfolder de tre veje i detaljer.

## Referencer

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
