# Styring af serviceniveauer

**Styring af serviceniveauer gør det, brugerne har brug for, til mål, et team kan måle og forsvare, og den mest nyttige form for agile teams er et lille antal brugerfokuserede mål med et eksplicit budget for fejl.**

## Hvorfor det betyder noget

Enhver service har et kvalitetsniveau, uanset om nogen har målt det. Hvis det ikke er angivet, antager brugerne ét, og teamet antager et andet, og hullet opdages under et nedbrud. Styring af serviceniveauer er praksissen at angive niveauet, måle det og handle på resultaterne. Den giver et team noget at styre efter og giver kunderne noget at stole på.

Agile teams modsætter sig ofte serviceniveauer, fordi de forbinder dem med kontrakter og bøder. Alligevel træffer et agilt team, der udgiver ugentligt, en beslutning, uanset om det ved det eller ej, om, hvor meget risiko det tager med tilgængeligheden. Et klart mål gør den beslutning eksplicit. Googles bog *Site Reliability Engineering* beskriver i sit kapitel om serviceniveaumål (service level objectives), hvordan man gør det på en måde, der passer til hurtigt bevægende teams: vælg nogle få indikatorer, der betyder noget for brugerne, sæt mål, og brug rummet mellem perfekt og acceptabelt, fejlbudgettet, til at afgøre, hvornår man skal udgive.

Dette emne kombinerer det kapitel med [Wikipedia-artiklen om service-level agreements](https://en.wikipedia.org/wiki/Service-level_agreement) for definitioner af aftaler og med udbredt ITIL-ordforråd, som denne vejledning ikke kunne bekræfte mod rammeværksejerens tekst. SRE-kapitlet afspejler én organisations praksis og argumenterer for en bestemt tilgang; læs det som en veludforklaret mulighed, ikke som en universel regel.

## Kernebegreber

### Indikator, mål, aftale

SRE-kapitlet skelner mellem tre begreber, der ofte blandes sammen:

| Begreb | Betydning | Eksempel |
|---|---|---|
| **Serviceniveauindikator (SLI)** | En omhyggeligt defineret kvantitativ måling af et aspekt af serviceniveauet | Andelen af veludformede anmodninger, der lykkes |
| **Serviceniveaumål (SLO)** | En målværdi eller et interval for en SLI | Mindst 99,9 % af anmodningerne lykkes over en måned |
| **Serviceniveauaftale (SLA)** | En eksplicit eller implicit kontrakt med brugere, der omfatter konsekvenser for at opfylde eller misse målene, oftest økonomiske | En refusion, hvis tilgængeligheden falder under et angivet niveau |

Kapitlets test til at skelne en SLA fra en SLO er, om der er en eksplicit konsekvens. Hvis ikke, er det en SLO. Eksempeltallene i tabellen er illustrationer, ikke anbefalinger.

Wikipedia-artiklen beskriver en SLA som en aftale, typisk en bindende kontrakt, mellem en leverandør og en kunde, der definerer aspekter af servicen som kvalitet, tilgængelighed og ansvar. Den opregner typisk indhold: en beskrivelse af servicen, ydelsesniveauer, overvågning og rapportering, hvordan problemer rapporteres, tidsfrister for respons og løsning samt konsekvenser ved manglende opfyldelse. Den nævner almindelige målinger som gennemsnitlig tid mellem fejl, gennemsnitlig tid til reparation, oppetid, løsning ved første opkald og gennemløbstid. Den bemærker, at store organisationer ofte bruger interne SLA'er mellem enheder. Den beskriver typer efter omfang: kundebaserede, servicebaserede og flerniveau.

### Valg af indikatorer

SRE-kapitlet anbefaler at vælge nogle få indikatorer, der afspejler det, brugerne bekymrer sig om, ikke hver måling, man kan spore. Brugervendte systemer fokuserer som regel på tilgængelighed, latenstid og gennemløb. Lagringssystemer tilføjer holdbarhed, og alle systemer bør spore korrekthed. Det foreslår, at måling på klientsiden kan fange problemer, som målinger på serversiden overser. En praktisk konsekvens for serviceteams: start med brugerens oplevelse, som "jeg kan booke en tid, og det tager nogle få sekunder", og find derefter en indikator, der tilnærmer den.

### Gennemsnit skjuler smerte

Kapitlet argumenterer mod at stole på gennemsnit: "De fleste målinger tænkes bedre som fordelinger end som gennemsnit." Høje percentiler, som 99. eller 99,9., viser plausible værste tilfælde, mens medianen viser det typiske tilfælde. Gennemsnit kan skjule en lang hale af langsomme anmodninger. Hvis din måling er et gennemsnit, kan nogle få brugere have det meget dårligt uden at tallet rykker sig.

### Valg af mål

Kapitlets vejledning om mål er direkte og nyttig:

- **Start fra brugerne.** "Start med at tænke over (eller finde ud af!), hvad dine brugere bekymrer sig om, ikke hvad du kan måle."
- **Forankr ikke i den nuværende ydeevne.** At vælge et mål ud fra det, du opnår nu, kan låse heroisk indsats fast.
- **Hold det enkelt.** Komplicerede aggregeringer sløver ændringer og er sværere at ræsonnere om.
- **Undgå absolutter.** Løfter om "altid" tilgængelig er urealistiske.
- **Hav så få SLO'er som muligt.** Hver bør være værd at forsvare i en prioriteringsdiskussion.
- **Perfektion kan vente.** Det er bedre at starte med et løst mål, som du strammer, end et, der senere må lempes.

### Fejlbudgetter

Kapitlet siger, at det er urealistisk at kræve 100 % overholdelse, og at det bremser innovation. I stedet tillader teams et **fejlbudget**: den rate, hvormed en SLO kan misses, sporet dagligt, ugentligt eller månedligt. Budgettet informerer beslutninger om releases. Når der er rigeligt budget tilbage, kan et team tage mere risiko med forandring; når det næsten er brugt, sætter teamet farten ned på forandring og investerer i pålidelighed. Det giver agile teams og drift en fælles, numerisk måde at diskutere hastighed mod stabilitet på, i stedet for diskussion ved autoritet.

### At sætte forventninger

Kapitlet bemærker, at offentliggørelse af en SLO sætter brugernes forventninger. Teams kan beholde en sikkerhedsmargin med et strammere internt mål. Det advarer også mod at overpræstere, da brugere kommer til at afhænge af den ydeevne, de observerer. Hvis en service er langt bedre end sit angivne mål, vil brugerne bygge på det, og målet beskytter ikke længere teamet.

### Kontrolløkken

Kapitlet beskriver SLI'er og SLO'er som grundlaget for en kontrolløkke: overvåg SLI'erne, sammenlign dem med SLO'erne, afgør om handling er nødvendig, find ud af, hvilken handling der opfylder målet, og udfør den. Uden en SLO kan et team ikke afgøre, om eller hvornår det skal handle (se Emne 3.10 — Overvågning og eventstyring).

### Interne og eksterne aftaler

En SLA er mellem en leverandør og en kunde. Inden for en leverandør afhænger teams af hinanden og af underleverandører. Wikipedia-artiklen nævner, at SLA'er kan understøttes af operational-level agreements (OLA'er), men forklarer dem ikke. I ITIL-ordforråd er en OLA en aftale mellem interne teams, der understøtter en SLA, og en underliggende kontrakt (underpinning contract) er det tilsvarende med en ekstern leverandør. De kilder, der er læst her, bekræfter ikke disse definitioner, så tjek dem mod ITIL-publikationer. Det praktiske punkt er, at et løfte til en kunde kun er så godt som de løfter, der ligger bag (se Emne 3.14 — Leverandørstyring).

### Serviceniveauforventninger i Kanban

I Kanban er en **serviceniveauforventning** en prognose for, hvor lang tid et arbejdselement skal tage, baseret på tidligere cyklustider (se Emne 1.5 — Kanban). Den er ikke en aftale, men tjener et lignende formål for arbejdselementer og kan fodre mål for anmodninger og hændelser.

## God praksis

1. **Start med, hvad brugerne har brug for.** Spørg brugere og kunder, hvad der betyder mest, og hvad der gør ondt, når det svigter. Skriv det med deres ord, før du vælger en måling.
2. **Vælg nogle få indikatorer.** Vælg for hver service to til fire indikatorer, der afspejler brugeroplevelsen, som succesrate og hastighed. Stå imod at tilføje flere, før I har brugt disse.
3. **Brug percentiler til hastighed.** Mål den langsomme ende af fordelingen, ikke kun gennemsnittet, så brugere med en dårlig oplevelse er synlige.
4. **Sæt løse mål først, og stram derefter.** Begynd med et mål, I kan opfylde og forsvare, og stram det, når I har data og tillid. Det følger kapitlets råd om, at perfektion kan vente.
5. **Kopiér ikke den nuværende ydeevne.** Hvis jeres service i øjeblikket er fremragende, så sæt ikke et mål på det niveau, medmindre brugerne har brug for det. Et løsere mål giver plads til forandring og undgår heroisk indsats.
6. **Aftal et fejlbudget, og brug det.** Definér, hvor megen fejl der er acceptabel i en periode, og lad det resterende budget vejlede releasebeslutninger. Gennemgå det på et jævnligt møde med leverance og drift sammen.
7. **Skriv aftalen i almindeligt sprog.** En SLA bør sige, hvad der leveres, hvordan det måles, hvordan problemer rapporteres, hvad der sker, når mål misses, og hvornår den gennemgås. Undgå begreber, som kun en jurist eller ingeniør kan læse.
8. **Adskil mål fra aftaler.** Hold interne mål, der er strammere end de aftaler, I underskriver. Marginen giver jer plads til at reagere, før I skylder noget.
9. **Vid, hvad jeres løfte afhænger af.** List de teams og leverandører, jeres serviceniveau stoler på, og tjek, at deres forpligtelser understøtter jeres.
10. **Rapportér i en form, kunderne kan bruge.** Del resultater jævnligt, med en kort kommentar om, hvad der skete, og hvad I gør. Undgå dashboards uden kommentarer.
11. **Gennemgå mål med kunderne.** Mindst årligt spørg, om niveauerne stadig svarer til det, kunderne har brug for, og det, I kan levere. Ændr dem, når svaret er nej.
12. **Brug ikke serviceniveauer til at straffe folk.** Brug dem til at starte samtaler og beslutninger. Et mål, der bruges som en stok, vil blive manipuleret (se Emne 5.6 — Metrikker og måling).

## Spørgsmål til diskussion i teamet

**Hvordan ser en god dag ud for vores brugere, og hvordan ville vi vide det?**

Bed teamet beskrive, med brugerens ord, hvad en god oplevelse af servicen er. Spørg derefter, hvad vi måler, der svarer til den. Ofte beskriver de målinger, vi har, vores systemer og ikke brugerens oplevelse. Facilitatoren kan spørge, om vi ville bemærke det, hvis en gruppe brugere havde en dårlig dag. Vælg én indikator, der skal tilføjes eller ændres.

**Har vi et tal, vi lover eller sigter mod, og hvem blev enige om det?**

List de mål, der findes, formelt eller uformelt. Spørg for hvert, hvem der satte det, hvornår og på hvilket grundlag. Mange mål viser sig at være sat af vane eller af en, der er rejst. Drøft, hvilke der skal bekræftes, ændres eller droppes. Aftal, hvem der ejer hvert.

**Hvor meget fejl har vi råd til, og hvad ville vi gøre med rummet?**

Introducér ideen om et fejlbudget. Spørg, hvilket niveau af utilgængelighed brugerne ville tolerere, og hvad teamet kunne gøre med rummet, som hurtigere releases. Målet er at se afvejningen i tal. Forvent ikke præcise svar; bed om et første gæt at afprøve.

**Hvor skjuler vores gennemsnit dårlige oplevelser?**

Se på én måling, der rapporterer et gennemsnit. Spørg, hvad de langsomste én procent af brugerne oplever. Hvis I ikke ved det, så drøft, hvordan I finder ud af det. Ofte har en lille gruppe brugere eller et bestemt tidspunkt på dagen en langt dårligere oplevelse. Planlæg at se på én percentil i en måned.

**Hvad afhænger vi af, som vi ikke har spurgt om?**

List de services, leverandører og teams, jeres service stoler på. Spørg for hver, hvad de har lovet, og hvordan I ville vide, om de missede det. Mange afhængigheder har intet angivet niveau. Vælg den vigtigste, og åbn en samtale.

**Hvornår ændrede et mål sig sidst, og hvad udløste det?**

Bed om den seneste ændring. Hvis den er længe siden, så spørg, hvad der har ændret sig i brugernes behov eller teamets evne siden. Drøft en jævnlig gennemgang. Gode udløsere er nye brugerbehov, hændelser der afslørede et urealistisk mål, eller en ændring i arkitekturen.

## I praksis: et agilt ITIL-eksempel

En national lotteriudbyder driver en online billetkøbsservice. Et team på tolv bygger og driver den. Virksomheden har en uformel regel om, at servicen skal være "altid oppe", mens teamet udgiver to gange om ugen og har haft fire korte nedbrud på et år. Efter en dårlig weekend kræver den udøvende sponsor "100 % tilgængelighed", og teamlederen er bekymret for, at det vil afslutte hyppige releases.

Teamlederen og sponsoren holder en workshop med chefen for kundeservice. De spørger, hvad der betyder noget for spillerne. Svaret er, at spillere skal kunne købe en billet i timen før et træk lukker; uden for den time kan servicen være nede i minutter uden skade. De definerer en indikator: andelen af købsforsøg, der lykkes i de to timer før hvert træk lukker. De sætter et mål, som teamet mener, det kan opfylde, lidt under dets nylige ydeevne, og aftaler et fejlbudget for hver måned. De aftaler også, at når budgettet næsten er brugt, stopper releases, der berører køb, til næste måned, og teamet investerer i pålidelighed.

Tre måneder senere er budgettet brugt op én gang, i en måned med en fejl hos betalingsudbyderen, og teamet sætter risikable releases på pause i to uger uden konflikt. Målet giver teamet og sponsoren en fælles måde at tale på. Nogle vanskeligheder består. Betalingsudbyderens egen forpligtelse er svagere end teamets mål, så teamets løfte afhænger af en leverandør, der ikke har accepteret det. Målingen ignorerer også en langsom betalingsside, brugerne klager over, fordi den kun tæller succes. Teamet tilføjer en hastighedsindikator ved 99. percentil og åbner samtaler med udbyderen om dens serviceniveauer.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bør hjælpe med at vælge indikatorer og bruge fejlbudgettet i planlægningen. Byg målingen ind i servicen, så tallene er pålidelige. Behandl et opbrugt budget som en grund til at arbejde på pålidelighed, ikke som en straf.

### Service- og driftsteams

Driftsteams kører som regel overvågningen og rapporterer om niveauer. Hold sættet af målinger lille, vis dem med kommentarer, og bring data med til planlægningssamtaler. Før en liste over, hvad jeres service afhænger af, og tjek, at forpligtelserne passer sammen.

### Ledelse og governance

Ledere og sponsorer sætter forventninger. Undgå at bede om perfektion; spørg, hvad brugerne har brug for, og hvad afvejningen koster. Støt brugen af et fejlbudget som en fælles regel, og sørg for, at det også gælder jeres egne anmodninger. Gennemgå serviceniveauer med kunderne efter en plan.

### Kunder og brugere

Kunder og brugere har gavn, når serviceniveauet er angivet og opfyldt. Sig, hvad der betyder noget for dig, inklusive hvornår. Bed om rapporter i en form, du kan forstå, og fortæl leverandøren, når det angivne niveau ikke længere passer til dine behov.

## Almindelige fejlmønstre

- **For mange målinger.** Ingen ved, hvilken der betyder noget. I stedet: vælg nogle få, der afspejler brugeroplevelsen.
- **Kun gennemsnit.** En gruppe brugere lider, mens gennemsnittet ser fint ud. I stedet: medtag en måling ved høj percentil.
- **Mål kopieret fra den nuværende ydeevne.** Teamet låses fast i heroisk indsats. I stedet: sæt mål ud fra brugerbehov, og stram med data.
- **At kræve 100 %.** Releases stopper, og innovation bremses. I stedet: aftal et fejlbudget og en regel for brugen af det.
- **Løfter, I ikke kan bakke op.** Serviceniveauet afhænger af leverandører, der ikke har accepteret det. I stedet: tjek afhængigheder, og afstem forpligtelser.
- **Aftaler, ingen læser.** Vilkår er på juridisk sprog. I stedet: skriv i almindeligt sprog, og gennemgå med kunderne.
- **Dashboards uden kommentarer.** Tal rapporteres uden mening. I stedet: tilføj en kort forklaring af, hvad der skete, og hvad der vil ændre sig.
- **At straffe misser.** Folk skjuler problemer. I stedet: brug misser til at udløse beslutninger og læring.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Definition af niveauer | Niveauer er antagede eller uformelle | Nogle services har angivne mål | Hver service har brugerbaserede indikatorer og mål med ejere | Mål gennemgås mod brugerbehov og data | Niveauer sættes i fællesskab med kunder og leverandører |
| Måling | Målinger er ad hoc | Nogle indikatorer måles | Indikatorer måles pålideligt, inklusive percentiler | Målingens kvalitet gennemgås, og huller rettes | Måling deles og valideres på tværs af teams og leverandører |
| Brug af fejlbudgetter | Fejl er uplanlagt | Nogle teams drøfter acceptabel fejl | Budgetter vejleder releasebeslutninger på centrale services | Budgetbrug gennemgås, og regler tunes | Budgetter koordineres på tværs af indbyrdes afhængige services |
| Aftaler og afhængigheder | Løfter er uformelle | Nogle aftaler findes | Aftaler er i almindeligt sprog, med kendte afhængigheder | Aftaler og leverandørforpligtelser tjekkes mod resultater | Aftaler danner en konsistent kæde på tværs af teams, leverandører og kunder |

## Tjekliste

- [ ] For hver service har vi beskrevet med brugernes ord, hvad godt ser ud som.
- [ ] Hver service har to til fire indikatorer, der afspejler brugeroplevelsen.
- [ ] Mindst én hastighedsmåling bruger en høj percentil, ikke kun et gennemsnit.
- [ ] Mål er sat ud fra brugerbehov, ikke kun ud fra den nuværende ydeevne.
- [ ] Et fejlbudget findes og vejleder releasebeslutninger for mindst én service.
- [ ] Aftaler er skrevet i almindeligt sprog og gennemgået med kunderne.
- [ ] Afhængigheder af andre teams og leverandører er listet med deres forpligtelser.
- [ ] Resultater rapporteres jævnligt med kommentarer.
- [ ] Mål gennemgås mindst én gang om året.
- [ ] Data om serviceniveauer bruges i planlægningen og ikke som en stok.

## AI-prompts

**Formål: at gøre brugerbehov til kandidatindikatorer og -mål.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at analysere, om gennemsnit skjuler dårlige oplevelser.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Formål: at udarbejde en disposition til en serviceniveauaftale i almindeligt sprog.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at planlægge en fejlbudgetpolitik.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): brug den til at udarbejde eller gennemgå en aftale i almindeligt sprog.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): brug den til at vælge og fortolke målinger af levering og serviceydeevne.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): brug den til at vælge tidlige varslingsindikatorer, der viser, at et serviceniveau er i fare.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): brug den til at tjekke, at kapaciteten understøtter de niveauer, I lover.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den til at afstemme leverandørforpligtelser med de niveauer, I tilbyder.

## Vigtigste kilder

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): den klareste offentlige forklaring af indikatorer, mål, aftaler, percentiler og fejlbudgetter.
- **Service-level agreement** (Wikipedia): definitionen, typisk indhold, typer og historie for SLA'er.
- **DORA's software delivery performance metrics** (dora.dev): beslægtede målinger af leveringshastighed og stabilitet.
- **Quality of service** (Wikipedia): baggrund om, hvordan servicekvalitet beskrives og måles.

## Referencer

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
