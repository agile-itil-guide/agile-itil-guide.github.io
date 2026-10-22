# Produkt- og serviceejerskab

**Produkt- og serviceejerskab giver hvert produkt eller hver service én ansvarlig person og ét team, der bygger og driver det, så beslutninger om værdi, kvalitet og omkostning træffes af dem, der lever med resultaterne.**

## Hvorfor det betyder noget

I mange organisationer ejer ingen en service som helhed. Et projekt bygger den, et driftsteam driver den, en leverandør leverer en del, og en økonomiafdeling betaler for den. Når noget går galt, er der fire møder og ingen beslutning. Når brugere ønsker noget forbedret, går anmodningen til en kø, der ikke tilhører nogen. Servicen forfalder mellem teamene.

Ejerskab adresserer dette direkte. Det kræver to ting: en person, der er ansvarlig for produktets eller servicens værdi, og et team, der har færdighederne og beføjelsen til at bygge det, drive det og forbedre det. Idéen er gammel i nogle former og moderigtig i andre, og detaljerne varierer meget mellem organisationer. At få det rigtigt er en af de vigtigste betingelser for, at alt andet i denne vejledning virker.

To idéer ligger bag emnet. Den første er Scrum Guides Product Owner, som er ansvarlig for at maksimere produktets værdi og for at ordne dets backlog, og som er én person og ikke et udvalg (se Emne 1.4 — Leveranceprognoser og planlægningsmålinger). Den anden er sloganet "you build it, you run it", som forbindes med Amazons teknologichef Werner Vogels i et interview udgivet i ACM Queue i 2006, som denne vejledning ikke kunne læse direkte (siden gav en adgangsfejl) og kender fra sekundære beskrivelser. Som disse beskrivelser gengiver det, stillede Vogels den gamle model, hvor udviklere kaster software over muren til driften, over for en model, hvor udviklere forbliver i daglig kontakt med driften af deres software og med kunden. [Wikipedia-artiklen om produktstyring](https://en.wikipedia.org/wiki/Product_management) giver en generel beskrivelse af disciplinen, men siger intet om den agile product owner-rolle eller om serviceejerskab, så dette emne laver forbindelsesarbejdet og siger det.

## Kernebegreber

### Produkt, service, projekt

| Begreb | Betydning, i almindelig sprogbrug | Tidshorisont |
|---|---|---|
| **Projekt** | En midlertidig indsats med defineret omfang, start og slut | Slutter, når omfanget er leveret |
| **Produkt** | Noget, der tilbydes kunder eller brugere, og som udvikles og forbedres over tid | Fortsætter, så længe det skaber værdi |
| **Service** | En måde at levere værdi til andre på uden at de ejer omkostningerne og risiciene (se Emne 2.1 — IT-servicestyring) | Fortsætter, så længe den tilbydes |

Et digitalt produkt er ofte også en service: brugerne afhænger af, at det kører godt. Skellet mellem produkt og service betyder mindre end skiftet fra projekt til vedvarende ansvar, som Emne 1.9 — Agil ledelse beskriver.

### Produktstyring

Wikipedia-artiklen beskriver produktstyring som forretningsprocessen med at planlægge, udvikle, lancere og styre et produkt eller en service, så produkter opfylder målmarkedets behov og understøtter forretningsstrategien gennem hele produktlivscyklussen. Den opregner produktchefers ansvar: at styre produktlinjen fra dag til dag, at eje business casen og leveringen til markedet, at analysere kundeundersøgelser og konkurrence, at dokumentere krav, at sætte strategi og lave køreplanen og at afstemme med design, udvikling, marketing, salg, support og jura. Den sporer begrebet til et notat fra 1931 af Procter & Gambles præsident Neil H. McElroy, der bad om "Brand Men" til at styre produkter. Den siger, at produktchefer ofte måles på ansvar for resultatopgørelsen.

Artiklen forbinder ikke produktstyring med den agile Product Owner, så koblingen er denne vejlednings læsning: en Product Owner er ansvarlig for produktets værdi og ordner dets backlog, og i mange organisationer udfører en produktchef den bredere forretningsrolle. I små teams kan én person gøre begge dele.

### Product owner og serviceejer

| Rolle | Ansvarlig for | Typiske spørgsmål |
|---|---|---|
| **Product owner** (Scrum) | At maksimere produktets værdi; at ordne product backlog | Hvad bør vi bygge eller forbedre næste gang, og hvorfor? |
| **Produktchef** | Et produkts business case, strategi og køreplan | Er det her det rigtige produkt, til det rigtige marked? |
| **Serviceejer** (ITSM-sprogbrug) | En services ydeevne og forbedring gennem dens liv | Opfylder servicen brugernes behov, til en acceptabel omkostning og risiko? |

Rollerne overlapper. For en intern IT-service kan én person være både product owner og serviceejer. Scrum Guide understreger, at Product Owner er én person, ikke et udvalg, så beslutninger om rækkefølge har en klar ejer. Uanset titlen er testen, om én navngiven person kan træffe afvejninger mellem nye funktioner, pålidelighed og omkostning.

### "You build it, you run it"

Som beskrevet i sekundære opsummeringer af Vogels' interview fra 2006 udtrykker frasen en model, hvor det team, der bygger en service, også driver den og dermed bliver i daglig kontakt med brugerne og med konsekvenserne af sit design. Interviewet blev ført af Jim Gray og udgivet i ACM Queue i 2006; Amazons egen blog bemærkede interviewet, da det udkom. Denne vejledning har ikke læst originalen, så den citerer den ikke. Modellen har omkostninger såvel som fordele:

| Fordel | Omkostning eller risiko |
|---|---|
| Bygherrerne mærker smerten ved dårlig driftsegnethed og retter den | Bygherrerne bærer vagtbelastning og kan brænde ud |
| Kortere feedback fra brugere og hændelser | Færdigheder i drift, sikkerhed og compliance skal findes i teamet |
| Ingen overdragelse, hvor viden går tabt | Standarder på tværs af teams har brug for andre mekanismer |
| Klart ansvar | Små teams kan finde hele byrden for tung |

Site reliability engineering og DevOps tilbyder måder at støtte sådanne teams på (se Emne 5.2 — DevOps og Emne 5.3 — Site reliability engineering). Platformsteams kan levere fælles værktøjer, så hvert produktteam ikke genopbygger dem.

### Teams, der ejer

Ejerskab kræver et team med færdighederne til at levere og drive og beføjelsen til at handle. Scrum beskriver et lille tværfagligt, selvstyrende team, der ikke afhænger af andre for hele sit arbejde. I praksis afhænger produktteams også af fælles platforme, sikkerhed og dataservices. At håndtere disse afhængigheder er en del af ejerskab (se Emne 1.8 — Skalering af agilitet).

### Finansiering og mål

Ejerskab kræver stabil finansiering og klare mål. Et team, der finansieres projekt for projekt, opløses, når projektet slutter, og en serviceejer har intet team. Et fast team, finansieret til et produkt eller en service, med mål der ændrer sig, efterhånden som det lærer, er det sædvanlige svar (se Emne 1.9 — Agil ledelse). Mål bør handle om resultater for brugere og forretning og sættes sammen med ejeren.

### Ejerskab i servicestyring

ITIL-praksisser har brug for ejere: hver service har en ejer, hver praksis har en ejer, og hver større proces har en ejer (se Emne 5.1 — Agil servicestyring). Serviceejeren holder serviceniveauet, katalogindgangen, forbedringslisten og relationen til kunderne (se Emne 3.7 — Styring af serviceniveauer og Emne 3.8 — Styring af servicekataloget).

### Grænser og forbehold

De kilder, der er læst til denne vejledning, giver ikke belæg for, hvor godt ejerskabsmodeller virker, og Wikipedia-artiklen om produktstyring opregner ingen kritik. Praktiske forbehold, tilbudt ud fra erfaring, omfatter ejere med titel, men uden beføjelse, ejere der er overbelastede med flere produkter, "you build it, you run it" uden støtte, som fører til udmattelse, og ejerskab, der stopper ved teamgrænsen, mens værdistrømmen krydser den (se Emne 5.4 — Værdistrømsstyring).

## God praksis

1. **Navngiv én ansvarlig person for hvert produkt eller hver service.** Skriv navnet i servicekataloget. Sørg for, at vedkommende har beføjelse over prioriteter og en stemme i finansieringen.
2. **Definér, hvad ejeren beslutter.** Angiv, hvilke beslutninger ejeren træffer alene, hvilke sammen med teamet, og hvilke der kræver eskalering. Uden det er ejerskab en titel.
3. **Giv ejeren tid.** Gør ikke folk til ejere af flere store produkter, eller til ejere med et fuldt leveringsjob ved siden af. Ejerskab er rigtigt arbejde.
4. **Finansiér teamet for servicens levetid.** Undgå at opløse teams, når projekter slutter. Gennemgå finansiering i en fast cyklus mod resultater.
5. **Sæt resultatmål sammen med ejeren.** Beskriv, hvad der skal blive bedre for brugere og forretning, med nogle få målinger, teamet selv kan frembringe (se Emne 5.6 — Metrikker og måling).
6. **Læg bygning og drift i ét team, hvor I kan.** Medtag færdighederne til udvikling, drift og support, og giv teamet adgang til produktionsdata og værktøjer inden for sikre grænser. Hvor I ikke kan, så lav stærke arbejdsaftaler.
7. **Støt teamet med en platform.** Stil fælles værktøjer til udrulning, overvågning og sikkerhed til rådighed, så hvert team ikke bygger sit eget. Behandl platformen som et produkt med brugere.
8. **Del vagtbelastningen fair.** Begræns natopkald, tun alarmer, og hold øje med udbrændthed. "You build it, you run it" fejler, når dem der driver det, er udmattede.
9. **Hold én backlog pr. produkt.** Medtag funktioner, fejl, driftsarbejde og forbedringspunkter i én ordnet liste, så ejeren kan veje dem mod hinanden.
10. **Forbind ejere med hinanden.** Hold jævnlige samtaler mellem ejere af indbyrdes afhængige produkter og services for at løse konflikter og afstemme planer.
11. **Gennemgå ejerskab årligt.** Tjek, at hver service stadig har en aktiv ejer, et team og en backlog, og at rollerne stadig passer.
12. **Tag højde for små teams.** Hvor ét team ejer mange små services, så gruppér dem fornuftigt og brug lette praksisser. Anvend ikke en tung model på en lille service.

## Spørgsmål til diskussion i teamet

**Hvem er ansvarlig for hver af vores services, og ville vedkommende selv sige det?**

List de vigtigste services, og navngiv ejeren. Spørg derefter hver navngiven person, om de ville kalde sig ejeren. Kløfter mellem listen og svarene afslører, hvor meget ejerskab der kun er nominelt. Facilitatoren kan spørge, hvilken service der ingen ejer har, og hvad det har kostet.

**Hvad kan vores ejer beslutte i dag uden at spørge nogen?**

Bed om eksempler: prioriteter, udgifter, en release, en kundeforpligtelse. Hvis de fleste beslutninger kræver godkendelse fra andre, så drøft, hvilke der bør uddelegeres og under hvilke grænser. Aftal én beslutning, der skal flyttes.

**Når noget går galt i produktion, hvem bliver vækket, og har de midlerne til at rette det?**

Spørg, hvem der er på vagt, og hvad de kan ændre. Hvis det ikke er bygherrerne, så spørg hvorfor. Drøft, hvordan feedback fra hændelser når dem, der designer servicen. Aftal én rute, der skal forkortes.

**Hvordan finansierer vi denne service, og hvad sker der, når et projekt slutter?**

Følg finansieringen af en hovedservice. Spørg, hvem der kan bruge penge på forbedringer, og hvem der beslutter at stoppe. Hvis teamet opløses efter et projekt, så drøft omkostningen ved tabt viden. Foreslå et forsøg med fast finansiering af én service.

**Hvilke færdigheder mangler vi for at bygge og drive vores service, og hvordan kunne vi få dem?**

List de færdigheder, arbejdet kræver: udvikling, drift, sikkerhed, data, support. Markér huller. Drøft parprogrammering, uddannelse, at låne en specialist eller en fælles platform. Vælg ét hul, der skal lukkes.

**Hvor mange ejere beder vi én person om at være?**

Tæl de produkter og services, hver ejer er ansvarlig for. Overbelastede ejere kan ikke træffe gode beslutninger. Drøft at dele, uddelegere eller udfase services. Aftal et maksimum og en plan for en ejer, der er over det.

## I praksis: et agilt ITIL-eksempel

Et nationalt jobcenter driver en online jobmatchningsservice, der bruges af jobsøgende og arbejdsgivere. Servicen blev bygget af et projektteam, overdraget til en driftsgruppe og finansieres nu som en række små projekter. Chefen for digitale services finder ud af, at ingen kan sige, hvem der ejer den: den oprindelige projektsponsor er gået på pension, driften håndterer hændelser, og en politikenhed beder om ændringer gennem en kø, der tager måneder. Arbejdsgivere klager over en registreringsformular, der ikke er ændret i tre år.

Chefen udpeger en serviceejer fra arbejdsgiverrelationsenheden, en person der forstår både arbejdsgivere og servicen, og giver hende en stemme over backloggen og en andel af budgettet. Et fast team på otte, der kombinerer udviklere, en driftsingeniør, en tester og en designer, dannes af de folk, der allerede arbejdede på servicen. Teamet kommer med i vagtplanen, med en grænse for natopkald, og bruger en fælles platform til udrulning og overvågning, som et centralt team vedligeholder. Politikenhedens anmodninger kommer ind i den ene backlog, hvor ejeren rangerer dem mod forbedringer og rettelser. Teamet og ejeren aftaler tre resultatmål for året med nogle få målinger: andelen af gennemførte arbejdsgiverregistreringer, den tid jobsøgende bruger på at finde et match, og antallet af gentagne hændelser.

Efter otte måneder er registreringsformularen bygget om, gennemførelsen er forbedret, og gentagne hændelser falder. Ejeren kan besvare arbejdsgiveres spørgsmål om, hvad der er planlagt. Nogle vanskeligheder består. Ejeren er også ansvarlig for en anden lille service og er presset, politikenheden ærgrer sig over at skulle konkurrere om backlogpladser, og vagthavende ingeniører siger, at den fælles platform mangler et værktøj, de har brug for. Chefen for digitale services nedsætter ejerens øvrige pligter, beder politikenheden og ejeren om at oprette et månedligt planlægningsmøde og sætter platformsønsket på det centrale teams backlog.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bør arbejde med en klar ejer og overtage driften af det, de bygger. Giv ejeren belæg fra brugere, hændelser og omkostninger, og vær ærlige om afvejninger. Bed om de værktøjer og den støtte, I har brug for, for at bære vagten fair.

### Service- og driftsteams

Driftsteams støtter produktteams med ekspertise, platforme og fælles standarder. Hvor de driver services for andre, så navngiv ejere og aftal serviceniveauer. Modstå at overdrage ethvert driftsproblem til en central gruppe, der ikke ejer noget.

### Ledelse og governance

Ledere skaber ejerskab ved at navngive ejere, give dem beføjelse og tid og finansiere faste teams. Bed ejere om resultater og belæg, og undlad at tilsidesætte deres prioriteter uden drøftelse. Hold øje med ejere, der har titlen, men ikke magten.

### Kunder og brugere

Kunder og brugere har gavn af at vide, hvem der svarer for en service, og kunne nå dem. Fortæl ejeren, hvad der betyder mest, og hvad der gør ondt. Forvent klar information om, hvad der er planlagt, og en stemme i, hvordan prioriteter sættes.

## Almindelige fejlmønstre

- **Titel uden beføjelse.** En ejer kan ikke beslutte noget. I stedet: angiv, hvad ejeren beslutter, og bak det op.
- **Ejerskab ved udvalg.** Ingen er ansvarlig. I stedet: navngiv én person for hvert produkt eller hver service.
- **Overbelastede ejere.** Én person ejer for mange produkter. I stedet: begræns antallet, og uddelegér.
- **Opløsning af teams efter projekter.** Viden går ud ad døren. I stedet: finansiér faste teams til vedvarende services.
- **"You build it, you run it" uden støtte.** Teams brænder ud. I stedet: stil en platform, delt vagt og tunede alarmer til rådighed.
- **Ejerskab, der stopper ved teamet.** Værdistrømmen krydser teams. I stedet: forbind ejere af indbyrdes afhængige services.
- **Flere backlogs.** Funktioner, fejl og drift konkurrerer i skjulte køer. I stedet: hold én ordnet backlog pr. produkt.
- **At kopiere en model uden kontekst.** Et mønster fra en stor virksomhed anvendes på en lille service. I stedet: tilpas modellen til størrelse og risiko.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Ansvar | Services har ingen klar ejer | Nogle services har uformelle ejere | Hver service har en navngiven ejer med defineret beslutningsret og tid | Ejernes effektivitet og resultater gennemgås | Ejere koordinerer på tværs af indbyrdes afhængige services og med kunder |
| Team og færdigheder | Bygning og drift er adskilte teams | Nogle teams deler vagt | Faste teams ejer bygning og drift med de færdigheder, de har brug for | Færdighedshuller og belastning måles og adresseres | Færdigheder og platforme deles på tværs af teams og leverandører |
| Finansiering og mål | Finansiering sker pr. projekt | Nogle faste teams findes | Services har fast finansiering og resultatmål | Finansiering følger målte resultater | Finansiering og mål afstemmes på tværs af services og med kunder |
| Backlog og prioriteter | Prioriteter kommer fra mange køer | Nogle ejere fører en liste | Én ordnet backlog pr. produkt omfatter alle slags arbejde | Backlogflow og prioriteter gennemgås med interessenter | Prioriteter afstemmes på tværs af ejere og med kunder |

## Tjekliste

- [ ] Hvert produkt eller hver service har én navngiven, ansvarlig ejer, opført i servicekataloget.
- [ ] Det, hver ejer beslutter alene, sammen med teamet og ved eskalering, er skrevet ned.
- [ ] Ejere har tid til rollen og et overskueligt antal services.
- [ ] Et fast team er finansieret til hver vedvarende service.
- [ ] Hver service har resultatmål med nogle få målinger.
- [ ] Det team, der bygger en service, har færdighederne og adgangen til at drive den, eller har klare arbejdsaftaler med dem, der gør.
- [ ] Vagtbelastningen deles fair med grænser og tunede alarmer.
- [ ] En fælles platform støtter teams med udrulning, overvågning og sikkerhed.
- [ ] Hvert produkt har én ordnet backlog, der dækker funktioner, fejl, drift og forbedring.
- [ ] Ejerskab gennemgås mindst én gang om året.

## AI-prompts

**Formål: at udarbejde beslutningsret for en produkt- eller serviceejer.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at finde services uden en klar ejer.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Formål: at planlægge en vagtmodel for et team, der bygger og driver.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at forberede en begrundelse for fast finansiering af en service.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre det klart, hvem der ejer, støtter og høres for hvert produkt eller hver service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): brug den til at beskrive retning og kortsigtede planer for et produkt eller en service.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): brug den til at fastlægge et teams formål, resultater og grænser ved starten.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): brug den til at hjælpe en ejer med at ordne backloggen efter værdi og omkostning.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): brug den til at validere, hvad et produkt eller en service bør gøre næste gang, før det bygges.

## Vigtigste kilder

- **The Scrum Guide** (Ken Schwaber og Jeff Sutherland, scrumguides.org): definitionen af Product Owner-ansvaret og det tværfaglige, selvstyrende team.
- **Product management** (Wikipedia): en generel beskrivelse af disciplinen, dens ansvar og dens historie.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): interviewet, hvor "you build it, you run it" beskrives; læs originalen for den præcise ordlyd.
- **Site Reliability Engineering** (Google, sre.google): én måde at støtte teams, der driver det, de bygger.

## Referencer

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
