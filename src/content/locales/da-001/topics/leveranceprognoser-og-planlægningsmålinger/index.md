# Leveranceprognoser og planlægningsmålinger

**Leveranceprognoser og planlægningsmålinger lader et team sige, med ærlige intervaller, hvornår arbejde sandsynligvis er færdigt, og hvor meget det kan tage på sig, ved at se på den kontinuerlige strøm af færdigt arbejde og teamets kapacitet, og de virker for serviceteams, når planlagt arbejde og afbrydelsesdrevet arbejde tælles sammen.**

## Hvorfor det betyder noget

Agile teams sigter mod kontinuerlig softwarelevering, og alle, der afhænger af den levering, stiller de samme spørgsmål: hvornår er det her færdigt, hvor meget kan teamet tage på sig, og hvad sker der, når noget hastende dukker op? Et team, der ikke kan besvare de spørgsmål med evidens, falder tilbage på løfter, det ikke kan holde, og de, der afhænger af det, lærer at mistro enhver dato.

Et team, der driver services, mærker det skarpere end de fleste. Planlagt forbedringsarbejde, serviceanmodninger og hændelser deler de samme folk. En plan, der ignorerer den uplanlagte del, fejler den første uge, en hændelse indtræffer. En prognose, der kommer fra teamets egen historik og angiver sit interval, overlever mødet med virkeligheden bedre end en dato, der kommer fra håb.

Dette emne beskriver, hvordan man prognosticerer ud fra strømmen af færdigt arbejde, hvordan man planlægger omkring teamets kapacitet, og hvilke planlægningsmålinger der hjælper eller vildleder. Scrum, sprints og velocity er én måde at planlægge på; et kort afsnit mod slutningen dækker dem for teams, der bruger dem. Målingerne her bygger på flowmålingerne i Emne 1.5 — Kanban og den bredere vejledning om måling i Emne 5.6 — Metrikker og måling.

## Kernebegreber

### Prognosticér ud fra flow, ikke ud fra løfter

En prognose er en udtalelse om fremtiden baseret på evidens fra fortiden, og den bærer usikkerhed. Kanban Guide definerer en serviceniveauforventning (service level expectation) som en prognose for, hvor lang tid et arbejdselement skal bruge på at flyde gennem arbejdsgangen, baseret på tidligere cyklustider, og siger, at det ikke er en aftale. Den definition er en god model for al leveranceprognosticering: brug reel historik, sig hvad den dækker, og undgå at love mere, end du har målt (se Emne 1.5 — Kanban).

To slags prognoser er almindelige:

- **Hvor lang tid tager ét element?** Se på, hvor lang tid lignende færdige elementer tog, og angiv et interval eller en udtalelse som "de fleste elementer af denne type bliver færdige inden for et givet antal dage".
- **Hvor meget når vi at færdiggøre til en dato, eller hvornår bliver et sæt elementer færdigt?** Se på, hvor mange elementer teamet normalt færdiggør i en periode, og anvend det interval på det arbejde, der er tilbage.

### Flowmålingerne bag en prognose

Kanban Guide definerer fire målinger, og de er råmaterialet til leveranceprognoser:

| Måling | Hvad den fortæller dig | Hvordan den indgår i en prognose |
|---|---|---|
| **Cyklustid** | Hvor lang tid et færdigt element tog fra start til slut | Spredningen af de seneste cyklustider giver et interval for, hvor lang tid et nyt element tager |
| **Gennemløb (throughput)** | Hvor mange elementer der blev færdige i en periode | Intervallet af seneste gennemløb giver et interval for, hvor meget der bliver færdigt i en fremtidig periode |
| **Igangværende arbejde (WIP)** | Hvor mange elementer der er startet, men ikke færdige | For meget WIP forlænger cyklustiderne og gør hver prognose mindre pålidelig |
| **Arbejdselementets alder** | Hvor længe et ufærdigt element har været i gang | Viser elementer, der allerede er ældre end de fleste færdige, mens der stadig er tid til at handle |

Guiden bemærker, at teams må omdøbe disse målinger og bør tilføje andre, hvor det er nyttigt, og at målinger kun betyder noget, når de informerer, hvordan teamet arbejder. Brug percentiler og intervaller, ikke kun gennemsnit, fordi lange haler skjuler sig i gennemsnit (se Emne 5.6 — Metrikker og måling).

### En enkel prognosemetode

Et team kan prognosticere uden særlige værktøjer:

1. Indsaml gennemløbet for hver af de seneste otte til tolv uger, eller lignende perioder, ud fra reelt færdige elementer.
2. Tag det laveste, et typisk og det højeste af disse tal.
3. Divider antallet af resterende elementer med hvert tal for at få et interval af perioder til at blive færdig.
4. Angiv intervallet, de data det kom fra, og hvad der ville ændre det, som nyt arbejde, en teamændring eller en afhængighed.

Det er en tommelfingerregel, ikke en standard. Den forudsætter, at fremtidigt arbejde ligner tidligere arbejde, og at elementerne har nogenlunde samme størrelse. Når det ikke passer, så sig det, og behandl intervallet som bredere. Sammenlign hver prognose med, hvad der skete, og justér metoden, som Emne 3.11 — Tilgængelighed, kapacitet og ydeevne anbefaler for efterspørgselsprognoser.

### Teamkapacitet

Kapacitet er, hvor meget arbejde et team kan optage i en periode. For et leveranceteam er det ikke antallet af personer gange dagene i perioden. Ferie, supportopgaver, møder og uplanlagt arbejde reducerer alt sammen det, der er til rådighed for planlagte elementer. En nyttig kapacitetsangivelse lister personer og tilgængelige dage og trækker derefter en andel fra til uplanlagt arbejde, baseret på, hvad de sidste mange perioder viste.

Skillen capacity-planning og Emne 3.11 — Tilgængelighed, kapacitet og ydeevne beskriver kapacitet for services og infrastruktur. Den samme logik gælder for et team: planlæg med intervaller, tjek mod hvad der skete, og gense planen, når fakta ændrer sig.

### Planlagt og uplanlagt arbejde sammen

Serviceteams modtager hændelser, hastende anmodninger og ændringer, ingen har planlagt. Hvis de ikke tælles med, bliver prognosen for planlagt arbejde for optimistisk. Giv uplanlagt arbejde sine egne elementtyper, tæl hvor mange der kommer og hvor lang tid de tager, og hold data ved siden af det planlagte arbejde. Det giver også Product Owner eller serviceejeren evidens for, hvilke tilbagevendende hændelser der æder kapacitet, hvilket understøtter beslutninger om at rette årsagerne (se Emne 3.3 — Problemhåndtering).

### Kontinuerligt leveringsflow og releasekadence

Teams, der leverer kontinuerligt, udgiver små ændringer, når de er klar, i stedet for at vente til slutningen af en planlægningsperiode. Det forkorter tiden mellem færdiggørelse og levering, og det gør prognoser lettere at tjekke: hvert færdigt element er et datapunkt. Ændringer følger stadig organisationens tilgang til ændringsunderstøttelse, og forhåndsgodkendte standardændringer hjælper her (se Emne 3.4 — Ændringsunderstøttelse og Emne 3.5 — Release- og deploymentstyring).

### Hvis du bruger Scrum, sprints og velocity

Nogle teams planlægger i cyklusser af fast længde. Scrum Guide 2020, af Ken Schwaber og Jeff Sutherland, definerer Scrum som et let rammeværk til adaptive løsninger på komplekse problemer. Dets events foregår inden for Sprint, en tidsramme på en måned eller mindre. Dette afsnit dækker det mindste, et team har brug for, hvis det bruger dem; læs selve guiden, før du ændrer et teams arbejdsmåde.

- **Sprint og Sprint Goal:** Sprint er tidsrammen, og Sprint Goal er det ene mål for den. Et mål, en person uden for teamet kan forstå, styrer valg bedre end en liste over tickets.
- **Product Backlog, Product Owner og Scrum Master:** Product Backlog er en ordnet liste over, hvad produktet har brug for. Product Owner er én person, der er ansvarlig for dens rækkefølge, og Scrum Master er ansvarlig for at etablere Scrum og hjælpe teamet med at anvende det.
- **Increment og Definition of Done:** et Increment er et brugbart, verificeret skridt mod Product Goal, og Definition of Done er den kvalitetsstandard, arbejdet skal opfylde for at tælle. Et serviceteam kan inkludere overvågning, en runbook og en afprøvet tilbagerulning i den.
- **Events:** Sprint Planning, Daily Scrum, Sprint Review og Sprint Retrospective. Retrospektivet er, hvor teamet undersøger, hvordan det arbejdede, og planlægger forbedringer (se Emne 6.1 — Teamsamtaler).
- **Velocity:** et estimatbaseret tal, nogle teams bruger til at planlægge, hvor meget arbejde de tager på sig. Brug det kun til teamets egen planlægning. Hvis det bliver et mål, pumper teams estimaterne op, så foretræk flowmålinger, som tæller færdige elementer, og resultatmålinger.

Guiden siger, at Scrum er et rammeværk, ikke en komplet metode. Det dækker ikke hændelseshåndtering, serviceniveauer eller ændringsprocessen, og at bruge kun dele af det gør ikke resultatet til Scrum. Hvis du tilpasser det, så navngiv variationen ærligt. En blanding af Scrum-events og Kanban-flow kaldes nogle gange [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## God praksis

1. **Prognosticér ud fra jeres egen historik.** Brug cyklustider og gennemløb fra nylige færdige elementer, og angiv den periode, data dækker. Lån ikke tal fra et andet team.
2. **Giv et interval, ikke en enkelt dato.** Vis et lavt, et typisk og et højt tilfælde, og sig, hvad der ville flytte resultatet. En dato uden interval lover en sikkerhed, du ikke har.
3. **Tæl uplanlagt arbejde.** Log hændelser, hastende anmodninger og afbrydelser som arbejdselementer med deres egne typer. Mål, hvor mange der kommer, og hvor lang tid de tager.
4. **Sæt kapacitet ud fra data.** List personer og tilgængelige dage, træk ferie og supportopgaver fra, og hold en andel tilbage til uplanlagt arbejde ud fra de seneste perioder. Gense andelen jævnligt.
5. **Begræns igangværende arbejde.** For meget påbegyndt arbejde forlænger cyklustiderne og svækker hver prognose. Sæt en grænse, og gennemgå den, når data ændrer sig (se Emne 1.5 — Kanban).
6. **Hold øje med arbejdselementernes alder dagligt.** Alder viser problemer i ufærdige elementer, mens der stadig er tid til at handle. Gennemgå de ældste elementer først.
7. **Brug percentiler og fordelinger.** Sig, at de fleste elementer af en type bliver færdige inden for et antal dage, og vis den langsomme hale. Gennemsnit skjuler den.
8. **Sammenlign prognoser med faktiske tal.** Efter hver periode registrér, hvad der blev prognosticeret, og hvad der skete. Justér metoden, ikke kun tallet.
9. **Brug estimater til planlægning, ikke til bedømmelse.** Hvis teamet estimerer elementer, brug tallene til dets egen planlægning, og rangér ikke personer eller teams efter dem (se Emne 5.6 — Metrikker og måling).
10. **Gør prognoser synlige for dem, der afhænger af dem.** Del intervallet og forudsætningerne med kunder og interessenter, og opdatér dem, når fakta ændrer sig.
11. **Før forbedringsarbejde ind i det samme flow.** Sæt problemrettelser, overvågningsarbejde og automatisering ved siden af funktioner, så afvejningerne er synlige (se Emne 3.15 — Løbende forbedring).
12. **Hvis du bruger sprints og velocity, så hold dem små og ærlige.** Aftal, hvilke dele af Scrum I følger, navngiv variationen, og afprøv en flowbaseret tilgang, hvis afbrydelser dominerer.

## Spørgsmål til diskussion i teamet

**Hvordan besvarer vi "hvornår er det her færdigt?" i dag, og hvad bygger svaret på?**

Bed om de seneste tre svar, teamet gav, og hvad hvert byggede på. Sammenlign dem med, hvad der skete. Teams finder ofte, at datoer kom fra håb eller fra den mest seniores mening. Følg op ved at spørge, hvilken historik teamet kunne bruge i stedet.

**Hvor stor en andel af vores tid går til arbejde, ingen planlagde, og ved vi det fra data?**

Optæl planlagte elementer, hastende anmodninger og hændelser over de seneste uger. Facilitatoren kan spørge, om andelen er stabil eller varierer med sæsonen, og hvem der afgør, hvornår en afbrydelse vinder over planlagt arbejde. Aftal, hvordan det registreres fremover.

**Hvordan ser vores cyklustider ud, og hvad ville vi sige, hvis en kunde spurgte, hvor lang tid en typisk anmodning tager?**

Plot eller list cyklustiderne for de seneste færdige elementer. Spørg, hvad de fleste tager, hvad de langsomste tager, og hvad der forklarer de langsomme. Drøft, om en serviceniveauforventning baseret på denne historik ville være rimelig, og hvem der bør høre den.

**Hvilke af vores nuværende elementer er allerede ældre end de fleste færdige elementer?**

Se på de ældste åbne elementer. Spørg, hvorfor hvert sidder fast, hvem der kan løsne det, og hvad teamet gør i dag. Slut med at beslutte, hvor ofte teamet gennemgår alder.

**Hvornår viste en prognose fra os sig sidst at være forkert, og hvad ændrede vi bagefter?**

Bed om et nyligt eksempel, prognosen og udfaldet. Se efter, hvad prognosen overså: uplanlagt arbejde, en afhængighed eller elementer, der var større end forventet. Aftal én ændring af metoden og hvordan teamet vil tjekke den.

**Hvis vi bruger sprints eller velocity, hvad gør de for os, og hvad ville vi miste, hvis vi droppede dem?**

Spørg ærligt, hvilket problem hver løser. Se efter evidens, som bedre fokus eller klarere mål, og efter skade, som oppustede estimater eller ignorerede afbrydelser. En facilitator bør være opmærksom på enhver ændring, der fjerner feedbackløkker, som er de nyttige dele. Aftal ét eksperiment og hvordan resultaterne sammenlignes.

## I praksis: et agilt ITIL-eksempel

Et regionalt hospitals IT-afdeling har et team på syv, der vedligeholder applikationen til patientplanlægning. Klinikledere beder om datoer, og teamet har givet dem. De fleste af datoerne overskrides, fordi hændelser fra afdelingerne, anmodninger fra klinikkerne og sikkerhedsopdateringer bliver ved med at komme, og teamet bruger de fleste dage på dem.

Teamlederen begynder at logge hvert element, planlagt eller ej, med start- og slutdato. Efter otte uger viser data, at omkring halvdelen af teamets tid går til uplanlagt arbejde, og at de fleste planlagte elementer bliver færdige på under to uger, med en lang hale af elementer, der venter på et andet team. Teamet aftaler tre ændringer. Det vil angive hver prognose som et interval, baseret på nyligt gennemløb og cyklustider. Det vil holde halvdelen af sin kapacitet tilbage til uplanlagt arbejde og kun planlægge mod resten. Det vil gennemgå de ældste åbne elementer hver morgen.

I de næste to måneder er prognoserne for det meste rigtige, og klinikkens ledere, der nu ser et interval og dets forudsætninger, planlægger omkring det. Serviceejeren, en driftschef på en klinik, kan se, hvilke tilbagevendende hændelser der æder kapacitet, og hæver prioriteten af en rettelse til en tilbagevendende fejl i aftalesynkroniseringen; fejlen stopper. Vanskeligheder består. En større hændelse skubber stadig noget arbejde ud, og de ledere, der kunne lide de hurtige svar i den gamle ordning, finder intervallerne mindre tilfredsstillende. Teamet aftaler at fortælle dem, hvad der ændrede sig i prognosen, hver gang den flytter sig, og at sammenligne sin tilgang med en metode med faste cyklusser for forbedringsarbejdet ved næste gennemgang.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams har mest gavn af at prognosticere med deres egne flowdata. Log arbejde, når det starter og slutter, begræns igangværende arbejde, og udgiv små ændringer kontinuerligt. Del intervallet med dem, der venter, og brug Definition of Done, hvis I har en, til at inkludere det driftsarbejde, der gør en release supportérbar.

### Service- og driftsteams

Driftsteams ejer det uplanlagte arbejde, der får prognoser til at fejle. Registrér hændelser, anmodninger og ændringer som arbejdselementer, og del tilbagevendende mønstre, så de påvirker rækkefølgen af arbejdet. Brug cyklustidsdata til at sætte realistiske forventninger hos kunderne, og vær eksplicit om, hvor meget kapacitet der går til planlagt forbedring.

### Ledelse og governance

Ledere får et mere ærligt billede fra prognoseintervaller og flowmålinger end fra statusrapporter. Bed om intervaller med deres forudsætninger, om prognosenøjagtighed over tid og om, hvad teamet ændrede på grund af data. Undgå at sætte mål for enkelte tal, hvilket giver manipulation, og accepter, at en prognose flytter sig, når fakta gør.

### Kunder og brugere

Kunder og brugere har gavn af klarere forventninger og færre overskredne datoer. Spørg teamet om den forventede tid for din type anmodning, og forvent, at den hviler på historik. Hvis din anmodning er hastende, så forvent at blive spurgt hvorfor, fordi det påvirker alle andres arbejde at rykke den frem.

## Almindelige fejlmønstre

- **At love datoer ud fra håb.** Datoer kommer fra mening og overskrides. I stedet: prognosticér ud fra nylige færdige elementer, og vis intervallet.
- **At ignorere uplanlagt arbejde.** Afbrydelser ødelægger planen i hver periode. I stedet: tæl dem som arbejdselementer, og hold kapacitet tilbage ud fra data.
- **Prognoser med ét tal.** Én dato skjuler usikkerheden. I stedet: giv et lavt, et typisk og et højt tilfælde med forudsætninger.
- **Kun at bruge gennemsnit.** Den lange hale af langsomme elementer skjules. I stedet: brug percentiler og fordelinger.
- **At starte for meget.** Højt igangværende arbejde forlænger hver cyklustid. I stedet: begræns det, og afslut, før I starter.
- **At bruge velocity eller gennemløb som præstationsmål.** Teams pumper estimater op eller deler elementer for at tage sig godt ud. I stedet: brug tallene til planlægning, og bedøm resultater (se Emne 5.6 — Metrikker og måling).
- **Aldrig at tjekke prognosen.** Metoden forbedres aldrig. I stedet: sammenlign hver prognose med, hvad der skete.
- **At anvende faste cyklusser på arbejde, der ikke passer.** En kø af uforudsigelige anmodninger tvunget ind i faste perioder skaber frustration. I stedet: afprøv en flowbaseret tilgang og sammenlign resultaterne.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Prognosticering | Datoer kommer fra mening | Nogle teams bruger tidligere data | Teams prognosticerer som intervaller ud fra egne flowdata | Prognosenøjagtighed spores, og metoden forbedres | Prognoser koordineres på tværs af teams og leverandører |
| Flowmålinger | Få målinger indsamles | Nogle teams registrerer cyklustid eller gennemløb | De fire flowmålinger indsamles konsekvent | Målinger gennemgås og bruges til at sætte forventninger | Flowdata deles på tværs af teams og bruges til at planlægge sammen |
| Kapacitet og uplanlagt arbejde | Afbrydelser tælles ikke | Nogle teams sporer uplanlagt arbejde | Kapacitet til uplanlagt arbejde sættes ud fra data | Andelen og årsagerne til uplanlagt arbejde gennemgås og reduceres | Drifts- og leveranceteams planlægger kapacitet sammen |
| Brug af estimater og faste cyklusser | Estimater bruges til at bedømme folk | Nogle teams bruger estimater til egen planlægning | Teams aftaler, hvilke praksisser de bruger, og navngiver variationer | Praksissernes virkninger gennemgås mod flow og resultater | Praksisser justeres på tværs af teams ud fra fælles læring |

## Tjekliste

- [ ] Prognoser kommer fra teamets egen historik over færdige elementer.
- [ ] Hver prognose er et interval med angivne forudsætninger.
- [ ] Hændelser, anmodninger og forbedringsarbejde registreres alle som arbejdselementer.
- [ ] Kapacitet til uplanlagt arbejde sættes ud fra data og gennemgås.
- [ ] Cyklustid, gennemløb, igangværende arbejde og arbejdselementets alder spores.
- [ ] Igangværende arbejde har en grænse, som teamet gennemgår.
- [ ] De ældste åbne elementer gennemgås jævnligt.
- [ ] Prognoser sammenlignes med faktiske tal efter hver periode.
- [ ] Estimater og velocity, hvis de bruges, er ikke mål.
- [ ] Enhver brug af Scrum, sprints eller en variation er skrevet ned og navngivet ærligt.

## AI-prompts

**Formål: at bygge et prognoseinterval ud fra jeres eget gennemløbsdata.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Formål: at analysere cyklustider og foreslå en serviceniveauforventning.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Formål: at måle, hvor meget kapacitet der går til uplanlagt arbejde.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Formål: at gennemgå de ældste åbne elementer og planlægge, hvordan de løsnes.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## AI-skills

- [kanban](../../../../skills/kanban/SKILL.md): brug den til at opsætte flowmålinger, grænser for igangværende arbejde og en serviceniveauforventning.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): brug den til at tjekke, om den tilgængelige kapacitet møder den forventede efterspørgsel, og hvad der skal gøres ved et hul.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): brug den til at estimere fremtidig belastning som et interval ud fra tidligere data og forretningsplaner.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): brug den til at vælge en metrik, navngive dens manipulationsvektor og autoværn og udfylde et metrikcharter.
- [scrum](../../../../skills/scrum/SKILL.md): brug den, hvis teamet planlægger i sprints, til at opsætte eller gennemgå dets roller, events og artefakter.

## Vigtigste kilder

- **The Kanban Guide** (kanbanguides.org): definerer flowmålingerne og serviceniveauforventningen som en prognose baseret på tidligere cyklustider.
- **The Scrum Guide** (Ken Schwaber og Jeff Sutherland, scrumguides.org): den autoritative, korte definition af Scrum, for teams der bruger sprints.
- **Kanban (development)** (Wikipedia): en oversigt over Kanbans flowmålinger og pull-system.
- **Scrum (software development)** (Wikipedia): en oversigt over Scrums historie, roller, events og kritik.

## Referencer

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
