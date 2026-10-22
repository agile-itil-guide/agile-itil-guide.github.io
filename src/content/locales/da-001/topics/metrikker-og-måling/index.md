# Metrikker og måling

**God måling hjælper et team med at se, om dets arbejde hjælper brugerne og bliver bedre, og den sikreste måde at bruge enhver måling på er som et spørgsmål til drøftelse, aldrig som et mål, der skal nås.**

## Hvorfor det betyder noget

Teams har brug for tal til at styre efter. Uden dem bygger beslutninger på hukommelse, høje stemmer og den, der talte sidst. Med de forkerte tal kan beslutninger blive værre end ingen: et team, der tæller lukkede tickets, lærer at lukke tickets hurtigt, uanset om brugernes problemer er løst. Måling er stærk, og den ændrer adfærd på måder, dens designere ikke altid har tænkt sig.

Denne vejledning har allerede brugt mange målinger: DORAs målinger af softwarelevering (se Emne 3.4 — Ændringsunderstøttelse), Kanban Guides fire flowmålinger (se Emne 1.5 — Kanban), serviceniveauindikatorer og -mål (se Emne 3.7 — Styring af serviceniveauer) og vagtbelastning (se Emne 3.10 — Overvågning og eventstyring). Dette emne samler dem, tilføjer målsætning med mål og nøgleresultater samt målinger af kundetilfredshed og stiller dem op mod fagets ældste advarsel: Goodharts lov.

[Wikipedia-artiklen om Goodharts lov](https://en.wikipedia.org/wiki/Goodhart%27s_law) giver læresætningen i dens sædvanlige form, "når en måling bliver et mål, holder den op med at være en god måling", og tilskriver den den britiske økonom Charles Goodhart, som i en artikel fra 1975 om britisk pengepolitik skrev, at enhver observeret statistisk regelmæssighed har tendens til at bryde sammen, når der lægges pres på den til styringsformål. Den sædvanlige ordlyd er senere, og artiklen tilskriver den Keith Hoskin (1996) og Marilyn Stratherns artikel fra 1997. Pointen har en lang historie i forskellige fagområder, og den er det rette udgangspunkt for dette emne.

## Kernebegreber

### Målinger, mål og Goodharts lov

En **måling** beskriver noget. Et **mål** er et tal, nogen forventes at nå. Skiftet fra det første til det andet er der, hvor problemerne begynder. Når folk belønnes eller straffes for et tal, finder de måder at flytte tallet på, som ikke er det samme som at forbedre det, tallet beskriver. Artiklen giver eksempler fra pengepolitik, skolesystemer og sundhedsvæsen. I en serviceorganisation er nemme eksempler: tiden til at lukke tickets falder, fordi tickets lukkes for tidligt, antallet af udrulninger stiger, fordi ændringer deles op, og tilgængeligheden ser ud til at stige, fordi nedbrud omklassificeres.

Løsningen er ikke at undlade at måle, men at måle omhyggeligt:

- Brug flere målinger, der trækker mod hinanden, som hastighed og kvalitet.
- Drøft tallene med dem, hvis arbejde de beskriver.
- Knyt ikke individuelle belønninger eller disciplinære skridt til et enkelt tal.
- Skift målinger, når de holder op med at være informative.

### Slags målinger

| Slags | Spørgsmål den besvarer | Eksempler |
|---|---|---|
| **Resultat** | Er brugere og forretning bedre stillet? | Brugertilfredshed, opgavesucces, omsætning, hændelser der skader brugere |
| **Flow** | Hvor godt bevæger arbejdet sig? | Cyklustid, gennemløb, arbejdselementets alder, igangværende arbejde |
| **Leveringsydeevne** | Hvor godt når ændringer produktion? | Ændringens gennemløbstid, udrulningsfrekvens, andel af mislykkede ændringer, genopretningstid |
| **Serviceniveau** | Opfylder servicen brugernes behov? | Tilgængelighed, latenstid, fejlrate mod mål |
| **Sundhed og bæredygtighed** | Kan det blive ved? | Vagtbelastning, toil, overarbejde, medarbejderstemning |
| **Omkostning** | Hvad koster det pr. enhed værdi? | Omkostning pr. transaktion eller pr. bruger |

Et afbalanceret sæt henter fra flere rækker, så forbedring af én ikke købes på en andens bekostning.

### DORA-målinger

DORAs målinger af softwareleveringens ydeevne er ændringens gennemløbstid, udrulningsfrekvens, genopretningstid efter mislykket udrulning, andel af mislykkede ændringer og omarbejdsrate for udrulninger. DORA-vejledningen om målingerne siger, at hastighed og stabilitet ikke er en afvejning, da målingerne korrelerer for de fleste teams. Den advarer mod at sætte dem som mål, mod at stole på kun én, mod at sammenligne meget forskellige applikationer og mod at konkurrere med andre teams, og råder til at forbedre sig mod sin egen tidligere ydeevne. Wikipedia-artiklen om DevOps tilføjer, at nogle eksperter kritiserede DORA-forskningens metodologi og målinger, så behandl dem som nyttige spørgsmål med grænser (se Emne 5.2 — DevOps).

### Flowmålinger

Kanban Guide definerer fire målinger: igangværende arbejde, gennemløb, arbejdselementets alder og cyklustid. Den bemærker, at teams kan omdøbe dem og bør tilføje andre efter behov, og siger, at målinger kun betyder noget, når de informerer praksisserne med at definere arbejdsgangen, styre elementerne i den og forbedre den. Arbejdselementets alder er særligt nyttig, fordi den viser problemer, mens der stadig er tid til at handle (se Emne 5.4 — Værdistrømsstyring).

### Serviceniveaumålinger

Serviceniveauindikatorer og -mål (se Emne 3.7 — Styring af serviceniveauer) giver det mest direkte billede af, hvad brugerne oplever. SRE-bogen argumenterer for nogle få indikatorer valgt ud fra det, brugerne bekymrer sig om, for percentiler og ikke kun gennemsnit og for mål, der ikke er perfektion. Fejlbudgetter gør kløften til en fælles beslutningsregel (se Emne 5.3 — Site reliability engineering).

### Mål og nøgleresultater

**Mål og nøgleresultater (OKR'er)** er en ramme for målsætning. Wikipedia-artiklen beskriver en OKR som et mål, et væsentligt, konkret, klart defineret mål, parret med tre til fem nøgleresultater, som er målbare succeskriterier. Den krediterer Andrew Grove for at have gjort tilgangen kendt hos Intel i 1970'erne og dokumenteret den i *High Output Management* (1983), og John Doerr for at have bragt den til Google i 1999. Artiklen siger, at OKR'er scores fra 0,0 til 1,0, at ambitiøse nøgleresultater sigter mod omkring 0,7, og at Doerr anbefaler en succesrate på omkring 70 procent, så et nøgleresultat, der altid nås, bør revurderes. Den råder til at undgå mål, der hører til den daglige drift, og til at foretrække førende indikatorer frem for efterslæbende.

Artiklen registrerer også kritik: de fleste organisationer er holdt op med at sætte OKR'er for enkeltpersoner, som har tendens til at ligne opgavelister og flyde sammen med præstationsvurderinger, og OKR'er på flere niveauer kan skabe en vandfaldstilgang. Den giver ingen uafhængig dokumentation for effektivitet og bærer et vedligeholdelsesmærke om at stole på kilder tæt på emnet. For serviceteams kan OKR'er forbinde resultater (for eksempel "brugere gennemfører registrering uden hjælp") med målbare nøgleresultater, forudsat at de ikke gøres til individuelle mål.

### Kundetilfredshed

At måle, hvad brugerne mener, er svært at gøre godt. Et almindeligt instrument er **net promoter score (NPS)**. Ifølge Wikipedia bygger den på ét spørgsmål om, hvor sandsynligt det er, at respondenterne vil anbefale en virksomhed, et produkt eller en service, hvor tilhængere scorer 9 eller 10, passive 7 eller 8 og kritikere 6 eller lavere; scoren er procentdelen af tilhængere minus procentdelen af kritikere. Fred Reichheld fra Bain & Company gjorde den kendt i en artikel i *Harvard Business Review* i 2003. Artiklen registrerer grænser: forskere sætter spørgsmålstegn ved, om den pålideligt forudsiger virksomhedsvækst, ét enkelt spørgsmål kræver et stort antal svar, den siger lidt om specifikke problemer, overdreven afholdelse af undersøgelser vækker klager, og at knytte den til løn kan fordreje adfærd, så Reichheld anbefalede at adskille de to. Andre instrumenter findes, som kundetilfredshedsscorer og kundeindsatsscorer, men artiklen diskuterer dem ikke.

Uanset instrumentet: stil et kort spørgsmål, tillad altid et fritekstsvar, læs kommentarerne, og følg op på det, I lærer.

### At måle folk og bæredygtighed

Målinger af medarbejderbelastning og -sundhed, som vagtbelastning, toil, overarbejde og stemning, er målinger af servicens bæredygtighed (se Emne 5.3 — Site reliability engineering). Behandl dem som information om systemet og ikke som mål for enkeltpersoners præstation.

### At måle AI og automatisering

Når et automatiseret eller AI-understøttet trin indføres, så tilføj målinger af dets kvalitet: hvor ofte mennesker tilsidesætter det, hvor ofte det tager fejl, og hvad det koster (se Emne 6.2 — AI i IT-servicestyring).

### Grænser

Målinger er partielle. De udelader det, der er svært at tælle, som tillid, håndværk og dømmekraft. De kan vildlede, når data er ufuldstændige, eller definitioner er forskellige mellem teams. De artikler, der er læst her, giver lidt empirisk belæg for, om målingsprogrammer forbedrer resultater. Behandl ethvert program som et eksperiment, og gennemgå det.

## God praksis

1. **Start med spørgsmålet.** Spørg, hvilken beslutning en måling ville informere, og hvem der ville handle på den. Hvis ingen ville, så lad være med at indsamle den.
2. **Vælg et lille afbalanceret sæt.** Vælg nogle få målinger på tværs af resultat, flow, levering, serviceniveau og sundhed. Sørg for, at nogle trækker mod hinanden.
3. **Definér hver måling præcist.** Skriv, hvad der tælles, hvorfra, og hvad der er udeladt. To teams, der bruger det samme ord om forskellige ting, producerer tal, der ikke kan sammenlignes.
4. **Mål pr. service eller team, og sammenlign med dets egen fortid.** Undgå at rangere teams. DORA råder til at forbedre sig mod sin egen tidligere ydeevne og være varsom med at sammenligne forskellige applikationer.
5. **Gør ikke ét enkelt tal til et mål.** Brug målinger som oplæg til drøftelse, og sæt mål som resultater. Når en måling er et mål, så hold øje med manipulation (se Goodharts lov).
6. **Par tal med historier.** For enhver tendens, se på nogle få virkelige sager. Tal fortæller, hvor I skal kigge; sager fortæller hvorfor.
7. **Se på fordelinger.** Brug percentiler og intervaller, ikke kun gennemsnit, for tids- og størrelsesmålinger.
8. **Foretræk førende indikatorer, hvor I kan.** Målinger som arbejdselementets alder viser problemer, før de lander, i modsætning til målinger af tidligere resultater.
9. **Sæt mål med mål og nøgleresultater omhyggeligt.** Hvis I bruger OKR'er, så hold dem på team- og organisationsniveau, undgå mål der hører til den daglige drift, og læs et resultat, der altid nås, som et tegn på at sigte højere.
10. **Spørg brugerne, kort og ofte.** Brug et kort spørgsmål med fritekst, læs kommentarerne, og svar. Knyt ikke undersøgelsesscorer til individuel løn.
11. **Hold øje med målingens pris.** Foretræk data, som værktøjer producerer som et biprodukt af arbejdet. Drop manuel rapportering, ingen bruger.
12. **Gennemgå selve målingerne.** En eller to gange om året: spørg, hvilke målinger der ledte til beslutninger, og hvilke der ikke gjorde, og udfas de sidste.

## Spørgsmål til diskussion i teamet

**Hvilken af vores målinger har ledt til en beslutning inden for de seneste seks måneder?**

List målingerne, og bed om en beslutning knyttet til hver. Målinger uden forbindelse er kandidater til fjernelse. Facilitatoren kan spørge, hvilken måling folk stoler mindst på, og hvorfor. Fjern eller ret én.

**Hvad sker der med vores adfærd, når et tal er et mål?**

Bed om et nyligt eksempel, hvor et tal var et mål. Spørg ind til, hvad folk gjorde for at nå det. Goodharts læresætning er rammen. Spørg, hvordan en bedre måling eller en parring af målinger ville se ud. Aftal én ændring.

**Måler vi hastighed og kvalitet sammen?**

List hastighedsmålingerne og kvalitetsmålingerne. Hvis listerne er skæve, så drøft virkningen. For eksempel inviterer måling af tid til lukning af tickets uden gentagne henvendelser til for tidlig lukning. Vælg en parring.

**Hvad fortæller brugerne os om, hvordan det går, og hvordan spørger vi?**

Se på de spørgsmål, I stiller brugerne, og hvor ofte. Læs nogle af fritekstsvarene højt. Spørg, hvad der ændrede sig på grund af dem. Aftal et kort spørgsmål, der skal prøves.

**Hvilke af vores målinger kunne bruges til at bedømme enkeltpersoner, og hvad bør vi gøre ved det?**

Identificér målinger, folk kunne frygte. Drøft risiciene, og aftal eksplicitte regler for, hvad tallene ikke vil blive brugt til. Skriv dem ned.

**Hvis vi kun kunne beholde fem målinger, hvilke ville vi beholde?**

Bed hver person vælge fem, og sammenlign. Overlappet viser kernen; forskellene viser forskellige behov. Resultatet er et startsæt. Tjek, at det dækker resultater, flow, serviceniveauer og sundhed.

## I praksis: et agilt ITIL-eksempel

En national jernbanes IT-gruppe driver systemerne bag dens passagerinformation. Gruppen rapporterer et dashboard med 40 målinger til direktionen hver måned. Dashboardet læses af få, og to målinger dominerer drøftelsen: antallet af hændelser lukket inden for måltid og antallet af releases pr. kvartal. Hændelsesteamet har lært at lukke hændelser hurtigt og genåbne nye for den samme fejl, og flere leveranceteams deler arbejde op i trivielle releases for at nå tallet.

Chefen for IT-gruppen beder et lille team om at bygge målingerne om. De begynder med at spørge, hvilke beslutninger dashboardet bør informere. For hver service vælger de en håndfuld målinger: en brugervendt serviceniveauindikator og et mål, ændringens gennemløbstid og andel af mislykkede ændringer, arbejdselementets alder for åbne problempunkter, vagtbelastning pr. ingeniør og en månedlig spørgeundersøgelse med ét spørgsmål om tilfredshed blandt stationspersonalet med et fritekstfelt. De gamle optællinger udfases. Direktionen aftaler, at ingen måling vil blive brugt til at rangere teams eller sætte individuelle bonusser, og IT-chefen skriver det som en regel på dashboardet. Teams bliver bedt om at sætte forbedringsmål for de services, de ejer, som mål med nøgleresultater, kun på teamniveau.

Efter et år har dashboardet tolv målinger, og den månedlige gennemgang er blevet en samtale om de ældste åbne problemer og fritekstkommentarerne. Gentagne hændelser falder, og releases er mere meningsfulde. Nogle vanskeligheder består. Tilfredshedsundersøgelsen får få svar fra natpersonalet, ét teams gennemløbstid ser dårlig ud, fordi det er det eneste, der tæller tid fra idéen og ikke fra commit, og en leder er begyndt at citere undersøgelsesscoren i en præstationsvurdering. IT-chefen beder teamet afstemme definitioner, minder lederne om reglen og arrangerer en kort undersøgelse ved natholdets vagtskifte.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bør vælge målinger, der hjælper dem med at styre, tage tallene fra deres værktøjer og drøfte dem i retrospektiver. Hold øje med målinger, der belønner opdeling af arbejde eller skjulte fejl. Del, hvad I lærer, med andre teams.

### Service- og driftsteams

Driftsteams bærer mange af serviceniveau- og sundhedsmålingerne. Hold definitioner klare og data pålidelige, medtag vagtbelastning og toil, og præsentér tal med sager og kommentarer. Sig fra, når en måling bruges som et mål.

### Ledelse og governance

Ledere former målingskulturen. Sig, hvad tallene vil og ikke vil blive brugt til, bed om tendenser og historier og ikke ranglister, og modstå at tilføje målinger for hver ny bekymring. Gennemgå hele sættet fra tid til anden.

### Kunder og brugere

Kunder og brugere er både en kilde til målinger og genstand for dem. Besvar korte undersøgelser, når du kan, og sig, hvad der betyder noget. Spørg leverandører, hvad de måler om din oplevelse, og hvad de har gjort med resultaterne.

## Almindelige fejlmønstre

- **Målinger som mål.** Manipulation følger. I stedet: brug målinger til drøftelse, og sæt mål som resultater.
- **Ét tal.** En enkelt måling fordrejer adfærd. I stedet: brug et afbalanceret sæt, der trækker mod sig selv.
- **Inkonsekvente definitioner.** Teams tæller forskelligt. I stedet: definér hver måling og dens kilde.
- **Ranglister.** Teams konkurrerer og skjuler problemer. I stedet: sammenlign hvert team med dets egen historik.
- **Kun gennemsnit.** Lange haler skjules. I stedet: se på fordelinger og percentiler.
- **At måle det, der er nemt.** Bekvemme tal erstatter vigtige. I stedet: start fra beslutninger og brugernes resultater.
- **Individuelle OKR'er som opgavelister.** Mål bliver til præstationsvurderinger. I stedet: hold OKR'er på team- og organisationsniveau.
- **Undersøgelsestræthed og lønkoblinger.** Brugere holder op med at svare, eller scorer manipuleres. I stedet: hold undersøgelser korte og adskilt fra løn.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Valg og definition | Målinger er ad hoc | Nogle teams definerer nogle få målinger | Et afbalanceret sæt med klare definitioner bruges pr. service | Sættet gennemgås for brugbarhed og huller | Målinger afstemmes på tværs af teams, leverandører og kunder |
| Brug i beslutninger | Tal rapporteres, men bruges sjældent | Nogle teams drøfter dem i gennemgange | Målinger fodrer regelmæssige beslutninger og forbedring | Beslutninger knyttet til målinger spores og læres af | Målinger vejleder beslutninger i hele organisationen |
| Værn mod manipulation | Mål sættes på enkelte tal | Nogen bevidsthed om fordrejning | Regler for, hvordan målinger må bruges, er skrevet og følges | Tegn på manipulation overvåges, og målinger justeres | Målingskultur deles i hele organisationen |
| Bruger- og sundhedsmålinger | Få bruger- eller medarbejderdata | Nogle undersøgelser eller belastningsdata | Korte brugerundersøgelser og bæredygtighedsmålinger er rutine | Resultater fører til planlagt handling og tjekkes | Bruger- og medarbejderstemmer former prioriteter på tværs af services |

## Tjekliste

- [ ] Hver måling, vi rapporterer, har en angivet beslutning, den informerer.
- [ ] Vi bruger et lille afbalanceret sæt, der omfatter resultat-, flow-, serviceniveau-, leverings- og sundhedsmålinger.
- [ ] Hver måling har en skriftlig definition og kilde.
- [ ] Teams sammenlignes med deres egen historik, ikke rangeres.
- [ ] Vi har skrevet ned, hvad målinger ikke vil blive brugt til.
- [ ] Tidsmålinger viser fordelinger eller percentiler.
- [ ] Brugere spørges jævnligt om et kort spørgsmål med plads til kommentarer, og svarene læses.
- [ ] Hvis vi bruger OKR'er, er de på team- eller organisationsniveau og ikke individuelle mål.
- [ ] Data tages fra værktøjer som et biprodukt af arbejdet, hvor det er muligt.
- [ ] Vi gennemgår selve målingerne mindst én gang om året.

## AI-prompts

**Formål: at vælge et afbalanceret sæt målinger for en service.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at finde ud af, hvordan en måling kunne manipuleres.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Formål: at skrive OKR'er for et serviceteam uden at gøre dem til opgaver.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at analysere fritekstkommentarer fra en undersøgelse.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## AI-skills

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): brug den til at vælge og fortolke målinger af leverings- og serviceydeevne.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): brug den til at vælge tidlige varselsmålinger for risici for en service.
- [survey-design](../../../../skills/survey-design/SKILL.md): brug den til at designe korte bruger- og medarbejderundersøgelser, der giver brugbare svar.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): brug den til at indsamle og svare på feedback fra brugere og kolleger.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): brug den til at forbinde målinger af resultater med det, teamet arbejder på næste gang.

## Vigtigste kilder

- **DORA's software delivery performance metrics** (dora.dev): definitioner af de fem målinger og forbehold ved deres brug.
- **Goodhart's law** (Wikipedia): oprindelsen og ordlyden af læresætningen om, at en måling brugt som mål holder op med at være en god måling.
- **Objectives and key results** (Wikipedia): rammen, dens oprindelse, scoring og kritik.
- **Net promoter score** (Wikipedia): definitionen, anvendelser og kritik af ét tilfredshedsmål.

## Referencer

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
