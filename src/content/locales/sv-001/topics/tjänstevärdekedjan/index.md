# Tjänstevärdekedjan

**Tjänstevärdekedjan är en uppsättning av sex aktiviteter som team kombinerar i olika ordning för att skapa värdeströmmar, och den beskriver hur kontinuerlig leverans och tjänstedrift ryms i ett flöde i stället för två skilda.**

## Varför detta är viktigt

Många organisationer behandlar byggande och drift som två steg: först bygger ett projekt tjänsten, sedan tar en driftgrupp över den. Överlämningen är där kunskap går förlorad, ansvar suddas ut och kunder känner gapet. ITIL 4:s tjänstevärdekedja utformades för att ersätta den bilden med en där samma aktiviteter kan ske i vilken ordning som helst och så ofta som behövs, beroende på situationen.

Det ligger nära hur agila team redan arbetar. En vecka kan ett team planera en funktion, bygga en del av den, släppa den, besvara en kunds fråga om den och rätta ett problem som hittats i produktion. Var och en av dessa är en egen aktivitet i kedjan. Att se dem som delar av ett flöde hjälper ett team att fråga var arbete väntar, vem som gör varje aktivitet och vilka aktiviteter som försummas.

Det här ämnet beskriver de sex aktiviteterna, hur de kombineras till värdeströmmar och hur ett agilt team kan använda idén. Sammanfattningarna kommer från en utbildningsleverantör och en programvaruleverantör, eftersom ramverksägarens offentliga sidor som lästs för den här guiden nämner tjänstevärdekedjan bara i förbigående. Leverantörens sida listar aktiviteterna utan att beskriva dem, så betrakta beskrivningarna nedan som allmänt använda läsningar och kontrollera ITIL 4-publikationerna för ägarens formulering (se Ämne 2.2 — ITIL).

## Centrala begrepp

### Var kedjan sitter

I tjänstevärdessystemet är kedjan den operativa modellen i mitten (se Ämne 2.3 — Tjänstevärdessystemet i ITIL). En leverantörssida beskriver den som den del av systemet som rör leveranspipelinen eller livscykeln för en produkt eller tjänst, med efterfrågan som indata och värde som utdata. Den noterar också att livscykeln i praktiken sällan är linjär.

### De sex aktiviteterna

Tabellen ger varje aktivitet, det syfte en utbildningsleverantörs sida anger för den och hur aktiviteten kan se ut i ett agilt team. Kolumnen till höger är den här guidens läsning.

| Aktivitet | Syfte, så som en utbildningsleverantör sammanfattar det | Hur det kan se ut i ett agilt team |
|---|---|---|
| **Planera** | Definierar policyer, mål och riktlinjer för organisationens riktning, så att alla delar en förståelse av vision, nuläge och förbättringsriktning | Produktmål, färdplaner, kvartalsplanering och portföljval |
| **Förbättra** | Förbättrar ständigt tjänster, arbetssätt och processer i alla aktiviteter | Retrospektiv, efteranalyser och förbättringsobjekt i backloggen |
| **Engagera** | Samverkar med intressenter för att förstå behov, ge information, fånga återkoppling och krav och hantera relationer | Användarundersökningar, sprintgenomgångar, servicedesken och kundsamtal |
| **Utforma och övergå** | Säkerställer att nya eller ändrade tjänster möter intressenternas förväntningar, från design till den levande miljön | Att utforma en ändring, testa den och göra den redo för release och support |
| **Skaffa/bygga** | Anskaffar eller skapar de komponenter som behövs för tjänster, som fysiska resurser, infrastruktur, kunskap eller programvara | Att utveckla programvara, köpa ett verktyg, förbereda infrastruktur, utbilda personal |
| **Leverera och stödja** | Levererar tjänster som överenskommet och ger löpande support för att lösa problem och uppfylla förfrågningar | Att driva tjänsten, hantera incidenter och förfrågningar, driftsätta releaser |

### Aktiviteter är inte steg

Utbildningsleverantörens sida säger att aktiviteterna "inte är linjära utan sammanlänkade och kan kombineras på olika sätt för att bilda flera värdeströmmar". En **värdeström** är, med dess ord, en specifik uppsättning aktiviteter som skapar och levererar en viss tjänst eller produkt till kunder. Det är huvudidén. Kedjan är en meny av aktiviteter, och en värdeström är en väg genom den vald för ett särskilt syfte.

### Illustrativa värdeströmmar

Sidorna som lästs för den här guiden ger inga exempel på värdeströmmar, så följande är den här guidens illustrationer av hur aktiviteterna kan kombineras. De kommer inte från ITIL-publikationer, och en verklig ström kommer att skilja sig.

| Värdeström | En möjlig väg genom aktiviteterna |
|---|---|
| **Hantera en incident** | Engagera (en användare rapporterar den) → leverera och stödja (återställ tjänsten) → förbättra (granska och åtgärda orsaken) |
| **Släppa en funktion** | Planera (besluta målet) → utforma och övergå (utforma, testa, förbereda support) → skaffa/bygga (utveckla) → leverera och stödja (släpp) → engagera (få återkoppling) → förbättra |
| **Uppfylla en åtkomstförfrågan** | Engagera (förfrågan mottagen) → leverera och stödja (kontrollera och bevilja åtkomst) → engagera (bekräfta med användaren) |
| **Introducera en ny leverantör** | Planera (besluta behovet) → engagera (välja och komma överens om villkor) → skaffa/bygga (integrera) → leverera och stödja (driva) → förbättra (granska prestanda) |

### Arbetssätt och kedjan

Arbetssätt är de förmågor som aktiviteterna drar på. Incidenthantering är till exempel ett arbetssätt som används i flera värdeströmmar. Källor är inte överens om varje detalj i kartläggningen mellan arbetssätt och aktiviteter, så undvik en stel tabell. Ett bättre test är om ett arbetssätt bidrar till den värdeström ni undersöker (se Del 3).

### Värdeströmmar och agilt flöde

Agilt och lean-tänkande använder redan värdeströmmar (se Ämne 1.7 — Lean programvaruutveckling). En värdeströmskarta visar stegen, tiderna och väntetiderna i en väg. ITIL-idén lägger till ett ordförråd för att klassificera stegen och en påminnelse om att vägen omfattar support och förbättring såväl som byggande. För digitalt arbete kopplar detta till värdeströmshantering (se Ämne 5.4 — Värdeströmshantering).

### Gränser

Sidorna som lästs för den här guiden ger ingen metod för att utforma eller välja värdeströmmar, och leverantörens sida förklarar inte hur kedjan förhåller sig till ständig förbättring utöver att kalla förbättring avgörande. Kedjan är ett sätt att beskriva arbete, inte ett sätt att avgöra hur det ska göras. Dess värde beror på om ni använder den för att titta på verkliga flöden.

## Bästa praxis

1. **Välj en värdeström och rita den.** Välj ett flöde som är viktigt för kunderna, som att släppa en ändring eller hantera en förfrågan. Lista stegen i ordning och märk vart och ett med den närmaste av de sex aktiviteterna.
2. **Ta med support och förbättring i bilden.** Stanna inte strömmen vid release. Visa vad som händer efteråt: att hantera incidenter och lära av dem.
3. **Leta efter aktiviteter som saknas.** Om en ström saknar engagerasteg pratar ingen med användarna. Om den saknar förbättrasteg lärs ingenting. Lägg till dem där de behövs.
4. **Tidsätt väntetiderna.** För en ström, registrera hur länge arbetet väntar mellan aktiviteter och var det korsar en teamgräns. Den längsta väntan är det första att undersöka (se Ämne 5.4 — Värdeströmshantering).
5. **Kombinera aktiviteter fritt.** Låt olika strömmar använda olika vägar. En rättning av ett litet fel kan gå direkt från leverera och stödja till skaffa/bygga och tillbaka, utan planeringssteg.
6. **Lägg utforma och övergå i teamets arbete.** Inkludera supportanteckningar, övervakning och utbildning som en del av byggandet, inte som en överlämning i slutet (se Ämne 3.5 — Release- och driftsättningshantering).
7. **Gör "engagera" till en kontinuerlig aktivitet.** Begränsa inte kontakten med användare till början och slutet av ett projekt. Ta med servicedesken och kundåterkoppling i planeringen.
8. **Koppla planeringen till belägg från driften.** Använd incident- och förfrågningsdata i planeringssamtal så att mål speglar vad användarna faktiskt upplever (se Ämne 5.1 — Agil tjänstehantering).
9. **Utse en ägare för varje ström.** En person bör kunna säga hur strömmen presterar och kunna samla team för att förbättra den.
10. **Använd kedjan som checklista för gap.** När något fallerar, fråga vilken aktivitet som var svag: oklar plan, dåligt engagemang, forcerad övergång, svagt bygge, vacklande support eller ingen förbättring.
11. **Håll diagrammet enkelt.** En grov skiss med sex etiketter räcker. Om ritningen behöver en teckenförklaring, förenkla den.
12. **Granska strömmar efter förändringar.** När teamstrukturer, leverantörer eller verktyg ändras, kontrollera om strömmarna fortfarande fungerar som ritade.

## Frågor att diskutera med teamet

**Vilka är de tre viktigaste värdeströmmarna för våra användare, och vem äger var och en?**

Be människor nämna de flöden som betyder mest, som att en användare får ett nytt konto eller att en rättning når produktion. Jämför listorna. Skillnader visar att teamet har olika bilder av vad som är viktigt. Facilitatorn kan fråga vem som kunde svara för varje ström från början till slut. Ofta kan ingen det, vilket är ett fynd.

**För en ström, vilka av de sex aktiviteterna gör vi bra, och vilka hoppar vi över?**

Rita strömmen och märk stegen. Leta sedan efter aktiviteter som saknas. Team finner ofta att de planerar och bygger bra, och engagerar och förbättrar dåligt. Fråga vad den saknade aktiviteten skulle tillföra och vad den skulle kosta. Välj en att lägga till i liten skala.

**Var väntar arbetet mellan aktiviteter, och vem äger väntan?**

Markera överlämningarna och notera typiska väntetider. Många väntetider sitter vid gränsen mellan team. Fråga om väntan behövs, till exempel för en riskkontroll, eller är en olycka i hur team är organiserade. Välj en att förkorta.

**Hur får vi veta vad användare tycker om det vi levererar, och hur snabbt ändrar det våra planer?**

Följ en nyligen inkommen återkoppling från användaren till backloggen. Räkna stegen. Om det tog veckor eller aldrig kom fram är aktiviteten engagera svag. Fråga vad som skulle förkorta vägen, som en gemensam kanal med servicedesken. Kom överens om en förändring.

**Vad gör vi efter en incident eller en release för att förbättra nästa?**

Titta på de senaste incidenterna och releaserna efter en registrerad förbättring. Om det inte finns någon är aktiviteten förbättra informell. Fråga vem som äger förbättringsåtgärder och hur de följs. Kom överens om ett enkelt ställe att registrera dem.

**Vilka strömmar korsar organisatoriska gränser, och vem talar för helheten?**

Lista strömmar som involverar leverantörer, andra avdelningar eller kunder. Fråga vem som ansvarar för flödet från början till slut och vad som händer vid gränserna. Ett bra utfall är att utse en samordnare och ett regelbundet samtal över gränsen.

## I praktiken: ett agilt ITIL-exempel

En regional sjukhusgrupp driver en patientportal som används för att boka tider och se provsvar. Ett team på tio bygger och driver den. Teamet släpper nya funktioner varannan vecka, men patienter klagar på att rättningar av rapporterade fel tar månader och att de inte får svar på sina återkopplingsmeddelanden.

Chefen för digitala tjänster ber teamet rita värdeströmmen för ett rapporterat fel, från patientens meddelande till en rättning i produktion. De märker stegen med de sex aktiviteterna. Meddelandet kommer via ett kontaktformulär (engagera) och ligger i en delad inkorg i dagar innan någon sorterar det. Ett sorterat fel hamnar i samma backlogg som nya funktioner (planera), där det konkurrerar dåligt. En rättning byggs (skaffa/bygga), testas och släpps med nästa funktionsomgång (utforma och övergå, leverera och stödja). Ingen talar om för patienten (engagera), och ingen registrerar vad felet lärde teamet (förbättra).

Teamet ändrar strömmen. Den delade inkorgen kontrolleras dagligen enligt ett schema, fel märks och får en egen bana i backloggen med målet nästa release, patienten får ett svar vid mottagandet och ett till när rättningen är live, och varje fel som är äldre än en månad diskuteras vid den tvåveckorsvisa genomgången. Efter två månader sjunker mediantiden för rättning och patienternas klagomål om tystnad minskar. Problem återstår: fel som rör sjukhusets tidsbokningssystem, som drivs av en leverantör, väntar fortfarande i leverantörens kö, och svarsmeddelandena skrivs av utvecklare på ett språk som vissa patienter har svårt att följa. Teamet bjuder in leverantören till genomgången och ber kommunikationsteamet utarbeta mallar på lättbegriplig text.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam lägger vanligtvis mest tid på planera, utforma och övergå samt skaffa/bygga. Titta på de andra tre: hur ni engagerar användare, hur ni supportar det ni släpper och hur ni förbättrar. Behandla supportförfrågningar och incidentlärande som indata till planeringen.

### Tjänste- och driftteam

Driftteam lägger mest tid på leverera och stödja, och delar av engagera. Använd kedjan för att visa hur ert arbete beror på tidigare aktiviteter, som utforma och övergå, och för att be om vad ni behöver från dem. Delta i planeringen så att driftkunskap når början av strömmen.

### Ledning och styrning

Ledare kan använda kedjan för att fråga var flödet bryts för viktiga tjänster. Stöd att utse strömägare och ge dem befogenhet att samla team. Undvik att göra de sex aktiviteterna till sex avdelningar; poängen är att koppla samman dem.

### Kunder och användare

Kunder och användare deltar främst i engagera, och de har nytta när återkoppling färdas hela vägen till planer och rättningar. Räkna med svar och synliga resultat. Berätta för leverantören vilken ström som är viktigast för dig och vilka förseningar som skadar dig.

## Vanliga orsaker till misslyckande

- **Att läsa kedjan som en sekvens.** Team tvingar varje arbete genom alla sex i ordning. Välj i stället vägar som passar arbetet.
- **Att kartlägga avdelningar, inte strömmar.** Varje aktivitet tilldelas en avdelning och flödet förloras. Följ i stället ett arbete över dem.
- **Att glömma engagera och förbättra.** Strömmen slutar vid release. Inkludera i stället användarkontakt och lärande i varje ström.
- **Överlämning i stället för utforma och övergå.** Supportanteckningar, övervakning och utbildning lämnas till slutet. Bygg i stället in dem i arbetet från början.
- **Ingen strömägare.** Ingen kan säga hur en ström presterar. Utse i stället en ägare med befogenhet att samla team.
- **Alltför detaljerade diagram.** Kartan blir en affisch som ingen läser. Håll den i stället till en sida och uppdatera den när något ändras.
- **Att behandla ordförrådet som målet.** Team lägger tid på att märka och inte på att förbättra. Märk i stället bara det som hjälper att hitta ett gap.
- **Att förlita sig på sekundära sammanfattningar.** Beskrivningar av aktiviteterna skiljer sig mellan källor. Kontrollera i stället ägarens publikationer när precision är viktig.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Synlighet av värdeströmmar | Flöden är bara informellt kända | Vissa strömmar ritas av sina team | Nyckelströmmar är kartlagda med ägare | Strömmar mäts för väntetider och resultat | Strömmar korsar organisatoriska gränser och förbättras tillsammans |
| Aktivitetstäckning | Planering och byggande dominerar | Vissa team lägger till aktiviteterna engagera och förbättra | Alla sex aktiviteter förekommer i nyckelströmmar | Gap i täckningen följs och åtgärdas | Täckningen balanseras mellan team och leverantörer utifrån belägg |
| Överlämningar och övergång | Överlämningar är sena och ohanterade | Vissa team inkluderar support i byggandet | Support, övervakning och utbildning ingår i varje release | Övergångsproblem mäts och minskas | Övergång delas mellan leverans, drift och leverantörer |
| Återkoppling och förbättring | Återkoppling kommer som klagomål | Viss återkoppling når backloggen | Återkoppling och förbättringsobjekt följs med ägare | Förbättringars effekter kontrolleras | Återkoppling och lärande flödar mellan team och kunder kontinuerligt |

## Checklista

- [ ] Vi har ritat minst en värdeström som är viktig för användarna.
- [ ] Varje steg i ritningen är märkt med den närmaste värdekedjeaktiviteten.
- [ ] Strömmen inkluderar engagemang med användare och ett steg som registrerar förbättringar.
- [ ] Vi vet var arbete väntar och hur länge, åtminstone ungefärligt.
- [ ] Arbete med utforma och övergå, som övervakning och supportanteckningar, är en del av byggandet.
- [ ] En namngiven person äger flödet från början till slut i strömmen.
- [ ] Återkoppling från användare når backloggen och får svar.
- [ ] Incident- och förfrågningsdata används i planeringen.
- [ ] Strömmen granskas efter betydande förändringar.
- [ ] Vi har kontrollerat ägarens publikation för den exakta definitionen av varje aktivitet.

## AI-prompter

**Syfte: märka stegen i en verklig ström med de sex aktiviteterna.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: hitta var återkoppling går förlorad på väg till backloggen.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Syfte: planera en värdeströmsworkshop med leverans- och driftpersonal.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva en kort guide till värdekedjan för nya teammedlemmar.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): använd för att rita en ström, tidsätta dess väntetider och märka dess steg.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att analysera hur arbete rör sig mellan roller och hitta problem vid överlämningar.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): använd för att planera hur ett team levererar i små steg genom bygg- och releaseaktiviteterna.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): använd för att utforma sätt att samla återkoppling från användare för aktiviteten engagera.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla de genomgångar som gör aktiviteten förbättra verklig.

## Viktiga källor

- **ITIL 4 Foundation** (PeopleCert): ägarens sida som nämner tjänstevärdekedjan bland de studerade ämnena.
- **ITIL service value system** (Purple Griffon): en utbildningsleverantörs sammanfattning av de sex aktiviteterna och värdeströmmar; sekundär.
- **The ITIL 4 Service Value System** (ManageEngine): en leverantörs sammanfattning som nämner aktiviteterna; sekundär.
- **Value-stream mapping** (Wikipedia): bakgrund om kartläggningstekniken som lean-praxis använder för att hitta slöseri.

## Referenser

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
