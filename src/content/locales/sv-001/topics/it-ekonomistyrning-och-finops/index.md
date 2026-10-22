# IT-ekonomistyrning och FinOps

**IT-ekonomistyrning visar vad tjänster kostar och vilket värde de ger tillbaka, och FinOps är den kulturella praxis som för samman ingenjörer, ekonomi och verksamhetsteam så att teknikutgifter, särskilt i molnet, förstås och hanteras medan de uppstår.**

## Varför detta är viktigt

Pengar avgör vilka tjänster som finns, hur väl de är bemannade och hur länge de består. I många år betydde IT-ekonomi en årsbudget, ett kalkylblad för kostnadsfördelning och ett och annat gräl om vem som betalar för nätet. Molntjänster förändrade detta. Resurser kan skapas på sekunder av vem som helst med rätt behörighet, och faktureringen följer användningen. Ett enda felkonfigurerat jobb kan lägga tusentals på en månadsräkning innan någon märker det, och en genomtänkt ändring kan spara lika mycket.

För agila team är skiftet tveeggat. De får friheten att experimentera och skala utan att vänta på hårdvara. De tar också på sig ett ansvar som brukade ligga hos ekonomi och inköp: att veta vad deras val kostar. Samtidigt möter ekonomipersonal som planerar i årscykler en användning som varierar dagligen. Ingen sida kan hantera kostnaden väl på egen hand.

Den engelska Wikipedia har ingen artikel med titeln "FinOps" på den adress som kontrollerats. FinOps Foundations egen webbplats definierar FinOps som ett operativt ramverk och en kulturell praxis som maximerar affärsvärdet av teknik och skapar ekonomiskt ansvar genom samarbete mellan ingenjörs-, ekonomi- och verksamhetsteam. Wikipedia-artikeln om molntjänster beskriver prismodeller och kostnadskontroll, och bär ett underhållsmeddelande om att delar av den kan vara overifierade. ITIL:s ekonomiska ordförråd här, som budgetering, redovisning och debitering, är hämtat från allmänt publicerade beskrivningar som den här guiden inte kunde bekräfta mot ramverksägarens text.

## Centrala begrepp

### IT-ekonomistyrning

IT-ekonomistyrning (i ITIL "financial management for IT services") beskrivs allmänt som arbetssättet att hantera en IT-leverantörs pengar: att planera budgetar, redovisa kostnader och, där det är relevant, debitera för tjänster. Dess syfte är att ge beslutsfattare information för att väga kostnad mot värde. De källor som lästs för den här guiden definierar inte arbetssättet, så dessa beskrivningar är vanligt språkbruk, erbjudet som sådant.

| Aktivitet | Fråga den besvarar |
|---|---|
| **Budgetering och planering** | Hur mycket kommer vi att spendera, och på vad, under den kommande perioden? |
| **Kostnadsredovisning** | Vad kostar det att tillhandahålla varje tjänst? |
| **Debitering eller fördelning** | Vem betalar, och hur? |
| **Värde- och investeringsanalys** | Är en tjänst eller en ändring värd sin kostnad? |

### Showback och chargeback

Två upplägg för att dela kostnad används allmänt. Vid **showback** visas konsumenterna vad de använder och vad det kostar, men faktureras inte. Vid **chargeback** faktureras de eller kostnaden flyttas till deras budget. Showback bygger medvetenhet med lite friktion; chargeback skapar ansvar och kan skapa tvister om fördelningsregler. Välj ett genom att fråga vilket beteende ni vill ha och om data är tillräckligt goda för att försvaras.

### Moln och betala-per-användning-modellen

Wikipedia säger att molntjänster kan minska investeringsutgifter i förväg genom att skifta till en driftkostnadsmodell där kostnaderna skalar med användningen, och att infrastruktur som tjänst faktureras på nyttighetsbasis. Den beskriver programvara som tjänst som vanligtvis en månatlig eller årlig fast avgift per användare, eller betala-per-användning. Dess lista över farhågor om kostnadskontroll omfattar oanvända resurser, ineffektiva konfigurationer och dolda kostnader. Den noterar att leverantörer erbjuder kostnadsverktyg och hänvisar till FinOps som ett ramverk för att standardisera ekonomisk drift i molnet.

Artikeln redovisar undersökningsresultat: en Gartner-undersökning av 200 IT-ledare fann att 69 procent upplevde överskridna molnbudgetar 2023, medan de övriga tillskrev prognoser, utgiftsövervakning och optimering; och Flexeras rapport för 2024 angav att hantera molnutgifter var den främsta utmaningen, med uppgiften att offentliga molnutgifter översteg budget med i genomsnitt 15 procent. Artikeln bär ett meddelande om overifierad text, så kontrollera dessa siffror mot originalrapporterna innan ni citerar dem.

### Vad FinOps är

FinOps Foundations webbplats definierar FinOps som "ett operativt ramverk och en kulturell praxis" som "maximerar affärsvärdet av teknik" och "skapar ekonomiskt ansvar genom samarbete mellan ingenjörs-, ekonomi- och verksamhetsteam". Den säger att namnet kombinerar "Finance" och "DevOps", och att fokus sträcker sig bortom molnet till programvara som tjänst, licensiering, datacenter med mera. Nyckelpunkter från webbplatsen:

- **Det är en lagsport.** Webbplatsen nämner dessa grupper: ledning, ingenjörer, FinOps-praktiker, drift samt ekonomi och inköp, och säger att FinOps förändrar hur skilda team arbetar tillsammans. Ett enskilt team kan inte göra det ensamt.
- **Det använder ett mognadsangreppssätt** som beskrivs som "Crawl, Walk, Run" (krypa, gå, springa).
- **Stiftelsen** beskrivs som ett projekt under LF Projects, en serie av Linux Foundation, och stöder en öppen teknisk specifikation kallad FOCUS (FinOps Open Cost and Usage Specification). Den erbjuder också utbildning och certifiering.

Sidan som lästs för den här guiden listar inte principerna eller faserna, så det här ämnet anger dem inte. Se stiftelsens sidor om principer och faser direkt.

### Kostnadsdata och märkning

Vad arbetssättet än kallas beror det på att kunna hänföra kostnad. Detta behöver två saker: märken eller etiketter på resurser som säger vem som äger dem och vilken tjänst de stöder (se Ämne 4.1 — Hantering av IT-tillgångar), och faktureringsdata som kan grupperas efter dessa märken. FOCUS finns för att standardisera formatet på kostnads- och användningsdata mellan leverantörer. Omärkt kostnad är ägarlös kostnad.

### Enhetskostnader och värde

En totalräkning säger lite. Dela kostnaden med något som betyder något för verksamheten: per transaktion, per användare, per tjänst, per miljö. Stigande totalkostnad med fallande enhetskostnad kan vara frisk tillväxt. Fallande totalkostnad med stigande enhetskostnad kan signalera ett problem. Enhetskostnad länkar ekonomi till servicenivåer och värde (se Ämne 3.7 — Hantering av servicenivåer).

### Kostnad, tillförlitlighet och fart

Pengar köper tillförlitlighet och fart, och varje extra nivå har ett pris (se Ämne 3.11 — Tillgänglighet, kapacitet och prestanda). Ett team som skär ned kostnaden vårdslöst kan minska motståndskraften. Ett team som aldrig tittar på kostnad kan överbygga. FinOps-samtal är ett ställe att göra den avvägningen uttrycklig, där ingenjörer beskriver alternativ och ekonomi och verksamhet väger dem.

### Styrning och risk

Ekonomiska kontroller omfattar budgetar och larm, godkännande av stora åtaganden, begränsningar för vem som kan skapa dyra resurser och regelbundna granskningar. Åtaganden gentemot leverantörer, som långsiktiga köpavtal, kan sänka kostnaden och lägga till risk om användningen faller. Dessa är beslut för ekonomi, inköp och teknik tillsammans (se Ämne 5.7 — Styrning, risk och efterlevnad och Ämne 3.14 — Leverantörshantering).

### Källornas gränser

FinOps Foundations sida är en sammanfattning av organisationen som främjar arbetssättet, och den ger inget grundande datum, inga medlemssiffror eller belägg för resultat. Artikeln om molntjänster är flaggad för overifierad text och ger ingen prismekanik, utgående avgifter (egress) eller detaljer om ett FinOps-arbetssätt. Det här ämnet bör behandlas som en introduktion; läs stiftelsens material och er leverantörs dokumentation för detaljer.

## Bästa praxis

1. **Gör kostnad synlig för dem som orsakar den.** Visa varje team kostnaden för de tjänster de äger, minst månadsvis, i en form de kan förstå. Människor hanterar det de kan se.
2. **Märk allt som kostar pengar.** Kräv märken för ägare, tjänst och miljö på molnresurser och rapportera om omärkta utgifter. Åtgärda det innan ni justerar något annat.
3. **Börja med showback.** Visa team deras kostnader innan ni debiterar dem. Gå över till chargeback först när data är betrodda och nyttan är tydlig.
4. **Använd enhetskostnader.** Uttryck kostnad per transaktion, användare eller tjänst, såväl som totalt. Granska trenden tillsammans med efterfrågan och kvalitet.
5. **Sätt budgetar och larm.** Kom överens om budgetar per tjänst eller team och sätt larm långt före gränsen. Granska larm med ägarna, inte bara med ekonomi.
6. **För in ekonomi och teknik i ett samtal.** Håll en regelbunden granskning där ingenjörer förklarar vad som driver kostnad och ekonomi förklarar begränsningar. Ta med en verksamhetsägare som kan bedöma värde.
7. **Leta efter slöseri först.** Hitta oanvända eller överdimensionerade resurser, vilande miljöer och bortglömda prenumerationer. Dessa besparingar medför liten risk (se Ämne 4.2 — Hantering av programvarutillgångar för prenumerationer).
8. **Väg besparingar mot tillförlitlighet.** Innan ni skär ned, fråga vad ändringen gör med tillgänglighet, prestanda och återställning. Registrera avvägningen.
9. **Planera åtaganden med omsorg.** Inköpsåtaganden gentemot leverantörer kan minska kostnaden, men låser utgifter. Grunda dem på stabil användning och granska dem regelbundet.
10. **Ge team befogenhet och gränser.** Låt team fatta kostnadsbeslut inom överenskomna gränser och kräv godkännande för beslut ovanför dem. Autonomi med synlighet fungerar bättre än enbart central kontroll.
11. **Ta med kostnad i design och i definitionen av klart.** Fråga i designgranskningar vad en funktion kommer att kosta att driva och kontrollera efter release.
12. **Lär och dela.** Publicera korta anteckningar om vad som sparade pengar och vad som slog tillbaka. Använd ett mognadsangreppssätt som "krypa, gå, springa" för att växa arbetssättet.

## Frågor att diskutera med teamet

**Vet vi vad vår huvudsakliga tjänst kostar att driva, och vem äger det talet?**

Be om den månatliga kostnaden för den största tjänsten och hur den beräknas. Ofta kan ingen svara, eller så kommer svaret från olika källor. Facilitatorn kan fråga vad som skulle behövas för att ta fram talet pålitligt, som märken och en rapport. Välj en tjänst att börja med.

**Hur stor andel av våra molnutgifter kan vi hänföra till en namngiven ägare?**

Fråga efter den omärkta andelen. En stor andel betyder att kostnaden inte kan hanteras. Diskutera varför resurser är omärkta: ingen regel, inget verktyg eller inget incitament. Kom överens om en märkningsregel och ett datum för en första rapport.

**När hittade vi senast en kostnadsöverraskning, och hur fick vi veta det?**

Samla exempel: en bortglömd miljö, ett skenande jobb, en prenumeration som förnyades. Fråga hur länge det pågick före upptäckt. Diskutera larm och granskningar som hade fångat det. Välj ett larm att lägga till.

**Vad skulle vi skära ned om budgeten föll med tio procent, och vad skulle vi förlora?**

Be teamet föreslå alternativ och nämna följderna, inklusive för tillförlitlighet. Den här frågan gör avvägningar uttryckliga. Behandla inte svaren som en plan; använd dem för att inleda ett samtal med ekonomi och verksamhet om värde.

**Vilka beslut om utgifter fattar ingenjörer i dag, och vilka bör de fatta?**

Lista de kostnadsbeslut team tar: storlekar, miljöer, verktyg, inköp. Fråga vilken information de använder. Diskutera vilka gränser som vore rimliga. Kom överens om ett beslut att överlämna med gränser.

**Hur talar ekonomi och teknik med varandra, och när?**

Fråga båda grupperna. Typiska svar: vid budgettid, eller när något går fel. Diskutera en regelbunden gemensam granskning. FinOps Foundations sida nämner samarbete mellan ingenjörs-, ekonomi- och verksamhetsteam som arbetssättets hjärta. Kom överens om vem som ska organisera den första.

## I praktiken: ett agilt ITIL-exempel

En nationell biblioteksverksamhet flyttade sin digitala katalog, sökning och publika arkiv till en molnleverantör under tre år. IT-chefen får frågan från ekonomiavdelningen varför den månatliga molnräkningen har tredubblats sedan flytten och varför den är svår att förklara. Ett team på tio driver plattformen, och vart och ett av fem projektteam har sitt eget molnkonto.

IT-chefen och en ekonomianalytiker börjar med att be om kostnadsdata grupperade per tjänst. De flesta resurser är omärkta, så bara en tredjedel av kostnaden kan hänföras. De kommer överens om en märkningsregel med de fem teamen och kör en veckorapport som listar omärkta utgifter per konto. På sex veckor sjunker den omärkta andelen till under en tiondel. Analytikern sätter sedan upp en månatlig showback-rapport för varje team, som visar kostnad per tjänst och kostnad per tusen sökningar för söktjänsten. Vid den första granskningen upptäcker ingenjörerna en utvecklingsmiljö som har körts i produktionsstorlek i ett år, och ett databearbetningsjobb som skannar ett arkiv oftare än nödvändigt. Båda åtgärdas. Ett månadsmöte med bibliotekets samlingschef låter ingenjörerna förklara vad som driver kostnad, som den stora volymen skannade bilder, och låter samlingschefen avgöra vilka samlingar som ska digitaliseras först.

Efter två kvartal sjunker enhetskostnaderna och räkningen är förutsägbar. Allt går inte smidigt. En kostnadsbesparande ändring av sökindexet minskar farten vid toppar, och användare klagar tills teamet återställer kapaciteten. Ekonomiavdelningen vill också köpa ett ettårigt åtagande hos leverantören, medan ingenjörerna är osäkra på att användningen förblir stabil, eftersom en migrering är planerad. De kommer överens om att bara åta sig för den stabila delen av användningen och att granska åtagandet när migreringsplanen är klar.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam fattar de flesta kostnadsbesluten genom design och konfiguration. Märk det ni skapar, bevaka era kostnader och fråga vad en funktion kommer att kosta att driva. Förklara kostnadsdrivare för ekonomi och verksamhet i enkla ord.

### Tjänste- och driftteam

Driftteam ser utnyttjande och slöseri. Dela data om vilande och överdimensionerade resurser, hjälp till att sätta rimliga larm och se till att kostnadsbesparingar inte undergräver motståndskraften. Håll kopplingen mellan kostnad, kapacitet och servicenivåer synlig.

### Ledning och styrning

Ledare och ekonomi sätter budgetar, regler och ansvar. Be om enhetskostnader och trender, stöd en showback- eller chargeback-modell som människor litar på och fatta beslut om åtaganden tillsammans med ingenjörer. Undvik nedskärningar som skadar tillförlitligheten utan att diskutera avvägningen.

### Kunder och användare

Kunder och användare betalar för tjänster direkt eller indirekt. Fråga leverantörer vad som driver priset på de tjänster du använder och tala om vilket värde som är viktigast. Om du debiteras, förvänta dig tydliga förklaringar och ett sätt att ifrågasätta siffrorna.

## Vanliga orsaker till misslyckande

- **Omärkt kostnad.** Ingen äger räkningen. Kräv i stället märken och rapportera om gapet.
- **Ekonomi och teknik i olika rum.** Var sida agerar på partiell information. Håll i stället en regelbunden gemensam granskning med en verksamhetsägare.
- **Chargeback innan data är betrodda.** Tvister förbrukar tid. Börja i stället med showback och förbättra datan.
- **Totaler utan enhetskostnader.** Tillväxt ser ut som slöseri eller tvärtom. Följ i stället kostnad per transaktion, användare eller tjänst.
- **Att skära kostnad på bekostnad av motståndskraft.** Besparingar orsakar avbrott. Ange i stället avvägningen och involvera tjänstens ägare.
- **Överåtaganden.** Långsiktiga inköp låser utgifter som användningen inte kan bära. Åta er i stället bara för stabil användning och granska.
- **Enbart central kontroll.** Team väntar på godkännande och går förbi processen. Ge i stället team befogenhet inom gränser, med synlighet.
- **Att citera undersökningssiffror som fakta.** Tal från leverantörsundersökningar driver beslut. Kontrollera i stället originalkällor och använd era egna data.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Synlighet och hänförande | Kostnad ses bara som en totalräkning | Vissa team ser sin kostnad | Det mesta av utgifterna är märkt och hänförd till tjänster och ägare | Enhetskostnader och trender granskas mot efterfrågan och kvalitet | Kostnadsdata delas mellan team, leverantörer och ekonomi i ett gemensamt format |
| Styrning och budgetar | Budgetar är årliga och fasta | Vissa budgetar och larm finns | Budgetar, larm och godkännandegränser är standard | Avvikelser utreds och regler justeras | Budgetregler samordnas i hela organisationen och med partner |
| Samarbete | Ekonomi och teknik träffas vid budgettid | Vissa gemensamma samtal | En regelbunden gemensam granskning med en verksamhetsägare | Beslut och utfall följs och förbättras | Ekonomi, teknik, verksamhet och leverantörer delar mål och data |
| Optimering | Besparingar kommer av kriser | Visst slöseri hittas | Slöseri, dimensionering och åtaganden granskas regelbundet | Besparingar mäts mot risker för tillförlitlighet | Optimering är rutin, delad och balanserad mot servicemål |

## Checklista

- [ ] Vi kan ange den månatliga kostnaden för varje större tjänst och vem som äger den.
- [ ] Molnresurser bär märken för ägare, tjänst och miljö, och omärkta utgifter rapporteras veckovis eller månadsvis.
- [ ] Team får en regelbunden kostnadsrapport för de tjänster de äger (showback).
- [ ] Vi följer minst en enhetskostnad för varje större tjänst.
- [ ] Budgetar och larm finns med ägare, och larm utlöses långt före gränserna.
- [ ] Ekonomi, teknik och en verksamhetsägare träffas regelbundet om kostnad och värde.
- [ ] Vi granskar oanvända och överdimensionerade resurser och prenumerationer minst kvartalsvis.
- [ ] Kostnadsnedskärningar granskas för effekter på tillförlitlighet och prestanda.
- [ ] Inköpsåtaganden bygger på stabil användning och granskas.
- [ ] Vi har kontrollerat siffror från leverantörsundersökningar mot originalkällor innan vi använder dem.

## AI-prompter

**Syfte: analysera en kostnadsrapport för ägarlösa och ovanliga utgifter.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Syfte: definiera en enhetskostnad för en tjänst.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda en gemensam granskning mellan teknik och ekonomi.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: väga ett kostnadsbesparande förslag mot tillförlitlighet.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): använd för att prognostisera IT- och molnutgifter och förklara avvikelser.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): använd för att uppskatta framtida last så att kostnadsprognoser speglar efterfrågan.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att länka resursbehov till kostnad och till servicenivåer.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att hantera leverantörsavtal och åtaganden.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): använd för att välja och finansiera tjänster och initiativ efter värde och kostnad.

## Viktiga källor

- **What is FinOps?** (FinOps Foundation, finops.org): stiftelsens egen definition och beskrivning av samarbetet mellan ingenjörs-, ekonomi- och verksamhetsteam.
- **Cloud computing** (Wikipedia): bakgrund om prismodeller, kostnadskontroll och delat ansvar, med ett meddelande om overifierad text.
- **Total cost of ownership** (Wikipedia): bakgrund om att räkna alla kostnader för en tillgång eller tjänst över dess liv.
- **Software as a service** (Wikipedia): bakgrund om prenumerationsprissättning.

## Referenser

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
