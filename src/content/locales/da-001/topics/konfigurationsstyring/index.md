# Konfigurationsstyring

**Konfigurationsstyring holder et nøjagtigt, brugbart billede af en services dele og hvordan de hænger sammen, og dens moderne form er en registrering bygget ud fra kode og opdagelse, som stoles på, fordi systemet selv holder den ajour.**

## Hvorfor det betyder noget

Når noget går i stykker, er de første spørgsmål altid de samme. Hvad er denne komponent? Hvad er den forbundet til? Hvad blev ændret? Hvem ejer den? Hvis svarene tager en time at finde, trækker en hændelse, der kunne være rettet på minutter, i langdrag. Når en ændring planlægges, afgør de samme spørgsmål, om du forstår risikoen. Et godt billede af servicen og dens dele er et af de mest nyttige ting, et driftsteam kan have.

Det er også en af de sværeste at holde sand. Dokumenter over infrastrukturen, tegnet én gang, er forældede inden for uger. Databaser over komponenter, vedligeholdt i hånden, er forkerte på måder, ingen kan se. Agile og cloudbaserede arbejdsmåder gør det værre på én måde, med mange små, hurtigt skiftende dele, og bedre på en anden, fordi konfiguration kan skrives som kode, gemmes i versionsstyring og anvendes automatisk.

Den engelske Wikipedias artikel om configuration management beskriver det som en styringsproces til at etablere og vedligeholde konsistens mellem et produkts egenskaber og dets krav, design og driftsinformation gennem dets levetid, med rødder i det amerikanske forsvarsministerium i 1950'erne. Artiklen om configuration management databases beskriver ITIL-begrebet for lageret af konfigurationsitems og deres relationer. Artiklen om infrastructure as code beskriver at styre ressourcer gennem maskinlæsbare definitionsfiler. Tilsammen giver de det traditionelle syn og det moderne, og dette emne forbinder dem.

## Kernebegreber

### Konfigurationsstyring generelt

Ifølge Wikipedia bruges konfigurationsstyring (CM) i militære systemer, i IT-servicestyring under ITIL og i anlægsteknik. Dens historie begynder med det amerikanske forsvarsministerium i 1950'erne som en teknisk disciplin for hardware, hvor militære standarder i slutningen af 1960'erne og 1970'erne gjorde den til en disciplin i sig selv. Artiklen nævner flere standarder, inklusive ANSI/EIA-649, ISO 10007 (udgaven fra 2017) og IEEE 828-2012. Kernedisciplinerne, den opregner, fra militære håndbøger og EIA-standarden, er:

| Disciplin | Hvad den gør |
|---|---|
| **Planlægning og styring** | En plan, der dækker personer, uddannelse, navngivningskonventioner, audits og leverandørkrav |
| **Konfigurationsidentifikation** | At fastsætte og vedligeholde baselines, der definerer arkitektur og komponenter; de sporede produkter er **konfigurationsitems (CI'er)** |
| **Konfigurationskontrol** | At evaluere ændringsanmodninger og godkende eller afvise dem |
| **Konfigurationsstatusregnskab** | At registrere og rapportere CI-beskrivelser og afvigelser fra baselinen |
| **Verifikation og audit** | Uafhængige tjek af, at systemet matcher sin dokumentation og sine krav |

En **baseline** er et aftalt referencepunkt; når en egenskab først er baselinet, går ændringer gennem formel kontrol, evalueres, godkendes og re-baselines derefter. Artiklen skelner konfigurationsstyring fra aktivstyring, som fokuserer på finansiel regnskabsføring og værdien af IT-aktiver (se Emne 4.1 — Styring af IT-aktiver).

### Softwarekonfigurationsstyring

Artiklen beskriver softwarekonfigurationsstyring som at identificere softwareegenskaber på forskellige tidspunkter og kontrollere ændringer for at bevare integritet og sporbarhed, med de samme fire procedurer: identifikation, kontrol, statusregnskab og audits. Versionsstyringssystemer, byggeværktøjer og releaseregistre er moderne instanser.

### Konfigurationsstyringsdatabasen

Wikipedia beskriver en **konfigurationsstyringsdatabase (CMDB)** som et ITIL-begreb for en database, der gemmer information om en organisations hardware- og softwareaktiver, CI'erne, og relationerne mellem dem. Den "repræsenterer den autoriserede konfiguration af de væsentlige komponenter i IT-miljøet". Nøglepunkter fra artiklen:

- **CI'er har egenskaber** som en identifikator, navne, beskrivelser, ejerskab og vigtighed, som kan tælle i hundredvis.
- **Relationer** forbinder som regel et kilde-CI med et mål-CI. Mere avancerede relationer tilføjer en beskriver, som at en database er en komponent af en applikation.
- **Federation:** implementeringer fødererer ofte data fra kilder som aktivstyring, så hver kilde beholder kontrollen over sine data; artiklen kontrasterer dette med at kopiere data ind i CMDB.
- **Anvendelser:** konsekvensanalyse, rodårsagsanalyse, ændringsstyring, hændelseshåndtering, lager og builds.
- **CI-typer:** hardware, software, kommunikation og netværk, placering, dokumentation og mennesker; modne organisationer tilføjer forretningstyper som produkter og leverandører.
- **Udfordringer:** relevans (at indsamle data over hvert CI's livscyklus), vedligeholdelse (at holde datakvaliteten høj, hvilket kræver flere specialistroller) og anvendelighed (CMDB'er er ofte almindelige databaser, der mangler visualisering, så et yderligere applikationslag kan være nødvendigt).

Artiklen nævner automatisk opdagelse af CI'er og ændringssporing som nøglefaktorer for succes. Den angiver ingen grundlæggelsesdato, ingen specifik ITIL-version og ingen adoptionsdata, og den er markeret som i behov af flere henvisninger. Den siger også, at ITIL omdøbte processen til Service Asset and Configuration Management i ITIL version 3 (dette kommer fra artiklen om configuration management).

### Infrastruktur som kode

Artiklen om infrastructure as code beskriver praksissen at styre og provisionere datacenterressourcer gennem maskinlæsbare definitionsfiler, frem for ved manuel opsætning eller interaktive værktøjer, med definitioner holdt i versionsstyring. Den skelner mellem:

- **Deklarative** tilgange, som beskriver den ønskede sluttilstand og lader systemet finde ud af trinnene, og **imperative** tilgange, som angiver kommandoer i rækkefølge. Artiklen siger, at IaC oftere bruger deklarative definitioner.
- **Push**-metoder, hvor et kontrollerende system sender instruktioner til servere, og **pull**-metoder, hvor servere henter deres egne instruktioner.

Den nævner mange værktøjer fra CFEngine (1993) til Terraform, Ansible, Puppet, Chef, Pulumi og OpenTofu og relaterer praksissen til DevOps ved at involvere udviklere i konfiguration og bringe drift ind tidligere. Dens påstande om fordele, om omkostning, hastighed og reduceret menneskelig fejl, er mærket som i behov af henvisninger. Den henviser til en rapport fra 2020 fra Unit 42, der fandt omkring 200.000 potentielle sårbarheder i IaC-skabeloner, en påmindelse om, at kode også kan bære fejl. Artiklen nævner ikke konfigurationsdrift eller idempotens.

### Deklareret og opdaget konfiguration

En nyttig måde at tænke på moderne konfigurationsstyring er, at der er to kilder til sandhed, og at værdien ligger i at sammenligne dem:

| Kilde | Hvad den siger | Styrke | Svaghed |
|---|---|---|---|
| **Deklareret** (kode, definitioner i versionsstyring) | Hvad vi har til hensigt, at systemet skal være | Kan gennemgås, versioneret, gentagelig | Passer måske ikke til det, der kører |
| **Opdaget** (scanninger, cloud-API'er, agenter) | Hvad der findes nu | Afspejler virkeligheden | Siger ikke, hvad der er tilsigtet eller hvorfor |

En CMDB fodret af begge kan vise **drift**, forskellen mellem tilsigtet og faktisk tilstand. De kilder, der er læst til denne vejledning, bruger ikke ordet, men det navngiver det problem, som CM-disciplinerne statusregnskab og audit er til for at fange.

### Konfigurationsstyring og ændring

Konfigurationskontrol og ændringsunderstøttelse er tætte partnere (se Emne 3.4 — Ændringsunderstøttelse). CM-disciplinerne siger, at ændringer af baselinede items evalueres og godkendes. I en pipelinebaseret opsætning gennemgås og testes en ændring af den kode, der definerer infrastrukturen, som enhver anden, og pipelinens registrering viser, hvem der ændrede hvad og hvornår. CMDB eller dens ækvivalent afspejler derefter resultatet.

### Anvendelser i servicestyring

De relationer, der er registreret i konfigurationsdata, besvarer spørgsmål på tværs af de andre praksisser:

- **Hændelser:** hvad afhænger af denne svigtende komponent, og hvem ejer den (se Emne 3.2 — Hændelseshåndtering)?
- **Problemer:** hvilke komponenter var involveret i gentagne hændelser (se Emne 3.3 — Problemhåndtering)?
- **Ændringer:** hvad er sprængradius for denne ændring?
- **Kontinuitet:** hvad skal genoprettes, og i hvilken rækkefølge (se Emne 3.12 — Styring af servicekontinuitet)?
- **Sikkerhed:** hvad er eksponeret, og hvad er ændret?

### Kildernes grænser

Artiklen om configuration management er markeret som muligvis i behov af en omskrivning og siger lidt om praktisk implementering. CMDB-artiklen har intet kritikafsnit og få henvisninger. Erfaringen fra feltet er, at CMDB'er ofte fejler ved at forsøge at rumme for meget, for nøjagtigt, for længe. Behandl det som praktisk erfaring, som denne vejledning tilbyder, ikke et fund fra kilderne.

## God praksis

1. **Start fra de spørgsmål, I skal besvare.** List de spørgsmål, hændelsesresponders, ændringsgennemgangere og kontinuitetsplanlæggere stiller, som "hvad afhænger af dette?" og "hvem ejer det?". Registrér kun det, der besvarer dem.
2. **Definér et lille sæt konfigurationsitemtyper.** Begynd med services, applikationer, værter eller containere, databaser og vigtige eksterne afhængigheder. Tilføj typer, når et spørgsmål kræver dem.
3. **Registrér relationer, ikke kun items.** Fang hvilke items der afhænger af hvilke, og hvilken service de understøtter. Relationer gør dataene nyttige til konsekvensanalyse.
4. **Navngiv en ejer for hvert item.** Et item uden ejer er en risiko. Gør ejerskab til en del af, hvordan items oprettes.
5. **Hold den tilsigtede konfiguration i versionsstyring.** Udtryk infrastruktur og konfiguration som kode, gennemgå den som anden kode, og lad pipelinen anvende den. Repositoryet er så en registrering af hensigt og historik.
6. **Brug opdagelse til at finde virkeligheden.** Scan netværk og cloudkonti for at se, hvad der findes, og sammenlign med den deklarerede konfiguration. Undersøg forskelle (drift) i stedet for at ignorere dem.
7. **Fødérer i stedet for at kopiere, hvor I kan.** Lad hver datakilde (aktivregister, cloudkonti, udrulningsværktøjer) eje sine fakta, og link til dem fra konfigurationsdata, som CMDB-artiklen beskriver.
8. **Automatisér opdateringer.** Fodr konfigurationsdata fra pipelinen og fra opdagelse, så de ændrer sig, når systemet gør. Manuelle opdateringer vil komme bagud.
9. **Baseline det, der betyder noget.** For kritiske services registrér den godkendte konfiguration, og anvend formel ændringskontrol på afvigelser fra den. For resten er lettere kontrol nok.
10. **Revidér jævnligt.** Sammenlign data med virkeligheden for en stikprøve af items hvert kvartal, og ret den proces, der ligger bag enhver forskel. Det er verifikations- og auditdisciplinen i praksis.
11. **Gør data nemme at bruge.** Giv visualisering og søgning til responders og planlæggere, for data, der ikke kan læses hurtigt, vil ikke blive brugt.
12. **Hav sikkerhed for øje.** Behandl konfigurationskode som følsom, scan skabeloner for svagheder, og kontrollér, hvem der kan ændre baselinen. Unit 42-tallet i artiklen om infrastructure as code er en påmindelse om risikoen.

## Spørgsmål til diskussion i teamet

**Når en hændelse sker, hvor lang tid tager det os at finde ud af, hvad der afhænger af den svigtende komponent?**

Se på den seneste hændelse og den tid, der blev brugt på dette spørgsmål. Spørg, hvor svaret kom fra: et diagram, en person, en søgning. Facilitatoren kan spørge, hvad der ville have sparet mest tid. Ofte er det en liste over afhængigheder og ejere for de vigtigste services. Aftal at producere en for én service.

**Hvor er vores infrastruktur defineret, og matcher det, der kører?**

Spørg, om de vigtigste miljøer er bygget fra kode, og hvor ofte nogen ændrer dem i hånden. Se efter forskelle. Hvis I ikke ved det, så planlæg en sammenligning for ét miljø. Drøft, hvordan man forhindrer manuelle ændringer eller opdager dem hurtigt.

**Hvilke items i vores konfigurationsregistre har ingen ejer eller er ikke blevet bekræftet for nylig?**

Tag en stikprøve, og tæl. Spørg, hvorfor de er i den tilstand: ingen proces for ejere, ingen påmindelse, ingen konsekvens. Drøft en let mekanisme, som en årlig bekræftelse eller et påkrævet ejertag ved oprettelse. Vælg én.

**Hvilke data gemmer vi, som ingen bruger?**

List felterne og registreringstyperne, og spørg, hvem der brugte dem det seneste kvartal. CMDB-artiklen nævner vedligeholdelse som en kerneudfordring, og ubrugte data er en omkostning uden gavn. Fjern eller stop med at vedligeholde det, ingen bruger.

**Hvad ville vi have brug for at se for at godkende en ændring af en kritisk service med tillid?**

Spørg gennemgangerne. Typiske svar: hvad ændringen berører, hvad der afhænger af den, hvad den gjorde sidste gang. Spørg, hvilke af disse konfigurationsdata kan give. Vælg én manglende brik, der skal tilføjes.

**Hvem må ændre baselinen for vores kritiske services, og hvordan ved vi, når de gør det?**

Bed om listen og om evidens for ændringer. Drøft, om ændringer uden for pipelinen opdages. Aftal, hvordan drift vil blive fundet, og hvem der handler.

## I praksis: et agilt ITIL-eksempel

En national skattemyndighed driver 120 applikationer og en blanding af servere på stedet og cloudservices. Et team på seks driftsingeniører vedligeholder en CMDB, der blev indlæst fra et regneark for tre år siden. Under en større hændelse på indberetningsportalen opdager ingeniørerne, at CMDB'en opfører en databaseserver, der blev afviklet et år tidligere, og udelader den load balancer, der faktisk svigtede. Hændelsen tager tre timer længere at løse, fordi det tager så lang tid at finde ud af, hvad portalen afhænger af.

Driftschefen og en ingeniør gennemgår, hvilke spørgsmål responderne stiller. De indsnævrer CMDB'ens omfang til services, applikationer, de vigtigste infrastrukturkomponenter bag dem og vigtige eksterne afhængigheder og dropper typer med lav værdi. Infrastrukturen til indberetningsportalen flyttes ind i kode i versionsstyring, og pipelinen skriver en registrering af hver udrullet komponent til CMDB'en. En opdagelsesscanning af netværket og cloudkontiene kører natligt, og en rapport lister forskelle mellem deklarerede og opdagede data. Hvert item har et ejerfelt, som rapporten også tjekker. Et enkelt afhængighedsbillede for indberetningsportalen bygges ud fra dataene.

Et kvartal senere er portalens afhængighedsbillede nøjagtigt nok til, at det næste hændelsesteam bruger det i de første ti minutter. Den natlige forskelsrapport finder 14 ustyrede servere, hvoraf de fleste er afviklet eller gjort krav på af ejere. Problemer består. Services uden for indberetningsportalen stoler stadig på de gamle data, og ét team bliver ved med at lave håndændringer på en databaseserver, som pipelinen derefter overskriver, hvilket forårsager et kort nedbrud. Driftschefen udvider tilgangen til de næste tre services, tilføjer en regel om, at produktionsændringer går gennem pipelinen, og beder opdagelsesrapporten markere manuelle ændringer.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams definerer konfiguration gennem kode. Sæt infrastruktur og indstillinger i versionsstyring, gennemgå dem, og lad pipelinen anvende dem. Tag ressourcer med ejer og service, og beskriv afhængigheder i repositoryet eller serviceregistreringen.

### Service- og driftsteams

Driftsteams bruger og vedligeholder konfigurationsdata. Hold omfanget lille, sammenlign deklareret og opdaget konfiguration, og jag drift. Før, hvad I lærer af hændelser, tilbage i de typer og relationer, I registrerer.

### Ledelse og governance

Ledere afgør, hvor megen indsats konfigurationsdata fortjener. Spørg, hvilke beslutninger de understøtter, som konsekvensanalyse og kontinuitetsplanlægning, og bedøm efter brug. Undgå at finansiere en kæmpedatabase for dens egen skyld. Støt de pipelinekontroller, der holder registre sande.

### Kunder og brugere

Kunder og brugere har gavn, når hændelser løses hurtigere og ændringer ødelægger mindre, hvilket gode konfigurationsdata hjælper med. De ser sjældent dataene. Spørg leverandører, hvordan de ved, hvad en ændring påvirker, og hvordan de finder årsagen til et nedbrud.

## Almindelige fejlmønstre

- **At forsøge at registrere alt.** Dataene er for store til at holde sande. I stedet: start fra spørgsmålene og de kritiske services.
- **Manuel vedligeholdelse.** Registre kommer bagud. I stedet: fodr data fra pipelinen og fra opdagelse.
- **Ingen relationer.** Items listes, men er ikke forbundet. I stedet: fang afhængigheder og den service, hvert item understøtter.
- **Ingen ejere.** Ingen bekræfter eller retter registre. I stedet: kræv en ejer, og tjek jævnligt.
- **Håndændringer uden for pipelinen.** Virkelighed og hensigt driver fra hinanden. I stedet: route ændringer gennem pipelinen, og opdag drift.
- **Ulæselige data.** Responders kan ikke bruge databasen. I stedet: giv søgning og visualisering.
- **At kopiere i stedet for at federere.** Duplikerede data bliver forældede. I stedet: link til den kilde, der ejer fakta.
- **Konfigurationskode behandlet som harmløs.** Skabeloner bærer sårbarheder. I stedet: scan og gennemgå dem.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Omfang og relationer | Komponenter er kendt uformelt | Nogle services har komponentlister | Centrale services har items, ejere og afhængigheder registreret | Dækning og nøjagtighed måles, og huller lukkes | Konfigurationsdata spænder over teams, clouds og leverandører |
| Deklareret konfiguration | Systemer konfigureres i hånden | Nogle miljøer bruger kode | Infrastruktur og konfiguration for centrale services er kode i versionsstyring | Ændringshistorik og drift spores | Konfigurationskode deles og genbruges på tværs af teams |
| Opdagelse og verifikation | Virkeligheden antages | Lejlighedsvise scanninger køres | Jævnlig opdagelse sammenlignes med deklarerede data | Forskelle og deres årsager måles og reduceres | Opdagelse og verifikation er automatiseret i hele organisationen |
| Brug af data | Data konsulteres sjældent | Bruges i nogle hændelser | Bruges rutinemæssigt til hændelser, ændringer og kontinuitetsplanlægning | Brug og gavn måles, og data forbedres | Data understøtter beslutninger i hele organisationen og med partnere |

## Tjekliste

- [ ] Vi har listet de spørgsmål, vores responders og gennemgangere har brug for, at konfigurationsdata besvarer.
- [ ] Vi registrerer et lille sæt itemtyper med ejere og relationer.
- [ ] Infrastruktur og konfiguration for centrale services er i versionsstyring.
- [ ] Produktionsændringer af de services går gennem pipelinen.
- [ ] Opdagelsesresultater sammenlignes med deklareret konfiguration efter en plan.
- [ ] Forskelle (drift) undersøges og rettes.
- [ ] Registre fodres automatisk fra pipelinen og opdagelse, hvor det er muligt.
- [ ] En stikprøve af registre revideres mod virkeligheden hvert kvartal.
- [ ] Data kan søges og visualiseres let af responders.
- [ ] Konfigurationskode gennemgås og scannes for svagheder.

## AI-prompts

**Formål: at afgøre, hvad der skal registreres, ved at liste de spørgsmål, I skal besvare.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at opsummere drift mellem deklareret og opdaget konfiguration.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Formål: at bygge et afhængighedsbillede for én service.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en kvartalsvis revision af konfigurationsregistre.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): brug den til at planlægge, hvad der skal registreres, hvordan det holdes sandt, og hvordan det bruges.
- [change-request](../../../../skills/change-request/SKILL.md): brug den til at skrive ændringsregistreringer, der henviser til de berørte items.
- [runbook](../../../../skills/runbook/SKILL.md): brug den til at gøre konfigurationsviden til trin, responders kan følge.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): brug den til at placere services, applikationer og infrastruktur i et arkitektonisk billede.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): brug den til at holde konfiguration og design under sikker forandring over tid.

## Vigtigste kilder

- **Configuration management** (Wikipedia): konfigurationsstyringens historie, kernediscipliner, baselines og standarder.
- **Configuration management database** (Wikipedia): definitionen, indholdet, anvendelserne og udfordringerne ved en CMDB.
- **Infrastructure as code** (Wikipedia): at styre ressourcer gennem maskinlæsbare definitioner, med en liste over værktøjer og noter om fordele og risici.
- **ITIL** (Wikipedia): det rammeværk, hvori CMDB og konfigurationsstyring optræder.

## Referencer

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
