# Lean softwareudvikling

**Lean softwareudvikling anvender lean-ideerne om at fjerne spild, lære hurtigt og optimere hele systemet på softwarearbejde, og det giver serviceteams en fælles måde at se, hvor tid og kræfter lækker ud af flowet fra anmodning til værdi.**

## Hvorfor det betyder noget

Agile metoder siger, at man skal levere i små skridt og lære. Lean stiller et skarpere spørgsmål: hvor går tiden hen? I de fleste serviceorganisationer er den tid, der arbejdes på en anmodning, en lille del af den forløbne tid. Resten er ventetid på godkendelser, overdragelser mellem teams, omarbejde efter fejl og arbejde, ingen ville have i første omgang. Lean giver dig ord og værktøjer til at se det spild og fjerne det.

Lean sætter også fokus på hele systemet. Et team, der får fart på sin egen del, mens køen før eller efter vokser, har ikke forbedret noget for kunden. Dette syn passer godt til servicestyring. En service er summen af mange teams, værktøjer og leverandører, og en forsinkelse hvor som helst er en forsinkelse for brugeren. Princippet "optimér helheden" er en stående påmindelse om at se på flowet fra ende til anden.

Lean er en kilde til meget af det, der optræder andre steder i denne vejledning. Kanban trækker på de samme rødder (se Emne 1.5 — Kanban), værdistrømsstyring anvender lean-kortlægning på digitalt arbejde (se Emne 5.4 — Værdistrømsstyring), og løbende forbedring ekkoer lean-vanen med konstante små gevinster (se Emne 3.15 — Løbende forbedring). Dette emne forklarer ideerne og hvordan man bruger dem uden at gøre dem til slagord.

## Kernebegreber

### Hvor lean kommer fra

Ifølge [Wikipedia-artiklen om lean manufacturing](https://en.wikipedia.org/wiki/Lean_manufacturing) voksede lean ud af [Toyotas produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System). Efter Anden Verdenskrig havde japanske producenter lidt kontanter, plads eller råmateriale, og Taiichi Ohno og Shigeo Shingo omlagde Toyotas proces omkring små fabrikker og lave lagre, med afsæt i W. Edwards Demings undervisning. John Krafcik prægede udtrykket "lean" i en artikel fra 1988, og James Womack og Daniel Jones definerede det formelt i deres bog *Lean Thinking* fra 1996.

Udtrykket "lean softwareudvikling" stammer fra bogen *Lean Software Development: An Agile Toolkit* fra 2003 af Mary og Tom Poppendieck, ifølge [Wikipedia-artiklen om lean softwareudvikling](https://en.wikipedia.org/wiki/Lean_software_development). Bogen tilpasser lean-produktionens principper til software og sammenligner lean-værktøjer med agile praksisser. Poppendiecks foredrag på agile konferencer hjalp med at bringe ideerne ind i det agile fællesskab.

### Fem principper i lean-tænkning

Womack og Jones opstillede fem principper for lean-tænkning, som produktionsartiklen gengiver dem:

1. **Værdi:** definér værdi fra kundens synspunkt.
2. **Værdistrøm:** identificér hele rækken af trin, der skaber den værdi, og udfordr de trin, der ikke tilføjer nogen.
3. **Flow:** få de resterende trin til at flyde uden afbrydelse.
4. **Pull:** lad kundens efterspørgsel trække arbejdet igennem i stedet for at skubbe det.
5. **Perfektion:** bliv ved med at forbedre, så spild bliver ved med at blive fjernet.

### Syv principper for software

Wikipedia-artiklen om lean softwareudvikling opregner syv principper for software:

| Princip | Hvad det beder om | I servicearbejde |
|---|---|---|
| **Fjern spild** | Fjern alt, der ikke tilfører værdi for kunden | Drop godkendelser, der aldrig afviser, rapporter, ingen læser, og funktioner, ingen bruger |
| **Forstærk læring** | Forkort cyklussen fra at prøve noget til at lære, hvordan det gik | Udgiv små ændringer, og se, hvad brugerne gør |
| **Beslut så sent som muligt** | Udskyd forpligtelser, til du har fakta, mens du holder muligheder åbne | Fastlæg ikke designet af en services fulde fremtid, før du ved, hvordan den bruges |
| **Lever så hurtigt som muligt** | Reducér tiden fra idé til værdi; hurtig levering lader dig se og analysere resultater tidligere | Forkort vejen for små ændringer og rutineanmodninger |
| **Bemyndig teamet** | Lad dem, der udfører arbejdet, træffe beslutninger om det | Giv servicedesken beføjelse til at løse almindelige problemer uden eskalering |
| **Byg integritet ind** | Byg kvalitet ind, mens arbejdet udføres, i stedet for at inspicere bagefter | Automatiserede tests, overvågning og klare runbooks som del af arbejdet |
| **Optimér helheden** | Forbedr flowet fra ende til anden, ikke ydeevnen af én del | Mål tiden fra anmodning til løsning på tværs af teams, ikke hvert teams egen kø |

Artiklen siger, at disse principper kun lykkes, når de anvendes sammen og med sund dømmekraft om omgivelserne. Den kalder også troen på, at "hast gør spild", en myte, og argumenterer for, at hurtig levering hjælper teams med at se og analysere output tidligere. Den påstand er et synspunkt, ikke en lov: fart uden indbygget kvalitet skaber spild, og derfor står "byg integritet ind" ved siden af "lever så hurtigt som muligt".

### Spild i software og servicearbejde

Leans syv spildformer (kaldet *muda*) kommer fra Shingos liste for produktion: lager, overproduktion, overbearbejdning, transport, unødig bevægelse, ventetid og fejl. Lean-softwareartiklen oversætter dem til software sådan:

| Produktionsspild | Softwareækvivalent | Eksempel i et serviceteam |
|---|---|---|
| Lager | Delvist udført arbejde | En lang liste af påbegyndte, men ufærdige ændringer |
| Overproduktion | Ekstra funktioner | En rapport eller service, ingen bad om |
| Overbearbejdning | Ekstra processer | Fire godkendelser på en ændring med lav risiko |
| Transport | Opgaveskift | En ingeniør, der trækkes mellem hændelser og projektarbejde |
| Ventetid | Ventetid | En ticket, der venter i et andet teams kø |
| Bevægelse | Overdragelser | En anmodning, der passerer fem personer |
| Fejl | Fejl | En fejl, der forårsager omarbejde og gentagne hændelser |

De japanske udtryk *mura* (ujævnhed) og *muri* (overbelastning) tilføjes nogle gange i diskussioner om spild. De Wikipedia-artikler, der er konsulteret her, opregner kun de syv spildformer, så brug de ekstra udtryk med omhu, og definér dem, når du gør det.

### Værdistrømskortlægning

Lean-softwareartiklen nævner værdistrømskortlægning som teknikken til at finde spild, med spild fjernet i gentagne runder. Et kort viser hvert trin på vejen fra anmodning til leveret værdi, med den tid, arbejdet arbejdes på, og den tid, det venter. Resultatet er ofte et chok: en vej, der tager uger, kan indeholde timers egentligt arbejde.

### Pull, flow og kanban

Leans pull-princip ligger bag Kanbans grænser for igangværende arbejde. Softwareartiklen beskriver just-in-time-udvikling, hvor kunden angiver det nødvendige resultat, og teamet organiserer sine egne opgaver og trækker arbejde, efterhånden som kapaciteten tillader. Kanban-kort er en synlig form for det pull (se Emne 1.5 — Kanban).

### Kaizen: konstant lille forbedring

Kaizen betyder kontinuerlig, trinvis forbedring. Produktionsartiklen sporer det til forbedringsteams hos Toyota i 1936. I et serviceteam viser det sig som små ændringer, der foretages ofte og af dem, der er tættest på arbejdet, som en revideret skabelon, et nyt automatisk tjek eller en klarere overdragelse. Det adskiller sig fra store forbedringsprogrammer ved aldrig at vente på en budgetcyklus.

### Leans grænser

De konsulterede artikler nævner ingen formel kritik, men praktiske grænser er velkendte. Lean kom fra gentagelig produktion, og vidensarbejde varierer langt mere. At tælle spild kan reducere den slack, et team har brug for til at klare overraskelser, så et fuldt belastet team er langsomt til at reagere på en hændelse. Betragt lean som en linse, der finder spild, og behold reservekapacitet, hvor variationen er høj (se Emne 3.11 — Tilgængelighed, kapacitet og ydeevne).

## God praksis

1. **Definér værdi fra kundens side.** Skriv for hver service, hvad brugeren faktisk får, og hvornår. Brug det til at bedømme hvert trin: tilfører det brugeren værdi, eller tjener det kun vores egen proces?
2. **Kortlæg værdistrømmen for én reel anmodningstype.** Vælg en almindelig anmodning eller ændring, og følg den fra første kontakt til levering. Registrér arbejdstid og ventetid ved hvert trin. Et groft kort tegnet på en time er mere nyttigt end et perfekt tegnet på et kvartal.
3. **Navngiv det spild, I finder.** Brug de syv kategorier som tjekliste: delvist udført arbejde, ekstra funktioner, ekstra proces, opgaveskift, ventetid, overdragelser, fejl. At navngive dem gør dem lettere at drøfte uden at give enkeltpersoner skylden.
4. **Angrib den længste ventetid først.** Den største forsinkelse i kortet ligger som regel mellem trin, ikke inde i dem. At reducere den slår som regel at pudse et trin, der allerede er hurtigt.
5. **Begræns igangværende arbejde.** At afslutte arbejde er hurtigere end at jonglere med det. Sæt et loft over antallet af åbne elementer pr. team, og se, hvad der sker med tiden for hvert.
6. **Byg kvalitet ind.** Tilføj tjek i øjeblikket, arbejdet udføres, som automatiserede tests, kollegagennemgang og overvågning før release, så fejl findes tidligt. At inspicere til sidst er langsommere og dyrere.
7. **Udskyd beslutninger, I endnu ikke kan træffe godt.** Hold muligheder åbne, til I har fakta, men sæt en dato, hvor I vil beslutte. Det undgår både tidlig forpligtelse til et forkert design og endeløs ubeslutsomhed.
8. **Bemyndig dem, der er tættest på arbejdet.** Lad servicedeskanalytikere, vagthavende ingeniører og udviklere træffe beslutninger inden for tydelige grænser. Angiv grænserne, som beløbs- eller risikotærskler, og gennemgå dem efter hændelser.
9. **Se på helheden, ikke delen.** Mål tiden fra ende til anden fra anmodning til løsning, og drøft den med alle involverede teams. En ændring, der hjælper ét team og bremser et andet, er ikke en forbedring.
10. **Gør forbedring lille, hyppig og lokal.** Opmuntr hvert team til at gøre én lille forbedring hver eller hver anden uge og til at dele, hvad det lærte. Registrér ændringen og dens resultat.
11. **Behold slack, hvor variationen er høj.** Fyld ikke hver time for et vagtteam. Lad der være kapacitet til overraskelser, og bedøm den efter, hvor hurtigt teamet kommer sig, når noget går galt.
12. **Brug lean sammen med andre praksisser.** Kombinér værdistrømskort med flowmålinger fra Kanban og med problemhåndtering for tilbagevendende fejl (se Emne 3.3 — Problemhåndtering).

## Spørgsmål til diskussion i teamet

**Hvis vi fulgte en almindelig anmodning fra start til slut, hvor meget af den forløbne tid ville være egentligt arbejde?**

Vælg en typisk anmodning, og indsaml datoerne for hvert trin. Markér den tid, hvor nogen arbejdede på den, og den tid, den lå i en kø. Forholdet er ofte et chok. Spørg folk, hvor de forventede ventetiderne, og hvor de var. Facilitatoren bør modstå løsninger til at begynde med og bede gruppen blive enige om, hvad kortet viser.

**Hvilke af de syv spildformer ser vi oftest i vores daglige arbejde?**

Giv folk listen, og bed om et nyligt eksempel på hver. Forvent, at delvist udført arbejde, opgaveskift, ventetid og overdragelser dukker ofte op. Spørg, hvilke teamet kan ændre alene, og hvilke der kræver andre teams eller ledere. Slut med at vælge én spildform, der skal reduceres denne måned.

**Hvad gør vi, som vores kunder ikke ville savne, hvis vi holdt op?**

List rapporter, møder, formularer og godkendelser. Spørg for hver, hvem der bruger den, og hvad der sker, hvis den stopper. Nogle vil være nødvendige for revision eller sikkerhed, hvilket er en god grund. Andre vil vise sig at være vane. Tildel nogen at tjekke hvert tvivlsomt element, før det fjernes.

**Hvor inspicerer vi kvalitet til sidst i stedet for at bygge den ind?**

Se på jeres release-, ændrings- og hændelsesprocesser efter tjek til sidst i linjen. Spørg, hvilke fejl de tjek finder, og hvornår de kunne være fundet tidligere. Typiske svar omfatter test efter udviklingen er færdig og gennemgang af dokumenter bagefter. Vælg ét tjek, der skal flyttes tidligere, og beskriv, hvordan I vil se, om det hjalp.

**Hvem kan træffe beslutninger i vores team uden at spørge, og hvem burde?**

Bed folk om at liste de seneste fem beslutninger, de ville have truffet og ikke kunne, og hvorfor. Se efter mønstre, som udgiftsgrænser, ændringsgodkendelser eller prioriteringsbeslutninger. Spørg, hvad der ville gøre det sikkert at flytte én af de beslutninger tættere på arbejdet, som et autoværn eller en gennemgang bagefter. Pres ikke på for et ja; målet er at finde, hvad folk mener, der skal til.

**Hvis alt, hvad vi gør nu, blev hurtigere, hvad ville gå i stykker først?**

Dette spørgsmål afprøver "lever så hurtigt som muligt" og "byg integritet ind" sammen. Spørg, hvor et hurtigere flow ville overbelaste et team, et værktøj eller en person. Typiske svar er test, godkendelser og vagtbelastning. Behandl svarene som det næste, der skal forbedres. Husk, at lean værdsætter hele systemets flow, så flaskehalsen er der, hvor man skal investere.

## I praksis: et agilt ITIL-eksempel

En national skatteforvaltnings IT-afdeling driver en intern service, hvor ansatte kan anmode om adgang til software. En typisk anmodning tager omkring tre uger, og de ansatte klager højlydt. Teamet på fem, der opfylder anmodninger, mener, at det arbejder hårdt, og er overrasket over klagen.

En leder afholder en værdistrømskortlægningssession med teamet, sikkerhedsgruppen og to forretningsbrugere. Sammen følger de ti nylige anmodninger. Hver anmodning passerer otte trin: indsendelse af formular, godkendelse fra nærmeste leder, godkendelse fra dataejer, sikkerhedsgennemgang, licenstjek, tickettildeling, installation og bekræftelse. Kortet viser, at det egentlige arbejde tager omkring en time, og næsten alle de tre uger er ventetid mellem trin, mest på de to godkendelser og sikkerhedsgennemgangen. I tre af de ti tilfælde blev anmodningen sendt tilbage til brugeren på grund af et manglende felt i formularen.

Gruppen aftaler tre ændringer. Formularen får obligatoriske felter og en kort vejledning, hvilket fjerner tilbagesendelserne. Anmodninger om en kort liste af almindelige applikationer med lav risiko får en enkelt godkendelse fra nærmeste leder, med dataejeren informeret. Sikkerhedsgruppen aftaler at gennemgå en stikprøve af sådanne anmodninger hver uge i stedet for hver anmodning før installation. Efter to måneder falder den typiske tid til omkring en uge. Én vanskelighed består: anmodninger om følsomme applikationer tager stadig tre uger, og sikkerhedsgruppen bemærker, at stikprøven fangede to anmodninger, der burde have været afvist. De justerer listen over applikationer, der er berettiget til hurtig godkendelse, og beslutter at gennemgå den hvert kvartal.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams kan bruge lean til at se ud over deres egen sprint eller tavle. Kortlæg vejen fra en idé til brugerens hænder, inklusive test, sikkerhedsgennemgang og releasegodkendelser, og find, hvor arbejdet venter. Behandl ufærdigt arbejde som spild, og foretræk at afslutte frem for at starte.

### Service- og driftsteams

Driftsteams ser spild dagligt: gentagne hændelser, overdragelser mellem niveauer og anmodninger, der preller af. Brug kort til at vise, hvor arbejdet venter, og brug problemhåndtering til at fjerne årsagerne til gentagelser. Argumentér for reservekapacitet ved at vise, hvad der sker med flowet, når hver time er planlagt.

### Ledelse og governance

Ledere former det system, der skaber mest spild: godkendelsesregler, finansieringscyklusser og rapportering. Spørg jeres teams, hvor de regler koster mest tid, og hvilken risiko hver beskytter mod. Vær klar til at erstatte en kontrol med et lettere tjek, der opfylder det samme formål.

### Kunder og brugere

Kunder definerer værdi i lean-tænkning, og de mærker spild som forsinkelse. Forvent at blive spurgt, hvad du faktisk har brug for, og hvor hurtigt. Fortæl teamet, hvilken del af en service der betyder mest for dig, da det styrer, hvor kræfterne går hen. Til gengæld kan du forvente kortere, mere forudsigelige ventetider.

## Almindelige fejlmønstre

- **At skære kapacitet i spildets navn.** Teams kører på fuld belastning og kan ikke reagere på overraskelser. I stedet: behold slack, hvor variationen er høj, og bedøm efter, hvor hurtigt teamet kommer sig.
- **At kortlægge uden at handle.** Værdistrømskortet hænger på en væg, og intet ændrer sig. I stedet: vælg den største ventetid, og aftal én ændring med en ejer, før sessionen slutter.
- **At optimere ét team.** En lokal gevinst flytter køen et andet sted hen. I stedet: mål tiden fra ende til anden, og aftal ændringer med alle teams i strømmen.
- **At fjerne kontroller uden at forstå dem.** Et trin, der lignede spild, beskyttede mod en reel risiko. I stedet: spørg, hvad hvert trin beskytter, og erstat det med et lettere tjek, hvor I kan.
- **At bruge lean-ord som slagord.** Folk siger "spild" for at afvise kollegers arbejde. I stedet: brug begreberne til at beskrive flowet, og hold samtalen om systemet.
- **At skubbe fart over kvalitet.** Hurtigere levering giver flere fejl og mere omarbejde. I stedet: behandl "byg integritet ind" som en forudsætning for fart.
- **At anvende produktionstal på vidensarbejde.** Mål fra en fabrik passer ikke til varierende arbejde. I stedet: brug lean som en måde at se og spørge på, og sæt målinger ud fra jeres egne data.
- **At behandle lean som et engangsprojekt.** Gevinster aftager, når opmærksomheden flytter sig. I stedet: gør små forbedringer til en del af hvert teams rutine.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| At se spild | Spild mærkes, men beskrives ikke | Nogle teams kortlægger deres eget arbejde | Teams bruger fælles spildkategorier og værdistrømskort | Ventetid og omarbejde måles langs værdistrømmen | Kort og målinger krydser teams og leverandører |
| Flow og pull | Arbejde skubbes og startes i bulk | Nogle teams begrænser igangværende arbejde | Pull-regler og grænser er standard | Flowmålinger styrer ændringer af grænser og politikker | Flow koordineres på tværs af hele strømmen |
| At bygge kvalitet ind | Kvalitet inspiceres til sidst | Nogle teams tester tidligt og gennemgår arbejde | Automatiserede tjek og indbyggede gennemgange er standard | Rater for undslupne fejl spores og reduceres | Kvalitetspraksisser deles og forbedres på tværs af teams |
| Løbende forbedring | Forbedring følger kriser | Nogle teams laver små jævnlige ændringer | Hvert team har en fast forbedringsrutine | Forbedringer spores, og deres effekt tjekkes | Forbedringer spreder sig rutinemæssigt mellem teams og leverandører |

## Tjekliste

- [ ] Vi har defineret, hvad værdi betyder for mindst én service fra brugerens side.
- [ ] Vi har kortlagt værdistrømmen for én almindelig anmodningstype, med arbejdstid og ventetid.
- [ ] Teamet kan nævne de syv spildformer og give et nyligt eksempel på hver.
- [ ] Igangværende arbejde er begrænset, og ufærdigt arbejde er synligt.
- [ ] Kvalitetstjek sker under arbejdet såvel som til sidst.
- [ ] Vi har valgt mindst én ventetid, der skal reduceres, med en ejer og en dato.
- [ ] Teamet har klare grænser for de beslutninger, det kan træffe uden at spørge.
- [ ] Vi måler tiden fra ende til anden for mindst ét flow på tværs af teams.
- [ ] Vi beholder reservekapacitet til overraskelser, hvor efterspørgslen varierer.
- [ ] Hvert team laver og registrerer en lille forbedring i en fast rytme.

## AI-prompts

**Formål: at analysere en værdistrøm ud fra de tider, du angiver.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Formål: at klassificere eksempler på spild fra dit eget teams arbejde.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Formål: at afprøve, om det er sikkert at fjerne en kontrol.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Formål: at planlægge en workshop i værdistrømskortlægning.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): brug den til at kortlægge trinnene, arbejdstiden og ventetiden for en anmodning fra start til slut.
- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at planlægge små, løbende forbedringer, når spild er fundet.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): brug den til at analysere, hvordan arbejde bevæger sig mellem roller, og finde overdragelser og forsinkelser.
- [kanban](../../../../skills/kanban/SKILL.md): brug den til at anvende pull og grænser for igangværende arbejde på det flow, I har kortlagt.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): brug den, når fejl og variation, ikke kun ventetid, er det største problem, og du har brug for en databaseret metode til at reducere dem.

## Vigtigste kilder

- **Lean software development** (Wikipedia): de syv principper, spildkortlægningen og links til videre læsning.
- **Lean manufacturing** (Wikipedia): leans historie hos Toyota, spildformerne og de fem principper i lean-tænkning.
- **Lean Software Development: An Agile Toolkit** (Mary og Tom Poppendieck, 2003): bogen, der bragte lean-ideer ind i det agile fællesskab.
- **Lean Thinking** (James Womack og Daniel Jones, 1996): den formelle fremstilling af leans fem principper.

## Referencer

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
