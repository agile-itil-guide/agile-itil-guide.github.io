# Leveransprognoser och planeringsmått

**Leveransprognoser och planeringsmått låter ett team med ärliga intervall säga när arbete sannolikt blir klart och hur mycket det kan ta på sig, genom att följa flödet av färdigt arbete och teamets kapacitet, och de fungerar för tjänsteteam när planerat arbete och avbrottsdrivet arbete räknas tillsammans.**

## Varför detta är viktigt

Agila team strävar efter kontinuerlig programvaruleverans, och alla som är beroende av den leveransen ställer samma frågor: när blir det här klart, hur mycket kan teamet ta på sig och vad händer när något brådskande dyker upp? Ett team som inte kan svara på dessa frågor med belägg faller tillbaka på löften det inte kan hålla, och de som är beroende av det lär sig att misstro varje datum.

Ett team som driver tjänster känner detta skarpare än de flesta. Planerat förbättringsarbete, serviceförfrågningar och incidenter delar på samma personer. En plan som bortser från den oplanerade delen misslyckas första veckan en incident inträffar. En prognos som kommer från teamets egen historik och anger sitt intervall klarar mötet med verkligheten bättre än ett datum som kommer från hopp.

Det här ämnet beskriver hur man prognostiserar utifrån flödet av färdigt arbete, hur man planerar kring teamets kapacitet och vilka planeringsmått som hjälper eller vilseleder. Scrum, sprintar och velocity är ett sätt att planera; ett kort avsnitt mot slutet behandlar dem för team som använder dem. Måtten här bygger på flödesmåtten i Ämne 1.5 — Kanban och den bredare vägledningen om mätning i Ämne 5.6 — Mått och mätning.

## Centrala begrepp

### Prognostisera utifrån flöde, inte löften

En prognos är ett påstående om framtiden som bygger på belägg från det förflutna, och den bär osäkerhet. Kanban Guide definierar en förväntad servicenivå (service level expectation) som en prognos för hur lång tid ett arbetsobjekt bör ta att flöda genom arbetsflödet, baserad på tidigare cykeltider, och säger att detta inte är ett avtal. Den definitionen är en bra modell för all leveransprognostisering: använd verklig historik, säg vad den omfattar och undvik att lova mer än ni har mätt (se Ämne 1.5 — Kanban).

Två slags prognoser är vanliga:

- **Hur lång tid tar ett objekt?** Titta på hur lång tid liknande färdiga objekt tog och ange ett intervall eller ett påstående som "de flesta objekt av den här typen blir klara inom ett visst antal dagar".
- **Hur mycket blir klart till ett datum, eller när blir en uppsättning objekt klar?** Titta på hur många objekt teamet vanligtvis blir klart med under en period och tillämpa det intervallet på det arbete som återstår.

### Flödesmåtten bakom en prognos

Kanban Guide definierar fyra mått, och de är råmaterialet för leveransprognostisering:

| Mått | Vad det säger | Hur det matar en prognos |
|---|---|---|
| **Cykeltid** | Hur lång tid ett färdigt objekt tog från start till slut | Spridningen av senaste cykeltider ger ett intervall för hur lång tid ett nytt objekt tar |
| **Genomflöde** | Hur många objekt som blev klara under en period | Intervallet av senaste genomflöde ger ett intervall för hur mycket som blir klart under en framtida period |
| **Pågående arbete (WIP)** | Hur många objekt som är påbörjade men inte färdiga | För mycket WIP förlänger cykeltider och gör varje prognos mindre tillförlitlig |
| **Arbetsobjektets ålder** | Hur länge ett ofärdigt objekt har varit pågående | Visar objekt som redan är äldre än de flesta färdiga, medan det fortfarande finns tid att agera |

Guiden noterar att team kan döpa om dessa mått och bör lägga till andra där det är användbart, och att mått bara betyder något när de informerar hur teamet arbetar. Använd percentiler och intervall, inte bara medelvärden, eftersom långa svansar gömmer sig i medelvärden (se Ämne 5.6 — Mått och mätning).

### En enkel prognosmetod

Ett team kan prognostisera utan särskilda verktyg:

1. Samla genomflödet för var och en av de senaste åtta till tolv veckorna, eller liknande perioder, från verkligt färdiga objekt.
2. Ta det lägsta, ett typiskt och det högsta av dessa tal.
3. Dela antalet återstående objekt med vart och ett för att få ett intervall av perioder till färdigt.
4. Ange intervallet, de data det kom från och vad som skulle ändra det, som nytt arbete, en teamförändring eller ett beroende.

Detta är en tumregel, inte en standard. Den förutsätter att framtida arbete liknar tidigare arbete och att objekten är av ungefär samma storlek. När det inte stämmer, säg det och behandla intervallet som bredare. Jämför varje prognos med vad som hände och justera metoden, som Ämne 3.11 — Tillgänglighet, kapacitet och prestanda råder för efterfrågeprognoser.

### Teamets kapacitet

Kapacitet är hur mycket arbete ett team kan ta emot under en period. För ett leveransteam är det inte antalet personer gånger antalet dagar i perioden. Ledighet, supportuppgifter, möten och oplanerat arbete minskar alla det som finns tillgängligt för planerade objekt. Ett användbart kapacitetsuttalande listar personer och tillgängliga dagar och drar sedan av en andel som reserveras för oplanerat arbete, baserat på vad de senaste perioderna visade.

Färdigheten capacity-planning och Ämne 3.11 — Tillgänglighet, kapacitet och prestanda beskriver kapacitet för tjänster och infrastruktur. Samma logik gäller ett team: planera med intervall, kontrollera mot vad som hände och se över planen när fakta ändras.

### Planerat och oplanerat arbete tillsammans

Tjänsteteam får incidenter, brådskande förfrågningar och ändringar som ingen schemalagt. Om dessa inte räknas blir prognosen för planerat arbete för optimistisk. Ge oplanerat arbete egna objekttyper, räkna hur många som kommer och hur lång tid de tar, och håll data bredvid det planerade arbetet. Detta ger också produktägaren eller tjänsteägaren belägg för vilka återkommande incidenter som förbrukar kapacitet, vilket stöder beslut om att åtgärda orsaker (se Ämne 3.3 — Problemhantering).

### Kontinuerligt leveransflöde och releasetakt

Team som levererar kontinuerligt släpper små ändringar när de är klara, i stället för att vänta till slutet av en planeringsperiod. Det förkortar tiden mellan färdigt och levererat, och det gör prognoser enklare att kontrollera: varje färdigt objekt är en datapunkt. Ändringar följer fortfarande organisationens ändringsmöjliggörande, och förgodkända standardändringar hjälper här (se Ämne 3.4 — Ändringsmöjliggörande och Ämne 3.5 — Release- och driftsättningshantering).

### Om ni använder Scrum, sprintar och velocity

Vissa team planerar i cykler av fast längd. Scrum Guide från 2020, av Ken Schwaber och Jeff Sutherland, definierar Scrum som ett lättviktigt ramverk för adaptiva lösningar på komplexa problem. Dess möten sker inom sprinten, en tidsram på en månad eller mindre. Det här avsnittet täcker det minimum ett team behöver om det använder dem; läs guiden själv innan ni ändrar ett teams sätt att arbeta.

- **Sprint och sprintmål:** sprinten är tidsramen, och sprintmålet är det enda målet för den. Ett mål som någon utanför teamet kan förstå styr valen bättre än en lista med ärenden.
- **Produktbacklogg, produktägare och Scrum Master:** produktbackloggen är en ordnad lista över vad produkten behöver. Produktägaren är en person som ansvarar för dess ordning, och Scrum Master ansvarar för att etablera Scrum och hjälpa teamet att tillämpa det.
- **Inkrement och definition av klart:** ett inkrement är ett användbart, verifierat steg mot produktmålet, och definitionen av klart är den kvalitetsstandard som arbetet måste uppfylla för att räknas. Ett tjänsteteam kan inkludera övervakning, en runbook och en testad återställning i den.
- **Möten:** sprintplanering, Daily Scrum, sprintgenomgång och sprintretrospektiv. Retrospektivet är där teamet granskar hur det arbetade och planerar förbättringar (se Ämne 6.1 — Teamsamtal).
- **Velocity:** ett skattningsbaserat tal som vissa team använder för att planera hur mycket arbete de ska ta på sig. Använd det bara för teamets egen planering. Om det blir ett mål blåser team upp skattningar, så föredra flödesmått, som räknar färdiga objekt, och resultatmått.

Guiden säger att Scrum är ett ramverk, inte en komplett metod. Det täcker inte incidenthantering, servicenivåer eller ändringsprocessen, och att bara använda delar av det gör inte resultatet till Scrum. Om ni anpassar det, benämn variationen ärligt. En blandning av Scrum-möten och Kanban-flöde kallas ibland [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Bästa praxis

1. **Prognostisera utifrån er egen historik.** Använd cykeltider och genomflöde för nyligen färdiga objekt och ange den period data omfattar. Låna inte siffror från ett annat team.
2. **Ge ett intervall, inte ett enda datum.** Visa ett lågt, ett typiskt och ett högt fall och säg vad som skulle flytta resultatet. Ett datum utan intervall lovar en säkerhet ni inte har.
3. **Räkna oplanerat arbete.** Logga incidenter, brådskande förfrågningar och avbrott som arbetsobjekt med egna typer. Mät hur många som kommer och hur lång tid de tar.
4. **Sätt kapaciteten utifrån data.** Lista personer och tillgängliga dagar, dra av ledighet och supportuppgifter och reservera en andel för oplanerat arbete baserat på senaste perioder. Se över andelen regelbundet.
5. **Begränsa pågående arbete.** För mycket påbörjat arbete förlänger cykeltider och försvagar varje prognos. Sätt en gräns och se över den när data ändras (se Ämne 1.5 — Kanban).
6. **Följ arbetsobjektens ålder dagligen.** Ålder visar problem i ofärdiga objekt medan det fortfarande finns tid att agera. Gå igenom de äldsta objekten först.
7. **Använd percentiler och fördelningar.** Säg att de flesta objekt av en typ blir klara inom ett antal dagar, och visa den långsamma svansen. Medelvärden döljer den.
8. **Jämför prognoser med utfall.** Efter varje period, anteckna vad som prognostiserades och vad som hände. Justera metoden, inte bara talet.
9. **Använd skattningar för planering, inte för bedömning.** Om teamet skattar objekt, använd talen för sin egen planering och rangordna inte personer eller team efter dem (se Ämne 5.6 — Mått och mätning).
10. **Gör prognoser synliga för dem som är beroende av dem.** Dela intervallet och antagandena med kunder och intressenter och uppdatera dem när fakta ändras.
11. **För in förbättringsarbete i samma flöde.** Lägg problemrättningar, övervakningsarbete och automatisering bredvid funktioner, så att avvägningarna syns (se Ämne 3.15 — Ständig förbättring).
12. **Om ni använder sprintar och velocity, håll dem små och ärliga.** Kom överens om vilka delar av Scrum ni följer, benämn variationen och pröva ett flödesbaserat angreppssätt om avbrott dominerar.

## Frågor att diskutera med teamet

**Hur svarar vi på "när blir det här klart?" i dag, och vad bygger svaret på?**

Be om de tre senaste svaren teamet gav och vad vart och ett bygger på. Jämför dem med vad som hände. Team finner ofta att datum kom från hopp eller från den mest seniores åsikt. Fortsätt med att fråga vilken historik teamet kunde använda i stället.

**Hur stor andel av vår tid går till arbete ingen planerat, och vet vi det utifrån data?**

Summera planerade objekt, brådskande förfrågningar och incidenter över de senaste veckorna. Facilitatorn kan fråga om andelen är stabil eller varierar med säsongen, och vem som avgör när ett avbrott går före planerat arbete. Kom överens om hur det ska registreras framöver.

**Hur ser våra cykeltider ut, och vad skulle vi säga om en kund frågade hur lång tid en typisk förfrågan tar?**

Rita eller lista cykeltiderna för de senast färdiga objekten. Fråga vad de flesta tar, vad de långsammaste tar och vad som förklarar de långsamma. Diskutera om en förväntad servicenivå byggd på den här historiken vore rimlig, och vem som bör höra den.

**Vilka av våra nuvarande objekt är redan äldre än de flesta färdiga objekt?**

Titta på de äldsta öppna objekten. Fråga varför vart och ett har fastnat, vem som kan lösa upp det och vad teamet gör i dag. Avsluta med att besluta hur ofta teamet ska granska ålder.

**När blev en prognos av oss senast fel, och vad ändrade vi efteråt?**

Be om ett färskt exempel, prognosen och utfallet. Leta efter vad prognosen missade: oplanerat arbete, ett beroende eller objekt som var större än väntat. Kom överens om en ändring i metoden och hur teamet ska kontrollera den.

**Om vi använder sprintar eller velocity, vad gör de för oss, och vad skulle vi förlora om vi släppte dem?**

Fråga ärligt vilket problem var och en löser. Leta efter belägg, som bättre fokus eller tydligare mål, och efter skada, som uppblåsta skattningar eller ignorerade avbrott. En facilitator bör se upp för varje ändring som tar bort återkopplingsslingor, som är de användbara delarna. Kom överens om ett experiment och hur resultaten ska jämföras.

## I praktiken: ett agilt ITIL-exempel

En regional sjukhusförvaltnings IT-avdelning har ett team på sju som underhåller patientbokningsapplikationen. Klinikcheferna ber om datum, och teamet har gett dem. De flesta datum missas, eftersom incidenter från avdelningarna, förfrågningar från klinikerna och säkerhetsuppdateringar fortsätter att komma, och teamet ägnar de flesta dagar åt dem.

Teamets ledare börjar logga varje objekt, planerat eller inte, med start- och slutdatum. Efter åtta veckor visar data att ungefär hälften av teamets tid går åt till oplanerat arbete och att de flesta planerade objekt blir klara på under två veckor, med en lång svans av objekt som väntar på ett annat team. Teamet kommer överens om tre förändringar. Det ska ange varje prognos som ett intervall, med användning av senaste genomflöde och cykeltider. Det ska reservera hälften av sin kapacitet för oplanerat arbete och planera endast mot resten. Det ska gå igenom de äldsta öppna objekten varje morgon.

Under de följande två månaderna stämmer prognoserna för det mesta, och klinikcheferna, som nu ser ett intervall och dess antaganden, planerar efter det. Tjänsteägaren, en driftchef på en klinik, kan se vilka återkommande incidenter som förbrukar kapacitet och höjer prioriteten för en rättning av ett återkommande fel i tidsbokningssynkroniseringen; felet upphör. Svårigheter återstår. En större incident skjuter fortfarande ut en del arbete, och cheferna som gillade de snabba svaren i det gamla upplägget finner intervallen mindre tillfredsställande. Teamet kommer överens om att berätta för dem vad som ändrats i prognosen närhelst den flyttar sig, och att jämföra sitt angreppssätt med en metod med fasta cykler för förbättringsarbetet vid nästa genomgång.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam har mest nytta av att prognostisera med sina egna flödesdata. Logga arbete när det startar och slutar, begränsa pågående arbete och släpp små ändringar kontinuerligt. Dela intervallet med dem som väntar, och använd definitionen av klart, om ni har en, för att inkludera det driftarbete som gör en release möjlig att supporta.

### Tjänste- och driftteam

Driftteam äger det oplanerade arbete som får prognoser att fallera. Registrera incidenter, förfrågningar och ändringar som arbetsobjekt och dela återkommande mönster så att de påverkar arbetets ordning. Använd cykeltidsdata för att sätta realistiska förväntningar med kunder, och var tydlig med hur mycket kapacitet som går till planerat förbättringsarbete.

### Ledning och styrning

Ledare får en ärligare bild av prognosintervall och flödesmått än av statusrapporter. Be om intervall med sina antaganden, om prognosens träffsäkerhet över tid och om vad teamet ändrade på grund av data. Undvik att sätta mål för enskilda tal, vilket ger fusk, och acceptera att en prognos flyttar sig när fakta gör det.

### Kunder och användare

Kunder och användare har nytta av tydligare förväntningar och färre missade datum. Fråga teamet om den förväntade tiden för din typ av förfrågan och räkna med att den vilar på historik. Om din förfrågan är brådskande, räkna med att bli tillfrågad varför, eftersom att flytta den framåt påverkar allas andra arbete.

## Vanliga orsaker till misslyckande

- **Att lova datum utifrån hopp.** Datum kommer från åsikter och missas. Prognostisera i stället utifrån nyligen färdiga objekt och visa intervallet.
- **Att ignorera oplanerat arbete.** Avbrott förstör planen varje period. Räkna dem i stället som arbetsobjekt och reservera kapacitet utifrån data.
- **Prognoser med ett enda tal.** Ett datum döljer osäkerheten. Ge i stället ett lågt, ett typiskt och ett högt fall med antaganden.
- **Att bara använda medelvärden.** Den långa svansen av långsamma objekt döljs. Använd i stället percentiler och fördelningar.
- **Att starta för mycket.** Högt pågående arbete förlänger varje cykeltid. Begränsa det i stället och slutför före start.
- **Att använda velocity eller genomflöde som prestationsmål.** Team blåser upp skattningar eller delar objekt för att se bra ut. Använd i stället talen för planering och bedöm resultat (se Ämne 5.6 — Mått och mätning).
- **Att aldrig kontrollera prognosen.** Metoden förbättras aldrig. Jämför i stället varje prognos med vad som hände.
- **Att tillämpa fasta cykler på arbete som inte passar.** En kö av oförutsägbara förfrågningar som tvingas in i fasta perioder skapar frustration. Pröva i stället ett flödesbaserat angreppssätt och jämför resultaten.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Prognostisering | Datum kommer från åsikter | Vissa team använder tidigare data | Team prognostiserar som intervall utifrån sina egna flödesdata | Prognosens träffsäkerhet följs och metoden förbättras | Prognoser samordnas mellan team och leverantörer |
| Flödesmått | Få mått samlas in | Vissa team registrerar cykeltid eller genomflöde | De fyra flödesmåtten samlas in konsekvent | Måtten granskas och används för att sätta förväntningar | Flödesdata delas mellan team och används för gemensam planering |
| Kapacitet och oplanerat arbete | Avbrott räknas inte | Vissa team följer oplanerat arbete | Kapacitet för oplanerat arbete sätts utifrån data | Andelen och orsakerna till oplanerat arbete granskas och minskas | Drift- och leveransteam planerar kapacitet tillsammans |
| Användning av skattningar och fasta cykler | Skattningar används för att bedöma människor | Vissa team använder skattningar för sin egen planering | Team kommer överens om vilka arbetssätt de använder och benämner variationer | Arbetssättens effekter granskas mot flöde och resultat | Arbetssätt justeras mellan team utifrån gemensamt lärande |

## Checklista

- [ ] Prognoser kommer från teamets egen historik över färdiga objekt.
- [ ] Varje prognos är ett intervall med angivna antaganden.
- [ ] Incidenter, förfrågningar och förbättringsarbete registreras alla som arbetsobjekt.
- [ ] Kapacitet för oplanerat arbete sätts utifrån data och granskas.
- [ ] Cykeltid, genomflöde, pågående arbete och arbetsobjektets ålder följs.
- [ ] Pågående arbete har en gräns som teamet granskar.
- [ ] De äldsta öppna objekten granskas regelbundet.
- [ ] Prognoser jämförs med utfall efter varje period.
- [ ] Skattningar och velocity, om de används, är inte mål.
- [ ] All användning av Scrum, sprintar eller en variation är nedskriven och ärligt benämnd.

## AI-prompter

**Syfte: bygga ett prognosintervall utifrån era egna genomflödesdata.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Syfte: analysera cykeltider och föreslå en förväntad servicenivå.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Syfte: mäta hur mycket kapacitet som går till oplanerat arbete.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Syfte: gå igenom de äldsta öppna objekten och planera att lösa upp dem.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## AI-färdigheter

- [kanban](../../../../skills/kanban/SKILL.md): använd för att sätta upp flödesmått, gränser för pågående arbete och en förväntad servicenivå.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att kontrollera om tillgänglig kapacitet möter beräknad efterfrågan och vad man gör åt ett gap.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): använd för att uppskatta framtida belastning som ett intervall utifrån tidigare data och affärsplaner.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): använd för att välja ett mått, benämna dess fuskvektor och skyddsräcke och fylla i ett måttcharter.
- [scrum](../../../../skills/scrum/SKILL.md): använd om teamet planerar i sprintar, för att sätta upp eller granska dess roller, möten och artefakter.

## Viktiga källor

- **The Kanban Guide** (kanbanguides.org): definierar flödesmåtten och den förväntade servicenivån som en prognos baserad på tidigare cykeltider.
- **The Scrum Guide** (Ken Schwaber och Jeff Sutherland, scrumguides.org): den auktoritativa, korta definitionen av Scrum, för team som använder sprintar.
- **Kanban (development)** (Wikipedia): en översikt över Kanbans flödesmått och dragsystem.
- **Scrum (software development)** (Wikipedia): en översikt över Scrums historia, roller, möten och kritik.

## Referenser

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
