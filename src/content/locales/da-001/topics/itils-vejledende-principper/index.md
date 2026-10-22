# ITILs vejledende principper

**ITILs syv vejledende principper er korte nok til at huske og brede nok til at anvende på enhver servicebeslutning, og de overlapper så stærkt med agile principper, at et team kan bruge dem som bro mellem de to.**

## Hvorfor det betyder noget

Når agile teams og servicestyringsgrupper er uenige, strides de ofte om praksisser: om en ændring har brug for godkendelse, om en gennemgang er påkrævet, om et dokument er nødvendigt. Diskussionerne går i ring, fordi hver side forsvarer sin praksis uden at angive princippet bag den. ITILs vejledende principper er nyttige her, fordi de blev skrevet til at blive anvendt på enhver praksis, og de fleste agile praktikere vil genkende dem.

Principperne besvarer også en almindelig klage over ITIL, nemlig at det foreskriver tung proces. ITIL 4s egne principper omfatter "hold det enkelt og praktisk" og "start, hvor du er". Et team, der henviser til dem, kan med rette sige, at en foreslået proces er ude af trit med det rammeværk, den påstår at følge. Samtidig beder principperne om noget af agile teams: "samarbejd og fremme synlighed" og "tænk og arbejd holistisk" udfordrer teams, der optimerer til deres egen sprint på bekostning af dem, der driver resultatet.

Dette emne beskriver de syv principper, sammenligner dem med de agile principper i Emne 1.2 — Agile principper og viser, hvordan man bruger dem som beslutningshjælp. Principernes navne kommer fra [Wikipedia-artiklen om ITIL](https://en.wikipedia.org/wiki/ITIL) og er konsistente på tværs af de konsulterede uddannelses- og leverandørkilder. Forklaringerne er denne vejlednings egne og er ikke citater fra ITIL-publikationer. Hvis du har brug for ejerens ordlyd, så læs ITIL 4-publikationerne direkte.

## Kernebegreber

### De syv principper

Ifølge Wikipedia er de vejledende principper:

1. Fokusér på værdi
2. Start, hvor du er
3. Skrid frem iterativt med feedback
4. Samarbejd og fremme synlighed
5. Tænk og arbejd holistisk
6. Hold det enkelt og praktisk
7. Optimér og automatisér

Wikipedia opregner dem under sit afsnit om ITIL 5. De svarer til ITIL 4s principper, som de er opsummeret af uddannelsesudbydere og leverandører, og denne vejledning behandler dem som ITIL 4-principper, som PeopleCerts ITIL 5-materiale måske fører videre. Tjek ejerens aktuelle publikationer for den præcise tekst og for, om ITIL 5 ændrer dem (se Emne 2.2 — ITIL).

### Hvad hvert princip beder om

Tabellen giver en enkel læsning af hvert princip, skrevet til denne vejledning, med den nærmeste agile modpart fra Emne 1.2 — Agile principper.

| Princip | Hvad det beder dig om | Nærmeste agile idé |
|---|---|---|
| **Fokusér på værdi** | Knyt hver aktivitet til værdi for kunder, brugere eller organisationen, og drop aktiviteter, der ikke bidrager | Agilt princip 1: tilfredsstil kunden gennem tidlig og kontinuerlig levering af værdifuld software |
| **Start, hvor du er** | Se på, hvad der findes, før du bygger noget nyt, og genbrug det, der allerede virker | Agilt princip 10: enkelhed, maksimér mængden af arbejde, der ikke skal gøres |
| **Skrid frem iterativt med feedback** | Arbejd i små skridt, lær af hvert, og justér; prøv ikke at planlægge alt først | Agile principper 3 og 12: lever hyppigt, og reflektér og justér med jævne mellemrum |
| **Samarbejd og fremme synlighed** | Arbejd på tværs af grænser, del information åbent, og gør arbejdet synligt | Agile principper 4 og 6: dagligt samarbejde og samtale ansigt til ansigt |
| **Tænk og arbejd holistisk** | Se servicen som et helt system af mennesker, information, teknologi og partnere, ikke som adskilte dele | Intet enkelt agilt princip; nærmest er lean-ideen om at optimere helheden (se Emne 1.7 — Lean softwareudvikling) |
| **Hold det enkelt og praktisk** | Brug det mindste antal trin, der er nødvendigt for at nå et resultat, og undgå proces for processens skyld | Agilt princip 10 igen, og princip 9 om godt design |
| **Optimér og automatisér** | Forbedr arbejdet først, brug derefter teknologi til at fjerne rutineindsats | Agilt princip 9 og praksisser som kontinuerlig integration (se Emne 1.6 — Extreme Programming) |

Agile principper er nummereret som på agilemanifesto.org. Kortlægningen er denne vejlednings vurdering; ingen kilde påstår en officiel overensstemmelse.

### Hvor de to sæt adskiller sig

Overlappet er stort, men vægtningen adskiller sig på nyttige måder.

- **ITIL understreger helheden.** "Tænk og arbejd holistisk" beder dig tage højde for servicen fra ende til anden, inklusive leverandører og brugere. Manifestets principper taler mest om teamet og kunden og siger lidt om det bredere system.
- **Agil understreger teamet og tempoet.** De agile principper beder om motiverede individer, et bæredygtigt tempo og selvorganiserende teams. ITILs principper nævner ikke direkte folks arbejdsforhold, selv om dimensionen "organisationer og mennesker" dækker dem (se Emne 2.5 — De fire dimensioner af servicestyring).
- **ITIL understreger synlighed.** "Samarbejd og fremme synlighed" beder om åben deling. Agile teams gør det med tavler og demonstrationer, men kan udelade de grupper, der understøtter servicen.
- **Agil understreger teknisk kvalitet.** Det agile princip om teknisk fremragende kvalitet har ingen direkte modpart, selv om "optimér og automatisér" er beslægtet.

### At bruge principperne som beslutningshjælp

ITILs vejledende principper er til for at blive brugt. En enkel metode er at tage en beslutning, som at tilføje et godkendelsestrin, og for hvert princip spørge, om muligheden understøtter det, er i konflikt med det eller er neutral. Resultatet er en kort, ærlig liste over afvejninger. Principperne er ikke regler, og de kan trække mod hinanden. "Start, hvor du er" kan være i konflikt med "optimér og automatisér", når det eksisterende værktøj er dårligt, og "hold det enkelt" kan være i konflikt med "tænk holistisk", når systemet er komplekst. Diskussionen mellem principper er værdien.

### Principper og praksisser

Principper vejleder valget af praksisser, og praksisser er arbejdsmåderne (se Emne 2.3 — ITILs serviceværdisystem). En praksis, som intet princip kan forklare, er en kandidat til fjernelse. Et princip, ingen kan se i det daglige arbejde, er et slagord. Begge tjek er værd at køre.

### Grænser

Principperne er brede. To personer kan påberåbe sig det samme princip for at støtte modsatte beslutninger. Wikipedia-artiklen nævner ingen kritik af principperne, og denne vejledning opfinder ingen. Den praktiske grænse er, at principper ikke fortæller dig, hvad du skal gøre næste gang; de fortæller dig, hvordan du bedømmer muligheder. Kombinér dem med evidens fra dine egne services.

## God praksis

1. **Sæt de syv principper der, hvor teamet arbejder.** Vis dem ved siden af procesdokumenterne eller i skabelonen til forslag. Principper, der ikke ses, bruges ikke.
2. **Afprøv forslag mod dem.** For enhver ny proces eller ethvert nyt værktøj skriv én linje pr. princip: understøtter, er i konflikt eller neutral. Del resultatet, når du beder om godkendelse.
3. **Fokusér på værdi ved at spørge "hvem har gavn?"** Navngiv for hver opgave den person eller gruppe, der har gavn. Hvis du ikke kan nævne nogen, så sæt spørgsmålstegn ved opgaven.
4. **Start, hvor du er, ved at gennemgå, hvad der findes.** Før du køber et værktøj eller designer en proces, så list, hvad teamet allerede bruger, og om det opfylder behovet. Genbrug og udvid, før du erstatter.
5. **Gør iteration reel.** Del en procesændring i et lille første skridt, sæt en dato for gennemgang, og beslut på forhånd, hvilken evidens I vil se på. Undgå big bang-lanceringer.
6. **Gør arbejdet synligt for dem, der afhænger af det.** Del tavler, releaseplaner og hændelsesstatus med supportpersonale og kunder. Aftal, hvilket detaljeniveau hvert publikum har brug for.
7. **Tegn hele servicen, før du ændrer en del.** Skitsér de involverede mennesker, informationer, teknologi og leverandører, og spørg, hvad en ændring i én del gør ved de andre.
8. **Fjern trin, før du automatiserer dem.** Hvis et trin ikke tilfører værdi, så slet det. Hvis det gør, så automatisér det. At automatisere en spildproces gør spildet hurtigere.
9. **Løs konflikter mellem principper åbent.** Når to principper trækker i hver sin retning, så sig det, og registrér beslutningen og grunden. Det opbygger en fælles registrering af, hvordan teamet tænker.
10. **Brug principperne til at udfordre påstande.** Når nogen siger "ITIL kræver" eller "agil siger", så spørg, hvilket princip eller hvilken praksis der understøtter det, og hvad det beskytter mod.
11. **Knyt principper til målinger.** Vælg nogle få målinger, der viser, om et princip virker, som tid til at genoprette servicen for "fokusér på værdi" eller antallet af fjernede manuelle trin for "optimér og automatisér". Undgå at opfinde præcise mål.
12. **Gennemgå principperne i retrospektiver.** Én gang i kvartalet spørg, hvilket princip teamet fulgte bedst, og hvilket det forsømte, med et eksempel på hver.

## Spørgsmål til diskussion i teamet

**Hvilke af de syv principper følger vores team bedst, og hvilke forsømmer vi?**

Giv folk listen, og bed dem vælge ét af hver, med et eksempel fra den seneste måned. Sammenlign. Forskelle viser, hvordan folk ser arbejdet. Forsømte principper peger ofte på teamets blinde vinkler: for eksempel kan et leveranceteam forsømme synlighed, og et driftsteam kan forsømme iteration. Facilitatoren bør slutte med at vælge ét princip, teamet skal øve.

**Hvor tilføjer vores proces trin, ingen kan knytte til værdi?**

Gennemgå én proces, og spørg ved hvert trin: "Hvem har gavn?" Ubesvarede trin er kandidater til fjernelse. Vær klar til forklaringer, der involverer revision eller sikkerhed, som er legitime og bør registreres. Tjek hvert tvivlsomt trin med den, der har gavn, før du sletter det.

**Hvornår startede vi sidst noget nyt, der duplikerede det, vi allerede havde?**

Saml eksempler: et værktøj købt, mens et andet var tilgængeligt, en skabelon, der duplikerede en eksisterende. Spørg, hvad der gjorde det lettere at starte nyt end at bruge det, der fandtes. Årsagerne er ofte dårlig opdagelighed eller ejerskab. Vælg ét sted, hvor opdagelighed kan forbedres, som en fælles liste over værktøjer.

**Hvad er det mindste første skridt, vi kunne tage ved vores næste ændring, og hvordan afgør vi, om vi skal fortsætte?**

Vælg en reel kommende ændring. Bed om den mindste version, der ville lære os noget, og hvad der ville tælle som et tegn på at stoppe eller fortsætte. Dette spørgsmål afprøver iteration og feedback. Facilitatoren kan følge op ved at spørge, hvem der ser på evidensen og hvornår.

**Hvem afhænger af vores arbejde og kan ikke se det?**

List de personer, der er afhængige af det, teamet gør: servicedesken, et partnerteam, kunder. Spørg, hvordan hver finder ud af, hvad der ændrer sig. Typiske huller er lydløse releases og udokumenterede beslutninger. Aftal én ændring, der gør arbejdet synligt for én gruppe.

**Hvor har to af disse principper trukket mod hinanden, og hvordan afgjorde vi det?**

Bed om en nylig beslutning, hvor enkelhed stødte sammen med et helhedssyn, eller genbrug stødte sammen med automatisering. Drøft, hvordan den blev afgjort, og om begrundelsen er registreret. Målet er at gøre afvejninger eksplicitte og at lægge mærke til, hvem der besluttede. Aftal en enkel måde at registrere den næste på.

## I praksis: et agilt ITIL-eksempel

Et regionalt hospitals IT-afdeling vil indføre et nyt værktøj til at spore adgangsanmodninger. Sikkerhedsteamet har udarbejdet en godkendelsesproces i syv trin med fem formularer. Teamet for kliniske systemer, som bruger en tougers leveringsrytme, klager over, at processen ville tilføje uger til onboarding af nye medarbejdere, og sikkerhedsteamet svarer, at revision kræver trinnene.

IT-chefen indkalder til en times session og sætter de syv principper op på væggen. For hvert siger gruppen, om den foreslåede proces understøtter det. Fokusér på værdi: kun tre af de syv trin kan knyttes til en risiko. Start, hvor du er: hospitalet har allerede et identitetssystem, der rummer de fleste af de nødvendige data. Skrid frem iterativt: udkastet har ingen plan for gennemgang. Samarbejd og fremme synlighed: anmoderen kan ikke se, hvor en anmodning er. Tænk holistisk: processen ignorerer konsulenter, som kommer gennem en leverandør. Hold det enkelt: fem formularer. Optimér og automatisér: udkastet automatiserer intet.

Gruppen aftaler at pilotere en proces i tre trin for de mest almindelige roller, med data fra identitetssystemet, en synlig status for anmoderne og en gennemgang efter to måneder. Sikkerhedsteamet beholder sine ekstra trin for roller med adgang til patientdata. Efter to måneder tager almindelige anmodninger to dage i stedet for ni, og revision accepterer den kortere vej for pilotrollerne. Tilbageværende vanskeligheder omfatter konsulenter, hvis anmodninger stadig kommer pr. mail gennem leverandøren, og en uenighed om, hvorvidt en fjerde rolle hører til i piloten. Gruppen registrerer begge som åbne punkter og beder leverandøren deltage i den næste gennemgang.

## Fire perspektiver

### Produkt- og leveranceteams

Brug principperne til at forklare grundene bag jeres valg over for drift og governance. Når du beder om en lettere proces, så peg på det princip, den tjener. Når du designer en release, så stil synlighedens og helhedens principper: hvem har brug for at vide det, og hvad andet vil dette påvirke?

### Service- og driftsteams

Driftsteams kan bruge principperne til at forsvare god praksis og til at sætte spørgsmålstegn ved arvet praksis. Spørg om ethvert langvarigt trin, hvilket princip det tjener. Inviter leveranceteams til at gennemgå jeres processer mod den samme liste, og aftal ændringer sammen.

### Ledelse og governance

Ledere kan adoptere principperne som et fælles sprog for beslutninger om proces og værktøjer. Bed om principopsummeringen, når du godkender ændringer. Vis selv principperne ved at gøre dine egne beslutninger synlige og ved at starte småt.

### Kunder og brugere

Kunder og brugere har gavn, når principperne følges: services fokuserer på deres værdi, ændrer sig i små skridt og viser, hvor anmodninger står. Spørg leverandører, hvordan de beslutter, hvad de skal gøre, og forvent et svar i form af værdi og synlig fremdrift.

## Almindelige fejlmønstre

- **At recitere principperne uden at bruge dem.** Principperne ligger på et slide. I stedet: anvend dem på reelle beslutninger, og registrér udfaldet.
- **At bruge ét princip til at tilsidesætte resten.** "Hold det enkelt" bruges til at afvise reel risiko. I stedet: afvej alle syv, og skriv afvejningerne ned.
- **At behandle "start, hvor du er" som "ændr intet".** Dårlig eksisterende praksis forsvares. I stedet: vurdér, hvad der findes, behold det, der virker, og ændr det, der ikke gør.
- **At automatisere før man forenkler.** En spildfuld proces gøres hurtigere. I stedet: fjern unødvendige trin først.
- **Synlighed som overvågning.** Dashboards bruges til at bedømme enkeltpersoner. I stedet: gør arbejdet synligt, så folk kan hjælpe hinanden og planlægge.
- **At ignorere hele systemet.** Et team forbedrer sin egen del og flytter problemer over på andre. I stedet: skitsér servicen fra ende til anden, før du ændrer en del.
- **At citere et rammeværk for autoritet.** "ITIL siger" afslutter samtalen. I stedet: spørg, hvilket princip eller hvilken praksis der menes, og hvad den beskytter mod.
- **At stole på sekundære opsummeringer.** Et princips ordlyd kommer fra et slide, der ændrede det. I stedet: tjek ejerens publikationer, når ordlyden betyder noget.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Bevidsthed | Få kender principperne | Nogle teams kender og citerer dem | Alle teams kender en fælles liste og en enkel læsning | Brugen af principperne i beslutninger gennemgås | Teams, leverandører og kunder deler det samme principsprog |
| Brug i beslutninger | Beslutninger hviler på vane eller autoritet | Nogle forslag tjekkes mod principperne | Forslag omfatter et kort principtjek | Principtjek sammenlignes med resultater | Principperne former rutinemæssigt beslutninger i hele organisationen |
| Iteration og feedback | Ændringer er store og gennemgås sjældent | Nogle ændringer starter småt | Ændringer følger et lille skridt med en planlagt gennemgang | Gennemgangsevidens indsamles og handles på | Feedbackløkker kører på tværs af teams og med kunder |
| Synlighed | Arbejde er kun synligt for sit team | Nogle teams deler tavler eller planer | Arbejde, der påvirker andre, deles med dem | Synlighedsbehov tjekkes med hvert publikum | Arbejde og beslutninger er synlige på tværs af teams, leverandører og kunder |

## Tjekliste

- [ ] De syv principper er vist, hvor teamet arbejder.
- [ ] Hvert teammedlem kan nævne dem eller hurtigt finde dem.
- [ ] Forslag til nye processer eller værktøjer omfatter et kort tjek mod principperne.
- [ ] Vi lister, hvad der findes, før vi starter noget nyt.
- [ ] Ændringer starter med et lille skridt og en planlagt gennemgang.
- [ ] Arbejde, der påvirker andre teams eller kunder, gøres synligt for dem.
- [ ] Vi skitserer hele servicen, før vi ændrer en del.
- [ ] Vi forenkler, før vi automatiserer.
- [ ] Afvejninger mellem principper registreres.
- [ ] Vi har tjekket principperne præcise ordlyd i ejerens aktuelle publikation.

## AI-prompts

**Formål: at tjekke en foreslået proces mod de syv vejledende principper.**

```text
Help me check a proposed process against ITIL's seven guiding principles: focus on value; start where you are; progress iteratively with feedback; collaborate and promote visibility; think and work holistically; keep it simple and practical; optimize and automate.

The proposed process (steps, roles, forms, tools): [paste].
What it is meant to achieve: [describe].
What already exists that it might replace or build on: [describe, or write "unknown"].

For each principle, say whether the proposal supports it, conflicts with it, or is neutral, with one sentence of reasoning that uses only the text I gave. Then list the main trade-offs and three questions we should answer before approving it. Do not claim that a standard requires any step unless I have pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at sammenligne agile principper og ITIL-principper for en beslutning.**

```text
We are deciding whether to [describe the decision, e.g. "require a peer review for every change"].

Agile principles I want to consider (paste the ones you consider relevant, from agilemanifesto.org): [paste].
ITIL guiding principles I want to consider: [paste the ones you consider relevant].
Our context: [describe team, service, and any rules we must follow].

Build a table showing, for each pasted principle, which option it supports and why, using only my text. Identify where principles agree and where they conflict. Suggest a small experiment to resolve any conflict, and what evidence would show whether it worked. Mark assumptions, and list what you are unsure of.
```

**Formål: at finde trin i en proces, som ingen kan knytte til værdi.**

```text
Here is a process, step by step: [paste the steps, who does each, and what forms or approvals are involved].

For each step, ask: who benefits, what risk it addresses, and what would happen if it were removed. Use only the text I gave. If the answer is unknown, write "unknown" and tell me who I should ask. Then group steps into: clearly valuable, unclear, and candidates for removal or automation. Do not assume any rule or standard applies unless I have pasted its text: [paste rule text, or write "none known"]. List what you are unsure of.
```

**Formål: at planlægge et retrospektiv omkring de vejledende principper.**

```text
Plan a 45-minute retrospective for a team of [number] people using ITIL's seven guiding principles as the frame.

The period we are reviewing: [period]. What happened, in a few sentences: [describe].

Give a timed agenda that has each person pick one principle we followed well and one we neglected with an example, groups the answers, and ends with exactly one agreed change with an owner and a date. Add three prompts a facilitator can use. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): brug den til at sammenligne en praksis med de agile principper ved siden af ITILs.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at køre et retrospektiv, der gennemgår teamet mod principperne.
- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at planlægge små, iterative forbedringer efter en gennemgang af principperne.
- [decision-records](../../../../skills/decision-records/SKILL.md): brug den til at registrere beslutninger og de afvejninger mellem principper, der førte til dem.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): brug den til at analysere en proces for trin, der ikke tilfører værdi.

## Vigtigste kilder

- **ITIL** (Wikipedia): opregner de syv vejledende principper og rammeværkets historie.
- **ITIL 4 Foundation** (PeopleCert): ejerens side, der nævner de vejledende principper blandt de studerede emner.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): den agile modpart, kort nok til at læse ved siden af ITILs principper.
- **ITIL certifications** (PeopleCert): ejerens aktuelle katalog, nyttigt til at finde de publikationer, der giver den præcise tekst.

## Referencer

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
