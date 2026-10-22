# Hantering av tjänstekontinuitet

**Hantering av tjänstekontinuitet förbereder en organisation på att hålla sina viktigaste tjänster igång, eller få tillbaka dem snabbt, efter en allvarlig störning, och dess värde bevisas bara av övningar, inte av planen på hyllan.**

## Varför detta är viktigt

De flesta incidenter är små och lokala. Några är det inte: en brand i ett datacenter, en fallerad molnregion, en utpressningsattack med skadlig kod, en leverantörs sammanbrott, en pandemi, en översvämning. Dessa händelser hotar organisationens förmåga att leverera över huvud taget, och att hantera dem kräver planering som vanlig incidenthantering inte täcker. Ett team som i förväg har tänkt igenom vad som betyder mest och hur det ska ta sig vidare har mycket bättre chans att ta sig igenom.

Agila team möter detta ämne med en särskild utmaning. Deras system förändras varje vecka, så en kontinuitetsplan som skrivits en gång och arkiverats är föråldrad inom månader. Återställningssteg som berodde på en viss server eller ett visst skript kanske inte längre gäller. Det agila svaret är inte att ge upp planeringen utan att göra kontinuitet till en levande del av hur tjänster byggs och drivs: återställning inbyggd i designen, ofta testad och förvarad i versionshantering tillsammans med koden.

[Wikipedia-artikeln om verksamhetskontinuitetsplanering](https://en.wikipedia.org/wiki/Business_continuity_planning) definierar verksamhetskontinuitet som en organisations förmåga att fortsätta leverera produkter eller tjänster på acceptabla nivåer efter en störning, och behandlar kontinuitetsplanering som en delmängd av riskhantering. Den engelska Wikipedias sida "Disaster recovery" är bara en förgreningssida, med en notering om att en fullständig artikel önskas, så det här ämnet använder artikeln om verksamhetskontinuitet för definitioner och lägger till praktisk vägledning från guidens andra ämnen, med notering om var det är praxis och inte redovisat källmaterial.

## Centrala begrepp

### Kontinuitet, återställning och motståndskraft

Termer används löst, så använd dem noggrant:

| Term | Betydelse, som allmänt använd | Fokus |
|---|---|---|
| **Verksamhetskontinuitet (business continuity)** | Förmågan att fortsätta leverera produkter eller tjänster på acceptabla nivåer efter en störning | Att hålla organisationen igång |
| **Verksamhetskontinuitetsplanering** | Att skapa system för förebyggande och återställning inför hot mot organisationen | Planerna och arrangemangen |
| **IT-katastrofåterställning (disaster recovery)** | Att upprätthålla eller återupprätta vital IT-infrastruktur (beskrivningen på Wikipedias förgreningssida) | Tekniken |
| **Tjänstekontinuitet (ITSM)** | Att se till att IT-tjänster kan återställas till överenskomna nivåer efter en störning | IT-tjänster inom den större planen |

Wikipedia-artikeln säger att katastrofåterställning överlappar med verksamhetskontinuitetsplanering, särskilt i lösningsfasen, och att kontinuitet är det avsedda resultatet av att genomföra båda. Hantering av tjänstekontinuitet är IT-tjänstevyn av samma syfte.

### Verksamhetskonsekvensanalys

En **verksamhetskonsekvensanalys (business impact analysis, BIA)** är enligt artikeln en metod för att identifiera och värdera hur störningar påverkar verksamheten och för att sätta återställningsprioriteringar. Dess mål omfattar att identifiera kritiska aktiviteter och beroenden, bedöma ekonomiska, operativa, anseendemässiga och juridiska konsekvenser, fastställa återställningsmål och underlätta riskbedömning. För IT-tjänster frågar BIA vilka tjänster organisationen inte kan klara sig utan, i vilken ordning de måste komma tillbaka och vad var och en beror på (se Ämne 4.4 — Konfigurationshantering för beroenden).

### Återställningsmål

Artikeln definierar två nyckeltermer:

- **Mål för återställningstid (recovery time objective, RTO):** den acceptabla tiden för att återställa en funktion.
- **Mål för återställningspunkt (recovery point objective, RPO):** den acceptabla mängden datalatens, med andra ord hur mycket dataförlust som är tolerabel.

Den listar också den längsta tolerabla störningsperioden. Artikeln ger ingen metod för att välja dessa värden för en viss organisation, så de måste komma från verksamheten: fråga vad en timme, ett dygn och en vecka av avbrott kostar, och vilka data verksamheten har råd att förlora. Att sätta dem är ett affärsbeslut med ett pris, eftersom kostnaden för att möta ett strängare mål stiger (se Ämne 3.11 — Tillgänglighet, kapacitet och prestanda).

### Planer

En kontinuitets- eller återställningsplan beskriver vem som gör vad, i vilken ordning, för att återställa kritiska tjänster efter en störning. Den bör täcka: hur planen aktiveras och av vem, hur människor informeras och samlas, i vilken ordning tjänster återställs, var återställningen sker, varifrån data kommer, hur man kommunicerar med kunder och personal och hur man återgår till det normala. Planer för IT-tjänster bör länka till runbooks för de enskilda systemen (se Ämne 3.9 — Kunskapshantering).

### Testning och övningar

Artikeln hänvisar till en bok från British Standards Institution från 2008 som beskriver tre typer av övning: en **bordsövning (tabletop)** där en liten grupp diskuterar en aspekt av planen, en **medelstor** övning där flera team arbetar med flera aspekter med skriptade överraskningar och en **komplex** övning som lägger till aktivering utan förvarning, verklig utrymning och användning av en återställningsanläggning. Den beskriver underhåll i en årlig eller halvårsvis cykel, inklusive testning av tekniska lösningar och återställningsrutiner, där fynden återgår till analysfasen. Övningar är där planer får veta att de har fel.

### Återställningsnivåer

Artikeln nämner SHARE:s sju nivåer av katastrofåterställning (1992), senare uppdaterade av IBM till åtta nivåer (0 till 7). Källorna som lästs här redovisar inte nivåerna i detalj. Som allmän praxis klassificerar organisationer tjänster i nivåer efter hur snabbt de måste återställas, och anpassar återställningssättet och kostnaden till nivån.

### Standarder

Artikeln hänvisar till ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, som ersatte utgåvan från 2012 och kräver att organisationer definierar kontinuitetsmål, lägsta acceptabla servicenivåer och en längsta tolerabel störningsperiod. ISO 22313:2020 ger vägledning om hur den används. Dessa är standarder för ett ledningssystem som en organisation kan anta; de ersätter inte praktisk planering. Kontrollera standardtexten direkt om era kunder eller tillsynsmyndigheter kräver överensstämmelse.

### Agil kontinuitet

Agila arbetssätt och DevOps-arbetssätt hjälper kontinuiteten:

- **Infrastruktur och konfiguration som kod** gör att miljöer kan byggas om från versionshantering, vilket gör återställning snabbare och testbar.
- **Automatiserade pipelines** kan driftsätta tjänster om på en återställningsplats.
- **Täta releaser** håller teamet övat i att driftsätta.
- **Regelbundna övningar** kan behandlas som en form av testning i backloggen.

De skapar också risker: tungt beroende av ett enda molnkonto, ett CI-system som i sig är en enskild felpunkt och hemligheter som lagras där de inte kan nås vid en katastrof. Planera för de verktyg som själva återställningen beror på.

### Mänskliga faktorer

Artikeln nämner SARS-utbrottet 2002–2003 som ett exempel på uppdelade och roterade team, vilket är en påminnelse om att kontinuitet inkluderar människor: nyckelkompetens spridd över individer, distansarbete, kommunikation när normala kanaler fallerar och omsorg om personal under stress.

### Källornas gränser

Artikeln ger ingen metod för att sätta mål, ingen vägledning om hur ofta man ska testa utöver den årliga eller halvårsvisa underhållscykeln och inga verktygsrekommendationer. Det är en allmän affärsartikel, inte en IT-artikel. För teknisk återställningsdetalj, använd dokumentationen för era egna plattformar och guidens färdigheter för planering och testning av katastrofåterställning.

## Bästa praxis

1. **Börja med en verksamhetskonsekvensanalys.** Identifiera de tjänster organisationen inte kan klara sig utan, kostnaden för att förlora dem över tid och vad de beror på. Gör det med verksamhetsägare, inte åt dem.
2. **Sätt återställningsmål med verksamheten.** Kom överens för varje kritisk tjänst om en återställningstid och en återställningspunkt och registrera kostnaden för att möta dem. Se över dem när verksamheten eller tekniken förändras.
3. **Dela in era tjänster i nivåer.** Gruppera tjänster efter hur snabbt de måste komma tillbaka och tillämpa det återställningssätt som passar varje nivå. Tillämpa inte det dyraste sättet på allt.
4. **Skriv en kort plan som människor kan använda.** Ange hur planen aktiveras, vem som beslutar, vem som gör vad, hur man kommunicerar och i vilken ordning man återställer. Håll den till några få sidor med länkar till runbooks.
5. **Förvara planer tillsammans med koden och miljön.** Lagra återställningsskript, konfiguration och runbooks i versionshantering och granska dem när tjänster förändras. En plan som inte uppdateras med systemet kommer att fallera.
6. **Planera för de verktyg återställningen beror på.** Se till att åtkomst till pipelinen, hemligheterna, dokumentationen och kommunikationsverktygen överlever förlusten av de system de stöder.
7. **Öva regelbundet.** Börja med bordsdiskussioner, gå vidare till tekniska tester av återställningar och failover och kör större övningar för de mest kritiska tjänsterna. Schemalägg dem som annat arbete.
8. **Testa återställningar, inte bara säkerhetskopior.** En säkerhetskopia bevisas genom att återställa från den. Testa att data kommer tillbaka, inom återställningspunkten, och att tjänsten fungerar med dem (se färdigheten för test av katastrofåterställning nedan).
9. **Behandla fynd som backloggposter.** Varje övning ger gap. Registrera dem med ägare och datum, och kontrollera att de är åtgärdade före nästa övning.
10. **Planera kommunikation.** Bestäm vem som talar om vad för kunder, personal, tillsynsmyndigheter och allmänheten och förbered mallar. Ta med kommunikationsvägar utanför det normala för att nå människor om de vanliga kanalerna ligger nere (se färdigheten för krishanteringskommunikation nedan).
11. **Ta med leverantörer.** Fråga kritiska leverantörer om deras egna kontinuitetsarrangemang och ta med dem i övningar där ni kan (se Ämne 3.14 — Leverantörshantering).
12. **Granska årligen, och efter varje allvarlig incident eller större förändring.** Uppdatera analysen, målen och planerna när verksamheten eller tekniken förändras, inte bara enligt kalendern.

## Frågor att diskutera med teamet

**Vilka av våra tjänster måste komma tillbaka först, och hur vet vi det?**

Be varje person rangordna tjänsterna efter återställningsprioritet. Jämför. Oenighet är upplysande: den visar att ordningen aldrig har avtalats med verksamheten. Facilitatorn kan fråga vad det skulle kosta organisationen om var och en låg nere en timme, ett dygn och en vecka. Ta frågan till verksamhetsägarna och kom överens om en lista.

**Hur mycket data kunde vi förlora, och har någon gått med på det?**

Fråga när den senaste säkerhetskopian av nyckeldata togs och hur ofta. Jämför med vad verksamheten skulle tolerera. Många team finner att svaret inte är vad de antog. Diskutera vad en strängare återställningspunkt skulle kosta. Registrera beslutet och vem som fattade det.

**När återställde vi senast från en säkerhetskopia, och vad hände?**

Be om ett verkligt datum och ett verkligt resultat. Om svaret är "aldrig" är det det viktigaste fyndet. Om det gjordes, fråga vad som gick fel och vad som åtgärdades. Planera ett återställningstest för en kritisk tjänst inom den närmaste månaden.

**Vad behöver vi återställa som beror på det som har fallerat?**

Gå igenom ett scenario som förlusten av ett molnkonto eller ett datacenter. Fråga var runbooks, hemligheter och pipelinen finns. Beroenden av det fallerade systemet är vanliga, som en runbook lagrad på en server som är nere. Lista dem och planera att flytta eller kopiera var och en.

**Vem har befogenhet att förklara en katastrof och sätta igång planen?**

Fråga människor vem som skulle besluta, och om de vet det. Dröjsmål med att aktivera en plan kostar tid. Diskutera en tydlig regel och en ersättare. Kontrollera hur personen nås om de vanliga kanalerna ligger nere.

**Vad skulle vi göra om de som vet mest inte var tillgängliga?**

Föreställ er att nyckelpersonal inte går att nå. Fråga vem mer som kunde genomföra återställningen och vad de skulle behöva. Den här frågan länkar kontinuitet till kunskapshantering. Planera ett sätt att sprida kritisk kunskap.

## I praktiken: ett agilt ITIL-exempel

En provinsregerings fastighetsregister driver en nättjänst där jurister och lantmätare lämnar in fastighetstransaktioner. Ett team på tolv bygger och driver den, och använder en enda molnleverantörsregion. En granskning av verksamhetskontinuiteten finner att tjänsten klassas som kritisk av ministeriet, med en förväntan att den kan återställas inom fyra timmar, och att ingen någonsin har testat om det är möjligt.

Teamet börjar med en bordsövning. Scenariot: molnregionen är otillgänglig i ett dygn. De upptäcker att runbooks lagras i en wiki som körs i samma region, att infrastrukturkoden bara täcker en del av miljön och att databassäkerhetskopiorna kopieras till samma region. Ministeriets fyratimmarsförväntan visar sig ha skrivits av en chef för flera år sedan och aldrig kostnadsberäknats. Teamet och ministeriets verksamhetsägare träffas. Ägaren förklarar vad ett avbrott på ett dygn skulle betyda för inlämningsfrister, och går med på att fyra timmar behövs för inlämningsdagar vid månadsskifte men att åtta timmar är acceptabelt andra tider.

Teamet kopierar runbooks och säkerhetskopior till en andra region, kompletterar infrastrukturkoden och bygger om miljön från kod i en testregion i en dagslång övning. Första försöket tar elva timmar, mestadels på grund av manuella steg och en saknad hemlighet. Efter åtgärder tar ett andra försök fem. Vissa problem återstår. Månadsskiftets mål på fyra timmar är fortfarande utom räckhåll, identitetsleverantören som personalen använder för att logga in har inget eget återställningsarrangemang, och teamet inser att det är beroende av en leverantör vars kontinuitetsplan det aldrig har sett. Teamet lägger identitetsleverantören och leverantörsfrågan i backloggen, och ministeriet går med på en längre återställningstid för icke-toppperioder medan arbetet fortsätter.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam gör återställning möjlig eller omöjlig genom design. Bygg tjänster så att de kan byggas om från kod, håll data replikerade och skriv återställningssteg som en del av klart. Delta i övningar och åtgärda de gap de hittar.

### Tjänste- och driftteam

Driftteam förvarar planerna och driver övningarna. Håll planer korta och knutna till runbooks, testa återställningar och failover och gör återställningens beroenden synliga. Följ fynden från varje övning tills de är stängda.

### Ledning och styrning

Ledare sätter målen och betalar för dem. Be om verksamhetskonsekvensanalysen och återställningsmålen, förstå vad de kostar och delta i en övning. Acceptera att vissa tjänster tar längre tid att återställa, och fatta beslutet medvetet.

### Kunder och användare

Kunder och användare är beroende av att tjänsten fortsätter eller återvänder. Tala om för leverantören hur länge du kan vara utan den och vilka data du inte kan förlora. Fråga om deras kontinuitetsarrangemang och vad du bör göra vid en katastrof, som ett alternativt sätt att lämna in brådskande arbete.

## Vanliga orsaker till misslyckande

- **En plan som ingen har testat.** Det första testet är katastrofen. Börja i stället med bordsövningar och gå vidare till tekniska återställningar.
- **Mål som ingen kom överens om.** Återställningstiden skrevs av någon som slutat. Sätt i stället återställningstid och återställningspunkt med verksamhetsägare och registrera kostnaden.
- **Säkerhetskopior som aldrig återställts.** Säkerhetskopior finns, men återställningen fallerar. Testa i stället återställningar enligt schema och mät tiden.
- **Återställning beror på det som fallerade.** Runbooks, hemligheter och verktyg ligger i det fallerade systemet. Kartlägg i stället återställningens beroenden och förvara kopior någon annanstans.
- **En nivå för allt.** Alla tjänster får den dyraste behandlingen, eller ingen gör det. Dela i stället in tjänster i nivåer efter behov.
- **Föråldrade planer.** System ändras och planer gör det inte. Förvara i stället planer tillsammans med koden och granska dem när tjänster förändras.
- **Att ignorera människor.** Planer förutsätter att den vanliga personalen finns tillgänglig. Planera i stället för frånvaro och för kommunikation när kanaler ligger nere.
- **Att ignorera leverantörer.** Kritiska beroenden saknar kontinuitetsarrangemang. Fråga i stället leverantörer och ta med dem i övningar.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Konsekvensanalys och mål | Kritiska tjänster antas | Vissa tjänster har ungefärliga återställningsmål | Kritiska tjänster har överenskommen återställningstid och -punkt, med kostnader | Mål granskas mot övningsresultat och verksamhetsförändring | Mål är samordnade med kunder, leverantörer och tillsynsmyndigheter |
| Planer och återställningsdesign | Återställning improviseras | Vissa tjänster har återställningsanteckningar | Planer och återställningskod finns för kritiska tjänster och förvaras med systemet | Planens aktualitet och återställningstid mäts och förbättras | Återställning samordnas mellan tjänster, team och leverantörer |
| Övningar och testning | Lite eller ingen testning | Vissa återställningar testas | Bords- och tekniska tester sker enligt schema | Fynd följs till stängning och tester anpassas efter risk | Övningar inkluderar leverantörer och spänner över organisationer |
| Kommunikation och människor | Kommunikation är ad hoc | Vissa kontaktlistor finns | Planer täcker vem som talar med vem, med vägar utanför det normala och ersättare | Kommunikations- och bemanningsgap mäts och stängs | Kommunikation repeteras med kunder, leverantörer och tillsynsmyndigheter |

## Checklista

- [ ] Vi har identifierat våra kritiska tjänster med verksamhetsägare.
- [ ] Varje kritisk tjänst har en överenskommen återställningstid och återställningspunkt, med känd kostnad.
- [ ] Tjänster är grupperade i nivåer som motsvarar deras återställningsbehov.
- [ ] En kort återställningsplan finns, med vem som kan aktivera den och hur man når dem.
- [ ] Återställningskod, konfiguration och runbooks finns i versionshantering och granskas med ändringar.
- [ ] Runbooks, hemligheter och verktyg som behövs för återställning överlever förlusten av den primära miljön.
- [ ] En återställning från säkerhetskopia har testats för varje kritisk tjänst under det senaste året.
- [ ] En bordsövning har hållits under det senaste året, och fynden följs.
- [ ] Kommunikationsmallar och vägar utanför det normala finns.
- [ ] Kritiska leverantörer har tillfrågats om sina egna kontinuitetsarrangemang.

## AI-prompter

**Syfte: utarbeta frågorna för en verksamhetskonsekvensanalys.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera en bordsövning.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: göra övningsanteckningar till en gaplista.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Syfte: skriva en kort återställningsplansdisposition för en tjänst.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): använd för att skriva organisationens plan för att hålla kritiska funktioner igång.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): använd för att planera teknisk återställning av IT-tjänster.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): använd för att utforma tester av återställning och failover.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): använd för att planera vad ni säger till kunder, personal och allmänhet under en störning.
- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera kontinuitetsrisker och hur de hanteras.

## Viktiga källor

- **Business continuity planning** (Wikipedia): definitioner av kontinuitet, verksamhetskonsekvensanalys, återställningsmål, övningar och standarder.
- **ISO 22301** (International Organization for Standardization): kravstandarden för ledningssystem för verksamhetskontinuitet; läs standarden för överensstämmelseanspråk.
- **Incident management** (Wikipedia): den tvärvetenskapliga översikten som placerar kontinuitet bredvid incidentsvar.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): tillförlitlighetens ekonomi som ramar in återställningsmål.

## Referenser

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
