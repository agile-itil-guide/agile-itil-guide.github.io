# Kanban

**Kanban styrer arbejde som et flow: det gør arbejdsgangen synlig, begrænser, hvor meget der er i gang, og bruger flowmålinger til at forbedre, hvilket passer til serviceteams, hvis arbejde ankommer løbende og ikke kan planlægges i faste cyklusser.**

## Hvorfor det betyder noget

En servicedesk, et driftsteam og et platformsteam har alle ét træk til fælles: arbejdet kommer, når det kommer. Hændelser, anmodninger og små ændringer kommer i en strøm, og teamet kan ikke planlægge en måneds værdi af dem på forhånd. Rammeværker bygget omkring faste cyklusser, som Scrum, passer kun til dette arbejde med justeringer (se Emne 1.4 — Leveranceprognoser og planlægningsmålinger). Kanban blev designet til flow og passer derfor mere naturligt.

Kanban taler også servicestyringens sprog. Det spørger, hvor lang tid arbejde tager, hvor meget der venter, og hvilket trin der er flaskehalsen, og det er spørgsmålene bag serviceniveauer, køstyring og kapacitetsplanlægning. Et team, der sporer alder og cyklustid på sit arbejde, kan tale om serviceniveauer med data i stedet for indtryk.

Kanban er enkelt at begynde på og overraskende let at gøre dårligt. En tavle med kolonner er ikke Kanban, hvis intet begrænser igangværende arbejde, og ingen bruger målingerne. Dette emne forklarer, hvad Kanban Guide beder et team om, hvor metoden kom fra, og hvordan den anvendes på servicearbejde.

## Kernebegreber

### Hvad Kanban er

[Kanban Guide](https://kanbanguides.org/english/), hvis nuværende version er dateret maj 2025, og som nævner John Coleman og Daniel Vacanti blandt sine forfattere, definerer Kanban som en strategi til at optimere flowet af værdi gennem en proces. Den beskriver flow som bevægelsen af potentiel værdi gennem et system. Målet er en balance mellem tre ting: effektivitet i betydningen virkningsfuldhed (at levere, hvad interessenterne vil have, når de vil have det), effektivitet i betydningen ressourceudnyttelse (at bruge ressourcer godt) og forudsigelighed (at prognosticere levering med en acceptabel grad af usikkerhed). Guiden siger, at den gælder for vidensarbejde i enhver branche.

Ordet "kanban" er japansk og betyder et skilt eller en plakattavle. [Wikipedia-artiklen om Kanban i udvikling](https://en.wikipedia.org/wiki/Kanban_(development)) siger, at metoden stammer fra lean-produktion og [Toyotas produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System), med et just-in-time-system påbegyndt hos Toyota i slutningen af 1940'erne. David J. Andersons bog fra 2010 følger softwareversionen tilbage til et projekt hos Microsoft i 2004 og et projekt hos Corbis i 2006 til 2007.

### De tre praksisser

Kanban Guide nævner tre praksisser. Et team, der gør alle tre og bruger målingerne nedenfor, praktiserer Kanban i guidens forstand.

| Praksis | Hvad teamet gør | En note til serviceteams |
|---|---|---|
| **Definér og visualisér arbejdsgangen** | Aftal en Definition of Workflow (DoW): hvad et arbejdselement er, hvor det starter og slutter, tilstandene derimellem, hvordan igangværende arbejde begrænses, politikkerne for at flytte arbejde og en serviceniveauforventning (SLE). Vis den på en tavle. | DoW for en servicedesk kan definere hændelses-, anmodnings- og ændringselementer med forskellige tilstande og politikker for hver |
| **Styr aktivt elementerne i arbejdsgangen** | Kontrollér antallet af elementer i gang, hold øje med elementer, der ældes, og løsn elementer, der er gået i stå. | En grænse for åbne hændelser pr. ingeniør tvinger teamet til at afslutte eller overdrage arbejde, før det starter mere |
| **Forbedr arbejdsgangen** | Ændr DoW over tid for at forbedre virkningsfuldhed, ressourceudnyttelse og forudsigelighed, med faste mellemrum eller efter behov. | En gennemgang af DoW efter en større hændelse kan ændre politikker, grænser eller tilstande |

Guiden foreskriver ikke et tavlelayout eller nogen møder. Teams kan frit tilføje praksisser, så længe kernepraksisserne, målingerne og målet om at optimere værdi forbliver intakte.

### Grænser for igangværende arbejde og pull

At kontrollere igangværende arbejde (WIP) skaber det, guiden kalder et pull-system: nyt arbejde starter kun, når der er kapacitet til det. Wikipedia-artiklen giver eksemplet med et "deployment"-trin med en grænse på fem. Når trinnet er fuldt, kan intet mere komme ind, før noget bliver færdigt, så en tilstopning bliver synlig, og folk kan hjælpe med at rydde den. Uden grænser er en tavle kun et billede af rodet.

### Fire flowmålinger

Guiden opregner fire målinger, som et team, der bruger Kanban, sporer:

- **Igangværende arbejde:** antallet af elementer, der er startet, men ikke færdige.
- **Gennemløb:** antallet af elementer, der blev færdige i en given periode.
- **Arbejdselementets alder:** hvor længe et ufærdigt element har været i gang.
- **Cyklustid:** hvor lang tid et færdigt element tog fra start til slut.

Guiden siger, at teams må omdøbe dem og bør tilføje andre målinger, hvor det er nyttigt, og at målinger kun betyder noget, når de informerer de tre praksisser. En serviceniveauforventning er en prognose for, hvor lang tid et element skal tage, baseret på tidligere cyklustider. Den er ikke et løfte, og den adskiller sig fra en serviceniveauaftale (SLA) forhandlet med en kunde. Se Emne 3.7 — Styring af serviceniveauer.

### Den bredere Kanban-litteratur

Andre forfattere har beskrevet metoden bredere. Wikipedia-artiklen opregner Don Reinertsens arbejde om flow, Jim Benson og Tonianne DeMaria Barrys *Personal Kanban*, Mike Burrows' *Kanban From the Inside* og Corey Ladas' *Scrumban*, som foreslog Kanban som en måde at forbedre Scrum på. Nogle af disse kilder opregner praksisser ud over de tre i guiden, som at gøre politikker eksplicitte, indføre feedbackløkker og forbedre i samarbejde. Betragt dem som nyttige tilføjelser, ikke som krav i guiden.

Wikipedia-artiklen bærer et mærke, der bemærker, at en større bidragyder kan have en tæt forbindelse til emnet, så tjek dens påstande mod de primære kilder.

### Hvad Kanban ikke siger

Kanban er ikke en projektplan, et sæt roller eller en releaseproces. Det fortæller dig ikke, hvordan du designer en service eller håndterer en hændelse. Det giver dig en måde at se og styre flow på, og det regner med, at du selv bringer indholdet af dit arbejde. Det er også dets styrke: du kan starte med den proces, du har, og forbedre den i små skridt (se Emne 3.15 — Løbende forbedring).

## God praksis

1. **Start med det, I gør nu.** Tegn den reelle arbejdsgang, med de tilstande arbejdet faktisk passerer, inklusive ventetiderne. Tegn ikke den proces, I ønsker, I havde. Du kan kun forbedre det, du kan se.
2. **Definér, hvad et arbejdselement er.** Beslut, om hændelser, anmodninger og ændringer er én type element eller flere, og giv hver et klart start- og slutpunkt. Blandede definitioner gør målinger meningsløse.
3. **Sæt WIP-grænser, og hold dem.** Begynd med en grænse, der føles lidt stram, som et eller to elementer pr. person, og justér ud fra erfaring. En grænse, der rutinemæssigt brydes, giver ingen information, så drøft hvert brud.
4. **Gør politikker eksplicitte.** Skriv på tavlen, hvornår et element må flyttes til næste tilstand, hvem der må trække det, og hvad der tæller som blokeret. Synlige politikker skærer ned på diskussioner og gør onboarding lettere.
5. **Hold øje med arbejdselementets alder, ikke kun cyklustid.** Cyklustid kendes først, når et element er færdigt, mens alder viser problemer, mens der stadig er tid til at handle. Gennemgå de ældste elementer hver dag.
6. **Brug en serviceniveauforventning baseret på historik.** Tag cyklustiderne for nylige færdige elementer og angiv for eksempel, at de fleste elementer af en type bliver færdige inden for et givet antal dage. Revidér den, når data ændrer sig. Lov ikke kunder et tal, du ikke har målt.
7. **Behandl fremskyndet arbejde som en eksplicit undtagelse.** Hastende hændelser vil springe køen over. Definér en politik, som en bane med sin egen grænse, så undtagelser er synlige og ikke i det skjulte ødelægger flowet (se Emne 3.2 — Hændelseshåndtering).
8. **Find flaskehalsen, og hjælp den.** Når en tilstand altid er fuld, så spørg, om den har brug for mere kapacitet, en ændret politik eller et andet flow opstrøms. At flytte folk til flaskehalsen slår som regel at presse mere arbejde ind i den.
9. **Hold gennemgange i en jævn rytme.** Guiden tillader forbedring med faste mellemrum eller efter behov. En kort ugentlig gennemgang af målingerne og et månedligt blik på DoW virker for mange teams.
10. **Forbind tavlen med resten af organisationen.** Gør tavlen synlig for kunderne og nabohold. Aftal, hvordan elementer krydser mellem tavler, som fra en servicedesk til et udviklingsteam.
11. **Brug målinger til læring.** Brug tallene til at stille spørgsmål, ikke til at rangere folk. Når flowdata bliver et mål, manipulerer teams dem (se Emne 5.6 — Metrikker og måling).
12. **Kombinér med andre rammeværker bevidst.** Hvis teamet bruger Scrum-events til planlægning og Kanban til flow, så sig, hvad hver er til for, og tjek, at kombinationen reducerer forvirring (se Emne 1.8 — Skalering af agilitet for koordinering af flere teams).

## Spørgsmål til diskussion i teamet

**Hvis vi tegnede vores reelle arbejdsgang, inklusive ventetiderne, hvordan ville den se ud?**

Bed hver person tegne vejen for ét nyligt element, og kombinér derefter tegningerne på en væg. Forskelle mellem tegningerne viser skjulte trin og uformelle overdragelser. Forvent overraskelser: godkendelser, ingen nævnte, elementer, der venter på et andet team, og omarbejdsløkker. Følg op ved at markere de tre længste ventetider.

**Hvor meget arbejde er i gang for hver af os lige nu, og hvor meget af det venter?**

Tæl de åbne elementer pr. person, og markér, hvilke der er blokerede eller ledige. Mange teams finder, at de fleste elementer venter, og få bliver arbejdet på. Spørg, hvad hver person gør, når de er blokerede, og om det sædvanlige svar er at starte et nyt element. Målet er at drøfte, hvorfor det belønnes at starte og ikke at afslutte.

**Hvad er det ældste element på vores tavle, og hvorfor er det der stadig?**

Vælg de tre ældste elementer, og følg, hvad der skete. Almindelige svar er en uklar ejer, en afhængighed af et andet team eller et element, ingen vil annullere. Spørg, om elementet bør afsluttes, annulleres eller eskaleres. En facilitator kan spørge, hvilken politik der ville have fanget elementet tidligere.

**Hvad lover vi vores kunder om, hvor lang tid tingene tager, og hvad siger vores egne tal?**

Sammenlign de aftalte serviceniveauer med de faktiske cyklustider for færdige elementer. Hvis I ingen data har, så indsaml dem først i en måned. Drøft ethvert hul åbent. Spørg, om målet bør ændres, eller om arbejdsmåden bør. Husk, at en serviceniveauforventning baseret på data er en prognose, mens en SLA er en aftale.

**Når hastende arbejde kommer, hvad sker der så med alt det andet?**

Gennemgå den seneste hastende hændelse, og se, hvilke elementer der gik i stå. Spørg, om teamet har en politik for hastende arbejde, og om nogen ved, hvor mange hastende elementer det håndterer pr. måned. Teams opdager ofte, at hastende arbejde er rutine, ikke undtagelse, og at politikken skal afspejle det. Følg op ved at aftale en grænse for fremskyndede elementer.

**Hvilke af vores målinger ville vi stole nok på til at basere en beslutning på, og hvilke ville vi ignorere?**

Bed folk rangere de tilgængelige målinger efter, hvor meget de stoler på dem, og hvorfor. Mistillid kommer ofte fra inkonsistente elementdefinitioner eller huller i data. Gør det ikke til en diskussion om folk; fokusér på datakvaliteten. Slut med at vælge én måling, der skal forbedres den næste måned.

## I praksis: et agilt ITIL-eksempel

Et universitets IT-servicedesk har otte analytikere, der håndterer hændelser og anmodninger fra studerende og ansatte. Teamet har et ticketværktøj med køer, men ingen grænser, og hver analytiker har mellem 20 og 40 åbne tickets. Kunderne klager over, at tickets ser ud til at forsvinde, og deskens leder kan ikke sige, hvor lang tid en typisk anmodning tager.

Lederen og analytikerne bygger en tavle, der afspejler værktøjet: ny, triageret, i gang, venter på kunden, venter på et andet team og løst. De aftaler en grænse på otte aktive elementer pr. analytiker og en regel om, at tickets, der venter på andre, skal navngive den person, der er ansvarlig for næste skridt. De afsætter én bane til hastende hændelser, med en grænse på to. I en måned indsamler de kun data om cyklustid og alder.

Efter måneden viser data, at de fleste anmodninger løses på få dage, men en lang hale venter i uger, mest "venter på et andet team". Teamet sætter en serviceniveauforventning ud fra data og begynder en daglig gennemgang af de ældste elementer. Flere længe ventende tickets lukkes eller eskaleres den første uge. Et problem består: netværksteamet, der ejer mange af de ventende tickets, har ingen egen tavle, og desken kan ikke se dets kø. Deskens leder arrangerer en ugentlig samtale med netværksteamets leder, og de to teams begynder at drøfte at dele et overblik over de elementer, der krydser mellem dem.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams kan bruge Kanban til at se, hvor arbejde venter mellem design, bygning, test og release. Grænser for igangværende arbejde reducerer antallet af halvfærdige ændringer, og flowdata kan vise, hvor en releaseproces har brug for opmærksomhed. Behandl anmodninger fra driften som elementer i det samme flow, med deres egen politik.

### Service- og driftsteams

Driftsteams er Kanbans naturlige hjem. Visualisér hændelser, anmodninger og ændringer i deres egne tilstande, sæt grænser, og hold øje med ældning. Brug cyklustidsdata til at sætte realistiske forventninger hos kunderne, og brug blokerede og ventende tilstande til at starte samtaler med andre teams.

### Ledelse og governance

Ledere har gavn af flowmålinger som et mere ærligt billede end statusrapporter. Bed om cyklustid, gennemløb og alder pr. arbejdstype, og spørg, hvad teamet ændrede på grund af dem. Undgå at sætte mål for enkelte tal, hvilket giver manipulation. Støt grænser for igangværende arbejde, selv når interessenter vil have mere startet.

### Kunder og brugere

Kunder har gavn af klarere prognoser og færre mistede anmodninger. Spørg teamet om serviceniveauforventningen for din type anmodning, og forvent, at den bygger på historik. Hvis din anmodning er hastende, så forvent at blive spurgt hvorfor, fordi teamet må beskytte andres flow.

## Almindelige fejlmønstre

- **En tavle uden grænser.** Tavlen viser rodet, men reducerer det ikke. I stedet: sæt og håndhæv grænser for igangværende arbejde, og gennemgå hvert brud.
- **Blandede elementdefinitioner.** Hændelser, projekter og opgaver deler ét kolonnesæt, og målingerne betyder intet. I stedet: definér elementtyper med separate tilstande og politikker.
- **At ignorere ældning.** Gamle elementer ligger uopdaget, til en kunde klager. I stedet: gennemgå de ældste elementer hver dag og afgør hvert.
- **At gøre målinger til mål.** Teams deler eller lukker elementer for at forbedre tallene. I stedet: brug målinger til at stille spørgsmål, og gennemgå dem med teamet.
- **Skjulte fremskyndelsesbaner.** Hastende arbejde omgår grænser uden spor. I stedet: giv hastende arbejde en synlig bane, en grænse og en politik.
- **At kopiere et tavlelayout.** Et team overtager et andet teams kolonner uden at forstå sit eget flow. I stedet: kortlæg den reelle arbejdsgang først.
- **At behandle Kanban som et rapporteringsværktøj.** Ledere bruger tavlen til at overvåge folk og ikke til at forbedre flow. I stedet: brug den som teamets værktøj til at afgøre, hvad der skal gøres næste gang.
- **Aldrig at forbedre arbejdsgangen.** Tavlen forbliver den samme i årevis. I stedet: hold jævnlige gennemgange af Definition of Workflow, og ændr den, når data kalder på det.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Visualisering af arbejdsgangen | Arbejde bor i individuelle indbakker og hoveder | Nogle teams har tavler, der viser deres tilstande | Teams deler en Definition of Workflow med elementtyper og politikker | Tavlen gennemgås og rettes mod det, der faktisk sker | Tavler på tværs af teams viser elementer og overdragelser mellem teams |
| Begrænsning af igangværende arbejde | Ingen grænser; folk starter mere, end de afslutter | Nogle teams sætter uformelle grænser | Grænser er sat, og brud drøftes | Grænser justeres ud fra flowdata | Grænser og kapacitet afbalanceres på tværs af teams og leverandører |
| Flowmålinger | Få målinger indsamles | Nogle teams registrerer cyklustid eller gennemløb | De fire målinger indsamles konsekvent | Målinger gennemgås og bruges til at sætte serviceniveauforventninger | Flowdata deles på tværs af teams og bruges til at planlægge kapacitet sammen |
| Forbedring | Ændringer følger kriser | Teams justerer lejlighedsvis tavlen | Teams gennemgår arbejdsgangen i en jævn rytme | Ændringer knyttes til målinger, og resultater tjekkes | Forbedringer spreder sig mellem teams uden central styring |

## Tjekliste

- [ ] Vi har tegnet vores reelle arbejdsgang, inklusive ventetider og overdragelser.
- [ ] Vores arbejdselementer er defineret, med et klart start- og slutpunkt for hver type.
- [ ] Der findes grænser for igangværende arbejde, og hvert brud drøftes.
- [ ] Politikker for at flytte og blokere elementer står på eller ved tavlen.
- [ ] Vi sporer cyklustid, gennemløb, igangværende arbejde og arbejdselementets alder.
- [ ] Vi gennemgår de ældste elementer dagligt eller mindst ugentligt.
- [ ] Vi har en serviceniveauforventning baseret på vores egen historik.
- [ ] Hastende arbejde har sin egen synlige bane, grænse og politik.
- [ ] Definition of Workflow gennemgås i en jævn rytme.
- [ ] Nabotems og kunder kan se de elementer, der vedrører dem.

## AI-prompts

**Formål: at beskrive jeres reelle arbejdsgang og finde, hvor arbejde venter.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Formål: at udarbejde en Definition of Workflow til et team.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Formål: at analysere flowdata fra jeres ticketsystem.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Formål: at planlægge en gennemgang af tavlen med teamet.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-skills

- [kanban](../../../../skills/kanban/SKILL.md): brug den til at designe eller gennemgå en tavle, grænser for igangværende arbejde og politikker for et service- eller driftsteam.
- [scrumban](../../../../skills/scrumban/SKILL.md): brug den, når et team vil have Scrums planlægningsevents sammen med Kanbans flowstyring.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): brug den til at kortlægge, hvordan arbejde bevæger sig mellem teams, og hvor det venter, før du designer tavlen.
- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at planlægge små forbedringer af arbejdsgangen efter en flowgennemgang.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): brug den til at forstå, hvilke slags arbejde der kommer, og i hvilket omfang, før du sætter grænser og kapacitet.

## Vigtigste kilder

- **The Kanban Guide** (John Coleman og Daniel Vacanti m.fl., kanbanguides.org): den kortfattede autoritative definition af de tre praksisser og de fire målinger.
- **Kanban (development)** (Wikipedia): en oversigt over historien og de bredere praksisser, med henvisninger til de vigtigste bøger.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): beretningen om, hvordan Kanban blev anvendt på softwarearbejde.
- **Toyota Production System** (Wikipedia): baggrund om lean-produktionens oprindelse for kanban.

## Referencer

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
