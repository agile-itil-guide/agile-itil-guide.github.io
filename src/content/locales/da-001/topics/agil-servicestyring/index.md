# Agil servicestyring

**Agil servicestyring anvender agile værdier og metoder på designet og forbedringen af selve servicestyringen og behandler hver proces som et produkt med en ejer, en backlog og brugere, der kan sige, om det virker.**

## Hvorfor det betyder noget

Det meste af denne vejledning har set på, hvordan agile teams kan bruge servicestyringspraksisser. Dette emne vender spørgsmålet om: hvordan kan servicestyringspraksisser bygges og ændres på en agil måde? Mange organisationer har processer for hændelser, ændringer og anmodninger, der blev designet én gang, rullet ud i et projekt og efterladt. De er langsomme at ændre, ilde lidt af dem, der skal følge dem, og ude af trit med, hvordan organisationen nu bygger software. Det er det modsatte af, hvad manifestets princip om at byde forandring velkommen ville antyde (se Emne 1.2 — Agile principper).

Midlet er ikke at opgive proces, men at behandle den som noget, der designes sammen med sine brugere, udgives i små skridt og forbedres ud fra evidens. ITIL 4s vejledende principper siger det samme: start, hvor du er, skrid frem iterativt med feedback, samarbejd og fremme synlighed, og hold det enkelt og praktisk (se Emne 2.4 — ITILs vejledende principper). Wikipedia-artiklen om ITIL siger, at ITIL 4 blev afstemt med agile, DevOps og lean arbejdsmåder, da det udkom i 2019. ISO/IEC 20000-artiklen opregner nylige dele af den standard, inklusive vejledning om agile og DevOps, selv om den ikke giver deres indhold.

Der er lidt formel forskning i agil servicestyring som sådan, og de Wikipedia-artikler, der er konsulteret til denne vejledning, dækker det ikke. Dette emne trækker derfor på Scrum Guides beskrivelse af roller og artefakter, på de agile og ITIL-principperne og på resten af denne vejledning og tilbyder sin tilgang som praktisk syntese at prøve, ikke som etableret metode.

## Kernebegreber

### Processer som produkter

En **proces** er i denne forstand enhver gentagelig arbejdsmåde, en serviceorganisation beder folk følge: hvordan man rapporterer en hændelse, hvordan man anmoder om adgang, hvordan man godkender en ændring. Set som et produkt har en proces:

- **Brugere:** de, der følger den, og de, den betjener.
- **Et formål:** det resultat, den findes for at opnå.
- **En ejer:** nogen, der er ansvarlig for dens værdi, som Scrum Guide beskriver Product Owner som den ene person, der er ansvarlig for at maksimere produktets værdi og ordne dets backlog (se Emne 1.4 — Leveranceprognoser og planlægningsmålinger).
- **En backlog:** en ordnet liste over forbedringer.
- **Releases:** ændringer leveret i små skridt, med noter.
- **Målinger:** evidens for, om den virker.

At tænke sådan ændrer spørgsmålene. Ikke "har vi implementeret ændringsprocessen?", men "hjælper ændringsprocessen folk med at udføre deres arbejde, og hvad er den næste forbedring?"

### Roller

| Rolle | I et produktteam | For en servicestyringsproces |
|---|---|---|
| **Product owner** | Ordner backloggen og er ansvarlig for værdi | Procesejeren, der afgør, hvad der skal forbedres næste gang og hvorfor |
| **Udviklere / team** | Bygger inkrementet | De folk, der designer og driver processen, helst inklusive brugere fra leverance og drift |
| **Scrum Master eller coach** | Hjælper teamet med at anvende rammeværket og fjerner hindringer | En coach, der hjælper teamet med at praktisere kontinuerlig softwarelevering og indsamle feedback |
| **Interessenter** | Gennemgår inkrementet og giver feedback | Leveranceteams, servicedesken, revisorer, kunder |

Kortlægningen er denne vejlednings, ikke en standard. Procesejere i mange organisationer mangler beføjelse eller tid, så det første skridt er ofte at give dem begge dele.

### Procesbackloggen

Forbedringsideer til en proces kommer fra mange steder: hændelsesgennemgange, retrospektiver, revisionsfund, brugerklager og målinger (se Emne 3.15 — Løbende forbedring). En procesbacklog samler dem i én ordnet liste. Punkter er små og beskrevet fra brugerens synsvinkel: "Som udvikler vil jeg have, at ændringer med lav risiko godkendes automatisk, så jeg kan udgive, når jeg er klar." Product owner ordner listen efter værdi og indsats, og teamet tager punkter ind i korte cyklusser.

### Kontinuerlig softwarelevering af procesændringer

I stedet for at designe en fuld proces og rulle den ud, design den mindste version, der kunne virke, prøv den med nogle få brugere, og lær:

| Trin | Hvad der sker |
|---|---|
| **Find problemet** | Observér, hvordan folk faktisk arbejder, og hvor de kæmper |
| **Design en lille ændring** | En ny formular, en kortere godkendelsesvej, en tjekliste |
| **Prøv den** | Med ét team eller én slags arbejde, i en kort periode |
| **Tjek** | Sammenlign med det, du forventede, ved hjælp af data og samtale |
| **Adoptér, justér eller drop** | Spred det, der virkede; ret eller opgiv det, der ikke gjorde |

Det er Plan-Do-Check-Act-cyklussen anvendt på selve processen (se Emne 3.15 — Løbende forbedring).

### Design sammen med brugere

Procesdesignere, der ikke selv bruger processen, begår undgåelige fejl. Involvér dem, der følger den: invitér ingeniører til at designe ændringsprocessen, deskanalytikere til at designe hændelsesformularen og kunder til at designe anmodningskataloget. Se på det rigtige arbejde. Afprøv med rigtige tilfælde. Det er "samarbejde med kunden frem for kontraktforhandling" anvendt inde i organisationen (se Emne 1.1 — Det agile manifest).

### Minimum viable process

En **minimum viable process** er det mindste sæt trin, registre og roller, der opnår formålet. At tilføje til den kræver en grund. Det vejledende princip "hold det enkelt og praktisk" støtter dette. En nyttig test af hvert trin er at spørge, hvad der ville ske, hvis det blev fjernet, og hvem der ville bemærke det. Kontroller krævet af lov eller kontrakt beholdes, med kilden angivet; andre sættes spørgsmålstegn ved.

### Procesreleases og kommunikation

Når en proces ændres, skal folk vide det. Behandl ændringer som releases: en kort note, der beskriver hvad der er ændret, hvorfor, og hvad man skal gøre anderledes, med en kontakt til spørgsmål. Udgiv i små skridt, i en rytme folk kan følge, og undgå at overraske teams med store ændringer. Før en synlig historik over ændringer.

### Standarder, revisioner og agilitet

Mange organisationer skal opfylde standarder eller revisorer. ISO/IEC 20000 er en standard for servicestyringssystemer, og Wikipedia opregner en nylig del af den med vejledning om agile og DevOps (se Emne 2.7 — ITSM-rammeværker og standarder). En proces bygget i små skridt kan opfylde revisioner, hvis registrene viser, hvordan den virker, og hvordan den ændrer sig: backloggen, releasenoterne og målingerne er selv evidens. Drøft tidligt med revisorer, hvad de har brug for, og vis dem, hvordan I arbejder.

### Agil servicestyring og DevOps

Praksisser fra DevOps, som automatisering og pipelines, er værktøjer til at implementere processer (se Emne 5.2 — DevOps). Hvor et procestrin kan automatiseres, som at registrere en ændring fra en pipeline, så gør det, og behandl automatiseringen som en del af processen. Agil servicestyring og DevOps deler en interesse i korte cyklusser og hurtig feedback.

### Grænser

Tilgangen forudsætter, at folk har tid og mandat til at forbedre proces, hvilket ikke altid er sandt. Den kan fejle, når procesejerskab er nominelt, når interessenter kræver et færdigt design, før de vil prøve noget, eller når hver ændring kræver en lang godkendelse. Den risikerer også konstant uro, hvis ændringer er for hyppige til, at folk kan optage dem. Afbalancér kontinuerlig levering af forandring med stabilitet: ændr i en forudsigelig rytme.

## God praksis

1. **Navngiv en ejer for hver proces.** Vælg en med beføjelse til at ændre den og tid til at gøre det. Gør deres rolle klar: de er ansvarlige for, hvor godt processen tjener sit formål.
2. **Skriv et formål på én sætning.** Angiv, hvad processen er til for, og hvem den tjener. Hvis I ikke kan, kan processen være en kandidat til fjernelse.
3. **Før en procesbacklog.** Saml ideer fra gennemgange, revisioner, feedback og data i én ordnet liste. Vis den til dem, der følger processen.
4. **Involvér brugerne i design.** Medtag ingeniører, deskanalytikere og kunder i workshops og forsøg. Observér rigtigt arbejde, før I ændrer det.
5. **Start med en minimum viable process.** Design den mindste version, der opfylder formålet og de juridiske behov. Tilføj kun trin, når et problem retfærdiggør det.
6. **Prøv, før I ruller ud.** Pilotér med ét team eller én slags arbejde i en kort, defineret periode. Aftal, hvad I vil se på, før I starter.
7. **Udgiv ændringer i små skridt i en rytme.** Udgiv en kort note for hver release af processen, med en kontakt. Undgå store, overraskende ændringer.
8. **Mål processen.** Vælg nogle få målinger af, om den virker, som tid brugt, omarbejde og brugertilfredshed (se Emne 5.6 — Metrikker og måling). Gennemgå dem med brugerne.
9. **Automatisér, hvor det hjælper.** Fang registre fra værktøjer, ikke formularer; gør den nemme vej til den rigtige vej. Tjek, at automatisering ikke skjuler dømmekraft, som folk bør udøve.
10. **Behold evidensen til revisorer.** Gem backloggen, beslutningerne, releasenoterne og målingerne, hvor revisorer kan se dem. Invitér dem til en gennemgang af, hvordan processen ændrer sig.
11. **Afvikl proces.** Fjern trin, formularer og registre, der ikke længere tjener deres formål. Behandl sletning som en forbedring.
12. **Gennemgå procesejerskab årligt.** Tjek, at hver proces stadig har en aktiv ejer, en aktuel backlog og brugere, der kan nå dem.

## Spørgsmål til diskussion i teamet

**Hvem ejer hver af vores processer, og hvilken beføjelse har de til at ændre den?**

List de vigtigste processer, og navngiv ejeren for hver. Spørg, hvad ejeren kan ændre uden at spørge nogen. Ofte er svaret "meget lidt". Facilitatoren kan spørge, hvad der skulle til for, at ejeren kunne lave små ændringer hurtigt. Aftal én proces at starte med.

**Hvad er vores ændringsproces til for? Kan vi sige det i én sætning?**

Bed hver person skrive et formål. Sammenlign. Forskelle viser forvirring om, hvorfor processen findes. Brug den fælles erklæring til at bedømme hvert trin. Fjern eller sæt spørgsmålstegn ved trin, der ikke tjener den.

**Hvornår ændrede vi sidst en proces, fordi brugerne bad om det, og hvordan fandt vi ud af det?**

Bed om eksempler. Hvis der ingen er, så spørg, hvor klager går hen. Drøft, hvordan feedback kunne nå ejeren: en kanal, en jævnlig gennemgang, en kort undersøgelse. Vælg én vej at prøve.

**Hvordan ville et månedslangt forsøg med en enklere proces se ud?**

Vælg en proces med kendt friktion. Beskriv en lettere version, hvem der ville prøve den, hvad I ville måle, og hvad der ville få jer til at stoppe. Det gør en diskussion til et eksperiment. Aftal detaljerne og datoen.

**Hvilken evidens ville vores revisorer acceptere fra en proces med kontinuerlig softwarelevering?**

Spørg en revisor eller compliancekollega. List, hvad processen producerer: en backlog, releasenoter, målinger, registre. Drøft huller. Teams bliver ofte overraskede over, hvor villige revisorer er til at acceptere klar evidens for kontrolleret ændring.

**Hvordan finder folk ud af, at en proces har ændret sig?**

Følg den seneste ændring. Mange hørte om den fra en kollega eller ved at løbe ind i den. Drøft releasenoter og en synlig ændringslog. Aftal en enkel måde at annoncere ændringer på og hvor de bor.

## I praksis: et agilt ITIL-eksempel

Et nationalt færdselssikkerhedsagentur har en IT-afdeling på 90 personer, der supporterer en applikation, politi og domstole bruger. Afdelingens hændelsesproces blev skrevet for otte år siden: en formular med 14 felter, tre godkendelser for at lukke en hændelse med høj prioritet og en månedlig rapport, ingen læser. Leveranceteams springer formularen over under nedbrud og udfylder den bagefter, så dens registre er dårlige. Et revisionsfund siger, at hændelsesregistre er ufuldstændige.

Chefen for servicestyring navngiver sig selv som ejer af hændelsesprocessen og danner et lille arbejdsteam: to analytikere fra servicedesken, en ingeniør fra hvert af to leveranceteams og en kvalitetsmedarbejder fra agenturets governanceenhed. Hun skriver et formål for processen: at genoprette servicen hurtigt og at lære af det, der skete. Teamet følger tre rigtige hændelser. De finder, at formularen udfyldes efter begivenheden, mest med de samme få værdier, og at godkendelserne tilføjer forsinkelse uden nogensinde at ændre et udfald. De bygger en backlog og begynder med de mindste ændringer. Et forsøg med to teams reducerer formularen til seks felter udfyldt automatisk fra overvågningsværktøjet, hvor det er muligt, dropper to af de tre godkendelser og tilføjer en kort skyldfri gennemgang for hver hændelse med høj prioritet.

Efter seks uger registrerer forsøgsteamene hændelser under nedbruddet frem for efter, og kvalitetsmedarbejderen finder registrene mere komplette end før. Teamet udgiver en releasenote på én side, udvider ændringen til alle teams og viser revisoren backloggen, forsøgsresultaterne og målingerne. Nogle vanskeligheder består. Ét leveranceteam deltog aldrig i forsøget og bruger stadig den gamle formular, en leverandørkontrakt kræver et felt, den nye formular udelader, og kvalitetsmedarbejderen er bekymret for, at fjernelsen af godkendelser vil blive draget i tvivl ved næste revision. Chefen for servicestyring tilføjer et felt til leverandørtilfældet, beder det tilbageværende team deltage i næste runde og aftaler med revisoren at gennemgå hændelsesregistrene ved det næste kvartalsmøde.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams er brugerne af mange servicestyringsprocesser. Deltag i designet af dem, der berører jer, tilbyd data om, hvordan de virker i praksis, og prøv piloter. Hvor et procestrin kan automatiseres i jeres pipeline, tilbyd at bygge det.

### Service- og driftsteams

Driftsteams ejer ofte processerne. Behandl hver som et produkt: skriv et formål, før en backlog, spørg brugerne, og udgiv små ændringer. Afsæt tid til procesforbedring, og forsvar den, for leveringsarbejde vil fortrænge den.

### Ledelse og governance

Ledere giver procesejere beføjelse og tid og sætter forventningen om, at processer ændres ud fra evidens. Bed om formålet og målingerne for hver proces og om backloggen. Støt forsøg, og vær villige til at acceptere evidens i nye former.

### Kunder og brugere

Kunder og brugere af services følger også processer, som anmodninger og godkendelser. Fortæl ejeren, hvad der er forvirrende eller langsomt. Tilbyd at deltage i et forsøg. Forvent, at ændringer annonceres og forklares.

## Almindelige fejlmønstre

- **Proces uden ejer.** Ingen kan ændre den. I stedet: navngiv en ejer med beføjelse og tid.
- **Big bang-redesign.** En helt ny proces rulles ud på én gang og afvises. I stedet: ændr i små skridt, og pilotér.
- **Design i udvalg væk fra brugerne.** Processen passer designerne. I stedet: inkludér dem, der følger den, og se på rigtigt arbejde.
- **Konstant uro.** Ændringer kommer for hyppigt til at optage. I stedet: udgiv i en forudsigelig rytme.
- **At glemme de juridiske krav.** En kontrol droppes, som var nødvendig. I stedet: tjek, hvad hvert trin kræves til, og angiv kilden.
- **Ændringer, der ikke annonceres.** Folk opdager dem ved et tilfælde. I stedet: udgiv korte releasenoter.
- **Evidens, der ikke gemmes.** Revisionen kan ikke se, hvordan processen ændrede sig. I stedet: gem backloggen, beslutningerne og målingerne.
- **Ingen fjernelse.** Trin hober sig op. I stedet: behandl sletning som en forbedring.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Ejerskab og formål | Processer har ingen klar ejer eller formål | Nogle processer har ejere | Hver proces har en ejer med beføjelse og et skriftligt formål | Ejere gennemgås for effektivitet og støttes | Ejere arbejder sammen på tværs af teams for at afstemme processer fra ende til anden |
| Backlog og ændring | Ændringer er projekter, sjældne og store | Nogle ejere fører lister over ideer | Hver proces har en ordnet backlog og udgiver ændringer i små skridt | Backlogflow og releasevirkninger måles | Procesændringer koordineres på tværs af processer og med leverandører |
| Involvering af brugere | Designere konsulterer sjældent brugere | Nogle forsøg køres med brugere | Brugere deltager i design og forsøg som standard | Brugerfeedback og tilfredshed måles og handles på | Kunder og leverandører deltager i procesdesign |
| Evidens og revision | Registre er dårlige, og ændringer er uregistrerede | Nogle procesændringer logges | Backlog, releasenoter og målinger tjener som revisionsevidens | Revisorer gennemgår ændringsregistret jævnligt | Evidens deles løbende med revisorer og partnere |

## Tjekliste

- [ ] Hver hovedproces har en navngiven ejer med beføjelse og tid.
- [ ] Hver proces har et formål på én sætning og et defineret sæt brugere.
- [ ] Hver proces har en synlig, ordnet backlog over forbedringer.
- [ ] Brugere fra leverance og drift deltager i design og forsøg.
- [ ] Ændringer pilotes før udrulning, med et defineret tjek.
- [ ] Procesændringer udgives i en rytme med korte noter.
- [ ] Nogle få målinger viser, om hver proces virker.
- [ ] Juridiske og kontraktlige kontroller er identificeret med deres kilder.
- [ ] Revisorer har set backloggen, releasenoterne og målingerne.
- [ ] Trin, der ikke længere tjener et formål, fjernes.

## AI-prompts

**Formål: at udarbejde en formålserklæring og brugerliste for en proces.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gøre feedback og hændelsesgennemgange til en procesbacklog.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Formål: at designe et månedslangt forsøg med en lettere proces.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at skrive en releasenote for en procesændring.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## AI-skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre det klart, hvem der ejer hver proces, og hvem der høres.
- [user-story](../../../../skills/user-story/SKILL.md): brug den til at skrive procesbacklogpunkter fra brugerens synsvinkel.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): brug den til at studere, hvordan en proces faktisk kører, og hvor den kæmper.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at gennemgå, hvordan en proces virker for sine brugere.
- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at planlægge små, løbende forbedringer af en proces.

## Vigtigste kilder

- **The Scrum Guide** (Ken Schwaber og Jeff Sutherland, scrumguides.org): kilden til de roller og artefakter, der her bruges som analogi for procesejerskab og backlogs.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): den agile side af designtilgangen.
- **ITIL** (Wikipedia): historien om ITIL 4s afstemning med agile, DevOps og lean arbejdsmåder.
- **ISO/IEC 20000** (Wikipedia): listen over dele, inklusive nylig vejledning om agile og DevOps.

## Referencer

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
