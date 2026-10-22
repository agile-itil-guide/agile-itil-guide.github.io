# Agil programvaruutveckling

**Agil programvaruutveckling är en familj av metoder för kontinuerlig programvaruleverans som levererar i små steg och lär av återkoppling, och de arbetssätt den har gett upphov till, som automatiserad testning och kontinuerlig integration, är den praktiska grunden för att driva föränderliga tjänster på ett säkert sätt.**

## Varför detta är viktigt

De flesta team som driver en IT-tjänst bygger och ändrar den också. Sättet programvaran byggs på avgör hur ofta tjänsten förändras, hur riskabel varje ändring är och hur mycket de som har jour kan lita på det de får. Ett team som bygger i stora satser och sällan överlämnar ger driften några få stora, skrämmande releaser. Ett team som bygger i små steg, med tester och snabb återkoppling, kan ge dem många små, begripliga.

Agil programvaruutveckling är den mest kända uppsättningen idéer för det andra arbetssättet. Den är också utbrett missförstådd. Vissa använder "agil" för att betyda "inga planer och inga dokument", och andra använder det om varje process med ett dagligt möte. Det här ämnet ger en tydligare bild: var agila metoder kommer ifrån, vad de har gemensamt, vad de inte påstår och vilka arbetssätt som betyder mest för ett team som måste hålla en tjänst igång.

Beläggen behöver läsas varsamt. [Wikipedia-artikeln om agil programvaruutveckling](https://en.wikipedia.org/wiki/Agile_software_development) säger att anekdotiska belägg för agilt är starka men att empiriska belägg är "begränsade och inte entydiga", och den pekar på undersökningar, som den årliga State of Agile, som rapporterar fördelar men bygger på självrapporterade åsikter. Betrakta agila metoder som lovande angreppssätt att pröva i er egen miljö.

## Centrala begrepp

### Vad termen omfattar

"Agil programvaruutveckling" är ett paraplybegrepp. Wikipedia-artikeln beskriver det som angreppssätt som växt fram ur de värderingar och principer som 17 yrkesverksamma kom överens om 2001 (se Ämne 1.1 — Det agila manifestet och Ämne 1.2 — Agila principer). Ett versalt "Agile" används ofta för de arbetssätt som växte ur det synsättet, och ett gement "agil" för förmågan att anpassa sig. Skillnaden är inte strikt, och du kommer att höra båda.

Agila metoder strävar efter kontinuerlig programvaruleverans. De bygger på ständigt samarbete mellan intressenter och utvecklare, organiserar projekt kring motiverade individer och eftersträvar ständig förbättring genom återkoppling, med uppmärksamhet på kvalitet. De skiljer sig i vad de betonar. Vissa, som Extreme Programming, fokuserar på ingenjörsmässiga arbetssätt, och andra, som Scrum och Kanban, fokuserar på hur arbetet styrs.

### En kort historik

Wikipedia-artikeln spårar iterativ och inkrementell utveckling tillbaka till 1957, med evolutionär projektledning och adaptiv programvaruutveckling som dök upp i början av 1970-talet. På 1990-talet dök en grupp lätta metoder upp som reaktion mot tungrodda, plandrivna processer, ofta kallade [vattenfallsmodellen](https://en.wikipedia.org/wiki/Waterfall_model). Artikeln listar snabb applikationsutveckling (rapid application development, 1991), den enhetliga processen och dynamic systems development method, DSDM (1994), Scrum (1995), Crystal Clear och Extreme Programming (1996) samt funktionsdriven utveckling (feature-driven development, 1997).

I februari 2001 möttes sjutton yrkesverksamma i Snowbird, Utah, och skrev manifestet. Senare uttalanden byggde vidare på det: PM Declaration of Interdependence 2005, Software Craftsmanship Manifesto 2009 och Agile Alliances *Guide to Agile Practices* 2011, som 2016 döptes om till *Agile Glossary*.

### Adaptiva och prediktiva angreppssätt

Artikeln beskriver ett kontinuum mellan prediktiva och adaptiva angreppssätt. En prediktiv metod planerar det mesta av arbetet i detalj innan det börjar, och fungerar väl när kraven är stabila och väl förstådda. En adaptiv metod förväntar sig förändring och planerar på korta horisonter. Boehm och Turner, som artikeln hänvisar till, hävdar att varje sida har sin egen "hemmaplan", vilket betyder att ingen är rätt överallt.

Det här är viktigt för ett tjänsteteam eftersom dess arbete är blandat. Att byta ut ett datacenters nätverk ligger närmare prediktivt arbete. Att förbättra en kundvänd app ligger närmare adaptivt arbete. Välj angreppssätt för varje slags arbete, inte en gång för hela organisationen.

### Vanliga metoder

Artikeln listar många metoder. De du mest sannolikt möter:

| Metod | Huvudsaklig betoning | Behandlas i |
|---|---|---|
| Scrum | Definierade roller, regelbundna möten och en fast takt | Ämne 1.4 — Leveransprognoser och planeringsmått |
| Kanban | Att visualisera arbete och begränsa hur mycket som pågår | Ämne 1.5 — Kanban |
| Extreme Programming (XP) | Ingenjörsmässiga arbetssätt som parprogrammering och testdriven utveckling | Ämne 1.6 — Extreme Programming |
| Lean programvaruutveckling | Att tillämpa lean-idéer, som att ta bort slöseri, på programvara | Ämne 1.7 — Lean programvaruutveckling |
| Funktionsdriven utveckling, DSDM, Crystal och adaptiv programvaruutveckling | Andra lätta metoder för kontinuerlig programvaruleverans med egna roller och arbetssätt | Det här ämnet |
| Scrumban | En blandning av Scrum-möten och Kanban-flöde | Ämne 1.4 — Leveransprognoser och planeringsmått och Ämne 1.5 — Kanban |

Ingen metod är "den" agila metoden. Artikeln citerar Ken Schwabers syn att team hamnar i trubbel när de jagar en perfekt metodik fast det är själva företaget som behöver förändras, och Bas Vodde som föreslår att Scrum ger grunderna som team utvidgar lokalt.

### Vanliga arbetssätt

Artikeln listar arbetssätt som många agila team använder. Ett urval, med vad vart och ett är till för:

- **Användarberättelser och backloggar:** beskriv arbete ur användarens synvinkel och för en prioriterad lista över vad som ska göras härnäst.
- **Dagligt stand-up:** ett kort dagligt möte, ofta runt 15 minuter, för att dela framsteg och hinder.
- **Testdriven utveckling (TDD) och acceptanstestdriven utveckling (ATDD):** skriv testerna först, så att "klart" är definierat innan arbetet börjar.
- **Kontinuerlig integration (CI):** slå ihop ändringar ofta och bygg och testa automatiskt. Artikeln noterar att Grady Booch först föreslog termen 1991.
- **Parprogrammering och refaktorering:** två personer delar arbete för att förbättra kvaliteten och sprida kunskap, och koden förbättras ständigt utan att ändra vad den gör.
- **Retrospektiv:** teamet reflekterar med jämna mellanrum över hur det kan förbättras.

För ett tjänsteteam förtjänar tre av dessa särskild uppmärksamhet. Automatiserade tester och kontinuerlig integration gör täta ändringar säkra. Retrospektiv ger en stående plats att förbättra hur teamet arbetar. Backloggar ger en enda ordnad lista där tjänsteförbättringar konkurrerar rättvist med nya funktioner.

### Erfarenhet, mätning och fallgropar

Artikeln rapporterar att undersökningar, bland dem en undersökning från Shine Technologies 2002–2003 och State of Agile-undersökningen sedan 2006, finner upplevda vinster i kvalitet, produktivitet och verksamhetens nöjdhet. Den noterar också att en undersökning från VersionOne fann otillräcklig utbildning som den mest nämnda orsaken till misslyckade införanden, och listar fallgropar som att fylla rollen som produktägare med en medlem av utvecklingsteamet och brist på stöd från sponsor.

Att mäta "hur agilt" ett team är har gett flera självskattningar, som Nokia-testet, och ett index som bedömer projekt efter varaktighet, risk, nyhet, arbetsinsats och interaktion. Var försiktig med varje sådan poäng. Ett tal är en samtalsstartare, och ett team som optimerar för poängen kan tappa poängen med arbetet.

### Storskaligt, distribuerat och reglerat arbete

Artikeln säger att skalning bortom ungefär 20 utvecklare, eller över flera orter, medför utmaningar, och att ett antal ramverk har föreslagits, även om åsikterna går isär om hur väl de fungerar (se Ämne 1.8 — Skala agilt). Den rapporterar också att reglerade områden som medicintekniska produkter, läkemedel, finans, kärnkraft, fordon och flyg först ansågs olämpliga för agilt, och att anpassningar nu finns. De farhågor den listar är kvalitetssäkring, säkerhet och skydd, spårbarhet samt verifiering och validering.

Det är precis de farhågor som tjänstehantering har. När en tillsynsmyndighet eller en revisor ber om belägg kan ett agilt team ta fram dem ur de verktyg det redan använder, som versionshanteringens historik, automatiserade testresultat och ändringsposter (se Ämne 5.7 — Styrning, risk och efterlevnad).

### Kritik som är värd att känna till

Steven Rakitin kallade i ett brev till *IEEE Computer* 2001 agil "ännu ett försök att undergräva disciplinen programvaruteknik" och läste manifestets preferens för fungerande programvara som en licens att hoppa över dokumentation. Förespråkare svarar att dokumentation bör vara "precis tillräckligt bra", med Scott Amblers formulering. Tjänsteteam känner till båda sidor: för lite dokumentation bromsar överlämningar och incidenthantering, och för mycket blir inaktuell.

## Bästa praxis

1. **Anpassa metoden till slaget av arbete.** Använd kontinuerlig programvaruleverans och tät återkoppling där kraven ändras, och använd mer planering i förväg där de är fasta och kostnaden för fel är hög. Bestäm detta för varje slags arbete och se över det när omständigheterna förändras.
2. **Börja med den minsta användbara satsen.** Dela upp arbetet i delar som kan byggas, testas och släppas på några dagar. Små satser ger snabbare återkoppling och gör en misslyckad ändring lättare att förstå och återställa.
3. **Automatisera testning innan ni ökar releasefarten.** Täta releaser utan automatiserade tester flyttar risk till era användare. Bygg en svit som körs vid varje ändring och fallerar högljutt, och behandla ett trasigt bygge som teamets första prioritet.
4. **Integrera kontinuerligt.** Slå ihop arbete till en gemensam gren ofta och bygg det automatiskt. Långlivade grenar döljer konflikter tills de är dyra att åtgärda.
5. **Låt "klart" omfatta drift.** En berättelse är inte färdig förrän den kan övervakas, supportas och återställas. Lägg till dessa kontroller i er definition av klart, och be driftpersonal hjälpa till att skriva den (se Ämne 3.5 — Release- och driftsättningshantering).
6. **Ha en ordnad backlogg per team.** Lägg funktioner, fel och tjänsteförbättringar i samma prioriterade lista så att de konkurrerar öppet. Dolda sidoköer är där driftarbete tyst svälter.
7. **Skriv precis tillräckligt med dokumentation.** Behåll dokument som människor använder, som runbooks, tjänstebeskrivningar och arkitekturanteckningar, och ge var och en en ägare och ett granskningsdatum. Ta bort resten. Det svarar på Rakitins oro utan att återgå till tunga dokument.
8. **Håll regelbundna retrospektiv och agera på dem.** Välj en förändring från varje, med en ägare och ett datum. Ett retrospektiv som bara ger diskussion blir en ritual.
9. **Investera i utbildning och sponsorstöd.** Undersökningsbeläggen i Wikipedia-artikeln pekar på utbildning och sponsorstöd som vanliga svaga punkter. Planera för båda innan ni ber team ändra hur de arbetar.
10. **Skräddarsy, och säg varför.** Anpassa en metod till ert sammanhang och skriv ned vad ni ändrade och skälet. Att ändra ett arbetssätt för att det är obekvämt, utan skäl, är hur team glider bort från fördelarna.
11. **Mät resultat, inte agilitetspoäng.** Följ saker som ledtid för en ändring, hur ofta releaser orsakar incidenter och hur snabbt tjänsten återställs (se Ämne 5.6 — Mått och mätning). Använd självskattningar bara som underlag för diskussion.
12. **För tillbaka tjänstedata till utvecklingen.** Mata in återkommande incidenter och problemposter i backloggen, så att utvecklingen lär av driften (se Ämne 3.3 — Problemhantering).

## Frågor att diskutera med teamet

**Vilka agila arbetssätt använder vi faktiskt, och vilka har vi bara namn på?**

Lista de arbetssätt ni tror att ni följer: stand-ups, retrospektiv, backloggar, automatiserade tester. Fråga för vart och ett när det senast ändrade ett beslut. Arbetssätt som ingen kan koppla till ett beslut är ritualer. En facilitator bör be om belägg utan att antyda skuld. Fortsätt med att välja en ritual att förbättra eller släppa.

**För vilket av vårt arbete vore ett mer prediktivt angreppssätt klokare, och varför?**

Wikipedia-artikeln rapporterar att varje angreppssätt har en "hemmaplan". Be människor sortera nyligt arbete i stabilt och snabbt föränderligt. Typiskt stabilt arbete omfattar hårdvaruuppdateringar, flytt av datacenter och större kontraktsförnyelser. Fråga vad en mer noggrann plan hade gett i varje fall. Målet är att undvika att tillämpa en stil på allt.

**Hur snabbt får vi veta att något vi byggt inte fungerar, och vad skulle göra det snabbare?**

Följ vägen från att skriva en ändring till att lära sig hur den beter sig i bruk. Räkna stegen och väntetiderna: granskning, bygge, test, release, övervakning. Fråga vilket steg teamet litar minst på. Ofta är svaret ett manuellt test eller ett releasesteg som beror på en enda person. Välj ett steg att förkorta och kom överens om hur ni ska veta att det blev kortare.

**Vad skulle en revisor eller tillsynsmyndighet behöva se från oss, och producerar vårt arbetssätt redan det?**

Be någon med revisions- eller säkerhetserfarenhet delta. Samla de belägg som era verktyg redan producerar: ändringshistorik, testresultat, godkännanden. Lista sedan vad som saknas. Team är ofta förvånade över att täta små ändringar med automatiska kontroller ger bättre belägg än sällsynta stora. Anteckna gapen till styrningsdiskussionen i Ämne 5.7 — Styrning, risk och efterlevnad.

**Var hjälper vår dokumentation människor, och var finns den bara för att vi blivit tillsagda att skriva den?**

Fråga människor vilka dokument de använt den senaste månaden. En runbook som används och hålls aktuell räknas. Ett designdokument som ingen läst sedan dagen det godkändes gör det inte. Låt teamet bestämma vilka som ska behållas, slås ihop och tas bort, och utse ägare. Det är ett tryggt sätt att tillämpa idén om "precis tillräckligt bra".

**Vad ändrade vi senast i hur vi arbetar på grund av vad vi lärt oss, och vad är nästa förändring?**

Be om den senaste konkreta förändringen från ett retrospektiv och om den fungerade. Om ingen kan nämna någon gör retrospektivet inte sitt jobb. Undersök varför: åtgärderna kan vara för stora, sakna ägare eller konkurrera med leveransarbete. Avsluta med att välja en liten förändring att göra de närmaste två veckorna.

## I praktiken: ett agilt ITIL-exempel

En medelstor nätbutik har ett utvecklingsteam på tio personer som bygger orderhanteringssystemet, och ett separat driftteam på sex som driver det. Utvecklingsteamet har valt att använda sprintar och släppa varannan vecka. Driftteamet får varje release med en kort notering och en begäran att driftsätta den inom ett fönster på torsdagskvällen. Driftpersonalen klagar på att de får veta vad som ändrats först när något går sönder, och utvecklarna klagar på att ett torsdagsfönster är för sent för att rätta något som hittats i testet.

Vid ett gemensamt retrospektiv kartlägger de två teamen en nyligen genomförd release steg för steg. De finner att de enda automatiserade testerna täcker ungefär hälften av orderflödet, att ingen på driftsidan har sett releasen före torsdagsnoteringen och att återställningssteget aldrig har prövats. De kommer överens om tre förändringar. Utvecklingsteamet lägger till en övervakningskontroll och ett återställningstest i sin definition av klart. En driftingenjör deltar i varje sprintgenomgång. Releaser som klarar hela den automatiserade sviten driftsätts så snart de är klara, inte bara på torsdagar.

Under de följande två månaderna driftsätts två av de fyra nästa releaserna mitt i veckan. Driftingenjören fångar upp ett saknat loggmeddelande vid en sprintgenomgång, vilket sparar en timmes letande vid en senare incident. Inte allt förbättras: den automatiserade sviten hoppar fortfarande över återbetalningsflödet, och ett återbetalningsfel når kunderna. Teamen lägger till återbetalningstester i nästa sprint och kommer överens om att gå igenom luckorna i täckningen varje månad. Driftingenjören säger också att deltagande i sprintgenomgången tar tid som jourschemat inte medger, så driftchefen flyttar en del av ingenjörens övriga uppgifter.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam äger de arbetssätt som gör förändring säker: tester, kontinuerlig integration, små satser och en tydlig definition av klart. Behandla driften som en kund till ert arbete. Fråga vad de behöver för att driva en release och ta in det i backloggen som en funktion.

### Tjänste- och driftteam

Driftpersonal kan använda agila arbetssätt på sitt eget arbete: en synlig backlogg med förbättringar, korta återkopplingscykler kring incidenter och regelbundna retrospektiv. Be att få delta i planerings- och genomgångsmöten tidigt. Ta med kunskap om hur tjänster fallerar, vilket är det mest användbara ett leveransteam kan få.

### Ledning och styrning

Ledare avgör om team får tid och utbildning att arbeta på det här sättet. Undersökningsbeläggen i Wikipedia-artikeln pekar på utbildning och sponsorstöd som vanliga svaga punkter. Fråga vilka kontroller ni behöver och hur ett team kan uppfylla dem med sina egna verktyg, i stället för att lägga till en parallell process.

### Kunder och användare

Kunder ser nyttan av agila metoder som synlig förbättring i jämn takt, inte som en ceremoni. Räkna med att regelbundet granska fungerande ändringar och att bli tillfrågad om vad som är viktigast. I gengäld behöver teamet snabba svar och en vilja att acceptera små, ofullkomliga releaser som förbättras över tid.

## Vanliga orsaker till misslyckande

- **Att införa ritualer utan ingenjörsmässiga arbetssätt.** Dagliga möten och tavlor dyker upp, men det finns inga automatiserade tester, så releaser förblir riskabla. Investera i stället i testning, integration och releaseautomatisering vid sidan av ceremonierna.
- **Att kalla en ändringsprocess "agil" utan att ändra beslutsrätten.** Team väntar fortfarande på avlägsna godkännanden. Flytta i stället beslut till dem med kunskapen och sätt tydliga gränser.
- **Att använda agilt som ursäkt för ingen dokumentation.** Överlämningar och incidenter lider. Behåll i stället de korta dokument människor använder och ge var och en en ägare.
- **Att hoppa över utbildning.** VersionOne-fyndet i Wikipedia-artikeln nämner otillräcklig utbildning som den mest nämnda orsaken till misslyckade införanden. Utbilda i stället team och ledare före och under förändringen.
- **Att sätta en medlem av utvecklingsteamet i rollen som produktägare.** Artikeln listar detta som en fallgrop. Välj i stället någon som representerar verksamheten och har tid att besluta.
- **Att skala genom att kopiera ett ramverk.** Ett stort ramverk som installeras utan förståelse lägger till process och bromsar team. Börja i stället med det problem ni har och inför bara det som hjälper (se Ämne 1.8 — Skala agilt).
- **Att jaga en agilitetspoäng.** Team optimerar för måttet. Följ i stället resultat som ledtid, releasefel och tid till återställd tjänst.
- **Att hålla utveckling och drift isär.** Leveransteamet levererar och driftteamet ärver. För i stället samman dem i gemensam planering, genomgångar och incidentlärande (se Ämne 5.2 — DevOps).

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Kontinuerlig programvaruleverans | Arbete levereras i stora releaser | Vissa team levererar i korta cykler | Team delar en gemensam leveranstakt och en definition av klart | Ledtid och releaseutfall mäts och granskas | Releaserytmer samordnas mellan team och leverantörer |
| Ingenjörsmässiga arbetssätt | Testning och byggen är mestadels manuella | Vissa team har automatiserade tester och byggen | En gemensam pipeline kör tester vid varje ändring | Testtäckning och felfrekvens följs och luckor åtgärdas | Pipelines och arbetssätt förbättras mellan team utifrån gemensamma belägg |
| Backlogg och prioritering | Förfrågningar kommer via e-post och ad hoc | Team för egna backloggar | Varje team har en ordnad backlogg som omfattar tjänstearbete | Backloggens flöde och ålder granskas med intressenter | Prioriteringar samordnas mellan team, kunder och leverantörer |
| Lärande och anpassning | Genomgångar följer bara på större fel | Vissa team håller retrospektiv | Alla team håller regelbundna retrospektiv och noterar åtgärder | Åtgärder följs till slut och effekterna kontrolleras | Lärdomar förs mellan team och in i policy utan central styrning |

## Checklista

- [ ] Teamet kan säga vilken agil metod eller vilka arbetssätt det använder och varför det valde dem.
- [ ] Arbetet är sorterat i prediktiva och adaptiva slag, med ett angivet angreppssätt för vart och ett.
- [ ] Automatiserade tester körs vid varje ändring, och ett fallerande bygge stoppar linjen.
- [ ] Vår definition av klart omfattar övervakning, supportanteckningar och en testad återställning.
- [ ] Varje team har en ordnad backlogg som omfattar tjänsteförbättringar och fel.
- [ ] Runbooks och tjänstebeskrivningar har ägare och granskningsdatum.
- [ ] Retrospektiv hålls med regelbunden rytm och vart och ett avslutas med en åtgärd med ägare.
- [ ] Team och ledare har fått utbildning i det arbetssätt vi ber dem om.
- [ ] Vi vet vilka belägg revisorer behöver och hur våra verktyg ger dem.
- [ ] Resultatmått, som ledtid och tid till återställd tjänst, granskas regelbundet.

## AI-prompter

**Syfte: kartlägga era nuvarande arbetssätt mot vanliga agila arbetssätt och hitta luckor.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Syfte: utarbeta en definition av klart som omfattar drift.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda belägg för en revisor ur era agila verktyg.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Syfte: planera ett retrospektiv om hur teamet inför agila arbetssätt.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [scrum](../../../../skills/scrum/SKILL.md): använd för att sätta upp eller granska ett Scrum-teams roller, möten och artefakter.
- [kanban](../../../../skills/kanban/SKILL.md): använd för att utforma en visuell tavla med gränser för pågående arbete för ett tjänste- eller driftteam.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): använd för att granska eller införa ingenjörsmässiga arbetssätt som testdriven utveckling och kontinuerlig integration.
- [user-story](../../../../skills/user-story/SKILL.md): använd för att skriva användarberättelser med acceptanskriterier som omfattar driftbehov.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla ett retrospektiv som slutar med en förändring med ägare.

## Viktiga källor

- **Manifesto for Agile Software Development** och **Principles behind the Agile Manifesto** (agilemanifesto.org): det primära uttalandet om värderingar och principer.
- **Agile software development** (Wikipedia): en bred översikt över historia, metoder, arbetssätt, införande och kritik med många refererade källor.
- **Agile Glossary** (Agile Alliance): definitioner av agila arbetssätt och termer, underhållna av den gemenskap som växte fram ur manifestet.

## Referenser

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
