# Ændringsunderstøttelse

**Ændringsunderstøttelse findes for at lade gavnlige ændringer ske sikkert og hurtigt, og evidensen fra forskning i softwarelevering er, at risiko bedre kontrolleres af små ændringer, kollegagennemgang og automatiserede tjek end ved at sende hver ændring til et udvalg.**

## Hvorfor det betyder noget

Forandring er der, hvor kontinuerlig levering og servicestyring oftest støder sammen. Leveranceteams vil udgive ofte, fordi små, hyppige ændringer er lettere at forstå og fortryde. Drift og governance vil undgå nedbrud og føre registre, fordi tidligere ændringer har ødelagt services. Begge har ret. Uenigheden handler som regel om, hvordan risiko kontrolleres: ved godkendelse før ændringen eller ved ændringens kvalitet og hastigheden af genopretning.

Praksissen kaldes ændringsunderstøttelse (change enablement) i ITIL 4. Det nye navn er en formålserklæring. Målet er at lade gavnlige ændringer ske, ikke at forhindre ændringer. Ældre ITIL-versioner kaldte praksissen ændringsstyring (change management) og gav den en stærk rolle i godkendelser og tidsplaner, hvilket mange teams oplevede som en port.

Dette emne bruger den bedste tilgængelige evidens: DORA-forskningsprogrammets vejledning om ændringsgodkendelse og dets målinger af softwareleveringens ydeevne, læst fra programmets egne sider. DORAs sider rapporterer, at tung ekstern godkendelse er forbundet med dårligere leveringsydeevne. De giver også ingen effektstørrelser eller statistiske detaljer, og de henviser til en rapport fra 2019 for den underliggende forskning, så behandl vejledningen som stærk, men ikke endelig, og afprøv den i jeres egen kontekst. ITIL-ordforrådet her kommer fra bredt udgivne beskrivelser, som denne vejledning ikke kunne tjekke mod rammeværksejerens tekst (se Emne 2.2 — ITIL).

## Kernebegreber

### Hvad ændringsunderstøttelse gør

En **ændring** er tilføjelse, ændring eller fjernelse af noget, der kunne påvirke en service. Ændringsunderstøttelse er praksissen at sikre, at ændringer vurderes, godkendes og planlægges, så risikoen styres, og gavnlige ændringer går videre. Praksissen fører også en registrering af, hvad der blev ændret, hvilket er afgørende for hændelsesindsatsen, fordi mange hændelser starter med en nylig ændring (se Emne 3.2 — Hændelseshåndtering).

### Typer af ændringer

ITIL 4 beskrives bredt som værende opmærksom på tre typer ændringer, hver med en forskellig vej:

| Type | Hvad det er | Typisk vej |
|---|---|---|
| **Standardændring** | En ændring med lav risiko, der er godt forstået, og som følger en dokumenteret procedure | Forhåndsgodkendt; registreret, uden godkendelse i hvert enkelt tilfælde |
| **Normal ændring** | En ændring, der kræver vurdering og godkendelse | Vurderet for risiko og påvirkning, derefter godkendt af den rette person eller gruppe |
| **Hasteændring** | En ændring, der skal foretages akut, for eksempel for at genoprette service | Fremskyndet godkendelse, med fuldere gennemgang bagefter |

Navnene og de præcise definitioner bør tjekkes mod ejerens publikationer. Princippet er stabilt: match kontrolniveauet med risikoen.

### Ændringsmyndighed

Hver type ændring har brug for nogen med beføjelse til at godkende den. I ældre praksis var det ofte et change advisory board (CAB). DORA-siden afskaffer ikke CAB; den foreslår en "strategisk" rolle, koordinering på tværs af teams, støtte til procesforbedring og beslutninger om forretningsmæssige afvejninger som time to market mod risiko. For rutineændringer, siger den, implementeres godkendelse bedst gennem kollegagennemgang under udviklingen, understøttet af automatisering.

### Hvad DORA rapporterer om godkendelse

DORAs side om at strømline ændringsgodkendelse siger:

- Tung ekstern godkendelse, som et CAB eller en seniorleders underskrift, er forbundet med dårligere softwareleveringsydeevne.
- Siden rapporterer ingen evidens for, at mere formel ekstern gennemgang sænker andelen af mislykkede ændringer.
- Den argumenterer for, at tung godkendelse bremser leveringen og fører til større, sjældnere releases med højere risiko, og siger, at dens data understøttede denne hypotese.

Siden nævner faldgruber: at stole på et centralt CAB til at fange fejl, at anvende den samme godkendelsesproces på alle ændringer uanset risiko, at undlade at forbedre processen mod målinger og at tilføje proces og godkendelser som reaktion på ustabilitet i produktion, hvilket den siger har tendens til at gøre tingene værre. "Ingen evidens blev fundet" betyder, at evidens for fordelen ikke blev fundet; det beviser ikke, at ekstern gennemgang ingen virkning har. Siden giver ingen kriterier for, hvad der tæller som en ændring med høj risiko, ingen vejledning om specifikke regler og ingen overgangsplan for regulerede brancher.

### Alternativet: kontrol i pipelinen

DORA foreslår at opfylde funktionsadskillelse gennem kollegagennemgang registreret i udviklingsplatformen og at bruge kontinuerlig test, kontinuerlig integration og overvågning til at opdage, forhindre og rette dårlige ændringer tidligt. Den foreslår også at behandle platformen som et produkt, der giver udviklere hurtig feedback på sikkerhed, ydeevne, stabilitet og fejl, at markere ændringer med høj risiko til ekstra opmærksomhed og at gøre den normale ændringsproces hurtig nok til at håndtere hastesager. Kontrollen ligger i den evidens, pipelinen producerer: hvem der gennemgik, hvilke tests der bestod, hvad der blev udrullet, og hvordan det kan fortrydes.

### At måle ændringer

DORAs side om målinger af softwareleveringens ydeevne opregner fem målinger:

| Måling | Hvad det er | Gruppe |
|---|---|---|
| Ændringens gennemløbstid | Tid fra en ændring er committet til versionsstyring til udrulning i produktion | Gennemløb |
| Udrulningsfrekvens | Hvor ofte udrulninger finder sted | Gennemløb |
| Genopretningstid efter mislykket udrulning | Hvor lang tid det tager at komme sig efter en udrulning, der svigter og kræver øjeblikkelig indgriben | Gennemløb |
| Andel af mislykkede ændringer | Andelen af udrulninger, der kræver øjeblikkelig indgriben, som en tilbagerulning eller hotfix | Ustabilitet |
| Omarbejdsrate for udrulninger | Andelen af udrulninger, der er uplanlagte og skyldes en produktionshændelse | Ustabilitet |

Siden siger, at hastighed og stabilitet ikke er afvejninger: målingerne er korrelerede for de fleste teams, og de bedste klarer sig godt på alle fem. Den advarer mod at sætte målingerne som mål (Goodharts lov), mod at stole på én enkelt måling, mod at sammenligne meget forskellige applikationer og mod at konkurrere med andre teams. Den foreslår, at teams forbedrer sig mod deres egen tidligere ydeevne. Siden giver ingen benchmark-tærskler eller formler, så definér hver måling for jeres egen kontekst, før I bruger den (se Emne 5.6 — Metrikker og måling).

### Registre og konfigurationssynet

En ændringsregistrering bør sige, hvad der blev ændret, hvorfor, hvem der godkendte det, og hvornår det blev gjort, og helst linke til de berørte services. Versionsstyrings-, bygge- og udrulningsværktøjer kan producere meget af dette automatisk. At knytte ændringer til servicernes konfiguration understøtter konsekvensanalyse og hændelsesindsats (se Emne 4.4 — Konfigurationsstyring).

### Ændring og release

Ændringsunderstøttelse afgør, om en ændring må gå videre. Release- og deploymentstyring får den i produktion (se Emne 3.5 — Release- og deploymentstyring). I kontinuerlig levering smelter de to i praksis sammen, med godkendelser indlejret i pipelinen.

## God praksis

1. **Klassificér ændringer efter risiko.** Definér en kort liste af ændringstyper, med kriterier og eksempler. Match vejen med risikoen, så rutineændringer er hurtige, og risikable ændringer får opmærksomhed.
2. **Forhåndsgodkend ændringer med lav risiko.** For ændringer, der er godt forstået, testet og reversible, aftal en standardprocedure, og lad dem gå videre uden godkendelse i hvert enkelt tilfælde. Registrér dem automatisk.
3. **Gør kollegagennemgang til standardgodkendelsen.** Kræv, at en anden person gennemgår ændringer før sammenfletning, og registrér gennemgangen i udviklingsplatformen. Det opfylder funktionsadskillelse for de fleste ændringer, som DORA-siden beskriver.
4. **Automatisér tjekkene.** Kør tests, sikkerhedsscanninger og politiktjek ved hver ændring, og gør resultaterne til en del af registreringen. En godkendelse baseret på evidens er stærkere end en baseret på en formular.
5. **Hold ændringer små.** Små ændringer er lettere at gennemgå, teste og fortryde. Hvis en ændring føles risikabel, så spørg, om den kan deles.
6. **Gør tilbagerulning let og indøvet.** Vid for hver ændringstype, hvordan den fortrydes, og øv det. Evnen til at komme sig hurtigt mindsker behovet for at forudsige hver fejl.
7. **Markér ændringerne med høj risiko.** Definér signaler, som ændringer af betalingslogik eller delt infrastruktur, der udløser ekstra gennemgang. Anvend den tungere vej kun på dem.
8. **Giv ændringsmyndigheden en strategisk rolle.** Brug ethvert centralt udvalg til at koordinere på tværs af teams, løse konflikter og træffe forretningsmæssige afvejninger. Brug det ikke som kontrolpunkt for hver ændring.
9. **Håndtér hastesager med den normale vej.** Gør den almindelige proces hurtig og pålidelig nok til, at hasteændringer følger den, med gennemgang bagefter. Hasteveje, der bruges ofte, signalerer, at den normale vej er for langsom.
10. **Tilføj ikke godkendelser efter en hændelse som standard.** DORAs side siger, at tilføjelse af proces som reaktion på ustabilitet har tendens til at gøre tingene værre. Spørg først, om rettelsen er bedre tests, mindre ændringer eller hurtigere genopretning.
11. **Mål processen.** Spor gennemløbstid, tid brugt på at vente på godkendelse, andelen af ændringer, der går igennem uden manuel godkendelse, og andelen af mislykkede ændringer. Brug målingerne til at forbedre, ikke til at rangere teams.
12. **Forklar processen.** DORAs side bemærker, at klar kommunikation af den eksisterende proces og hjælp til teams med at navigere i den hænger sammen med bedre ydeevne, selv før du ændrer den. Udgiv en vejledning på én side med eksempler.

## Spørgsmål til diskussion i teamet

**Hvor stor en andel af vores ændringer har lav risiko og er godt forstået, og hvordan godkendes de i dag?**

Tag en måneds ændringer, og sortér dem. De fleste teams finder, at langt de fleste er rutine. Spørg, hvor længe rutineændringer venter på godkendelse, og hvad godkenderen tilføjer. Facilitatoren kan spørge, om nogen husker en rutineændring, som godkendelsen forhindrede i at mislykkes. Brug svaret til at identificere en første kandidat til forhåndsgodkendelse.

**Hvad fanger vores godkendelsestrin egentlig?**

List de seneste ti ændringer, der blev afvist eller forsinket ved godkendelse, og hvorfor. Sammenlign med de problemer, der nåede produktion på trods af godkendelse. Hvis godkendelse fanger lidt, så spørg, hvad der ville fange de samme problemer tidligere, som tests eller kollegagennemgang. Husk, at DORA-siden rapporterer ingen evidens for, at mere formel ekstern gennemgang sænker andelen af mislykkede ændringer. Aftal én ændring, der skal prøves.

**Hvordan ville vi fortryde en dårlig ændring, og hvor hurtigt?**

Vælg en nylig ændring, og beskriv tilbagerulningen. Hvis den er uklar, utestet eller manuel, er det risikoen. Spørg, hvor lang tid det ville tage, og hvem der ville gøre det. Aftal at øve én tilbagerulning i denne måned. Et team, der kan komme sig på få minutter, kan acceptere mere forandring.

**Hvilke af vores ændringer har brug for ekstra opmærksomhed, og hvordan ville vi genkende dem?**

Saml eksempler på ændringer, der forårsagede alvorlige hændelser. Se efter træk, de deler: delt infrastruktur, sikkerhedskontroller, datamigreringer. Udkast tre signaler, der ville markere en ændring som højrisiko. Spørg, hvem der skal gennemgå markerede ændringer, og hvor hurtigt.

**Hvornår tilføjede vi sidst en kontrol efter en hændelse, og hjalp det?**

Bed om eksempler. List, hvad der blev tilføjet, de problemer det adresserede, og om problemet vendte tilbage. DORA-siden nævner at tilføje godkendelser som reaktion på ustabilitet som en faldgrube. Drøft, om et andet svar, som bedre tests eller mindre ændringer, ville have virket. Registrér én lære.

**Hvilken evidens ville en revisor acceptere fra vores pipeline i stedet for en underskrift?**

Bed en revisor eller compliancekollega om at deltage. List den evidens, pipelinen allerede producerer: gennemgange, testresultater, udrulningsregistreringer. Spørg, hvad der mangler. Mange revisorer accepterer registreret kollegagennemgang og automatiseret evidens, når den er pålidelig. Aftal en kort beskrivelse af kontrollen og en prøveperiode.

## I praksis: et agilt ITIL-eksempel

Et regionalt hospitals IT-afdeling understøtter et klinisk planlægningssystem, der opdateres af et internt team på syv. Hver ændring, fra en tastefejl til en databasemigrering, går til et ugentligt change advisory board. Små rettelser venter op til otte dage. Klinikere klager, og udviklerne er begyndt at samle rettelser i større releases for at undgå køen, hvilket gør hver release mere risikabel.

IT-chefen og udvalgets formand gennemgår et års ændringer. De fleste var små, to havde forårsaget hændelser, og ingen af dem var blevet fanget af udvalget. De designer en tilgang med tre baner. Standardændringer, som tekst- og konfigurationsændringer inden for aftalte grænser, med bestående automatiserede tests og en afprøvet tilbagerulning, forhåndsgodkendes og logges automatisk. Normale ændringer kræver en kollegagennemgang registreret i udviklingsplatformen og et tjek mod en kort liste af højrisikosignaler som ændringer af håndteringen af patientdata. Ændringer markeret som højrisiko går til udvalget, som mødes to gange om ugen. Hasteændringer følger den normale vej med en gennemgang efter implementeringen.

Efter fire måneder går standardændringer live inden for en dag, og udvalget ser omkring en femtedel af den mængde, det plejede. Andelen af mislykkede ændringer stiger ikke. Problemer består. To udviklere anvender højrisikosignalerne inkonsekvent, og én markeret ændring nåede udvalget sent, og intern revision beder om evidens for, at kollegagennemgange ikke er gummistempler. Teamet skriver eksempler på signalerne, tilføjer en stikprøvegennemgang af kollegagennemgange ved en senioringeniør og aftaler med revisionen at gennemgå evidensen ved det næste kvartalsmøde.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bærer det meste af kontrollen: gennemgang, tests, små ændringer og tilbagerulning. Byg dem ind i pipelinen, og gør evidensen synlig. Hold ændringer små, og fortæl driften, hvad der kommer. Brug ændringsprocessen som et sted at dele risikoinformation, ikke kun for at få tilladelse.

### Service- og driftsteams

Driftsteams ved, hvilke ændringer der har skadet services. Del den viden som signaler til ekstra gennemgang, og hjælp med at bygge tjek, der fanger dem tidligt. Støt lettere veje for ændringer med lav risiko, og før de registre, der gør hændelsesindsatsen hurtigere.

### Ledelse og governance

Ledere afgør, hvor megen godkendelse organisationen kræver. DORA-vejledningen foreslår at bede om evidens for kontrol og ikke om underskrifter på hver ændring. Støt måling af gennemløbstid og andel af mislykkede ændringer, og undgå at tilføje proces efter hændelser uden at undersøge årsager. Aftal med revisionen, hvilken evidens der er acceptabel.

### Kunder og brugere

Kunder og brugere har gavn af hyppige små forbedringer og færre store forstyrrelser. Forvent at få besked om ændringer, der påvirker dig, i almindeligt sprog og i god tid. Hvis du har særlige behov, som frysperioder, så fortæl leverandøren det tidligt, så der kan tages højde for dem.

## Almindelige fejlmønstre

- **Én vej for hver ændring.** Rutineændringer står i kø bag risikable. I stedet: klassificér efter risiko, og giv hver klasse sin egen vej.
- **Godkendelse som eneste kontrol.** En underskrift træder i stedet for kvalitet. I stedet: byg tests, gennemgang og tilbagerulning ind i pipelinen.
- **Et udvalg, der gennemgår, hvad det ikke kan vurdere.** Medlemmer godkender ændringer, de ikke forstår. I stedet: send ændringer til folk med viden, og brug udvalget til koordinering.
- **At samle ændringer for at undgå køen.** Teams kombinerer ændringer, hvilket gør hver release mere risikabel. I stedet: gør køen kort nok til, at små ændringer er den nemme vej.
- **At tilføje kontroller efter hver hændelse.** Processen vokser, og farten falder. I stedet: led efter årsagen, og ret den med tests, mindre ændringer eller hurtigere genopretning.
- **Gummistempel-kollegagennemgang.** Gennemgange er formelle, men overfladiske. I stedet: tag stikprøver af gennemgange, del eksempler på gode, og hold ændringer små nok til at gennemgå.
- **Ingen tilbagerulning.** Ændringer kan ikke fortrydes. I stedet: kræv og indøv en tilbagerulning for hver ændringstype.
- **At manipulere målingerne.** Teams deler ændringer eller skjuler fejl for at tage sig godt ud. I stedet: brug flere målinger, gennemgå dem samlet, og fokusér på forbedring over tid.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Klassificering og veje | Alle ændringer følger én vej eller ingen | Nogle teams har en hurtig vej for enkle ændringer | Ændringstyper med kriterier og adskilte veje er standard | Andelen af ændringer pr. vej og ventetider måles og justeres | Veje justeres på tværs af teams ud fra fælles evidens |
| Godkendelse og evidens | Godkendelse sker ved underskrift eller registreres ikke | Nogle ændringer gennemgås af en kollega | Kollegagennemgang og automatiserede tjek registreres for de fleste ændringer | Gennemgangskvalitet og evidens udtages i stikprøver og forbedres | Evidens flyder automatisk til revision og partnere |
| Genopretning | Tilbagerulning er ad hoc | Nogle ændringer har tilbagerulningstrin | Tilbagerulning er defineret og indøvet for hver ændringstype | Genopretningstid måles og reduceres | Genopretningspraksisser deles og afprøves på tværs af teams og leverandører |
| Måling og forbedring | Få målinger | Nogle teams sporer gennemløbstid | Gennemløbstid, frekvens, andel af mislykkede ændringer og genopretningstid spores pr. service | Målinger driver planlagte forbedringer og bruges ikke som mål | Teams lærer af hinandens målinger og forbedrer på tværs af organisationen |

## Tjekliste

- [ ] Vi har defineret ændringstyper med kriterier og eksempler.
- [ ] Ændringer med lav risiko, som er godt forstået, er forhåndsgodkendt og registreres automatisk.
- [ ] Kollegagennemgang registreres i udviklingsplatformen for normale ændringer.
- [ ] Automatiserede tests og tjek kører ved hver ændring.
- [ ] Hver ændringstype har en tilbagerulning, der er indøvet.
- [ ] Vi har signaler, der markerer ændringer med høj risiko til ekstra opmærksomhed.
- [ ] Ethvert centralt udvalg har en klar rolle i koordinering og afvejninger.
- [ ] Vi sporer ændringens gennemløbstid, udrulningsfrekvens, genopretningstid efter mislykket udrulning og andel af mislykkede ændringer for hver service.
- [ ] Vores revisorer har sagt, hvilken evidens de accepterer i stedet for underskrifter.
- [ ] Vi har en vejledning på én side om ændringsprocessen med eksempler.

## AI-prompts

**Formål: at klassificere sidste måneds ændringer efter risiko og godkendelsesvej.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Formål: at skrive en standardændringsprocedure.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede en drøftelse med en revisor om den evidens, vores pipeline producerer.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Formål: at designe et forsøg med lettere godkendelse.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [change-request](../../../../skills/change-request/SKILL.md): brug den til at udarbejde ændringsregistreringer, der bærer det, drift og revisorer har brug for.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): brug den, når en ændring er organisatorisk og kræver planlægning for mennesker såvel som systemer.
- [release-notes](../../../../skills/release-notes/SKILL.md): brug den til at fortælle brugere og servicedesken, hvad en ændring gør.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): brug den til at skelne reversible beslutninger, der kan træffes hurtigt, fra irreversible, der kræver mere omhu.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere og gennemgå de risici, ændring medfører, og hvordan de kontrolleres.

## Vigtigste kilder

- **Streamlining change approval** (DORA, dora.dev): forskningsprogrammets vejledning om kollegagennemgang, automatisering og et ændringsudvalgs rolle.
- **DORA's software delivery performance metrics** (dora.dev): definitioner og advarsler for ændringens gennemløbstid, udrulningsfrekvens, genopretningstid, andel af mislykkede ændringer og omarbejdsrate.
- **ITIL** (Wikipedia): baggrund om ITIL-versioner og skiftet til ITIL 4.
- **Continuous delivery** (Wikipedia): baggrund om praksisser, der gør små, hyppige ændringer sikre.

## Referencer

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
