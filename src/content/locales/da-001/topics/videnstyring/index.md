# Videnstyring

**Videnstyring gør det, folk ved, tilgængeligt for andre, når de har brug for det, og den tilgang, der virker for agile teams, er at fange viden som et biprodukt af arbejdet, holde den kort og med en ejer og kombinere skrivning med samtale.**

## Hvorfor det betyder noget

Enhver service afhænger af viden: hvordan den virker, hvad der er gået galt før, hvordan man retter det, og hvorfor den blev bygget, som den blev. Når den viden kun bor i nogle få hoveder, er servicen skrøbelig. En ferie, en opsigelse eller en dårlig nat på vagt kan gøre en rettelse på ti minutter til et nedbrud på ti timer. Videnstyring er praksissen at sikre, at de, der har brug for at vide, kan finde ud af det.

Den agile tradition læner sig mod samtale og fungerende software frem for dokumentation, og det agile manifests forfattere er blevet kritiseret for det (se Emne 1.1 — Det agile manifest). En rimelig læsning er, at dokumentation skal fortjene sin plads. Videnstyring giver en måde at afgøre, hvad der fortjener den: viden, der bruges ofte, er dyr at genopdage eller er hos for få. For resten kan samtale og parring tjene bedre.

[Wikipedia-artiklen om knowledge management](https://en.wikipedia.org/wiki/Knowledge_management) er bred og beskriver feltet som behandling af viden for at opnå organisatoriske mål, adskilt fra indholds- eller informationsstyring. Den registrerer historie, modeller, tilgange, muliggørere, barrierer og kritik og siger intet specifikt om IT-services. Dette emne bruger artiklens generelle ideer og anvender dem på serviceteams, og påpeger, hvor det anvender og ikke rapporterer.

## Kernebegreber

### Hvad videnstyring er

Wikipedia beskriver videnstyring (KM) som dækkende processer for organisatorisk bevidsthed, læring, samarbejde og innovation, der bruger og deler viden til at understøtte en organisations mål. Den bemærker, at praksisser som læretid, virksomhedsbiblioteker og mentorordninger langt går forud for begrebet. KM opstod som en disciplin i begyndelsen af 1990'erne, hvor akademikere som Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport og Baruch Lev hjalp med at udvikle feltet. Artiklen siger, at ISO 9001:2015 tilføjede en specifikation for "organisatorisk viden".

### Stiltiende og eksplicit viden

Artiklen skelner mellem to former. **Stiltiende viden** (tacit knowledge) er internaliseret og ofte ikke bevidst kendt. **Eksplicit viden** er bevidst besiddet og kan let kommunikeres. Nonakas SECI-model (socialisering, eksternalisering, kombination, internalisering), som artiklen tilskriver Nonaka og Takeuchis bog fra 1995, beskriver en spiral mellem de to. Artiklen bemærker også, at senere forskere kaldte opdelingen en forenkling.

For et serviceteam er skellet praktisk. En erfaren ingeniør kan ofte fornemme, at en alarm sandsynligvis er støj, eller at en bestemt release er risikabel, og kan ikke let skrive ned hvorfor. Noget af den fornemmelse kan gøres til runbooks og tjek; noget kan kun deles ved at arbejde sammen.

### Kodificering og personalisering

Efter Hansen og kolleger (1999) skelner artiklen mellem to strategier. **Kodificering** gemmer viden i arkiver, så andre kan genbruge den. **Personalisering** deler viden gennem direkte kontakt mellem mennesker. Hver passer til forskellig viden:

| Strategi | Passer til | Eksempler i et serviceteam |
|---|---|---|
| Kodificering | Gentagne, velforståede opgaver | Runbooks, registreringer af kendte fejl, servicebeskrivelser, vejledningsartikler |
| Personalisering | Komplekse, skiftende eller dømmekraftstunge anliggender | Parring på vagt, skygning, praksisfællesskaber, designdiskussioner |

De fleste teams har brug for begge. En vidensbase med opskrifter lærer ikke dømmekraft, og samtale alene skalerer ikke til natholdet.

### Praksisfællesskaber

Artiklen opregner praksisfællesskaber blandt perspektiverne på KM. I en serviceorganisation kan de være så enkle som et jævnligt uformelt møde mellem folk, der arbejder med lignende problemer på tværs af teams, som databaseingeniører eller deskanalytikere. De spreder viden og normer og giver folk et sted at spørge.

### Hvad man skal fange

Ikke alt fortjener en registrering. Nyttige kandidater i et serviceteam omfatter:

- **Hvordan man genopretter en service:** runbooks og genopretningstrin (se Emne 3.2 — Hændelseshåndtering).
- **Kendte fejl og midlertidige løsninger:** symptom, midlertidig løsning og ejer (se Emne 3.3 — Problemhåndtering).
- **Servicebeskrivelser:** hvad en service gør, hvem der ejer den, og hvad den afhænger af (se Emne 3.8 — Styring af servicekataloget).
- **Beslutninger og deres begrundelser:** hvorfor et design blev valgt, så fremtidige ændringer ikke blindt fortryder det.
- **Erfaringer fra hændelser:** postmortems, andre kan læse.
- **Svar på almindelige brugerspørgsmål:** korte artikler til servicedesken og til selvbetjening.

### Muliggørere og barrierer

Artiklen nævner mennesker og kultur, processer og struktur samt teknologi som kernekomponenter. Den bemærker, at motiver omfatter innovation, kortere udviklingscyklusser og udnyttelse af ekspertise, og at organisationer bruger incitamenter som obligatorisk indsendelse af indhold, men den siger, at der ikke er konsensus om, hvorvidt incitamenter virker. Den opregner barrierer som viden, der ikke overføres, utilstrækkelig uddannelse og tab af viden, når erfarne medarbejdere rejser. For serviceteams er de barrierer, der betyder mest, tidspres, uklart ejerskab af indhold, værktøjer der er besværlige at bruge, og en kultur, der belønner heltemod frem for deling.

### Viden i arbejdets flow

Et praktisk princip, udbredt i servicedeske, er at fange viden som en del af arbejdet og ikke som en separat opgave. Når en analytiker løser et nyt problem, bliver løsningen til et udkast til en artikel, før ticketten lukkes. Når en ingeniør retter en hændelse, går trinnene ind i runbooken. Det gør hvert stykke arbejde til et lille bidrag. De kilder, der er læst til denne vejledning, beskriver ikke en specifik metode til at gøre det, så behandl princippet som almindelig praksis, der skal afprøves, og se, hvad der virker med jeres værktøjer.

### Kritik og grænser

Artiklen registrerer kritik: at den praktiske relevans af akademisk KM-forskning er blevet draget i tvivl, at skellet mellem stiltiende og eksplicit viden er blevet kritiseret, at incitamenters effektivitet er omstridt, og at beskyttelse af viden indebærer risici som overbeskyttelse og tilegnelse. Den rapporterer ingen målt evidens for KM's effektivitet eller investeringsafkast. For et serviceteam er lærestregen beskeden ambition: start med den viden, hvis fravær har skadet, mål om den bliver brugt, og drop det, der ikke gør.

### Viden og organisatorisk læring

Artiklen siger, at KM ligner organisatorisk læring, men lægger mere vægt på viden som et strategisk aktiv og på informationsdeling, og at KM letter organisatorisk læring. Det hænger sammen med agil læring (se Emne 1.10 — Agil læring) og med løbende forbedring (se Emne 3.15 — Løbende forbedring).

## God praksis

1. **Start med den viden, hvis fravær har skadet.** List de seneste hændelser eller forsinkelser forårsaget af manglende viden. Start med de emner, ikke med et forsøg på at dokumentere alt.
2. **Fang viden i arbejdets øjeblik.** Gør det til en del af lukningen af en hændelse, en anmodning eller en ændring at skrive en kort note. En grov note skrevet nu er mere værd end en poleret artikel planlagt til senere.
3. **Hold artikler korte og strukturerede.** Brug en konsekvent form: symptom, årsag hvis kendt, trin, hvornår man eskalerer, ejer, sidste gennemgangsdato. Folk under pres læser overskrifter og nummererede trin.
4. **Giv hver artikel en ejer og en gennemgangsdato.** Indhold uden ejer forfalder. Vis gennemgangsdatoen på artiklen, så læsere kan bedømme tilliden.
5. **Slet og slå sammen.** Afvikl artikler, ingen bruger, og slå dubletter sammen. En mindre, aktuel base er bedre end en stor, forældet.
6. **Gør det let at finde.** Placér viden, hvor folk allerede arbejder, afprøv søgning med rigtige forespørgsler, og link artikler fra tickets, servicekataloget (ITIL skriver det "service catalogue") og runbooks.
7. **Afprøv runbooks ved at bruge dem.** Bed den person, der skal bruge en runbook, om at følge den på et testtilfælde. Ret det, der er uklart. Det gør et dokument til fungerende viden.
8. **Par og skyg til det stiltiende.** Lad mindre erfarne folk arbejde sammen med erfarne på rigtige hændelser og ændringer. Planlæg parringen, da den ikke sker, når alle har travlt.
9. **Støt praksisfællesskaber.** Giv folk tid og et sted at mødes på tværs af teams. Lad emnerne komme fra medlemmerne.
10. **Registrér beslutninger og begrundelser.** Før en kort registrering af væsentlige design- og procesbeslutninger og hvorfor de blev truffet. Det forhindrer genopdagelse og hjælper nytilkomne.
11. **Del erfaringerne.** Udgiv postmortems og problemopsummeringer bredt, i almindeligt sprog, og spørg andre teams, hvad der gælder for dem (se Emne 3.2 — Hændelseshåndtering).
12. **Hold øje med videnrisiko.** Én gang i kvartalet list de færdigheder og systemer, der afhænger af én person, og planlæg at sprede dem. Behandl afgange som et oplæg til gennemgang.

## Spørgsmål til diskussion i teamet

**Hvad ville vi være ude af stand til at gøre, hvis én navngiven person var væk i en måned?**

Bed teamet nævne folk, hvis fravær ville gøre ondt, og hvorfor. List de opgaver, der afhænger af dem. Det er som regel en lang liste og ubehagelig for de navngivne. Formulér det som en risiko for servicen, ikke en dom. Facilitatoren kan spørge, hvilken opgave der er mest presserende at dele, og hvordan. Vælg én at starte med.

**Hvad skriver vi ned, og læser nogen det?**

Bed om de seneste tre dokumenter, folk brugte, og de seneste tre, de skrev. Sammenlign. Hullet viser, hvor dokumentationsindsatsen er malplaceret. Spørg, hvordan en nyttig version af de ulæste dokumenter ville se ud, eller om de bør slettes. Aftal at afvikle eller rette ét.

**Når vi retter noget nyt, hvor går viden hen?**

Følg det seneste nye problem: hvem rettede det, hvem ved hvordan, og hvor blev det registreret. Hvis svaret er "i en ticket" eller "i mit hoved", så drøft, hvordan en bedre vej ville se ud. Ofte gør en lille vane, som en skabelon ved lukning, en forskel. Prøv én i en måned.

**Hvilken viden deles bedst ved at arbejde sammen, ikke ved at skrive?**

Spørg, hvor dømmekraft betyder noget: at læse en graf, at afgøre hvornår man eskalerer, at kende en kunde. Drøft, hvordan nytilkomne lærer dem i dag. Typiske svar er held og tid. Planlæg en bevidst ordning, som skygning på vagt. Aftal, hvem der parrer med hvem.

**Hvordan ved vi, om en vidensartikel stadig er sand?**

Vælg en artikel, og afprøv den. Tjek ejeren, gennemgangsdatoen og om trinnene virker. Mange dumper testen. Spørg, hvilken gennemgangscyklus der er realistisk, og hvem der kan afvikle artikler. Målet er et synligt tegn på tillid på hver artikel.

**Hvad forhindrer os i at dele, hvad vi ved?**

Saml ærlige svar: ingen tid, frygt for at se tåbelig ud, intet oplagt sted, ingen anerkendelse. Wikipedia-artiklen bemærker, at incitamenters effektivitet er omstridt, så undgå lette svar. Spørg, hvilken forhindring teamet kan ændre, og hvilken der kræver ledelsen. Forpligt jer til én synlig ændring.

## I praksis: et agilt ITIL-eksempel

En national jernbanes passagerinformationsteam på fjorten driver systemerne bag stationsdisplays og køreplanappen. Den mest erfarne ingeniør, som byggede displaykontrolleren, meddeler, at han går på pension om seks måneder. Ingen andre forstår, hvordan kontrolleren håndterer fejl, og dokumentationen er et designdokument på 200 sider skrevet for ti år siden.

Teamlederen lister, hvad ingeniøren ved, som andre ikke gør. Han får tre grupper: hvordan man genopretter kontrolleren efter en fejl (eksplicit og gentagelig), hvorfor visse mærkelige adfærd findes (delvist skrevet, delvist i hukommelsen) og hvordan man bedømmer, hvornår en fejl er alvorlig (stiltiende). For den første skriver teamet runbooks sammen med ingeniøren og afprøver hver ved at lade en kollega følge den på en testenhed. For den anden interviewer et par ingeniører ham ugentligt og skriver korte beslutningsnoter i en fælles mappe, hver med en ejer. For den tredje skygger en mindre erfaren ingeniør ham på hver vagthændelse i seks måneder og tager føringen på nogle, mens han ser på.

Efter seks måneder kan tre ingeniører håndtere kontrollerfejl, dokumentet på 200 sider er erstattet af elleve korte runbooks og tyve beslutningsnoter, og teamet har en månedlig session, hvor én forklarer noget, vedkommende ved. Problemer består. To runbooks fejlede, da de blev afprøvet på en anden hardwareversion, og måtte omskrives, og den stiltiende dømmekraft er kun delvist overført: den skyggende ingeniør siger, at nogle beslutninger stadig føles som gæt. Teamet planlægger en anden runde skygning med den pensionerende ingeniørs efterfølger og aftaler at gennemgå runbooks hvert kvartal.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams rummer meget af viden om, hvordan services bygges. Skriv korte runbooks og beslutningsnoter som en del af jeres definition of done, og afprøv dem med de folk, der skal bruge dem. Del designbegrundelser med driften, så ændringer ikke fortryder dem.

### Service- og driftsteams

Driftsteams genererer og bruger meget af den daglige viden. Fang løsninger, når I lukker tickets, hold kendte fejl ajour, og bed leveranceteams om det, I har brug for. Gør artikler lette at finde for desken og til selvbetjening.

### Ledelse og governance

Ledere former, om deling belønnes eller afskrækkes. Wikipedia-artiklen siger, at incitamenter er omstridte, så fokusér på at fjerne forhindringer: giv tid, gør værktøjerne lette, og beløn folk, der hjælper andre. Spor videnrisiko, som enkeltstående ekspertise, på samme måde som andre servicerisici.

### Kunder og brugere

Kunder og brugere har gavn af klare svar og selvbetjeningsartikler. Fortæl teamet, når en artikel er forkert eller mangler. Spørg leverandører, hvordan de lærer af hændelser, og hvordan de deler, hvad de lærer, med dig.

## Almindelige fejlmønstre

- **At dokumentere alt.** Basen bliver stor og forældet. I stedet: start med viden, hvis fravær har skadet, og tilføj efter behov.
- **Skrivning adskilt fra arbejdet.** Fangst er en pligt bagefter. I stedet: gør en kort note til en del af lukningen af arbejdet.
- **Ingen ejere.** Ingen opdaterer artikler. I stedet: navngiv en ejer og en gennemgangsdato for hver.
- **Dårlig søgning.** Folk kan ikke finde, hvad der findes, så de skriver dubletter. I stedet: afprøv søgning med rigtige forespørgsler, og link artikler fra der, hvor folk arbejder.
- **At ignorere det stiltiende.** Alt antages at kunne skrives. I stedet: planlæg parring, skygning og praksisfællesskaber.
- **Uafprøvede runbooks.** Trin fejler, når der er brug for dem. I stedet: lad en bruger følge hver runbook på et testtilfælde.
- **Hamstring som status.** Folk beskytter viden for at beskytte deres position. I stedet: anerkend deling, og spred afhængighed.
- **At pålægge indhold.** Mængdemål giver tynde artikler. I stedet: fokusér på brug og kvalitet, og husk, at incitamenters virkning er omstridt.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| At fange viden | Viden bor i hoveder og chat | Nogle teams fører noter og runbooks | At fange en note er en del af lukning af arbejde | Fangstrater og nytte gennemgås | Videnfangst deles på tværs af teams og leverandører |
| Kvalitet og ejerskab | Ingen ejere; indhold forfalder | Nogle artikler har ejere | Hver artikel har en ejer og en gennemgangsdato | Nøjagtighed og brug måles; forældet indhold fjernes | Kvalitetspraksisser deles og forbedres på tværs af organisationen |
| Findbarhed og brug | Søgning er dårlig; folk spørger hinanden | Noget indhold linkes fra tickets | Viden linkes fra tickets, katalog og runbooks | Brug og søgefejl måles og rettes | Viden er tilgængelig for brugere, leverandører og partnere efter behov |
| Deling af det stiltiende | Deling sker ved et tilfælde | Nogen parring og skygning forekommer | Parring, skygning og praksisfællesskaber er planlagt | Videnrisiko spores og reduceres | Fællesskaber og rotation flytter rutinemæssigt viden på tværs af teams |

## Tjekliste

- [ ] Vi har listet den viden, hvis fravær har skadet os, og er startet der.
- [ ] Lukning af en hændelse, anmodning eller ændring omfatter en kort note, når noget var nyt.
- [ ] Artikler følger en kort fælles struktur med en ejer og en gennemgangsdato.
- [ ] Runbooks er afprøvet af en, der ikke skrev dem.
- [ ] Søgning virker for rigtige forespørgsler, og artikler linkes fra tickets og servicekataloget.
- [ ] Ubrugte og duplikerede artikler afvikles.
- [ ] Vi har en plan for at sprede viden, der sidder hos én person.
- [ ] Parring eller skygning er planlagt til dømmekraftstungt arbejde.
- [ ] Erfaringer fra hændelser deles ud over teamet.
- [ ] Vi gennemgår videnrisiko mindst kvartalsvis.

## AI-prompts

**Formål: at gøre en løst ticket til et udkast til en vidensartikel.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Formål: at finde videnrisiko i dit team.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gennemgå en runbook for klarhed, før den afprøves.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Formål: at planlægge en videnoverdragelse for en, der forlader virksomheden.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [runbook](../../../../skills/runbook/SKILL.md): brug den til at skrive trin-for-trin-procedurer, som en anden kan følge under pres.
- [postmortem](../../../../skills/postmortem/SKILL.md): brug den til at registrere erfaringer fra hændelser i en form, andre kan læse.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): brug den til at registrere, hvorfor en designbeslutning blev truffet.
- [decision-records](../../../../skills/decision-records/SKILL.md): brug den til at føre en kort registrering af vigtige ikke-arkitekturbeslutninger.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): brug den til at finde huller i færdigheder, som videndeling bør adressere.

## Vigtigste kilder

- **Knowledge management** (Wikipedia): en bred oversigt over feltets historie, modeller, tilgange og kritik.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): hvordan én organisation deler erfaringer fra hændelser.
- **Tacit knowledge** (Wikipedia): baggrund om den viden, der er svær at skrive ned.
- **Community of practice** (Wikipedia): baggrund om grupper på tværs af teams, der deler viden.

## Referencer

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
