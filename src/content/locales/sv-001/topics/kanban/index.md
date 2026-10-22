# Kanban

**Kanban hanterar arbete som ett flöde: det gör arbetsflödet synligt, begränsar hur mycket som pågår och använder flödesmått för att förbättra, vilket passar tjänsteteam vars arbete kommer kontinuerligt och inte kan planeras i fasta cykler.**

## Varför detta är viktigt

En servicedesk, ett driftteam och ett plattformsteam delar alla ett drag: arbetet kommer när det kommer. Incidenter, förfrågningar och små ändringar kommer i en ström, och teamet kan inte planera en månads värde av dem i förväg. Ramverk byggda kring fasta cykler, som Scrum, passar det här arbetet bara med anpassningar (se Ämne 1.4 — Leveransprognoser och planeringsmått). Kanban utformades för flöde och passar därför mer naturligt.

Kanban talar också tjänstehanteringens språk. Det frågar hur lång tid arbetet tar, hur mycket som väntar och vilket steg som är flaskhalsen, och det är frågorna bakom servicenivåer, köhantering och kapacitetsplanering. Ett team som följer ålder och cykeltid på sitt arbete kan tala om servicenivåer med data i stället för intryck.

Kanban är enkelt att starta och förvånansvärt lätt att göra dåligt. En tavla med kolumner är inte Kanban om ingenting begränsar pågående arbete och ingen använder måtten. Det här ämnet förklarar vad Kanban Guide ber ett team om, var metoden kommer ifrån och hur den tillämpas på tjänstearbete.

## Centrala begrepp

### Vad Kanban är

[Kanban Guide](https://kanbanguides.org/english/), vars nuvarande version är daterad maj 2025 och som listar John Coleman och Daniel Vacanti bland sina författare, definierar Kanban som en strategi för att optimera flödet av värde genom en process. Den beskriver flöde som förflyttningen av potentiellt värde genom ett system. Målet är en balans mellan tre saker: ändamålsenlighet (att leverera det intressenterna vill ha, när de vill ha det), effektivitet (att använda resurser väl) och förutsägbarhet (att prognostisera leverans med en acceptabel nivå av osäkerhet). Guiden säger att den gäller kunskapsarbete i alla branscher.

Ordet "kanban" är japanska och betyder en skylt eller anslagstavla. [Wikipedia-artikeln om Kanban inom utveckling](https://en.wikipedia.org/wiki/Kanban_(development)) säger att metoden kommer från lean-tillverkning och [Toyotas produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System), med ett just-in-time-system som påbörjades hos Toyota i slutet av 1940-talet. David J. Andersons bok från 2010 spårar programvaruversionen till ett projekt 2004 hos Microsoft och ett projekt 2006–2007 hos Corbis.

### De tre arbetssätten

Kanban Guide nämner tre arbetssätt. Ett team som gör alla tre, och använder måtten nedan, praktiserar Kanban i guidens mening.

| Arbetssätt | Vad teamet gör | En anmärkning för tjänsteteam |
|---|---|---|
| **Definiera och visualisera arbetsflödet** | Kom överens om en arbetsflödesdefinition (Definition of Workflow, DoW): vad ett arbetsobjekt är, var det börjar och slutar, tillstånden däremellan, hur pågående arbete begränsas, reglerna för att flytta arbete och en förväntad servicenivå (SLE). Visa det på en tavla. | DoW för en servicedesk kan definiera incident-, förfrågnings- och ändringsobjekt, med olika tillstånd och regler för vart och ett |
| **Hantera objekten i arbetsflödet aktivt** | Kontrollera antalet pågående objekt, håll uppsikt över objekt som åldras och lös upp stannade objekt. | En gräns för öppna incidenter per ingenjör tvingar teamet att slutföra eller lämna över arbete innan de påbörjar mer |
| **Förbättra arbetsflödet** | Ändra DoW över tid för att förbättra ändamålsenlighet, effektivitet och förutsägbarhet, med bestämda intervall eller vid behov. | En genomgång av DoW efter en större incident kan ändra regler, gränser eller tillstånd |

Guiden föreskriver varken tavlans utseende eller några möten. Team är fria att lägga till arbetssätt, förutsatt att kärnarbetssätten, måtten och målet att optimera värde förblir intakta.

### Gränser för pågående arbete och dragsystem

Att kontrollera pågående arbete (WIP) skapar det guiden kallar ett dragsystem: nytt arbete startar bara när det finns kapacitet för det. Wikipedia-artikeln ger exemplet med ett steg "driftsättning" med en gräns på fem. När steget är fullt kan ingenting mer komma in förrän något blir klart, så en blockering blir synlig och människor kan hjälpa till att lösa upp den. Utan gränser är en tavla bara en bild av oredan.

### Fyra flödesmått

Guiden listar fyra mått som ett team som använder Kanban följer:

- **Pågående arbete:** antalet objekt som är påbörjade men inte färdiga.
- **Genomflöde:** antalet objekt som blev klara under en given period.
- **Arbetsobjektets ålder:** hur länge ett ofärdigt objekt har varit pågående.
- **Cykeltid:** hur lång tid ett färdigt objekt tog från start till slut.

Guiden säger att team får döpa om dessa och bör lägga till andra mått där det är användbart, och att mått bara betyder något när de informerar de tre arbetssätten. En förväntad servicenivå är en prognos för hur lång tid ett objekt bör ta, baserad på tidigare cykeltider. Den är inget löfte, och den skiljer sig från ett servicenivåavtal (SLA) som förhandlats med en kund. Se Ämne 3.7 — Hantering av servicenivåer.

### Den bredare Kanban-litteraturen

Andra författare har beskrivit metoden bredare. Wikipedia-artikeln listar Don Reinertsens arbete om flöde, Jim Benson och Tonianne DeMaria Barrys *Personal Kanban*, Mike Burrows *Kanban From the Inside* och Corey Ladas *Scrumban*, som föreslog Kanban som ett sätt att förbättra Scrum. Några av dessa källor listar arbetssätt utöver de tre i guiden, som att göra regler explicita, införa återkopplingsslingor och förbättra tillsammans. Betrakta dessa som användbara tillägg, inte som krav från guiden.

Wikipedia-artikeln bär en markering om att en större bidragsgivare kan ha en nära anknytning till ämnet, så kontrollera dess påståenden mot de primära källorna.

### Vad Kanban inte säger

Kanban är inte en projektplan, en uppsättning roller eller en releaseprocess. Det talar inte om hur man utformar en tjänst eller driver en incident. Det ger er ett sätt att se och hantera flöde, och det förlitar sig på att ni tar med innehållet i ert arbete. Det är också dess styrka: ni kan börja med den process ni har och förbättra den i små steg (se Ämne 3.15 — Ständig förbättring).

## Bästa praxis

1. **Börja med det ni gör nu.** Rita det verkliga arbetsflödet, med de tillstånd arbetet faktiskt passerar, inklusive väntetiderna. Rita inte den process ni önskar att ni hade. Ni kan bara förbättra det ni kan se.
2. **Definiera vad ett arbetsobjekt är.** Besluta om incidenter, förfrågningar och ändringar är en typ av objekt eller flera, och ge var och en en tydlig start och ett tydligt slut. Blandade definitioner gör måtten meningslösa.
3. **Sätt WIP-gränser och håll dem.** Börja med en gräns som känns något snäv, som ett eller två objekt per person, och justera efter erfarenhet. En gräns som rutinmässigt bryts ger ingen information, så diskutera varje överträdelse.
4. **Gör reglerna explicita.** Skriv på tavlan när ett objekt får flytta till nästa tillstånd, vem som får dra det och vad som räknas som blockerat. Synliga regler minskar bråk och gör introduktion enklare.
5. **Följ arbetsobjektets ålder, inte bara cykeltid.** Cykeltid är känd först när ett objekt är klart, medan ålder visar problem medan det fortfarande finns tid att agera. Gå igenom de äldsta objekten varje dag.
6. **Använd en förväntad servicenivå baserad på historik.** Ta cykeltiderna för nyligen färdiga objekt och ange till exempel att de flesta objekt av en typ blir klara inom ett givet antal dagar. Revidera den när data ändras. Lova inte kunder ett tal ni inte har mätt.
7. **Behandla brådskande arbete som ett uttryckligt undantag.** Brådskande incidenter går före i kön. Definiera en regel, som en bana med egen gräns, så att undantag syns och inte tyst förstör flödet (se Ämne 3.2 — Incidenthantering).
8. **Leta efter flaskhalsen och hjälp den.** När ett tillstånd alltid är fullt, fråga om det behöver mer kapacitet, en ändrad regel eller ett annat flöde uppströms. Att flytta människor till flaskhalsen slår oftast att trycka in mer arbete i den.
9. **Håll genomgångar med regelbunden rytm.** Guiden tillåter förbättring med bestämda intervall eller vid behov. En kort veckogenomgång av måtten och en månatlig titt på DoW fungerar för många team.
10. **Koppla tavlan till resten av organisationen.** Gör tavlan synlig för kunderna och för angränsande team. Kom överens om hur objekt går mellan tavlor, som från en servicedesk till ett utvecklingsteam.
11. **Behåll måtten för lärande.** Använd talen för att ställa frågor, inte för att rangordna människor. När flödesdata blir ett mål fuskar team med dem (se Ämne 5.6 — Mått och mätning).
12. **Kombinera med andra ramverk medvetet.** Om teamet använder Scrum-möten för planering och Kanban för flöde, säg vad vart och ett är till för och kontrollera att kombinationen minskar förvirring (se Ämne 1.8 — Skala agilt för samordning av flera team).

## Frågor att diskutera med teamet

**Om vi ritade vårt verkliga arbetsflöde, inklusive väntetiderna, hur skulle det se ut?**

Be varje person rita vägen för ett nyligt objekt och lägg sedan ihop ritningarna på en vägg. Skillnader mellan ritningarna visar dolda steg och informella överlämningar. Räkna med överraskningar: godkännanden ingen nämnt, objekt som väntar på ett annat team och omarbetningsslingor. Fortsätt med att markera de tre längsta väntetiderna.

**Hur mycket arbete pågår för var och en av oss just nu, och hur mycket av det väntar?**

Räkna öppna objekt per person och markera vilka som är blockerade eller overksamma. Många team finner att de flesta objekt väntar och få bearbetas. Fråga vad varje person gör när den är blockerad, och om att påbörja ett nytt objekt är det vanliga svaret. Syftet är att diskutera varför att påbörja belönas och att slutföra inte gör det.

**Vilket är det äldsta objektet på vår tavla, och varför är det kvar?**

Välj de tre äldsta objekten och följ vad som hände. Vanliga svar är en oklar ägare, ett beroende av ett annat team eller ett objekt ingen vill avbryta. Fråga om objektet bör slutföras, avbrytas eller eskaleras. En facilitator kan fråga vilken regel som hade fångat objektet tidigare.

**Vad lovar vi våra kunder om hur lång tid saker tar, och vad säger våra egna siffror?**

Jämför de överenskomna servicenivåerna med faktiska cykeltider för färdiga objekt. Om ni inte har data, samla in dem en månad först. Diskutera varje gap öppet. Fråga om målet bör ändras eller om arbetssättet bör det. Kom ihåg att en förväntad servicenivå baserad på data är en prognos, medan ett SLA är ett avtal.

**När brådskande arbete kommer, vad händer med allt annat?**

Gå igenom den senaste brådskande incidenten och se vilka objekt som stannade. Fråga om teamet har en regel för brådskande arbete, och om någon vet hur många brådskande objekt det hanterar per månad. Team upptäcker ofta att brådskande arbete är rutin, inte undantag, och att regeln behöver spegla det. Fortsätt med att komma överens om en gräns för expedierade objekt.

**Vilka av våra mått skulle vi lita nog på för att basera ett beslut på, och vilka skulle vi ignorera?**

Be människor rangordna de tillgängliga måtten efter hur mycket de litar på dem och varför. Misstro kommer ofta från inkonsekventa objektsdefinitioner eller luckor i data. Gör inte detta till ett bråk om personer; fokusera på datakvaliteten. Avsluta med att välja ett mått att förbättra under den närmaste månaden.

## I praktiken: ett agilt ITIL-exempel

Ett universitets IT-servicedesk har åtta analytiker som hanterar incidenter och förfrågningar från studenter och personal. Teamet har ett ärendehanteringsverktyg med köer men inga gränser, och varje analytiker har mellan 20 och 40 öppna ärenden. Kunderna klagar på att ärenden verkar försvinna, och deskchefen kan inte säga hur lång tid en typisk förfrågan tar.

Chefen och analytikerna bygger en tavla som speglar verktyget: ny, sorterad, pågående, väntar på kunden, väntar på ett annat team och löst. De kommer överens om en gräns på åtta aktiva objekt per analytiker och en regel att ärenden som väntar på andra måste ange den person som ansvarar för nästa steg. De avsätter en bana för brådskande incidenter, med en gräns på två. Under en månad samlar de bara in data om cykeltid och ålder.

Efter månaden visar data att de flesta förfrågningar löses på några dagar men att en lång svans väntar i veckor, mestadels "väntar på ett annat team". Teamet sätter en förväntad servicenivå utifrån data och börjar en daglig genomgång av de äldsta objekten. Flera länge väntande ärenden stängs eller eskaleras under första veckan. Ett problem återstår: nätverksteamet, som äger många av de väntande ärendena, har ingen egen tavla och deskchefen kan inte se dess kö. Deskchefen ordnar ett veckosamtal med nätverksteamets ledare, och de två teamen börjar diskutera att dela en vy över de objekt som går mellan dem.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam kan använda Kanban för att se var arbete väntar mellan design, bygge, test och release. Gränser för pågående arbete minskar antalet halvfärdiga ändringar, och flödesdata kan visa var en releaseprocess behöver uppmärksamhet. Behandla förfrågningar från driften som objekt i samma flöde, med egen regel.

### Tjänste- och driftteam

Driftteam är Kanbans naturliga hem. Visualisera incidenter, förfrågningar och ändringar i egna tillstånd, sätt gränser och bevaka åldrande. Använd cykeltidsdata för att sätta realistiska förväntningar med kunder, och använd blockerade och väntande tillstånd för att inleda samtal med andra team.

### Ledning och styrning

Ledare har nytta av flödesmått som en ärligare bild än statusrapporter. Be om cykeltid, genomflöde och ålder per arbetstyp, och fråga vad teamet ändrade på grund av dem. Undvik att sätta mål för enskilda tal, vilket ger fusk. Stöd gränser för pågående arbete även när intressenter vill att mer ska påbörjas.

### Kunder och användare

Kunder har nytta av tydligare prognoser och färre förlorade förfrågningar. Fråga teamet om den förväntade servicenivån för din typ av förfrågan och räkna med att den bygger på historik. Om din förfrågan är brådskande, räkna med att bli tillfrågad varför, eftersom teamet måste skydda andras flöde.

## Vanliga orsaker till misslyckande

- **En tavla utan gränser.** Tavlan visar oredan men minskar den inte. Sätt och upprätthåll i stället gränser för pågående arbete och granska varje överträdelse.
- **Blandade objektsdefinitioner.** Incidenter, projekt och uppgifter delar en kolumnuppsättning, och måtten betyder ingenting. Definiera i stället objekttyper med separata tillstånd och regler.
- **Att ignorera åldrande.** Gamla objekt ligger obemärkta tills en kund klagar. Gå i stället igenom de äldsta objekten varje dag och besluta om vart och ett.
- **Att göra mått till mål.** Team delar eller stänger objekt för att förbättra talen. Använd i stället måtten för att ställa frågor och granska dem med teamet.
- **Dolda expeditbanor.** Brådskande arbete kringgår gränser utan spår. Ge i stället brådskande arbete en synlig bana, en gräns och en regel.
- **Att kopiera en tavlas utformning.** Ett team övertar ett annat teams kolumner utan att förstå sitt eget flöde. Kartlägg i stället det verkliga arbetsflödet först.
- **Att behandla Kanban som ett rapporteringsverktyg.** Chefer använder tavlan för att övervaka människor och inte för att förbättra flödet. Använd den i stället som teamets verktyg för att besluta vad som ska göras härnäst.
- **Att aldrig förbättra arbetsflödet.** Tavlan förblir densamma i åratal. Håll i stället regelbundna genomgångar av arbetsflödesdefinitionen och ändra den när data kräver det.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Visualisera arbetsflödet | Arbete bor i individuella inkorgar och huvuden | Vissa team har tavlor som visar sina tillstånd | Team delar en arbetsflödesdefinition med objekttyper och regler | Tavlan granskas och korrigeras mot vad som faktiskt händer | Tavlor över team visar objekt och överlämningar mellan team |
| Begränsa pågående arbete | Inga gränser; människor påbörjar mer än de slutför | Vissa team sätter informella gränser | Gränser sätts och överträdelser diskuteras | Gränser justeras utifrån flödesdata | Gränser och kapacitet balanseras mellan team och leverantörer |
| Flödesmått | Få mått samlas in | Vissa team registrerar cykeltid eller genomflöde | De fyra måtten samlas in konsekvent | Måtten granskas och används för att sätta förväntade servicenivåer | Flödesdata delas mellan team och används för att planera kapacitet tillsammans |
| Förbättring | Förändringar följer på kriser | Team justerar tavlan ibland | Team granskar arbetsflödet med regelbunden rytm | Förändringar kopplas till mått och resultat kontrolleras | Förbättringar sprids mellan team utan central styrning |

## Checklista

- [ ] Vi har ritat vårt verkliga arbetsflöde, inklusive väntetider och överlämningar.
- [ ] Våra arbetsobjekt är definierade, med en tydlig start och ett tydligt slut för varje typ.
- [ ] Gränser för pågående arbete finns och varje överträdelse diskuteras.
- [ ] Regler för att flytta och blockera objekt är skrivna på eller nära tavlan.
- [ ] Vi följer cykeltid, genomflöde, pågående arbete och arbetsobjektets ålder.
- [ ] Vi går igenom de äldsta objekten dagligen eller åtminstone varje vecka.
- [ ] Vi har en förväntad servicenivå baserad på vår egen historik.
- [ ] Brådskande arbete har sin egen synliga bana, gräns och regel.
- [ ] Arbetsflödesdefinitionen granskas med regelbunden rytm.
- [ ] Angränsande team och kunder kan se de objekt som rör dem.

## AI-prompter

**Syfte: beskriva ert verkliga arbetsflöde och hitta var arbete väntar.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Syfte: utarbeta en arbetsflödesdefinition för ett team.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Syfte: analysera flödesdata från ert ärendesystem.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Syfte: planera en genomgång av tavlan med teamet.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-färdigheter

- [kanban](../../../../skills/kanban/SKILL.md): använd för att utforma eller granska en tavla, gränser för pågående arbete och regler för ett tjänste- eller driftteam.
- [scrumban](../../../../skills/scrumban/SKILL.md): använd när ett team vill ha Scrums planeringsmöten tillsammans med Kanbans flödeshantering.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): använd för att kartlägga hur arbete rör sig mellan team och var det väntar innan ni utformar tavlan.
- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera små förbättringar av arbetsflödet efter en flödesgenomgång.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): använd för att förstå vilka slags arbete som kommer och i vilken volym innan ni sätter gränser och kapacitet.

## Viktiga källor

- **The Kanban Guide** (John Coleman och Daniel Vacanti med flera, kanbanguides.org): den koncisa auktoritativa definitionen av de tre arbetssätten och de fyra måtten.
- **Kanban (development)** (Wikipedia): en översikt över historien och de bredare arbetssätten, med hänvisningar till de viktigaste böckerna.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): berättelsen om hur Kanban tillämpades på programvaruarbete.
- **Toyota Production System** (Wikipedia): bakgrund om lean-tillverkningens ursprung för kanban.

## Referenser

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
