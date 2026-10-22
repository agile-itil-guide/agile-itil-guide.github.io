# DevOps

**DevOps är strävan att föra samman utveckling och drift i ett enda arbetsflöde med delat ägarskap, automatisering och snabb återkoppling, och det kompletterar tjänstehantering genom att lägga de kontroller ITIL bryr sig om i pipelinen.**

## Varför detta är viktigt

DevOps är det namn de flesta organisationer ger åt mötespunkten mellan kontinuerlig leverans och IT-drift. Det växte fram ur en frustration: utvecklare belönades för förändring och driftpersonal för stabilitet, så de två grupperna drog åt motsatta håll, och överlämningen mellan dem var där fart och kvalitet gick förlorade. DevOps ber båda att dela ansvaret för hela vägen från idé till körande tjänst.

För människor som arbetar med ITSM kan DevOps verka antingen hotande eller överflödigt. Hotande, eftersom det verkar avfärda de processer driften byggde upp efter hård erfarenhet. Överflödigt, eftersom mycket av det som rekommenderas, som incidentgranskningar, automatisering och ständig förbättring, redan finns i ITIL. Ingen av uppfattningarna stämmer riktigt. Wikipedia-artikeln om DevOps ställer DevOps mot vad den kallar ITIL:s "uppifrån-och-ned"-ramverk och stela ramverk från 1990-talet, vilket stämmer för äldre versioner; ITIL 4 skrevs för att samordnas med agilt, DevOps och lean (se Ämne 2.2 — ITIL).

Definitionen av DevOps är omstridd, och Wikipedia-artikeln säger det. Det här ämnet använder artikeln, DORA:s forskningssidor och Gene Kims redogörelse för "de tre vägarna", och det anger vad som är etablerat, vad som debatteras och vad den här guiden inte kunde verifiera.

## Centrala begrepp

### Vad DevOps är

[Wikipedia-artikeln om DevOps](https://en.wikipedia.org/wiki/DevOps) beskriver det som integrationen och automatiseringen av programvaruutveckling och IT-drift, vilket kan förkorta utvecklingstiden och förbättra utvecklingens livscykel. Den citerar de akademiska forskarna Len Bass, Ingo Weber och Liming Zhu, som beskriver det som en uppsättning arbetssätt som syftar till att minska tiden mellan att en ändring av ett system skickas in och dess normala placering i produktion. Artikeln noterar att termen används i flera sammanhang och att dess definition debatteras, och att akademiska studier från 2015 till 2017 fann ingen konsensus om dess kännetecken.

Artikeln redovisar att förslag att kombinera utvecklingsmetoder med driftsättning och drift går tillbaka till slutet av 1980-talet och början av 1990-talet, och att den första DevOps Days-konferensen hölls i Gent i Belgien 2009, grundad av Patrick Debois. Den karakteriserar DevOps allmänt med tre principer, delat ägarskap, arbetsflödesautomatisering och snabb återkoppling, och noterar att denna karakterisering i sig debatteras.

### De tre vägarna

Gene Kim, författare till *The Phoenix Project* och *The DevOps Handbook*, beskriver tre principer från vilka, enligt honom, DevOps-mönster kan härledas. Så som sammanfattat i Kims eget inlägg på IT Revolutions webbplats och i sekundära sammanfattningar:

| Väg | Idé | Exempel |
|---|---|---|
| **Första vägen: flöde** | Titta på hela systemets prestanda, inte ett enskilt silo; påskynda arbetet från idé till värde | För inte kända defekter nedströms; låt inte lokal optimering försämra helheten; sträva alltid efter att öka flödet |
| **Andra vägen: återkoppling** | Förkorta och förstärk de signaler som flödar tillbaka från senare steg till tidigare | Telemetri, snabbt fallerande pipelines, kundåterkoppling |
| **Tredje vägen: ständigt lärande och experimenterande** | Bygg en kultur som tar små, avsiktliga risker och lär av dem | Att reservera tid för lärande, att göra lokala upptäckter till globala förbättringar |

Dessa motsvarar den här guidens egna teman: flöde (se Ämne 1.5 — Kanban och Ämne 1.7 — Lean programvaruutveckling), återkoppling (se Ämne 3.10 — Övervakning och händelsehantering) och lärande (se Ämne 1.10 — Agilt lärande). En notering om terminologi: Kims inlägg kallar den andra vägen "förstärk återkopplingsslingor" och Handbook kallar den "återkoppling".

### Arbetssätt

Enligt Wikipedia är kontinuerlig integration och kontinuerlig leverans avgörande för DevOps-framgång, vid sidan av automatisering. Artikeln nämner versionshantering, virtuella maskiner, containerisering och databas-DevOps, som tillämpar versionshantering, automatiserade tester och CI/CD på schema- och dataändringar. Den beskriver GitOps som att hantera driftsättningskonfiguration i versionshantering, och DevSecOps som att integrera säkerhet i leveransen genom "shift left"-testning, inklusive statisk och dynamisk analys. DORA:s lista över förmågor omfattar kontinuerlig leverans, kontinuerlig integration, driftsättningsautomatisering, testautomatisering, trunkbaserad utveckling, versionshantering, hantering av databasändringar, övervakning och observerbarhet, genomgripande säkerhet, att arbeta i små satser och gränser för pågående arbete (se Ämne 3.5 — Release- och driftsättningshantering).

### Kultur

DORA:s förmågelista, som lästs för den här guiden, omfattar kulturella punkter: generativ organisationskultur, lärandekultur, transformativt ledarskap, arbetstillfredsställelse, välbefinnande och teamexperimenterande. Sidan som listar dem förklarar dem inte och rangordnar dem inte. En annan DORA-sida säger att dess mått förutsäger organisatorisk prestation och teammedlemmars välbefinnande, och varnar för ägarskap i silos och rekommenderar delat ägarskap över utvecklings-, drift- och releaseteam. Detta stämmer med den tredje vägen: DevOps handlar lika mycket om hur människor arbetar tillsammans som om verktyg.

Minnesregeln **CALMS** (culture, automation, lean, measurement, sharing; kultur, automatisering, lean, mätning, delande) används ofta för att sammanfatta DevOps. Wikipedia-artikeln om DevOps nämner den inte, och den här guiden verifierade inte dess ursprung, så den nämns här bara för att läsare kommer att möta den.

### DevOps och agilt

Artikeln säger att automatiserat bygge och test, kontinuerlig integration och kontinuerlig leverans har sitt ursprung i den agila världen, och att Scrums utelämnande av ingenjörsarbetssätt gjorde att automatiseringsarbetet delades av i DevOps. Detta stämmer med Ämne 1.4 — Leveransprognoser och planeringsmått, som noterar att Scrum inte säger hur man bygger, testar, driftsätter eller driver programvara. Extreme Programming innehåller redan många av ingenjörsarbetssätten (se Ämne 1.6 — Extreme Programming). DevOps utvidgar det agila intresset förbi releasepunkten.

### DevOps och ITIL

Artikeln ställer DevOps mot ITIL:s "uppifrån-och-ned"-ramverk och stela ramverk från 1990-talet och diskuterar inte ITSM vidare. En rättvisare bild i dag:

| | Tenderar att betona | Risk om det används ensamt |
|---|---|---|
| **DevOps** | Flöde, automatisering, delat ägarskap, snabb återkoppling | Att försumma register, kontroller och den vidare tjänstevyn |
| **ITIL 4** | Värde, arbetssätt, styrning, ett brett spektrum av tjänstearbetssätt | Att behandla arbetssätt som tung process |

ITIL 4:s eget certifieringssystem omfattar en specialistmodul kallad High Velocity IT (HVIT) i spåret Managing Professional, som Wikipedia-artikeln om ITIL listar. Det visar att ägaren behandlar snabbrörligt, digitalt arbete som ett eget ämne. En praktisk kombination: använd DevOps-arbetssätt för att genomföra ITIL-arbetssätten i pipelinen, som att registrera ändringar automatiskt, köra tester som riskkontroll och övervakning som händelsearbetssätt (se Ämne 3.4 — Ändringsmöjliggörande och Ämne 5.1 — Agil tjänstehantering).

### DevOps och site reliability engineering

Wikipedia-artikeln säger att Google utvecklade site reliability engineering 2003, och att några av dess ursprungliga författare ser SRE som ett genomförande av DevOps. SRE-artikeln kallar det ett särskilt genomförande av DevOps, snävare eftersom det koncentrerar sig på att bygga tillförlitliga system (se Ämne 5.3 — Site reliability engineering).

### Mått

DORA:s mått på programvaruleveransens prestanda ger ett gemensamt ordförråd: ledtid för ändring, driftsättningsfrekvens, återställningstid efter misslyckad driftsättning, andel misslyckade ändringar och andel omarbete vid driftsättning (se Ämne 3.4 — Ändringsmöjliggörande och Ämne 5.6 — Mått och mätning). Wikipedia-artikeln redovisar att måtten publicerades 2016, att återställningsmåttet döptes om i rapporten för 2023, att ett omarbetsmått lades till 2024 och att DORA 2025 ersatte prestandanivåer med sju teamarketyper. Den noterar också att vissa experter kritiserade DORA:s forskningsmetodik och mått. Behandla måtten som användbara frågor och inte som poäng.

### Kritik och gränser

Utöver bristen på en etablerad definition redovisar artikeln kritik av DORA:s metodik. Vanlig praktisk kritik, erbjuden här som praktisk erfarenhet och inte som källfynd, omfattar att "DevOps" används som yrkestitel för den gamla driftrollen, verktyg som införs utan kulturförändring och efterlevnad som försummas i jakten på fart. Artikeln ger ingen användningsstatistik.

## Bästa praxis

1. **Kom överens om vad ni menar med DevOps.** Skriv ett kort uttalande om vad det betyder för era team, som delat ägarskap av en tjänst, automatiserad leverans och snabb återkoppling. En gemensam definition förhindrar gräl om etiketter.
2. **Dela ägarskapet av tjänsten.** Gör dem som bygger en tjänst ansvariga för hur den körs och ge dem medlen: jour, övervakning och åtkomst. Stöd dem med driftexpertis.
3. **Automatisera vägen till produktion.** Bygg en pipeline som bygger, testar och driftsätter varje ändring. Registrera vad den gjorde. Behandla pipelinen som en produkt med användare.
4. **Arbeta i små satser.** Släpp små ändringar ofta. Det minskar risken och påskyndar återkopplingen, som DORA:s lista över förmågor antyder.
5. **Förkorta återkopplingsslingorna.** Gör testresultat, övervakning och användaråterkoppling synliga för teamet inom minuter eller timmar. Följ den andra vägen: förstärk de signaler som flödar tillbaka.
6. **Se på hela flödet.** Kartlägg vägen från idé till körande tjänst och hitta de längsta väntetiderna, inklusive de utanför utvecklingsteamet. Följ den första vägen: optimera inte ett silo på bekostnad av helheten (se Ämne 5.4 — Värdeströmshantering).
7. **Bygg in säkerhet och efterlevnad.** Lägg automatiserade säkerhetskontroller och policykontroller i pipelinen och registrera belägg som en biprodukt (se Ämne 3.13 — Informationssäkerhetshantering och Ämne 5.7 — Styrning, risk och efterlevnad).
8. **Behandla kultur som en förstklassig angelägenhet.** Investera i lärande, skuldfria granskningar, psykologisk trygghet och gemensamma mål. DORA:s förmågelista omfattar kultur vid sidan av tekniska punkter av ett skäl.
9. **Avsätt tid att lära och experimentera.** Reservera tid och trygga platser för experiment och dela lärdomar. Följ den tredje vägen.
10. **Använd ITIL-arbetssätt där de hjälper.** Behåll arbetssätten för incidenter, problem, ändringar och kunskap, genomförda genom automatisering och lättviktiga register. Ta bort steg som inte tjänar sitt syfte.
11. **Mät med omsorg.** Följ mått i DORA-stil per tjänst, förbättra mot er egen tidigare prestanda och undvik att sätta dem som mål (se Ämne 5.6 — Mått och mätning).
12. **Undvik titelfällan.** Skapa inte ett separat "DevOps-team" som blir ett nytt silo mellan utveckling och drift. Sprid arbetssätten över team och använd plattforms- eller möjliggörande team för att hjälpa.

## Frågor att diskutera med teamet

**Vad betyder DevOps här, och var hörde vi först ordet?**

Be varje person om en definition på en mening. Jämför. Wikipedia-artikeln säger att definitionen debatteras, så skillnader är väntade. Skriv ett gemensamt uttalande som är konkret: vem som äger vad, vad som är automatiserat, vilken återkoppling som finns. Facilitatorn kan fråga vad som har förändrats på grund av ordet hittills.

**Var väntar en ändring mellan "klar" och "live", och vem äger väntan?**

Följ en nylig ändring och lista väntetiderna: granskningar, godkännanden, miljöer, releasefönster. Markera de utanför teamet. Fråga vilka väntetider som skyddar mot verkliga risker och vilka som är vana. Välj en att förkorta, tillsammans med dess ägare.

**När något går sönder i produktion, vem har jour, och har de medlen att åtgärda det?**

Fråga vem som får personsökning och vad de kan göra på egen hand. Om byggarna inte har jour, fråga varför. Om driftpersonal inte kan ändra koden, fråga vad de gör. Diskutera hur delat ägarskap skulle se ut här och vilket stöd som skulle behövas.

**Vilken återkoppling får vi efter en release, och hur fort?**

Lista signalerna: tester, övervakning, supportärenden, användarkommentarer. Fråga hur lång tid var och en tar att nå teamet. Typiska svar: tester på minuter, ärenden på dagar. Välj en signal att göra snabbare.

**Hur tryggt är det att försöka något och misslyckas?**

Be om ett nyligt exempel på ett misslyckat experiment och vad som hände med de inblandade. Den tredje vägen beror på att lära av små misslyckanden. Diskutera vad som skulle göra experiment tryggare, som gränser, återställningar och skuldfri granskning.

**Hur dyker våra ITIL-arbetssätt upp i pipelinen, och var gör de inte det?**

Ta arbetssätten för ändringar, incidenter och kunskap och fråga var vart och ett förekommer i automatiseringen. Gap pekar på manuellt arbete eller på kontroller som inte styrks med belägg. Kom överens om ett arbetssätt att flytta in i pipelinen.

## I praktiken: ett agilt ITIL-exempel

En nationell postverksamhet har en utvecklingsgrupp på 40 och en driftgrupp på 25. Utvecklare släpper en större version varje kvartal och lämnar ett paket och ett långt dokument till driften, som driftsätter det under en helg. Driften klagar på att utvecklare inte förstår produktionen, och utvecklare klagar på att driften inte går att nå när en defekt behöver en snabb åtgärd. En nyligen genomförd release tog 19 timmar, förstörde paketspårningssidan och ledde till en dag av skuldbeläggning.

En ny plattformschef föreslår en prövning med ett produktteam, paketspårningstjänsten. Fyra utvecklare och två driftingenjörer bildar ett enda team som äger tjänsten från början till slut. Utvecklarna går med i jourschemat, med stöd av driftingenjörerna. Teamet bygger en pipeline som bygger, testar och driftsätter varje sammanslagen ändring i en stagingmiljö, och driftsätter i produktion med ett godkännandesteg som tjänstens ägare ger. Ändringsregister skapas av pipelinen. Övervakning läggs till, larm går till hela teamet och varje produktionsincident får en kort skuldfri granskning. Teamet kommer överens om att släppa minst varje vecka, och plattformschefen ber det följa ledtid, driftsättningsfrekvens, andel misslyckade ändringar och tid till återställning.

Efter fyra månader släpper teamet två gånger i veckan, mediantiden från sammanslagning till produktion är under ett dygn och den senaste incidenten åtgärdades på under en timme av utvecklaren som skrev ändringen. Allt fungerar inte. Driftingenjörerna finner att utvecklarnas larm är bullriga, och utvecklare ogillar att ha jour på natten. Ett angränsande team som beror på paketspårning fick inte veta om den nya rytmen och blev överraskat av en ändring. Plattformschefen avsätter tid för teamet att justera larm, lägger till ett schema med en gräns för nattliga samtal och ordnar ett månadsmöte med beroende team. Internrevisionen ber att få se beläggen för godkännanden, och plattformschefen visar pipelinens register och incidentgranskningarna.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam tar på sig driftansvar: övervakning, jour och incidentlärande. Bygg den pipeline och den återkoppling ni behöver, och be om driftexpertis i stället för att lämna över. Håll ändringar små och synliga.

### Tjänste- och driftteam

Driftteam bidrar med kunskap om hur tjänster fallerar och vilka kontroller som betyder något. Hjälp till att bygga plattformen och kontrollerna, dela jour och undervisa. Undvik att vara en grind; bli en möjliggörare som gör den säkra vägen till den enkla vägen.

### Ledning och styrning

Ledare skapar förutsättningarna: gemensamma mål över utveckling och drift, tid för automatisering, en kultur som lär av misslyckanden och tillit till belägg från pipelinen. Undvik att döpa om team utan att ändra incitament, och be om resultat, inte om DevOps-införande.

### Kunder och användare

Kunder och användare ser DevOps som snabbare förbättring och snabbare återhämtning. Räkna med täta små ändringar och tydlig kommunikation om dem. Ge återkoppling snabbt, eftersom teamet är uppsatt för att använda den.

## Vanliga orsaker till misslyckande

- **Ett DevOps-team som ett nytt silo.** Utveckling och drift talar fortfarande inte med varandra. Sprid i stället arbetssätten över team och använd plattformsteam för att möjliggöra.
- **Verktyg utan kultur.** En pipeline byggs och inget annat förändras. Ändra i stället ägarskap, incitament och återkoppling tillsammans.
- **Fart utan säkerhet.** Releaser accelererar och fel ökar. Investera i stället i tester, övervakning och återställning före tempo.
- **Att överge ITIL helt.** Register och kontroller försvinner. Behåll i stället arbetssätten och genomför dem i pipelinen.
- **Utvecklare i jour utan stöd.** Utbrändhet följer. Dela i stället schemat, justera larm och begränsa nattliga samtal.
- **Mått som mål.** Team fuskar med driftsättningsantal. Använd i stället flera mått och jämför med er egen historik.
- **Att ignorera beroende team.** Ändringar överraskar grannar. Kommunicera i stället rytm och ändringar till team som beror på ert.
- **Att behandla ordet som målet.** Etiketter ersätter resultat. Fråga i stället hur bättre flöde, återkoppling och lärande ser ut för era användare.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Delat ägarskap | Utveckling och drift lämnar över vid release | Vissa team delar jour | Team äger sina tjänster från början till slut med stöd | Ägarskapets effekter på kvalitet och belastning mäts | Ägarskapsmodeller samordnas mellan team, plattformar och leverantörer |
| Automatisering och flöde | Leverans är manuell och i satser | Vissa pipelines finns | En gemensam pipeline bygger, testar, driftsätter och registrerar ändringar | Ledtid, frekvens, fel och återhämtning mäts och justeras | Pipelines och flöde optimeras mellan team och värdeströmmar |
| Återkoppling | Återkoppling kommer från användare efter problem | Vissa team övervakar releaser | Tester, övervakning och användaråterkoppling når team inom minuter eller timmar | Återkopplingens hastighet och kvalitet mäts och förbättras | Återkopplingsslingor spänner över team, leverantörer och kunder |
| Kultur och lärande | Skuld följer efter misslyckande | Vissa skuldfria granskningar | Skuldfria granskningar, experiment och lärandetid är rutin | Lärandeåtgärder följs och resultat kontrolleras | Lärande sprids fortlöpande i organisationen |

## Checklista

- [ ] Vi har en gemensam skriven definition av vad DevOps betyder för oss.
- [ ] Team som bygger en tjänst delar ansvaret för att köra den.
- [ ] En pipeline bygger, testar och driftsätter ändringar och registrerar vad den gjorde.
- [ ] Ändringar släpps i små satser, ofta.
- [ ] Test-, övervaknings- och användaråterkoppling når teamet snabbt.
- [ ] Säkerhets- och policykontroller körs i pipelinen.
- [ ] Jour är delad, med gränser för nattliga samtal och justerade larm.
- [ ] Incidentgranskningar är skuldfria och ger ägda åtgärder.
- [ ] Vi följer ledtid, driftsättningsfrekvens, andel misslyckade ändringar och återhämtningstid för varje tjänst.
- [ ] Beroende team får veta om vår releaserytm och större ändringar.

## AI-prompter

**Syfte: kartlägga väntetiderna mellan "klar" och "live".**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: kontrollera var ITIL-arbetssätt förekommer i er pipeline.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera en pilot av delat ägarskap med ett team.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: utforma en skuldfri incidentgranskning för ett blandat team.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): använd för att planera små, täta releaser och kontrollerna kring dem.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): använd för att bygga de automatiserade tester en pipeline beror på.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): använd för att flytta testning och säkerhetskontroller tidigare i pipelinen.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): använd för att utforma delad jour med rättvisa gränser.
- [postmortem](../../../../skills/postmortem/SKILL.md): använd för att hålla skuldfria granskningar som matar den tredje vägen.

## Viktiga källor

- **DevOps** (Wikipedia): en översikt av definitioner, arbetssätt, förhållanden till agilt, SRE och DevSecOps samt DORA-mått, med noterade debatter.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): källan till flöde, återkoppling och ständigt lärande.
- **DORA capabilities and metrics** (dora.dev): forskningsprogrammets lista över förmågor och dess mått på programvaruleverans.
- **The DevOps Handbook** och **The Phoenix Project** (Gene Kim och medförfattare): böckerna som utvecklar de tre vägarna i detalj.

## Referenser

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
