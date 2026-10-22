# Agil softwareudvikling

**Agil softwareudvikling er en familie af metoder til kontinuerlig softwarelevering, der leverer i små skridt og lærer af feedback, og de praksisser, den har skabt, som automatiseret test og kontinuerlig integration, er det praktiske fundament for at drive skiftende services sikkert.**

## Hvorfor det betyder noget

De fleste teams, der driver en IT-service, bygger og ændrer den også. Måden, softwaren bygges på, afgør, hvor ofte servicen ændrer sig, hvor risikabel hver ændring er, og hvor meget de vagthavende kan stole på det, de får. Et team, der bygger i store batches og sjældent overdrager, giver driften nogle få store, skræmmende releases. Et team, der bygger i små skridt med tests og hurtig feedback, kan give dem mange små, forståede.

Agil softwareudvikling er det bedst kendte sæt ideer til den anden arbejdsmåde. Den er også udbredt misforstået. Nogle bruger "agil" til at betyde "ingen planer og ingen dokumenter", og andre bruger det om enhver proces med et dagligt møde. Dette emne giver et klarere billede: hvor agile metoder kom fra, hvad de har til fælles, hvad de ikke påstår, og hvilke praksisser der betyder mest for et team, der skal holde en service kørende.

Evidensen kræver en forsigtig læsning. [Wikipedia-artiklen om agil softwareudvikling](https://en.wikipedia.org/wiki/Agile_software_development) siger, at den anekdotiske evidens for agil er stærk, men den empiriske evidens er "begrænset og mindre end afgørende", og peger på undersøgelser, som den årlige State of Agile-undersøgelse, der rapporterer fordele, men bygger på selvrapporterede holdninger. Betragt agile metoder som lovende tilgange, der skal afprøves i jeres egen kontekst.

## Kernebegreber

### Hvad begrebet dækker

"Agil softwareudvikling" er en paraplybetegnelse. Wikipedia-artiklen beskriver den som dækkende tilgange, der voksede ud af de værdier og principper, som 17 praktikere blev enige om i 2001 (se Emne 1.1 — Det agile manifest og Emne 1.2 — Agile principper). Et stort A i "Agile" bruges ofte om de praksisser, der voksede ud af det mindset, og et lille "agil" om evnen til at tilpasse sig. Skellet er ikke skarpt, og du vil høre begge.

Agile metoder sigter mod kontinuerlig softwarelevering. De bygger på kontinuerligt samarbejde mellem interessenter og udviklere, bygger projekter omkring motiverede individer og stræber efter løbende forbedring gennem feedback, med opmærksomhed på kvalitet. De adskiller sig i, hvad de lægger vægt på. Nogle, som Extreme Programming, fokuserer på ingeniørpraksisser, og andre, som Scrum og Kanban, fokuserer på, hvordan arbejdet styres.

### En kort historie

Wikipedia-artiklen følger iterativ og inkrementel udvikling tilbage til 1957, med evolutionær projektledelse og adaptiv softwareudvikling i begyndelsen af 1970'erne. I 1990'erne dukkede en gruppe lette metoder op som reaktion på tunge, plandrevne processer, ofte kaldet [vandfaldsmodellen](https://en.wikipedia.org/wiki/Waterfall_model). Artiklen nævner rapid application development (1991), den unified process og dynamic systems development method, DSDM (1994), Scrum (1995), Crystal Clear og Extreme Programming (1996) og feature-driven development (1997).

I februar 2001 mødtes sytten praktikere i Snowbird, Utah, og skrev manifestet. Senere erklæringer byggede videre på det: PM Declaration of Interdependence i 2005, Software Craftsmanship Manifesto i 2009 og Agile Alliances *Guide to Agile Practices* i 2011, som i 2016 blev omdøbt til *Agile Glossary*.

### Adaptive og prædiktive tilgange

Artiklen beskriver et kontinuum mellem prædiktive og adaptive tilgange. En prædiktiv metode planlægger det meste af arbejdet i detaljer, før det starter, og virker godt, når kravene er stabile og velforståede. En adaptiv metode forventer forandring og planlægger over korte horisonter. Boehm og Turner, citeret i artiklen, argumenterer for, at hver side har sin egen "hjemmebane", hvilket vil sige, at ingen af dem er rigtig overalt.

Det betyder noget for et serviceteam, fordi dets arbejde er blandet. At udskifte et datacenternetværk ligger tættere på prædiktivt arbejde. At forbedre en kundevendt app ligger tættere på adaptivt arbejde. Vælg tilgangen pr. slags arbejde, ikke én gang for hele organisationen.

### Almindelige metoder

Artiklen opregner mange metoder. Dem, du mest sandsynligt møder:

| Metode | Hovedvægt | Behandlet i |
|---|---|---|
| Scrum | Definerede roller, regelmæssige events og en fast kadence | Emne 1.4 — Leveranceprognoser og planlægningsmålinger |
| Kanban | At visualisere arbejde og begrænse, hvor meget der er i gang | Emne 1.5 — Kanban |
| Extreme Programming (XP) | Ingeniørpraksisser som parprogrammering og testdrevet udvikling | Emne 1.6 — Extreme Programming |
| Lean softwareudvikling | At anvende lean-ideer, som at fjerne spild, på software | Emne 1.7 — Lean softwareudvikling |
| Feature-driven development, DSDM, Crystal og adaptiv softwareudvikling | Andre lette metoder til kontinuerlig softwarelevering med egne roller og praksisser | Dette emne |
| Scrumban | En blanding af Scrum-events og Kanban-flow | Emne 1.4 — Leveranceprognoser og planlægningsmålinger og Emne 1.5 — Kanban |

Ingen metode er "den" agile metode. Artiklen citerer Ken Schwabers opfattelse af, at teams kommer i vanskeligheder ved at jagte en perfekt metodik, når selve virksomheden skal ændre sig, og Bas Voddes forslag om, at Scrum leverer grundlaget, som teams udvider lokalt.

### Almindelige praksisser

Artiklen opregner praksisser, som mange agile teams bruger. Et udvalg, med hvad hver er til for:

- **User stories og backlogs:** beskriv arbejde fra brugerens synsvinkel, og hold en prioriteret liste over, hvad der skal gøres næste gang.
- **Dagligt stand-up:** et kort dagligt møde, ofte omkring 15 minutter, til at dele fremdrift og blokeringer.
- **Testdrevet udvikling (TDD) og acceptancetestdrevet udvikling (ATDD):** skriv tests først, så "færdig" er defineret, før arbejdet starter.
- **Kontinuerlig integration (CI):** flet ændringer ofte, og byg og test automatisk. Artiklen bemærker, at Grady Booch først foreslog begrebet i 1991.
- **Parprogrammering og refaktorering:** to personer deler arbejdet for at forbedre kvaliteten og sprede viden, og koden forbedres løbende uden at ændre, hvad den gør.
- **Retrospektiver:** teamet reflekterer med jævne mellemrum over, hvordan det kan blive bedre.

For et serviceteam fortjener tre af disse særlig opmærksomhed. Automatiserede tests og kontinuerlig integration gør hyppige ændringer sikre. Retrospektiver giver et fast sted at forbedre, hvordan teamet arbejder. Backlogs giver én ordnet liste, hvor serviceforbedringer konkurrerer retfærdigt med nye funktioner.

### Erfaring, måling og faldgruber

Artiklen rapporterer, at undersøgelser, blandt dem en Shine Technologies-undersøgelse i 2002 til 2003 og State of Agile-undersøgelsen siden 2006, finder opfattede gevinster i kvalitet, produktivitet og forretningstilfredshed. Den bemærker også, at en VersionOne-undersøgelse fandt utilstrækkelig uddannelse som den hyppigst nævnte årsag til mislykkede implementeringer, og opregner faldgruber som at lade et medlem af udviklingsteamet udfylde product owner-rollen og manglende opbakning fra sponsor.

At måle, "hvor agilt" et team er, har skabt flere selvvurderinger, som Nokia-testen, og et indeks, der vurderer projekter på varighed, risiko, nyhedsværdi, indsats og interaktion. Vær forsigtig med enhver sådan score. Et tal er en samtalestarter, og et team, der optimerer efter scoren, kan miste pointen.

### Storskala, distribueret og reguleret arbejde

Artiklen siger, at skalering ud over omkring 20 udviklere eller på tværs af lokationer giver udfordringer, og at en række rammeværker er foreslået, selv om meningerne er delte om, hvor godt de virker (se Emne 1.8 — Skalering af agilitet). Den rapporterer også, at regulerede områder som medicinsk udstyr, lægemidler, finans, atomkraft, bilindustri og luftfart først blev anset for uegnede til agil, og at der nu findes tilpasninger. De bekymringer, den opregner, er kvalitetssikring, sikkerhed og tryghed, sporbarhed samt verifikation og validering.

Det er præcis servicestyringens bekymringer. Når en tilsynsmyndighed eller en revisor beder om evidens, kan et agilt team levere den fra de værktøjer, det allerede bruger, som versionsstyringens historik, automatiserede testresultater og ændringsregistreringer (se Emne 5.7 — Governance, risiko og compliance).

### Kritik, der er værd at kende

Steven Rakitin kaldte i et brev til *IEEE Computer* i 2001 agil "endnu et forsøg på at underminere softwareudviklingens disciplin" og læste manifestets præference for fungerende software som en licens til at springe dokumentation over. Tilhængerne svarer, at dokumentation bør være "lige godt nok", med Scott Amblers formulering. Serviceteams kender begge sider: for lidt dokumentation bremser overdragelser og hændelsesrespons, og for meget bliver forældet.

## God praksis

1. **Match metoden til slags arbejde.** Brug kontinuerlig softwarelevering og hyppig feedback, hvor kravene ændrer sig, og brug mere planlægning på forhånd, hvor de er faste, og prisen for fejl er høj. Beslut det for hver slags arbejde, og gennemgå det, når omstændighederne ændrer sig.
2. **Start med den mindste nyttige batch.** Del arbejdet i stykker, der kan bygges, testes og udgives på dage. Små batches giver hurtigere feedback og gør en fejlslagen ændring lettere at forstå og fortryde.
3. **Automatisér test, før du øger farten på releases.** Hyppige releases uden automatiserede tests flytter risikoen over på dine brugere. Byg en suite, der kører ved hver ændring og fejler højlydt, og behandl et ødelagt build som teamets første prioritet.
4. **Integrér kontinuerligt.** Flet arbejde til en fælles gren ofte, og byg det automatisk. Langlivede grene skjuler konflikter, til de er dyre at rette.
5. **Lad "færdig" omfatte drift.** En story er ikke færdig, før den kan overvåges, supporteres og rulles tilbage. Tilføj disse tjek til jeres definition of done, og bed driftspersonale om at hjælpe med at skrive den (se Emne 3.5 — Release- og deploymentstyring).
6. **Hold én ordnet backlog pr. team.** Sæt funktioner, fejl og serviceforbedringer på den samme prioriterede liste, så de konkurrerer åbent. Skjulte sidekøer er der, hvor driftsarbejde stille og roligt sulter.
7. **Skriv lige nok dokumentation.** Behold dokumenter, folk bruger, som runbooks, servicebeskrivelser og arkitekturnoter, og giv hvert en ejer og en gennemgangsdato. Slet resten. Det besvarer Rakitins bekymring uden at vende tilbage til tunge dokumenter.
8. **Hold jævnlige retrospektiver, og handl på dem.** Vælg én ændring fra hver, med en ejer og en dato. Et retrospektiv, der kun giver diskussion, bliver et ritual.
9. **Invester i uddannelse og sponsorstøtte.** Undersøgelsesevidensen i Wikipedia-artiklen peger på uddannelse og sponsorstøtte som almindelige svage punkter. Planlæg begge, før du beder teams om at ændre, hvordan de arbejder.
10. **Tilpas, og sig hvorfor.** Tilpas en metode til jeres kontekst, og skriv ned, hvad I ændrede, og hvorfor. At ændre en praksis, fordi den er upraktisk, uden en begrundelse, er sådan teams driver væk fra fordelene.
11. **Mål resultater, ikke agilitetsscorer.** Følg ting som gennemløbstid for en ændring, hvor ofte releases forårsager hændelser, og hvor hurtigt servicen genoprettes (se Emne 5.6 — Metrikker og måling). Brug selvvurderinger kun som oplæg til diskussion.
12. **Før servicedata tilbage til udviklingen.** Før tilbagevendende hændelser og problemregistreringer ind i backloggen, så udviklingen lærer af driften (se Emne 3.3 — Problemhåndtering).

## Spørgsmål til diskussion i teamet

**Hvilke agile praksisser bruger vi faktisk, og hvilke kender vi kun navnene på?**

List de praksisser, I tror, I følger: stand-ups, retrospektiver, backlogs, automatiserede tests. Spørg for hver, hvornår den sidst ændrede en beslutning. Praksisser, ingen kan knytte til en beslutning, er ritualer. En facilitator bør bede om evidens uden at antyde skyld. Følg op ved at vælge ét ritual, der skal forbedres eller droppes.

**For hvilket af vores arbejde ville en mere prædiktiv tilgang være klogere, og hvorfor?**

Wikipedia-artiklen rapporterer, at hver tilgang har en "hjemmebane". Bed folk om at sortere nyligt arbejde i stabilt og hurtigt skiftende. Typisk stabilt arbejde omfatter hardwareudskiftninger, datacenterflytninger og store kontraktfornyelser. Spørg, hvad en mere omhyggelig plan ville have givet i hvert tilfælde. Målet er at undgå at anvende én stil på alt.

**Hvor hurtigt finder vi ud af, at noget, vi har bygget, ikke virker, og hvad ville gøre det hurtigere?**

Følg vejen fra at skrive en ændring til at lære, hvordan den opfører sig i brug. Tæl trinene og ventetiderne: gennemgang, build, test, release, overvågning. Spørg, hvilket trin teamet stoler mindst på. Ofte er svaret en manuel test eller et releasetrin, der afhænger af én person. Vælg ét trin, der skal forkortes, og aftal, hvordan I vil vide, at det blev kortere.

**Hvad skulle en revisor eller tilsynsmyndighed se fra os, og producerer vores arbejdsmåde det allerede?**

Bed en med revisions- eller sikkerhedserfaring om at deltage. Saml den evidens, jeres værktøjer allerede producerer: ændringshistorik, testresultater, godkendelser. List derefter, hvad der mangler. Teams bliver ofte overraskede over at opdage, at hyppige små ændringer med automatiserede tjek giver bedre evidens end sjældne store. Notér hullerne til governance-diskussionen i Emne 5.7 — Governance, risiko og compliance.

**Hvor hjælper vores dokumentation folk, og hvor findes den kun, fordi vi fik besked på at skrive den?**

Spørg folk, hvilke dokumenter de har brugt den seneste måned. En runbook, der bruges og holdes ajour, tæller. Et designdokument, ingen har læst siden dagen, det blev godkendt, gør ikke. Lad teamet afgøre, hvad der skal beholdes, hvad der skal slås sammen, og hvad der skal slettes, og tildel ejere. Det er en sikker måde at anvende ideen om "lige godt nok".

**Hvad ændrede vi sidst ved, hvordan vi arbejder, på grund af det, vi lærte, og hvad er den næste ændring?**

Bed om den seneste konkrete ændring fra et retrospektiv, og om den virkede. Hvis ingen kan nævne en, gør retrospektivet ikke sit job. Se på hvorfor: aktionerne kan være for store, mangle ejere eller konkurrere med leveranceopgaver. Slut med at vælge én lille ændring, der skal gennemføres de næste to uger.

## I praksis: et agilt ITIL-eksempel

En mellemstor webshop har et udviklingsteam på ti personer, der bygger virksomhedens ordrestyringssystem, og et separat driftsteam på seks, der driver det. Udviklingsteamet har valgt at bruge sprints og releases hver anden uge. Driftsteamet modtager hver release med en kort note og en anmodning om at udrulle den i et vindue torsdag aften. Driftspersonalet klager over, at de først får at vide, hvad der er ændret, når noget går i stykker, og udviklerne klager over, at et torsdagsvindue er for sent til at rette noget, der findes i test.

Ved et fælles retrospektiv gennemgår de to teams én nylig release trin for trin. De finder, at de eneste automatiserede tests dækker omkring halvdelen af ordreflowet, at ingen på driftssiden har set releasen før torsdagsnoten, og at tilbagerulningstrinnet aldrig er prøvet. De aftaler tre ændringer. Udviklingsteamet tilføjer et overvågningstjek og en tilbagerulningstest til sin definition of done. En driftsingeniør deltager i hver sprintgennemgang. Releases, der består hele den automatiserede suite, udrulles, så snart de er klar, ikke kun torsdag.

I løbet af de næste to måneder udrulles to af de næste fire releases midt i ugen. Driftsingeniøren fanger en manglende logbesked i en sprintgennemgang, hvilket sparer en times søgning i en senere hændelse. Ikke alt bliver bedre: den automatiserede suite springer stadig refusionsstien over, og en refusionsfejl når kunderne. Teamene tilføjer refusionstests til næste sprint og aftaler at gennemgå hullerne i dækningen hver måned. Driftsingeniøren siger også, at det at deltage i sprintgennemgangen tager tid, som vagtplanen ikke levner plads til, så driftschefen flytter nogle af ingeniørens andre opgaver.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ejer de praksisser, der gør ændringer sikre: tests, kontinuerlig integration, små batches og en klar definition of done. Behandl driften som en kunde af dit arbejde. Spørg, hvad de har brug for for at drive en release, og tag det med i backloggen, som du ville en funktion.

### Service- og driftsteams

Driftspersonale kan bruge agile praksisser på deres eget arbejde: en synlig backlog af forbedringer, korte feedbackcyklusser på hændelser og jævnlige retrospektiver. Bed om at deltage tidligt i planlægnings- og gennemgangssessioner. Bring viden om, hvordan services svigter, hvilket er det mest nyttige input, et leveranceteam kan få.

### Ledelse og governance

Ledere afgør, om teams får tid og uddannelse til at arbejde på denne måde. Undersøgelsesevidensen i Wikipedia-artiklen peger på uddannelse og sponsorstøtte som almindelige svage punkter. Spørg, hvilke kontroller du har brug for, og hvordan et team kan opfylde dem med sine egne værktøjer, i stedet for at tilføje en parallel proces.

### Kunder og brugere

Kunder ser fordelen ved agile metoder som synlig forbedring i en jævn rytme, ikke som en ceremoni. Forvent regelmæssigt at gennemgå fungerende ændringer og at blive spurgt, hvad der betyder mest. Til gengæld har teamet brug for rettidige svar og vilje til at acceptere små, ufuldkomne releases, der forbedres over tid.

## Almindelige fejlmønstre

- **At adoptere ritualer uden ingeniørpraksisser.** Daglige møder og tavler dukker op, men der er ingen automatiserede tests, så releases forbliver risikable. I stedet: invester i test, integration og releaseautomatisering ved siden af ceremonierne.
- **At kalde en ændringsproces "agil" uden at ændre beslutningsrettighederne.** Teams venter stadig på fjerne godkendelser. I stedet: flyt beslutninger til dem med viden, og sæt tydelige grænser.
- **At bruge agil som undskyldning for ingen dokumentation.** Overdragelser og hændelser lider. I stedet: behold de korte dokumenter, folk bruger, og giv hvert en ejer.
- **At springe uddannelse over.** VersionOne-fundet i Wikipedia-artiklen nævner utilstrækkelig uddannelse som den hyppigst nævnte årsag til mislykkede implementeringer. I stedet: uddan teams og ledere før og under forandringen.
- **At sætte et medlem af udviklingsteamet i product owner-rollen.** Artiklen opregner det som en faldgrube. I stedet: vælg en, der repræsenterer forretningen og har tid til at beslutte.
- **At skalere ved at kopiere et rammeværk.** Et stort rammeværk indført uden forståelse tilføjer proces og bremser teams. I stedet: start med det problem, I har, og adoptér kun det, der hjælper (se Emne 1.8 — Skalering af agilitet).
- **At jagte en agilitetsscore.** Teams optimerer efter målet. I stedet: følg resultater som gennemløbstid, releasefejl og tid til at genoprette servicen.
- **At holde udvikling og drift adskilt.** Leveranceteamet sender, og driftsteamet arver. I stedet: bring dem ind i fælles planlægning, gennemgange og hændelseslæring (se Emne 5.2 — DevOps).

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Kontinuerlig softwarelevering | Arbejde leveres i store releases | Nogle teams leverer i korte cyklusser | Teams deler en fælles leveringskadence og en definition of done | Gennemløbstid og releaseresultater måles og gennemgås | Releaserytmer koordineres på tværs af teams og leverandører |
| Ingeniørpraksisser | Test og builds er for det meste manuelle | Nogle teams har automatiserede tests og builds | En fælles pipeline kører tests ved hver ændring | Testdækning og fejlrater spores, og huller rettes | Pipelines og praksisser forbedres på tværs af teams ud fra fælles evidens |
| Backlog og prioritering | Anmodninger kommer pr. mail og ad hoc | Teams holder deres egne backlogs | Hvert team har én ordnet backlog, der omfatter servicearbejde | Backlogflow og alder gennemgås med interessenter | Prioriteter afstemmes på tværs af teams, kunder og leverandører |
| Læring og tilpasning | Gennemgange følger kun større fejl | Nogle teams holder retrospektiver | Alle teams holder jævnlige retrospektiver og registrerer aktioner | Aktioner spores til afslutning, og effekter tjekkes | Erfaringer bevæger sig mellem teams og ind i politik uden central styring |

## Tjekliste

- [ ] Teamet kan sige, hvilken agil metode eller hvilke praksisser det bruger, og hvorfor det valgte dem.
- [ ] Arbejdet er sorteret i prædiktive og adaptive slags, med en angivet tilgang for hver.
- [ ] Automatiserede tests kører ved hver ændring, og et fejlende build stopper linjen.
- [ ] Vores definition of done omfatter overvågning, supportnoter og en afprøvet tilbagerulning.
- [ ] Hvert team har én ordnet backlog, der omfatter serviceforbedringer og fejl.
- [ ] Runbooks og servicebeskrivelser har ejere og gennemgangsdatoer.
- [ ] Retrospektiver holdes i en jævn rytme, og hvert slutter med én aktion med en ejer.
- [ ] Teams og ledere har fået uddannelse i den arbejdsmåde, vi beder dem om.
- [ ] Vi ved, hvilken evidens revisorer har brug for, og hvordan vores værktøjer leverer den.
- [ ] Resultatmål, som gennemløbstid og tid til at genoprette servicen, gennemgås jævnligt.

## AI-prompts

**Formål: at kortlægge jeres nuværende praksisser mod almindelige agile praksisser og finde huller.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Formål: at udarbejde en definition of done, der omfatter drift.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede evidens til en revisor fra jeres agile værktøjer.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Formål: at planlægge et retrospektiv om, hvordan jeres team adopterer agile praksisser.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [scrum](../../../../skills/scrum/SKILL.md): brug den til at opsætte eller gennemgå et Scrum-teams roller, events og artefakter.
- [kanban](../../../../skills/kanban/SKILL.md): brug den til at designe en visuel tavle med grænser for igangværende arbejde til et service- eller driftsteam.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): brug den til at gennemgå eller adoptere ingeniørpraksisser som testdrevet udvikling og kontinuerlig integration.
- [user-story](../../../../skills/user-story/SKILL.md): brug den til at skrive user stories med acceptkriterier, der omfatter driftsbehov.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at køre et retrospektiv, der ender med én ændring med en ejer.

## Vigtigste kilder

- **Manifesto for Agile Software Development** og **Principles behind the Agile Manifesto** (agilemanifesto.org): den primære erklæring af værdier og principper.
- **Agile software development** (Wikipedia): en bred oversigt over historie, metoder, praksisser, adoption og kritik med mange citerede kilder.
- **Agile Glossary** (Agile Alliance): definitioner af agile praksisser og begreber, vedligeholdt af det fællesskab, der voksede ud af manifestet.

## Referencer

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
