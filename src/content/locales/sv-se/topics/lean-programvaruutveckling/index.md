# Lean programvaruutveckling

**Lean programvaruutveckling tillämpar lean-idéerna att eliminera slöseri, lära snabbt och optimera hela systemet på programvaruarbete, och ger tjänsteteam ett gemensamt sätt att se var tid och ansträngning läcker ur flödet från förfrågan till värde.**

## Varför detta är viktigt

Agila metoder säger att man ska leverera i små steg och lära sig. Lean ställer en vassare fråga: vart tar tiden vägen? I de flesta tjänsteorganisationer är arbetstiden på en förfrågan en liten del av den förflutna tiden. Resten är väntan på godkännanden, överlämningar mellan team, omarbete på grund av fel och arbete som ingen ville ha från första början. Lean ger er ord och verktyg för att se det slöseriet och ta bort det.

Lean riktar också fokus mot hela systemet. Ett team som snabbar upp sin egen del medan kön före eller efter växer har inte förbättrat något för kunden. Det synsättet passar tjänstehantering väl. En tjänst är summan av många team, verktyg och leverantörer, och en försening var som helst är en försening för användaren. Principen "optimera helheten" är en ständig påminnelse om att titta på flödet från början till slut.

Lean är en källa till mycket av det som förekommer på andra ställen i den här guiden. Kanban hämtar från samma rötter (se Ämne 1.5 — Kanban), värdeströmshantering tillämpar lean-kartläggning på digitalt arbete (se Ämne 5.4 — Värdeströmshantering) och ständig förbättring ekar lean-vanan av ständiga små vinster (se Ämne 3.15 — Ständig förbättring). Det här ämnet förklarar idéerna och hur man använder dem utan att göra dem till slagord.

## Centrala begrepp

### Var lean kommer ifrån

Enligt [Wikipedia-artikeln om lean-tillverkning](https://en.wikipedia.org/wiki/Lean_manufacturing) växte lean fram ur [Toyotas produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System). Efter andra världskriget hade japanska tillverkare lite kontanter, utrymme eller råvaror, och Taiichi Ohno och Shigeo Shingo omformade Toyotas process kring små fabriker och lågt lager, med utgångspunkt i W. Edwards Demings undervisning. John Krafcik myntade termen "lean" i en artikel 1988, och James Womack och Daniel Jones definierade den formellt i sin bok från 1996, *Lean Thinking*.

Termen "lean programvaruutveckling" kommer från boken *Lean Software Development: An Agile Toolkit* från 2003 av Mary och Tom Poppendieck, enligt [Wikipedia-artikeln om lean programvaruutveckling](https://en.wikipedia.org/wiki/Lean_software_development). Boken anpassar principer från lean-tillverkning till programvara och jämför lean-verktyg med agila arbetssätt. Poppendiecks föredrag på agila konferenser hjälpte till att föra in idéerna i den agila gemenskapen.

### Fem principer för lean-tänkande

Womack och Jones angav fem principer för lean-tänkande, så som tillverkningsartikeln återger dem:

1. **Värde:** definiera värde ur kundens synvinkel.
2. **Värdeström:** identifiera hela följden av steg som skapar det värdet, och utmana de steg som inte tillför något.
3. **Flöde:** få de återstående stegen att flöda utan avbrott.
4. **Drag:** låt kundens efterfrågan dra arbetet genom flödet i stället för att skjuta det.
5. **Perfektion:** fortsätt förbättra, så att slöseri fortsätter att tas bort.

### Sju principer för programvara

Wikipedia-artikeln om lean programvaruutveckling listar sju principer för programvara:

| Princip | Vad den ber om | I tjänstearbete |
|---|---|---|
| **Eliminera slöseri** | Ta bort allt som inte tillför värde för kunden | Släpp godkännanden som aldrig nekar, rapporter ingen läser och funktioner ingen använder |
| **Förstärk lärande** | Förkorta cykeln från att pröva något till att lära sig hur det gick | Släpp små ändringar och se vad användarna gör |
| **Besluta så sent som möjligt** | Skjut upp åtaganden tills ni har fakta, och håll alternativ öppna | Lås inte designen av en tjänsts hela framtid innan ni vet hur den används |
| **Leverera så snabbt som möjligt** | Minska tiden från idé till värde; snabb leverans låter er se och analysera resultat tidigare | Förkorta vägen för små ändringar och rutinförfrågningar |
| **Ge teamet befogenhet** | Låt dem som gör arbetet fatta beslut om det | Ge servicedesken befogenhet att lösa vanliga problem utan eskalering |
| **Bygg in integritet** | Bygg in kvalitet medan arbetet görs, i stället för att kontrollera det efteråt | Automatiserade tester, övervakning och tydliga runbooks som en del av arbetet |
| **Optimera helheten** | Förbättra flödet från början till slut, inte prestandan hos en del | Mät tiden från förfrågan till lösning över team, inte varje teams egen kö |

Artikeln säger att dessa principer lyckas bara när de tillämpas tillsammans och med sunt omdöme om miljön. Den kallar också föreställningen att "hastverk är lastverk" en myt och hävdar att snabb leverans hjälper team att se och analysera resultat tidigare. Det påståendet är en uppfattning, inte en lag: snabbhet utan inbyggd kvalitet ger slöseri, vilket är varför "bygg in integritet" står bredvid "leverera så snabbt som möjligt".

### Slöseri i programvaru- och tjänstearbete

Lean-tankens sju slöserier (kallade *muda*) kommer från Shingos lista för tillverkning: lager, överproduktion, överbearbetning, transport, onödig rörelse, väntan och fel. Artikeln om lean programvara kartlägger dem mot programvara så här:

| Slöseri i tillverkning | Motsvarighet i programvara | Exempel i ett tjänsteteam |
|---|---|---|
| Lager | Delvis färdigt arbete | En lång lista med påbörjade men ofärdiga ändringar |
| Överproduktion | Extra funktioner | En rapport eller tjänst ingen bett om |
| Överbearbetning | Extra processer | Fyra godkännanden för en ändring med låg risk |
| Transport | Uppgiftsbyten | En ingenjör som slits mellan incidenter och projektarbete |
| Väntan | Väntan | Ett ärende som väntar i ett annat teams kö |
| Rörelse | Överlämningar | En förfrågan som passerar fem personer |
| Fel | Fel | Ett fel som orsakar omarbete och upprepade incidenter |

De japanska termerna *mura* (ojämnhet) och *muri* (överbelastning) läggs ibland till i diskussioner om slöseri. Wikipedia-artiklarna som konsulterats här listar bara de sju slöserierna, så använd de extra termerna med försiktighet och definiera dem när ni gör det.

### Värdeströmskartläggning

Artikeln om lean programvara nämner värdeströmskartläggning som tekniken för att hitta slöseri, där slöseri tas bort i upprepade omgångar. En karta visar varje steg på vägen från förfrågan till levererat värde, med den tid arbetet bearbetas och den tid det väntar. Resultatet är ofta en chock: en väg som tar veckor kan innehålla timmar av verkligt arbete.

### Drag, flöde och kanban

Lean-tankens dragprincip ligger bakom Kanbans gränser för pågående arbete. Programvaruartikeln beskriver just-in-time-utveckling där kunden anger det önskade resultatet och teamet organiserar sina egna uppgifter och drar arbete i mån av kapacitet. Kanban-kort är en synlig form av det draget (se Ämne 1.5 — Kanban).

### Kaizen: ständig liten förbättring

Kaizen betyder kontinuerlig, stegvis förbättring. Tillverkningsartikeln spårar det till förbättringsteam hos Toyota 1936. I ett tjänsteteam visar det sig som små ändringar som görs ofta och av dem som står närmast arbetet, som en reviderad mall, en ny automatisk kontroll eller en tydligare överlämning. Det skiljer sig från stora förbättringsprogram genom att det aldrig väntar på en budgetcykel.

### Lean-tankens gränser

De konsulterade artiklarna nämner ingen formell kritik, men praktiska gränser är välkända. Lean kom från upprepbar tillverkning, och kunskapsarbete varierar mycket mer. Att räkna slöseri kan minska den marginal ett team behöver för att klara överraskningar, så ett fullbelastat team är långsamt att reagera på en incident. Betrakta lean som en lins som finner slöseri, och behåll reservkapacitet där variationen är hög (se Ämne 3.11 — Tillgänglighet, kapacitet och prestanda).

## Bästa praxis

1. **Definiera värde ur kundens sida.** För varje tjänst, skriv vad användaren faktiskt får och när. Använd detta för att bedöma varje steg: tillför det värde för användaren, eller tjänar det bara vår egen process?
2. **Kartlägg värdeströmmen för en verklig förfrågningstyp.** Välj en vanlig förfrågan eller ändring och följ den från första kontakten till leverans. Registrera arbetstid och väntetid i varje steg. En grov karta ritad på en timme är mer användbar än en perfekt ritad under ett kvartal.
3. **Benämn de slöserier ni hittar.** Använd de sju kategorierna som checklista: delvis färdigt arbete, extra funktioner, extra process, uppgiftsbyten, väntan, överlämningar, fel. Att benämna dem gör dem lättare att diskutera utan att lägga skuld på individer.
4. **Angrip den längsta väntan först.** Den största förseningen i kartan sitter oftast mellan stegen, inte inuti dem. Att minska den slår oftast att putsa ett steg som redan är snabbt.
5. **Begränsa pågående arbete.** Att slutföra arbete går fortare än att jonglera med det. Sätt tak på antalet öppna objekt per team och se vad som händer med tiden de tar.
6. **Bygg in kvalitet.** Lägg till kontroller i själva arbetsögonblicket, som automatiserade tester, kollegagranskning och övervakning före release, så att fel hittas tidigt. Att kontrollera i slutet är långsammare och dyrare.
7. **Skjut upp beslut ni ännu inte kan fatta väl.** Håll alternativ öppna tills ni har fakta, men sätt ett datum då ni ska besluta. Det undviker både tidigt åtagande till en felaktig design och ändlös obeslutsamhet.
8. **Ge befogenhet åt dem som står närmast arbetet.** Låt servicedeskanalytiker, jourhavande ingenjörer och utvecklare fatta beslut inom tydliga gränser. Ange gränserna, som kostnads- eller risktrösklar, och se över dem efter incidenter.
9. **Se helheten, inte delen.** Mät tiden från förfrågan till lösning från början till slut och diskutera den med alla inblandade team. En ändring som hjälper ett team och bromsar ett annat är ingen förbättring.
10. **Gör förbättring liten, frekvent och lokal.** Uppmuntra varje team att göra en liten förbättring varje eller varannan vecka och att dela vad det lärde sig. Registrera ändringen och dess resultat.
11. **Behåll marginal där variationen är hög.** Fyll inte varje timme i ett jourteam. Lämna kapacitet för överraskningar, och bedöm den efter hur snabbt teamet återhämtar sig när något går fel.
12. **Använd lean tillsammans med andra arbetssätt.** Kombinera värdeströmskartor med flödesmått från Kanban, och med problemhantering för återkommande fel (se Ämne 3.3 — Problemhantering).

## Frågor att diskutera med teamet

**Om vi följde en vanlig förfrågan från början till slut, hur stor del av den förflutna tiden skulle vara verkligt arbete?**

Välj en typisk förfrågan och samla datum för varje steg. Markera tiden då någon arbetade med den och tiden den låg i en kö. Proportionen är ofta en chock. Fråga människor var de väntade sig att väntetiderna skulle finnas, och var de fanns. Facilitatorn bör motstå lösningar i början och be gruppen enas om vad kartan visar.

**Vilket av de sju slöserierna ser vi oftast i vårt dagliga arbete?**

Ge människor listan och be om ett färskt exempel på varje. Räkna med att delvis färdigt arbete, uppgiftsbyten, väntan och överlämningar kommer upp ofta. Fråga vilka av dem teamet kan ändra på egen hand och vilka som kräver andra team eller chefer. Avsluta med att välja ett slöseri att minska den här månaden.

**Vad gör vi som våra kunder inte skulle sakna om vi slutade?**

Lista rapporter, möten, formulär och godkännanden. Fråga för var och en vem som använder det och vad som händer om det upphör. Vissa behövs för revision eller säkerhet, vilket är ett bra skäl. Andra visar sig vara vana. Utse någon att kontrollera varje tveksamt objekt innan det tas bort.

**Var kontrollerar vi kvalitet i slutet i stället för att bygga in den?**

Titta på era release-, ändrings- och incidentprocesser efter kontroller i slutet av linjen. Fråga vilka fel dessa kontroller hittar och när de hade kunnat hittas tidigare. Typiska svar är testning efter att utvecklingen är klar och granskning av dokument i efterhand. Välj en kontroll att flytta tidigare och beskriv hur ni ska se om det hjälpte.

**Vem kan fatta beslut i vårt team utan att fråga, och vem borde kunna det?**

Be människor lista de fem senaste besluten de ville fatta men inte kunde, och varför. Leta efter mönster, som kostnadsgränser, ändringsgodkännanden eller prioriteringsbeslut. Fråga vad som skulle göra det säkert att flytta ett av dessa beslut närmare arbetet, som ett skyddsräcke eller en granskning i efterhand. Pressa inte fram ett ja; syftet är att ta reda på vad människor tror behövs.

**Om allt vi gör nu blev snabbare, vad skulle gå sönder först?**

Den här frågan prövar "leverera så snabbt som möjligt" och "bygg in integritet" tillsammans. Fråga var ett snabbare flöde skulle överbelasta ett team, ett verktyg eller en person. Typiska svar är testning, godkännanden och jourbelastning. Behandla svaren som nästa saker att förbättra. Kom ihåg att lean värderar flödet i hela systemet, så flaskhalsen är där ni ska investera.

## I praktiken: ett agilt ITIL-exempel

En nationell skattemyndighets IT-avdelning driver en intern tjänst där personal kan begära åtkomst till programvara. En typisk förfrågan tar ungefär tre veckor, och personalen klagar högljutt. Teamet på fem som uppfyller förfrågningarna tror att det arbetar hårt och är förvånat över klagomålen.

En chef leder en värdeströmskartläggning med teamet, säkerhetsgruppen och två verksamhetsanvändare. Tillsammans följer de tio nyliga förfrågningar. Varje förfrågan passerar åtta steg: inlämning av formulär, godkännande av närmaste chef, godkännande av dataägare, säkerhetsgranskning, licenskontroll, ärendetilldelning, installation och bekräftelse. Kartan visar att det faktiska arbetet tar ungefär en timme, och nästan hela de tre veckorna är väntan mellan stegen, mestadels på de två godkännandena och säkerhetsgranskningen. I tre av de tio fallen returnerades förfrågan till användaren på grund av ett saknat fält i formuläret.

Gruppen kommer överens om tre förändringar. Formuläret får obligatoriska fält och en kort vägledning, vilket tar bort returerna. Förfrågningar om en kort lista vanliga applikationer med låg risk får ett enda godkännande från närmaste chef, med dataägaren informerad. Säkerhetsgruppen går med på att granska ett urval av sådana förfrågningar varje vecka, snarare än varje förfrågan före installation. Efter två månader sjunker den typiska tiden till ungefär en vecka. Ett problem återstår: förfrågningar om känsliga applikationer tar fortfarande tre veckor, och säkerhetsgruppen noterar att urvalet fångade två förfrågningar som borde ha nekats. De justerar listan över applikationer som är berättigade till snabbt godkännande och beslutar att granska den varje kvartal.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam kan använda lean för att se bortom sin egen sprint eller tavla. Kartlägg vägen från en idé till en användares händer, inklusive testning, säkerhetsgranskning och releasegodkännanden, och hitta var arbetet väntar. Behandla ofärdigt arbete som slöseri och föredra att slutföra framför att påbörja.

### Tjänste- och driftteam

Driftteam ser slöseri dagligen: upprepade incidenter, överlämningar mellan nivåer och förfrågningar som studsar. Använd kartor för att visa var arbete väntar, och använd problemhantering för att ta bort orsakerna till upprepningar. För fram argumenten för reservkapacitet genom att visa vad som händer med flödet när varje timme är planerad.

### Ledning och styrning

Ledare formar det system som skapar mest slöseri: godkännanderegler, finansieringscykler och rapportering. Fråga era team var dessa regler kostar mest tid och vilken risk var och en skyddar mot. Var beredd att ersätta en kontroll med en lättare kontroll som uppfyller samma syfte.

### Kunder och användare

Kunder definierar värde i lean-tänkandet, och de känner slöseri som fördröjning. Räkna med att bli tillfrågad om vad du faktiskt behöver och hur snart. Berätta för teamet vilken del av en tjänst som är viktigast för dig, eftersom det styr var ansträngningen läggs. I gengäld kan du räkna med kortare, mer förutsägbara väntetider.

## Vanliga orsaker till misslyckande

- **Att skära i kapacitet i slöseriets namn.** Team körs på full belastning och kan inte reagera på överraskningar. Behåll i stället marginal där variationen är hög och bedöm efter hur snabbt teamet återhämtar sig.
- **Att kartlägga utan att agera.** Värdeströmskartan hamnar på en vägg och ingenting ändras. Välj i stället den största väntan och kom överens om en förändring med en ägare innan sessionen är slut.
- **Att optimera ett team.** En lokal vinst flyttar kön någon annanstans. Mät i stället tiden från början till slut och kom överens om förändringar med alla team i flödet.
- **Att ta bort kontroller utan att förstå dem.** Ett steg som såg ut som slöseri skyddade mot en verklig risk. Fråga i stället vad varje steg skyddar och ersätt det med en lättare kontroll där ni kan.
- **Att använda lean-ord som slagord.** Människor säger "slöseri" för att avfärda kollegors arbete. Använd i stället termerna för att beskriva flödet och håll samtalet på systemet.
- **Att pressa fart före kvalitet.** Snabbare leverans ger fler fel och mer omarbete. Behandla i stället "bygg in integritet" som en förutsättning för fart.
- **Att tillämpa tillverkningstal på kunskapsarbete.** Mål från en fabrik passar inte varierande arbete. Använd i stället lean som ett sätt att se och fråga, och sätt mått utifrån era egna data.
- **Att behandla lean som ett engångsprojekt.** Vinster bleknar när uppmärksamheten flyttas. Gör i stället små förbättringar till en del av varje teams rutin.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Att se slöseri | Slöseri känns men beskrivs inte | Vissa team kartlägger sitt eget arbete | Team använder gemensamma slöserikategorier och värdeströmskartor | Väntan och omarbete mäts längs värdeströmmen | Kartor och mått går över team och leverantörer |
| Flöde och drag | Arbete skjuts och påbörjas i bulk | Vissa team begränsar pågående arbete | Dragregler och gränser är standard | Flödesmått styr ändringar av gränser och regler | Flödet samordnas över hela strömmen |
| Att bygga in kvalitet | Kvalitet kontrolleras i slutet | Vissa team testar tidigt och granskar arbete | Automatiserade kontroller och inbyggda granskningar är standard | Andelen undkomna fel följs och minskas | Kvalitetsarbetssätt delas och förbättras mellan team |
| Ständig förbättring | Förbättring följer på kriser | Vissa team gör små regelbundna ändringar | Varje team har en regelbunden förbättringsrutin | Förbättringar följs och deras effekt kontrolleras | Förbättringar sprids rutinmässigt mellan team och leverantörer |

## Checklista

- [ ] Vi har definierat vad värde betyder för minst en tjänst ur användarens sida.
- [ ] Vi har kartlagt värdeströmmen för en vanlig förfrågningstyp, med arbetstid och väntetid.
- [ ] Teamet kan nämna de sju slöserierna och ge ett färskt exempel på vart och ett.
- [ ] Pågående arbete är begränsat, och ofärdigt arbete är synligt.
- [ ] Kvalitetskontroller sker under arbetet såväl som i slutet.
- [ ] Vi har valt minst en väntan att minska, med en ägare och ett datum.
- [ ] Teamet har tydliga gränser för beslut det kan fatta utan att fråga.
- [ ] Vi mäter tiden från början till slut för minst ett flöde över team.
- [ ] Vi behåller reservkapacitet för överraskningar där efterfrågan varierar.
- [ ] Varje team gör och registrerar en liten förbättring med regelbunden rytm.

## AI-prompter

**Syfte: analysera en värdeström utifrån de tider ni anger.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Syfte: klassificera exempel på slöseri från ert eget teams arbete.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Syfte: pröva om det är säkert att ta bort en kontroll.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Syfte: planera en workshop i värdeströmskartläggning.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-färdigheter

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): använd för att kartlägga stegen, arbetstiden och väntetiden för en förfrågan från start till slut.
- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera små, kontinuerliga förbättringar när slöseri har hittats.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att analysera hur arbete rör sig mellan roller och hitta överlämningar och förseningar.
- [kanban](../../../../skills/kanban/SKILL.md): använd för att tillämpa drag och gränser för pågående arbete på det flöde ni har kartlagt.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): använd när fel och variation, inte bara väntan, är huvudproblemet och ni behöver en databaserad metod för att minska dem.

## Viktiga källor

- **Lean software development** (Wikipedia): de sju principerna, slöseriskartläggningen och länkar till vidare läsning.
- **Lean manufacturing** (Wikipedia): lean-historien hos Toyota, slöserierna och de fem principerna för lean-tänkande.
- **Lean Software Development: An Agile Toolkit** (Mary och Tom Poppendieck, 2003): boken som förde in lean-idéer i den agila gemenskapen.
- **Lean Thinking** (James Womack och Daniel Jones, 1996): det formella uttalandet av lean-tankens fem principer.

## Referenser

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
