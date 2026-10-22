# Overvågning og eventstyring

**Overvågning fortæller dig, om en service virker, som brugerne oplever den, og god eventstyring gør en flod af signaler til et lille antal alarmer, et menneske kan forstå og handle på.**

## Hvorfor det betyder noget

En service, du ikke kan se, er en service, du ikke kan drive. Uden overvågning hører et team om fejl fra brugerne og om langsom forringelse fra ingen. Med dårlig overvågning er problemet det modsatte: så mange alarmer, at den vagthavende ingeniør holder op med at tro på dem, og den, der betyder noget, går tabt i støjen. Begge yderpunkter koster søvn, tillid og tid.

Overvågning og eventstyring afgør også, hvor hurtigt en hændelse kan findes og rettes. Alt i hændelseshåndtering afhænger af at vide hurtigt, at noget er galt, og at have information nok til at finde ud af hvorfor (se Emne 3.2 — Hændelseshåndtering). Agile teams, der udgiver ofte, har endnu mere brug for det, fordi hver release er en chance for at ødelægge noget, og hver beslutning om tilbagerulning afhænger af at se virkningen.

Googles bog *Site Reliability Engineering* har to kapitler, der behandler emnet direkte: "Monitoring Distributed Systems" og "Practical Alerting from Time-Series Data". De beskriver én organisations praksis og argumenterer for en bevidst enkel, brugerfokuseret tilgang. Dette emne bruger dem som hovedkilde, fordi de Wikipedia-artikler, der er konsulteret til denne vejledning, giver lidt om praksissen. ITIL-ordforrådet her, som event, alarm og eventstyring, er hentet fra bredt udgivne beskrivelser, som denne vejledning ikke kunne bekræfte mod rammeværksejerens tekst. Læs SRE-kapitlerne som én veludforklaret mulighed.

## Kernebegreber

### Overvågning

SRE-kapitlet definerer **overvågning** som at indsamle, behandle og vise kvantitative realtidsdata om et system. Det siger, at overvågning understøtter langsigtet tendensanalyse, sammenligning på tværs af eksperimenter, alarmering, dashboards og ad hoc-fejlfinding bagefter. Det understreger, at overvågning er en betydelig ingeniørindsats, og at teams typisk tildeler mindst én person til det.

### Events, alarmer og hændelser

I ITSM-sprogbrug er et **event** en tilstandsændring, der har betydning for styringen af en service. De fleste events er informative. Nogle indikerer en advarsel eller en undtagelse. En **alarm** er, som SRE-kapitlet udtrykker det, en notifikation til et menneske, leveret som ticket, mail eller page. En **hændelse** er en uplanlagt afbrydelse eller kvalitetsforringelse (se Emne 3.2 — Hændelseshåndtering). Eventstyring er praksissen at afgøre, hvilke events der betyder noget, hvad man skal gøre ved dem, og hvem der skal have besked. Flowet er events til alarmer til, nogle gange, hændelser.

### Black-box- og white-box-overvågning

Kapitlet skelner mellem to slags:

| Slags | Hvad den gør | Styrke |
|---|---|---|
| **Black-box** | Tester eksternt synlig adfærd, som en bruger ville se den | Opdager aktive problemer; egnet til paging |
| **White-box** | Bruger målinger eksponeret af systemets indre, som logs eller interne håndterere | Afslører forestående problemer og fejl maskeret af genforsøg; afgørende for fejlfinding |

Bogen kombinerer begge. En black-box-probe fortæller dig, at checkout svigter; white-box-data hjælper dig med at finde ud af hvorfor.

### Symptomer og årsager

Kapitlet siger, at overvågning bør besvare to spørgsmål: hvad er i stykker, og hvorfor. Det anbefaler at fokusere alarmer på symptomer, som er det, brugerne oplever, og kun at page på årsager, når de er bestemte og forestående. At en enkelt maskine svigter, er med dets ord i alarmeringskapitlet uacceptabelt at blive alarmeret om, fordi det er for støjende. Det er kernen i en god alarmeringstilgang: fortæl et menneske, når brugere bliver eller vil blive skadet, ikke hver gang en del trækker.

### De fire gyldne signaler

Kapitlet foreslår fire signaler at holde øje med for et brugervendt system:

- **Latenstid:** tiden til at betjene en anmodning. Spor mislykkede anmodninger separat, fordi en "langsom fejl er endnu værre end en hurtig fejl".
- **Trafik:** efterspørgslen på systemet.
- **Fejl:** mislykkede anmodninger, hvad enten de er eksplicitte, implicitte eller efter politik.
- **Mætning:** hvor "fuldt" servicen er. Ydeevnen forringes ofte før 100 % udnyttelse.

Disse svarer naturligt til serviceniveauindikatorer (se Emne 3.7 — Styring af serviceniveauer). Kapitlet advarer også om, at gennemsnit skjuler langsomme yderpunkter, og foreslår at registrere antal anmodninger i latenstidsspande for at se fordelingen.

### Hvad der gør en god alarm

Kapitlet tilbyder spørgsmål at stille, før man skriver en alarm: opdager den en hastende, handlingsrettet, brugersynlig tilstand; kan den trygt ignoreres; og kan responsen automatiseres? Pages bør være handlingsrettede, kræve dømmekraft og angå nye problemer. Det siger, at alarmer aldrig bør udløses blot fordi "noget ser lidt mærkeligt ud". Pages, hvis responser er rutinemæssige og algoritmiske, er efter dets opfattelse et rødt flag, der kalder på automatisering eller reparation af grundårsagen.

### Routing af alarmer

Alarmeringskapitlet beskriver at sende alarmer, der kræver page, til vagthavende, underkritiske til ticketkøer og resten til statusdashboards. Det beskriver værktøjer til at route, deduplikere og hæmme alarmer og bemærker, at alarmer bør vente en minimumsvarighed, før de udløses, fordi de kan flappe. Det advarer om, at "du kan kun alarmere på de fejl, du forventede", og derfor betyder det noget at kombinere black-box-prober med white-box-data.

### Hold det enkelt

Kapitlet argumenterer for enkle, hurtige systemer frem for "magi", der lærer tærskler eller opdager kausalitet, og bemærker, at komplekse afhængighedshierarkier har haft begrænset succes. Det siger at holde regler, der fanger rigtige hændelser, enkle, fjerne sjældent udøvede alarmer og ubrugte signaler og holde vedligeholdelsesomkostningerne voksende langsommere end servicens størrelse. De tilfælde, det beskriver, som et team overvældet af alarmer, der midlertidigt lempede sit mål og slog mailalarmer fra for at frigøre tid til varige rettelser, viser en vilje til at fjerne støj.

### Dashboards og langsigtede visninger

Kapitlet behandler dashboards som forudbyggede opsummerende visninger af en services nøglemålinger og siger, at dashboards er bedre end mailalarmer, som det kalder af meget begrænset værdi. Det anbefaler også at gennemgå page-frekvens over tid, for eksempel i kvartalsrapporter, for at holde ledelsen informeret om pagerbelastningen. Det gør alarmkvalitet til noget, ledere kan se (se Emne 1.2 — Agile principper om bæredygtigt tempo).

### Kildernes grænser

SRE-kapitlerne giver ikke tærskler ud over et enkelt gennemarbejdet eksempel, diskuterer ikke runbooks eller grænser for vagtbelastning og beskriver ikke, hvordan man gennemgår og afvikler alarmer over tid, så det er forhold for jeres egen praksis. De kommer fra én stor organisation med stærke ingeniørressourcer. Mindre teams kan anvende principperne med enklere værktøjer.

## God praksis

1. **Overvåg det, brugerne oplever.** Tilføj mindst én black-box-probe, der udfører en reel brugerhandling, som at logge ind eller afgive en ordre, og alarmér, når den fejler.
2. **Hold øje med de fire gyldne signaler.** Spor for hver service latenstid, trafik, fejl og mætning. Tilføj andre målinger kun, hvis de besvarer et spørgsmål, I har stillet.
3. **Alarmér på symptomer.** Page, når brugere er eller snart vil blive skadet. Behandl interne tilstande, som en enkelt svigtende maskine, som information med lavere prioritet, medmindre de er bestemte og forestående.
4. **Gør hver page handlingsrettet.** Før du opretter en alarm, så skriv, hvad respondereren skal gøre. Hvis der intet er at gøre, er det ikke en page.
5. **Route efter hastende karakter.** Send hastende alarmer til de vagthavende, mindre hastende til en ticketkø og information til et dashboard. Send ikke mailalarmer til folk, der vil ignorere dem.
6. **Brug fordelinger, ikke kun gennemsnit.** Se på høje percentiler for latenstid, eller spande, så langsomme yderpunkter er synlige.
7. **Sæt en minimumsvarighed.** Kræv, at en tilstand holder i kort tid, før der alarmeres, for at undgå flapping. Tun varigheden med rigtige data.
8. **Afvikl støjende alarmer.** Gennemgå, hvilke alarmer der udløses oftest og ikke førte til handling. Fjern eller ret dem. SRE-kapitlet behandler rutineresponser som et signal om automatisering eller reparation.
9. **Test jeres overvågning.** Ødelæg bevidst noget i et testmiljø, og tjek, at den rette alarm udløses. Medtag selve overvågningssystemet i tjekkene, så dets svigt bemærkes.
10. **Gennemgå pagerbelastning.** Tæl pages pr. vagt, afbrydelser uden for arbejdstid og falske alarmer hvert kvartal. Del resultaterne med ledere, og brug dem i planlægningen.
11. **Hold overvågning i definition of done.** Spørg for hver ny funktion, hvilke signaler der viser, om den virker, og hvilken alarm, hvis nogen, den har brug for (se Emne 3.5 — Release- og deploymentstyring).
12. **Hold det enkelt.** Foretræk nogle få forståelige regler frem for en kompleks ordning. Fjern ubrugte signaler, og gennemgå regler efter hændelser.

## Spørgsmål til diskussion i teamet

**Hvordan fandt vi ud af vores tre seneste hændelser?**

List hver hændelse og hvordan den først blev bemærket: en alarm, en bruger, en kollega. Hvis de fleste kom fra brugere, mangler overvågningen de symptomer, der betyder noget. Facilitatoren kan spørge, hvad en probe ville have vist. Vælg én brugerhandling, der skal overvåges først.

**Hvilke alarmer ignorerer vi, og hvorfor?**

Spørg vagthavende ingeniører om de alarmer, de slår fra eller springer over. Hver er en kandidat til at rette eller slette. Spørg, hvad der får folk til at stole på eller mistro en alarm. Et ærligt svar afslører ofte alarmer, der udløses på tilstande, ingen kan handle på. Aftal at afvikle eller rette tre.

**Hvad er den værste nat, vi har haft på vagt, og hvad ville have gjort den bedre?**

Saml historier uden skyld. Se efter mønstre: gentagne pages, uklare alarmer, mangel på runbooks, ingen eskalering. Hvert mønster er en forbedring. Spørg, hvilke to ændringer der ville hjælpe mest. Målet er en lettere belastning og et klarere signal.

**Hvis vores overvågningssystem svigtede, hvordan ville vi vide det?**

Spørg, hvem der holder øje med vagthunden. Mange teams har intet tjek af, at overvågningen virker. Drøft et enkelt heartbeat eller en probe fra et separat system. Aftal ét tjek, der skal tilføjes.

**Hvad viser vores dashboards, og hvem kigger på dem?**

List dashboards, og spørg, hvem der brugte hvert i den seneste måned. Ubrugte dashboards er rod; nyttige fortæller en historie om servicen. Spørg, hvilket spørgsmål hvert besvarer. Behold et lille sæt, der besvarer rigtige spørgsmål.

**Hvordan ville vi vide, at en release gjorde tingene værre?**

Vælg en nylig release, og spørg, hvilket signal der ville vise et problem. Hvis svaret er "vi ville høre fra brugerne", så drøft, hvilke signaler der skal overvåges efter en release, og hvem der er ansvarlig. Dette spørgsmål forbinder overvågning med udrulning. Skriv en kort tjekliste til efter release.

## I praksis: et agilt ITIL-eksempel

En bys offentlige transportmyndighed driver en ruteplanlægningshjemmeside og -app, som 400.000 mennesker bruger hver dag. Et platformsteam på ti ejer servicen med en vagtplan på fire. Teamet har hundredvis af alarmer: CPU på hver server, diskplads, kølængder og fejloptællinger. De vagthavende ingeniører modtager 40 pages i en typisk uge, de fleste uden for arbejdstid, og to hændelser i det seneste kvartal blev først rapporteret af brugere på sociale medier.

Teamlederen og en ingeniør gennemgår tre måneders pages. De finder, at tre fjerdedele var for tilstande, der ikke krævede handling, eller som løste sig selv. De aftaler at følge en enkel tilgang fra SRE-bogen: alarmér på det, brugerne oplever. De tilføjer en probe, der planlægger en standardrejse hvert minut og måler succes og hastighed, og de beholder et lille sæt alarmer på mætning af databasen og køen. De flytter resten til et dashboard og en daglig ticket. Hver tilbageværende page får en kort runbook-post, der siger, hvad man skal tjekke.

Efter en måned falder pages til omkring fem om ugen, og de to hændelser, der fulgte, blev begge opdaget af proben, før brugerne klagede. Nogle problemer består. Proben dækker kun én rejsetype, og en fejl, der berørte cykelrejser, forblev uopdaget i en dag. En ingeniør rapporterer også, at beslutningen om at "flytte til dashboardet" skjulte et langsomt diskproblem, der senere forårsagede en fejl. Teamet tilføjer prober for andre rejsetyper, tilføjer en daglig gennemgang af dashboardet til vagtplanen og aftaler at gennemgå pagerbelastningen hvert kvartal.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ved, hvad softwaren skal gøre, og hvor den sandsynligvis fejler. Byg signalerne ind i koden: nyttige logs, målinger og helbredstjek. Definér prober for nøglebrugerhandlinger, og behandl overvågning som en del af færdig. Deltag i alarmgennemgange, så pages afspejler reelle problemer.

### Service- og driftsteams

Driftsteams bærer pageren og dashboardene. Hold alarmer få og handlingsrettede, route efter hastende karakter, og spor pagerbelastning. Send støjende alarmer tilbage til de teams, der ejer dem, med evidens, og del, hvad I lærer af hændelser om, hvad der skal overvåges.

### Ledelse og governance

Ledere bør bede om pagerbelastning og data om hændelsesopdagelse, ikke om flere alarmer. Støt tid til at afvikle støj og tilføje nyttige signaler. Behandl et stigende antal pages uden for arbejdstid som en risiko for servicen og for folk.

### Kunder og brugere

Kunder og brugere har gavn, når problemer findes, før de selv bemærker dem. Rapportér problemer med detaljer, som hvad du prøvede og hvornår, da det hjælper med at tune overvågningen. Spørg leverandører, hvordan de opdager fejl og hvor hurtigt, og om de udgiver statusinformation.

## Almindelige fejlmønstre

- **At alarmere på alt.** Pageren er konstant, og tilliden går tabt. I stedet: page på symptomer, og send resten til tickets eller dashboards.
- **At overvåge systemer, ikke brugere.** Alle maskiner er grønne, mens brugere ikke kan logge ind. I stedet: tilføj black-box-prober af reelle brugerhandlinger.
- **Ingen handling knyttet.** Pages kommer uden noget at gøre. I stedet: kræv, at hver page har en beskrevet respons, eller fjern den.
- **Kun gennemsnit.** En gruppe brugere lider, mens middelværdien ser fin ud. I stedet: se på høje percentiler eller fordelinger.
- **Komplekse, kloge regler.** Lærte tærskler og afhængighedstræer forvirrer responders. I stedet: foretræk enkle, forståelige regler.
- **Overvågning, ingen holder øje med.** Overvågningssystemet svigter lydløst. I stedet: tjek det med heartbeats og tests.
- **Rutineresponser.** Folk gentager den samme rettelse efter hver page. I stedet: automatisér responsen, eller ret årsagen.
- **At ignorere pagerbelastning.** Natlige pages behandles som normale. I stedet: mål og gennemgå dem, og behandl høj belastning som en risiko.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Synlighed af brugeroplevelsen | Brugere rapporterer de fleste problemer | Nogle services har prober eller målinger for brugerhandlinger | Centrale brugerhandlinger probes, og gyldne signaler spores for hver service | Opdagelsestid og dækning måles, og huller rettes | Overvågning deles på tværs af teams, leverandører og kunder |
| Alarmkvalitet | Mange alarmer, lidt handling | Nogle teams beskærer alarmer | Pages er symptombaserede, handlingsrettede og routet efter hastende karakter | Alarmpræcision og støj måles og gennemgås | Alarmdesign forbedres på tværs af teams ud fra fælles evidens |
| Respons og automatisering | Responser improviseres | Nogle runbooks findes | Pages linker til runbooks, og rutineresponser automatiseres | Responstid og brug af automatisering måles | Responser koordineres på tværs af teams og leverandører |
| Mennesker og belastning | Pagerbelastning spores ikke | Nogle teams tæller pages | Pagerbelastning gennemgås hvert kvartal | Belastning balanceres og reduceres ud fra data | Belastning og læring deles på tværs af teams og afspejles i planlægningen |

## Tjekliste

- [ ] Hver vigtig service har mindst én probe af en reel brugerhandling.
- [ ] Vi sporer latenstid, trafik, fejl og mætning for hver service.
- [ ] Hver page har en skriftlig respons og angår en brugersynlig eller forestående tilstand.
- [ ] Alarmer routes efter hastende karakter til vagthavende, tickets eller dashboards.
- [ ] Høje percentiler eller fordelinger er synlige for latenstid.
- [ ] Vi gennemgår, hvilke alarmer der udløses oftest, og afvikler dem, der ikke fører til handling.
- [ ] Selve overvågningssystemet tjekkes.
- [ ] Pagerbelastning (pages pr. vagt, afbrydelser uden for arbejdstid) gennemgås hvert kvartal.
- [ ] Nye funktioner omfatter overvågning i deres definition of done.
- [ ] Efter hver release tjekker nogen signalerne mod en kort liste.

## AI-prompts

**Formål: at gennemgå en liste over alarmer for støj og handlingsrettethed.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Formål: at definere en probe for en brugerrejse.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at skrive responsafsnittet for en alarm.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede en kvartalsvis gennemgang af pagerbelastningen.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## AI-skills

- [runbook](../../../../skills/runbook/SKILL.md): brug den til at skrive den respons, der hører til hver page.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): brug den til at designe en fair vagtplan og til at planlægge, hvordan pagerbelastning deles og gennemgås.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): brug den til at vælge og fortolke målinger af service- og leveringsydeevne.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): brug den til at tjekke latenstid og mætning under belastning, før problemer når brugerne.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): brug den til at afprøve, at fejl opdages og håndteres, ved bevidst at forårsage dem i en sikker ramme.

## Vigtigste kilder

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definitioner, de fire gyldne signaler, symptomer mod årsager og råd om enkel alarmering.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): hvordan alarmregler, routing og flapping virker i praksis.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): forbindelsen mellem indikatorer, mål og alarmer.
- **IT service management** (Wikipedia): overvågningens og hændelsernes plads i ITSM.

## Referencer

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
