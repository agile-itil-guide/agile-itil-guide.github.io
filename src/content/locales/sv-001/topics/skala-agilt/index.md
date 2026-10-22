# Skala agilt

**Att skala agilt innebär att samordna många team, tjänster och leverantörer utan att förlora de korta återkopplingsslingor som fick agilt att fungera, och den största risken är att lägga till processlager innan man vet vilket problem man löser.**

## Varför detta är viktigt

Ett enda agilt team på upp till tio personer kan prata med varandra varje dag. En verklig tjänst involverar vanligtvis fler: flera leveransteam, en driftgrupp, en servicedesk, säkerhet, ett nätverksteam och leverantörer. När många gruppers arbete måste passa ihop räcker inte ett teams dagliga samtal, och nya problem uppstår. Prioriteringar krockar, beroenden stoppar arbete och varje team förbättrar sin egen del medan helheten av tjänsten inte förbättras.

Flera ramverk påstår sig lösa detta. De skiljer sig i storlek, kostnad och filosofi, och de väcker starka åsikter. Vissa organisationer inför ett stort ramverk som ett program och lägger år på utrullningen. Andra skalar genom att ta bort hinder och behålla en liten uppsättning regler. Det ärliga ställningstagandet, som stöds av [Wikipedia-artikeln om agil programvaruutveckling](https://en.wikipedia.org/wiki/Agile_software_development), är att åsikterna om skalningsramverkens effektivitet går isär och att beläggen är begränsade.

För människor inom IT-tjänstehantering (ITSM) är skalning viktigt eftersom ITIL redan fungerar i stor skala. Det beskriver ett tjänstevärdessystem som länkar många arbetssätt och parter (se Ämne 2.3 — Tjänstevärdessystemet i ITIL). Frågan det här ämnet hjälper till med är hur man kombinerar de två: hur man samordnar många agila team samtidigt som man behåller de tjänstehanteringsarbetssätt som skyddar användarna, och utan att bygga ett andra lager av byråkrati ovanpå det första.

## Centrala begrepp

### Varför ett team skiljer sig från många

Wikipedia-artikeln om agil programvaruutveckling rapporterar att skalning medför utmaningar när ett projekt involverar fler än ungefär 20 utvecklare eller när team är spridda över flera orter. Strategier och ramverk finns för dessa fall, men artikeln noterar motstridiga åsikter om huruvida de passar definitionen av agilt.

Tre problem återkommer när du lägger till team:

- **Samordning av riktning:** team behöver en gemensam riktning och konsekventa prioriteringar, annars optimerar de olika saker.
- **Beroenden:** arbete i ett team väntar på ett annat, och väntetiderna multipliceras när antalet team växer.
- **Integration:** resultatet från många team måste komma samman till något som fungerar som en tjänst, och ju senare ni testar det, desto dyrare blir överraskningarna.

### Fyra välkända angreppssätt

Följande tabell sammanfattar fyra namngivna angreppssätt. Sammanfattningarna bygger på Wikipedia-artiklarna och ramverksägarnas egna sidor så som de lästs för den här guiden; kontrollera aktuella versioner hos källorna innan ni förlitar er på detaljer.

| Angreppssätt | Upphovsmän eller ägare | Huvudidé | Storlek och form |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Beskrevs först i Dean Leffingwells bok från 2007, *Scaling Software Agility*; material publiceras av Scaled Agile, Inc. | En uppsättning organisations- och arbetsflödesmönster som bygger på agilt, lean produktutveckling och systemtänkande | Konfigurationer från team- och programnivå (Agile Release Trains) upp till stora lösningar och portföljer |
| **Large-Scale Scrum (LeSS)** | Craig Larman och Bas Vodde | Skala Scrum självt: en produktägare och en produktbacklogg för en produkt, många tvärfunktionella funktionsteam, med så få extra roller och artefakter som möjligt | LeSS för ungefär två till åtta team; LeSS Huge för fler, med kravområden (Requirement Areas) på flera team vardera |
| **Disciplined Agile (DA)** | Scott Ambler och Mark Lines; förvärvades av Project Management Institute (PMI) i augusti 2019 | En verktygslåda av processmål och alternativ som hjälper ett team att välja sitt eget arbetssätt i sitt sammanhang | Hybrid och sammanhangskänslig, med flera livscykler och ett lager för företaget |
| **Scrum@Scale och andra** | Nämns tillsammans med SAFe i Wikipedia-artikeln | Ytterligare ramverk för att samordna flera Scrum-team | Se ägarnas webbplatser |

### SAFe mer i detalj

Wikipedia-artikeln säger att SAFe först beskrevs formellt 2007, med en första release 2011 och version 6.0 i mars 2023. För version 5.1 listar den fyra konfigurationer: Essential SAFe (team- och programnivå), Large Solution SAFe, Portfolio SAFe och Full SAFe. Artikeln listar också tio principer, bland annat att ta ett ekonomiskt perspektiv och tillämpa systemtänkande.

SAFe har dragit till sig öppen kritik, som artikeln redovisar. Thoughtworks hävdade att styrning uppifrån genererar slöseri, Ken Schwaber kritiserade det i ett inlägg 2013 och Jeff Gothelf hävdade 2021 att SAFe inte är agilt. Kritiker kallar det hierarkiskt och oflexibelt och säger att det kan ge en organisation sken av smidighet medan gamla processer behålls. Förespråkare värdesätter dess gemensamma ordförråd och struktur för stora organisationer. Läs båda sidor innan ni bestämmer er.

### LeSS: skala genom att ta bort

Larman och Vodde beskriver LeSS som Scrum tillämpat på många team som arbetar med en produkt. Det lägger inget lager ovanpå Scrum. Enligt ramverkets egen introduktion hanterar en produktägare en produktbacklogg och teamen producerar en släppbar produkt i en gemensam sprint. LeSS anger idén "mer med mindre": färre roller, artefakter och regler ger mer ansvarstagande team. För den underliggande metoden, se Ämne 1.4 — Leveransprognoser och planeringsmått.

### Disciplined Agile: välj ditt arbetssätt

Wikipedia-artikeln om Disciplined Agile Delivery beskriver en människa-först-verktygslåda, en hybrid som täcker hela leveranslivscykeln. Den stöder sex livscykler och beskriver 21 processmål. Angreppssättet är att hjälpa team välja arbetssätt som passar deras situation, i stället för att föreskriva ett ramverk. Artikeln bär en underhållsnotis om att den kan förlita sig för mycket på källor nära ämnet.

### Scrum of scrums och enkel samordning

Innan ni inför ett ramverk, överväg de enklaste verktygen. Ett "scrum of scrums" för samman representanter för flera team för att dela framsteg och lösa beroenden. Gemensam kvartalsplanering, en gemensam backlogg för en produkt och ett regelbundet möte mellan teamledare är andra lätta alternativ. Många organisationer skalar tillräckligt bra med dessa.

### Skalning i en tjänsteorganisation

I en IT-organisation kan team organiseras på flera sätt, och valet påverkar hur väl agilt skalar:

| Organisation | Hur teamen organiseras | Effekt på skalning |
|---|---|---|
| **Efter komponent** | Ett team per teknisk nivå eller system | Funktioner kräver flera team, så beroendena blir många |
| **Efter funktion eller produkt** | Tvärfunktionella team som äger en kundvänd del | Färre beroenden; kräver gemensamma standarder för plattformar |
| **Efter tjänst** | Ett team per tjänst, som äger sin byggnation och drift | Nära tjänstehantering; kräver ett sätt att hantera gemensamma plattformar |
| **Plattform plus ström** | Team som tillhandahåller en plattform och team som använder den | Kräver tydliga serviceavtal mellan dem |

Inget mönster är bäst för alla. Att gå från komponentteam till team organiserade kring produkter eller tjänster är ett vanligt steg, och det är svårt att genomföra eftersom det ändrar vem som rapporterar till vem.

### Vad forskning och kritik säger

Artikeln om agil programvaruutveckling anger att empiriska belägg för agila metoder i allmänhet är begränsade och inte entydiga. För skalningsramverk erbjuder de konsulterade källorna mestadels åsikter och leverantörsmaterial. Behandla alla påståenden om uppmätta förbättringar med försiktighet, be om beläggen bakom dem och pröva varje ramverk på en liten del av er organisation först.

## Bästa praxis

1. **Börja från problemet, inte ramverket.** Benämn vad som går fel: långsamma beroenden, krockande prioriteringar, sen integration. Välj det lättaste angreppssättet som åtgärdar det och inför mer bara om det inte räcker.
2. **Pröva den enklaste samordningen först.** Gemensam planering, ett scrum of scrums och en gemensam backlogg för varje produkt löser många problem till låg kostnad. Lägg till struktur först när dessa slutar fungera.
3. **Organisera team kring värde.** Föredra team som äger en produkt eller tjänst från början till slut, med färdigheterna att bygga och driva den. Det minskar överlämningar och beroenden och passar med hur ITIL ser på tjänster (se Ämne 2.6 — Tjänstevärdekedjan).
4. **Ha en ordnad lista per produkt.** En produktbacklogg med en ansvarig ägare, som LeSS rekommenderar, tar bort mycket av konflikten mellan team. Där detta inte är möjligt, gör prioriteringsordningen mellan team synlig.
5. **Planera tillsammans med regelbunden rytm.** För samman team och nyckelintressenter var några månader för att samordna mål, beroenden och risker. Håll mötet kort och evidensbaserat, och undvik att göra det till en förhandling om detaljerade planer.
6. **Integrera kontinuerligt.** Testa alla teams resultat tillsammans så ofta som möjligt, helst varje dag. Sen integration är den vanligaste orsaken till att stora program överraskar sina sponsorer (se Ämne 1.6 — Extreme Programming).
7. **Gör beroenden synliga och minska dem.** Lista vilka team som väntar på vilka och räkna väntetiderna. Minska dem genom att ändra teamgränser, dela färdigheter eller bygga gemensamma plattformar med tydliga gränssnitt.
8. **Definiera serviceavtal mellan team.** Där ett team tillhandahåller en plattform eller tjänst åt ett annat, kom överens om vad som förväntas: tillgänglighet, svarstid, supporttider och hur man ber om ändringar (se Ämne 3.7 — Hantering av servicenivåer).
9. **Skräddarsy och skriv ned vad ni ändrade.** Vilket ramverk ni än inför, registrera vilka delar ni följer, vilka ni utelämnar och varför. Ärliga etiketter förhindrar att en hybrid bedöms mot ett ramverk den aldrig avsåg att följa.
10. **Pilota före utrullning.** Pröva angreppssättet med några team, mät de resultat ni bryr er om och lär er. Utvidga det först när piloten visar en nytta ni kan beskriva.
11. **Håll styrningen lätt och baserad på resultat.** Be om belägg som leveransflöde, incidenttrender och användaråsikter, och inte om statusrapporter som varje team skriver i olika format (se Ämne 5.7 — Styrning, risk och efterlevnad).
12. **Se över strukturen regelbundet.** Håll en genomgång en eller två gånger om året för att fråga om teamgränser, roller och ceremonier fortfarande tjänar arbetet. Strukturer som var rätt för 30 personer kan vara fel för 300.

## Frågor att diskutera med teamet

**Vilket problem förväntar vi oss att skalning ska lösa, och hur vet vi att det har lösts?**

Be människor nämna smärtan: sen integration, krockande prioriteringar, långa väntetider på andra team. Skriv ned var och en med ett färskt exempel. Ett ramverk som väljs utan angivet problem är en lösning som letar efter ett problem. Facilitatorn kan fråga vad den enklaste tänkbara åtgärden vore för varje problem, och vilka belägg som skulle visa att det fungerade.

**Vilka andra team väntar vi mest på, och hur länge väntar vi?**

Kartlägg beroendena på en vägg och lägg till den typiska väntetiden för vart och ett. Team som trott sig vara oberoende blir ofta förvånade. Fråga vilka beroenden som är verkliga och vilka som kommer från historiska teamgränser. Välj ett beroende att ta bort, antingen genom att ändra hur team är organiserade eller genom att dela färdigheter.

**Vem avgör arbetets ordning över våra team, och hur får vi veta det?**

Följ en nyligen inträffad prioritetskonflikt från början till lösning. Leta efter eskaleringar, möten och informella överenskommelser. Fråga om en enda ansvarig person, som i LeSS, kunde fatta beslutet. Överväg vad som skulle gå förlorat eller vinnas. Ett bra utfall är en tydlig väg för att avgöra konflikter, även om det inte är en ny roll.

**Vad skulle ett ramverk som SAFe, LeSS eller Disciplined Agile ge oss som vi inte kan få billigare?**

Be någon som har läst om vart och ett förklara det i några meningar, och be om de starkaste invändningarna. Wikipedia-artikeln om SAFe listar flera, och ramverksägarnas webbplatser listar fördelar. En facilitator bör hålla diskussionen praktisk: vad skulle vi göra på måndag om vi införde det, och vem skulle behöva ändra vad? Besluta vad som ska prövas, om något, och vad som ska behållas som det är.

**Hur prövar vi att alla våra teams arbete passar ihop, och hur ofta?**

Räkna dagarna mellan en ändring av ett team och dess första test tillsammans med allas andra ändringar. Längre gap betyder större överraskningar. Fråga vad som hindrar daglig integration, som miljöer, testdata eller ägarskap. Välj ett hinder att ta bort.

**Vilka av våra kontroller gäller alla team på samma sätt, och vilka bör bero på risken?**

Lista standardkontroller, som granskningar, godkännanden och rapportering. Fråga vilka av dem som justeras för lågriskarbete. Enhetliga kontroller är lätta att administrera och långsamma för alla. Kontroller som beror på risk behöver tydliga kriterier. Välj en kontroll att se över.

## I praktiken: ett agilt ITIL-exempel

En stor detaljhandelsbanks IT-grupp har 14 leveransteam och en central driftgrupp. Varje team har infört Scrum, men bankens kunder ser lite förbättring. Releaser för mobilbanksappen kräver ändringar från fem team, och varje release samordnas av ett programkontor som följer beroenden i ett kalkylblad. En nyligen genomförd release försenades tre veckor eftersom två team i sista minuten upptäckte att deras ändringar var oförenliga.

En arkitekt och driftchefen gör en studie av sex månaders releaser. De finner att de flesta förseningar kommer från sen integration och från oklara prioriteringar mellan de team som delar en backlogg med mobilfunktioner. De överväger att införa ett stort ramverk, men beslutar att börja smått. De skapar en enda backlogg för mobilappen med en ansvarig produktägare och slår ihop de fem teamens planering till en gemensam session var sjätte vecka. De sätter upp en gemensam pipeline som bygger och testar alla teams ändringar tillsammans varje natt, och de lägger till driftgruppen i den gemensamma planeringssessionen.

Efter två kvartal minskar antalet oförenligheter i sista minuten och releaser kommer varannan vecka. Vissa problem kvarstår. Produktägaren har svårt med mängden förfrågningar och ägnar det mesta av sin tid åt skiljedom, och två team är fortfarande beroende av ett centralt databasteam med lång kö. Banken kommer överens om att göra databasteamets kö synlig i den gemensamma planeringen och att pröva en självbetjäningsväg för vanliga databasändringar. Den beslutar också att skjuta upp varje ramverksbeslut tills ett andra produktområde har prövat samma angreppssätt.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam bär det mesta av skalningens börda: gemensam planering, gemensamma pipelines och avtal med grannar. Arbeta för att minska beroenden vid källan, genom att lära sig färdigheterna i nästa team eller genom att bygga gränssnitt som inte kräver samordning. Delta i planeringsmöten med verklig information om framsteg och risk.

### Tjänste- och driftteam

Driftpersonal bör vara med i planeringen från början, eftersom många beroenden mellan team är operativa: miljöer, åtkomst, övervakning och support. Ta med tjänstedata till planeringssessionen och kom överens om servicenivåer med de team som är beroende av er. Argumentera för plattformar som ger leveransteamen självbetjäning.

### Ledning och styrning

Ledare formar den struktur som avgör hur väl skalning fungerar. Motstå frestelsen att köpa ett ramverk som ersättning för att bestämma vad organisationen vill vara. Be om en tydlig problembeskrivning, en pilot och belägg. Håll rapporteringen lätt och acceptera att strukturförändringar kan vara obekväma för chefer.

### Kunder och användare

Kunder bör se en sammanhängande tjänst och inte skarvarna mellan team. Räkna med en kontaktpunkt för en produkt och en tydlig väg för förfrågningar. Berätta för produktägaren vad som är viktigast och räkna med att svaret omfattar avvägningar mellan konkurrerande krav.

## Vanliga orsaker till misslyckande

- **Att köpa ett ramverk för att slippa ett beslut.** En organisation inför ett ramverk i hopp om att det ska lösa oenighet om prioriteringar. Bestäm i stället vem som har befogenhet över prioriteringar och se sedan vilket ramverk, om något, som hjälper.
- **Att kopiera ett diagram.** Roller och möten läggs till utan att skälen förstås. Inför i stället bara de element som åtgärdar ett namngivet problem.
- **Att lägga till lager.** Samordnare, programkontor och kommittéer ökar medan team förlorar självständighet. Ta i stället bort beroenden så att det finns mindre att samordna.
- **Sen integration.** Team integrerar i slutet av en lång cykel. Integrera och testa i stället alla ändringar tillsammans varje dag.
- **Enhetliga kontroller.** Varje team följer samma tunga process oavsett risk. Basera i stället kontroller på risk och gör lågriskvägar snabba.
- **Att ignorera driften.** Planeringen omfattar utvecklare och produktchefer men ingen driftpersonal. Inkludera i stället drift i gemensam planering och dela tjänstedata.
- **Att bedöma en hybrid mot ramverket.** Kritiker säger att det inte är ramverket, och förespråkare säger att det är det. Ge i stället ert angreppssätt ett eget namn och beskriv det.
- **Att aldrig se över strukturen.** Gränser dragna vid 30 personer består vid 300. Se i stället över team- och rollstruktur minst varje år.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Samordning och prioriteringar | Varje team sätter sina egna prioriteringar | Vissa team delar en backlogg eller möts för att samordna | Produkter har en ordnad backlogg och gemensam planering med regelbunden rytm | Samordning kontrolleras mot resultat och beroenden mäts | Prioriteringar justeras mellan team, kunder och leverantörer kontinuerligt |
| Beroenden | Väntan på andra team är ohanterad | Vissa team listar sina beroenden | Beroenden är synliga och avtal finns mellan team | Väntetider för beroenden mäts och minskas | Teamgränser omformas utifrån belägg för att ta bort beroenden |
| Integration | Integration sker i slutet | Vissa team integrerar oftare | Gemensamma pipelines integrerar och testar allas ändringar ofta | Integrationsfel och deras orsaker följs och åtgärdas | Integrationsmiljöer och tester delas och förbättras mellan team |
| Styrning och struktur | Kontroller är enhetliga och långsamma | Vissa lågriskvägar finns | Kontroller varierar efter risk med tydliga kriterier | Resultat och kontrollernas effektivitet granskas | Struktur och kontroller granskas och justeras rutinmässigt i organisationen |

## Checklista

- [ ] Vi kan ange i en mening det problem skalning ska lösa.
- [ ] Vi har kartlagt beroendena mellan våra team och känner till den typiska väntan för varje.
- [ ] Varje produkt har en ordnad backlogg med en ansvarig ägare.
- [ ] Team och nyckelintressenter planerar tillsammans med regelbunden rytm.
- [ ] Alla teams resultat byggs och testas tillsammans minst dagligen.
- [ ] Team som tillhandahåller plattformar eller tjänster åt andra har skriftliga serviceavtal.
- [ ] Driftpersonal deltar i planering över team.
- [ ] Kontroller varierar med risk, och lågriskvägen är snabb.
- [ ] Varje ramverk vi inför har först pilotats i liten skala.
- [ ] Vi har skrivit ned vilka delar av ett ramverk vi följer och vilka vi inte följer.
- [ ] Strukturen av team och roller ses över minst en gång per år.

## AI-prompter

**Syfte: kartlägga beroenden mellan team utifrån en beskrivning av ett nyligt arbete.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Syfte: jämföra skalningsalternativ mot ett angivet problem.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: planera en gemensam planeringssession för flera team.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva ett avtal mellan ett plattformsteam och de team som använder det.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): använd för att förstå SAFe:s roller, möten och nivåer och bedöma vilka delar ni behöver.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): använd för att tillämpa Scrum på flera team som arbetar med en produkt.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): använd för att välja arbetssätt efter processmål för ert sammanhang.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): använd som ett lätt sätt att samordna några få team innan ni inför ett ramverk.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): använd för att avgöra hur ett antal produkter och initiativ väljs och finansieras.

## Viktiga källor

- **Scaled agile framework** (Wikipedia): en översikt över SAFe:s historia, konfigurationer och kritik med källhänvisningar.
- **Introduction to LeSS** (less.works): upphovsmännens korta beskrivning av Large-Scale Scrum och dess idé om "mer med mindre".
- **Disciplined agile delivery** (Wikipedia): en sammanfattning av verktygslådan, dess livscykler och dess mål.
- **Agile software development** (Wikipedia): avsnittet om storskaligt, offshore- och distribuerat arbete och diskussionen om motstridiga åsikter om skalningsramverk.

## Referenser

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
