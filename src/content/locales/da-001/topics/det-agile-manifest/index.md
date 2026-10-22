# Det agile manifest

**Manifestet for agil softwareudvikling er fire korte værdisætninger, der fortæller et team, hvad det skal foretrække, når to gode ting trækker i hver sin retning, og de valg betyder lige så meget for at drive en live service som for at bygge en.**

## Hvorfor det betyder noget

Det agile manifest er roden til næsten alt andet i denne vejledning. Scrum, Kanban, Extreme Programming og DevOps er alle måder at handle på de værdier, manifestet udtrykker. Hvis du kun kender praksisserne, kopierer du ritualerne og overser begrundelsen, og når et ritual holder op med at virke, har du intet at styre efter.

Det betyder noget for IT-servicestyring (ITSM) af en praktisk grund. De fleste teams, der driver services i dag, bygger dem også, og de to opgaver trækker i hver sin retning. Udvikling belønner forandring og hastighed. Drift belønner stabilitet og forudsigelighed. Manifestet fjerner ikke den spænding, men det giver et team en fælles måde at tale om den på: hvilken værdi foretrækker vi her, og hvad betaler vi for det?

Det hjælper også at vide, hvad manifestet ikke er. Det er ikke en proces, en certificering eller et løfte om, at projekter lykkes, hvis man følger det. [Wikipedia-artiklen om agil softwareudvikling](https://en.wikipedia.org/wiki/Agile_software_development) bemærker, at evidensen for fordelene ved agile metoder er begrænset og mindre end afgørende. Betragt manifestet som et sæt velbegrundede hypoteser, du afprøver i din egen kontekst, ikke som skrift.

## Kernebegreber

### Hvor det kom fra

Sytten praktikere mødtes på skisportsstedet Snowbird i Wasatch-bjergene i Utah fra den 11. til den 13. februar 2001 og skrev manifestet sammen. Ifølge [beretningen på agilemanifesto.org](https://agilemanifesto.org/history.html) kom de fra metoder som Extreme Programming, Scrum og Crystal, og de ville have et alternativ til tunge, dokumentationsdrevne processer. Betegnelsen "Light" var blevet luftet, og Alistair Cockburn gjorde indsigelse mod den, og gruppen gik videre og kaldte sig Agile Alliance.

Underskriverne var Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland og Dave Thomas. Flere af dem havde allerede skabt de metoder, de bragte med: Beck og Cunningham arbejdede på [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), og Schwaber og Sutherland på [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Manifestet var en reaktion på en arbejdsmåde, hvor et team planlægger et helt projekt på forhånd, bygger i lange faser og først sent finder ud af, om resultatet er ønsket. Den stil kaldes ofte [vandfaldsmodellen](https://en.wikipedia.org/wiki/Waterfall_model). Forfatterne opfandt ikke iterativt arbejde (Wikipedia-artiklen følger iterative og inkrementelle metoder tilbage til 1957), men de gav det et fælles navn og en kort erklæring om værdier.

### De fire værdier

Manifestet angiver sine værdier i sin helhed som følger. Dets ophavsretsmeddelelse tillader, at det kopieres frit i enhver form, men kun i sin helhed, så det er citeret fuldt ud her (oversat til dansk):

> Vi finder bedre måder at udvikle software på ved selv at gøre det og ved at hjælpe andre med at gøre det. Gennem dette arbejde er vi kommet til at værdsætte:
>
> **Individer og interaktioner** frem for processer og værktøjer
> **Fungerende software** frem for omfattende dokumentation
> **Samarbejde med kunden** frem for kontraktforhandling
> **At reagere på forandring** frem for at følge en plan
>
> Det vil sige, at selv om der er værdi i det, der står til højre, værdsætter vi det, der står til venstre, højere.

Tre detaljer i formuleringen overses let og ændrer betydningen:

- **"Frem for" er ikke "i stedet for".** Den sidste sætning siger, at det, der står til højre, stadig har værdi. Et team, der dropper al dokumentation eller al planlægning, har misforstået manifestet.
- **Det er en præference, når man må vælge.** Værdierne fortæller dig ikke, hvad du skal gøre hver dag. De fortæller, hvilken vej du skal læne dig, når en proces, et dokument, en kontrakt eller en plan står i vejen for et bedre resultat.
- **"Ved selv at gøre det."** Åbningssætningen siger, at forfatterne fandt disse værdier gennem praksis. Påstanden er empirisk, og derfor er du inviteret til at afprøve den mod din egen erfaring.

### At læse hver værdi for servicearbejde

Værdierne blev skrevet om softwareudvikling. Her er, hvad hver af dem kan betyde for et team, der også driver services.

| Værdi | Hvad den beskytter mod | Hvad den kan betyde i servicearbejde |
|---|---|---|
| Individer og interaktioner frem for processer og værktøjer | En proces, der virker på papiret, men som ingen kan følge under pres | Under en større hændelse taler de, der kender systemet, direkte sammen. Hændelsesprocessen understøtter den samtale og erstatter den ikke. |
| Fungerende software frem for omfattende dokumentation | Dokumenter, der beskriver et system, som ikke længere findes | En runbook, der testes af den vagthavende ingeniør, som bruger den, er mere værd end en lang manual, ingen har åbnet. |
| Samarbejde med kunden frem for kontraktforhandling | At strides om en serviceniveauaftale (SLA), mens kundens egentlige behov forbliver uopfyldt | Gennemgå serviceniveauer med kunderne jævnligt, og ændr dem, når deres behov ændrer sig. |
| At reagere på forandring frem for at følge en plan | At fastfryse en plan, efter at situationen har bevæget sig videre | En ændringsproces, der kan godkende en lille ændring med lav risiko på få minutter, lader teamet reagere. En proces, der behandler alle ændringer ens, kan ikke. |

### De tolv principper

Manifestet ledsages af tolv principper, der udfolder værdierne. De er emnet for det næste emne (se Emne 1.2 — Agile principper). Sammen kaldes værdierne og principperne nogle gange det agile mindset.

### Kritik, der er værd at kende

Kritikere har indvendt, at manifestet underminerer ingeniørmæssig disciplin. Wikipedia-artiklen citerer Stephen Rakitin, som i et brev til *IEEE Computer* kaldte agil "endnu et forsøg på at underminere softwareudviklingens disciplin", og som læste "fungerende software frem for omfattende dokumentation" som en tilladelse til at springe dokumentation over. Forsvarerne svarer, at dokumentation bør være "lige godt nok", et udtryk Scott Ambler brugte, og at for lidt dokumentation skader vedligeholdelse og vidensdeling.

For et serviceteam har kritikken substans. Driftspersonale arver det, leveranceteams efterlader, og tynd dokumentation viser sig som langsom hændelsesrespons og lange overdragelser. En rimelig læsning af manifestet er, at dokumentation skal fortjene sin plads, ikke at den ikke har nogen.

## God praksis

1. **Behandl værdierne som en beslutningshjælp, ikke et regelsæt.** Når et team er uenigt, så spørg, hvilken værdi der er i spænding, og hvilken vej teamet skal læne sig. Det gør en diskussion om præferencer til en samtale om afvejninger.
2. **Læs sætningen, der følger efter værdierne.** Mind teamet ofte om, at det, der står til højre, stadig har værdi. Skriv ned, hvilke processer, dokumenter, kontrakter og planer I beholder, og hvorfor.
3. **Afprøv hver værdi mod en nylig begivenhed.** Vælg en reel hændelse eller release, og spørg, hvordan arbejdet var gået, hvis teamet havde lænet sig den anden vej. Evidens fra jeres eget arbejde overbeviser bedre end et citat.
4. **Behold dokumentationen, og hold den levende.** Foretræk korte dokumenter, der bruges, testes og har en ejer, som runbooks og servicebeskrivelser, frem for lange dokumenter, der skrives én gang. Slet det, ingen læser.
5. **Gør kundesamarbejde rutine.** Hold jævnlige samtaler med dem, der bruger jeres services, og tag det, du lærer, med ind i backloggen. Vent ikke på en kontraktgennemgang.
6. **Lav planer, der forventer at ændre sig.** Planlæg over korte horisonter med eksplicitte gennemgangspunkter. Hold en længere retning, og accepter, at trinene derhen vil flytte sig.
7. **Giv processer ejere, og lad dem udvikle sig.** Hver proces i jeres servicestyringssystem bør have en navngiven ejer og en måde, hvorpå dem, der bruger den, kan foreslå ændringer. En proces, ingen må ændre, bliver omgået.
8. **Brug værdierne ved ansættelse og onboarding.** Beskriv dem for nye medarbejdere med eksempler fra jeres eget team, så de ser, hvordan værdierne viser sig i dagligdagens valg.
9. **Gense værdierne, efter I har skaleret.** Større organisationer glider mod proces og værktøjer. Hold en jævnlig samtale, måske to gange om året, om hvorvidt balancen stadig tjener kunderne.
10. **Brug ikke manifestet som et våben.** At citere "individer frem for processer" for at afvise en kollegas bekymring om revision eller sikkerhed afslutter en samtale, der burde være begyndt. Brug det til at åbne en diskussion, ikke til at vinde den.

## Spørgsmål til diskussion i teamet

**Hvilken af de fire værdier foretrækker vores team allerede i praksis, og hvilke påstår vi kun at foretrække?**

Begynd med at liste nylige beslutninger: en release forsinket af papirarbejde, en anmodning afvist, fordi den ikke stod i kontrakten, en plan holdt i live, efter den holdt op med at give mening. Match hver med en værdi. Teams finder ofte et hul mellem det, de siger, og det, de gør, og hullet er det nyttige fund. En facilitator bør undgå skyld og spørge, hvilket pres der gav hvert valg. Følg op ved at spørge, hvilket af de pres teamet kan ændre.

**Hvor hjælper vores processer og værktøjer folk med at tale sammen, og hvor står de i vejen?**

Bed folk om at nævne en proces, der sparer dem arbejde, og en, der koster dem arbejde. Den dyre er ofte en god proces anvendt rigidt, som et ticket-workflow, der kræver fire godkendelser til en triviel ændring. Se efter steder, hvor folk undgår værktøjet og bruger chat eller gangsnak i stedet, for det signalerer som regel en uoverensstemmelse. Slut med én proces, der skal forenkles denne måned.

**Hvilken dokumentation ville vi være kede af at miste, og hvad kunne vi slette i morgen?**

Dette spørgsmål afprøver værdien "fungerende software frem for omfattende dokumentation" uden at tage den til det yderste. Spørg folk, hvilke dokumenter de har brugt den seneste måned. Runbooks, arkitekturdiagrammer og kundevendte servicebeskrivelser dukker ofte op. Dokumenter, ingen nævner, er kandidater til sletning eller sammenlægning. Mind teamet om, at sletning er en beslutning, så giv den en ejer.

**Hvordan deltager vores kunder i at forme vores services, og hvordan ved vi, at det er nok?**

Saml eksempler på kundeinput, der ændrede en beslutning. Er listen kort, så spørg hvorfor. Årsagerne er som regel strukturelle: en kundechef i midten, en SLA-gennemgang én gang om året eller en servicedesk, der registrerer klager, men ikke giver dem videre. Spørg kunderne direkte, hvis du kan, hvad de ville ændre. Facilitatorens opgave er at finde én konkret måde at forkorte vejen mellem en kunde og teamet.

**Hvad skal der til, for at vi kan godkende en lille ændring med lav risiko inden for en time, og bør vi?**

Dette spørgsmål forbinder den fjerde værdi med ændringskontrol (se Emne 3.4 — Ændringsunderstøttelse). Spørg, hvad der i dag bremser små ændringer: et ugentligt møde, en manuel risikoformular, en manglende test. Spørg, hvilken evidens der ville gøre teamet trygt, som automatiserede tests eller en hurtig tilbagerulning. Pres ikke på for et "ja". Målet er at opdage, hvad teamet mener, det ville have brug for, og det er starten på en plan.

**Hvis en tilsynsmyndighed, en revisor eller en stor kunde læste manifestet, hvad ville de bekymre sig om, og har de ret?**

Nogle bekymringer er rimelige. Revisorer vil have evidens, og kunder vil have forpligtelser. Inviter teamet til at tage bekymringerne alvorligt og spørge, hvilken let evidens og hvilke forpligtelser der ville tilfredsstille dem. Teams, der kan vise, hvordan agilt arbejde skaber et revisionsspor, får som regel mere frihed, ikke mindre. Notér bekymringerne til governance-diskussionen i Emne 5.7 — Governance, risiko og compliance.

## I praksis: et agilt ITIL-eksempel

En mellemstor webshop har et platformsteam på otte personer, der bygger og driver virksomhedens checkout-service. Teamet er for nylig gået fra kvartalsvise releases til ugentlige og har nu et problem: servicedesken klager over, at ændringer kommer uden varsel, og platformsteamet klager over, at ændringsgodkendelsesmødet bruger en uge på at godkende ændringer, der er klar mandag.

Teamets leder afholder en times session med de fire værdier som ramme. De lister nylige begivenheder på en væg. En rettelse af en rabatkode ventede ni dage på godkendelse. En databaseændring blev hurtigt godkendt og forårsagede et nedbrud. En runbook for betalingsfejl viste sig at beskrive et system, der var udfaset året før. Gruppen placerer hver begivenhed op mod en værdi. De fleste forsinkelsestilfælde hører under "processer og værktøjer frem for individer og interaktioner", hvilket vil sige, at processen blev kørt for processens egen skyld. Nedbruddet hører under "at reagere på forandring frem for at følge en plan", fordi godkendelsesmødet behandlede alle ændringer ens og ikke så nøje på den risikable.

De bliver enige om tre ændringer. For det første forhåndsgodkendes ændringer, der matcher en kort liste over mønstre med lav risiko, med bestående automatiserede tests og en afprøvet tilbagerulning, og registreres automatisk. For det andet gennemgås risikable ændringer af en kollega og en repræsentant for driften inden for en dag. For det tredje får hver runbook en navngiven ejer og tjekkes hver gang, den bruges under en hændelse.

To måneder senere gennemgår lederen resultatet med servicedesken. Forhåndsgodkendte ændringer flyder hurtigt, og servicedesken ser nu hver ændring i et fælles feed. Ét problem består: to af de forhåndsgodkendte mønstre var trukket for bredt, og en mindre hændelse fulgte. Teamet snævrer mønstrene ind og beholder tilgangen. De ser også, at det fælles feed ikke kan erstatte samtale, så servicedeskens leder deltager i platformsteamets ugentlige planlægning.

## Fire perspektiver

### Produkt- og leveranceteams

For leveranceteams er manifestet en påmindelse om, at fungerende software omfatter fungerende drift. En funktion, der ikke kan overvåges, supporteres eller rulles tilbage, er ikke færdig. Brug værdierne til at argumentere for det driftsarbejde, der gør releases sikre, og inviter driftspersonale ind i planlægningen tidligt.

### Service- og driftsteams

Driftspersonale føler ofte, at manifestet taler for udviklere. Læs det anderledes: værdierne favoriserer, at folk taler sammen, afprøvede artefakter og hurtig reaktion på forandring, hvilket alt sammen passer til god drift. Tag ITIL-praksisser med til bordet som opsamlet erfaring om, hvad der går galt, og foreslå lettere versioner, der bevarer formålet.

### Ledelse og governance

Ledere skaber de betingelser, der lader værdierne virke. Hvis hver release kræver fem underskrifter, kan et team ikke foretrække at reagere på forandring, uanset hvor mange plakater der hænger på væggen. Spørg jeres teams, hvor jeres egne regler bremser dem, og vær klar til at ændre en regel, når formålet kan opfyldes på anden vis.

### Kunder og brugere

Kunder nævnes i to af de fire værdier. For dem lover manifestet samarbejde, ikke blot levering. Forvent at blive spurgt, hvad du har brug for, at se fungerende ændringer ofte og at kunne ombestemme dig. Til gengæld har et team brug for rettidig feedback og beslutninger fra dig.

## Almindelige fejlmønstre

- **At bruge "frem for" som "i stedet for".** Teams dropper dokumentation, planlægning eller kontrakter helt og lider derefter. I stedet: beslut, hvad hver af dem skal opnå, og behold den letteste form, der opnår det.
- **At se værdierne som et frikort til at springe disciplin over.** "Vi er agile" bliver en undskyldning for ingen test, ingen registreringer og ingen overdragelse. I stedet: knyt hver værdi til en konkret praksis, og tjek at praksissen sker.
- **At recitere manifestet uden at afprøve det.** Slagord erstatter tænkning. I stedet: gennemgå faktiske begivenheder mod værdierne med jævne mellemrum.
- **At bruge det mod kolleger.** At citere en værdi for at afvise en bekymring fra revision, sikkerhed eller drift skader tilliden. I stedet: spørg, hvad bekymringen beskytter, og hvordan den kan imødekommes let.
- **At adoptere praksisser uden værdierne.** Daglige møder og tavler dukker op, men beslutninger venter stadig på godkendelseskæder. I stedet: spørg, hvilke beslutninger der bør rykke tættere på dem, der udfører arbejdet.
- **At antage, at manifestet besvarer driftsspørgsmål.** Det blev skrevet om softwareudvikling i 2001 og siger lidt om at drive services. I stedet: kombinér det med servicestyringspraksisser, og tilpas begge.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Fælles forståelse af værdierne | Nogle få har læst manifestet | Nogle teams diskuterer det, med forskellige læsninger | Teams deler en kort, skriftlig læsning af værdierne for deres kontekst | Teams tjekker nylige beslutninger mod værdierne ved jævnlige gennemgange | Teams, leverandører og kunder bruger et fælles ordforråd for afvejninger |
| Balance mellem proces og mennesker | Processer følges eller ignoreres afhængigt af personen | Nogle processer forenkles af enkelte teams | Hver proces har en ejer og en vej for ændringsforslag | Procesfriktion måles, for eksempel ventetid pr. ændring | Processer justeres på tværs af teams på baggrund af fælles evidens |
| Samarbejde med kunden | Feedback kommer som klager | Nogle teams mødes jævnligt med kunder | Hver service har en defineret måde at indsamle kundeinput på | Kundeinput spores og knyttes til gennemførte ændringer | Kunder hjælper med at sætte prioriteter på tværs af services |
| Dokumentation og planer | Dokumenter er sjældne eller forældede | Teams beholder de dokumenter, de finder nyttige | Krævede dokumenter er få, har ejere og gennemgås | Brugen af dokumenter observeres, og ubrugte fjernes | Dokumentation genereres eller verificeres som en del af leveringen |

## Tjekliste

- [ ] Hvert teammedlem har læst manifestet og dets tolv principper én gang.
- [ ] Teamet kan angive hver værdi med egne ord, med et eksempel fra eget arbejde.
- [ ] Vi har listet, hvilke processer, dokumenter, kontrakter og planer vi beholder, og hvorfor.
- [ ] Hver proces i brug har en navngiven ejer og en måde at foreslå ændringer på.
- [ ] Runbooks og servicebeskrivelser har ejere og en gennemgangsdato.
- [ ] Vi har en jævnlig samtale med kunderne til mindst én service.
- [ ] Vi har gennemgået mindst én nylig hændelse eller release mod de fire værdier.
- [ ] Regler fra ledelsen, der bremser teamet, er listet og drøftet.
- [ ] Vi har skrevet ned, hvordan vi viser revisorer og tilsynsmyndigheder, hvad vi gør.

## AI-prompts

**Formål: at gøre de fire værdier til en kort læsning for dit eget team.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Formål: at gennemgå en nylig begivenhed mod værdierne.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Formål: at forberede svar på en revisors bekymring om agile arbejdsmåder.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Formål: at designe en times teamsession om manifestet.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AI-skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): brug den, når du vil tjekke en teampraksis eller en procesbeslutning mod manifestets principper.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at køre et retrospektiv, der gennemgår nylige begivenheder mod værdierne og fører til en reel ændring.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): brug den, når du starter et nyt team eller projekt og vil have en fælles læsning af værdierne fra første dag.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): brug den, når du er den, der hjælper et team fra at kopiere ritualer til at forstå grundene til dem.

## Vigtigste kilder

- **Manifesto for Agile Software Development** (agilemanifesto.org): den primære tekst. Læs den i sin helhed; det tager to minutter.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): de tolv principper, det mest nyttige supplement til værdierne.
- **History: The Agile Manifesto** (agilemanifesto.org): forfatternes egen korte beretning om mødet i Snowbird.
- **Agile software development** (Wikipedia): en bred oversigt med historie, metoder, praksisser og kritik, nyttig som kort over videre læsning.

## Referencer

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
