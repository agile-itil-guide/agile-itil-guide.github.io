# Løbende forbedring

**Løbende forbedring er vanen at gøre services og arbejdsmåder lidt bedre igen og igen, og den bliver kun reel, når forbedringsarbejde er synligt, har en ejer, er planlagt og tjekkes, som ethvert andet arbejde.**

## Hvorfor det betyder noget

Enhver praksis i denne vejledning ender det samme sted: lær af det, der skete, og ændr noget. Hændelser fører til problemer, problemer fører til rettelser, retrospektiver fører til eksperimenter, og gennemgange af serviceniveauer fører til nye mål. Løbende forbedring er den praksis, der forbinder dem og holder dem i bevægelse. Uden den giver hver praksis indsigt, som ingen handler på.

I mange organisationer er forbedring det første, der bliver klemt. Leveringspres fylder hver dag, og forbedringsideer hober sig op i et dokument, ingen åbner. Agile teams har et forspring, da retrospektiver er indbygget, men retrospektiver, der ikke giver nogen ændring, er almindelige. Testen af en praksis for løbende forbedring er enkel: kan du nævne tre ting, der er bedre dette kvartal på grund af den?

[Wikipedia-artiklen om continual improvement process](https://en.wikipedia.org/wiki/Continual_improvement_process) beskriver det som en vedvarende indsats for at forbedre produkter, services eller processer, hvad enten det er trinvist eller banebrydende, med feedback, effektivitet og udvikling gennem små skridt som nøgletræk. [Artiklen om PDCA](https://en.wikipedia.org/wiki/PDCA) beskriver Plan-Do-Check-Act-cyklussen bag mange forbedringsmetoder. Begge er generelle. ITIL behandler løbende forbedring som en komponent af serviceværdisystemet (se Emne 2.3 — ITILs serviceværdisystem) og som en praksis, men rammeværksejerens tekst var ikke tilgængelig for denne vejledning, så dette emne beskriver ikke ITILs forbedringsmodel i detaljer.

## Kernebegreber

### Hvad det er

Ifølge Wikipedia er en continual improvement process (CIP), også kaldet kontinuerlig forbedring, en vedvarende indsats for at forbedre produkter, services eller processer. Artiklen beskriver den som en metaproces for styringssystemer som kvalitets-, projekt- og programstyring, med tre nøgletræk: feedback, effektivitet og udvikling gennem små, trinvise skridt. Den tilskriver W. Edwards Deming rollen som pioner, der så CIP som en del af et system, der evaluerer proces og kundefeedback mod organisatoriske mål.

### Kontinuerlig eller løbende

Artiklen bemærker et terminologisk punkt: i slutningen af 1990'erne ændrede udviklerne af ISO 9001:2000 "continuous" til "continual", angiveligt fordi udvalget foretrak trinvis forbedring og mente, at "continuous" kunne antyde ændring minut for minut. ITIL bruger "continual". I praksis bruges begreberne i flæng. Det, der betyder noget, er regelmæssig, gentaget forbedring.

### Kaizen

**Kaizen** er et japansk begreb, der groft betyder "forandring til det bedre". Ifølge artiklen populariserede Masaaki Imais bog fra 1986 *Kaizen: The Key to Japan's Competitive Success* det, og dets træk omfatter mange små ændringer, ideer fra eksisterende medarbejdere, lave omkostninger og medarbejderejerskab. Det passer til agile teams, hvor de, der udfører arbejdet, er bedst placeret til at se, hvad der skal forbedres (se Emne 1.7 — Lean softwareudvikling).

### PDCA-cyklussen

PDCA (plan, do, check, act) er med Wikipedias ord en iterativ metode til at kontrollere og løbende forbedre processer og produkter. Den kaldes også Shewhart-cyklussen, efter Walter Shewhart hos Bell Telephone Laboratories i 1920'erne; W. Edwards Deming modificerede den i 1940'erne og anvendte den på ledelse i Japan i 1950'erne. Trinnene:

| Trin | Hvad du gør |
|---|---|
| **Plan** | Fastlæg mål og de processer, der er nødvendige for at levere de resultater, du vil have |
| **Do** | Gennemfør planen, helst i lille skala |
| **Check** | Sammenlign de data, du indsamlede, med de forventede udfald, og se efter tendenser |
| **Act** | Undersøg grundårsager til problemer, justér processen, og start næste cyklus |

Artiklen knytter PDCA til den videnskabelige metode og dens mønster hypotese, eksperiment, evaluering. En variant, PDSA, erstatter "check" med "study", hvilket Deming foretrak. Artiklen siger, at iteration er central: hver cyklus forfiner viden. Teams, der kalder en ændring et "eksperiment" med en angivet forventning og et tjek, bruger dette mønster.

### Hvor forbedring kommer fra

Forbedringsideer kommer fra mange steder i en serviceorganisation:

| Kilde | Eksempel | Hvor det er behandlet |
|---|---|---|
| Hændelser og postmortems | En fejl viser en manglende alarm | Emne 3.2 — Hændelseshåndtering |
| Problemundersøgelse | Gentagne nedbrud viser en designfejl | Emne 3.3 — Problemhåndtering |
| Temaer fra servicedesken | Det samme spørgsmål kommer hver uge | Emne 3.1 — Servicedesk |
| Retrospektiver | Teamet finder sin overdragelse langsom | Emne 1.4 — Leveranceprognoser og planlægningsmålinger |
| Flowdata | En kø vokser ved ét trin | Emne 1.5 — Kanban |
| Kundefeedback | Brugerne finder en formular forvirrende | Emne 3.6 — Håndtering af serviceanmodninger |
| Serviceniveaugennemgange | Et mål misses gentagne gange | Emne 3.7 — Styring af serviceniveauer |
| Revisioner og risikogennemgange | En kontrol findes svag | Emne 5.7 — Governance, risiko og compliance |

Praksissen løbende forbedring samler disse i én synlig liste, vælger hvad der skal gøres og tjekker resultaterne.

### Forbedring som arbejde

Den centrale disciplin er at behandle forbedring som arbejde: punkter i en backlog med ejere, forventede fordele og datoer. Uden den afhænger forbedring af begejstring og ledig tid. Det betyder også at foretage afvejningen med leveringsarbejde åbent, så kapaciteten beskyttes bevidst. Et almindeligt arrangement er at afsætte en andel af hver cyklus til forbedring eller at køre korte forbedringscyklusser ved siden af leveringen.

### At måle forbedring

For at vide, at noget blev forbedret, skal du have et før og efter. Vælg en måling relateret til ændringen, som tid til at genoprette servicen, gentagne hændelser eller ventetid, og se på den før og efter. Undgå målinger, der er lette at rykke uden at forbedre noget. Brug flere, og drøft hvad tallene betyder (se Emne 5.6 — Metrikker og måling). De konsulterede artikler giver ingen evidens for forbedringsprogrammers effektivitet, så teamenes egne resultater er evidensen.

### Metoder

Mange metoder understøtter forbedring: rodårsagsanalyse, Six Sigma og DMAIC til datadrevet reduktion af fejl, værdistrømskortlægning og kaizen-events. Wikipedia-artiklen om løbende forbedring nævner ikke Six Sigma, DMAIC eller ITILs forbedringsmodel, så denne vejledning tilskriver dem ikke den. Vælg metoder, der passer til problemets størrelse: en retrospektivhandling til en lille gnidning, et datadrevet projekt til en vedvarende fejl.

### Grænser

Artiklen registrerer ingen kritik af løbende forbedring, og nogle af dens kilder er svage eller forældede. Praktiske risici er velkendte: forbedringstræthed, når for mange ændringer kommer, forbedringsteater, hvor lister vokser, og intet ændrer sig, og lokal optimering, hvor ét team forbedrer sin del og forværrer helheden. Værn mod dem med en kort, synlig liste og et jævnligt tjek af resultater.

## God praksis

1. **Hold én synlig forbedringsliste.** Saml ideer fra hændelser, retrospektiver, feedback og gennemgange ét sted. Giv hvert punkt en ejer, det problem det adresserer og den forventede fordel.
2. **Behandl forbedringspunkter som arbejde.** Sæt dem i backloggen ved siden af leveringspunkter, og afgør i planlægningen, hvor meget kapacitet de får. Beskyt den andel, når presset stiger.
3. **Vælg få, og gør dem færdige.** Arbejd på de ene til tre mest værdifulde punkter ad gangen. En lang liste af påbegyndte punkter er et tegn på forbedringsteater.
4. **Brug cyklussen.** For hver ændring angiv planen og det forventede resultat, gennemfør ændringen i lille skala, tjek data, og afgør, om den skal adopteres, justeres eller droppes. Skriv beslutningen ned.
5. **Definér succes, før I starter.** Vælg målingen og hvad I forventer at se, før ændringen. Det forhindrer, at ethvert resultat forklares som en succes bagefter.
6. **Start småt og lokalt.** Lad teams forbedre deres eget arbejde uden at vente på tilladelse, inden for klare grænser. Reservér større programmer til problemer, der krydser teams.
7. **Del, hvad I lærer.** Udgiv korte noter om, hvad der ændrede sig, og hvad der skete, inklusive fiaskoer. Andre teams kan genbruge eller undgå det.
8. **Se på hele systemet.** Før du adopterer en forbedring, så spørg, hvem den berører. En lokal gevinst, der tilføjer arbejde for et andet team, er ikke en forbedring samlet set (se Emne 2.4 — ITILs vejledende principper om at tænke holistisk).
9. **Gennemgå listen jævnligt.** Én gang om måneden se på listen med teamet og serviceejeren: hvad er gjort, hvad sidder fast, hvad skal droppes. Fjern punkter, der har mistet deres pointe.
10. **Fejr resultater, ikke aktivitet.** Anerkend forbedringer, der gjorde tingene bedre for brugere eller personale, med evidens. Beløn ikke antallet af ideer eller møder.
11. **Match metode til problem.** Brug hurtige eksperimenter til små problemer, databaserede metoder til vedvarende fejl, og hent specialisthjælp til komplekse.
12. **Inddrag brugere og leverandører.** Spørg dem, hvad der skal forbedres, og invitér dem til at gennemgå resultater, hvor de er berørt (se Emne 3.14 — Leverandørstyring).

## Spørgsmål til diskussion i teamet

**Hvad blev bedre det sidste kvartal på grund af noget, vi besluttede at ændre?**

Bed om specifikke eksempler med evidens. Hvis folk har svært ved det, er det fundet. Hvis der er eksempler, så spørg, hvad der fik dem til at virke: en ejer, tid, en klar måling. Sammenlign med forbedringer, der gik i stå. Facilitatoren kan spørge, hvilket mønster der er mest almindeligt i jeres team.

**Hvor går vores forbedringsideer hen?**

Følg flere nylige ideer: fra en hændelsesgennemgang, et retrospektiv, en kundekommentar. Find ud af, hvor hver endte. Ofte er de spredt over dokumenter og tickets. Drøft en enkelt liste, hvem der vedligeholder den, og hvordan den gennemgås. Lav den første version i sessionen.

**Hvor meget af vores kapacitet går til forbedring, og hvem besluttede det?**

Se på de seneste cyklusser, og estimér andelen. Ofte er den langt mindre, end folk tror, og ingen valgte den. Spørg, hvad teamet og lederne mener, den bør være. Aftal en startandel og en måde at beskytte den på.

**Hvilke af vores ændringer tjekkede vi bagefter?**

Spørg om de tre seneste ændringer, og hvilken evidens der viste, at de virkede. Mange blev aldrig tjekket. Drøft en enkel vane: før ændringen angiv, hvad du forventer at se, og hvornår du vil kigge. Vælg en nuværende ændring at anvende den på.

**Hvilken forbedring hjalp os og skadede en anden?**

Saml eksempler på lokale forbedringer, der flyttede et problem andetsteds hen. De kommer ofte fra ændringer af overdragelser eller godkendelser. Drøft, hvordan man spørger berørte tidligere. Målet er et enkelt spørgsmål at stille før en ændring.

**Hvad er det ældste punkt på vores forbedringsliste, og hvorfor er det der stadig?**

Vælg det ældste punkt, og følg dets historie. Årsager omfatter ingen ejer, ingen tid, uenighed eller overhalet af begivenheder. Beslut at gøre det, planlægge det eller droppe det åbent. At droppe et punkt med vilje er et tegn på en sund liste.

## I praksis: et agilt ITIL-eksempel

Et regionalt vandværk har en kundefakturerings- og målerudlæsningsplatform drevet af et team på elleve. Retrospektiver holdes hver anden uge og producerer lister over handlinger, men få gennemføres. Hændelser gennemgås, og handlinger fra de gennemgange registreres i et separat system. Værkets tilsynsmyndighed har bedt om evidens for, hvordan værket lærer af servicesvigt.

Serviceejeren og teamlederen beslutter at gøre forbedring synlig. De opretter en enkelt forbedringsliste, der samler handlinger fra retrospektiver, hændelsesgennemgange og kundefeedback. Hvert punkt har en ejer, en beskrivelse af problemet, den forventede fordel og en måling. De afsætter 15 procent af hver cyklus på to uger til forbedringspunkter og begrænser antallet i gang til tre. For hver følger de plan, do, check og act: de skriver, hvad de forventer at se, prøver ændringen på en delmængde, ser på tallene efter en fastsat periode og registrerer beslutningen. En månedlig gennemgang med serviceejeren og en kundeservicerepræsentant ser på, hvad der er gjort, og hvad der er lært.

Efter seks måneder har teamet gennemført ni punkter, inklusive en rettelse af en gentagen fejl i importen af måledata, der skar gentagne hændelser på den årsag til næsten nul, og en klarere forklaring på regningen, der reducerede opkald om emnet. Det har også evidens til tilsynsmyndigheden i form af listen og tjekkene. Nogle vanskeligheder består. To punkter blev gennemført uden at blive tjekket, fordi cyklussen gik videre, og en forbedring af importprocessen gjorde et downstream-rapporteringsteams arbejde langsommere, hvilket først kom for dagen en måned senere. Teamet tilføjer et "hvem andre er berørt"-spørgsmål til listeskabelonen og en kalenderpåmindelse for hvert tjek.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ejer meget af forbedringslisten. Før ideer fra retrospektiver og hændelser ind ét sted, gør det færdigt, I starter, og tjek resultater. Vær villige til at bruge kapacitet på forbedring og ikke kun på nye funktioner.

### Service- og driftsteams

Driftsteams ser gnidningen først. Før hændelsestemaer, deskkontakter og flowdata ind i listen, og deltag i at tjekke resultater. Argumentér for forbedringer, der reducerer toil og gentagne hændelser.

### Ledelse og governance

Ledere beskytter kapaciteten til forbedring og spørger om resultater. Spørg, hvad der er blevet bedre, og hvordan det blev tjekket, ikke hvor mange ideer der er. Fjern hindringer, teams nævner, og vis, at du har gjort det. Støt forbedringer, der krydser teamgrænser.

### Kunder og brugere

Kunder og brugere leverer nogle af de bedste ideer. Fortæl teamet, hvad der frustrerer dig, og bed om at høre, hvad der ændrede sig som følge deraf. Deltag i gennemgange, hvor din service er berørt. Din feedback på, om en ændring hjalp, er det mest direkte tjek, der findes.

## Almindelige fejlmønstre

- **Ideer uden ejere.** Listen vokser, og intet bliver gjort. I stedet: kræv en ejer og en forventet fordel for hvert punkt.
- **Forbedring som ledig tid.** Leveringen fortrænger den. I stedet: afsæt kapacitet, og beskyt den.
- **For mange på én gang.** Alt startes, og lidt gøres færdigt. I stedet: begræns igangværende arbejde for forbedringspunkter.
- **Intet tjek.** Ændringer adopteres, fordi de var planlagt. I stedet: angiv det forventede resultat på forhånd, og se på data.
- **Lokal optimering.** Ét team forbedrer, og et andet lider. I stedet: spørg, hvem andre der er berørt, før og efter.
- **Forbedringsteater.** Workshops og plakater erstatter resultater. I stedet: tæl gennemførte og verificerede forbedringer.
- **Målinger, der kan manipuleres.** Tallet rykker sig, og intet forbedres. I stedet: brug flere målinger, og se på det underliggende arbejde.
- **At glemme at dele.** Erfaringer bliver i teamet. I stedet: udgiv korte noter, og invitér andre til at genbruge dem.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Indsamling og prioritering | Ideer er spredte og uprioriterede | Nogle teams fører lister | Én synlig liste pr. team med ejere og forventede fordele | Prioriteter bruger data om påvirkning og indsats | Forbedringslister afstemmes på tværs af teams og med kunder |
| Kapacitet og flow | Forbedring sker i ledig tid | Noget kapacitet er afsat | En beskyttet andel af kapaciteten og grænser for igangværende arbejde | Forbedringens kapacitet og gennemløb gennemgås | Kapacitet deles på tværs af teams til tværgående forbedringer |
| Tjek af resultater | Resultater tjekkes ikke | Nogle ændringer gennemgås | Hver ændring har en angivet forventning og et tjek | Resultater måles og knyttes til beslutninger | Evidens deles på tværs af teams og bruges til at vejlede organisationen |
| Læring og spredning | Erfaringer bliver lokale | Nogle noter deles | Erfaringer udgives og gennemgås | Genbrug af forbedringer spores | Forbedringer spreder sig rutinemæssigt på tværs af teams og leverandører |

## Tjekliste

- [ ] Vi har én synlig forbedringsliste med ejere og forventede fordele.
- [ ] Ideer fra retrospektiver, hændelsesgennemgange, deskens temaer og feedback fodrer alle den.
- [ ] En beskyttet andel af hver cyklus går til forbedringspunkter.
- [ ] Vi begrænser antallet af forbedringspunkter i gang.
- [ ] Hver ændring angiver et forventet resultat og et tidspunkt at tjekke det.
- [ ] Vi tjekker resultater og registrerer beslutningen om at adoptere, justere eller droppe.
- [ ] Vi spørger, hvem andre der er berørt, før vi laver en ændring.
- [ ] Listen gennemgås mindst månedligt.
- [ ] Vi deler korte noter om, hvad der ændrede sig, og hvad vi lærte.
- [ ] Vi kan nævne tre ting, der er bedre dette kvartal på grund af forbedringsarbejde.

## AI-prompts

**Formål: at samle forbedringsideer i én prioriteret liste.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Formål: at gøre en forbedringsidé til et lille eksperiment.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at gennemgå tilstanden af en forbedringsliste.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Formål: at tjekke, om en forbedring virkede.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## AI-skills

- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at planlægge og gennemgå små, løbende forbedringer.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at køre retrospektiver, der producerer handlinger med ejere.
- [dmaic](../../../../skills/dmaic/SKILL.md): brug den til datadrevet forbedring af vedvarende fejl, gennem define, measure, analyze, improve og control.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): brug den, når variation og fejl er det største problem, og du har brug for en statistisk tilgang.
- [futurespective](../../../../skills/futurespective/SKILL.md): brug den til sammen at se frem og blive enige om forbedringer for den næste periode.

## Vigtigste kilder

- **Continual improvement process** (Wikipedia): definitionen, kaizen, PDCA og terminologien løbende mod kontinuerlig.
- **PDCA** (Wikipedia): Plan-Do-Check-Act-cyklussen, dens oprindelse og varianter som PDSA.
- **Kaizen** (Wikipedia): baggrund om små, kontinuerlige forbedringer og deres oprindelse i japansk industri.
- **Lean software development** (Wikipedia): de lean-ideer, der ligger bag kontinuerlig forbedring i softwarearbejde.

## Referencer

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
