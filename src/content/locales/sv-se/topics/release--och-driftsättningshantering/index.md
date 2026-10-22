# Release- och driftsättningshantering

**Release- och driftsättningshantering får in ändringar i produktion på ett säkert sätt, och målet i en agil miljö är att göra releaser så rutinmässiga, automatiserade och återställningsbara att de slutar vara en händelse.**

## Varför detta är viktigt

Många organisationer behandlar fortfarande en release som ett stort, spänt tillfälle. Ett datum fastställs, ett fönster bokas, människor stannar sent och framgång mäts i om något gick sönder. Det mönstret producerar precis den risk det fruktar: ju fler ändringar som buntas i en release, desto svårare är det att förstå vad som gick fel och desto smärtsammare är en återställning.

DORA:s forskningsprogram beskriver alternativet. Dess sida om kontinuerlig leverans definierar arbetssättet som "förmågan att släppa ändringar av alla slag på begäran snabbt, säkert och uthålligt", och rapporterar att göra det väl förbättrar leveransprestanda och tillgänglighet och förknippas med lägre utbrändhet och högre arbetstillfredsställelse. Sidan varnar också för att driftsätta oftare utan att ändra processer och arkitektur tenderar att höja felfrekvensen och bränna ut team. Lärdomen är inte "släpp fortare" utan "bygg förmågan att släppa säkert, släpp sedan ofta".

Googles bok *Site Reliability Engineering*, i sitt kapitel om releaseteknik, framför en liknande poäng utifrån praxis: täta releaser innebär färre ändringar mellan versioner, så testning och felsökning blir enklare. Det här ämnet bygger på de två källorna, på guidens andra ändringsrelaterade ämnen och på allmänt använt ITIL-ordförråd som den här guiden inte kunde bekräfta mot ramverksägarens text. Betrakta källorna som starka, specifika och begränsade till de sammanhang de beskriver.

## Centrala begrepp

### Release och driftsättning

De två termerna förväxlas ofta. En vanlig skillnad, allmänt använd i tjänstehantering, är:

- En **release** är en version av en tjänst eller komponent som görs tillgänglig för användning. Det är ett beslut om vad användare ska få.
- En **driftsättning (deployment)** är handlingen att flytta en version till en miljö, som produktion.

Att skilja dem åt är kraftfullt. Ni kan driftsätta kod i produktion utan att slå på den för användare, och släppa den senare på ett kontrollerat sätt. Tekniker som funktionsbrytare (feature switches) bygger på denna uppdelning (se Wikipedias artikel om feature toggles).

### Kontinuerlig leverans och kontinuerlig driftsättning

DORA:s sida definierar **kontinuerlig leverans** som förmågan att släppa ändringar av alla slag på begäran snabbt, säkert och uthålligt. Den skiljer det från **kontinuerlig driftsättning**, vilket betyder att driftsätta varje ändring i produktion så snart som möjligt. DORA säger att team "kan och bör börja med kontinuerlig leverans" även om de aldrig inför kontinuerlig driftsättning. Beslutet om att släppa förblir ett affärsbeslut; kontinuerlig leverans gör det till ett val snarare än ett projekt.

### Vad forskningen rekommenderar

DORA-sidan listar arbetssätt som stöder kontinuerlig leverans:

| Arbetssätt | Vad DORA säger |
|---|---|
| **Testautomatisering** | Omfattande, pålitliga automatiserade testsviter, mestadels skapade och underhållna av utvecklare |
| **Driftsättningsautomatisering** | Driftsättningar helt automatiserade, utan behov av manuell åtgärd |
| **Trunkbaserad utveckling** | Färre än tre aktiva grenar, mycket kortlivade grenar, sällsynta kodlåsperioder |
| **Löst kopplade team och arkitektur** | Team kan testa och driftsätta på begäran utan att orkestrera med andra tjänster |
| **Andra arbetssätt** | Kontinuerlig integration, kontinuerlig testning, versionshantering för alla produktionsartefakter, hantering av testdata, övervakning och observerbarhet, proaktiva notifieringar, hantering av databasändringar, genomgripande säkerhet |

Sidan rapporterar att kontinuerlig leverans förknippas med högre kvalitet (mindre tid på omarbete eller oplanerat arbete), lägre utbrändhet och mindre driftsättningssmärta. Den säger också att elitteam som uppfyllde tillförlitlighetsmål i 2021 års rapport tre gånger så sannolika att ha en löst kopplad arkitektur som lågpresterande team. Den anger inga verktyg, målfrekvenser för driftsättning eller genomförandetidslinje, och den noterar att omvandlingar vanligen följer en "J-kurva", med ett dopp i effektivitet när automatiseringen ökar testkraven och teknisk skuld ackumuleras.

### Lärdomar från releasetekniskt arbete

SRE-bokens kapitel om releaseteknik beskriver en stor organisations angreppssätt:

- **Självbetjäning.** Team kör sina egna releaseprocesser. Releaser är "verkligt automatiska" och kräver ingenjörsmedverkan bara om problem uppstår.
- **Hög hastighet.** Täta releaser innebär färre ändringar mellan versioner, vilket gör testning och felsökning enklare.
- **Hermetiska byggen.** Byggen beror på kända verktygs- och biblioteksversioner, så att samma revision ger identiska resultat.
- **Genomdrivna policyer.** Åtkomstkontroller styr godkännanden, skapande av releaser och driftsättning. Nästan alla ändringar kräver kodgranskning, och varje release producerar en rapport över ingående ändringar.

Kapitlet betonar också konfiguration under källkodskontroll och kodgranskning, och föreslår att utvecklare, site reliability engineers och releaseingenjörer samarbetar i stället för att kasta resultat "över staketet". Det säger att organisationer bör definiera releasepolicyer även när de ännu inte kan automatisera eller genomdriva dem, och att det är billigare att införa goda arbetssätt tidigt än att eftermontera dem. Kapitlet beskriver Googles egna verktyg; er miljö kommer att använda andra, så hämta principerna och inte produkterna.

### Miljöer och befordran

En release rör sig vanligtvis genom en serie miljöer, som utveckling, test och produktion. Varje steg ger belägg. Ett vanligt arbetssätt, i linje med forskningen ovan, är att bygga en gång och befordra samma artefakt, så att det som testades är det som driftsätts. SRE-kapitlets betoning på identiska byggen från samma revision uttrycker samma idé.

### Utrullning och återställning

Hur en release når användare kan vara gradvis. SRE-kapitlet beskriver utrullningar i takt med risk, från timvisa automatiska leveranser i utveckling till flerdagarsutrullningar för känslig infrastruktur, och nämner kanariesläpp (canary releases), där en liten andel av trafiken får den nya versionen först. Återställning innebär att återgå till föregående version, och den bör vara lika övad som utrullning. Team som snabbt kan göra ogjort har råd att driftsätta ofta (se Ämne 3.4 — Ändringsmöjliggörande).

### Releaseinformation för support

Supportpersonal och användare behöver veta vad som ändras och vad de ska göra om det går fel. En releaseanteckning, en lista över kända problem och en namngiven kontakt är minimum (se Ämne 3.1 — Servicedesk). SRE-kapitlets releaserapport över ingående ändringar fungerar som källa.

### Mått

DORA:s sida föreslår att mäta korta ledtider för reguljära ändringar och nödändringar, låga andelar misslyckade ändringar, kort tid till återställd tjänst och releasefrekvenser som levererar prioriteringar i tid. Dess överordnade mål är att ingen arbetar utanför kontorstid för att driftsätta. För definitioner och varningar om måtten, se Ämne 3.4 — Ändringsmöjliggörande och Ämne 5.6 — Mått och mätning.

## Bästa praxis

1. **Skilj driftsättning från release.** Driftsätt kod i produktion i vilande tillstånd och slå på den för användare när den är redo, med funktionsbrytare eller stegvisa utrullningar. Det minskar risken med en driftsättning och ger verksamheten kontroll.
2. **Automatisera driftsättningen.** Sikta på inga manuella steg. Manuella steg är långsamma, varierar mellan människor och orsakar incidenter. Automatisera i små steg, med början i de steg som går fel oftast.
3. **Bygg en gång, befordra artefakten.** Producera ett paket och flytta det genom miljöer, så att det ni testade är det ni kör. Registrera vilken version som finns var.
4. **Gör byggen reproducerbara.** Lås verktygs- och biblioteksversioner så att samma revision ger samma resultat. Detta följer SRE-kapitlets princip om hermetiska byggen.
5. **Håll grenar kortlivade.** DORA:s trunkbaserade vägledning är färre än tre aktiva grenar och grenar som slås ihop inom ungefär en dag. Långa grenar gör releaser till sammanslagningshändelser.
6. **Testa automatiskt och håll testerna snabba och pålitliga.** Sikta på återkoppling på minuter. En ostadig eller långsam testsvit får människor att gå förbi den.
7. **Släpp i små satser.** Mindre releaser är lättare att granska, testa och återställa. Om en release är stor, fråga hur den kan delas.
8. **Rulla ut i etapper.** Börja med en liten andel användare eller servrar, bevaka signalerna och utvidga. Definiera i förväg vad ni ska bevaka och vem som kan stoppa utrullningen.
9. **Öva återställning.** Vet hur ni återgår till den senast fungerande versionen och öva det. En återställning ni aldrig prövat är ett hopp.
10. **Ge support vad de behöver före release.** Tillhandahåll releaseanteckningar, kända problem och en kontakt. Inkludera supportpersonal i godkännandet av ändringar som påverkar användare (se Ämne 3.1 — Servicedesk).
11. **Håll konfiguration i versionshantering.** Behandla konfigurationsändringar som kod, med granskning och register. Välj var varje slags inställning bor och varför.
12. **Sikta på driftsättning under kontorstid.** DORA nämner detta som det överordnade målet. Om driftsättningar kräver sena nätter behöver processen eller arkitekturen arbete.

## Frågor att diskutera med teamet

**Hur lång tid tar det, och hur många steg innefattar det, att få en färdig ändring i produktion?**

Följ en nyligen genomförd ändring från "klar" till "live". Lista varje steg, vem som gör det och hur länge det väntar. Skilj manuella steg från automatiserade. Team blir ofta förvånade över hur många steg som är manuella och över väntandet mellan dem. Facilitatorn kan fråga vilket steg som orsakat flest incidenter. Välj ett att automatisera.

**Vad skulle behöva vara sant för att vi ska kunna släppa under kontorstid utan oro?**

Fråga vad teamet fruktar med att släppa. Typiska svar: ingen testad återställning, svaga tester, oklar påverkan på användare. Var och en är något att bygga. Lista dem och rangordna dem. Fråga vad det minsta steget skulle vara för det första. DORA-målet att ingen arbetar utanför kontorstid för att driftsätta är ett användbart mål att diskutera.

**Var buntar vi ihop ändringar för att det är smärtsamt att släppa, och vad kostar buntningen oss?**

Titta på innehållet i nyliga releaser. Räkna ändringarna i var och en. Fråga vad som hände när en bunt gick fel och hur lång tid det tog att hitta orsaken. Diskutera vad som skulle göra releaser av en enda ändring till den enkla vägen. Kom överens om ett första steg, som att släppa en lågriskändring för sig.

**Hur vet vi att en release fungerar när den är live?**

Fråga vilka signaler teamet bevakar den första timmen: fel, prestanda, användarrapporter. Om svaret är "vi väntar på klagomål", diskutera övervakning som skulle visa ett problem snabbt. Fråga vem som bevakar och vad de skulle göra. Kom överens om en kort checklista för efter release.

**Vad vet vårt supportteam om en release innan den går ut?**

Fråga servicedesken vad de fick veta om den senaste releasen och när. Jämför med vad de behövde. Diskutera en enkel överlämning, som en releaseanteckning och en namngiven kontakt. Inkludera dem som besvarar användarnas frågor i planeringen av riskabla releaser.

**Vad hindrar oss från att driftsätta utan en frysperiod, och vad skulle en frysperiod kosta?**

Frysperioder är vanliga kring toppar i verksamheten. Fråga hur länge de varar och vad de fördröjer. Diskutera om små, väl testade ändringar kunde fortsätta under dem med extra skyddsåtgärder. DORA-sidan varnar för att tillämpa samma godkännande på alla ändringar oavsett risk eller tidpunkt, så fråga om frysningen är för trubbig.

## I praktiken: ett agilt ITIL-exempel

Ett universitet driver ett nätbaserat inskrivningssystem för 30 000 studenter. Utvecklingsteamet på åtta släpper en gång per termin, i ett helgfönster före inskrivningen öppnar. Varje release buntar hundratals ändringar och kräver femton personer, en lång manuell checklista och en anropsplan. Den senaste releasen fallerade klockan 2 på söndagsnatten, och teamet ägnade fjorton timmar åt att hitta vilken av ändringarna som orsakat det.

Teamledaren föreslår ett ändrat angreppssätt. För det första blir driftsättningar fullt skriptade, med början i de steg som fallerade senast. För det andra lägger teamet till automatiserade tester för inskrivningsvägen som körs vid varje ändring och tar under tio minuter. För det tredje driftsätts nya funktioner avslagna och slås på med en funktionsbrytare efter kontroller. För det fjärde skrivs och övas ett återställningssteg i en testmiljö. Registratorns kontor går med på en regel om att ingen release går till produktion under de tre veckorna av toppinskrivning om det inte är en rättning av ett användarsynligt fel.

Inom en termin driftsätter teamet varje vecka utanför toppveckor, under kontorstid, med releaseanteckningarna skickade till studenternas hjälpcentral dagen innan. Vissa releaser bromsas av ostadiga tester och en funktionsbrytare lämnades på av misstag och orsakade kort förvirring. Omvandlingen träffar också den J-kurva som DORA-sidan beskriver: under två månader bromsar arbetet med tester och skript funktionsleveransen. Teamet håller fast, åtgärdar de ostadiga testerna, lägger till ett checklistesteg för att ta bort brytare och kommer överens med registratorn om att granska frysregeln nästa år. Terminens inskrivningstoppar passerar utan en releaserelaterad incident.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam äger pipelinen: tester, byggen, driftsättningsskript och återställning. Investera i dem som en produkt med användare. Släpp smått, släpp ofta och behandla varje release som belägg om pipelinen. Involvera support och drift när ändringar påverkar dem.

### Tjänste- och driftteam

Driftteam har nytta av mindre, mer förutsägbara releaser och kan hjälpa genom att definiera vad som måste vara sant innan en release accepteras: övervakning, runbooks och återställning. Skifta från grindvakt till möjliggörare genom att tillhandahålla plattformen och kontrollerna som leveransteam använder. Bevaka signaler efter en release.

### Ledning och styrning

Ledare avgör om team kan investera i pipelinen och tåla J-kurvan. Be om ledtid, andel misslyckade ändringar och återhämtningstid. Motstå att frysa releaser som ett generellt svar på risk, och be i stället om belägg för att riskabla releaser får mer granskning.

### Kunder och användare

Kunder och användare ser täta små förbättringar och färre stora störningar. Räkna med förhandsmeddelande om ändringar som påverkar dig och ett sätt att rapportera problem. Om du har toppperioder, tala om det för leverantören så att de kan planera stegvisa utrullningar kring dem.

## Vanliga orsaker till misslyckande

- **Storsläpp i ett svep.** Hundratals ändringar går ut tillsammans. Släpp i stället i små satser och skilj driftsättning från release.
- **Manuell driftsättning.** Steg varierar mellan personer och fallerar på natten. Automatisera i stället i steg, med början i de riskablaste.
- **Att släppa oftare utan skyddsåtgärder.** Felfrekvensen stiger och människor bränns ut, som DORA varnar. Investera i stället i tester, återställning och övervakning först.
- **Olika artefakter i olika miljöer.** Det som testas är inte det som körs. Bygg i stället en gång och befordra samma artefakt.
- **Långlivade grenar.** Sammanslagningar blir händelser. Håll i stället grenar korta och integrera kontinuerligt.
- **Oprövad återställning.** Den första återställningen sker under ett avbrott. Öva den i stället regelbundet.
- **Support får veta sist.** Personal får veta om ändringar från användare. Skicka i stället releaseanteckningar och en kontakt före release.
- **Generella frysningar.** Samma frysning gäller alla ändringar. Låt i stället lågriskändringar som är väl testade passera med extra kontroller och behåll frysningen för det riskabla.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Driftsättningsautomatisering | Driftsättningar är manuella och varierar | Vissa driftsättningar är skriptade | Driftsättningar är automatiserade genom en gemensam pipeline | Driftsättningsfel och varaktighet följs och minskas | Pipelines och arbetssätt delas och förbättras mellan team |
| Releasefrekvens och storlek | Releaser är sällsynta och stora | Vissa team släpper i mindre satser | Team släpper i små satser i en känd rytm | Frekvens, ledtid och storlek mäts och justeras | Releaserytmer samordnas mellan tjänster och leverantörer |
| Säkerhet (tester, utrullning, återställning) | Testning är manuell; återställning är oprövad | Vissa automatiska tester och återställningssteg finns | Automatiska tester, stegvis utrullning och övad återställning är standard | Andel misslyckade ändringar och återhämtningstid följs och förbättras | Säkerhetsarbetssätt delas och prövas mellan team |
| Supportberedskap | Support får veta om releaser från användare | Vissa releaser har anteckningar | Releaseanteckningar och kontakter är standard | Supportens återkoppling på releaser samlas in och agerar på | Support, leverans och användare planerar releaser tillsammans |

## Checklista

- [ ] Vi kan ange skillnaden mellan att driftsätta och att släppa, och vi använder den.
- [ ] Driftsättningar är automatiserade utan manuella steg, eller de kvarvarande manuella stegen är listade.
- [ ] Vi bygger en gång och befordrar samma artefakt genom miljöer.
- [ ] Automatiska tester körs vid varje ändring och ger återkoppling på minuter.
- [ ] Grenar är kortlivade och slås ofta ihop med trunk.
- [ ] En återställning finns för varje releasetyp och har övats.
- [ ] Utrullningar sker i etapper där risken motiverar det, med signaler definierade i förväg.
- [ ] Releaseanteckningar och kända problem når servicedesken före en release.
- [ ] Konfiguration finns i versionshantering och granskas.
- [ ] Vi följer ledtid, andel misslyckade ändringar och återhämtningstid för varje tjänst.

## AI-prompter

**Syfte: kartlägga stegen från "klar" till "live" och hitta vad som ska automatiseras.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Syfte: skriva en releaseanteckning för servicedesken och användare.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Syfte: planera en stegvis utrullning.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: förbereda ett argument för att investera i releaseautomatisering.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [release-notes](../../../../skills/release-notes/SKILL.md): använd för att tala om för användare och servicedesken vad en release ändrar.
- [changelog](../../../../skills/changelog/SKILL.md): använd för att föra ett löpande register över ändringar per version.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): använd för att bygga de automatiska tester som gör täta releaser säkra.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): använd för att flytta testning tidigare i pipelinen så att problem hittas förr.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): använd för att planera små, täta releaser och kontrollerna kring dem.

## Viktiga källor

- **Continuous delivery** (DORA, dora.dev): forskningsprogrammets definition, rekommenderade arbetssätt, fynd och fallgropar.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): en organisations praxis med självbetjäning, reproducerbara byggen och genomdriven releasepolicy.
- **Streamlining change approval** (DORA, dora.dev): vägledning om hur godkännande passar in i leverans.
- **Continuous delivery** (Wikipedia): en översikt över arbetssättet och dess historia.

## Referenser

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
