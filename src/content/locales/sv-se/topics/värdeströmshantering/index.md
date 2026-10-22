# Värdeströmshantering

**Värdeströmshantering ser på hela vägen från förfrågan till värde, mäter var arbete väntar och förbättrar flödet mellan team, eftersom de största förseningarna i en tjänsteorganisation vanligtvis sitter mellan team, inte inom dem.**

## Varför detta är viktigt

De flesta team mäter sitt eget arbete: stängda ärenden, färdiga berättelser, släppta ändringar. Dessa tal kan se bra ut medan kunden väntar i veckor. Skälet är att det mesta av den förflutna tiden i en typisk förfrågan går åt till att vänta, i köer, på godkännanden, mellan team. Ett team som gör sitt eget steg snabbare kanske inte ändrar något alls för den som bad om det.

Lean-tänkande har en metod för att se detta: värdeströmskartan, som ritar upp varje steg från början av en process till kunden och registrerar tid och volym i varje skede. ITIL 4 har sin egen idé om en värdeström, en uppsättning aktiviteter som skapar och levererar en tjänst, där värdekedjans aktiviteter kombineras i olika ordning (se Ämne 2.6 — Tjänstevärdekedjan). De två passar ihop. ITIL-idén säger vad en ström är, och lean-metoden visar hur man mäter och förbättrar en.

Värdeströmshantering går bortom en engångsworkshop för kartläggning. Det innebär att hantera arbetets flöde fortlöpande, med gemensamma mått, en namngiven ägare och regelbundna granskningar som inkluderar varje team i strömmen. DORA:s förmågelista omfattar synlighet av arbete i värdeströmmen och gränser för pågående arbete, och dess vägledning om gränser beskriver att göra allt arbete synligt, inklusive arbete utanför teamet. Det här ämnet bygger på Wikipedia-artikeln om värdeströmskartläggning, DORA och Kanban Guide, och anger var källorna är tysta.

## Centrala begrepp

### Vad en värdeström är

En **värdeström (value stream)** är den sekvens av steg genom vilken en förfrågan blir levererat värde. [Wikipedia-artikeln om värdeströmskartläggning](https://en.wikipedia.org/wiki/Value-stream_mapping) beskriver metoden som en lean-ledningsteknik som analyserar det nuvarande läget och utformar ett framtida läge för de händelser som tar en produkt eller tjänst från början av en process till kunden. I ITIL-synen är en värdeström en särskild uppsättning aktiviteter som skapar och levererar en viss tjänst eller produkt till kunder (se Ämne 2.6 — Tjänstevärdekedjan).

Exempel i en tjänsteorganisation: att hantera en incident från rapport till återställning, att leverera en ändring från idé till produktion, att introducera en ny kund eller att uppfylla en åtkomstförfrågan.

### Värdeströmskartläggning

Artikeln säger att den resulterande visuella kartan visar varje kritiskt steg och kvantifierar tid och volym i varje skede. Den beskriver två kartor: en **karta över nuläget**, byggd genom att observera och spåra det verkliga flödet av material och information, och en **karta över framtida läge**, som visar den ideala processen efter förbättringar. Nuläget måste byggas först. Artikeln hänvisar till Mike Rothers och John Shooks *Learning to See* (Lean Enterprise Institute, 1999) som källa. Den listar programvaruutveckling, produktutveckling, projektledning samt administrativa processer och kontorsprocesser som användningsområden, och nämner två programvarufokuserade angreppssätt av Ali och kollegor: analys av utvecklingsartefakter och analys av informationsflöde.

Artikeln definierar inte ledtid, processtid eller andel komplett och korrekt, listar inga symboler och diskuterar ingen kritik. DORA:s sida om kontinuerlig leverans hänvisar dock till värdeströmskartläggning som ett sätt att blottlägga flaskhalsar genom att jämföra förfluten tid med värdeskapande tid och mäta andel komplett och korrekt (%C/A). Termerna nedan är vanligt språkbruk:

| Term | Betydelse, i vanligt språkbruk |
|---|---|
| **Ledtid (lead time)** | Total förfluten tid från början av en förfrågan till leverans |
| **Processtid** (eller beröringstid) | Tid då någon faktiskt arbetar med förfrågan |
| **Väntetid** | Tid då förfrågan ligger overksam mellan steg |
| **Andel komplett och korrekt (%C/A)** | Andelen arbete som kommer till ett steg och inte behöver korrigeras eller kompletteras |
| **Flödeseffektivitet** | Processtid dividerad med ledtid, som en procentandel |

Flödeseffektivitet är en enkel kvot som beräknas som illustration i den här guiden, och de källor som lästs definierar den inte.

### Flödesmått

Kanban Guide nämner fyra mått på flöde (se Ämne 1.5 — Kanban): **pågående arbete (work in progress)** (poster som påbörjats men inte slutförts), **genomflöde (throughput)** (poster som slutförs per period), **arbetspostens ålder (work item age)** (tid sedan en ofärdig post påbörjades) och **cykeltid (cycle time)** (tid från start till slut för en slutförd post). Dessa fungerar på nivån av ett teams arbetsflöde. Värdeströmshantering tillämpar samma idéer över team: mät förfluten tid från förfrågan till kundens mottagande, inte från den punkt då ett enskilt team tar upp den.

DORA:s mått på programvaruleverans, som ledtid för ändring, gäller en del av strömmen, från incheckning till produktion (se Ämne 3.4 — Ändringsmöjliggörande). Den tidigare delen, från idé till incheckning, är också en del av värdeströmmen och har ofta de längsta väntetiderna.

### Gränser för pågående arbete

DORA:s sida om gränser för pågående arbete (WIP) beskriver dem som tak för hur många poster som kan finnas i varje steg av ett arbetsflöde. Den säger att DORA:s forskning kopplar WIP-gränser till bättre programvaruleveransprestanda bara i kombination med andra förmågor, som visuella displayer och återkopplingsslingor från övervakning, och ger inga effektstorlekar. Dess genomföranderåd omfattar att göra allt arbete synligt, inklusive arbete utanför teamet, att sätta varje gräns efter teamets kapacitet, att hålla gränserna fasta och inte höja dem när människor är overksamma, att dra arbete först när en plats öppnas, att följa ledtid och dess variation, att minska överlämningar och att sänka gränserna gradvis för att blottlägga nästa begränsning. Fallgropar den nämner omfattar att ignorera uppströms och nedströms arbete, vilket leder till lokal optimering, och att sätta gränserna för högt.

### Att se hela strömmen

Fallgropen "lokal optimering" är den centrala. En ström med fem team har fem köer. Om ett team fördubblar sin fart kanske strömmens ledtid knappt ändras, eftersom de andra fortfarande väntar. Värdeströmshantering letar efter **begränsningen (constraint)**, det steg som begränsar helheten, och förbättrar det först (se Ämne 1.7 — Lean programvaruutveckling om att optimera helheten).

### Ägarskap och styrning

En ström korsar team, så den behöver någon som är ansvarig för helheten. En värdeströmsägare (eller en liten grupp) innehar kartan, måtten och förbättringslistan och sammankallar teamen. Utan ägare svarar ingen för strömmen, och förbättringar stannar inom teamgränser. Detta länkar till produkt- och tjänsteägarskap (se Ämne 5.5 — Produkt- och tjänsteägarskap).

### Verktyg

Programvaruverktyg för värdeströmshantering samlar in data från ärendehantering, källkodshantering och pipelines för att visa flöde över verktygskedjan. De källor som lästs för den här guiden diskuterar inte sådana verktyg. Om ni utvärderar något, kontrollera vilka data det behöver, hur korrekt det är och om måtten besvarar en fråga ni har. En grov karta ritad för hand med de inblandade teamen är en bra början och avslöjar ofta mer än en instrumentpanel.

### Gränser

Wikipedia-artikeln diskuterar ingen kritik, och DORA:s WIP-sida ger inga effektstorlekar eller målvärden. Praktiska varningar, erbjudna som erfarenhet, omfattar kartläggning som aldrig leder till förändring, mått som används för att rangordna team och kartor ritade ur chefers minne i stället för observation av verkliga poster.

## Bästa praxis

1. **Välj en ström som betyder något.** Välj ett flöde användare bryr sig om, som en ändring som når produktion eller en åtkomstförfrågan. En smal, verklig ström lär mer än en bred, abstrakt.
2. **Kartlägg från verkliga poster.** Följ flera nyliga poster från början till slut och registrera de faktiska datumen, inte processdokumentet. Observation slår minne, som artikelns betoning på att observera och spåra det verkliga flödet antyder.
3. **Registrera tid och väntan vid varje steg.** Notera för varje steg arbetstiden och väntan före det. Väntetiderna är vanligtvis historien.
4. **Ta med alla i strömmen.** Bjud in människor från varje team som berör posten, inklusive godkännare och leverantörer. Gör kartläggningen tillsammans, så att ingen överraskas av resultatet.
5. **Beräkna ledtid, processtid och flödeseffektivitet.** Jämför förfluten tid med arbetstid och titta på hur mycket som är väntan. Använd talen för att inleda samtal.
6. **Titta på korrekthet.** Fråga hur ofta arbete kommer till ett steg ofullständigt eller fel och kräver omarbete. Ett steg med låg andel komplett och korrekt orsakar försening nedströms.
7. **Hitta begränsningen.** Identifiera det steg som begränsar hela strömmen och förbättra det först. Att förbättra andra steg ger liten nytta.
8. **Rita det framtida läget.** Utforma en bättre ström tillsammans med teamen, inte en ideal, och välj de första en eller två ändringarna. Kom överens om ägare och datum.
9. **Begränsa pågående arbete.** Sätt tak för vad varje steg rymmer, sätt gränser efter kapacitet, behåll dem när människor är overksamma och sänk dem gradvis, som DORA:s vägledning beskriver.
10. **Gör arbetet synligt.** Visa strömmen på en gemensam tavla eller karta som inkluderar arbete utanför något enskilt team. Uppdatera den när poster rör sig.
11. **Utse en strömägare.** Välj en person som ansvarar för strömmens prestanda och kan sammankalla teamen och ta förbättringar till ledare.
12. **Granska regelbundet.** Håll en kort månatlig granskning av ledtid, väntetider och förbättringslistan. Rita om kartan efter betydande ändringar.

## Frågor att diskutera med teamet

**Om vi följde en förfrågan från första kontakten till kundens mottagande, hur lång tid skulle det ta, och hur mycket av det är arbetstid?**

Välj en nylig post och samla datum. Be människor gissa svaret innan de tittar. Gissningen är vanligtvis optimistisk. Beräkna andelen arbetstid. Facilitatorn kan fråga var den största väntan inträffade och vem som ägde den. Välj den som första mål.

**Vem i strömmen har vi aldrig talat med?**

Lista de team, godkännare och leverantörer en post berör. Markera de teamet aldrig har träffat. Fråga vad som skulle vinnas genom att bjuda in dem till en kartläggningssession. Typiska svar: förståelse för varför de väntar, eller vad de behöver för att arbeta snabbare. Bjud in en.

**Vad lämnar vi över ofullständigt, och vad får vi ofullständigt?**

Be om exempel på arbete som kom tillbaka för omarbete. Notera vilka överlämningar som orsakar flest returer och vad som saknas. Det här är idén om andel komplett och korrekt i enkla ord. Kom överens om en kort checklista för en överlämning.

**Var är begränsningen i vår ström, och vad händer om vi snabbar upp något annat?**

Diskutera vilket steg som har den längsta kön. Fråga vad som skulle hända med tiden från början till slut om ett annat steg fördubblade sin fart. Poängen är att se att förbättring av en icke-begränsning ändrar lite. Välj att arbeta med begränsningen.

**Hur många saker arbetar varje team med samtidigt, och vad skulle hända om vi satte ett tak?**

Räkna pågående arbete per team. Diskutera vad det skulle betyda att sluta påbörja. Typiska farhågor: något viktigt kommer att vänta. Typiska nyttor: saker blir färdiga. Kom överens om ett prövotak för ett team och ett sätt att bedöma resultatet.

**Vem ansvarar för den här strömmen som helhet?**

Be teamet nämna personen. Om ingen, diskutera vem som kunde vara det, och vilken befogenhet de skulle behöva. Facilitatorn kan notera att förbättringar över team sällan sker utan en ägare. Föreslå ett namn och ta det till rätt ledare.

## I praktiken: ett agilt ITIL-exempel

En nationell miljömyndighet utfärdar tillstånd till industriella verksamhetsutövare. Sökande klagar på att ett typiskt tillstånd tar ungefär fyra månader, och myndighetens grupp för digitala tjänster, på tolv, ombeds göra det snabbare. Gruppen hade redan byggt ett snabbare nätbaserat ansökningsformulär, men den förflutna tiden har knappt förändrats.

Gruppens chef sammankallar människor från varje del av strömmen: ansökningsteamet, två tekniska granskare, en jurist, avgiftskontoret och teamet som utfärdar tillståndshandlingarna. De kartlägger sex nyliga tillstånd från dagen för inlämning till dagen då tillståndet nådde den sökande. Resultaten är nedslående. Den totala tiden var ungefär 110 dagar, och arbetstiden var ungefär 12. Den längsta väntan fanns i den tekniska granskningens kö, där ansökningar i genomsnitt väntade 40 dagar innan någon öppnade dem, och ungefär en tredjedel av ansökningarna kom in med saknad information som måste begäras på nytt. Avgiftskontoret och handlingsteamet lade vardera till en veckas väntan på grund av satsbearbetning.

Gruppen kommer överens om tre ändringar. Nätformuläret kontrollerar de vanligast saknade uppgifterna före inlämning. Teamet för teknisk granskning sätter en gräns för pågående arbete och en regel att öppna varje ansökan inom fem arbetsdagar för att kontrollera fullständighet. Avgiftskontoret och handlingsteamet går från veckovisa satser till daglig bearbetning. De utser chefen för digitala tjänster till strömägare och granskar ledtiden varje månad. Efter tre månader är mediantiden ungefär 70 dagar, och andelen ansökningar som returneras för saknad information sjunker. Vissa problem återstår. Granskningsteamet säger att gränsen gör det svårare att hantera stora, komplexa ansökningar, och juristen är en enskild punkt för försening som ingen hade räknat. Strömägaren ber granskningsteamet att skilja ut komplexa fall i en egen fil och arbetar med juristenheten på en andra granskare.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam ser bara en del av strömmen. Delta i kartläggningssessioner, dela era data och titta på vad som händer innan arbetet når er och efter att ni släpper. Behandla strömmens ledtid som ett gemensamt mål, inte bara ert eget steg.

### Tjänste- och driftteam

Driftteam har ofta de längsta köerna: åtkomst, godkännanden, miljöer, support. Var öppna om er kapacitet och era begränsningar. Använd kartan för att be uppströmsteam om kompletta indata och för att förklara era prioriteringar.

### Ledning och styrning

Ledare kan undanröja begränsningar över team som team inte kan. Utse strömägare, be om ledtid från början till slut och svara på de förbättringar kartan föreslår. Undvik att använda strömmått för att rangordna team, vilket avskräcker från ärliga data.

### Kunder och användare

Kunder och användare upplever hela strömmen. Tala om för teamet var fördröjningarna gör ont, ge fullständig information från början och delta i en kartläggningssession om du blir inbjuden. Din bild av när förfrågan verkligen var klar är strömmens verkliga slut.

## Vanliga orsaker till misslyckande

- **Att optimera ett enskilt team.** En lokal vinst ändrar inget från början till slut. Hitta och åtgärda i stället begränsningen.
- **Kartläggning ur minnet.** Kartan speglar vad chefer tror. Följ i stället verkliga poster med verkliga datum.
- **Saknade röster.** Leverantörer och godkännare är inte i rummet. Ta i stället med varje team i strömmen.
- **En karta och ingen förändring.** Affischen hänger på väggen. Kom i stället överens om en eller två ändringar med ägare innan sessionen slutar.
- **Ingen ägare.** Ingen svarar för strömmen. Utse i stället en strömägare med befogenhet att sammankalla.
- **Mått som rangordningar.** Team döljer väntetider. Använd i stället mått för att förstå strömmen och diskutera dem öppet.
- **Gränser som flyttas.** WIP-gränser höjs så fort människor är overksamma. Behåll i stället gränser och åtgärda orsaker, som DORA råder.
- **Verktyg först.** En instrumentpanel köps innan frågorna är kända. Börja i stället med en handritad karta och lägg till verktyg efter behov.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Att se strömmen | Flöde bedöms på känn | Vissa team kartlägger sina egna steg | Nyckelströmmar kartläggs från början till slut från verkliga poster, med alla team | Ledtid, väntetider och korrekthet mäts och granskas | Strömmar kartläggs och mäts över organisationer och leverantörer |
| Förbättra flödet | Team snabbar upp sina egna steg | Vissa ändringar över team prövas | En begränsningsfokuserad förbättringslista per ström med ägare | Förbättringar knyts till uppmätt ledtid och kontrolleras | Strömförbättring är rutin och delas mellan strömmar |
| Gränser och synlighet | Pågående arbete är obegränsat och dolt | Vissa team använder tavlor och gränser | Arbete är synligt över team med överenskomna gränser | Gränser justeras med hjälp av ledtidsdata | Gränser och synlighet samordnas mellan strömmar |
| Ägarskap och styrning | Ingen äger strömmen | Informella samordnare finns | Varje nyckelström har en namngiven ägare och en regelbunden granskning | Ägare ansvarar för uppmätta resultat | Ägare samarbetar mellan strömmar för att optimera helheten |

## Checklista

- [ ] Vi har valt en viktig ström och kartlagt den från verkliga poster.
- [ ] Kartan visar arbetstid och väntetid vid varje steg.
- [ ] Människor från varje team i strömmen deltog i kartläggningen.
- [ ] Vi känner till ledtiden från början till slut och hur mycket som är väntan.
- [ ] Vi har identifierat begränsningen och valt en eller två ändringar.
- [ ] Pågående arbete är synligt över team, med gränser överenskomna vid nyckelsteg.
- [ ] En namngiven person äger strömmen.
- [ ] En kort regelbunden granskning tittar på ledtid, väntetider och förbättringslistan.
- [ ] Vi följer hur ofta arbete kommer ofullständigt till en överlämning.
- [ ] Strömmått används inte för att rangordna team.

## AI-prompter

**Syfte: beräkna ledtid och flödeseffektivitet från verkliga poster.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Syfte: planera en workshop för värdeströmskartläggning.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: analysera överlämningskvaliteten mellan två team.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Syfte: utforma en prövning av gränser för pågående arbete.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): använd för att kartlägga en ström, registrera tider och hitta begränsningen.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att studera hur arbete rör sig mellan roller och var det väntar.
- [kanban](../../../../skills/kanban/SKILL.md): använd för att sätta upp visualisering och gränser för pågående arbete i strömmen.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): använd för att förstå vad som flödar in i strömmen och i vilken volym.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): använd för att avgöra vilka strömmar och initiativ som förtjänar investering.

## Viktiga källor

- **Value-stream mapping** (Wikipedia): definitionen av kartor över nuläge och framtida läge och en hänvisning till *Learning to See*.
- **Work in process limits** (DORA, dora.dev): vägledning om att sätta och hålla gränser och om att undvika lokal optimering.
- **The Kanban Guide** (kanbanguides.org): definitionerna av de fyra flödesmåtten.
- **Lean software development** (Wikipedia): slöserierna och principerna bakom värdeströmstänkande.

## Referenser

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
