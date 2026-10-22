# Release- og deploymentstyring

**Release- og deploymentstyring får ændringer ind i produktion sikkert, og målet i en agil sammenhæng er at gøre udgivelse så rutinemæssig, automatiseret og reversibel, at den holder op med at være en begivenhed.**

## Hvorfor det betyder noget

Mange organisationer behandler stadig en release som en stor, anspændt lejlighed. En dato fastsættes, et vindue bookes, folk bliver sent, og succes måles på, om noget gik i stykker. Det mønster producerer netop den risiko, det frygter: jo flere ændringer der samles i en release, jo sværere er det at forstå, hvad der gik galt, og jo mere smertefuld er en tilbagerulning.

DORA-forskningsprogrammet beskriver alternativet. Dets side om kontinuerlig levering definerer praksissen som "evnen til at udgive ændringer af alle slags efter behov hurtigt, sikkert og bæredygtigt", og rapporterer, at det forbedrer leveringsydeevne og tilgængelighed, når det gøres godt, og er forbundet med lavere udbrændthed og højere jobtilfredshed. Siden advarer også om, at udrulning oftere uden at ændre processer og arkitektur har tendens til at hæve fejlrater og brænde teams ud. Lærestregen er ikke "udgiv hurtigere", men "byg evnen til at udgive sikkert, og udgiv derefter ofte".

Googles bog *Site Reliability Engineering* gør i sit kapitel om release engineering et lignende punkt ud fra praksis: hyppige releases betyder færre ændringer mellem versioner, så test og fejlfinding bliver lettere. Dette emne trækker på de to kilder, på vejledningens andre ændringsrelaterede emner og på udbredt ITIL-ordforråd, som denne vejledning ikke kunne bekræfte mod rammeværksejerens tekst. Betragt kilderne som stærke, specifikke og begrænsede til de sammenhænge, de beskriver.

## Kernebegreber

### Release og deployment

De to begreber forveksles ofte. Et almindeligt skel, udbredt i servicestyring, er:

- En **release** er en version af en service eller komponent gjort tilgængelig til brug. Det er en beslutning om, hvad brugerne får.
- En **deployment** (udrulning) er handlingen at flytte en version ind i et miljø, som produktion.

Det er stærkt at adskille dem. Du kan udrulle kode til produktion uden at slå den til for brugerne og udgive den senere på en kontrolleret måde. Teknikker som feature-kontakter (feature switches) bygger på denne adskillelse (se Wikipedias artikel om feature toggles).

### Kontinuerlig levering og kontinuerlig udrulning

DORAs side definerer **kontinuerlig levering** som evnen til at udgive ændringer af alle slags efter behov hurtigt, sikkert og bæredygtigt. Den adskiller det fra **kontinuerlig udrulning**, som betyder at udrulle hver ændring til produktion så hurtigt som muligt. DORA siger, at teams "kan og bør starte med kontinuerlig levering", selv om de aldrig adopterer kontinuerlig udrulning. Beslutningen om, hvorvidt der skal udgives, forbliver en forretningsbeslutning; kontinuerlig levering gør den til et valg frem for et projekt.

### Hvad forskningen anbefaler

DORA-siden opregner praksisser, der understøtter kontinuerlig levering:

| Praksis | Hvad DORA siger |
|---|---|
| **Testautomatisering** | Omfattende, pålidelige automatiserede testsuiter, for det meste skabt og vedligeholdt af udviklere |
| **Udrulningsautomatisering** | Udrulninger fuldt automatiserede, uden behov for manuel indgriben |
| **Trunk-baseret udvikling** | Færre end tre aktive grene, meget kortlivede grene, sjældne kodelåsperioder |
| **Løst koblede teams og arkitektur** | Teams kan teste og udrulle efter behov uden at skulle orkestrere med andre services |
| **Andre praksisser** | Kontinuerlig integration, kontinuerlig test, versionsstyring af alle produktionsartefakter, teststyring af data, overvågning og observerbarhed, proaktive notifikationer, databaseændringsstyring, gennemgående sikkerhed |

Siden rapporterer, at kontinuerlig levering er forbundet med højere kvalitet (mindre tid brugt på omarbejde eller uplanlagt arbejde), lavere udbrændthed og mindre smerte ved udrulning. Den siger også, at elite-teams, der opfyldte pålidelighedsmål i rapporten fra 2021, var tre gange mere tilbøjelige til at have en løst koblet arkitektur end dårligt præsterende. Den angiver ingen værktøjer, mål for udrulningsfrekvens eller tidsplan for implementering, og den bemærker, at transformationer almindeligvis følger en "J-kurve", med et fald i effektivitet, når automatisering øger testkravene, og teknisk gæld ophobes.

### Erfaringer fra release engineering-praksis

SRE-bogens kapitel om release engineering beskriver én stor organisations tilgang:

- **Selvbetjening.** Teams kører deres egne releaseprocesser. Releases er "ægte automatiske" og kræver kun ingeniørers involvering, hvis der opstår problemer.
- **Høj hastighed.** Hyppige releases betyder færre ændringer mellem versioner, hvilket gør test og fejlfinding lettere.
- **Hermetiske builds.** Builds afhænger af kendte værktøjs- og biblioteksversioner, så den samme revision giver identiske resultater.
- **Håndhævede politikker.** Adgangskontroller styrer godkendelser, oprettelse af releases og udrulning. Næsten alle ændringer kræver kodegennemgang, og hver release producerer en rapport over de medtagne ændringer.

Kapitlet understreger også konfiguration under kildekontrol og kodegennemgang og foreslår, at udviklere, site reliability-ingeniører og release-ingeniører samarbejder i stedet for at kaste resultater "over hegnet". Det siger, at organisationer bør definere releasepolitikker, selv når de endnu ikke kan automatisere eller håndhæve dem, og at det er billigere at indføre god praksis tidligt end at eftermontere den. Kapitlet beskriver Googles egne værktøjer; jeres miljø vil bruge andre, så hent principperne og ikke produkterne.

### Miljøer og promovering

En release bevæger sig som regel gennem en række miljøer, som udvikling, test og produktion. Hvert trin giver evidens. En almindelig praksis, i tråd med forskningen ovenfor, er at bygge én gang og promovere den samme artefakt, så det, der blev testet, er det, der udrulles. SRE-kapitlets vægt på identiske builds fra den samme revision udtrykker den samme idé.

### Udrulning og tilbagerulning

Hvordan en release når brugerne kan trinvis styres. SRE-kapitlet beskriver udrulninger tilpasset risikoen, fra automatiske pushes hver time i udvikling til udrulninger over flere dage for følsom infrastruktur, og nævner canary-releases, hvor en lille andel af trafikken får den nye version først. Tilbagerulning betyder at vende tilbage til den forrige version, og den bør være lige så øvet som udrulningen. Teams, der kan vende hurtigt, har råd til at udrulle ofte (se Emne 3.4 — Ændringsunderstøttelse).

### Releaseinformation til support

Supportpersonale og brugere skal vide, hvad der ændrer sig, og hvad man gør, hvis det går galt. En releasenote, en liste over kendte problemer og en navngiven kontakt er minimum (se Emne 3.1 — Servicedesk). SRE-kapitlets releaserapport over medtagne ændringer tjener som kilde.

### Målinger

DORAs side foreslår at måle korte gennemløbstider for almindelige ændringer og hasteændringer, lav andel af mislykkede ændringer, kort tid til at genoprette service og releasefrekvenser, der leverer prioriteter til tiden. Dens overordnede mål er, at ingen arbejder uden for arbejdstid for at udrulle. For definitioner af og advarsler om målingerne, se Emne 3.4 — Ændringsunderstøttelse og Emne 5.6 — Metrikker og måling.

## God praksis

1. **Adskil udrulning fra release.** Udrul kode til produktion i en sovende tilstand, og slå den til for brugerne, når I er klar, med feature-kontakter eller trinvise udrulninger. Det mindsker risikoen ved en udrulning og giver forretningen kontrol.
2. **Automatisér udrulningen.** Sigt efter ingen manuelle trin. Manuelle trin er langsomme, varierer mellem personer og forårsager hændelser. Automatisér i små trin, begyndende med de trin, der oftest går galt.
3. **Byg én gang, promovér artefakten.** Producér én pakke, og flyt den gennem miljøerne, så det, du testede, er det, du kører. Registrér, hvilken version der er hvor.
4. **Gør builds reproducerbare.** Fastlås værktøjs- og biblioteksversioner, så den samme revision giver det samme resultat. Det følger SRE-kapitlets princip om hermetiske builds.
5. **Hold grene kortlivede.** DORAs trunk-baserede vejledning er færre end tre aktive grene og grene, der flettes inden for omkring en dag. Lange grene gør releases til sammenfletningsbegivenheder.
6. **Test automatisk, og hold testene hurtige og pålidelige.** Sigt efter feedback på minutter. En ustabil eller langsom testsuite får folk til at omgå den.
7. **Udgiv i små batches.** Mindre releases er lettere at gennemgå, teste og fortryde. Hvis en release er stor, så spørg, hvordan den kan deles.
8. **Udrul i trin.** Start med en lille andel af brugere eller servere, hold øje med signalerne, og udvid. Definér på forhånd, hvad I vil holde øje med, og hvem der kan stoppe udrulningen.
9. **Øv tilbagerulning.** Vid, hvordan man vender tilbage til den sidste gode version, og øv det. En tilbagerulning, du aldrig har prøvet, er et håb.
10. **Giv support, hvad de har brug for, før release.** Giv releasenoter, kendte problemer og en kontakt. Tag supportpersonale med i godkendelsen af ændringer, der påvirker brugere (se Emne 3.1 — Servicedesk).
11. **Hold konfiguration i versionsstyring.** Behandl konfigurationsændringer som kode, med gennemgang og en registrering. Vælg, hvor hver slags indstilling bor, og hvorfor.
12. **Sigt efter udrulning i arbejdstiden.** DORA nævner dette som det overordnede mål. Hvis udrulninger kræver sene nætter, har processen eller arkitekturen brug for arbejde.

## Spørgsmål til diskussion i teamet

**Hvor lang tid tager det, og hvor mange trin indebærer det, at få en færdig ændring ind i produktion?**

Følg én nylig ændring fra "klar" til "live". List hvert trin, hvem der gør det, og hvor længe det venter. Skel mellem manuelle og automatiserede trin. Teams bliver ofte overraskede over, hvor mange trin der er manuelle, og over ventetiden mellem dem. Facilitatoren kan spørge, hvilket trin der har forårsaget flest hændelser. Vælg ét, der skal automatiseres.

**Hvad skulle være sandt, for at vi kunne udgive i arbejdstiden uden at bekymre os?**

Spørg, hvad teamet frygter ved at udgive. Typiske svar: ingen afprøvet tilbagerulning, svage tests, uklar påvirkning af brugerne. Hver er noget, der skal bygges. List dem, og rangér dem. Spørg, hvad det mindste skridt ville være for den første. DORA-målet om, at ingen arbejder uden for arbejdstid for at udrulle, er et nyttigt mål at drøfte.

**Hvor samler vi ændringer, fordi udgivelse er smertefuld, og hvad koster samlingen os?**

Se på indholdet af nylige releases. Tæl ændringerne i hver. Spørg, hvad der skete, da et bundt gik galt, og hvor lang tid det tog at finde årsagen. Drøft, hvad der ville gøre releases med én ændring til den nemme vej. Aftal et første skridt, som at udgive én ændring med lav risiko for sig.

**Hvordan ved vi, at en release virker, når den er live?**

Spørg, hvilke signaler teamet holder øje med den første time: fejl, ydeevne, brugerrapporter. Hvis svaret er "vi venter på klager", så drøft overvågning, der hurtigt ville vise et problem. Spørg, hvem der holder øje, og hvad de ville gøre. Aftal en kort tjekliste til efter release.

**Hvad ved vores supportteam om en release, før den går ud?**

Spørg servicedesken, hvad de fik at vide om den seneste release, og hvornår. Sammenlign med, hvad de havde brug for. Drøft en enkel overdragelse, som en releasenote og en navngiven kontakt. Tag de folk, der besvarer brugeres spørgsmål, med i planlægningen af risikable releases.

**Hvad forhindrer os i at udrulle uden en fryseperiode, og hvad ville en fryseperiode koste?**

Fryseperioder er almindelige omkring forretningsmæssige spidsbelastninger. Spørg, hvor længe de varer, og hvad de forsinker. Drøft, om små, veltestede ændringer kunne gå videre under dem med ekstra sikringer. DORA-siden advarer mod at anvende den samme godkendelse på alle ændringer uanset risiko eller timing, så spørg, om fryseperioden er for sløv.

## I praksis: et agilt ITIL-eksempel

Et universitet driver et online tilmeldingssystem til 30.000 studerende. Udviklingsteamet på otte udgiver én gang pr. semester, i et weekendvindue før tilmeldingen åbner. Hver release samler hundredvis af ændringer og kræver femten personer, en lang manuel tjekliste og en opkaldsplan. Den seneste release fejlede kl. 2 søndag nat, og teamet brugte fjorten timer på at finde ud af, hvilke af ændringerne der havde forårsaget det.

Teamlederen foreslår en ændret tilgang. For det første bliver udrulninger fuldt scriptede, begyndende med de trin, der fejlede sidst. For det andet tilføjer teamet automatiserede tests til tilmeldingsstien, som kører ved hver ændring og tager under ti minutter. For det tredje udrulles nye funktioner slukkede og slås til med en feature-kontakt efter tjek. For det fjerde skrives et tilbagerulningstrin og øves i et testmiljø. Studieadministrationen aftaler en regel om, at ingen release går i produktion i de tre uger med højeste tilmelding, medmindre det er en rettelse af en brugersynlig fejl.

Inden for et semester udrulter teamet ugentligt uden for spidsbelastningsuger, i arbejdstiden, med releasenoter sendt til studenterhelpdesken dagen før. Nogle releases forsinkes af ustabile tests, og én feature-kontakt blev ved en fejl efterladt tændt og forårsagede kortvarig forvirring. Transformationen rammer også den J-kurve, DORA-siden beskriver: i to måneder bremser arbejdet med tests og scripts leveringen af funktioner. Teamet bliver ved, retter de ustabile tests, tilføjer et tjeklistetrin til at fjerne kontakter og aftaler med studieadministrationen at gennemgå fryseregelen næste år. Semestrenes tilmeldingsspidser forløber uden hændelser knyttet til releases.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ejer pipelinen: tests, builds, udrulningsscripts og tilbagerulning. Invester i dem som et produkt med brugere. Udgiv småt, udgiv ofte, og behandl hver release som evidens om pipelinen. Inddrag support og drift, når ændringer påvirker dem.

### Service- og driftsteams

Driftsteams har gavn af mindre, mere forudsigelige releases og kan hjælpe ved at definere, hvad der skal være sandt, før en release accepteres: overvågning, runbooks og tilbagerulning. Skift fra portvagt til understøttelse ved at levere den platform og de tjek, leveranceteams bruger. Hold øje med signaler efter en release.

### Ledelse og governance

Ledere afgør, om teams kan investere i pipelinen og tåle J-kurven. Bed om gennemløbstid, andel af mislykkede ændringer og genopretningstid. Stå imod at fryse releases som et generelt svar på risiko, og bed i stedet om evidens for, at risikable releases får mere opmærksomhed.

### Kunder og brugere

Kunder og brugere ser hyppige små forbedringer og færre store forstyrrelser. Forvent varsel om ændringer, der påvirker dig, og en måde at rapportere problemer på. Hvis du har spidsbelastningsperioder, så fortæl leverandøren det, så der kan planlægges trinvise udrulninger omkring dem.

## Almindelige fejlmønstre

- **Big bang-releases.** Hundredvis af ændringer går ud sammen. I stedet: udgiv i små batches, og adskil udrulning fra release.
- **Manuel udrulning.** Trin varierer fra person til person og fejler om natten. I stedet: automatisér i trin, begyndende med de mest risikable.
- **At udgive oftere uden sikringer.** Fejlrater stiger, og folk brænder ud, som DORA advarer. I stedet: invester først i tests, tilbagerulning og overvågning.
- **Forskellige artefakter i forskellige miljøer.** Det, der testes, er ikke det, der kører. I stedet: byg én gang, og promovér den samme artefakt.
- **Langlivede grene.** Sammenfletninger bliver begivenheder. I stedet: hold grene korte, og integrér kontinuerligt.
- **Uafprøvet tilbagerulning.** Den første tilbagerulning sker under et nedbrud. I stedet: øv den jævnligt.
- **Support får det at vide sidst.** Personalet hører om ændringer fra brugerne. I stedet: send releasenoter og en kontakt før release.
- **Generelle frysninger.** Den samme frysning gælder for alle ændringer. I stedet: lad ændringer med lav risiko og god test gå igennem med ekstra tjek, og behold frysningen til det, der er risikabelt.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Udrulningsautomatisering | Udrulninger er manuelle og varierer | Nogle udrulninger er scriptede | Udrulninger er automatiserede gennem en fælles pipeline | Udrulningsfejl og varighed spores og reduceres | Pipelines og praksisser deles og forbedres på tværs af teams |
| Releasefrekvens og størrelse | Releases er sjældne og store | Nogle teams udgiver i mindre batches | Teams udgiver i små batches i en kendt rytme | Frekvens, gennemløbstid og størrelse måles og tunes | Releaserytmer koordineres på tværs af services og leverandører |
| Sikkerhed (tests, udrulning, tilbagerulning) | Test er manuel; tilbagerulning er uafprøvet | Nogle automatiserede tests og tilbagerulningstrin findes | Automatiserede tests, trinvis udrulning og indøvet tilbagerulning er standard | Andel af mislykkede ændringer og genopretningstid spores og forbedres | Sikkerhedspraksisser deles og afprøves på tværs af teams |
| Supportparathed | Support hører om releases fra brugerne | Nogle releases har noter | Releasenoter og kontakter er standard | Supports feedback på releases indsamles og handles på | Support, leverance og brugere planlægger releases sammen |

## Tjekliste

- [ ] Vi kan angive forskellen mellem at udrulle og at udgive, og vi bruger den.
- [ ] Udrulninger er automatiserede uden manuelle trin, eller de resterende manuelle trin er listet.
- [ ] Vi bygger én gang og promoverer den samme artefakt gennem miljøerne.
- [ ] Automatiserede tests kører ved hver ændring og giver feedback på minutter.
- [ ] Grene er kortlivede og flettes ofte til trunk.
- [ ] En tilbagerulning findes for hver type release og er indøvet.
- [ ] Udrulninger er trinvise, hvor risikoen retfærdiggør det, med signaler defineret på forhånd.
- [ ] Releasenoter og kendte problemer når servicedesken før en release.
- [ ] Konfiguration er i versionsstyring og gennemgås.
- [ ] Vi sporer gennemløbstid, andel af mislykkede ændringer og genopretningstid for hver service.

## AI-prompts

**Formål: at kortlægge trinnene fra "klar" til "live" og finde, hvad der skal automatiseres.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Formål: at skrive en releasenote til servicedesken og brugerne.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Formål: at planlægge en trinvis udrulning.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at forberede et argument for at investere i releaseautomatisering.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [release-notes](../../../../skills/release-notes/SKILL.md): brug den til at fortælle brugere og servicedesken, hvad en release ændrer.
- [changelog](../../../../skills/changelog/SKILL.md): brug den til at føre en løbende registrering af ændringer pr. version.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): brug den til at bygge de automatiserede tests, der gør hyppig udgivelse sikker.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): brug den til at flytte test tidligere i pipelinen, så problemer findes før.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): brug den til at planlægge små, hyppige releases og de tjek, der omgiver dem.

## Vigtigste kilder

- **Continuous delivery** (DORA, dora.dev): forskningsprogrammets definition, anbefalede praksisser, fund og faldgruber.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): én organisations praksis med selvbetjening, reproducerbare builds og håndhævet releasepolitik.
- **Streamlining change approval** (DORA, dora.dev): vejledning om, hvordan godkendelse passer ind i leveringen.
- **Continuous delivery** (Wikipedia): en oversigt over praksissen og dens historie.

## Referencer

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
