# Site reliability engineering

**Site reliability engineering behandlar drift som ett ingenjörsproblem och använder servicenivåmål, felbudgetar och ett tak för repetitivt manuellt arbete för att hålla tjänster tillförlitliga samtidigt som de ändras snabbt.**

## Varför detta är viktigt

Många arbetssätt inom tjänstehantering utformades för en värld där driftpersonal körde programvara som andra hade skrivit, och kostnaden för att driva växte med tjänstens storlek. Site reliability engineering (SRE) är en organisations svar på vad som händer när den modellen möter en mycket stor skala: be programvaruingenjörer att utforma och driva driftfunktionen, och låt systemet göra det arbete som människor annars skulle göra för hand.

För läsare av den här guiden är SRE användbart av tre skäl. Det gör avvägningen mellan fart och tillförlitlighet uttrycklig, med tal som både produkt- och driftteam kan läsa. Det ger en fast idé om hur mycket manuellt arbete som är för mycket. Och det visar hur många ITIL-arbetssätt, som incident-, problem-, ändrings- och kapacitetshantering, kan utföras i ingenjörstermer. SRE är inte det enda sättet att göra dessa, och det kommer ur ett mycket stort internetföretags förhållanden, så vad som går att överföra beror på er situation.

Det här ämnet bygger huvudsakligen på tre kapitel i Googles bok *Site Reliability Engineering*, kompletterade med Wikipedia-artikeln om SRE. Boken beskriver arbetssättet hos en organisation och argumenterar för dess angreppssätt; Wikipedia-artikeln ger en bredare men tunnare bild och nämner ingen kritik. Läs båda som källor till idéer att pröva, inte som en standard.

## Centrala begrepp

### Vad SRE är

Bokens inledning definierar SRE som "vad som händer när du ber en programvaruingenjör att utforma ett driftteam". [Wikipedia-artikeln om site reliability engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) beskriver det som en disciplin inom programvaruteknik och IT-infrastruktursupport som övervakar och förbättrar tillgängligheten och prestandan hos driftsatt programvara och stora tjänster, med fokus på automatisering och infrastruktur som kod. Artikeln kallar SRE ett särskilt genomförande av DevOps, snävare i omfattning eftersom det koncentrerar sig på att bygga tillförlitliga system (se Ämne 5.2 — DevOps). Boken beskriver DevOps som en bredare uppsättning principer som SRE genomför på ett särskilt sätt.

Enligt artikeln började Googles SRE-praxis 2003 när Benjamin Treynor Sloss anslöt och bildade ett team av sju produktionsingenjörer; 2016 hade teamet mer än 1 000 SRE, och andra stora internetföretag hade antagit arbetssättet. En undersökning från 2020 av 572 yrkesverksamma fann SRE-team hos 64 procent av organisationer med 10 000 eller fler anställda, 44 procent av dem med 101 till 1 000 och 32 procent av dem med 100 eller färre. Konferensserien SREcon har hållits årligen sedan 2014.

### Problemet SRE tar upp

Inledningen beskriver den traditionella modellen: utvecklare och systemadministratörer är uppdelade i separata team. Den nämner två slags kostnader:

- **Direkta kostnader.** Manuell ändringshantering och händelsehantering blir dyra, eftersom driftteamet växer med belastningen.
- **Indirekta kostnader.** Teamen har olika ordförråd, incitament och antaganden om risk, vilket leder till konflikt om releaser. Driften lägger till lanseringsgrindar, och utvecklare svarar med undanmanövrer.

SRE syftar till att undvika denna uppdelning genom att behandla drift som ett ingenjörsproblem. Kapitlet säger att teamstorleken växer långsammare än systemet, eftersom ingenjörskonst hindrar den operativa belastningen från att växa i takt med trafiken.

### Grundsatserna

Inledningen listar de områden SRE-team ansvarar för: tillgänglighet, latens, prestanda, effektivitet, ändringshantering, övervakning, nödsvar och kapacitetsplanering. Wikipedia-artikeln listar kärnarbetssätt som omfattar att automatisera repetitivt arbete, att definiera tillförlitlighetsmål genom servicenivåindikatorer (SLI), mål (SLO) och felbudgetar, att utforma system för att minska risk, observerbarhet och övervakning, att hantera toil, en testad incidenthanteringsprocess samt kapacitetsplanering, releasehantering och kaosteknik (chaos engineering).

### Servicenivåmål och felbudgetar

SRE binder tillförlitlighet till uttryckliga mål (se Ämne 3.7 — Hantering av servicenivåer för den fullständiga behandlingen). I korthet:

- Välj några få indikatorer som speglar vad användare bryr sig om.
- Sätt ett mål som inte kräver perfektion.
- Tillåt en **felbudget (error budget)**: utrymmet mellan perfekt och målet.
- Använd budgeten för att avgöra releasetakten: så länge budget återstår fortsätter releaser; när den är förbrukad saktar releaserna och insatsen skiftar till tillförlitlighet.

Kapitlet "Embracing Risk" förklarar varför: produktteam mäts på fart och tillförlitlighetsteam på tillförlitlighet, vilket skapar spänning, och budgeten ger båda ett gemensamt, objektivt mått. Samma kapitel säger att tillförlitlighetskostnader stiger brant och att målet är att matcha en tjänsts risk mot vad verksamheten accepterar (se Ämne 3.11 — Tillgänglighet, kapacitet och prestanda).

### Toil

Kapitlet "Eliminating Toil" definierar **toil** som operativt arbete knutet till att driva en produktionstjänst, och säger att det inte bara är arbete någon ogillar och att det skiljer sig från overhead som möten. Toil tenderar att vara:

| Kännetecken | Betydelse |
|---|---|
| **Manuellt** | Kräver praktisk mänsklig ansträngning, även om ett skript kör stegen |
| **Repetitivt** | Görs om och om igen, inte ett nytt problem |
| **Automatiserbart** | En maskin kunde göra det, eller behovet kunde utformas bort |
| **Taktiskt** | Avbrottsdrivet och reaktivt, som att svara på personsökningar |
| **Utan bestående värde** | Tjänsten är i samma tillstånd efteråt |
| **Linjärt med tillväxt** | Insatsen skalar med tjänstens storlek, trafik eller användare |

Boken säger att SRE strävar efter att hålla toil under 50 procent av sin tid, med minst hälften ägnad åt ingenjörsmässigt projektarbete, och inledningen sätter ett tak på 50 procent för samlat "drift"-arbete, där överskottet skickas tillbaka till utvecklingsteamen. Den säger att för mycket toil orsakar karriärstagnation, lågt humör och utbrändhet, saktar funktionsarbete och driver personalomsättning; "toil blir giftigt när det upplevs i stora mängder", även om små mängder kan vara lugnande och en del är oundviklig. Kapitlet ger ett sätt att beräkna den golvnivå som jour medför (till exempel en nedre gräns på 33 procent för ett sexmannaschema under dess exempelantaganden) och redovisar att avbrott var den största toilkällan, följt av jourhantering och därefter releaser. Det definierar ingenjörsarbete som nytt, kräver omdöme, ger bestående förbättring och följer en strategi.

### Nödsvar och övervakning

Inledningen säger att övervakning inte bör kräva att en människa tolkar larm: programvara tolkar data och människor underrättas bara när åtgärd behövs (se Ämne 3.10 — Övervakning och händelsehantering). Den säger att SRE i jour bör få högst ungefär två händelser per skift. Den hävdar att playbooks ger ungefär en tredubbling av förbättringen i genomsnittlig reparationstid jämfört med att improvisera. Incidenthantering följer ett angreppssätt med incidentledning, och efteranalyser är skuldfria och skrivs för alla betydande incidenter (se Ämne 3.2 — Incidenthantering).

### Ändringshantering

Inledningen anger att ungefär 70 procent av avbrotten kommer från ändringar av ett levande system, och rekommenderar progressiva utrullningar, snabb upptäckt av problem och säkra återställningar. Det är bokens eget påstående, från Googles erfarenhet, och gäller kanske inte för varje organisation. Dess budskap stämmer med DORA:s vägledning om ändringar (se Ämne 3.4 — Ändringsmöjliggörande och Ämne 3.5 — Release- och driftsättningshantering).

### SRE och ITIL

SRE kan läsas som ett ingenjörsmässigt sätt att genomföra flera ITIL-arbetssätt:

| ITIL-arbetssätt | SRE-angreppssätt |
|---|---|
| Incidenthantering | Roller för incidentledning, ett levande incidentregister, skuldfria efteranalyser |
| Problemhantering | Efteranalysåtgärder i backloggen, borttagning av toil vid orsaken |
| Ändringsmöjliggörande | Progressiva utrullningar, snabb upptäckt, säker återställning, automatiserade kontroller |
| Hantering av servicenivåer | SLI, SLO, felbudgetar |
| Övervakning och händelsehantering | Symptombaserad larmning, de fyra gyllene signalerna |
| Kapacitetshantering | Kapacitetsplanering som en ingenjörsuppgift, med belastningstestning |
| Ständig förbättring | Ett tak för toil, ingenjörsprojekt som huvudarbete |

Kopplingen är den här guidens, inte källornas. Varken boken eller Wikipedia-artikeln påstår sig genomföra ITIL.

### Driftsättningsmodeller

Wikipedia-artikeln beskriver sex organisatoriska modeller för SRE: "Kitchen Sink", infrastruktur, verktyg, produkt eller applikation, inbäddad och rådgivande. Den säger att en hybrid är vanlig i stora organisationer, men markerar det påståendet som i behov av en källhänvisning. Vilken modell som passar er beror på er storlek och antalet tjänster.

### Gränser och kritik

Wikipedia-artikeln anger ingen kritik, inga kostnader eller felsätt, och boken beskriver en organisations framgång. Praktiska gränser är välkända av erfarenhet, och erbjuds här som sådana: SRE kräver ingenjörer som kan skriva programvara och är villiga att arbeta med drift; taket på 50 procent behöver stöd från ledningen; felbudgetar fungerar bara om produktteam respekterar dem; och angreppssättet är svårt att kopiera utan den skala och de verktyg som frambringade det. Mindre organisationer kan anta idéerna, som mål, budgetar, toilmätning och skuldfri granskning, utan att skapa ett team.

## Bästa praxis

1. **Välj en tjänst och sätt ett mål.** Välj två till fyra indikatorer som speglar användarupplevelsen, sätt ett löst första mål och mät i några månader innan ni skärper det.
2. **Kom överens om en policy för felbudget.** Skriv ned vad som händer när budgeten nästan är slut och när den är slut, och vem som får åsidosätta. Gör det till en gemensam regel för produkt och drift.
3. **Mät toil.** Be människor registrera hur stor del av sin tid som går åt till manuellt, repetitivt operativt arbete. Använd de sex kännetecknen för att klassificera det. Titta på de främsta källorna.
4. **Sätt tak på det manuella arbetet.** Sätt ett tak för toil, som hälften av en persons tid, och granska det. När taket överskrids, skicka överskottsarbete tillbaka till de team som äger orsakerna eller minska omfattningen.
5. **Automatisera den största toilen först.** Välj det som kostar mest tid och är mest upprepbart, automatisera det med tester och mät besparingen. Föredra att utforma bort behovet framför att automatisera det.
6. **Skydda ingenjörstid.** Planera projektarbete för driftingenjörer som verkligt arbete med ägare och datum. Utan det expanderar toil.
7. **Begränsa avbrott.** Sikta på få händelser per jourskift, justera larm så att personsökningar är åtgärdbara och åtgärda återkommande orsaker. Bokens vägledning är högst ungefär två händelser per skift.
8. **Skriv playbooks.** För vanliga fel, skriv korta, testade svarssteg. Boken hävdar att de förbättrar reparationstiden jämfört med att improvisera.
9. **Gör ändringar progressiva och reversibla.** Rulla ut gradvis, upptäck problem snabbt och återställ säkert. Eftersom ändringar är den vanligaste orsaken till avbrott enligt bokens erfarenhet, investera här först.
10. **Kör skuldfria efteranalyser för betydande incidenter,** inklusive nära missar som inte utlöste personsökning. Gör åtgärder till backloggposter.
11. **Börja med idéerna, inte teamet.** Mindre organisationer kan anta mål, budgetar, toilmått och efteranalyser med befintlig personal innan de skapar ett dedikerat team.
12. **Välj en organisatorisk modell med avsikt.** Om ni skapar en SRE-funktion, avgör om den tillhandahåller verktyg, bäddas in hos produktteam eller ger råd, och se över valet när ni växer.

## Frågor att diskutera med teamet

**Vilken tjänst skulle vi sätta ett mål på först, och vad skulle målet vara?**

Be varje person nämna tjänsten och den indikator som bäst speglar användarens upplevelse. Jämför. Skillnader visar oklara prioriteringar. Facilitatorn kan fråga vad som händer i dag när tjänsten är långsammare eller mindre tillgänglig än användare förväntar sig. Kom överens om en tjänst att börja med och om vad som ska mätas.

**Vad skulle vi göra om vi förbrukade hela vår felbudget den här månaden?**

Be teamet och en produktrepresentant beskriva åtgärderna, vem som beslutar och vad som skyddas. Många team har aldrig kommit överens. Diskutera om en paus i riskabla releaser skulle accepteras. Utarbeta en policy på en sida.

**Hur stor del av vår vecka är toil, och vilka är de tre främsta källorna?**

Be människor uppskatta och sedan föra ett register i två veckor. Jämför uppskattningar med register. Målet är att se arbetets form, inte att skuldbelägga. Välj den största källan och fråga om den kan tas bort genom design.

**Vilken återkommande manuell uppgift kunde ett skript eller en designändring ta bort?**

Lista de uppgifter människor fruktar. Uppskatta frekvens och tid för var och en. De bästa kandidaterna är frekventa, stabila och har låg risk. Fråga vad som skulle göra automatisering säker, som gränser och loggar. Välj en att automatisera.

**Hur många händelser får varje jourskift, och hur många kräver åtgärd?**

Räkna för det senaste kvartalet. Om talet är högt, diskutera varifrån det kommer. Inledningen föreslår att sikta på ungefär två händelser per skift. Välj en larmkälla att åtgärda.

**Vad skulle vi förlora och vinna om vi skapade ett dedikerat tillförlitlighetsteam?**

Be om ärliga åsikter. Vinster kan vara fokus och kompetens; förluster kan vara ett nytt silo eller att operativt arbete dumpas. Diskutera alternativ som inbäddade ingenjörer eller rotation. Avgör vad som ska prövas i liten skala.

## I praktiken: ett agilt ITIL-exempel

En regional elnätsdistributör driver en app för avbrottsrapportering och ett system för utsändning av fältteam. Ett kombinerat team på arton bygger och driver båda. Driftpersonalen i teamet ägnar mesta delen av sin tid åt manuellt arbete: att starta om fastnade jobb, justera dataflöden och svara på personsökningar. Gruppchefen noterar att de har lite tid kvar till förbättring, och två av dem har bett att få flytta till andra team.

Teamledaren föreslår ett SRE-inspirerat angreppssätt. För avbrottsrapporteringsappen sätter teamet två indikatorer: andelen rapportinlämningar som lyckas och tiden till att en bekräftelse visas. Det kommer överens om ett löst mål och en månatlig felbudget med kundtjänstchefen, och skriver en policy på en sida: när mer än tre fjärdedelar av budgeten är förbrukad får riskabla releaser vänta. Teamet ber ingenjörerna logga toil under en månad. Loggen visar att en tredjedel av deras tid går åt till att starta om ett fallerande dataimportjobb och till manuella justeringar efter stormar, när efterfrågan rusar. De sätter ett tak på hälften av sin tid för toil, beslutar att först åtgärda orsaken till importjobbet och automatisera stormjusteringarna med ett skript som har gränser och en logg. Personsökningar justeras så att bara användarsynliga symptom larmar jouringenjören.

Fyra månader senare har toil sjunkit till ungefär en tredjedel av teamets tid, importjobbet fallerar inte längre och policyn för felbudget har använts en gång, under en månad med ett leverantörsavbrott, för att skjuta upp en funktionsrelease. Svårigheter återstår. Utsändningssystemet har inga mål ännu, och kundtjänstchefen har frestats att åsidosätta budgetpolicyn två gånger för brådskande funktioner. Teamledaren och chefen kommer överens om att granska åsidosättanden månadsvis och att sätta mål för utsändningen härnäst. De lär sig också att "taket" är en vägledning, inte ett löfte: efter en större storm steg toil långt över hälften i två veckor, och de måste avgöra vad som ska skäras bort.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam deltar i att sätta mål och respekterar budgeten. Bygg in driftbarhet i funktioner, acceptera att toil återgår till det team som orsakar den och hjälp till att automatisera. Behandla en förbrukad budget som information om tjänsten, inte som ett straff.

### Tjänste- och driftteam

Driftteam kan utföra SRE-arbetet eller anta dess idéer. Mät toil, skydda tid för ingenjörsarbete och skicka tillbaka upprepat arbete till dess källa. Använd mål för att förklara varför visst arbete bör avböjas.

### Ledning och styrning

Ledare måste stå bakom taket på toil och regeln om felbudget; utan stöd misslyckas de. Be om mål och budgetstatus, inte om ett antal incidenter. Ge tid för ingenjörsarbete och var beredda att säga nej till funktioner när budgeten är förbrukad.

### Kunder och användare

Kunder och användare vinner på tydliga servicenivåer och på snabbare återhämtning när saker fallerar. Tala om för teamet vad som är viktigast, så att målen speglar din upplevelse. Räkna med ärliga samtal om avvägningar mellan nya funktioner och tillförlitlighet.

## Vanliga orsaker till misslyckande

- **Att kopiera titeln.** Driften döps om och inget förändras. Anta i stället mål, budgetar och toilmått först.
- **En felbudget ingen respekterar.** Funktioner åsidosätter den varje gång. Kom i stället överens om regeln med produktägare och granska åsidosättanden.
- **Ingen tid för ingenjörsarbete.** Toil fyller veckan. Sätt i stället tak och skydda projekttid.
- **Att automatisera fel sak.** En sällsynt uppgift automatiseras medan den frekventa kvarstår. Rangordna i stället efter tid och frekvens.
- **Perfektionsmål.** Mål kräver 100 procent. Sätt i stället lösa mål utifrån användarbehov och skärp med data.
- **Ett tillförlitlighetsteam som soptipp.** Utveckling skickar allt operativt arbete dit. Skicka i stället tillbaka överskottsarbete till dess källa.
- **Att kopiera Googles skala.** Arbetssätt som kräver en stor organisation antas av en liten. Ta i stället de idéer som passar, som mål och efteranalyser.
- **Att ignorera människor.** Jourbelastning bränner ut människor. Begränsa i stället händelser per skift och dela schemat.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Mål och budgetar | Tillförlitlighetsmål är informella | Vissa tjänster har mål | Nyckeltjänster har mål och en överenskommen policy för felbudget | Budgetar styr releaser och policyåsidosättanden granskas | Mål och budgetar samordnas mellan beroende tjänster |
| Toil och automatisering | Toil mäts inte | Vissa team uppskattar toil | Toil mäts och begränsas; automatiseringsarbete planeras | Toilkällor och besparingar följs och minskas | Automatisering delas och toil minskas mellan team |
| Nödsvar | Svar improviseras | Vissa playbooks och ett schema finns | Roller, playbooks och skuldfria efteranalyser är standard | Händelsebelastning och reparationstider mäts och förbättras | Svar repeteras och samordnas mellan team och leverantörer |
| Ändring och kapacitet | Ändringar är riskabla och manuella | Vissa utrullningar är stegvisa | Progressiv utrullning och kapacitetsplanering är rutin | Ändringsfel och kapacitetsprognoser mäts | Ändrings- och kapacitetsarbetssätt delas i hela organisationen |

## Checklista

- [ ] Minst en tjänst har indikatorer och ett löst mål, mätt över tid.
- [ ] En policy för felbudget är överenskommen med produktägare och nedskriven.
- [ ] Toil mäts med en konsekvent definition, och de främsta källorna är kända.
- [ ] Ett tak för toil finns och granskas.
- [ ] Tid för ingenjörsprojekt är planerad och skyddad.
- [ ] Jourbelastningen mäts och personsökningar är åtgärdbara.
- [ ] Playbooks finns för de vanligaste felen och har testats.
- [ ] Utrullningar är progressiva och återställningar är testade.
- [ ] Betydande incidenter och nära missar får skuldfria efteranalyser med ägda åtgärder.
- [ ] Vi har med avsikt valt hur tillförlitlighetsarbetet organiseras.

## AI-prompter

**Syfte: klassificera ert arbete som toil, ingenjörsarbete eller overhead.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Syfte: utarbeta en policy för felbudget.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: välja en toilpost att automatisera först.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva en playbook-post.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): använd för att utforma ett rättvist schema med gränser för händelser per skift.
- [runbook](../../../../skills/runbook/SKILL.md): använd för att skriva de playbooks som påskyndar reparation.
- [postmortem](../../../../skills/postmortem/SKILL.md): använd för att hålla skuldfria granskningar och följa åtgärder.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): använd för att testa att tillförlitlighetsdesigner fungerar genom att orsaka fel på ett säkert sätt.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att planera kapacitet som en ingenjörsuppgift knuten till efterfrågan.

## Viktiga källor

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): definitionen av SRE, taket på 50 procent, grundsatserna och den utveckling/drift-uppdelning den syftar till att undvika.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): definitionen av toil och skälen att sätta tak.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): tillförlitlighetens ekonomi och felbudgeten.
- **Site reliability engineering** (Wikipedia): en bredare sammanfattning av disciplinen, driftsättningsmodeller, användningsundersökning och vidare läsning.

## Referenser

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
