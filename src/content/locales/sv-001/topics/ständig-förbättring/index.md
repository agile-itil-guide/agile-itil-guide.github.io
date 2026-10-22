# Ständig förbättring

**Ständig förbättring är vanan att göra tjänster och arbetssätt lite bättre gång på gång, och den blir verklig först när förbättringsarbetet är synligt, ägt, schemalagt och kontrollerat, som allt annat arbete.**

## Varför detta är viktigt

Varje arbetssätt i den här guiden slutar på samma ställe: lär av det som hände och ändra något. Incidenter leder till problem, problem leder till åtgärder, retrospektiv leder till experiment och granskningar av servicenivåer leder till nya mål. Ständig förbättring är det arbetssätt som förbinder dem och håller dem i rörelse. Utan det ger varje arbetssätt insikter som ingen agerar på.

I många organisationer är förbättring det första som kläms åt. Leveranstrycket fyller varje dag, och förbättringsidéer hopar sig i ett dokument som ingen öppnar. Agila team har ett försprång, eftersom retrospektiv är inbyggda, men retrospektiv som inte ger någon förändring är vanliga. Testet på ett arbetssätt för ständig förbättring är enkelt: kan ni nämna tre saker som är bättre det här kvartalet tack vare det?

[Wikipedia-artikeln om den ständiga förbättringsprocessen](https://en.wikipedia.org/wiki/Continual_improvement_process) beskriver den som en pågående ansträngning att förbättra produkter, tjänster eller processer, vare sig stegvis eller genombrott, med återkoppling, effektivitet och utveckling genom små steg som nyckelegenskaper. [Artikeln om PDCA](https://en.wikipedia.org/wiki/PDCA) beskriver cykeln planera–göra–kontrollera–agera bakom många förbättringsmetoder. Båda är allmänna. ITIL behandlar ständig förbättring som en komponent i tjänstevärdessystemet (se Ämne 2.3 — Tjänstevärdessystemet i ITIL) och som ett arbetssätt, men ramverksägarens text fanns inte tillgänglig för den här guiden, så det här ämnet beskriver inte ITIL:s förbättringsmodell i detalj.

## Centrala begrepp

### Vad det är

Enligt Wikipedia är en ständig förbättringsprocess (continual improvement process, CIP), även kallad kontinuerlig förbättring, en pågående ansträngning att förbättra produkter, tjänster eller processer. Artikeln beskriver den som en metaprocess för ledningssystem som kvalitets-, projekt- och programhantering, med tre nyckelegenskaper: återkoppling, effektivitet och utveckling genom små, stegvisa steg. Den tillskriver W. Edwards Deming en pionjärroll, som såg CIP som en del av ett system som värderar process och kundåterkoppling mot organisationens mål.

### Ständig eller kontinuerlig

Artikeln noterar en terminologisk poäng: i slutet av 1990-talet ändrade utvecklarna av ISO 9001:2000 "kontinuerlig" till "ständig", enligt uppgift eftersom kommittén föredrog stegvis förbättring och ansåg att "kontinuerlig" kunde antyda förändring minut för minut. ITIL använder "continual". I praktiken används termerna växelvis. Det som betyder något är regelbunden, upprepad förbättring.

### Kaizen

**Kaizen** är en japansk term som ungefär betyder "förändring till det bättre". Enligt artikeln populariserades den av Masaaki Imais bok från 1986, *Kaizen: The Key to Japan's Competitive Success*, och dess kännetecken omfattar många små förändringar, idéer från befintlig personal, låg kostnad och medarbetares ägarskap. Det passar agila team, där de som gör arbetet är bäst placerade för att se vad som ska förbättras (se Ämne 1.7 — Lean programvaruutveckling).

### PDCA-cykeln

PDCA (planera, göra, kontrollera, agera; plan, do, check, act) är med Wikipedias ord en iterativ metod för att styra och ständigt förbättra processer och produkter. Den kallas också Shewhart-cykeln, efter Walter Shewhart vid Bell Telephone Laboratories på 1920-talet; W. Edwards Deming modifierade den på 1940-talet och tillämpade den på ledning i Japan på 1950-talet. Stegen:

| Steg | Vad du gör |
|---|---|
| **Planera** | Fastställ mål och de processer som behövs för att leverera de resultat du vill ha |
| **Göra** | Genomför planen, helst i liten skala |
| **Kontrollera** | Jämför de data du samlade in med de förväntade resultaten och leta efter trender |
| **Agera** | Undersök grundorsaker till problem, justera processen och starta nästa cykel |

Artikeln knyter PDCA till den vetenskapliga metoden och dess mönster hypotes, experiment, utvärdering. En variant, PDSA, ersätter "kontrollera" med "studera", vilket Deming föredrog. Artikeln säger att iteration är central: varje cykel förfinar kunskapen. Team som kallar en ändring ett "experiment" med en angiven förväntan och en kontroll använder detta mönster.

### Varifrån förbättring kommer

Förbättringsidéer kommer från många ställen i en tjänsteorganisation:

| Källa | Exempel | Var det behandlas |
|---|---|---|
| Incidenter och efteranalyser | Ett fel visar ett saknat larm | Ämne 3.2 — Incidenthantering |
| Problemutredning | Upprepade avbrott visar en designbrist | Ämne 3.3 — Problemhantering |
| Teman hos servicedesken | Samma fråga dyker upp varje vecka | Ämne 3.1 — Servicedesk |
| Retrospektiv | Teamet finner sin överlämning långsam | Ämne 1.4 — Leveransprognoser och planeringsmått |
| Flödesdata | En kö växer vid ett steg | Ämne 1.5 — Kanban |
| Kundåterkoppling | Användare finner ett formulär förvirrande | Ämne 3.6 — Hantering av serviceförfrågningar |
| Granskningar av servicenivåer | Ett mål missas upprepade gånger | Ämne 3.7 — Hantering av servicenivåer |
| Revisioner och riskgranskningar | En kontroll visar sig vara svag | Ämne 5.7 — Styrning, risk och efterlevnad |

Arbetssättet ständig förbättring samlar dessa i en synlig lista, väljer vad som ska göras och kontrollerar resultaten.

### Förbättring som arbete

Den centrala disciplinen är att behandla förbättring som arbete: poster i en backlogg med ägare, förväntade nyttor och datum. Utan det beror förbättring på entusiasm och ledig tid. Det innebär också att göra avvägningen mot leveransarbete öppet, så att kapaciteten skyddas medvetet. Ett vanligt upplägg är att reservera en andel av varje cykel för förbättring, eller att köra korta förbättringscykler vid sidan av leveransen.

### Att mäta förbättring

För att veta att något förbättrades behöver ni ett före och ett efter. Välj ett mått som hör till ändringen, som tid till återställd tjänst, upprepade incidenter eller väntetid, och titta på det före och efter. Undvik mått som är lätta att flytta utan att förbättra något. Använd flera och diskutera vad talen betyder (se Ämne 5.6 — Mått och mätning). De artiklar som konsulterats ger inget belägg för förbättringsprogrammens effektivitet, så teamens egna resultat är beläggen.

### Metoder

Många metoder stöder förbättring: grundorsaksanalys, Six Sigma och DMAIC för datadriven minskning av defekter, värdeströmskartläggning och kaizen-event. Wikipedia-artikeln om ständig förbättring nämner inte Six Sigma, DMAIC eller ITIL:s förbättringsmodell, så den här guiden tillskriver dem inte den. Välj metoder som passar problemets storlek: en retrospektivåtgärd för en liten friktion, ett datadrivet projekt för en ihållande defekt.

### Gränser

Artikeln redovisar ingen kritik av ständig förbättring, och vissa av dess källor är svaga eller daterade. Praktiska risker är välkända: förbättringströtthet när för många förändringar kommer, förbättringsteater där listor växer och inget förändras, och lokal optimering där ett team förbättrar sin del och försämrar helheten. Skydda er med en kort, synlig lista och en regelbunden kontroll av resultaten.

## Bästa praxis

1. **För en synlig förbättringslista.** Samla idéer från incidenter, retrospektiv, återkoppling och granskningar på ett ställe. Ge varje post en ägare, det problem den tar upp och den förväntade nyttan.
2. **Behandla förbättringsposter som arbete.** Lägg dem i backloggen bredvid leveransposter och avgör i planeringen hur mycket kapacitet de får. Skydda den andelen när trycket ökar.
3. **Välj få och slutför dem.** Arbeta med de en till tre mest värdefulla posterna åt gången. En lång lista av påbörjade poster är ett tecken på förbättringsteater.
4. **Använd cykeln.** För varje ändring, ange planen och det förväntade resultatet, gör ändringen i liten skala, kontrollera data och avgör om ni ska anta, justera eller släppa den. Skriv ned beslutet.
5. **Definiera framgång innan ni börjar.** Välj måttet och vad ni förväntar er se, före ändringen. Det förhindrar att varje resultat efteråt förklaras som en framgång.
6. **Börja smått och lokalt.** Låt team förbättra sitt eget arbete utan att vänta på tillstånd, inom tydliga gränser. Reservera större program för problem som korsar team.
7. **Dela vad ni lär er.** Publicera korta anteckningar om vad som ändrades och vad som hände, inklusive misslyckanden. Andra team kan återanvända eller undvika det.
8. **Se på hela systemet.** Innan ni antar en förbättring, fråga vem den påverkar. En lokal vinst som ger andra team mer arbete är ingen förbättring totalt sett (se Ämne 2.4 — Vägledande principer i ITIL om att tänka helhetsorienterat).
9. **Granska listan regelbundet.** En gång i månaden, titta på listan med teamet och tjänstens ägare: vad som är klart, vad som har fastnat, vad som bör släppas. Ta bort poster som har förlorat sin poäng.
10. **Fira resultat, inte aktivitet.** Erkänn förbättringar som gjorde saker bättre för användare eller personal, med belägg. Belöna inte antalet idéer eller möten.
11. **Anpassa metod till problem.** Använd snabba experiment för små problem, databaserade metoder för ihållande defekter och ta in specialisthjälp för komplexa.
12. **Involvera användare och leverantörer.** Fråga dem vad som ska förbättras och bjud in dem att granska resultat där de berörs (se Ämne 3.14 — Leverantörshantering).

## Frågor att diskutera med teamet

**Vad blev bättre det senaste kvartalet på grund av något vi beslutade att ändra?**

Be om specifika exempel med belägg. Om människor har svårt att svara är det fyndet. Om det finns exempel, fråga vad som fick dem att fungera: en ägare, tid, ett tydligt mått. Jämför med förbättringar som stannade av. Facilitatorn kan fråga vilket mönster som är vanligast i ert team.

**Vart tar våra förbättringsidéer vägen?**

Följ flera nyliga idéer: från en incidentgranskning, ett retrospektiv, en kundkommentar. Ta reda på var var och en hamnade. Ofta är de utspridda över dokument och ärenden. Diskutera en enda lista, vem som för den och hur den granskas. Skapa den första versionen under sessionen.

**Hur stor del av vår kapacitet går till förbättring, och vem bestämde det?**

Titta på de senaste cyklerna och uppskatta andelen. Ofta är den långt mindre än människor tror, och ingen valde den. Fråga vad teamet och cheferna tycker att den bör vara. Kom överens om en startandel och ett sätt att skydda den.

**Vilka av våra ändringar kontrollerade vi efteråt?**

Fråga om de tre senaste ändringarna och vilket belägg som visade att de fungerade. Många kontrollerades aldrig. Diskutera en enkel vana: före ändringen, ange vad ni förväntar er se och när ni ska titta. Välj en pågående ändring att tillämpa den på.

**Vilken förbättring hjälpte oss och skadade någon annan?**

Samla exempel på lokala förbättringar som flyttade ett problem någon annanstans. Dessa kommer ofta från ändringar av överlämningar eller godkännanden. Diskutera hur ni frågar de berörda tidigare. Målet är en enkel fråga att ställa före en ändring.

**Vilken är den äldsta posten på vår förbättringslista, och varför finns den kvar?**

Välj den äldsta posten och följ dess historia. Skälen omfattar ingen ägare, ingen tid, oenighet eller att den överhunnits av händelser. Besluta att göra den, schemalägga den eller släppa den öppet. Att släppa en post med avsikt är ett tecken på en frisk lista.

## I praktiken: ett agilt ITIL-exempel

Ett regionalt vattenverk har en plattform för kundfakturering och mätaravläsning som drivs av ett team på elva. Retrospektiv hålls varannan vecka och ger listor över åtgärder, men få slutförs. Incidenter granskas, och åtgärder från dessa granskningar läggs i ett separat system. Verkets tillsynsmyndighet har bett om belägg för hur verket lär sig av tjänstefel.

Tjänstens ägare och teamledaren beslutar att göra förbättring synlig. De skapar en enda förbättringslista som samlar åtgärder från retrospektiv, incidentgranskningar och kundåterkoppling. Varje post har en ägare, en beskrivning av problemet, den förväntade nyttan och ett mått. De reserverar 15 procent av varje tvåveckorscykel för förbättringsposter och begränsar antalet pågående till tre. För var och en följer de planera, göra, kontrollera och agera: de skriver vad de förväntar sig se, prövar ändringen på en delmängd, tittar på talen efter en fastställd period och registrerar beslutet. En månatlig granskning med tjänstens ägare och en representant för kundtjänst tittar på vad som har gjorts och vad som har lärts.

Efter sex månader har teamet slutfört nio poster, inklusive en åtgärd för ett upprepat fel vid import av mätardata som minskade upprepade incidenter av den orsaken till nästan noll, och en tydligare fakturaförklaring som minskade samtal i ämnet. Det har också belägg för tillsynsmyndigheten i form av listan och kontrollerna. Vissa svårigheter återstår. Två poster slutfördes utan att kontrolleras eftersom cykeln gick vidare, och en förbättring av importprocessen gjorde ett nedströms rapporteringsteams arbete långsammare, vilket kom fram först en månad senare. Teamet lägger till en fråga om "vem mer berörs" i listmallen och en kalenderpåminnelse för varje kontroll.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam äger mycket av förbättringslistan. För in idéer från retrospektiv och incidenter på ett ställe, slutför det ni påbörjar och kontrollera resultat. Var villiga att lägga kapacitet på förbättring och inte bara på nya funktioner.

### Tjänste- och driftteam

Driftteam ser friktionen först. Mata listan med incidentteman, kontakter hos deskken och flödesdata och delta i att kontrollera resultat. Argumentera för förbättringar som minskar toil och upprepade incidenter.

### Ledning och styrning

Ledare skyddar kapaciteten för förbättring och frågar efter resultat. Fråga vad som har förbättrats och hur det kontrollerades, inte hur många idéer det finns. Ta bort hinder som team nämner och visa att ni har gjort det. Stöd förbättringar som korsar teamgränser.

### Kunder och användare

Kunder och användare bidrar med några av de bästa idéerna. Tala om för teamet vad som frustrerar dig och be att få höra vad som ändrades som följd. Delta i granskningar där din tjänst berörs. Din återkoppling om huruvida en ändring hjälpte är den mest direkta kontroll som finns.

## Vanliga orsaker till misslyckande

- **Idéer utan ägare.** Listan växer och inget görs. Kräv i stället en ägare och en förväntad nytta för varje post.
- **Förbättring som ledig tid.** Leveransen trycker undan den. Reservera i stället kapacitet och skydda den.
- **För många samtidigt.** Allt påbörjas och lite slutförs. Begränsa i stället pågående arbete för förbättringsposter.
- **Ingen kontroll.** Ändringar antas för att de var planerade. Ange i stället det förväntade resultatet i förväg och titta på data.
- **Lokal optimering.** Ett team förbättrar och ett annat lider. Fråga i stället vem mer som berörs före och efter.
- **Förbättringsteater.** Workshops och affischer ersätter resultat. Räkna i stället slutförda och verifierade förbättringar.
- **Mått som kan fuskas med.** Talet flyttar sig och inget förbättras. Använd i stället flera mått och titta på det underliggande arbetet.
- **Att glömma att dela.** Lärdomar stannar hos teamet. Publicera i stället korta anteckningar och bjud in andra att återanvända dem.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Insamling och prioritering | Idéer är utspridda och oprioriterade | Vissa team för listor | En synlig lista per team med ägare och förväntade nyttor | Prioriteringar använder data om effekt och insats | Förbättringslistor samordnas mellan team och med kunder |
| Kapacitet och flöde | Förbättring görs på ledig tid | Viss kapacitet reserveras | En skyddad andel av kapaciteten och gränser för pågående arbete | Förbättringens kapacitet och genomflöde granskas | Kapacitet delas mellan team för tvärgående förbättringar |
| Kontroll av resultat | Resultat kontrolleras inte | Vissa ändringar granskas | Varje ändring har en angiven förväntan och en kontroll | Resultat mäts och kopplas till beslut | Belägg delas mellan team och används för att vägleda organisationen |
| Lärande och spridning | Lärdomar stannar lokalt | Vissa anteckningar delas | Lärdomar publiceras och granskas | Återanvändning av förbättringar följs | Förbättringar sprids rutinmässigt mellan team och leverantörer |

## Checklista

- [ ] Vi har en synlig förbättringslista med ägare och förväntade nyttor.
- [ ] Idéer från retrospektiv, incidentgranskningar, teman hos deskken och återkoppling matar alla listan.
- [ ] En skyddad andel av varje cykel går till förbättringsposter.
- [ ] Vi begränsar antalet pågående förbättringsposter.
- [ ] Varje ändring anger ett förväntat resultat och en tid att kontrollera det.
- [ ] Vi kontrollerar resultat och registrerar beslutet att anta, justera eller släppa.
- [ ] Vi frågar vem mer som berörs innan vi gör en ändring.
- [ ] Listan granskas minst varje månad.
- [ ] Vi delar korta anteckningar om vad som ändrades och vad vi lärde oss.
- [ ] Vi kan nämna tre saker som är bättre det här kvartalet tack vare förbättringsarbete.

## AI-prompter

**Syfte: sammanställa förbättringsidéer till en enda prioriterad lista.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Syfte: göra en förbättringsidé till ett litet experiment.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: granska läget på en förbättringslista.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Syfte: kontrollera om en förbättring fungerade.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## AI-färdigheter

- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera och granska små, kontinuerliga förbättringar.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla retrospektiv som ger ägda åtgärder.
- [dmaic](../../../../skills/dmaic/SKILL.md): använd för datadriven förbättring av ihållande defekter, genom definiera, mäta, analysera, förbättra och styra.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): använd när variation och defekter är det huvudsakliga problemet och ni behöver ett statistiskt angreppssätt.
- [futurespective](../../../../skills/futurespective/SKILL.md): använd för att blicka framåt tillsammans och komma överens om förbättringar för nästa period.

## Viktiga källor

- **Continual improvement process** (Wikipedia): definitionen, kaizen, PDCA och terminologin ständig mot kontinuerlig.
- **PDCA** (Wikipedia): cykeln planera–göra–kontrollera–agera, dess ursprung och varianter som PDSA.
- **Kaizen** (Wikipedia): bakgrund om liten, kontinuerlig förbättring och dess ursprung i japansk industri.
- **Lean software development** (Wikipedia): de lean-idéer som ligger bakom kontinuerlig förbättring i programvaruarbete.

## Referenser

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
