# Værdistrømsstyring

**Værdistrømsstyring ser på hele vejen fra anmodning til værdi, måler hvor arbejde venter og forbedrer flowet på tværs af teams, fordi de største forsinkelser i en serviceorganisation som regel sidder mellem teams, ikke inde i dem.**

## Hvorfor det betyder noget

De fleste teams måler deres eget arbejde: lukkede tickets, færdige stories, udgivne ændringer. Disse tal kan se godt ud, mens kunden venter i uger. Grunden er, at det meste af den forløbne tid i en typisk anmodning bruges på at vente, i køer, på godkendelser, mellem teams. Et team, der gør sit eget trin hurtigere, ændrer måske intet for den, der bad om det.

Lean-tænkning har en metode til at se dette: værdistrømskortet, som tegner hvert trin fra begyndelsen af en proces til kunden og registrerer tid og mængde på hvert stadium. ITIL 4 har sin egen idé om en værdistrøm, et sæt aktiviteter, der skaber og leverer en service, og som kombinerer værdikædens aktiviteter i forskellig rækkefølge (se Emne 2.6 — Serviceværdikæden). De to passer sammen. ITIL-ideen siger, hvad en strøm er, og lean-metoden viser, hvordan man måler og forbedrer en.

Værdistrømsstyring går ud over en engangs-kortlægningsworkshop. Det betyder at styre arbejdets flow løbende, med fælles målinger, en navngiven ejer og jævnlige gennemgange, der omfatter alle teams i strømmen. DORAs kapabilitetsliste omfatter synlighed af arbejde i værdistrømmen og grænser for igangværende arbejde, og dens vejledning om grænser beskriver at gøre alt arbejde synligt, også arbejde uden for teamet. Dette emne trækker på Wikipedia-artiklen om værdistrømskortlægning, DORA og Kanban Guide og angiver, hvor kilderne tier.

## Kernebegreber

### Hvad en værdistrøm er

En **værdistrøm** er rækken af trin, hvorigennem en anmodning bliver til leveret værdi. [Wikipedia-artiklen om value-stream mapping](https://en.wikipedia.org/wiki/Value-stream_mapping) beskriver metoden som en lean-styringsteknik, der analyserer den nuværende tilstand og designer en fremtidig tilstand for de begivenheder, der fører et produkt eller en service fra begyndelsen af en proces til kunden. I ITIL-synet er en værdistrøm et specifikt sæt aktiviteter, der skaber og leverer en bestemt service eller et bestemt produkt til kunder (se Emne 2.6 — Serviceværdikæden).

Eksempler i en serviceorganisation: at håndtere en hændelse fra rapport til genopretning, at levere en ændring fra idé til produktion, at onboarde en ny kunde eller at opfylde en adgangsanmodning.

### Værdistrømskortlægning

Artiklen siger, at det resulterende visuelle kort viser hvert kritisk trin og kvantificerer tid og mængde på hvert stadium. Den beskriver to kort: et **nutilstandskort**, bygget ved at observere og spore det reelle flow af materiale og information, og et **fremtidstilstandskort**, der viser den ideelle proces efter forbedringer. Nutilstanden skal bygges først. Artiklen henviser til Mike Rother og John Shooks *Learning to See* (Lean Enterprise Institute, 1999) som kilde. Den opregner softwareudvikling, produktudvikling, projektstyring og administrative og kontorprocesser som anvendelsesområder og nævner to softwarefokuserede tilgange af Ali og kolleger: analyse af udviklingsartefakter og analyse af informationsflow.

Artiklen definerer ikke gennemløbstid, procestid eller procent komplet og nøjagtig, opregner ikke symboler og diskuterer ingen kritik. DORAs side om kontinuerlig levering refererer dog til værdistrømskortlægning som en måde at afsløre flaskehalse på ved at sammenligne forløbet tid med værdiskabende tid og måle procent komplet og nøjagtig (%C/A). Begreberne nedenfor er almindelig sprogbrug:

| Begreb | Betydning, i almindelig sprogbrug |
|---|---|
| **Gennemløbstid (lead time)** | Samlet forløben tid fra en anmodnings start til levering |
| **Procestid** (eller berøringstid) | Tid, nogen faktisk arbejder på anmodningen |
| **Ventetid** | Tid, anmodningen ligger ledig mellem trin |
| **Procent komplet og nøjagtig (%C/A)** | Andel af arbejde, der ankommer til et trin, og som ikke kræver korrektion eller manglende information |
| **Flow-effektivitet** | Procestid divideret med gennemløbstid, som en procentdel |

Flow-effektivitet er et enkelt forhold, beregnet til denne vejlednings illustration, og de læste kilder definerer det ikke.

### Flowmålinger

Kanban Guide nævner fire målinger af flow (se Emne 1.5 — Kanban): **igangværende arbejde** (elementer påbegyndt, men ikke færdige), **gennemløb** (færdige elementer pr. periode), **arbejdselementets alder** (tid siden et ufærdigt element startede) og **cyklustid** (tid fra start til slut for et gennemført element). De virker på niveau med et teams arbejdsgang. Værdistrømsstyring anvender de samme ideer på tværs af teams: mål forløben tid fra anmodningen til kundens modtagelse, ikke fra det punkt, et enkelt team tager den op.

DORAs målinger af softwarelevering, som ændringens gennemløbstid, gælder for ét udsnit af strømmen, fra commit til produktion (se Emne 3.4 — Ændringsunderstøttelse). Den tidligere del, fra idé til commit, er også en del af værdistrømmen og har ofte de længste ventetider.

### Grænser for igangværende arbejde

DORAs side om grænser for igangværende arbejde (WIP) beskriver dem som lofter over, hvor mange elementer der kan være i hvert trin af en arbejdsgang. Den siger, at DORAs forskning kun forbinder WIP-grænser med bedre softwareleveringsydeevne i kombination med andre kapabiliteter, som visuelle displays og feedbackløkker fra overvågning, og giver ingen effektstørrelser. Dens implementeringsråd omfatter at gøre alt arbejde synligt, også arbejde uden for teamet, at sætte hver grænse efter teamets kapacitet, at holde grænser faste og ikke hæve dem, når folk er ledige, kun at trække arbejde, når en plads åbner, at spore gennemløbstid og dens variabilitet, at reducere overdragelser og at sænke grænser gradvist for at afsløre den næste begrænsning. Faldgruber, den nævner, omfatter at ignorere opstrøms og nedstrøms arbejde, hvilket fører til lokal optimering, og at sætte grænser for højt.

### At se hele strømmen

Faldgruben "lokal optimering" er den centrale. En strøm med fem teams har fem køer. Hvis ét team fordobler sin hastighed, kan strømmens gennemløbstid næsten ikke ændre sig, fordi de andre stadig venter. Værdistrømsstyring leder efter **begrænsningen**, det trin der begrænser helheden, og forbedrer den først (se Emne 1.7 — Lean softwareudvikling om at optimere helheden).

### Ejerskab og governance

En strøm krydser teams, så den har brug for nogen, der er ansvarlig for helheden. En værdistrømsejer (eller en lille gruppe) holder kortet, målingerne og forbedringslisten og indkalder teamene. Uden en ejer svarer ingen for strømmen, og forbedringer bliver inden for teamgrænser. Det hænger sammen med produkt- og serviceejerskab (se Emne 5.5 — Produkt- og serviceejerskab).

### Værktøjer

Softwareværktøjer til værdistrømsstyring indsamler data fra ticketing, kildekontrol og pipelines for at vise flow på tværs af værktøjskæden. De kilder, der er læst til denne vejledning, diskuterer ikke sådanne værktøjer. Hvis I evaluerer nogen, så tjek, hvilke data den har brug for, hvor nøjagtig den er, og om målingerne besvarer et spørgsmål, I har. Et groft kort tegnet i hånden sammen med de involverede teams er et godt sted at starte og afslører ofte mere end et dashboard.

### Grænser

Wikipedia-artiklen diskuterer ingen kritik, og DORA WIP-siden giver ingen effektstørrelser eller målværdier. Praktiske forbehold, tilbudt som erfaring, omfatter kortlægning, der aldrig fører til forandring, målinger brugt til at rangere teams og kort tegnet ud fra ledernes hukommelse i stedet for observation af rigtige elementer.

## God praksis

1. **Vælg én strøm, der betyder noget.** Vælg et flow, brugerne bekymrer sig om, som en ændring der når produktion eller en adgangsanmodning. En snæver, reel strøm lærer mere end en bred, abstrakt.
2. **Kortlæg ud fra rigtige elementer.** Følg flere nylige elementer fra start til slut, og registrér de faktiske datoer, ikke procesdokumentet. Observation slår erindring, som artiklens vægt på at observere og spore det reelle flow antyder.
3. **Registrér tid og ventetid ved hvert trin.** Notér for hvert trin arbejdstiden og ventetiden før det. Ventetiderne er som regel historien.
4. **Medtag alle i strømmen.** Invitér folk fra hvert team, der berører elementet, inklusive godkendere og leverandører. Lav kortlægningen sammen, så ingen bliver overrasket over resultatet.
5. **Beregn gennemløbstid, procestid og flow-effektivitet.** Sammenlign forløben tid med arbejdstid, og se på, hvor meget der er ventetid. Brug tallene til at starte samtaler.
6. **Se på nøjagtighed.** Spørg, hvor ofte arbejde ankommer til et trin ufuldstændigt eller forkert og kræver omarbejde. Et trin med lav procent komplet og nøjagtig forårsager forsinkelse nedstrøms.
7. **Find begrænsningen.** Identificér det trin, der begrænser hele strømmen, og forbedr det først. At forbedre andre trin giver lidt gavn.
8. **Tegn den fremtidige tilstand.** Design en bedre strøm sammen med teamene, ikke en ideel, og vælg de første en eller to ændringer. Aftal ejere og datoer.
9. **Begræns igangværende arbejde.** Sæt loft for, hvad hvert trin rummer, sæt grænser efter kapacitet, behold dem når folk er ledige, og sænk dem gradvist, som DORAs vejledning beskriver.
10. **Gør arbejdet synligt.** Vis strømmen på en fælles tavle eller et kort, der omfatter arbejde uden for ét enkelt team. Opdatér den, efterhånden som elementer bevæger sig.
11. **Navngiv en strømejer.** Vælg en person, der er ansvarlig for strømmens ydeevne, kan indkalde teamene og tage forbedringer med til ledere.
12. **Gennemgå jævnligt.** Hold en kort månedlig gennemgang af gennemløbstid, ventetider og forbedringslisten. Tegn kortet om efter væsentlige ændringer.

## Spørgsmål til diskussion i teamet

**Hvis vi fulgte én anmodning fra første kontakt til kundens modtagelse, hvor lang tid ville det tage, og hvor meget af det er arbejdstid?**

Vælg et nyligt element, og indsaml datoer. Bed folk gætte svaret, før I kigger. Gættet er som regel optimistisk. Beregn andelen af arbejdstid. Facilitatoren kan spørge, hvor den største ventetid opstod, og hvem der ejede den. Vælg den som det første mål.

**Hvem i strømmen har vi aldrig talt med?**

List de teams, godkendere og leverandører, et element berører. Markér dem, teamet aldrig har mødt. Spørg, hvad der ville vindes ved at invitere dem til en kortlægningssession. Typiske svar: forståelse af hvorfor de venter, eller hvad de har brug for for at arbejde hurtigere. Invitér én.

**Hvad overdrager vi ufuldstændigt, og hvad modtager vi ufuldstændigt?**

Bed om eksempler på arbejde, der kom tilbage til omarbejde. Notér, hvilke overdragelser der forårsager flest returneringer, og hvad der mangler. Det er ideen om procent komplet og nøjagtig i almindelige vendinger. Aftal en kort tjekliste for én overdragelse.

**Hvor er begrænsningen i vores strøm, og hvad sker der, hvis vi fremskynder noget andet?**

Drøft, hvilket trin der har den længste kø. Spørg, hvad der ville ske med tiden fra ende til anden, hvis et andet trin fordoblede sin hastighed. Pointen er at se, at forbedring af en ikke-begrænsning ændrer lidt. Vælg at arbejde på begrænsningen.

**Hvor mange ting arbejder hvert team på på én gang, og hvad ville der ske, hvis vi satte et loft?**

Tæl igangværende arbejde pr. team. Drøft, hvad det ville betyde at holde op med at starte. Typiske bekymringer: noget vigtigt vil vente. Typiske fordele: ting bliver færdige. Aftal et forsøgsloft for ét team og en måde at bedømme resultatet på.

**Hvem er ansvarlig for denne strøm som helhed?**

Bed teamet navngive personen. Hvis ingen, så drøft, hvem det kunne være, og hvilken beføjelse de ville have brug for. Facilitatoren kan bemærke, at forbedringer på tværs af teams sjældent sker uden en ejer. Foreslå et navn, og tag det med til den relevante leder.

## I praksis: et agilt ITIL-eksempel

En national miljøstyrelse udsteder tilladelser til industrielle operatører. Ansøgere klager over, at en typisk tilladelse tager omkring fire måneder, og styrelsens digitale servicegruppe på tolv bliver bedt om at fremskynde det. Gruppen havde allerede bygget en hurtigere onlineansøgningsformular, men den forløbne tid har næsten ikke ændret sig.

Gruppens leder indkalder folk fra alle dele af strømmen: ansøgningsteamet, to tekniske vurderere, en jurist, gebyrkontoret og teamet, der udsteder tilladelsesdokumenterne. De kortlægger seks nylige tilladelser fra indsendelsesdatoen til den dato, tilladelsen nåede ansøgeren. Resultaterne er nøgterne. Den samlede tid var omkring 110 dage, og arbejdstiden var omkring 12. Den længste ventetid var i den tekniske vurderingskø, hvor ansøgninger i gennemsnit ventede 40 dage, før nogen åbnede dem, og omkring en tredjedel af ansøgningerne kom med manglende information, som måtte anmodes om igen. Gebyrkontoret og dokumentteamet tilføjede hver en uges ventetid til batchbehandling.

Gruppen aftaler tre ændringer. Onlineformularen tjekker for de ofte manglende punkter før indsendelse. Det tekniske vurderingsteam sætter en grænse for igangværende arbejde og en regel om at åbne hver ansøgning inden for fem arbejdsdage for at tjekke fuldstændighed. Gebyrkontoret og dokumentteamet skifter fra ugentlige batches til daglig behandling. De navngiver chefen for digitale services som strømejer og gennemgår gennemløbstid månedligt. Efter tre måneder er mediangennemløbstiden omkring 70 dage, og andelen af ansøgninger returneret for manglende information falder. Nogle problemer består. Vurderingsteamet siger, at grænsen gør det sværere at håndtere store, komplekse ansøgninger, og juristen er et enkelt forsinkelsespunkt, som ingen havde regnet med. Strømejeren beder vurderingsteamet adskille komplekse sager i deres egen bane og arbejder med den juridiske afdeling på en anden vurderer.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ser kun en del af strømmen. Deltag i kortlægningssessioner, del jeres data, og se på, hvad der sker, før arbejde når jer, og efter I udgiver. Behandl strømmens gennemløbstid som et fælles mål, ikke kun jeres eget trin.

### Service- og driftsteams

Driftsteams har ofte de længste køer: adgang, godkendelser, miljøer, support. Vær åbne om jeres kapacitet og jeres begrænsninger. Brug kortet til at bede opstrømsteams om komplette input og til at forklare jeres prioriteter.

### Ledelse og governance

Ledere kan fjerne begrænsninger på tværs af teams, som teams ikke kan. Navngiv strømejere, bed om gennemløbstid fra ende til anden, og svar på de forbedringer, kortet antyder. Undgå at bruge strømmålinger til at rangere teams, hvilket afskrækker ærlige data.

### Kunder og brugere

Kunder og brugere oplever hele strømmen. Fortæl teamet, hvor forsinkelserne gør ondt, giv fuldstændig information fra starten, og deltag i en kortlægningssession, hvis du inviteres. Dit syn på, hvornår anmodningen virkelig var færdig, er strømmens sande slutning.

## Almindelige fejlmønstre

- **At optimere et enkelt team.** En lokal gevinst ændrer intet fra ende til anden. I stedet: find og adressér begrænsningen.
- **At kortlægge ud fra hukommelsen.** Kortet afspejler, hvad ledere tror. I stedet: spor rigtige elementer med rigtige datoer.
- **Manglende stemmer.** Leverandører og godkendere er ikke i rummet. I stedet: medtag hvert team i strømmen.
- **Et kort og ingen forandring.** Plakaten hænger på væggen. I stedet: aftal en eller to ændringer med ejere, før sessionen slutter.
- **Ingen ejer.** Ingen svarer for strømmen. I stedet: navngiv en strømejer med beføjelse til at indkalde.
- **Målinger som rangeringer.** Teams skjuler ventetider. I stedet: brug målinger til at forstå strømmen, og drøft dem åbent.
- **Grænser, der flytter sig.** WIP-grænser hæves, hver gang folk er ledige. I stedet: hold grænser, og ret årsager, som DORA anbefaler.
- **Værktøj først.** Et dashboard købes, før spørgsmålene er kendt. I stedet: start med et håndtegnet kort, og tilføj værktøjer efter behov.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| At se strømmen | Flow bedømmes på fornemmelse | Nogle teams kortlægger deres egne trin | Centrale strømme kortlægges fra ende til anden ud fra rigtige elementer, med alle teams | Gennemløbstid, ventetider og nøjagtighed måles og gennemgås | Strømme kortlægges og måles på tværs af organisationer og leverandører |
| Forbedring af flow | Teams fremskynder deres egne trin | Nogle ændringer på tværs af teams prøves | En begrænsningsfokuseret forbedringsliste pr. strøm med ejere | Forbedringer knyttes til målt gennemløbstid og tjekkes | Strømforbedring er rutine og deles på tværs af strømme |
| Grænser og synlighed | Igangværende arbejde er ubegrænset og skjult | Nogle teams bruger tavler og grænser | Arbejde er synligt på tværs af teams med aftalte grænser | Grænser tunes ud fra gennemløbstidsdata | Grænser og synlighed koordineres på tværs af strømme |
| Ejerskab og governance | Ingen ejer strømmen | Uformelle koordinatorer findes | Hver central strøm har en navngiven ejer og en jævnlig gennemgang | Ejere er ansvarlige for målte resultater | Ejere samarbejder på tværs af strømme for at optimere helheden |

## Tjekliste

- [ ] Vi har valgt én vigtig strøm og kortlagt den ud fra rigtige elementer.
- [ ] Kortet viser arbejdstid og ventetid ved hvert trin.
- [ ] Folk fra hvert team i strømmen deltog i kortlægningen.
- [ ] Vi kender gennemløbstiden fra ende til anden og hvor meget der er ventetid.
- [ ] Vi har identificeret begrænsningen og valgt en eller to ændringer.
- [ ] Igangværende arbejde er synligt på tværs af teams, med aftalte grænser ved centrale trin.
- [ ] En navngiven person ejer strømmen.
- [ ] En kort jævnlig gennemgang ser på gennemløbstid, ventetider og forbedringslisten.
- [ ] Vi sporer, hvor ofte arbejde ankommer ufuldstændigt ved en overdragelse.
- [ ] Strømmålinger bruges ikke til at rangere teams.

## AI-prompts

**Formål: at beregne gennemløbstid og flow-effektivitet ud fra rigtige elementer.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Formål: at planlægge en workshop i værdistrømskortlægning.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at analysere overdragelseskvalitet mellem to teams.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Formål: at designe et forsøg med grænser for igangværende arbejde.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): brug den til at kortlægge en strøm, registrere tider og finde begrænsningen.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): brug den til at studere, hvordan arbejde bevæger sig mellem roller, og hvor det venter.
- [kanban](../../../../skills/kanban/SKILL.md): brug den til at opsætte visualisering og grænser for igangværende arbejde for strømmen.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): brug den til at forstå, hvad der flyder ind i strømmen, og i hvilken mængde.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): brug den til at afgøre, hvilke strømme og initiativer der fortjener investering.

## Vigtigste kilder

- **Value-stream mapping** (Wikipedia): definitionen af nutilstands- og fremtidstilstandskort og en henvisning til *Learning to See*.
- **Work in process limits** (DORA, dora.dev): vejledning om at sætte og holde grænser og om at undgå lokal optimering.
- **The Kanban Guide** (kanbanguides.org): definitioner af de fire flowmålinger.
- **Lean software development** (Wikipedia): spildformerne og principperne bag værdistrømstænkning.

## Referencer

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
