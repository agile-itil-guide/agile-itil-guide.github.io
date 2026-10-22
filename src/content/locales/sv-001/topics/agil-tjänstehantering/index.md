# Agil tjänstehantering

**Agil tjänstehantering tillämpar agila värderingar och metoder på utformningen och förbättringen av själva tjänstehanteringen, och behandlar varje process som en produkt med en ägare, en backlogg och användare som kan säga om den fungerar.**

## Varför detta är viktigt

Det mesta av den här guiden har tittat på hur agila team kan använda arbetssätt för tjänstehantering. Det här ämnet vänder på frågan: hur kan arbetssätt för tjänstehantering byggas och förändras på ett agilt sätt? Många organisationer har processer för incidenter, ändringar och förfrågningar som utformades en gång, infördes i ett projekt och lämnades. De är långsamma att ändra, ogillas av dem som måste följa dem och är i otakt med hur organisationen nu bygger programvara. Det är raka motsatsen till vad manifestets princip om att välkomna förändring skulle antyda (se Ämne 1.2 — Agila principer).

Botemedlet är inte att överge process utan att behandla den som något som utformas tillsammans med sina användare, släpps i små steg och förbättras utifrån belägg. ITIL 4:s vägledande principer säger detsamma: börja där du är, gör framsteg iterativt med återkoppling, samarbeta och främja synlighet och håll det enkelt och praktiskt (se Ämne 2.4 — Vägledande principer i ITIL). Wikipedia-artikeln om ITIL säger att ITIL 4 anpassades till agila, DevOps- och lean-arbetssätt när den släpptes 2019. Artikeln om ISO/IEC 20000 listar nyare delar av den standarden, inklusive vägledning om agilt och DevOps, men den ger inte deras innehåll.

Det finns lite formell forskning om agil tjänstehantering som sådan, och de Wikipedia-artiklar som konsulterats för den här guiden täcker den inte. Det här ämnet bygger därför på Scrum Guides beskrivning av roller och artefakter, på de agila och ITIL-principerna och på resten av den här guiden, och erbjuder sitt angreppssätt som praktisk syntes att pröva, inte som etablerad metod.

## Centrala begrepp

### Processer som produkter

En **process** är i detta sammanhang varje upprepbart arbetssätt som en tjänsteorganisation ber människor följa: hur man rapporterar en incident, hur man begär åtkomst, hur man godkänner en ändring. Sedd som en produkt har en process:

- **Användare:** de som följer den och de som den betjänar.
- **Ett syfte:** det resultat den finns för att uppnå.
- **En ägare:** någon som ansvarar för dess värde, så som Scrum Guide beskriver produktägaren som den enda person som ansvarar för att maximera produktens värde och ordna dess backlogg (se Ämne 1.4 — Leveransprognoser och planeringsmått).
- **En backlogg:** en ordnad lista över förbättringar.
- **Releaser:** ändringar levererade i små steg, med anteckningar.
- **Mått:** belägg för om den fungerar.

Att tänka så förändrar frågorna. Inte "har vi infört ändringsprocessen?" utan "hjälper ändringsprocessen människor att göra sina jobb, och vad är nästa förbättring?"

### Roller

| Roll | I ett produktteam | För en process inom tjänstehantering |
|---|---|---|
| **Produktägare** | Ordnar backloggen och ansvarar för värdet | Processägaren, som avgör vad som ska förbättras härnäst och varför |
| **Utvecklare / team** | Bygger inkrementet | De som utformar och driver processen, helst inklusive användare från leverans och drift |
| **Scrum Master eller coach** | Hjälper teamet att tillämpa ramverket och undanröjer hinder | En coach som hjälper teamet att öva kontinuerlig programvaruleverans och samla återkoppling |
| **Intressenter** | Granskar inkrementet och ger återkoppling | Leveransteam, servicedesken, revisorer, kunder |

Kopplingen är den här guidens, inte en standard. Processägare i många organisationer saknar befogenhet eller tid, så det första steget är ofta att ge dem båda.

### Processbackloggen

Förbättringsidéer för en process kommer från många ställen: incidentgranskningar, retrospektiv, revisionsfynd, användarklagomål och mått (se Ämne 3.15 — Ständig förbättring). En processbacklogg samlar dem i en ordnad lista. Posterna är små och beskrivs ur användarens synvinkel: "Som utvecklare vill jag att lågriskändringar godkänns automatiskt så att jag kan släppa när jag är redo." Produktägaren ordnar listan efter värde och insats, och teamet tar poster in i korta cykler.

### Kontinuerlig programvaruleverans av processändringar

I stället för att utforma en full process och införa den, utforma den minsta version som skulle kunna fungera, pröva den med några få användare och lär:

| Steg | Vad som händer |
|---|---|
| **Hitta problemet** | Observera hur människor verkligen arbetar och var de kämpar |
| **Utforma en liten ändring** | Ett nytt formulär, en kortare godkännandeväg, en checklista |
| **Pröva den** | Med ett team, eller en typ av arbete, under en kort period |
| **Kontrollera** | Jämför med vad ni förväntade er, med data och samtal |
| **Anta, justera eller släpp** | Sprid det som fungerade; åtgärda eller överge det som inte gjorde det |

Detta är cykeln planera–göra–kontrollera–agera tillämpad på själva processen (se Ämne 3.15 — Ständig förbättring).

### Utforma med användare

Processutformare som inte själva använder processen gör undvikbara misstag. Involvera dem som följer den: bjud in ingenjörer att utforma ändringsprocessen, deskanalytiker att utforma incidentformuläret och kunder att utforma förfrågningskatalogen. Titta på verkligt arbete. Pröva med verkliga fall. Detta är "kundsamarbete framför kontraktsförhandling" tillämpat inne i organisationen (se Ämne 1.1 — Det agila manifestet).

### Minsta livskraftiga process

En **minsta livskraftiga process (minimum viable process)** är den minsta uppsättning steg, register och roller som uppnår syftet. Att lägga till något kräver ett skäl. Den vägledande principen "håll det enkelt och praktiskt" stöder detta. Ett användbart test för varje steg är att fråga vad som skulle hända om det togs bort, och vem som skulle märka det. Kontroller som krävs enligt lag eller avtal behålls, med källan angiven; andra ifrågasätts.

### Processreleaser och kommunikation

När en process ändras behöver människor veta det. Behandla ändringar som releaser: en kort anteckning som beskriver vad som ändrades, varför och vad man ska göra annorlunda, med en kontakt för frågor. Släpp i små steg, i en rytm människor kan följa, och undvik att överraska team med stora förändringar. För en synlig ändringshistorik.

### Standarder, revisioner och agilitet

Många organisationer måste uppfylla standarder eller revisorer. ISO/IEC 20000 är en standard för ledningssystem för tjänstehantering, och Wikipedia listar en nyare del av den med vägledning om agilt och DevOps (se Ämne 2.7 — Ramverk och standarder för ITSM). En process byggd i små steg kan uppfylla revisioner om registren visar hur den fungerar och hur den förändras: backloggen, releaseanteckningarna och måtten är i sig belägg. Diskutera tidigt med revisorer vad de behöver och visa dem hur ni arbetar.

### Agil tjänstehantering och DevOps

Arbetssätt från DevOps, som automatisering och pipelines, är verktyg för att genomföra processer (se Ämne 5.2 — DevOps). Där ett processteg kan automatiseras, som att registrera en ändring från en pipeline, gör det och behandla automatiseringen som en del av processen. Agil tjänstehantering och DevOps delar ett intresse för korta cykler och snabb återkoppling.

### Gränser

Angreppssättet förutsätter att människor har tid och mandat att förbättra process, vilket inte alltid är sant. Det kan misslyckas när processägarskapet är nominellt, när intressenter kräver en färdig design innan de vill pröva något eller när varje ändring kräver ett långt godkännande. Det riskerar också ständig oro om ändringar är för täta för att människor ska hinna ta in dem. Balansera kontinuerlig leverans av förändring mot stabilitet: ändra i en förutsägbar rytm.

## Bästa praxis

1. **Utse en ägare för varje process.** Välj någon med befogenhet att ändra den och tid att göra det. Gör deras roll tydlig: de ansvarar för hur väl processen tjänar sitt syfte.
2. **Skriv ett syfte på en mening.** Ange vad processen är till för och vem den betjänar. Om ni inte kan, kan processen vara en kandidat för borttagning.
3. **För en processbacklogg.** Samla idéer från granskningar, revisioner, återkoppling och data i en ordnad lista. Visa den för dem som följer processen.
4. **Involvera användarna i utformningen.** Ta med ingenjörer, deskanalytiker och kunder i workshops och prövningar. Observera verkligt arbete innan ni ändrar det.
5. **Börja med en minsta livskraftig process.** Utforma den minsta version som möter syftet och de juridiska behoven. Lägg till steg först när ett problem motiverar dem.
6. **Pröva innan ni inför.** Pilota med ett team eller en typ av arbete under en kort, definierad period. Kom överens om vad ni ska titta på innan ni börjar.
7. **Släpp ändringar i små steg i en rytm.** Publicera en kort anteckning för varje release av processen, med en kontakt. Undvik stora, överraskande ändringar.
8. **Mät processen.** Välj några få mått på om den fungerar, som tidsåtgång, omarbete och användarnöjdhet (se Ämne 5.6 — Mått och mätning). Granska dem med användare.
9. **Automatisera där det hjälper.** Fånga register från verktyg, inte formulär; gör den enkla vägen till den rätta vägen. Kontrollera att automatisering inte döljer omdöme som människor bör göra.
10. **Behåll beläggen för revisorer.** Lagra backloggen, besluten, releaseanteckningarna och måtten där revisorer kan se dem. Bjud in dem till en granskning av hur processen förändras.
11. **Avveckla process.** Ta bort steg, formulär och register som inte längre tjänar sitt syfte. Behandla borttagning som en förbättring.
12. **Granska processägarskap årligen.** Kontrollera att varje process fortfarande har en aktiv ägare, en aktuell backlogg och användare som kan nå dem.

## Frågor att diskutera med teamet

**Vem äger var och en av våra processer, och vilken befogenhet har de att ändra den?**

Lista de huvudsakliga processerna och utse ägaren för var och en. Fråga vad ägaren kan ändra utan att fråga någon. Ofta är svaret "mycket lite". Facilitatorn kan fråga vad som skulle behövas för att ägaren ska kunna göra små ändringar snabbt. Kom överens om en process att börja med.

**Vad är vår ändringsprocess till för? Kan vi säga det i en mening?**

Be varje person skriva ett syfte. Jämför. Skillnader visar förvirring om varför processen finns. Använd det gemensamma uttalandet för att bedöma varje steg. Ta bort eller ifrågasätt steg som inte tjänar det.

**När ändrade vi senast en process för att användare bad om det, och hur fick vi veta det?**

Be om exempel. Om det inte finns några, fråga vart klagomål går. Diskutera hur återkoppling kunde nå ägaren: en kanal, en regelbunden granskning, en kort enkät. Välj en väg att pröva.

**Hur skulle en månads prövning av en enklare process se ut?**

Välj en process med känd friktion. Beskriv en lättare version, vem som skulle pröva den, vad ni skulle mäta och vad som skulle få er att sluta. Detta gör ett argument till ett experiment. Kom överens om detaljerna och datumet.

**Vilka belägg skulle våra revisorer godta från en process med kontinuerlig programvaruleverans?**

Fråga en revisor eller en efterlevnadskollega. Lista vad processen producerar: en backlogg, releaseanteckningar, mått, register. Diskutera gap. Team blir ofta förvånade över hur villiga revisorer är att godta tydliga belägg för kontrollerad förändring.

**Hur får människor veta att en process har ändrats?**

Följ den senaste ändringen. Många fick veta av en kollega eller genom att stöta på den. Diskutera releaseanteckningar och en synlig ändringslogg. Kom överens om ett enkelt sätt att tillkännage ändringar och var de finns.

## I praktiken: ett agilt ITIL-exempel

En nationell trafiksäkerhetsmyndighet har en IT-avdelning på 90 personer som supportar en applikation som används av polis och domstolar. Avdelningens incidentprocess skrevs för åtta år sedan: ett formulär med 14 fält, tre godkännanden för att stänga en incident med hög prioritet och en månadsrapport som ingen läser. Leveransteam hoppar över formuläret under avbrott och fyller i det efteråt, så dess register är dåliga. Ett revisionsfynd säger att incidentregistren är ofullständiga.

Chefen för tjänstehantering utser sig själv till ägare av incidentprocessen och bildar ett litet arbetsteam: två analytiker från servicedesken, en ingenjör från vartdera av två leveransteam och en kvalitetsansvarig från myndighetens styrenhet. Hon skriver ett syfte för processen: att snabbt återställa tjänsten och att lära av det som hände. Teamet tittar på tre verkliga incidenter. De finner att formuläret fylls i efter händelsen, mestadels med samma få värden, och att godkännandena tillför försening utan att någonsin ändra ett utfall. De bygger en backlogg och börjar med de minsta ändringarna. En prövning med två team minskar formuläret till sex fält som fylls i automatiskt från övervakningsverktyget där det är möjligt, tar bort två av de tre godkännandena och lägger till en kort skuldfri granskning för varje incident med hög prioritet.

Efter sex veckor registrerar prövningsteamen incidenter under avbrottet i stället för efteråt, och den kvalitetsansvariga finner registren mer fullständiga än förut. Teamet publicerar en releaseanteckning på en sida, utvidgar ändringen till alla team och visar revisorn backloggen, prövningsresultaten och måtten. Vissa svårigheter återstår. Ett leveransteam gick aldrig med i prövningen och använder fortfarande det gamla formuläret, en leverantörs avtal kräver ett fält som det nya formuläret utelämnar och den kvalitetsansvariga oroar sig för att borttagandet av godkännanden kommer att ifrågasättas vid nästa revision. Chefen för tjänstehantering lägger till ett fält för leverantörsfallet, ber det kvarvarande teamet att gå med i nästa omgång och kommer överens med revisorn om att granska incidentregistren vid nästa kvartalsmöte.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam är användare av många processer inom tjänstehantering. Delta i utformningen av de som berör er, erbjud data om hur de fungerar i praktiken och pröva piloter. Där ett processteg kan automatiseras i er pipeline, erbjud er att bygga det.

### Tjänste- och driftteam

Driftteam äger ofta processerna. Behandla var och en som en produkt: skriv ett syfte, för en backlogg, fråga användare och släpp små ändringar. Avsätt tid för processförbättring och försvara den, eftersom leveransarbete lätt trycker undan den.

### Ledning och styrning

Ledare ger processägare befogenhet och tid, och sätter förväntan att processer förändras utifrån belägg. Be om syftet och måtten för varje process, och om backloggen. Stöd prövningar och var villiga att godta belägg i nya former.

### Kunder och användare

Kunder och användare av tjänster följer också processer, som förfrågningar och godkännanden. Tala om för ägaren vad som är förvirrande eller långsamt. Erbjud dig att delta i en prövning. Förvänta dig att ändringar tillkännages och förklaras.

## Vanliga orsaker till misslyckande

- **Process utan ägare.** Ingen kan ändra den. Utse i stället en ägare med befogenhet och tid.
- **Omfattande omkonstruktion i ett svep.** En helt ny process införs på en gång och avvisas. Ändra i stället i små steg och pilota.
- **Design av kommitté på avstånd från användare.** Processen passar utformarna. Ta i stället med dem som följer den och titta på verkligt arbete.
- **Ständig oro.** Ändringar kommer för ofta för att tas in. Släpp i stället i en förutsägbar rytm.
- **Att glömma de juridiska kraven.** En kontroll som behövdes tas bort. Kontrollera i stället vad varje steg krävs för och ange källan.
- **Ändringar som inte tillkännages.** Människor upptäcker dem av en slump. Publicera i stället korta releaseanteckningar.
- **Belägg som inte sparas.** Revisionen kan inte se hur processen förändrades. Behåll i stället backloggen, besluten och måtten.
- **Ingen borttagning.** Steg ackumuleras. Behandla i stället borttagning som en förbättring.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Ägarskap och syfte | Processer har ingen tydlig ägare eller något syfte | Vissa processer har ägare | Varje process har en ägare med befogenhet och ett skrivet syfte | Ägare granskas för effektivitet och stöds | Ägare arbetar tillsammans över team för att samordna processer från början till slut |
| Backlogg och förändring | Ändringar är projekt, sällsynta och stora | Vissa ägare för listor över idéer | Varje process har en ordnad backlogg och släpper ändringar i små steg | Backloggens flöde och releaseeffekter mäts | Processändringar samordnas mellan processer och med leverantörer |
| Involvera användare | Utformare rådfrågar sällan användare | Vissa prövningar körs med användare | Användare deltar i utformning och prövningar som standard | Användarnas återkoppling och nöjdhet mäts och åtgärdas | Kunder och leverantörer deltar i processutformning |
| Belägg och revision | Register är dåliga och ändringar oregistrerade | Vissa processändringar loggas | Backlogg, releaseanteckningar och mått fungerar som revisionsbelägg | Revisorer granskar ändringsregistret regelbundet | Belägg delas fortlöpande med revisorer och partner |

## Checklista

- [ ] Varje huvudprocess har en namngiven ägare med befogenhet och tid.
- [ ] Varje process har ett syfte på en mening och en definierad uppsättning användare.
- [ ] Varje process har en synlig, ordnad backlogg över förbättringar.
- [ ] Användare från leverans och drift deltar i utformning och prövningar.
- [ ] Ändringar piloteras före införande, med en definierad kontroll.
- [ ] Processändringar släpps i en rytm med korta anteckningar.
- [ ] Några få mått visar om varje process fungerar.
- [ ] Juridiska och avtalsmässiga kontroller identifieras med sina källor.
- [ ] Revisorer har sett backloggen, releaseanteckningarna och måtten.
- [ ] Steg som inte längre tjänar ett syfte tas bort.

## AI-prompter

**Syfte: utarbeta ett syftesuttalande och en användarlista för en process.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: göra återkoppling och incidentgranskningar till en processbacklogg.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Syfte: utforma en månads prövning av en lättare process.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: skriva en releaseanteckning för en processändring.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## AI-färdigheter

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att klargöra vem som äger varje process och vem som konsulteras.
- [user-story](../../../../skills/user-story/SKILL.md): använd för att skriva processbackloggposter ur användarens synvinkel.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att studera hur en process faktiskt körs och var den kämpar.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att granska hur en process fungerar med sina användare.
- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera små, kontinuerliga förbättringar av en process.

## Viktiga källor

- **The Scrum Guide** (Ken Schwaber och Jeff Sutherland, scrumguides.org): källan till de roller och artefakter som här används som analogi för processägarskap och backloggar.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): den agila sidan av utformningsangreppssättet.
- **ITIL** (Wikipedia): historien om ITIL 4:s anpassning till agila, DevOps- och lean-arbetssätt.
- **ISO/IEC 20000** (Wikipedia): listan över delar, inklusive nyare vägledning om agilt och DevOps.

## Referenser

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
