# Hantering av servicenivåer

**Hantering av servicenivåer gör vad användare behöver till mål som ett team kan mäta och försvara, och den mest användbara formen för agila team är ett litet antal användarfokuserade mål med en uttrycklig budget för misslyckande.**

## Varför detta är viktigt

Varje tjänst har en kvalitetsnivå, oavsett om någon har mätt den eller inte. Om den inte anges antar användare en och teamet en annan, och gapet upptäcks under ett avbrott. Hantering av servicenivåer är arbetssättet att ange nivån, mäta den och agera på resultaten. Det ger ett team något att styra efter och ger kunder något att förlita sig på.

Agila team motsätter sig ofta servicenivåer eftersom de förknippar dem med kontrakt och viten. Ändå fattar ett agilt team som släpper varje vecka ett beslut, vetande eller inte, om hur mycket risk det ska ta med tillgängligheten. Ett tydligt mål gör det beslutet uttryckligt. Googles bok *Site Reliability Engineering*, i sitt kapitel om servicenivåmål, beskriver hur man gör detta på ett sätt som passar snabbrörliga team: välj några få indikatorer som betyder något för användare, sätt mål och använd utrymmet mellan perfekt och acceptabelt, felbudgeten, för att avgöra när man ska släppa.

Det här ämnet kombinerar det kapitlet med [Wikipedia-artikeln om servicenivåavtal](https://en.wikipedia.org/wiki/Service-level_agreement) för definitioner av avtal, och med allmänt använt ITIL-ordförråd som den här guiden inte kunde bekräfta mot ramverksägarens text. SRE-kapitlet speglar en organisations praxis och argumenterar för ett särskilt angreppssätt; läs det som ett väl förklarat alternativ, inte en universell regel.

## Centrala begrepp

### Indikator, mål, avtal

SRE-kapitlet skiljer tre termer som ofta blandas ihop:

| Term | Betydelse | Exempel |
|---|---|---|
| **Servicenivåindikator (SLI)** | Ett noggrant definierat kvantitativt mått på någon aspekt av servicenivån | Andelen välformade förfrågningar som lyckas |
| **Servicenivåmål (SLO)** | Ett målvärde eller intervall för en SLI | Minst 99,9 % av förfrågningarna lyckas under en månad |
| **Servicenivåavtal (SLA)** | Ett uttryckligt eller underförstått avtal med användare som inkluderar följder för att uppfylla eller missa målen, oftast ekonomiska | En återbetalning om tillgängligheten faller under en angiven nivå |

Kapitlets test för att skilja ett SLA från ett SLO är om det finns en uttrycklig följd. Om inte är det ett SLO. Exempelsiffrorna i tabellen är illustrationer, inte rekommendationer.

Wikipedia-artikeln beskriver ett SLA som ett avtal, vanligen ett bindande kontrakt, mellan en leverantör och en kund som definierar aspekter av tjänsten som kvalitet, tillgänglighet och ansvar. Den listar typiskt innehåll: en beskrivning av tjänsten, prestandanivåer, övervakning och rapportering, hur problem rapporteras, svars- och lösningstider samt följder vid utebliven prestation. Den nämner vanliga mått som genomsnittlig tid mellan fel, genomsnittlig tid till reparation, drifttid, lösning vid första samtalet och genomloppstid. Den noterar att stora organisationer ofta använder interna SLA mellan enheter. Den beskriver typer efter omfattning: kundbaserade, tjänstebaserade och flernivåer.

### Att välja indikatorer

SRE-kapitlet råder att välja några få indikatorer som speglar vad användare bryr sig om, inte varje mått ni kan följa. Användarvända system fokuserar vanligtvis på tillgänglighet, latens och genomströmning. Lagringssystem lägger till hållbarhet, och alla system bör följa korrekthet. Det föreslår att mätning på klientsidan kan fånga problem som mått på serversidan missar. En praktisk följd för tjänsteteam: börja med användarens upplevelse, som "jag kan boka en tid och det tar några sekunder", och hitta sedan en indikator som approximerar den.

### Medelvärden döljer smärta

Kapitlet argumenterar mot att förlita sig på medelvärden: "De flesta mått bör ses som fördelningar snarare än medelvärden." Höga percentiler, som den 99:e eller 99,9:e, visar rimliga värsta fall, medan medianen visar det typiska fallet. Medelvärden kan dölja en lång svans av långsamma förfrågningar. Om ert mått är ett medelvärde kan några få användare ha det mycket dåligt utan att talet rör sig.

### Att välja mål

Kapitlets vägledning om mål är direkt och användbar:

- **Börja från användarna.** "Börja med att tänka på (eller ta reda på!) vad dina användare bryr sig om, inte vad du kan mäta."
- **Förankra inte i nuvarande prestanda.** Att välja ett mål utifrån vad ni uppnår nu kan låsa in hjälteinsatser.
- **Håll det enkelt.** Komplicerade aggregeringar skymmer förändringar och är svårare att resonera om.
- **Undvik absoluta mål.** Löften om "alltid" tillgänglig är orealistiska.
- **Ha så få SLO som möjligt.** Var och en bör vara värd att försvara i en prioritetsdiskussion.
- **Perfektion kan vänta.** Det är bättre att börja med ett löst mål som ni skärper än ett som senare måste lättas.

### Felbudgetar

Kapitlet säger att kräva 100 % efterlevnad är orealistiskt och bromsar innovation. I stället tillåter team en **felbudget (error budget)**: den takt med vilken ett SLO får missas, följd dagligen, veckovis eller månadsvis. Budgeten informerar beslut om releaser. När det finns gott om budget kvar kan ett team ta mer risk med ändring; när den nästan är slut saktar teamet ned ändringar och investerar i tillförlitlighet. Detta ger agila team och drift ett gemensamt, numeriskt sätt att argumentera om fart mot stabilitet, i stället för argument genom auktoritet.

### Att sätta förväntningar

Kapitlet noterar att publicera ett SLO sätter användarnas förväntningar. Team kan behålla en säkerhetsmarginal med ett strängare internt mål. Det varnar också för att överprestera, eftersom användare kommer att bero av den prestanda de observerar. Om en tjänst är långt bättre än sitt angivna mål kommer användare att bygga på det, och målet skyddar inte längre teamet.

### Reglerslingan

Kapitlet beskriver SLI och SLO som basen för en reglerslinga: övervaka SLI, jämför dem med SLO, avgör om åtgärd behövs, räkna ut vilken åtgärd som möter målet och utför den. Utan ett SLO kan ett team inte avgöra om eller när det ska agera (se Ämne 3.10 — Övervakning och händelsehantering).

### Interna och externa avtal

Ett SLA är mellan en leverantör och en kund. Inom en leverantör är team beroende av varandra och av leverantörer. Wikipedia-artikeln nämner att SLA kan stödjas av driftavtal (operational-level agreements, OLA) men förklarar dem inte. I ITIL-ordförråd är ett OLA ett avtal mellan interna team som stöder ett SLA, och ett stödjande avtal (underpinning contract) är motsvarigheten med en extern leverantör. Källorna som lästs här bekräftar inte dessa definitioner, så kontrollera dem mot ITIL-publikationer. Den praktiska poängen är att ett löfte till en kund bara är så gott som löftena bakom det (se Ämne 3.14 — Leverantörshantering).

### Förväntade servicenivåer i Kanban

I Kanban är en **förväntad servicenivå (service level expectation)** en prognos för hur lång tid ett arbetsobjekt bör ta, baserad på tidigare cykeltider (se Ämne 1.5 — Kanban). Den är inget avtal, men den tjänar ett liknande syfte för arbetsobjekt och kan mata mål för förfrågningar och incidenter.

## Bästa praxis

1. **Börja med vad användare behöver.** Fråga användare och kunder vad som betyder mest och vad som gör ont när det fallerar. Skriv det med deras ord innan ni väljer ett mått.
2. **Välj några få indikatorer.** För varje tjänst, välj två till fyra indikatorer som speglar användarupplevelsen, som andel lyckade och hastighet. Motstå att lägga till fler tills ni har använt dessa.
3. **Använd percentiler för hastighet.** Mät den långsamma änden av fördelningen, inte bara medelvärdet, så att användare med en dålig upplevelse syns.
4. **Sätt lösa mål först, skärp sedan.** Börja med ett mål ni kan möta och försvara, och skärp det när ni har data och tillit. Detta följer kapitlets råd att perfektion kan vänta.
5. **Kopiera inte nuvarande prestanda.** Om er tjänst är utmärkt nu, sätt inte ett mål på den nivån om inte användare behöver det. Ett lösare mål ger utrymme för förändring och undviker hjälteinsatser.
6. **Kom överens om en felbudget och använd den.** Definiera hur mycket misslyckande som är acceptabelt under en period och låt den återstående budgeten vägleda releasebeslut. Granska den vid ett regelbundet möte med leverans och drift tillsammans.
7. **Skriv avtalet i enkla ord.** Ett SLA bör säga vad som tillhandahålls, hur det mäts, hur problem rapporteras, vad som händer när mål missas och när det granskas. Undvik termer som bara en jurist eller ingenjör kan läsa.
8. **Skilj mål från avtal.** Behåll interna mål som är strängare än de avtal ni skriver under. Marginalen ger er utrymme att reagera innan ni är skyldiga något.
9. **Vet vad ert löfte beror på.** Lista de team och leverantörer som er servicenivå förlitar sig på och kontrollera att deras åtaganden stöder era.
10. **Rapportera i en form kunder kan använda.** Dela resultat regelbundet, med en kort kommentar om vad som hände och vad ni gör. Undvik instrumentpaneler utan kommentarer.
11. **Granska mål med kunder.** Minst varje år, fråga om nivåerna fortfarande stämmer med vad kunderna behöver och vad ni kan leverera. Ändra dem när svaret är nej.
12. **Använd inte servicenivåer för att straffa människor.** Använd dem för att inleda samtal och beslut. Ett mål som används som ris kommer att fuskas med (se Ämne 5.6 — Mått och mätning).

## Frågor att diskutera med teamet

**Hur ser en bra dag ut för våra användare, och hur skulle vi veta det?**

Be teamet beskriva, med användarens ord, vad en bra upplevelse av tjänsten är. Fråga sedan vad vi mäter som motsvarar den. Ofta beskriver måtten vi har våra system och inte användarens upplevelse. Facilitatorn kan fråga om vi skulle märka det om en grupp användare hade en dålig dag. Välj en indikator att lägga till eller ändra.

**Har vi ett tal vi lovar eller siktar på, och vem gick med på det?**

Lista de mål som finns, formellt eller informellt. Fråga för var och ett vem som satte det, när och på vilken grund. Många mål visar sig ha satts av vana eller av någon som slutat. Diskutera vilka som bör bekräftas, ändras eller släppas. Kom överens om vem som äger var och ett.

**Hur mycket misslyckande har vi råd med, och vad skulle vi göra med utrymmet?**

Introducera idén om en felbudget. Fråga vilken nivå av otillgänglighet användare skulle tolerera och vad teamet kunde göra med utrymmet, som snabbare releaser. Syftet är att se avvägningen i tal. Räkna inte med precisa svar; be om en första gissning att pröva.

**Var döljer våra medelvärden dåliga upplevelser?**

Titta på ett mått som rapporterar ett medelvärde. Fråga vad den långsammaste procenten av användare upplever. Om ni inte vet, diskutera hur ni tar reda på det. Ofta har en liten grupp användare eller en särskild tid på dygnet en mycket sämre upplevelse. Planera att titta på en percentil under en månad.

**Vad är vi beroende av som vi inte har frågat om?**

Lista de tjänster, leverantörer och team er tjänst förlitar sig på. Fråga för var och en vad de har lovat och hur ni skulle veta om de missade det. Många beroenden har ingen angiven nivå. Välj det viktigaste och inled ett samtal.

**När ändrades ett mål senast, och vad utlöste det?**

Fråga efter den senaste ändringen. Om den var länge sedan, fråga vad som har förändrats i användarnas behov eller i teamets förmåga sedan dess. Diskutera en regelbunden granskning. Goda utlösare är nya användarbehov, incidenter som avslöjade ett orealistiskt mål eller en förändring i arkitekturen.

## I praktiken: ett agilt ITIL-exempel

En nationell lotteriaktör driver en nätbaserad biljettförsäljningstjänst. Ett team på tolv bygger och driver den. Verksamheten har en informell regel att tjänsten måste vara "alltid uppe", medan teamet släpper två gånger i veckan och har haft fyra korta avbrott på ett år. Efter en dålig helg kräver den ansvarige sponsorn "100 % tillgänglighet", och teamledaren oroar sig för att detta ska avsluta de täta releaserna.

Teamledaren och sponsorn håller en workshop med chefen för kundtjänst. De frågar vad som är viktigt för spelare. Svaret är att spelare måste kunna köpa en biljett under timmen innan en dragning stänger; utanför den timmen kan tjänsten ligga nere i minuter utan skada. De definierar en indikator: andelen köpförsök som lyckas under de två timmarna innan varje dragning stänger. De sätter ett mål som teamet tror att det kan möta, något under dess senaste prestanda, och kommer överens om en felbudget för varje månad. De kommer också överens om att när budgeten nästan är slut stoppas releaser som rör köp till nästa månad, och teamet investerar i tillförlitlighet.

Tre månader senare används budgeten upp en gång, under en månad med ett fel hos betalningsleverantören, och teamet pausar riskabla releaser i två veckor utan konflikt. Målet ger teamet och sponsorn ett gemensamt sätt att tala. Vissa svårigheter återstår. Betalningsleverantörens egna åtagande är svagare än teamets mål, så teamets löfte beror på en leverantör som inte har gått med på det. Måttet ignorerar också en långsam kassasida som användare klagar på, eftersom det bara räknar lyckade. Teamet lägger till en hastighetsindikator vid den 99:e percentilen och inleder samtal med leverantören om dess servicenivåer.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam bör hjälpa till att välja indikatorer och använda felbudgeten i planeringen. Bygg in mätningen i tjänsten så att talen är pålitliga. Behandla en förbrukad budget som ett skäl att arbeta med tillförlitlighet, inte som ett straff.

### Tjänste- och driftteam

Driftteam driver vanligtvis övervakningen och rapporterar om nivåer. Håll uppsättningen mått liten, visa dem med kommentarer och ta med data till planeringssamtal. För en lista över vad er tjänst beror på och kontrollera att åtaganden stämmer.

### Ledning och styrning

Ledare och sponsorer sätter förväntningar. Undvik att be om perfektion; fråga vad användare behöver och vad avvägningen kostar. Stöd användningen av en felbudget som en gemensam regel och se till att den gäller era egna önskemål också. Granska servicenivåer med kunder enligt schema.

### Kunder och användare

Kunder och användare har nytta när servicenivån är angiven och uppfylls. Säg vad som är viktigt för dig, inklusive när. Be om rapporter i en form du kan förstå och tala om för leverantören när den angivna nivån inte längre passar dina behov.

## Vanliga orsaker till misslyckande

- **För många mått.** Ingen vet vilket som betyder något. Välj i stället några få som speglar användarupplevelsen.
- **Bara medelvärden.** En grupp användare lider medan medelvärdet ser bra ut. Inkludera i stället ett mått med hög percentil.
- **Mål kopierade från nuvarande prestanda.** Teamet låses in i hjälteinsatser. Sätt i stället mål utifrån användarbehov och skärp med data.
- **Att kräva 100 procent.** Releaser upphör och innovationen saktar. Kom i stället överens om en felbudget och en regel för att använda den.
- **Löften ni inte kan stå för.** Servicenivån beror på leverantörer som inte gått med på det. Kontrollera i stället beroenden och samordna åtaganden.
- **Avtal som ingen läser.** Villkoren är på juridiska termer. Skriv i stället enkelt och granska med kunder.
- **Instrumentpaneler utan kommentarer.** Tal rapporteras utan innebörd. Lägg i stället till en kort förklaring av vad som hände och vad som kommer att förändras.
- **Att straffa missar.** Människor döljer problem. Använd i stället missar för att utlösa beslut och lärande.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Definiera nivåer | Nivåer antas eller är informella | Vissa tjänster har angivna mål | Varje tjänst har användarbaserade indikatorer och mål med ägare | Mål granskas mot användarbehov och data | Nivåer sätts gemensamt med kunder och leverantörer |
| Mätning | Mått är ad hoc | Vissa indikatorer mäts | Indikatorer mäts pålitligt, inklusive percentiler | Mätningens kvalitet granskas och gap åtgärdas | Mätning delas och valideras mellan team och leverantörer |
| Användning av felbudgetar | Misslyckande är oplanerat | Vissa team diskuterar acceptabelt misslyckande | Budgetar vägleder releasebeslut för nyckeltjänster | Budgetanvändning granskas och regler justeras | Budgetar samordnas mellan beroende tjänster |
| Avtal och beroenden | Löften är informella | Vissa avtal finns | Avtal är på enkla ord, med kända beroenden | Avtal och leverantörsåtaganden kontrolleras mot resultat | Avtal bildar en konsekvent kedja mellan team, leverantörer och kunder |

## Checklista

- [ ] För varje tjänst har vi beskrivit med användarens ord hur bra ser ut.
- [ ] Varje tjänst har två till fyra indikatorer som speglar användarupplevelsen.
- [ ] Minst ett hastighetsmått använder en hög percentil, inte bara ett medelvärde.
- [ ] Mål är satta utifrån användarbehov, inte bara utifrån nuvarande prestanda.
- [ ] En felbudget finns och vägleder releasebeslut för minst en tjänst.
- [ ] Avtal är skrivna på enkla ord och granskade med kunder.
- [ ] Beroenden av andra team och leverantörer är listade med deras åtaganden.
- [ ] Resultat rapporteras regelbundet med kommentarer.
- [ ] Mål granskas minst en gång per år.
- [ ] Servicenivådata används i planering och inte som ris.

## AI-prompter

**Syfte: göra användarbehov till kandidatindikatorer och -mål.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: analysera om medelvärden döljer dåliga upplevelser.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Syfte: utarbeta en disposition för ett servicenivåavtal på enkla ord.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: planera en policy för felbudget.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): använd för att utarbeta eller granska ett avtal på enkla ord.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): använd för att välja och tolka mått på leverans- och tjänsteprestanda.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): använd för att välja tidiga varningsindikatorer som visar att en servicenivå är i fara.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att kontrollera att kapaciteten stöder de nivåer ni lovar.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att samordna leverantörsåtaganden med de nivåer ni erbjuder.

## Viktiga källor

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): den tydligaste offentliga förklaringen av indikatorer, mål, avtal, percentiler och felbudgetar.
- **Service-level agreement** (Wikipedia): definitionen, typiskt innehåll, typer och historia för SLA.
- **DORA's software delivery performance metrics** (dora.dev): relaterade mått på leveransfart och stabilitet.
- **Quality of service** (Wikipedia): bakgrund om hur tjänstekvalitet beskrivs och mäts.

## Referenser

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
