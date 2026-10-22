# Vägledande principer i ITIL

**ITIL:s sju vägledande principer är korta nog att komma ihåg och breda nog att tillämpa på vilket tjänstebeslut som helst, och de överlappar så starkt med agila principer att ett team kan använda dem som en bro mellan de två.**

## Varför detta är viktigt

När agila team och tjänstehanteringsgrupper är oeniga bråkar de ofta om arbetssätt: om en ändring behöver godkännande, om en granskning krävs, om ett dokument behövs. Diskussionerna går i cirklar eftersom vardera sidan försvarar sitt arbetssätt utan att ange principen bakom. ITIL:s vägledande principer är användbara här eftersom de skrevs för att tillämpas på vilket arbetssätt som helst, och de flesta agila utövare känner igen dem.

Principerna svarar också på ett vanligt klagomål om ITIL, att det föreskriver tung process. ITIL 4:s egna principer innefattar "håll det enkelt och praktiskt" och "börja där du är". Ett team som hänvisar till dem kan legitimt säga att en föreslagen process inte stämmer med det ramverk den påstår sig följa. Samtidigt ber principerna om något av agila team: "samarbeta och främja synlighet" och "tänk och arbeta helhetsorienterat" utmanar team som optimerar för sin egen sprint på bekostnad av dem som driver resultatet.

Det här ämnet beskriver de sju principerna, jämför dem med de agila principerna i Ämne 1.2 — Agila principer och visar hur man använder dem som beslutsstöd. Principernas namn kommer från [Wikipedia-artikeln om ITIL](https://en.wikipedia.org/wiki/ITIL) och är konsekventa i de utbildnings- och leverantörskällor som konsulterats. Förklaringarna är den här guidens egna och är inte citat ur ITIL-publikationer. Om ni behöver ägarens formulering, läs ITIL 4-publikationerna direkt.

## Centrala begrepp

### De sju principerna

Enligt Wikipedia är de vägledande principerna:

1. Fokusera på värde
2. Börja där du är
3. Gör framsteg iterativt med återkoppling
4. Samarbeta och främja synlighet
5. Tänk och arbeta helhetsorienterat
6. Håll det enkelt och praktiskt
7. Optimera och automatisera

Wikipedia listar dem under sitt avsnitt om ITIL 5. De stämmer med ITIL 4:s principer så som utbildningsleverantörer och leverantörer sammanfattar dem, och den här guiden behandlar dem som ITIL 4-principer som PeopleCerts ITIL 5-material kan föra vidare. Kontrollera ägarens aktuella publikationer för exakt text, och för om ITIL 5 ändrar dem (se Ämne 2.2 — ITIL).

### Vad varje princip ber om

Tabellen ger en enkel läsning av varje princip, skriven för den här guiden, med den närmaste agila motsvarigheten från Ämne 1.2 — Agila principer.

| Princip | Vad den ber av dig | Närmaste agila idé |
|---|---|---|
| **Fokusera på värde** | Knyt varje aktivitet till värde för kunder, användare eller organisationen, och släpp aktiviteter som inte bidrar | Agil princip 1: tillfredsställ kunden genom tidig och kontinuerlig leverans av värdefull programvara |
| **Börja där du är** | Titta på vad som finns innan du bygger något nytt, och återanvänd det som redan fungerar | Agil princip 10: enkelhet, att maximera mängden arbete som inte behöver göras |
| **Gör framsteg iterativt med återkoppling** | Arbeta i små steg, lär av varje och justera; försök inte planera allt först | Agila principerna 3 och 12: leverera ofta, och reflektera och justera med jämna mellanrum |
| **Samarbeta och främja synlighet** | Arbeta över gränser, dela information öppet och gör arbete synligt | Agila principerna 4 och 6: dagligt samarbete och samtal ansikte mot ansikte |
| **Tänk och arbeta helhetsorienterat** | Se tjänsten som ett helt system av människor, information, teknik och partner, inte som separata delar | Ingen enskild agil princip; närmast är lean-idén att optimera helheten (se Ämne 1.7 — Lean programvaruutveckling) |
| **Håll det enkelt och praktiskt** | Använd det minsta antal steg som behövs för att nå ett resultat, och undvik process för processens skull | Agil princip 10 igen, och princip 9 om god design |
| **Optimera och automatisera** | Förbättra arbetet först, använd sedan teknik för att ta bort rutinansträngning | Agil princip 9, och arbetssätt som kontinuerlig integration (se Ämne 1.6 — Extreme Programming) |

Agila principer är numrerade som på agilemanifesto.org. Kartläggningen är den här guidens bedömning; ingen källa påstår en officiell överensstämmelse.

### Där de två uppsättningarna skiljer sig

Överlappningen är stor, men betoningarna skiljer sig på användbara sätt.

- **ITIL betonar helheten.** "Tänk och arbeta helhetsorienterat" ber er ta hänsyn till tjänsten från början till slut, inklusive leverantörer och användare. Manifestets principer talar huvudsakligen om teamet och kunden, och säger lite om det bredare systemet.
- **Agilt betonar teamet och takten.** De agila principerna ber om motiverade individer, en hållbar takt och självorganiserande team. ITIL:s principer nämner inte människors arbetsförhållanden direkt, även om dimensionen "organisationer och människor" täcker dem (se Ämne 2.5 — Fyra dimensioner av tjänstehantering).
- **ITIL betonar synlighet.** "Samarbeta och främja synlighet" ber om öppen delning. Agila team gör detta med tavlor och demonstrationer, men kan utelämna de grupper som supportar tjänsten.
- **Agilt betonar teknisk kvalitet.** Den agila principen om teknisk excellens har ingen direkt motsvarighet, även om "optimera och automatisera" är närliggande.

### Att använda principerna som beslutsstöd

ITIL:s vägledande principer är avsedda att användas. En enkel metod är att ta ett beslut, som att lägga till ett godkännandesteg, och för varje princip fråga om alternativet stöder den, står i konflikt med den eller är neutralt. Resultatet är en kort, ärlig lista över avvägningar. Principerna är inte regler, och de kan dra åt olika håll. "Börja där du är" kan stå i konflikt med "optimera och automatisera" när det befintliga verktyget är dåligt, och "håll det enkelt" kan stå i konflikt med "tänk helhetsorienterat" när systemet är komplext. Diskussionen mellan principer är värdet.

### Principer och arbetssätt

Principer vägleder valet av arbetssätt, och arbetssätten är sätten att arbeta (se Ämne 2.3 — Tjänstevärdessystemet i ITIL). Ett arbetssätt som inte kan förklaras av någon princip är en kandidat för borttagning. En princip som ingen kan se i det dagliga arbetet är ett slagord. Båda kontrollerna är värda att köra.

### Gränser

Principerna är breda. Två personer kan åberopa samma princip för att stödja motsatta beslut. Wikipedia-artikeln nämner ingen kritik av principerna, och den här guiden uppfinner ingen. Den praktiska gränsen är att principer inte talar om vad ni ska göra härnäst; de talar om hur ni bedömer alternativ. Kombinera dem med belägg från era egna tjänster.

## Bästa praxis

1. **Sätt upp de sju principerna där teamet arbetar.** Visa dem bredvid processdokumenten eller i mallen för förslag. Principer som inte syns används inte.
2. **Pröva förslag mot dem.** För varje ny process eller verktyg, skriv en rad per princip: stöder, står i konflikt eller neutralt. Dela resultatet när ni ber om godkännande.
3. **Fokusera på värde genom att fråga "vem tjänar på det?"** För varje uppgift, namnge den person eller grupp som tjänar på den. Om ni inte kan namnge någon, ifrågasätt uppgiften.
4. **Börja där ni är genom att granska vad som finns.** Innan ni köper ett verktyg eller utformar en process, lista vad teamet redan använder och om det möter behovet. Återanvänd och bygg ut innan ni ersätter.
5. **Gör iterationen verklig.** Dela upp en processförändring i ett litet första steg, sätt ett datum för att granska den och besluta i förväg vilka belägg ni ska titta på. Undvik stora lanseringar.
6. **Gör arbete synligt för dem som är beroende av det.** Dela tavlor, releaseplaner och incidentstatus med supportpersonal och kunder. Kom överens om vilken detaljnivå varje publik behöver.
7. **Rita hela tjänsten innan ni ändrar en del.** Skissa de människor, den information, den teknik och de leverantörer som är inblandade och fråga vad en förändring i en del gör med de andra.
8. **Ta bort steg innan ni automatiserar dem.** Om ett steg inte tillför något värde, ta bort det. Om det gör det, automatisera det. Att automatisera en slösande process gör slöseriet snabbare.
9. **Lös konflikter mellan principer öppet.** När två principer drar åt olika håll, säg det och registrera beslutet och skälet. Det bygger en gemensam dokumentation över hur teamet tänker.
10. **Använd principerna för att utmana påståenden.** När någon säger "ITIL kräver" eller "agilt säger", fråga vilken princip eller vilket arbetssätt som stöder det och vad det skyddar mot.
11. **Koppla principer till mått.** Välj några få mått som visar om en princip fungerar, som tid till återställd tjänst för "fokusera på värde" eller antalet manuella steg som tagits bort för "optimera och automatisera". Undvik att uppfinna exakta mål.
12. **Granska principerna i retrospektiv.** En gång per kvartal, fråga vilken princip teamet följde bäst och vilken det försummade, med ett exempel på vardera.

## Frågor att diskutera med teamet

**Vilken av de sju principerna följer vårt team bäst, och vilken försummar vi?**

Ge människor listan och be dem välja en av varje, med ett exempel från den senaste månaden. Jämför. Skillnader visar hur människor ser arbetet. Försummade principer pekar ofta på teamets blinda fläckar: till exempel kan ett leveransteam försumma synlighet, och ett driftteam kan försumma iteration. Facilitatorn bör avsluta med att välja en princip för teamet att öva på.

**Var lägger vår process till steg som ingen kan koppla till värde?**

Gå igenom en process och fråga vid varje steg "vem tjänar på det?" Obesvarade steg är kandidater för borttagning. Var beredd på förklaringar som rör revision eller säkerhet, vilka är legitima och bör registreras. Kontrollera varje tveksamt steg med den som tjänar på det innan ni tar bort det.

**När startade vi senast något nytt som duplicerade vad vi redan hade?**

Samla exempel: ett verktyg som köptes medan ett annat fanns tillgängligt, en mall som duplicerade en befintlig. Fråga vad som gjorde det lättare att börja nytt än att använda det som fanns. Orsakerna är ofta dålig sökbarhet eller ägarskap. Välj ett ställe att förbättra sökbarheten, som en gemensam lista över verktyg.

**Vilket är det minsta första steg vi kunde ta vid vår nästa ändring, och hur avgör vi om vi ska fortsätta?**

Välj en verklig kommande ändring. Fråga efter den minsta version som skulle lära oss något, och vad som skulle räknas som ett tecken att sluta eller fortsätta. Den här frågan prövar iteration och återkoppling. Facilitatorn kan följa upp genom att fråga vem som ska titta på beläggen och när.

**Vem är beroende av vårt arbete och kan inte se det?**

Lista de människor som förlitar sig på det teamet gör: servicedesken, ett partnerteam, kunder. Fråga hur var och en får veta vad som förändras. Typiska gap är tysta releaser och odokumenterade beslut. Kom överens om en förändring för att göra arbetet synligt för en grupp.

**Var har två av dessa principer dragit åt olika håll, och hur avgjorde vi?**

Be om ett nyligt beslut där enkelhet krockade med en helhetssyn, eller återanvändning krockade med automatisering. Diskutera hur det avgjordes och om resonemanget är registrerat. Syftet är att göra avvägningar uttryckliga och att märka vem som avgjorde. Kom överens om ett enkelt sätt att registrera nästa.

## I praktiken: ett agilt ITIL-exempel

En regional sjukhusförvaltnings IT-avdelning vill införa ett nytt verktyg för att följa åtkomstförfrågningar. Säkerhetsteamet har utarbetat en godkännandeprocess i sju steg med fem formulär. Teamet för kliniska system, som använder en tvåveckorsrytm för leverans, klagar på att processen skulle lägga veckor till introduktionen av ny personal, och säkerhetsteamet svarar att revisionen kräver stegen.

IT-chefen kallar till en session på en timme och sätter de sju principerna på väggen. För varje princip säger gruppen om den föreslagna processen stöder den. Fokusera på värde: bara tre av de sju stegen kan kopplas till en risk. Börja där du är: sjukhuset har redan ett identitetssystem som innehåller det mesta av de data som behövs. Gör framsteg iterativt: utkastet har ingen plan för granskning. Samarbeta och främja synlighet: den som ber om åtkomst kan inte se var en förfrågan befinner sig. Tänk helhetsorienterat: processen ignorerar entreprenörer, som kommer via en leverantör. Håll det enkelt: fem formulär. Optimera och automatisera: utkastet automatiserar ingenting.

Gruppen kommer överens om att pilota en process i tre steg för de vanligaste rollerna, med data från identitetssystemet, med en synlig status för den som ber om åtkomst och en granskning efter två månader. Säkerhetsteamet behåller sina extra steg för roller med åtkomst till patientdata. Efter två månader tar vanliga förfrågningar två dagar i stället för nio, och revisionen accepterar den kortare vägen för pilotrollerna. Kvarstående svårigheter omfattar entreprenörer, vars förfrågningar fortfarande kommer via e-post genom leverantören, och en dispyt om huruvida en fjärde roll hör hemma i piloten. Gruppen registrerar båda som öppna punkter och ber leverantören delta i nästa granskning.

## Fyra perspektiv

### Produkt- och leveransteam

Använd principerna för att förklara skälen bakom era val för driften och styrningen. När ni ber om en lättare process, peka på den princip den tjänar. När ni utformar en release, ställ synlighetens och helhetens principer: vem behöver veta, och vad mer kommer detta att påverka?

### Tjänste- och driftteam

Driftteam kan använda principerna för att försvara goda arbetssätt och för att ifrågasätta ärvda. Fråga för varje långvarigt steg vilken princip det tjänar. Bjud in leveransteam att granska era processer mot samma lista och kom överens om förändringar tillsammans.

### Ledning och styrning

Ledare kan anta principerna som ett gemensamt språk för beslut om process och verktyg. Be om sammanfattningen princip för princip när ni godkänner ändringar. Visa principerna själva genom att göra era egna beslut synliga och genom att börja smått.

### Kunder och användare

Kunder och användare har nytta när principerna följs: tjänster fokuserar på deras värde, förändras i små steg och visar var förfrågningar står. Fråga leverantörer hur de bestämmer vad de ska göra, och räkna med ett svar i termer av värde och synliga framsteg.

## Vanliga orsaker till misslyckande

- **Att rabbla principerna utan att använda dem.** Principerna ligger på en bild. Tillämpa dem i stället på verkliga beslut och registrera utfallet.
- **Att använda en princip för att överrösta de andra.** "Håll det enkelt" används för att avfärda verklig risk. Väg i stället alla sju och skriv ned avvägningarna.
- **Att behandla "börja där du är" som "ändra ingenting".** Dålig befintlig praxis försvaras. Bedöm i stället vad som finns, behåll det som fungerar och ändra det som inte gör det.
- **Att automatisera före förenkling.** En slösande process görs snabbare. Ta i stället bort onödiga steg först.
- **Synlighet som övervakning.** Instrumentpaneler används för att döma individer. Gör i stället arbete synligt så att människor kan hjälpa varandra och planera.
- **Att ignorera hela systemet.** Ett team förbättrar sin egen del och flyttar problem till andra. Skissa i stället tjänsten från början till slut innan ni ändrar en del.
- **Att citera ett ramverk för auktoritet.** "ITIL säger" avslutar samtalet. Fråga i stället vilken princip eller vilket arbetssätt som menas och vad det skyddar mot.
- **Att förlita sig på sekundära sammanfattningar.** Formuleringen av en princip kommer från en bild som ändrat den. Kontrollera i stället ägarens publikationer när formuleringen spelar roll.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Medvetenhet | Få känner till principerna | Vissa team känner till och hänvisar till dem | Alla team känner till en gemensam lista och en enkel läsning | Användningen av principerna i beslut granskas | Team, leverantörer och kunder delar samma principspråk |
| Användning i beslut | Beslut bygger på vana eller auktoritet | Vissa förslag kontrolleras mot principerna | Förslag inkluderar en kort principkontroll | Principkontroller jämförs med utfall | Principerna formar beslut i hela organisationen rutinmässigt |
| Iteration och återkoppling | Ändringar är stora och granskas sällan | Vissa ändringar börjar smått | Ändringar följer ett litet steg med en planerad granskning | Granskningsbelägg samlas in och agerar på | Återkopplingsslingor löper över team och med kunder |
| Synlighet | Arbete är synligt bara för sitt team | Vissa team delar tavlor eller planer | Arbete som påverkar andra delas med dem | Synlighetsbehov kontrolleras med varje publik | Arbete och beslut är synliga över team, leverantörer och kunder |

## Checklista

- [ ] De sju principerna visas där teamet arbetar.
- [ ] Varje teammedlem kan nämna dem eller snabbt hitta dem.
- [ ] Förslag till nya processer eller verktyg inkluderar en kort kontroll mot principerna.
- [ ] Vi listar vad som finns innan vi börjar något nytt.
- [ ] Ändringar börjar med ett litet steg och en planerad granskning.
- [ ] Arbete som påverkar andra team eller kunder görs synligt för dem.
- [ ] Vi skissar hela tjänsten innan vi ändrar en del.
- [ ] Vi förenklar innan vi automatiserar.
- [ ] Avvägningar mellan principer registreras.
- [ ] Vi har kontrollerat principernas exakta formulering i ägarens aktuella publikation.

## AI-prompter

**Syfte: kontrollera en föreslagen process mot de sju vägledande principerna.**

```text
Help me check a proposed process against ITIL's seven guiding principles: focus on value; start where you are; progress iteratively with feedback; collaborate and promote visibility; think and work holistically; keep it simple and practical; optimize and automate.

The proposed process (steps, roles, forms, tools): [paste].
What it is meant to achieve: [describe].
What already exists that it might replace or build on: [describe, or write "unknown"].

For each principle, say whether the proposal supports it, conflicts with it, or is neutral, with one sentence of reasoning that uses only the text I gave. Then list the main trade-offs and three questions we should answer before approving it. Do not claim that a standard requires any step unless I have pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: jämföra agila principer och ITIL-principer inför ett beslut.**

```text
We are deciding whether to [describe the decision, e.g. "require a peer review for every change"].

Agile principles I want to consider (paste the ones you consider relevant, from agilemanifesto.org): [paste].
ITIL guiding principles I want to consider: [paste the ones you consider relevant].
Our context: [describe team, service, and any rules we must follow].

Build a table showing, for each pasted principle, which option it supports and why, using only my text. Identify where principles agree and where they conflict. Suggest a small experiment to resolve any conflict, and what evidence would show whether it worked. Mark assumptions, and list what you are unsure of.
```

**Syfte: hitta steg i en process som ingen kan koppla till värde.**

```text
Here is a process, step by step: [paste the steps, who does each, and what forms or approvals are involved].

For each step, ask: who benefits, what risk it addresses, and what would happen if it were removed. Use only the text I gave. If the answer is unknown, write "unknown" and tell me who I should ask. Then group steps into: clearly valuable, unclear, and candidates for removal or automation. Do not assume any rule or standard applies unless I have pasted its text: [paste rule text, or write "none known"]. List what you are unsure of.
```

**Syfte: planera ett retrospektiv kring de vägledande principerna.**

```text
Plan a 45-minute retrospective for a team of [number] people using ITIL's seven guiding principles as the frame.

The period we are reviewing: [period]. What happened, in a few sentences: [describe].

Give a timed agenda that has each person pick one principle we followed well and one we neglected with an example, groups the answers, and ends with exactly one agreed change with an owner and a date. Add three prompts a facilitator can use. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## AI-färdigheter

- [agile-principles](../../../../skills/agile-principles/SKILL.md): använd för att jämföra ett arbetssätt med de agila principerna vid sidan av ITIL:s.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla ett retrospektiv som granskar teamet mot principerna.
- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera små, iterativa förbättringar efter en principgranskning.
- [decision-records](../../../../skills/decision-records/SKILL.md): använd för att registrera beslut och de avvägningar mellan principer som ledde till dem.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att analysera en process efter steg som inte tillför värde.

## Viktiga källor

- **ITIL** (Wikipedia): listar de sju vägledande principerna och ramverkets historia.
- **ITIL 4 Foundation** (PeopleCert): ägarens sida som nämner de vägledande principerna bland de studerade ämnena.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): den agila motsvarigheten, kort nog att läsa bredvid ITIL:s principer.
- **ITIL certifications** (PeopleCert): ägarens aktuella katalog, användbar för att hitta de publikationer som ger den exakta texten.

## Referenser

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
