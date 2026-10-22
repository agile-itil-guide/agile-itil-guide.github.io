# Problemhåndtering

**Problemhåndtering finder og fjerner årsagerne bag tilbagevendende hændelser, og dens agile form er en jævn strøm af små, evidensbaserede rettelser i backloggen i stedet for lejlighedsvise store undersøgelser.**

## Hvorfor det betyder noget

Et team, der håndterer hændelser godt, men aldrig fjerner deres årsager, går på en løbebåndsmaskine. Hvert nedbrud repareres, den samme fejl vender tilbage, og de vagthavende ingeniører bliver trætte. Problemhåndtering er den praksis, der træder af løbebåndet: den spørger, hvorfor hændelsen skete, om den vil ske igen, og hvad der ville stoppe den.

Agile teams er godt placeret til at gøre dette. De har en backlog, hvor en rettelse kan konkurrere med en funktion, de arbejder i korte cyklusser, der gør små rettelser billige, og de holder retrospektiver, hvor mønstre kan bemærkes. Det, de ofte mangler, er vanen at forbinde hændelser med hinanden og disciplinen til at lede efter årsager ordentligt. Problemhåndtering leverer begge dele.

[Wikipedia-artiklen om root cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis) er den vigtigste kilde, der er læst til dette emne, fordi den engelske Wikipedia ikke har nogen artikel med titlen "Problem management" på den kontrollerede adresse. Artiklen beskriver rodårsagsanalyse (RCA) som en problemløsningsmetode, der bruges i IT-drift og andre felter, og den bærer vedligeholdelsesmærker om manglende henvisninger. ITIL-ordforrådet, der bruges her, som kendt fejl og midlertidig løsning, kommer fra bredt udgivne beskrivelser af praksissen, som denne vejledning ikke kunne bekræfte mod rammeværksejerens tekst. Læs ejerens aktuelle publikationer, når præcise definitioner betyder noget (se Emne 2.2 — ITIL).

## Kernebegreber

### Hændelse, problem, kendt fejl

Tre begreber bruges sammen, og forskellene betyder noget:

| Begreb | Betydning, som bredt brugt i ITSM | Eksempel |
|---|---|---|
| **Hændelse** | En uplanlagt afbrydelse af en service eller forringelse af dens kvalitet | Bookingsiden er nede i tyve minutter |
| **Problem** | Den underliggende, eller mistænkte, årsag til en eller flere hændelser | En hukommelseslækage i bookingservicen |
| **Kendt fejl** | Et problem, hvis årsag er identificeret, som regel med en midlertidig løsning registreret | En hukommelseslækage er forstået; en genstart af servicen hver nat forhindrer nedbrud, indtil den er rettet |

En **midlertidig løsning** (workaround) er en måde at reducere eller undgå virkningen af en hændelse eller et problem uden at fjerne dets årsag. Problemhåndtering handler om at fjerne årsagen, og hændelseshåndtering handler om at genoprette servicen (se Emne 3.2 — Hændelseshåndtering).

### Reaktiv og proaktiv

Rodårsagsanalyse-artiklen skelner mellem reaktive og proaktive tilgange i generelle vendinger. Reaktivt arbejde behandler symptomer hurtigt. Proaktivt arbejde sigter mod at forebygge problemer og stiller diagnostisk nøjagtighed foran hastighed. I ITSM-praksis findes begge: reaktiv problemhåndtering undersøger problemer efter hændelser, og proaktiv problemhåndtering leder efter mønstre og svagheder, før de forårsager hændelser.

### Hvad en rodårsag er

Artiklen definerer en rodårsag med en praktisk test: en faktor er rodårsagen til et problem, hvis fjernelsen af den forhindrer problemet i at vende tilbage. Den skelner en rodårsag fra andre kausale faktorer. Det er en nyttig regel. Hvis du fjerner en faktor, og problemet stadig kan vende tilbage, har du fundet en bidragyder, ikke roden.

Artiklen advarer også om grænser. Den siger, at manglende overvågningsdata, meget høje begivenhedsmængder, flere rodårsager og efterforskere, der stopper ved en overfladisk rod, alt sammen komplicerer analysen. I IT, bemærker den, mangler RCA ofte fejltræer eller designspecifikationer, så "der er ingen rodårsag" er blevet et almindeligt mundheld. For komplekse systemer må du forvente flere bidragende årsager og ikke en enkelt synder.

### Principper for rodårsagsanalyse

Artiklen opregner generelle trin:

1. Beskriv problemet klart.
2. Byg en tidslinje fra normal drift til fejlen.
3. Adskil rodårsagen fra andre kausale faktorer.
4. Tegn en kausalgraf, der forbinder rodårsagen med problemet.

Den tilføjer, at efterforskere bør se på forsvar, der svigtede eller manglede (barriereanalyse), undgå skævhed i undersøgelseslinjerne, beslutte korrigerende handlinger og gennemgå, om de handlinger var effektive.

### Metoder

Artiklen siger, at ifølge ISO/IEC 31010 kan RCA bruge five whys, failure mode and effects analysis (FMEA), fejltræsanalyse, Ishikawa-diagrammer (fiskeben) og Pareto-analyse. Den tilskriver Kaoru Ishikawa kausaldiagrammet, der bærer hans navn. Den kalder også fiskeben- og five whys-metoder "ikke stringente nok", en mening, den ikke understøtter med en kilde. En praktisk læsning: enkle metoder er gode udgangspunkter for teamdiskussion, og komplekse eller højrisiko-fejl kan have brug for mere stringente.

| Metode | Hvad den gør | Hvornår den hjælper |
|---|---|---|
| **Five whys** | Spørger gentagne gange "hvorfor" for at bevæge sig fra et symptom mod en årsag | Hurtig teamdiskussion af enkle årsagskæder |
| **Ishikawa-diagram (fiskeben)** | Grupperer mulige årsager efter kategori | Brainstorming af mange mulige årsager |
| **Pareto-analyse** | Rangerer årsager efter hyppighed eller påvirkning | At vælge, hvilket tilbagevendende problem der skal tages først |
| **Fejltræsanalyse** | Kortlægger kombinationer af fejl, der fører til et udfald | Sikkerhedskritiske eller komplekse fejl |
| **FMEA** | Ser fremad på, hvordan dele kunne svigte, og hvad virkningen ville være | Proaktiv designgennemgang |

### Effektive korrigerende handlinger

Artiklen siger, at korrigerende handlinger, der blot tilføjer papirarbejde eller uddannelse, er mindre effektive. I praksis antyder det at foretrække handlinger, der ændrer systemet: automatisér et tjek, fjern en fejltilstand, tilføj en sikring, forbedr overvågningen. En handling som "mind ingeniørerne om at være forsigtige" er svag.

### Skyldfrihedsprincippet

Problemundersøgelse deler det skyldfrie princip, der er beskrevet for postmortems i Googles SRE-bog: identificér bidragende årsager uden at give enkeltpersoner skylden, da folk kan oplæres, og systemer kan rettes (se Emne 3.2 — Hændelseshåndtering). En undersøgelse, der finder "menneskelig fejl" og stopper, er som regel stoppet for tidligt. Spørg, hvad der gjorde fejlen mulig, og hvad der ville gøre den sværere.

### Problemhåndtering i et agilt flow

En praktisk agil tilgang ser sådan ud:

- Hændelser og postmortems skaber kandidatproblemer.
- En kort, jævnlig gennemgang grupperer gentagne hændelser og rangerer problemer efter påvirkning og hyppighed.
- Udvalgte problemer går ind i backloggen som almindelige punkter, med en ejer, en hypotese og en tidsgrænse for undersøgelsen.
- Midlertidige løsninger registreres som kendte fejl, så servicedesken og de vagthavende ingeniører kan bruge dem (se Emne 3.9 — Videnstyring).
- Rettelser er små og testede, udgives på normal vis og tjekkes bagefter for at se, om hændelserne stoppede.

## God praksis

1. **Knyt hændelser til problemer.** Registrér, hvilke hændelser der ser ud til at have den samme årsag. Uden forbindelser kan du ikke se mønstret, og uden mønstret kan du ikke argumentere for en rettelse.
2. **Gennemgå hændelser for mønstre efter en plan.** Én gang om måneden gruppér de seneste hændelser efter service og sandsynlig årsag, og vælg de øverste få. Brug Pareto-tænkning: nogle få årsager står som regel for meget af smerten.
3. **Behandl problemer som backlogpunkter.** Giv hvert udvalgt problem en ejer, en beskrivelse og en tidsramme for undersøgelsen, og lad det konkurrere med andet arbejde. En separat kø af "problemer", ingen planlægger, er en kirkegård.
4. **Start med en klar problembeskrivelse.** Skriv, hvad der sker, hvor, hvor ofte, og hvad påvirkningen er, ud fra fakta. Vage beskrivelser fører til vage rettelser.
5. **Byg en tidslinje.** Indsaml logs, ændringer og begivenheder fra normal drift til fejl. Artiklen opregner tidslinjen som et kernetrin, og mange overraskelser kommer fra ændringer, ingen havde forbundet.
6. **Spørg efter den årsag, som, hvis den fjernes, forhindrer gentagelse.** Brug artiklens test. Når teamet foreslår en årsag, så spørg, om fjernelsen af den ville stoppe problemet i at vende tilbage.
7. **Forvent mere end én årsag.** Led efter bidragende faktorer i design, overvågning, proces og folks viden. Stop ikke ved den første plausible.
8. **Vælg metoder, der passer til problemet.** Brug five whys eller et fiskeben til hurtig teamdiskussion og mere stringente værktøjer til alvorlige eller komplekse fejl.
9. **Foretræk handlinger, der ændrer systemet.** Favoriser automatisering, sikringer og bedre overvågning frem for påmindelser og uddannelse. Registrér den forventede virkning, så du kan tjekke den.
10. **Registrér midlertidige løsninger som kendte fejl.** Skriv, hvordan symptomet ser ud, den midlertidige løsning og hvem der ejer rettelsen. Del registreringen med servicedesken og de vagthavende.
11. **Tjek, at rettelsen virkede.** Efter en rettelse hold øje med gentagelse i en aftalt periode, og rapportér resultatet. En rettelse, der aldrig tjekkes, er et håb.
12. **Del, hvad I finder.** Udgiv korte opsummeringer af problemer og rettelser, så andre teams kan genkende lignende mønstre.

## Spørgsmål til diskussion i teamet

**Hvilken hændelse bliver ved med at komme tilbage, og hvad tror vi forårsager den?**

Bed folk nævne den hændelse, de er mest trætte af. Sammenlign svarene. Spørg derefter, hvad hver person tror er årsagen, og hvordan de ved det. Overbevisninger adskiller sig ofte, hvilket viser, hvor lidt fælles evidens der findes. Facilitatoren kan spørge, hvilke data der ville afgøre sagen. Vælg én, der skal undersøges med en tidsramme.

**Hvordan ved vi, om to hændelser har den samme årsag?**

Se på, hvordan hændelser registreres, og spørg, om nogen hurtigt kunne finde beslægtede hændelser. Typiske svar er fri tekst, hukommelse eller held. Spørg, hvilken lille ændring i registreringerne der ville hjælpe, som et felt for service og sandsynlig årsag. Aftal én.

**Hvad gør vi, når vi finder "menneskelig fejl" i en gennemgang?**

Bed om et nyligt eksempel. Spørgsmålet er, om gennemgangen stoppede der. Drøft, hvad i systemet der gjorde fejlen mulig: uklare instruktioner, et forvirrende værktøj, tidspres. Sammenlign med ideen om, at man ikke kan rette folk, men man kan rette systemer. Aftal et spørgsmål, der stilles hver gang, som "Hvad gjorde dette let at gøre?"

**Hvilke handlinger fra tidligere gennemgange ændrede faktisk systemet, og hvilke tilføjede kun en påmindelse?**

List handlingerne fra de seneste fem gennemgange, og markér hver som en systemændring eller en påmindelse. Artiklen siger, at påmindelser og papirarbejde er mindre effektive. Spørg, hvorfor påmindelser er så almindelige: de er hurtige, billige og føles som handling. Vælg én påmindelse, der skal erstattes med en stærkere rettelse.

**Hvor har vi midlertidige løsninger, som ingen har skrevet ned?**

Spørg vagthavende ingeniører og deskanalytikere, hvilke tricks de bruger. Hver uskrevet midlertidig løsning er en risiko. Registrér dem som kendte fejl med symptom, midlertidig løsning og ejer. Facilitatoren kan spørge, hvem der har gavn af hver registrering. Lav en kort liste i denne uge.

**Hvordan ville vi vide, at en rettelse har virket?**

Vælg en nylig rettelse, og spørg, hvilken evidens der viste det. Hvis svaret er "ingen flere klager", så spørg, hvor længe I ventede, og hvad I målte. Drøft et enkelt tjek: hold øje med det specifikke symptom i en fastsat periode. Aftal at registrere tjekket med hver rettelse.

## I praksis: et agilt ITIL-eksempel

En mellemstor logistikvirksomhed driver en ruteplanlægningsservice, som dens chauffører og disponenter bruger. Platformsteamet på ni har håndteret den samme hændelse cirka hver anden uge: ruteberegninger får timeout i ti til femten minutter om morgenen og kommer sig derefter. Hver gang genstarter den vagthavende ingeniør en workerproces, og hændelsen lukkes. Disponenterne klager over, at morgenplanlægningen ikke kan stoles på.

Teamlederen starter en månedlig gennemgang af hændelser, grupperet efter service og sandsynlig årsag. Morgentimeoutene topper listen. Hun skriver en problembeskrivelse ud fra hændelsesregistreringerne: timeouts sker på hverdage mellem kl. 7.00 og 7.30, varer ti til femten minutter og påvirker alle disponenter. Teamet bygger en tidslinje, der omfatter en planlagt dataimport kl. 7.00 og en nylig ændring, der øgede importens størrelse. En five whys-diskussion antyder, at importen mætter databasen. De prøver den oplagte rettelse, at tilføje kapacitet, men hændelserne fortsætter med lavere frekvens, så de konkluderer, at kapacitet var en bidragyder og ikke roden.

Et andet kig finder, at importen låser en tabel, som ruteberegningerne også læser. Teamet flytter importen til en separat replika og tilføjer en alarm for låsevente. De registrerer genstarten som en kendt fejl med symptomet og den midlertidige løsning, indtil rettelsen er live, og aftaler at holde øje med symptomet i seks uger. Hændelserne stopper. Nogle problemer består: en anden import fra en partner kører stadig ved spidsbelastning, og teamet har endnu ikke overbevist partneren om at ændre sin tidsplan. De sætter partnerens tidsplan på næste planlægningsagenda og beholder låsealarmen.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams har viden til at rette årsager. Tag de øverste problemer ind i jeres backlog, og behandl dem som arbejde, der fortjener tillid. Tilføj overvågning og tests, der ville have afsløret årsagen, og skriv den kendte fejl i et sprog, desken kan bruge.

### Service- og driftsteams

Driftsteams ser hændelserne og fører registrene. Knyt hændelser sammen, kør den månedlige gennemgang, og registrér midlertidige løsninger som kendte fejl. Skub evidensen til leveranceteams i en form, der fører sagen, med hyppighed, påvirkning og tidslinje.

### Ledelse og governance

Ledere afgør, om problemrettelser får tid. Bed om de øverste tilbagevendende problemer og hvad der gøres ved dem. Stå imod at tælle lukkede hændelser som mål for succes, da det belønner reparation. Støt rettelser, der kræver indsats, men fjerner smerte.

### Kunder og brugere

Kunder og brugere har gavn, når gentagne fejl stopper. Rapportér tilbagevendende problemer med datoer og virkninger, da mønstre hjælper teamet. Spørg leverandører, hvad de har gjort ved årsagerne til gentagne nedbrud, og forvent et svar ud over "vi genstartede det".

## Almindelige fejlmønstre

- **Reparation uden fjernelse.** Hændelser lukkes og vender tilbage. I stedet: knyt gentagelser til et problem, og ret årsagen.
- **En problemkø, ingen planlægger.** Problemer venter for evigt. I stedet: sæt udvalgte problemer i backloggen med ejere og tidsrammer.
- **At stoppe ved menneskelig fejl.** Gennemgangen ender med en, der kan få skylden. I stedet: spørg, hvad der gjorde fejlen mulig, og ret systemet.
- **Svage handlinger.** Påmindelser og uddannelse erstatter systemændringer. I stedet: foretræk automatisering, sikringer og bedre overvågning.
- **At lede efter én rodårsag.** Teamet insisterer på én synder. I stedet: acceptér flere bidragende årsager, og adressér de mest effektive.
- **Intet tjek af, at rettelsen virkede.** Problemet lukkes ved release. I stedet: definér en måde at se, om symptomet vender tilbage.
- **Uskrevne midlertidige løsninger.** Viden bor hos enkeltpersoner. I stedet: registrér kendte fejl, og del dem.
- **Metodedyrkelse.** Teams strides om teknikker. I stedet: vælg metoder, der passer til problemet, og brug kræfterne på evidens.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Kobling og prioritering | Hændelser er ikke koblet | Nogle teams noterer gentagelser | Hændelser kobles til problemer og gennemgås for mønstre efter en plan | Problemer rangeres efter målt påvirkning og hyppighed | Problemprioriteter deles på tværs af teams og leverandører |
| Undersøgelse | Undersøgelse er uformel | Nogle teams bruger enkle metoder | En skriftlig tilgang med tidslinjer og evidens bruges | Undersøgelsens kvalitet og tid gennemgås | Undersøgelser spænder over teams og leverandører med fælles data |
| Korrigerende handling | Rettelser er ad hoc eller påmindelser | Nogle rettelser ændrer systemet | Handlinger vælges efter virkning, med ejere og datoer | Virkninger tjekkes, og gentagelse måles | Rettelser spredes til lignende systemer i hele organisationen |
| Kendte fejl og viden | Midlertidige løsninger er uskrevne | Nogle registreres af enkeltpersoner | Kendte fejl registreres og deles med desken og de vagthavende | Brug og nøjagtighed af kendte fejl spores | Kendte fejl deles med brugere, leverandører og partnere |

## Tjekliste

- [ ] Hændelser, der ser ud til at dele en årsag, er koblet.
- [ ] En jævnlig gennemgang grupperer hændelser og vælger de øverste tilbagevendende problemer.
- [ ] Udvalgte problemer er i backloggen med ejere og tidsrammer.
- [ ] Hvert problem har en skriftlig beskrivelse med fakta.
- [ ] En tidslinje bygges for hver undersøgelse.
- [ ] Gennemgange spørger, hvad i systemet der tillod enhver menneskelig fejl.
- [ ] Handlinger favoriserer systemændringer frem for påmindelser, med den forventede virkning registreret.
- [ ] Midlertidige løsninger registreres som kendte fejl og deles med desken og de vagthavende.
- [ ] Hver rettelse har et tjek for gentagelse over en aftalt periode.
- [ ] Opsummeringer af problemer og rettelser deles med andre teams.

## AI-prompts

**Formål: at finde gentagne hændelser og kandidatproblemer i jeres registre.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Formål: at skrive en klar problembeskrivelse ud fra evidens.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Formål: at forberede en five whys-session og registrere ræsonnementskæden.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at vurdere, om foreslåede korrigerende handlinger ændrer systemet.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## AI-skills

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): brug den til at lede en undersøgelse fra en klar problembeskrivelse til en afprøvet årsag.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): brug den til at brainstorme mulige årsager efter kategori med et team.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): brug den til at lægge ud, hvordan årsager og virkninger hænger sammen i en kompliceret fejl.
- [postmortem](../../../../skills/postmortem/SKILL.md): brug den til at køre den gennemgang, der identificerer kandidatproblemer.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): brug den, når du har brug for databaserede metoder til at analysere variation eller tilbagevendende fejl.

## Vigtigste kilder

- **Root cause analysis** (Wikipedia): en generel oversigt over metoden, principperne og grænserne, med ISO/IEC 31010 opført for metoderne.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): den skyldfri tilgang til at lære af fejl.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): hvordan hændelseshåndtering fodrer senere analyse.
- **Ishikawa diagram** og **Five whys** (Wikipedia): baggrund om to almindelige enkle metoder.

## Referencer

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
