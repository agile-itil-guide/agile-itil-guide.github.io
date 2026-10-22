# Tillgänglighet, kapacitet och prestanda

**Tillgänglighet, kapacitet och prestanda är tre sätt att se på om en tjänst finns där, är stor nog och är snabb nog när användare behöver den, och det agila angreppssättet är att välja mål utifrån användarbehov, prissätta dem ärligt och testa dem innan efterfrågan kommer.**

## Varför detta är viktigt

Användare skiljer inte på de tre. En tjänst som är "uppe" men för långsam att använda har svikit dem, och en tjänst som är snabb en lugn dag och faller ihop vid toppen har svikit dem i just det ögonblick de behöver den mest. Team som ser på tillgänglighet, kapacitet och prestanda var för sig missar ofta hur de samverkar: att lägga till kapacitet ändrar kostnad och komplexitet, att jaga perfekt tillgänglighet begränsar hur snabbt ni kan ändra, och att trimma för fart kan minska motståndskraften.

Agila team möter en särskild version av problemet. De ändrar tjänsten ofta, och varje ändring kan förändra prestanda eller resursbehov på sätt som ingen testat. De arbetar också ofta mot korta tidshorisonter, så kapacitetsbehov som tar månader att ordna, som maskinvara, avtal eller licenser, kan missas. Arbetssätten i det här ämnet ger ett sätt att blicka framåt utan att återvända till långsiktig planering för dess egen skull.

Googles bok *Site Reliability Engineering*, i kapitlet "Embracing Risk", är en tydlig källa om tillgänglighetens ekonomi: den säger att dess angreppssätt inte siktar på 100 procents tillförlitlighet, eftersom det efter en viss punkt begränsar hur snabbt nya funktioner kan utvecklas att maximera stabiliteten, och eftersom tillförlitlighetskostnaderna stiger brant. [Wikipedia-artikeln om kapacitetsplanering](https://en.wikipedia.org/wiki/Capacity_planning) ger allmänna definitioner och strategier. Båda är partiella, och det ITIL-ordförråd som används här kommer från allmänt publicerade beskrivningar som den här guiden inte kunde bekräfta mot ramverksägarens text.

## Centrala begrepp

### Tillgänglighet

**Tillgänglighet (availability)** är en tjänsts förmåga att göra det användare behöver när de behöver det. Ett vanligt sätt att uttrycka den är som en procentandel under en period. SRE-kapitlet noterar två sätt att mäta den. För ett enskilt system är tillgänglighet tidsbaserad: 99,99 procent tillåter ungefär 52,56 minuters oplanerad nedtid per år. För distribuerade tjänster som alltid är delvis uppe mäts den bättre som andelen lyckade förfrågningar över ett rullande fönster; kapitlets exempel är en tjänst med 2,5 miljoner dagliga förfrågningar och ett mål på 99,99 %, vilket tillåter upp till 250 fel. Kapitlet fokuserar på oplanerad nedtid. Planerad nedtid behöver ett eget avtal med användare.

### Priset för varje extra nia

Kapitlet säger att tillförlitlighetskostnader stiger icke-linjärt: en extra nia kan kosta 100 gånger så mycket som föregående ökning, inklusive redundanta resurser och alternativkostnaden för ingenjörer som inte bygger användarvända funktioner. Det ger en illustration: att höja tillgängligheten från 99,9 % till 99,99 % på en tjänst med 1 miljon dollar i intäkter är värt ungefär 900 dollar, så investeringen lönar sig bara om den extra nian kostar mindre än det. Talen är källans exempel, och era egna måste komma från era egna intäkter eller värde. Principen håller: välj den tillgänglighet användare behöver och prissätt allt därutöver.

### Risktolerans

Kapitlet beskriver hur man arbetar med produktägare för att göra affärsmål till uttryckliga mål. Faktorer omfattar den krävda tillgängligheten, felens form (en jämn låg felfrekvens mot enstaka fullständiga avbrott, där dataexponering är särskilt allvarlig), kostnad och andra mått som latens. Det noterar att infrastruktur som betjänar många klienter kan erbjudas på uttryckligt definierade servicenivåer, så att varje klient väljer den billigaste nivå som möter dess behov.

### Felbudgetar

Kapitlet förklarar felbudgeten som ett gemensamt, objektivt mått mellan produktteam, som mäts på hastighet, och tillförlitlighetsteam, som mäts på tillförlitlighet. Så länge budget återstår fortsätter releaser. När den är förbrukad saktar releaserna och insatsen flyttas till tillförlitlighet (se Ämne 3.7 — Hantering av servicenivåer).

### Kapacitet

Wikipedia-artikeln definierar kapacitetsplanering som att bestämma den produktionskapacitet en organisation behöver för att möta förändrad efterfrågan, och säger att den inom IT är en synonym till kapacitetshantering: att uppskatta de lagrings-, maskinvaru-, programvaru- och anslutningsresurser som behövs under en framtida period. Artikeln skiljer **designkapacitet**, den maximalt möjliga produktionen, från **effektiv kapacitet**, produktionen efter begränsningar. I praktiken, planera för effektiv kapacitet, som alltid är lägre än designsiffran.

### Kapacitetsstrategier

Artikeln beskriver fyra strategier för att lägga till kapacitet:

| Strategi | Vad den innebär | Avvägning |
|---|---|---|
| **Föregripa (lead)** | Lägg till kapacitet före efterfrågan | God service och korta ledtider, men riskabelt om efterfrågan är oförutsägbar |
| **Följa efter (lag)** | Lägg till kapacitet först efter att ha kört vid eller över full kapacitet | Lägre risk för överbyggnad, men kan förlora kunder |
| **Matcha (match)** | Lägg till kapacitet i små steg när efterfrågan förändras | Balanserat, kräver god övervakning |
| **Justera (adjustment)** | Lägg till eller minska kapacitet med små eller stora belopp när efterfrågan eller arkitekturen förändras | Flexibelt, kräver snabb provisionering |

Artikeln beskriver kort-, medellång- och långsiktig planering (operativ, taktisk och strategisk), från dagar till år. I en molnmiljö är "matcha" och "justera" ofta lättare eftersom resurser kan läggas till snabbt, men kostnad och avtal behöver ändå planeras (se Ämne 4.5 — IT-ekonomistyrning och FinOps).

### Prestanda

**Prestanda (performance)** är hur snabbt och hur väl tjänsten svarar. SRE-bokens kapitel om övervakning föreslår att mäta latens, trafik, fel och mättnad, och det varnar för att medelvärden döljer långsamma avvikare (se Ämne 3.10 — Övervakning och händelsehantering). Mättnad, hur "full" tjänsten är, länkar prestanda till kapacitet: kapitlet noterar att prestanda ofta försämras före 100 procents utnyttjande.

### Hur de tre samverkar

- Mer kapacitet kan höja tillgänglighet och prestanda, till en kostnad.
- Höga tillgänglighetsmål kräver vanligtvis redundans, vilket är extra kapacitet.
- Trimning för toppprestanda kan minska utrymmet för fel.
- Ändringar av tjänsten förändrar alla tre, vilket är varför testning betyder något.

En användbar disciplin är att ange målen tillsammans för varje tjänst: hur tillgänglig, hur snabb och hur stor last den måste bära.

### Efterfrågan och prognoser

Kapacitet beror på efterfrågan. Efterfrågan kommer från användare och från verksamheten: marknadsföringskampanjer, säsongstoppar, nya kunder. Verksamheten vet mer om framtiden än IT gör, så fråga. Planera med intervall i stället för enskilda tal och se över prognosen regelbundet (se färdigheten för efterfrågeprognoser nedan).

### Testning

Kapacitets- och prestandapåståenden är hypoteser tills de testats. Belastningstestning och prestandatestning tillämpar realistisk efterfrågan för att se hur tjänsten beter sig, och kaostestning inför fel för att se om tillgängligheten håller. Dessa kan vara en del av leveranspipelinen.

### Källornas gränser

Wikipedia-artikeln om kapacitetsplanering nämner inte ITIL:s kapacitetshantering eller analyserar förhållandet mellan kapacitet, prestanda och tillgänglighet, och dess avsnitt om tillgångar är markerat som saknande källhänvisningar. SRE-kapitlet beskriver arbetssätten hos en mycket stor organisation med särskild ekonomi. Använd dem för principer, inte för siffror.

## Bästa praxis

1. **Ange mål för tillgänglighet, prestanda och last tillsammans.** Skriv för varje tjänst hur tillgänglig den måste vara, hur snabbt den måste svara och hur stor last den måste bära. Grunda dem på användarbehov och kom överens om dem med tjänstens ägare och kunder.
2. **Prissätt målen.** Uppskatta vad en extra nivå av tillgänglighet eller fart kostar, i pengar och i försenade funktioner. Jämför med vad användare och verksamhet skulle vinna. Använd era egna siffror, inte exemplet i en bok.
3. **Mät tillgänglighet på ett sätt som passar tjänsten.** För tjänster som alltid är delvis uppe, använd andelen lyckade över ett rullande fönster som SRE-kapitlet gör. För enkla system, använd tidsbaserade mått. Räkna oplanerad och planerad nedtid var för sig.
4. **Planera för effektiv kapacitet.** Uppskatta vad tjänsten kan bära efter verkliga begränsningar som overhead, komponentfel och underhåll. Behåll en marginal.
5. **Välj en kapacitetsstrategi med avsikt.** Avgör om ni ska föregripa, följa efter eller matcha för varje resurs, utifrån ledtider, kostnaden för brist och kostnaden för överbyggnad. Skriv ned valet och se över det.
6. **Fråga verksamheten om efterfrågan.** Träffa ledare inom marknadsföring, försäljning och drift i en regelbunden cykel för att få veta om kampanjer, lanseringar och säsongstoppar. Registrera den förväntade lasten med intervall.
7. **Bevaka mättnad.** Följ hur fulla nyckelresurser är och sätt larm långt före den punkt där prestanda försämras. Känn till den nivå där er tjänst börjar bli långsam.
8. **Testa före toppen.** Kör belastnings- och prestandatester som liknar verklig trafik, före kända toppar och efter betydande ändringar. Åtgärda vad ni finner medan det finns tid.
9. **Testa fel, inte bara last.** Öva på att förlora en komponent, en zon eller en leverantör i en säker miljö och se om tillgängligheten håller (se färdigheten för kaostestning nedan).
10. **Ta med kapacitet i ändrings- och releasearbete.** Fråga i design och granskning om en ändring förändrar resursbehovet. Lägg till prestandakontroller i pipelinen för de vägar som betyder något (se Ämne 3.5 — Release- och driftsättningshantering).
11. **Använd felbudgeten för att avgöra avvägningar.** När det finns budget, spendera den på ändring. När den är förbrukad, spendera insats på tillförlitlighet och kapacitet. Se över regeln med leverans och drift tillsammans.
12. **Granska prognoser mot utfall.** Varje kvartal, jämför förutsagd och faktisk efterfrågan och justera er metod. Behandla överraskningar som information.

## Frågor att diskutera med teamet

**Vad behöver våra användare egentligen i tillgänglighet, fart och kapacitet, och vem bestämde det?**

Fråga efter de nuvarande målen och var de kom ifrån. Ofta sattes de för länge sedan, eller av teamet utan att fråga användare. Fråga användare och kunder vad som gör mest ont. Diskutera om målen stämmer. Facilitatorn kan fråga vad som skulle hända om målet var ett steg lägre, och vad det skulle frigöra.

**Vad kostar nästa nia oss?**

Välj en tjänst med ett högt tillgänglighetsmål. Uppskatta vad det skulle kosta att höja eller sänka det ett steg, i pengar och i försenat arbete. Jämför med värdet för användare. SRE-kapitlets exempel visar hur snabbt räkneexemplet kan vända mot ett högre mål. Gör beräkningen med era egna tal och registrera antagandena.

**Vilken är nästa efterfrågetopp vi känner till, och vad har vi gjort för att förbereda oss?**

Lista de kända topparna: en kampanj, en tidsfrist, en säsongsrusch. Fråga för var och en vem som känner till den förväntade lasten och om tjänsten har testats på den nivån. Ofta har ingen frågat. Kom överens om en person som samlar in talen och ett datum för testet.

**Var är vår tjänst närmast mättnad, och vad händer när den når dit?**

Fråga efter den mest belastade resursen. Titta på trenden. Fråga vad tjänsten gör vid den gränsen: blir långsam, ger fel eller fallerar. Om ingen vet, testa det. Välj ett tröskelvärde att agera på och ett larm för det.

**Vilka av våra senaste ändringar påverkade prestanda eller kapacitet, och visste vi det i förväg?**

Granska nyliga ändringar och fråga hur prestandan kontrollerades. Om den inte gjorde det, diskutera hur en lättviktig kontroll skulle se ut. Typiska alternativ är ett test på den kritiska vägen eller ett kanariesläpp med övervakning. Kom överens om en för nästa release.

**Om en komponent fallerade just nu, vad skulle hända med tillgängligheten?**

Ta en nyckeltjänst och följ ett fel i en databas, en zon eller en leverantör. Fråga vad designen antar och vad som har testats. Gap mellan antagande och belägg är risker. Planera ett kontrollerat feltest i en säker miljö.

## I praktiken: ett agilt ITIL-exempel

En nationell pensionsmyndighet driver en nättjänst där medborgare kontrollerar sina rättigheter och lämnar in blanketter. Tjänsten har ett lugnt år utom veckorna efter att årsbesked skickats, då trafiken stiger till flera gånger den normala nivån. Förra året blev tjänsten så långsam att många användare gav upp, och kundtjänsten blev överväldigad. Plattformsteamet på nio och driftschefen vill undvika en upprepning.

Teamet börjar med att fråga kommunikationsavdelningen om den förväntade lasten. Avdelningen säger att besked skickas i två omgångar och anger datum, men inga siffror. Teamet uppskattar intervallet utifrån fjolårets data och sätter ett mål: blankettsidan måste svara inom en acceptabel tid för den förväntade toppen, och tjänsten måste vara tillgänglig under de två omgångarna. De kör ett belastningstest på en kopia av produktion och finner att databasen är den första resursen som mättas, långt under den förutsagda toppen. De väljer en "föregripa"-strategi för databasen, eftersom ledtiden för att lägga till kapacitet är lång, och en "matcha"-strategi för webbservrarna, som kan läggas till på minuter. Ett feltest visar att förlusten av en databasnod halverar kapaciteten, vilket vore oacceptabelt vid toppen, så de lägger till en reserv.

Vid toppen förblir tjänsten uppe och svarstiderna håller i den första omgången. I den andra omgången blir en betalningsbekräftelsekomponent som ingen hade testat långsam under last, och vissa användare ser förseningar. Teamet kände inte till detta beroendes gräns och hade inte fått veta att den andra omgången skulle bli större. De lägger till komponenten i nästa belastningstest, ber kommunikationsavdelningen om volymen för varje omgång tidigare och kommer överens om att granska prognosprocessen nästa kvartal.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam påverkar alla tre genom design och ändring. Ta med prestanda och kapacitet i designgranskningar och i pipelinen. Tala om för driften om ändringar som förändrar lasten och fråga verksamheten om förväntad efterfrågan.

### Tjänste- och driftteam

Driftteam bär vanligtvis övervakningen och kapacitetsplanerna. Följ mättnad och trend, håll en bild av ledtider för resurser och för belägg till planeringen. Hjälp verksamheten förstå vad varje nivå av tillgänglighet kostar.

### Ledning och styrning

Ledare sätter det pris de är villiga att betala för tillförlitlighet och fart. Be om mål som stämmer med användarbehov, med kostnader, och acceptera att perfekt tillgänglighet inte är ett förnuftigt mål. Stöd testning före kända toppar och budget för motståndskraft där det betyder något.

### Kunder och användare

Kunder och användare känner resultatet. Tala om för leverantören när du väntar dig extra last, som en kampanj eller tidsfrist, och vad som är viktigast för dig i fart och tillgänglighet. Rapportera långsamhet såväl som avbrott, eftersom båda är fel ur ditt perspektiv.

## Vanliga orsaker till misslyckande

- **Mål av gammal vana.** "Fem nior" krävs utan att fråga varför. Härled i stället mål från användarbehov och prissätt dem.
- **Överraskande toppar.** Verksamheten känner till en kampanj och IT gör det inte. Träffas i stället i en regelbunden cykel och registrera förväntad last.
- **Medelvärden för prestanda.** Långsamma avvikare förblir osedda. Titta i stället på höga percentiler och mättnad.
- **Kapacitet läggs till först efter problem.** Följa-efter-strategi används av misstag. Välj i stället en strategi med avsikt, utifrån ledtider.
- **Oprövad motståndskraft.** Redundans finns på papperet. Testa i stället komponentfel i en säker miljö.
- **Ändringar utan prestandakontroller.** En release försämrar farten. Lägg i stället till kontroller i pipelinen för de vägar som betyder något.
- **Att glömma beroenden.** En tredjepartskomponent begränsar hela tjänsten. Lista i stället beroenden och testa dem.
- **Att behandla prognosen som fast.** Planer ignorerar fel. Använd i stället intervall och jämför prognoser med utfall.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Mål och kostnad | Mål är informella eller kopierade | Vissa tjänster har angivna mål | Tjänster har överenskomna mål för tillgänglighet, prestanda och last med kända kostnader | Mål och kostnader granskas mot utfall | Mål sätts gemensamt med kunder och leverantörer och justeras utifrån belägg |
| Efterfråge- och kapacitetsplanering | Kapacitet läggs till efter problem | Vissa team prognostiserar kända toppar | Efterfrågan inhämtas från verksamheten i en cykel, med en angiven kapacitetsstrategi | Prognosträffsäkerhet följs och metoder förbättras | Planering samordnas mellan team, leverantörer och verksamheten |
| Testning | Lite testning av last eller fel | Vissa tester före stora händelser | Belastnings- och feltester är rutin för nyckeltjänster | Testresultat driver spårade förbättringar | Tester delas och samordnas mellan beroende tjänster |
| Övervakning och svar | Problem märks sent | Viss mättnad följs | Mättnad, latens och fel övervakas med larm före gränserna | Trender och tröskelvärden justeras utifrån data | Signaler och svar samordnas mellan team och leverantörer |

## Checklista

- [ ] Varje tjänst har angivna mål för tillgänglighet, prestanda och last, med deras källa.
- [ ] Vi har uppskattat vad nästa nivå av tillgänglighet skulle kosta.
- [ ] Vi vet hur tillgänglighet mäts för varje tjänst och vad som räknas som nedtid.
- [ ] Vi har valt en kapacitetsstrategi för varje nyckelresurs.
- [ ] Vi träffar verksamheten regelbundet för att få veta om förväntad efterfrågan.
- [ ] Mättnad hos nyckelresurser övervakas med larm före gränserna.
- [ ] Belastningstester har körts före den senaste kända toppen.
- [ ] Ett fel hos minst en nyckelkomponent har testats i en säker miljö.
- [ ] Ändringar som påverkar prestanda eller kapacitet flaggas i granskning.
- [ ] Prognoser jämförs med faktisk efterfrågan varje kvartal.

## AI-prompter

**Syfte: göra uppmätta data till en bild av kapacitetsutrymme.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Syfte: prissätta ett högre tillgänglighetsmål.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera ett belastningstest före en känd topp.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: utforma ett feltest.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att uppskatta de resurser en tjänst behöver över tid och välja en strategi för att lägga till dem.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): använd för att uppskatta framtida last som ett intervall utifrån tidigare data och verksamhetens planer.
- [load-testing](../../../../skills/load-testing/SKILL.md): använd för att utforma tester som tillämpar realistisk efterfrågan före en topp.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): använd för att kontrollera fart och resursanvändning på kritiska vägar som en del av leveransen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): använd för att testa om tillgängligheten håller när komponenter fallerar.

## Viktiga källor

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): tillgänglighetens ekonomi, förfrågningsbaserad mätning och felbudgeten.
- **Capacity planning** (Wikipedia): definitioner och strategierna föregripa, följa efter, matcha och justera.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): de gyllene signalerna inklusive mättnad.
- **High availability** (Wikipedia): bakgrund om att utforma system för kontinuerlig drift.

## Referenser

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
