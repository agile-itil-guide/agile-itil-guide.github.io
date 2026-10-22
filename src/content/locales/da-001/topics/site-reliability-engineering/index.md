# Site reliability engineering

**Site reliability engineering behandler drift som et ingeniørproblem og bruger serviceniveaumål, fejlbudgetter og et loft over gentaget manuelt arbejde til at holde services pålidelige, mens de stadig ændres hurtigt.**

## Hvorfor det betyder noget

Mange servicestyringspraksisser blev designet til en verden, hvor driftspersonale drev software, andre havde skrevet, og driftens omkostning voksede med servicens størrelse. Site reliability engineering (SRE) er én organisations svar på, hvad der sker, når den model rammer en meget stor skala: bed softwareingeniører om at designe og drive driftsfunktionen, og få systemet til at gøre det arbejde, folk ellers ville gøre i hånden.

For læsere af denne vejledning er SRE nyttigt af tre grunde. Det gør afvejningen mellem hastighed og pålidelighed eksplicit, med tal som både produkt- og driftsteams kan læse. Det giver en fast idé om, hvor meget manuelt arbejde der er for meget. Og det viser, hvordan mange ITIL-praksisser, som hændelses-, problem-, ændrings- og kapacitetsstyring, kan udføres i ingeniørtermer. SRE er ikke den eneste måde at gøre disse på, og det stammer fra omstændighederne i en meget stor internetvirksomhed, så hvad der overføres, afhænger af jeres situation.

Dette emne bygger hovedsageligt på tre kapitler i Googles bog *Site Reliability Engineering*, suppleret med Wikipedia-artiklen om SRE. Bogen beskriver praksissen i én organisation og argumenterer for dens tilgang; Wikipedia-artiklen giver et bredere, men tyndere billede og nævner ingen kritik. Læs begge som kilder til ideer, der skal afprøves, ikke som en standard.

## Kernebegreber

### Hvad SRE er

Bogens introduktion definerer SRE som "hvad der sker, når du beder en softwareingeniør om at designe et driftsteam". [Wikipedia-artiklen om site reliability engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) beskriver det som en disciplin inden for softwareudvikling og IT-infrastrukturstøtte, der overvåger og forbedrer tilgængeligheden og ydeevnen af udrullet software og store services, med fokus på automatisering og infrastruktur som kode. Artiklen kalder SRE en specifik implementering af DevOps, snævrere i omfang, fordi den koncentrerer sig om at bygge pålidelige systemer (se Emne 5.2 — DevOps). Bogen beskriver DevOps som et bredere sæt principper, som SRE implementerer på en specifik måde.

Ifølge artiklen begyndte Googles SRE-praksis i 2003, da Benjamin Treynor Sloss kom til og dannede et team af syv produktionsingeniører; i 2016 havde teamet mere end 1.000 SRE'er, og andre store internetvirksomheder havde adopteret praksissen. En undersøgelse fra 2020 af 572 fagfolk fandt SRE-teams hos 64 procent af organisationer med 10.000 eller flere ansatte, 44 procent af dem med 101 til 1.000 og 32 procent af dem med 100 eller færre. Konferencerækken SREcon har kørt årligt siden 2014.

### Det problem, SRE adresserer

Introduktionen beskriver den traditionelle model: udviklere og systemadministratorer er delt i separate teams. Den nævner to slags omkostninger:

- **Direkte omkostninger.** Manuel ændringsstyring og eventhåndtering bliver dyr, fordi driftsteamet vokser med belastningen.
- **Indirekte omkostninger.** Teamene har forskelligt ordforråd, incitamenter og antagelser om risiko, hvilket fører til konflikt om releases. Driften tilføjer lanceringsporte, og udviklere svarer med omveje.

SRE sigter mod at undgå denne deling ved at behandle drift som et ingeniørproblem. Kapitlet siger, at teamstørrelsen vokser langsommere end systemet, fordi ingeniørarbejde forhindrer, at driftsbelastningen vokser i takt med trafikken.

### Grundprincipperne

Introduktionen opregner de områder, SRE-teams er ansvarlige for: tilgængelighed, latenstid, ydeevne, effektivitet, ændringsstyring, overvågning, nødrespons og kapacitetsplanlægning. Wikipedia-artiklen opregner kernepraksisser, der omfatter at automatisere gentaget arbejde, at definere pålidelighedsmål gennem serviceniveauindikatorer (SLI'er), mål (SLO'er) og fejlbudgetter, at designe systemer til at reducere risiko, observerbarhed og overvågning, at styre toil, en afprøvet hændelsesproces samt kapacitetsplanlægning, releasestyring og chaos engineering.

### Serviceniveaumål og fejlbudgetter

SRE knytter pålidelighed til eksplicitte mål (se Emne 3.7 — Styring af serviceniveauer for den fulde behandling). Kort sagt:

- Vælg nogle få indikatorer, der afspejler det, brugerne bekymrer sig om.
- Sæt et mål, der ikke kræver perfektion.
- Tillad et **fejlbudget**: rummet mellem perfekt og målet.
- Brug budgettet til at afgøre releasetempoet: så længe der er budget tilbage, fortsætter releases; når det er brugt, bremser releases, og kræfterne skifter til pålidelighed.

Kapitlet "Embracing Risk" forklarer hvorfor: produktteams måles på hastighed og pålidelighedsteams på pålidelighed, hvilket skaber spænding, og budgettet giver begge en fælles, objektiv måling. Det samme kapitel siger, at pålidelighedens omkostninger stiger stejlt, og at målet er at matche en services risiko med det, forretningen vil acceptere (se Emne 3.11 — Tilgængelighed, kapacitet og ydeevne).

### Toil

Kapitlet "Eliminating Toil" definerer **toil** som driftsarbejde knyttet til at drive en produktionsservice, og siger, at det ikke blot er arbejde, nogen ikke kan lide, og at det adskiller sig fra overhead som møder. Toil har tendens til at være:

| Kendetegn | Betydning |
|---|---|
| **Manuelt** | Kræver menneskelig indsats, selv om et script kører trinnene |
| **Gentaget** | Gøres igen og igen, ikke et nyt problem |
| **Automatiserbart** | En maskine kunne gøre det, eller behovet kunne designes væk |
| **Taktisk** | Afbrydelsesdrevet og reaktivt, som at reagere på pages |
| **Uden varig værdi** | Servicen er i den samme tilstand bagefter |
| **Lineært med vækst** | Indsatsen skalerer med servicens størrelse, trafik eller brugere |

Bogen siger, at SRE'er sigter mod at holde toil under 50 procent af deres tid, med mindst halvdelen brugt på ingeniørprojektarbejde, og introduktionen sætter et loft på 50 procent for samlet "ops"-arbejde og sender overskuddet tilbage til udviklingsteams. Den siger, at for meget toil forårsager karrierestagnation, lav moral og udbrændthed, bremser funktionsarbejde og driver frafald; "toil bliver giftigt, når det opleves i store mængder", selv om små mængder kan være beroligende, og noget er uundgåeligt. Kapitlet giver en måde at beregne den bund, som vagt pålægger (for eksempel en nedre grænse på 33 procent for en vagtrotation på seks personer under dets eksempelantagelser) og rapporterer, at afbrydelser var den største toilkilde, fulgt af vagtrespons og derefter releases. Det definerer ingeniørarbejde som nyt, kræver dømmekraft, producerer permanent forbedring og følger en strategi.

### Nødrespons og overvågning

Introduktionen siger, at overvågning ikke bør kræve, at et menneske fortolker alarmer: software fortolker data, og mennesker underrettes kun, når handling er nødvendig (se Emne 3.10 — Overvågning og eventstyring). Den siger, at vagthavende SRE'er højst bør modtage omkring to events pr. vagt. Den påstår, at playbooks giver en omtrent tredobbelt forbedring af gennemsnitlig tid til reparation sammenlignet med at improvisere. Hændelseshåndtering følger en incident command-tilgang, og postmortems er skyldfri og skrevet for alle væsentlige hændelser (se Emne 3.2 — Hændelseshåndtering).

### Ændringsstyring

Introduktionen anfører, at omkring 70 procent af nedbrud kommer fra ændringer af et live system, og anbefaler progressive udrulninger, hurtig opdagelse af problemer og sikre tilbagerulninger. Det er bogens egen påstand, fra Googles erfaring, og gælder måske ikke for alle organisationer. Dens budskab er i overensstemmelse med DORA-vejledningen om ændring (se Emne 3.4 — Ændringsunderstøttelse og Emne 3.5 — Release- og deploymentstyring).

### SRE og ITIL

SRE kan læses som en ingeniørmæssig måde at udføre flere ITIL-praksisser på:

| ITIL-praksis | SRE-tilgang |
|---|---|
| Hændelseshåndtering | Incident command-roller, en levende hændelsesregistrering, skyldfri postmortems |
| Problemhåndtering | Postmortem-aktioner i backloggen, fjernelse af toil ved årsagen |
| Ændringsunderstøttelse | Progressive udrulninger, hurtig opdagelse, sikker tilbagerulning, automatiserede tjek |
| Styring af serviceniveauer | SLI'er, SLO'er, fejlbudgetter |
| Overvågning og eventstyring | Symptombaseret alarmering, de fire gyldne signaler |
| Kapacitetsstyring | Kapacitetsplanlægning som en ingeniøropgave, med belastningstest |
| Løbende forbedring | Et loft over toil, ingeniørprojekter som hovedarbejde |

Kortlægningen er denne vejlednings, ikke kildernes. Hverken bogen eller Wikipedia-artiklen påstår at implementere ITIL.

### Udrulningsmodeller

Wikipedia-artiklen beskriver seks organisatoriske modeller for SRE: "Kitchen Sink", infrastruktur, værktøjer, produkt eller applikation, indlejret og rådgivende. Den siger, at en hybrid er almindelig i store organisationer, men markerer den påstand som i behov af en henvisning. Hvilken model der passer til jer, afhænger af jeres størrelse og antallet af services.

### Grænser og kritik

Wikipedia-artiklen angiver ingen kritik, omkostninger eller fejlmåder, og bogen beskriver én organisations succes. Praktiske grænser er velkendte fra erfaring og tilbydes her som sådan: SRE har brug for ingeniører, der kan skrive software og er villige til at lave drift; loftet på 50 procent har brug for opbakning fra ledelsen; fejlbudgetter virker kun, hvis produktteams respekterer dem; og tilgangen er svær at kopiere uden den skala og de værktøjer, der frembragte den. Mindre organisationer kan adoptere ideerne, som mål, budgetter, måling af toil og skyldfri gennemgang, uden at oprette et team.

## God praksis

1. **Vælg én service, og sæt et mål.** Vælg to til fire indikatorer, der afspejler brugeroplevelsen, sæt et løst første mål, og mål i nogle måneder, før I strammer det.
2. **Aftal en fejlbudgetpolitik.** Skriv ned, hvad der sker, når budgettet næsten er brugt, og når det er brugt, og hvem der kan tilsidesætte. Gør det til en fælles regel for produkt og drift.
3. **Mål toil.** Bed folk registrere, hvor stor en del af deres tid der går til manuelt, gentaget driftsarbejde. Brug de seks kendetegn til at klassificere det. Se på de øverste kilder.
4. **Begræns det manuelle arbejde.** Sæt et loft for toil, som halvdelen af en persons tid, og gennemgå det. Når loftet overskrides, send overskuddet tilbage til de teams, der ejer årsagerne, eller reducér omfanget.
5. **Automatisér det største toil først.** Vælg det punkt, der koster mest tid og er mest gentageligt, automatisér det med tests, og mål besparelsen. Foretræk at designe behovet væk frem for at automatisere det.
6. **Beskyt ingeniørtid.** Planlæg projektarbejde for driftsingeniører som rigtigt arbejde med ejere og datoer. Uden det udvider toil sig.
7. **Begræns afbrydelser.** Sigt efter få events pr. vagt, tun alarmer, så pages er handlingsrettede, og ret tilbagevendende årsager. Bogens vejledning er højst omkring to events pr. vagt.
8. **Skriv playbooks.** For almindelige fejl skriv korte, afprøvede responstrin. Bogen påstår, at de forbedrer reparationstiden sammenlignet med at improvisere.
9. **Gør ændringer progressive og reversible.** Udrul gradvist, opdag problemer hurtigt, og rul sikkert tilbage. Fordi ændringer er den hyppigste årsag til nedbrud i bogens erfaring, invester her først.
10. **Kør skyldfri postmortems for væsentlige hændelser,** inklusive næsten-ulykker, der ikke pagede. Gør aktioner til backlogpunkter.
11. **Start med ideerne, ikke teamet.** Mindre organisationer kan adoptere mål, budgetter, toilmålinger og postmortems med eksisterende personale, før de opretter et dedikeret team.
12. **Vælg en organisatorisk model med vilje.** Hvis I opretter en SRE-funktion, så beslut, om den leverer værktøjer, indlejres hos produktteams eller rådgiver, og gennemgå valget, efterhånden som I vokser.

## Spørgsmål til diskussion i teamet

**Hvilken service ville vi sætte et mål på først, og hvad ville målet være?**

Bed hver person navngive servicen og den indikator, der bedst afspejler brugerens oplevelse. Sammenlign. Forskelle viser uklare prioriteter. Facilitatoren kan spørge, hvad der sker i dag, når servicen er langsommere eller mindre tilgængelig, end brugerne forventer. Aftal en service at starte med og hvad der skal måles.

**Hvad ville vi gøre, hvis vi brugte hele vores fejlbudget denne måned?**

Bed teamet og en produktrepræsentant beskrive handlingerne, hvem der beslutter, og hvad der er beskyttet. Mange teams har aldrig aftalt det. Drøft, om en pause i risikable releases ville blive accepteret. Udkast en politik på én side.

**Hvor stor en del af vores uge er toil, og hvad er de tre øverste kilder?**

Bed folk estimere og derefter føre en registrering i to uger. Sammenlign estimater med registreringer. Målet er at se arbejdets form, ikke at give skyld. Vælg den største kilde, og spørg, om den kan fjernes ved design.

**Hvilken tilbagevendende manuel opgave kunne et script eller en designændring fjerne?**

List de opgaver, folk frygter. Estimér for hver hyppighed og tid. De bedste kandidater er hyppige, stabile og har lav risiko. Spørg, hvad der ville gøre automatisering sikker, som grænser og logs. Vælg én, der skal automatiseres.

**Hvor mange events får hver vagt, og hvor mange kræver handling?**

Tæl for det seneste kvartal. Hvis tallet er højt, så drøft, hvor det kommer fra. Introduktionen foreslår at sigte mod omkring to events pr. vagt. Vælg én alarmkilde, der skal rettes.

**Hvad ville vi miste og vinde, hvis vi oprettede et dedikeret pålidelighedsteam?**

Bed om ærlige synspunkter. Gevinster kan være fokus og færdigheder; tab kan være et nyt silo eller aflæsning af driftsarbejde. Drøft alternativer som indlejrede ingeniører eller en rotation. Beslut, hvad I vil prøve i lille skala.

## I praksis: et agilt ITIL-eksempel

En regional elnetvirksomhed driver en app til rapportering af nedbrud og et system til udsendelse af feltmandskab. Et samlet team på atten bygger og driver begge. Driftspersonalet i teamet bruger det meste af deres tid på manuelt arbejde: genstart af fastklemte jobs, justering af datafeeds og reaktion på pages. Gruppens leder bemærker, at de har lidt tid tilbage til forbedring, og to af dem har bedt om at flytte til andre teams.

Teamlederen foreslår en SRE-inspireret tilgang. For appen til rapportering af nedbrud sætter teamet to indikatorer: andelen af rapportindsendelser, der lykkes, og tiden til at vise en bekræftelse. Det aftaler et løst mål og et månedligt fejlbudget med kundeservicechefen og skriver en politik på én side: når mere end tre fjerdedele af budgettet er brugt, venter risikable releases. Teamet beder ingeniørerne føre en log over toil i en måned. Loggen viser, at en tredjedel af deres tid går til at genstarte et svigtende dataimportjob og til manuelle justeringer efter storme, når efterspørgslen stiger. De sætter et loft på halvdelen af deres tid på toil, beslutter at rette importjobbets årsag først og automatisere stormjusteringerne med et script, der har grænser og en log. Pages tunes, så kun brugersynlige symptomer alarmerer den vagthavende ingeniør.

Fire måneder senere er toil faldet til omkring en tredjedel af teamets tid, importjobbet svigter ikke længere, og fejlbudgetpolitikken er brugt én gang, i en måned med et leverandørnedbrud, til at udskyde en funktionsrelease. Vanskeligheder består. Udsendelsessystemet har endnu ingen mål, og kundeservicechefen har to gange været fristet til at tilsidesætte budgetpolitikken for hastende funktioner. Teamlederen og chefen aftaler at gennemgå tilsidesættelser månedligt og sætte mål for udsendelse næste gang. De lærer også, at "loftet" er en vejledning, ikke et løfte: efter en større storm steg toil langt ud over halvdelen i to uger, og de må beslutte, hvad der skal skæres.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams deltager i at sætte mål og respekterer budgettet. Byg driftsegnethed ind i funktioner, acceptér at toil vender tilbage til det team, der forårsager det, og hjælp med at automatisere. Behandl et brugt budget som information om servicen, ikke som en straf.

### Service- og driftsteams

Driftsteams kan udføre SRE-arbejdet eller adoptere dets ideer. Mål toil, beskyt tid til ingeniørarbejde, og skub gentaget arbejde tilbage til dets kilde. Brug mål til at forklare, hvorfor noget arbejde bør afvises.

### Ledelse og governance

Ledere må bakke op om loftet over toil og fejlbudgetreglen; uden opbakning fejler de. Bed om mål og budgetstatus, ikke om et antal hændelser. Giv tid til ingeniørarbejde, og vær klar til at sige nej til funktioner, når budgettet er brugt.

### Kunder og brugere

Kunder og brugere har gavn af klare serviceniveauer og af hurtigere genopretning, når tingene svigter. Fortæl teamet, hvad der betyder mest, så mål afspejler din oplevelse. Forvent ærlige samtaler om afvejninger mellem nye funktioner og pålidelighed.

## Almindelige fejlmønstre

- **At kopiere titlen.** Driften omdøbes, og intet ændrer sig. I stedet: adoptér mål, budgetter og toilmålinger først.
- **Et fejlbudget, ingen respekterer.** Funktioner tilsidesætter det hver gang. I stedet: aftal reglen med product owners, og gennemgå tilsidesættelser.
- **Ingen tid til ingeniørarbejde.** Toil fylder ugen. I stedet: sæt et loft, og beskyt projekttid.
- **At automatisere det forkerte.** En sjælden opgave automatiseres, mens den hyppige består. I stedet: rangér efter tid og hyppighed.
- **Perfektionsmål.** Mål kræver 100 procent. I stedet: sæt løse mål ud fra brugerbehov, og stram med data.
- **Et pålidelighedsteam som losseplads.** Udvikling sender alt driftsarbejde til det. I stedet: send overskudsarbejde tilbage til dets kilde.
- **At kopiere Googles skala.** Praksisser, der kræver en stor organisation, adopteres af en lille. I stedet: tag de ideer, der passer, som mål og postmortems.
- **At ignorere folk.** Vagtbelastning brænder folk ud. I stedet: begræns events pr. vagt, og del vagtplanen.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Mål og budgetter | Pålidelighedsmål er uformelle | Nogle services har mål | Centrale services har mål og en aftalt fejlbudgetpolitik | Budgetter vejleder releases, og tilsidesættelser gennemgås | Mål og budgetter afstemmes på tværs af indbyrdes afhængige services |
| Toil og automatisering | Toil måles ikke | Nogle teams estimerer toil | Toil måles og begrænses; automatiseringsarbejde planlægges | Toilkilder og besparelser spores og reduceres | Automatisering deles, og toil reduceres på tværs af teams |
| Nødrespons | Respons improviseres | Nogle playbooks og en vagtplan findes | Roller, playbooks og skyldfri postmortems er standard | Eventbelastning og reparationstider måles og forbedres | Respons indøves og koordineres på tværs af teams og leverandører |
| Ændring og kapacitet | Ændringer er risikable og manuelle | Nogle udrulninger er trinvise | Progressiv udrulning og kapacitetsplanlægning er rutine | Ændringssvigt og kapacitetsprognoser måles | Ændrings- og kapacitetspraksisser deles på tværs af organisationen |

## Tjekliste

- [ ] Mindst én service har indikatorer og et løst mål, målt over tid.
- [ ] En fejlbudgetpolitik er aftalt med product owners og skrevet ned.
- [ ] Toil måles med en konsekvent definition, og de øverste kilder er kendt.
- [ ] Et loft for toil findes og gennemgås.
- [ ] Tid til ingeniørprojekter er planlagt og beskyttet.
- [ ] Vagtbelastning måles, og pages er handlingsrettede.
- [ ] Playbooks findes for de mest almindelige fejl og er afprøvet.
- [ ] Udrulninger er progressive, og tilbagerulninger er afprøvet.
- [ ] Væsentlige hændelser og næsten-ulykker får skyldfri postmortems med aktioner med ejere.
- [ ] Vi har med vilje valgt, hvordan pålidelighedsarbejde organiseres.

## AI-prompts

**Formål: at klassificere dit arbejde som toil, ingeniørarbejde eller overhead.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Formål: at udarbejde en fejlbudgetpolitik.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at vælge et toil-punkt, der skal automatiseres først.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at skrive en playbook-post.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): brug den til at designe en fair vagtplan med grænser for events pr. vagt.
- [runbook](../../../../skills/runbook/SKILL.md): brug den til at skrive de playbooks, der fremskynder reparation.
- [postmortem](../../../../skills/postmortem/SKILL.md): brug den til at køre skyldfri gennemgange og spore aktioner.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): brug den til at afprøve, at pålidelighedsdesign virker, ved at forårsage fejl sikkert.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): brug den til at planlægge kapacitet som en ingeniøropgave knyttet til efterspørgsel.

## Vigtigste kilder

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): definitionen af SRE, loftet på 50 procent, grundprincipperne og den deling mellem udvikling og drift, det sigter mod at undgå.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): definitionen af toil og grundene til at sætte et loft.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): pålidelighedens økonomi og fejlbudgettet.
- **Site reliability engineering** (Wikipedia): en bredere opsummering af disciplinen, udrulningsmodeller, adoptionsundersøgelse og videre læsning.

## Referencer

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
