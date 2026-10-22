# Extreme Programming

**Extreme Programming (XP) är den agila metod som är mest specifik om ingenjörsarbetssätt, och dess vanor att testa först, integrera kontinuerligt och dela ägandet av koden är det som gör täta ändringar av en levande tjänst säkra.**

## Varför detta är viktigt

Täta ändringar är målet för kontinuerlig leverans och oron för tjänstehantering. Sättet att förena dem är inte fler godkännandemöten utan en starkare förmåga att veta att en ändring fungerar innan den når användarna. Extreme Programming är den agila metod som säger mest om hur man bygger den förmågan: skriv tester först, integrera flera gånger om dagen, håll designen enkel och dela ansvaret för koden.

Många team tar Scrums möten och tavlor och lämnar ingenjörsarbetssätten. Resultatet är ett team som planerar i sprintar men släpper med rädsla. XP:s arbetssätt är den saknade halvan. De betyder något för alla som måste driva resultatet, eftersom en tjänst byggd med automatiserade tester, små releaser och delad kunskap är lättare att supporta än en byggd av några få personer i stora, otestade satser.

XP ber också organisationen om något som lätt förbises: en hållbar takt, ett helt team med alla nödvändiga färdigheter och en kund som verkligen är tillgänglig. Det är villkor i arbetsmiljön, inte bara programmerares vanor. Det här ämnet förklarar metoden, beläggen om dess begränsningar och hur dess arbetssätt hänger ihop med ITIL-arbetssätt som ändringsmöjliggörande, releasehantering och kunskapshantering.

## Centrala begrepp

### Var XP kom ifrån

Kent Beck utvecklade XP när han arbetade med Chrysler Comprehensive Compensation System (C3), ett löneprojekt. Enligt [Wikipedia-artikeln om Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming) blev Beck projektledare i mars 1996 och förfinade metoden där, med Ward Cunningham som en stor inspirationskälla och Ron Jeffries som kom för att coacha teamet. Hans bok *Extreme Programming Explained* utkom i oktober 1999. Chrysler avbröt C3-projektet i februari 2000 efter att Daimler-Benz förvärvat företaget.

Artikeln påpekar att många XP-arbetssätt inte var nya. Den nämner testförst-utveckling i NASA:s Project Mercury i början av 1960-talet. XP:s drag var att ta goda arbetssätt till "extrema" nivåer: om testning är bra, testa hela tiden; om granskning är bra, granska ständigt genom att arbeta i par. Beck och Cunningham var bland de 17 personer som skrev det agila manifestet (se Ämne 1.1 — Det agila manifestet).

### De fem värderingarna

XP anger fem värderingar:

| Värdering | Vad den betyder | I tjänstearbete |
|---|---|---|
| **Kommunikation** | Bygg gemensam förståelse mellan utvecklare, användare och kunder, främst genom att prata och hålla designer enkla | Utvecklare och driftpersonal pratar om hur en release kommer att bete sig innan den släpps |
| **Enkelhet** | Gör det enklaste som fungerar och bygg inte för spekulativa framtida behov | Färre rörliga delar att övervaka, skydda och förklara |
| **Återkoppling** | Lär snabbt av tester, av kunder och av teamets egna skattningar | Snabba testresultat och produktionsövervakning förkortar tiden att lära |
| **Mod** | Refaktorera, kasta föråldrad kod och uthärda svåra problem | Att avveckla en gammal komponent som ingen vågar röra |
| **Respekt** | Respekt för lagkamrater och för sitt eget arbete | Skuldfri granskning efter fel och rättvis jourbelastning |

Artikeln noterar att respekt lades till i andra upplagan av *Extreme Programming Explained*, efter de ursprungliga fyra.

### Arbetssätten

Artikeln om XP:s arbetssätt grupperar tolv arbetssätt i fyra uppsättningar. De förstås bäst som ett system som stöder sig självt.

| Grupp | Arbetssätt | Syfte |
|---|---|---|
| **Finmaskig återkoppling** | Parprogrammering, planeringsspelet, testdriven utveckling, hela teamet | Få återkoppling på minuter eller dagar, inte månader |
| **Kontinuerlig process** | Kontinuerlig integration, designförbättring (refaktorering), små releaser | Håll programvaran alltid i ett släppbart skick |
| **Delad förståelse** | Kodstandard, kollektivt kodägande, enkel design, systemmetafor | Låt vem som helst i teamet ändra vilken del som helst på ett säkert sätt |
| **Programmerares välbefinnande** | Hållbar takt | Håll människor utvilade och effektiva i åratal |

En kort beskrivning av de viktigaste:

- **Parprogrammering:** två personer arbetar med en uppgift vid en arbetsstation, en skriver och en granskar, och de byter partner ofta.
- **Testdriven utveckling (TDD):** programmeraren skriver först ett underkänt test och skriver sedan precis så mycket kod som behövs för att få det att gå igenom.
- **Kontinuerlig integration (CI):** utvecklare slår ihop sitt arbete i det gemensamma förrådet var några timmar, så att integrationsproblem dyker upp tidigt.
- **Små releaser:** leverera fungerande programvara i täta, små steg så att kunder kan se framsteg och reagera.
- **Kollektivt kodägande:** vem som helst i teamet får ändra vilken del som helst av koden.
- **Hållbar takt:** undvik regelbunden övertid och tillåt aldrig övertid två veckor i följd.

### Kontroverser och begränsningar

Artikeln redovisar flera kritiska synpunkter. Matt Stephens och Doug Rosenberg hävdade i en bok från 2003 att XP:s arbetssätt beror på varandra, så att bara införa några undergräver processen. Kritiker ifrågasatte också parprogrammering som det normala arbetssättet, bristen på stor design i förväg, den kund som finns på plats som en enskild svag punkt och informella ändringsbegäran som leder till omarbete och smygande omfattning. P. McBreen samt Boehm och Turner skrev också kritiska bedömningar. Artikeln tillägger att agila yrkesverksamma betraktar många av dessa invändningar som missförstånd.

När det gäller skala säger artikeln att Industrial XP, som introducerades 2004, utvidgade XP till större och distribuerade team med 23 arbetssätt. Den rapporterar också ett påstående, markerat som i behov av källa, att ThoughtWorks hade rimlig framgång med distribuerade XP-projekt med upp till sextio personer. Läs det påståendet med försiktighet, och se Ämne 1.8 — Skala agilt för den bredare diskussionen.

Artikeln diskuterar inte driftsättning eller produktionsövervakning utöver kontinuerlig integration och små releaser. XP säger lite om att driva programvara. Du tar med det från tjänstehantering, och du använder XP för att göra överlämningen mindre riskabel.

### XP och ITIL:s syn på ändring

ITIL:s ändringsmöjliggörande (se Ämne 3.4 — Ändringsmöjliggörande) handlar om att se till att ändringar bedöms, godkänns och schemaläggs så att risken kontrolleras. XP kontrollerar risk på ett annat ställe: i koden, genom tester, små steg och delad kunskap. En ändring som är liten, automatiskt testad, integrerad och lätt att återställa är en ändring med lägre risk enligt vilken rimlig bedömning som helst. De två synsätten passar ihop när belägg från XP:s arbetssätt används i ändringsbeslutet.

## Bästa praxis

1. **Inför arbetssätten som en uppsättning.** Kritikernas poäng att XP:s arbetssätt stöder varandra är en användbar varning. Testning utan integration, eller integration utan små steg, ger mindre än summan. Inför dem tillsammans där ni kan, och lär er vilka av dem de andra beror på.
2. **Skriv testet först för ändringar som betyder något.** För ett nytt beteende eller en felrättning, skriv ett underkänt test som visar problemet och rätta sedan. Testet stannar kvar som ett skydd mot att problemet återkommer, vilket är särskilt användbart för fel som orsakat incidenter.
3. **Integrera flera gånger om dagen.** Håll grenar kortlivade och bygg och testa automatiskt vid varje sammanslagning. Ett trasigt bygge är teamets första prioritet.
4. **Släpp i små steg.** Varje liten release har mindre risk och är lättare att förstå och återställa. Sikta på det kortaste intervall er pipeline säkert klarar, och förkorta det när tilliten växer.
5. **Refaktorera kontinuerligt.** Förbättra designen lite varje dag i stället för att spara det till en omskrivning. Testsviten är det som gör detta säkert.
6. **Håll designen så enkel den kan vara.** Bygg det som behövs nu och ta bort det som inte används. Ett mindre system har mindre att övervaka, uppdatera och förklara.
7. **Dela ägandet av koden.** Låt vilken teammedlem som helst ändra vilken del som helst, med stöd av tester och gemensamma standarder. Det minskar beroendet av några få experter, vilket också är en tillgänglighetsrisk för tjänsten.
8. **Arbeta i par med riskabelt eller obekant arbete.** Använd parning för knepiga ändringar, för introduktion och för att skugga jour. Betrakta det som ett verktyg för att sprida kunskap och fånga fel, och gör det inte till regel för varje uppgift.
9. **Håll en hållbar takt.** Planera arbetet så att övertid är sällsynt och inte upprepas vecka efter vecka. En trött jourhavande ingenjör är en tjänsterisk (se Ämne 1.2 — Agila principer om takten).
10. **Gör kunden till en del av teamet.** Hitta en verklig användare eller användarföreträdare som kan svara på frågor under arbetet. Kom ihåg kritiken att en person är en enskild svag punkt, så involvera mer än en röst.
11. **Skriv acceptanskriterier som tester där det är möjligt.** Gör kundens förväntningar till automatiserade kontroller som körs vid varje bygge. De dokumenterar då beteendet och skyddar det på samma gång.
12. **Inkludera driftkontroller i testerna.** Lägg till kontroller för övervakning, loggning och återställningsbeteende i pipelinen, så att driftberedskap verifieras vid varje ändring (se Ämne 3.5 — Release- och driftsättningshantering).

## Frågor att diskutera med teamet

**Hur vet vi att en ändring fungerar innan den når användarna, och hur lång tid tar det att veta?**

Följ de kontroller en ändring passerar mellan utvecklarens laptop och produktion. Räkna hur många som är automatiserade och hur lång tid var och en tar. Typiska svar omfattar ett manuellt test, en granskning och ett hopp. Fråga vilken kontroll som fångat flest problem och vilken som aldrig fångat något. Fortsätt med att välja en manuell kontroll att automatisera.

**Vem kan ändra vilka delar av vårt system, och vad händer när de personerna är borta?**

Lista komponenterna och de personer som förstår var och en. Komponenter med en person bakom sig är risker för tjänsten. Kollektivt ägande är XP:s svar, och det behöver tester och gemensamma standarder för att vara säkert. Fråga vad en person kunde lära en annan inom en månad. Facilitatorn kan fråga om semestrar eller sjukdom någonsin har försenat en rättning.

**Var skulle parning hjälpa oss mest, och var skulle det bara bromsa oss?**

Parprogrammering är kontroversiellt, så bjud in ärliga synpunkter. Fråga människor om den bästa och sämsta parning de gjort. Parning hjälper ofta med obekanta system, knepiga ändringar och introduktion. Den hjälper mindre med rutinarbete som en person kan göra bra. Kom överens om en situation att prova parning i under en månad, och hur ni ska bedöma det.

**Vad händer med vår kvalitet när vi är under press, och vad släpper vi först?**

Be om ett nyligt hårt slag och vad som hoppades över: tester, granskningar, dokumentation. Fråga vad som hände efteråt. Ofta kom det överhoppade arbetet tillbaka som incidenter. Poängen är att märka mönstret och att i förväg besluta vilka arbetssätt som skyddas. Undvik skuld, och koppla svaret till den hållbara takten.

**Hur ofta slår vi ihop vårt arbete, och vad får oss att vänta?**

Fråga hur länge en typisk gren lever och vad som håller upp den. Långa grenar speglar vanligtvis stora ändringar, långsamma granskningar eller ett opålitligt bygge. Var och en kräver sin egen åtgärd. Fråga vad teamet kunde göra för att göra sammanslagning inom några timmar till det normala. Välj ett hinder att ta bort.

**Har vi en kund eller användare tillgänglig för teamet, eller gissar vi vad de vill ha?**

Fråga vem som svarar på frågor om vad användarna behöver, och hur lång tid det tar. Om svaret är en lång kedja, fråga vilken fråga som var dyrast att få fel. Kom ihåg XP:s egna kritiker: en enda kundföreträdare kan vara en flaskhals. Diskutera hur ni kan nå flera användare kort och ofta.

## I praktiken: ett agilt ITIL-exempel

Ett kollektivtrafikföretags digitala team på nio personer bygger och driver företagets reseplaneringsapp och ett flöde med realtidsdata om ankomster som används av andra utvecklare i staden. Teamet släpper varje månad efter en manuell testcykel på fyra dagar. När en release går fel tar en återställning en halv dag, så teamet är ovilligt att släppa oftare. Driftledaren, som också är den mest erfarna utvecklaren, besvarar de flesta samtal utanför arbetstid eftersom ingen annan vet hur flödet fungerar.

Teamet beslutar att införa några XP-arbetssätt tillsammans. Det sätter upp kontinuerlig integration som bygger och kör enhetstester vid varje sammanslagning. För varje fel som hittas i produktion skriver det ett underkänt test innan det rättar felet. Två utvecklare parar med driftledaren på flödesarbete en timme om dagen. Teamet lägger också till ett driftsättningssteg som kan växla tillbaka till föregående version på några minuter.

Efter fyra månader släpper teamet varje vecka. Testsviten fångar två regressioner före release som den manuella cykeln hade hittat först sista dagen. Tre utvecklare kan nu hantera de flesta flödessamtal. Inte allt fungerar: testsviten tar 25 minuter att köra, så utvecklare slår ihop mer sällan än avsett, och en felaktig ändring av ankomstflödet slinker igenom eftersom dess tester använde exempeldata som inte matchade ett verkligt gränsfall. Teamet flyttar de långsamma testerna till ett andra steg så att de första resultaten kommer inom fem minuter, och lägger till en övervakningskontroll på flödets utdata. De kommer också överens om att parning förblir ett verktyg för svåra problem och introduktion, inte en regel för varje uppgift.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam äger XP:s arbetssätt. Börja med dem som ger återkoppling snabbast: automatiserade tester och kontinuerlig integration. Betrakta er testsvit som en produkt som också används av driften. Den beskriver vad tjänsten ska göra och talar snabbt om när den slutar göra det.

### Tjänste- och driftteam

Driftpersonal kan använda XP-idéer för sitt eget arbete: infrastruktur- och konfigurationsändringar som testas innan de körs, små ändringar som integreras ofta och kunskap som delas i teamet genom parning och kollektivt ägande. Be leveransteamen om tester som täcker de fel ni ser i produktion, och erbjud incidenthistorik för att vägleda vad som testas.

### Ledning och styrning

Ledare möjliggör XP genom att skydda takten, betala för bygg- och testinfrastruktur och acceptera att kvalitet byggs in i arbetet och inte kontrolleras in efteråt. Be om belägg för säkerhet som kommer från pipelinen, som testresultat och releasehistorik, och kräv inte dubbla manuella belägg.

### Kunder och användare

Kunder har den mest direkta rollen i XP: de är en del av teamets återkopplingsslinga. Räkna med att bli ombedd att prova små releaser, svara snabbt på frågor och säga vad som är viktigast den här veckan. I gengäld bör du se färre överraskningar och snabbare rättningar av problem du rapporterar.

## Vanliga orsaker till misslyckande

- **Att införa bara ritualerna.** Team tar stand-ups och tavlor och hoppar över tester och integration. Börja i stället med automatiserade tester och kontinuerlig integration, eftersom de ger den största avkastningen.
- **Att behandla parning som en regel.** Påtvingad parning på allt arbete frustrerar människor och bromsar rutinuppgifter. Använd i stället parning för svåra problem, introduktion och kunskapsöverföring, och granska hur det fungerar.
- **En testsvit som ingen litar på.** Långsamma eller opålitliga tester ignoreras. Håll i stället sviten snabb och rätta eller ta bort ostadiga tester omgående.
- **Kollektivt ägande utan standarder.** Vem som helst kan ändra vad som helst, och koden förfaller. Kombinera det i stället med gemensamma kodstandarder, granskning och automatiska kontroller.
- **En enda kundföreträdare.** En person blir flaskhalsen eller källan till partiskhet. Sprid i stället kontakten över flera användare och kontrollera beslut mot verkligt bruk.
- **Att hoppa över design helt.** Team refaktorerar upprepade gånger utan riktning. Håll i stället en lätt bild av arkitekturen och granska den med jämna mellanrum.
- **Övertid som norm.** Långa arbetsdagar urholkar kvalitet och orsakar incidenter. Planera i stället för en hållbar takt och behandla upprepad övertid som en signal att minska omfattningen.
- **Att ignorera driften.** XP säger lite om att driva programvara, och team antar att det täcks. Lägg i stället till driftkontroller i testerna och bjud in driftpersonal till planeringen.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Testning | Testning är manuell och sen | Vissa team har automatiserade enhetstester | Team skriver tester tillsammans med koden och kör dem vid varje ändring | Testresultat och undkomna fel följs och granskas | Teststrategi samordnas mellan tjänster och delas med driften |
| Integration och release | Integration är sällsynt och releaser är stora | Vissa team använder kontinuerlig integration | En gemensam pipeline bygger, testar och driftsätter varje ändring | Releasefrekvens och felfrekvens mäts och förbättras | Pipelines samordnas mellan team och leverantörer |
| Delat ägande och kunskap | Kunskap finns hos några få individer | Vissa team parar eller roterar arbete | Kollektivt ägande med standarder är normen | Kunskapsluckor följs och minskas | Kunskap flyter fritt mellan team och in i runbooks |
| Takt och välbefinnande | Övertid är rutin | Vissa team bevakar sin arbetsbörda | Hållbar takt är en uttalad policy | Jourbelastning och övertid mäts och granskas | Arbetsbördan balanseras mellan team utifrån gemensamma data |

## Checklista

- [ ] Teamet har kommit överens om vilka XP-arbetssätt det använder och har prövat dem tillsammans.
- [ ] Automatiserade tester körs vid varje ändring, och ett fallerande bygge rättas först.
- [ ] Varje produktionsfel får ett test som hade fångat det.
- [ ] Arbete slås ihop till den gemensamma grenen flera gånger om dagen.
- [ ] Releaser är små, och en återställning kan göras snabbt.
- [ ] Mer än en person kan ändra och supporta varje del av systemet.
- [ ] Parning används för svåra problem och introduktion, och dess effekt granskas.
- [ ] Övertid är sällsynt och upprepas inte vecka efter vecka.
- [ ] En användare eller användarföreträdare är tillgänglig för att svara på frågor under arbetet.
- [ ] Tester inkluderar kontroller för övervakning och återställningsbeteende.

## AI-prompter

**Syfte: göra en produktionsincident till ett test och en lista med lärdomar.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Syfte: bedöma hur säkert ert team kan släppa små ändringar.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Syfte: utforma ett månadslångt experiment med parning.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: kontrollera en definition av klart för driftberedskap.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## AI-färdigheter

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): använd för att granska eller införa XP-arbetssätt som parning, testdriven utveckling och kontinuerlig integration.
- [user-story](../../../../skills/user-story/SKILL.md): använd för att göra kundbehov till berättelser med acceptanskriterier som kan bli automatiserade tester.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): använd för att planera små, täta releaser och de kontroller som gör dem säkra.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att granska hur väl arbetssätten fungerar och välja en förändring.
- [runbook](../../../../skills/runbook/SKILL.md): använd för att göra kunskap som en person har till ett gemensamt, testat förfarande.

## Viktiga källor

- **Extreme programming** och **Extreme programming practices** (Wikipedia): en översikt över historia, värderingar, arbetssätt och kritik, med källhänvisningar.
- **Extreme Programming Explained** (Kent Beck): den ursprungliga redogörelsen för metoden; dess andra upplaga lägger till värderingen respekt.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP är en av de metoder vars upphovsmän skrev manifestet.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens och Doug Rosenberg, 2003): den mest kända kritiken, användbar för att pröva era egna antaganden.

## Referenser

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
