# Skalering af agilitet

**At skalere agilitet betyder at koordinere mange teams, services og leverandører uden at miste de korte feedbackløkker, der fik agil til at virke, og den største risiko er at tilføje lag af proces, før man ved, hvilket problem man løser.**

## Hvorfor det betyder noget

Et enkelt agilt team på op til ti personer kan tale sammen hver dag. En reel service involverer som regel flere: flere leveranceteams, en driftsgruppe, en servicedesk, sikkerhed, et netværksteam og leverandører. Når mange gruppers arbejde skal passe sammen, er ét teams daglige samtale ikke nok, og nye problemer opstår. Prioriteter støder sammen, afhængigheder bremser arbejdet, og hvert team forbedrer sin egen del, mens helheden ikke bliver bedre.

Flere rammeværker påstår at løse dette. De adskiller sig i størrelse, pris og filosofi, og de vækker stærke meninger. Nogle organisationer adopterer et stort rammeværk som et program og bruger år på udrulningen. Andre skalerer ved at fjerne barrierer og beholde et lille sæt regler. Den ærlige position, støttet af [Wikipedia-artiklen om agil softwareudvikling](https://en.wikipedia.org/wiki/Agile_software_development), er, at meningerne om skaleringsrammeværkers effektivitet er delte, og evidensen er begrænset.

For folk i IT-servicestyring (ITSM) betyder skalering noget, fordi ITIL allerede virker i stor skala. Det beskriver et serviceværdisystem, der forbinder mange praksisser og parter (se Emne 2.3 — ITILs serviceværdisystem). Spørgsmålet, dette emne hjælper med, er, hvordan man kombinerer de to: hvordan man koordinerer mange agile teams og samtidig beholder de servicestyringspraksisser, der beskytter brugerne, og uden at bygge et andet lag bureaukrati oven på det første.

## Kernebegreber

### Hvorfor ét team er anderledes end mange

Wikipedia-artiklen om agil softwareudvikling rapporterer, at skalering giver udfordringer, når et projekt involverer mere end omkring 20 udviklere, eller når teams er spredt over lokationer. Der findes strategier og rammeværker til disse tilfælde, men artiklen bemærker modstridende synspunkter om, hvorvidt de passer til definitionen af agil.

Tre problemer gentager sig, når man tilføjer teams:

- **Afstemning:** teams har brug for en fælles retning og konsistente prioriteter, ellers optimerer de forskellige ting.
- **Afhængigheder:** arbejde i ét team venter på et andet, og ventetiderne mangedobles, efterhånden som antallet af teams vokser.
- **Integration:** outputtet fra mange teams skal komme sammen til noget, der virker som en service, og jo senere man tester det, jo dyrere er overraskelserne.

### Fire velkendte tilgange

Følgende tabel opsummerer fire navngivne tilgange. Opsummeringerne bygger på Wikipedia-artiklerne og rammeværkernes ejeres egne sider, som de er læst til denne vejledning; tjek aktuelle versioner ved kilderne, før du stoler på detaljer.

| Tilgang | Ophavsmænd eller ejer | Hovedidé | Størrelse og form |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Først beskrevet i Dean Leffingwells bog *Scaling Software Agility* fra 2007; materialer udgives af Scaled Agile, Inc. | Et sæt organisations- og arbejdsgangsmønstre, der trækker på agil, lean produktudvikling og systemtænkning | Konfigurationer fra team- og programniveau (Agile Release Trains) op til store løsninger og porteføljer |
| **Large-Scale Scrum (LeSS)** | Craig Larman og Bas Vodde | Skalér selve Scrum: én Product Owner og én Product Backlog for ét produkt, mange tværfaglige featureteams, med så få ekstra roller og artefakter som muligt | LeSS til omkring to til otte teams; LeSS Huge til flere, med Requirement Areas på flere teams hver |
| **Disciplined Agile (DA)** | Scott Ambler og Mark Lines; købt af Project Management Institute (PMI) i august 2019 | Et værktøjssæt af procesmål og muligheder, der hjælper et team med at vælge sin egen arbejdsmåde i kontekst | Hybrid og kontekstfølsom, med flere livscyklusser og et lag for virksomheden |
| **Scrum@Scale og andre** | Nævnt sammen med SAFe i Wikipedia-artiklen | Yderligere rammeværker til at koordinere flere Scrum-teams | Se ejernes sider |

### SAFe i flere detaljer

Wikipedia-artiklen siger, at SAFe først blev formelt beskrevet i 2007, med en første udgave i 2011 og version 6.0 i marts 2023. For version 5.1 opregner den fire konfigurationer: Essential SAFe (team- og programniveau), Large Solution SAFe, Portfolio SAFe og Full SAFe. Artiklen opregner også ti principper, herunder at anlægge et økonomisk syn og anvende systemtænkning.

SAFe har trukket åben kritik til sig, som artiklen registrerer. Thoughtworks argumenterede for, at top-down-kontrol skaber spild, Ken Schwaber kritiserede det i et indlæg i 2013, og Jeff Gothelf argumenterede i 2021 for, at SAFe ikke er agilt. Kritikere kalder det hierarkisk og ufleksibelt og siger, at det kan give en organisation et skin af agilitet, mens de gamle processer beholdes. Tilhængere værdsætter dets fælles ordforråd og dets struktur til store organisationer. Læs begge sider, før du beslutter.

### LeSS: skalér ved at fjerne

Larman og Vodde beskriver LeSS som Scrum anvendt på mange teams, der arbejder på ét produkt. Det tilføjer intet lag oven på Scrum. Ifølge rammeværkets egen introduktion styrer én Product Owner én Product Backlog, og teamene producerer ét leveringsklart produkt i en fælles Sprint. LeSS udtrykker ideen "mere med mindre": færre roller, artefakter og regler giver mere ansvarlige teams. For den underliggende metode, se Emne 1.4 — Leveranceprognoser og planlægningsmålinger.

### Disciplined Agile: vælg din arbejdsmåde

Wikipedia-artiklen om Disciplined Agile Delivery beskriver et menneske-først, hybridt værktøjssæt, der dækker hele leveringslivscyklussen. Det understøtter seks livscyklusser og beskriver 21 procesmål. Tilgangen er at hjælpe teams med at vælge praksisser, der passer til deres situation, i stedet for at foreskrive ét rammeværk. Artiklen bærer en vedligeholdelsesmeddelelse om, at den måske læner sig for meget op ad kilder tæt på emnet.

### Scrum of Scrums og enkel koordinering

Før du adopterer et rammeværk, så overvej de enkleste værktøjer. Et "scrum of scrums" samler repræsentanter for flere teams for at dele fremdrift og løse afhængigheder. Fælles kvartalsvis planlægning, en fælles backlog for et produkt og et jævnligt møde mellem teamledere er andre lette muligheder. Mange organisationer skalerer godt nok med disse.

### Skalering i en serviceorganisation

I en IT-organisation kan teams organiseres på flere måder, og valget påvirker, hvor godt agil skalerer:

| Organisation | Hvordan teams er organiseret | Effekt på skalering |
|---|---|---|
| **Efter komponent** | Et team pr. teknisk lag eller system | Funktioner kræver flere teams, så afhængighederne er mange |
| **Efter funktion eller produkt** | Tværfaglige teams, der ejer et kundevendt udsnit | Færre afhængigheder; kræver fælles standarder for platforme |
| **Efter service** | Et team pr. service, der ejer sin bygning og drift | Tæt på servicestyring; kræver en måde at håndtere fælles platforme på |
| **Platform plus strøm** | Teams, der leverer en platform, og teams, der bruger den | Kræver klare serviceaftaler mellem dem |

Intet mønster er bedst for alle. At gå fra komponentteams til teams organiseret omkring produkter eller services er et almindeligt skridt, og det er svært at gennemføre, fordi det ændrer, hvem der rapporterer til hvem.

### Hvad forskning og kritik siger

Artiklen om agil softwareudvikling siger, at den empiriske evidens for agile metoder generelt er begrænset og mindre end afgørende. For skaleringsrammeværker tilbyder de konsulterede kilder mest meninger og leverandørmateriale. Behandl enhver påstand om målt forbedring med forsigtighed, bed om evidensen bag den, og afprøv ethvert rammeværk på en lille del af jeres organisation først.

## God praksis

1. **Start med problemet, ikke rammeværket.** Navngiv, hvad der går galt: langsomme afhængigheder, modstridende prioriteter, sen integration. Vælg den letteste tilgang, der adresserer det, og adoptér mere kun hvis den kommer til kort.
2. **Prøv den enkleste koordinering først.** Fælles planlægning, et scrum of scrums og en fælles backlog for hvert produkt løser mange problemer til små omkostninger. Tilføj struktur først, når disse holder op med at virke.
3. **Organisér teams omkring værdi.** Foretræk teams, der ejer et produkt eller en service fra ende til anden, med evnerne til at bygge og drive den. Det mindsker overdragelser og afhængigheder og passer med, hvordan ITIL tænker på services (se Emne 2.6 — Serviceværdikæden).
4. **Hold én ordnet liste pr. produkt.** At have én produktbacklog med én ansvarlig ejer, som LeSS anbefaler, fjerner meget af konflikten mellem teams. Hvor det ikke er muligt, så gør rækkefølgen af prioriteter på tværs af teams synlig.
5. **Planlæg sammen i en jævn rytme.** Saml teams og nøgleinteressenter hver få måneder for at afstemme mål, afhængigheder og risici. Hold begivenheden kort og evidensbaseret, og undgå at gøre den til en forhandling om detaljerede planer.
6. **Integrér kontinuerligt.** Test alle teams output sammen så ofte som muligt, helst hver dag. Sen integration er den hyppigste grund til, at store programmer overrasker deres sponsorer (se Emne 1.6 — Extreme Programming).
7. **Gør afhængigheder synlige, og reducér dem.** List, hvilke teams der venter på hvilke, og tæl ventetiderne. Reducér dem ved at ændre teamgrænser, dele færdigheder eller bygge fælles platforme med klare grænseflader.
8. **Definér serviceaftaler mellem teams.** Hvor ét team leverer en platform eller service til et andet, så aftal, hvad der forventes: tilgængelighed, respons, supporttider og hvordan man beder om ændringer (se Emne 3.7 — Styring af serviceniveauer).
9. **Tilpas, og skriv ned, hvad I ændrede.** Uanset hvilket rammeværk I adopterer, registrér hvilke dele I følger, hvilke I udelader, og hvorfor. Ærlige betegnelser forhindrer, at en hybrid bedømmes mod et rammeværk, den aldrig havde til hensigt at følge.
10. **Pilotér, før I ruller ud.** Prøv tilgangen med nogle få teams, mål de resultater, I bekymrer jer om, og lær. Udvid den først, når piloten viser en fordel, I kan beskrive.
11. **Hold governance let og baseret på resultater.** Bed om evidens som leveringsflow, hændelsestendenser og brugerfeedback, og ikke om statusrapporter, som hvert team skriver i et forskelligt format (se Emne 5.7 — Governance, risiko og compliance).
12. **Gennemgå strukturen jævnligt.** Hold en gennemgang en eller to gange om året for at spørge, om teamgrænser, roller og ceremonier stadig tjener arbejdet. Strukturer, der var rigtige til 30 personer, kan være forkerte til 300.

## Spørgsmål til diskussion i teamet

**Hvilket problem forventer vi, at skalering skal løse, og hvordan ved vi, at det er løst?**

Bed folk om at navngive smerten: sen integration, modstridende prioriteter, lange ventetider på andre teams. Skriv hver ned med et nyligt eksempel. Et rammeværk valgt uden et angivet problem er en løsning på udkig efter et problem. Facilitatoren kan spørge, hvad den enklest mulige rettelse ville være for hvert problem, og hvilken evidens der ville vise, at den virkede.

**Hvilke andre teams venter vi mest på, og hvor længe venter vi?**

Kortlæg afhængighederne på en væg, og tilføj den typiske ventetid for hver. Teams, der troede, de var uafhængige, bliver ofte overraskede. Spørg, hvilke afhængigheder der er reelle, og hvilke der kommer fra historiske teamgrænser. Vælg én afhængighed, der skal fjernes, enten ved at ændre, hvordan teams er organiseret, eller ved at dele færdigheder.

**Hvem afgør rækkefølgen af arbejdet på tværs af vores teams, og hvordan finder vi ud af det?**

Følg en nylig prioritetskonflikt fra start til afgørelse. Se efter eskaleringer, møder og uformelle aftaler. Spørg, om en enkelt ansvarlig person, som i LeSS, kunne træffe beslutningen. Overvej, hvad der ville gå tabt eller vindes. Et godt resultat er en klar vej til at afgøre konflikter, selv om det ikke er en ny rolle.

**Hvad ville et rammeværk som SAFe, LeSS eller Disciplined Agile give os, som vi ikke kan få billigere?**

Bed nogen, der har læst om hvert, om at forklare det i nogle få sætninger, og bed om den stærkeste kritik. Wikipedia-artiklen om SAFe opregner flere, og rammeværkernes ejeres sider opregner fordele. En facilitator bør holde diskussionen praktisk: hvad ville vi gøre mandag, hvis vi adopterede det, og hvem skulle ændre hvad? Beslut, hvad I vil prøve, hvis noget, og hvad I beholder som det er.

**Hvordan tester vi, at arbejdet fra alle vores teams passer sammen, og hvor ofte?**

Tæl dagene mellem en ændring fra ét team og dens første test sammen med alle andres ændringer. Længere mellemrum betyder større overraskelser. Spørg, hvad der forhindrer daglig integration, som miljøer, testdata eller ejerskab. Vælg én barriere, der skal fjernes.

**Hvilke af vores kontroller gælder for alle teams på samme måde, og hvilke bør afhænge af risikoen?**

List standardkontroller, som gennemgange, godkendelser og rapportering. Spørg, hvilke af dem der justeres for arbejde med lav risiko. Ensartede kontroller er lette at administrere og langsomme for alle. Kontroller, der afhænger af risiko, kræver klare kriterier. Vælg én kontrol, der skal gennemgås.

## I praksis: et agilt ITIL-eksempel

En stor detailbanks IT-gruppe har 14 leveranceteams og en central driftsgruppe. Hvert team har adopteret Scrum, men bankens kunder ser lidt forbedring. Releases til mobilbankappen kræver ændringer fra fem teams, og hver release koordineres af et programkontor, der sporer afhængigheder i et regneark. En nylig release blev forsinket tre uger, fordi to teams i sidste øjeblik opdagede, at deres ændringer var uforenelige.

En arkitekt og driftschefen gennemfører en undersøgelse af seks måneders releases. De finder, at de fleste forsinkelser kommer fra sen integration og fra uklare prioriteter mellem de teams, der deler en backlog af mobilfunktioner. De overvejer at adoptere et stort rammeværk, men beslutter at starte småt. De opretter en enkelt backlog til mobilappen med én ansvarlig product owner og slår de fem teams planlægning sammen til en fælles session hver sjette uge. De opsætter en fælles pipeline, der bygger og tester alle teams' ændringer sammen hver nat, og de tilføjer driftsgruppen til den fælles planlægningssession.

Efter to kvartaler falder antallet af uforeneligheder i sidste øjeblik, og releases kommer hver anden uge. Nogle problemer fortsætter. Product owner kæmper med mængden af anmodninger og bruger det meste af sin tid på voldgift, og to teams afhænger stadig af et centralt databaseteam med en lang kø. Banken aftaler at gøre databaseteamets kø synlig i den fælles planlægning og at prøve en selvbetjeningsvej til almindelige databaseændringer. Den beslutter også at udskyde enhver rammeværksbeslutning, til et andet produktområde har prøvet den samme tilgang.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bærer det meste af skaleringens byrde: fælles planlægning, fælles pipelines og aftaler med naboer. Arbejd på at reducere afhængigheder ved kilden, ved at lære færdighederne i det næste team eller ved at bygge grænseflader, der ikke kræver koordinering. Deltag i planlægningsbegivenheder med reel information om fremdrift og risiko.

### Service- og driftsteams

Driftspersonale bør være en del af planlægningen fra begyndelsen, da mange afhængigheder på tværs af teams er operationelle: miljøer, adgang, overvågning og support. Bring servicedata med til planlægningssessionen, og aftal serviceniveauer med de teams, der afhænger af jer. Argumentér for platforme, der giver leveranceteams selvbetjening.

### Ledelse og governance

Ledere former den struktur, der afgør, hvor godt skalering virker. Stå imod fristelsen til at købe et rammeværk som erstatning for at beslutte, hvad organisationen vil være. Bed om en klar angivelse af problemet, en pilot og evidens. Hold rapporteringen let, og accepter, at strukturændringer kan være ubehagelige for ledere.

### Kunder og brugere

Kunder bør se en sammenhængende service og ikke sømmene mellem teams. Forvent ét kontaktpunkt for et produkt og en klar vej for anmodninger. Fortæl product owner, hvad der betyder mest, og forvent, at svaret indeholder afvejninger mellem konkurrerende krav.

## Almindelige fejlmønstre

- **At købe et rammeværk for at undgå en beslutning.** En organisation adopterer et rammeværk i håb om, at det løser uenigheder om prioriteter. I stedet: beslut, hvem der har autoritet over prioriteter, og se derefter, hvilket rammeværk, hvis nogen, der hjælper.
- **At kopiere et diagram.** Roller og møder tilføjes uden at forstå grundene. I stedet: adoptér kun de elementer, der adresserer et navngivet problem.
- **At tilføje lag.** Koordinatorer, programkontorer og udvalg mangedobles, mens teams mister autonomi. I stedet: fjern afhængigheder, så der er mindre at koordinere.
- **Sen integration.** Teams integrerer i slutningen af en lang cyklus. I stedet: integrér og test alle ændringer sammen dagligt.
- **Ensartede kontroller.** Hvert team følger den samme tunge proces uanset risiko. I stedet: baser kontroller på risiko, og gør veje med lav risiko hurtige.
- **At ignorere driften.** Planlægningen omfatter udviklere og produktchefer, men ikke driftspersonale. I stedet: inkludér driften i fælles planlægning, og del servicedata.
- **At bedømme en hybrid mod rammeværket.** Kritikere siger, at det ikke er rammeværket, og tilhængere siger, at det er. I stedet: giv jeres tilgang sit eget navn, og beskriv den.
- **Aldrig at gense strukturen.** Grænser tegnet ved 30 personer består ved 300. I stedet: gennemgå team- og rollestruktur mindst årligt.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Afstemning og prioriteter | Hvert team sætter sine egne prioriteter | Nogle teams deler en backlog eller mødes for at afstemme | Produkter har én ordnet backlog og fælles planlægning i en jævn rytme | Afstemning tjekkes mod resultater, og afhængigheder måles | Prioriteter justeres løbende på tværs af teams, kunder og leverandører |
| Afhængigheder | Ventetider på andre teams er ustyrede | Nogle teams lister deres afhængigheder | Afhængigheder er synlige, og der findes aftaler mellem teams | Ventetider for afhængigheder måles og reduceres | Teamgrænser omformes ud fra evidens for at fjerne afhængigheder |
| Integration | Integration sker til sidst | Nogle teams integrerer oftere | Fælles pipelines integrerer og tester alles ændringer hyppigt | Integrationsfejl og deres årsager spores og rettes | Integrationsmiljøer og tests deles og forbedres på tværs af teams |
| Governance og struktur | Kontroller er ensartede og langsomme | Nogle veje med lav risiko findes | Kontroller varierer med risiko med klare kriterier | Resultater og kontrollernes effektivitet gennemgås | Struktur og kontroller gennemgås og justeres rutinemæssigt i hele organisationen |

## Tjekliste

- [ ] Vi kan angive i én sætning det problem, skalering skal løse.
- [ ] Vi har kortlagt afhængighederne mellem vores teams og kender den typiske ventetid for hver.
- [ ] Hvert produkt har én ordnet backlog med én ansvarlig ejer.
- [ ] Teams og nøgleinteressenter planlægger sammen i en jævn rytme.
- [ ] Alle teams' output bygges og testes sammen mindst dagligt.
- [ ] Teams, der leverer platforme eller services til andre, har skriftlige serviceaftaler.
- [ ] Driftspersonale deltager i planlægning på tværs af teams.
- [ ] Kontroller varierer med risiko, og vejen med lav risiko er hurtig.
- [ ] Ethvert rammeværk, vi adopterer, er først pilotereret i lille skala.
- [ ] Vi har skrevet ned, hvilke dele af et rammeværk vi følger, og hvilke vi ikke gør.
- [ ] Strukturen af teams og roller gennemgås mindst én gang om året.

## AI-prompts

**Formål: at kortlægge afhængigheder mellem teams ud fra en beskrivelse af nyligt arbejde.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Formål: at sammenligne skaleringsmuligheder mod et angivet problem.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at planlægge en fælles planlægningssession for flere teams.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at skrive en aftale mellem et platformsteam og de teams, der bruger den.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): brug den til at forstå rollerne, eventsene og niveauerne i SAFe og til at bedømme, hvilke dele du har brug for.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): brug den til at anvende Scrum på flere teams, der arbejder på ét produkt.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): brug den til at vælge praksisser efter procesmål for din kontekst.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): brug den som en let måde at koordinere nogle få teams på, før du adopterer et rammeværk.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): brug den til at afgøre, hvordan et antal produkter og initiativer udvælges og finansieres.

## Vigtigste kilder

- **Scaled agile framework** (Wikipedia): en oversigt over historien, konfigurationerne og kritikken af SAFe med henvisninger.
- **Introduction to LeSS** (less.works): ophavsmændenes korte beskrivelse af Large-Scale Scrum og dets idé om "mere med mindre".
- **Disciplined agile delivery** (Wikipedia): en opsummering af værktøjssættet, dets livscyklusser og mål.
- **Agile software development** (Wikipedia): afsnittet om storskala-, offshore- og distribueret arbejde og diskussionen af modstridende synspunkter om skaleringsrammeværker.

## Referencer

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
