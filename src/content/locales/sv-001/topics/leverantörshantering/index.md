# Leverantörshantering

**Leverantörshantering ser till att de externa parter en tjänst beror på väljs med omsorg, hålls till tydliga förväntningar och behandlas som en del av tjänsten, eftersom ett löfte till era kunder bara är så starkt som löftena bakom det.**

## Varför detta är viktigt

Nästan ingen modern tjänst byggs och drivs av ett enda team. Den beror på molnplattformar, programvaruleverantörer, betalningsförmedlare, nätoperatörer, konsulter och specialistpartner. När en av dem fallerar skiljer kunden inte på ert fel och deras. Deras avbrott är ert, och det är arbetet med att förklara det också.

Agila team tar lätt leverantörer i bruk: ett kreditkort, några rader konfiguration, och en ny förmåga körs. Den farten är värdefull, och den skapar ett gap. Ingen kanske har frågat vad som händer om leverantörens tjänst försämras, ändrar sina villkor eller läggs ned. Ingen kanske vet vem som äger relationen. Leverantörshantering är arbetssättet att täppa till det gapet i proportion till risken, utan att göra varje inköp till ett projekt.

[Wikipedia-artikeln om leverantörsrelationshantering](https://en.wikipedia.org/wiki/Supplier_relationship_management) beskriver den systematiska, företagsövergripande bedömningen av leverantörers styrkor, prestanda och förmågor, i linje med affärsstrategin, och noterar att dess källunderlag är tunt och daterat, med flera referenser från 2009 till 2012. [Artikeln om tjänsteintegration och -hantering](https://en.wikipedia.org/wiki/Service_integration_and_management) beskriver ett angreppssätt för organisationer som använder flera leverantörer. Det här ämnet kombinerar dem med guidens andra ämnen och med praxis som är vanlig inom tjänstehantering, och säger när det gör det sistnämnda.

## Centrala begrepp

### Leverantörsrelationshantering

Enligt Wikipedia samordnar leverantörsrelationshantering (supplier relationship management, SRM) interaktioner med leverantörer genom hela relationens livscykel, med syftet att bygga tvåvägspartnerskap med strategiska leverantörer, på ett sätt som är analogt med kundrelationshantering. Artikeln gör flera poänger som är användbara för tjänsteteam:

- **Segmentera leverantörer.** Leverantörer segmenteras efter total potentiellt värde över flera dimensioner, inte bara utgifter, och efter graden av risk som påverkar det värdet. Artikeln kritiserar ett "en storlek passar alla"-angreppssätt.
- **Mät prestanda åt båda håll.** Organisationer använder gemensamma, tvåvägs balanserade styrkort med kvantitativa och kvalitativa mått, och vissa använder 360-gradersstyrkort som också undersöker leverantörerna.
- **Samarbeta.** Gemensamma aktiviteter omfattar leverantörstoppmöten, ledningsmöten, gemensam affärsplanering, operativa genomgångar och gemensam efterfrågeprognos. Artikeln hävdar att gemensam prognos och omkonstruktion av processer har frigjort besparingar på 10 till 30 procent för ledande organisationer, men artikeln har underhållsmärken för svag formulering och saknade källhänvisningar, så behandla siffran som ett påstående, inte ett fynd.

### Varför segmentering är viktig

Ni kan inte hantera varje leverantör nära. En användbar segmentering ställer två frågor: hur mycket beror tjänsten på denna leverantör, och hur svårt skulle det vara att ersätta dem? Ett grovt rutnät följer.

| Beroende och utbytbarhet | Exempel | Angreppssätt |
|---|---|---|
| **Kritisk och svår att ersätta** | Molnplattformen, betalningsförmedlaren | Nära relation: namngiven ägare, regelbundna genomgångar, gemensam planering, utträdes- och kontinuitetsplaner |
| **Viktig men utbytbar** | Ett övervakningsverktyg, en meddelandetjänst | Regelbunden genomgång, tydliga servicenivåer och en plan för att byta vid behov |
| **Rutin och lätt att ersätta** | Kontorsmaterial, ett mindre bibliotek | Lätt avtal och periodisk kontroll |

Rutnätet är den här guidens illustration, inte från en källa.

### Leverantörsprestanda och den tjänst ni lovar

Era servicenivåer beror på era leverantörers (se Ämne 3.7 — Hantering av servicenivåer). Om ni lovar 99,9 procents tillgänglighet och er enda molnleverantör lovar mindre, går räkneexemplet inte ihop. Leverantörshantering omfattar att jämföra vad leverantörer har förbundit sig till med vad ni har lovat, och att utforma kring gapet med redundans eller genom att justera ert eget löfte.

I ITIL-ordförråd kallas ett avtal med en extern leverantör som stöder ett servicenivåavtal ett stödjande avtal (underpinning contract), och ett avtal mellan interna team som stöder det kallas ett driftavtal (operational-level agreement). Källorna som lästs för den här guiden definierar inte dessa, så kontrollera ITIL-publikationer för de exakta termerna.

### Miljöer med flera leverantörer och SIAM

Artikeln om tjänsteintegration och -hantering (service integration and management, SIAM) beskriver ett angreppssätt för att hantera flera leverantörer och integrera dem i en enda, verksamhetsvänd tjänst. Den noterar att organisationer allt oftare skaffar IT-förmågor från flera externa leverantörer, en modell som kallas multisourcing, vilket kan minska kostnader och uppmuntra konkurrens men lägger till hanteringsarbete och gör tjänstehantering från början till slut svårare. En **tjänsteintegratör (service integrator)** ger styrning och samordning så att leverantörer arbetar tillsammans.

Artikeln listar fyra modeller för integratören (intern, ledande leverantör, extern och hybrid) och tre skikt: kundorganisationen, tjänsteintegratören och tjänsteleverantörerna. Den säger att SIAM uppstod omkring 2005 inom den brittiska offentliga sektorn, först utformad för Department for Work and Pensions, och listar milstolpar inklusive en kunskapsbas 2016 och revideringar 2019 för COBIT 2019 och ITIL 4. Den noterar att ITIL ger en grund och ett gemensamt språk för arbete med leverantörer men inte behandlar miljöer med flera leverantörer på djupet. Genomförandeutmaningar den listar omfattar osamordnade servicenivåavtal, leverantörer som skyller på varandra, oklart ägarskap av beslut om grundorsaker och kommunikationsgap.

Få agila team behöver en formell SIAM, men lärdomarna är användbara: när flera parter bidrar till en tjänst måste någon äga helheten, komma överens om hur problem hanteras över gränserna och hålla leverantörernas servicenivåer förenliga med varandra.

### Avtal och agilitet

Avtal kan hjälpa eller hindra agilt arbete. Avtal med fast omfattning och fast pris passar dåligt med att lära sig längs vägen (se Ämne 1.1 — Det agila manifestet om kundsamarbete framför kontraktsförhandling). Avtal som tillåter förändring, med tydliga sätt att justera omfattning och mäta värde, passar bättre. Ett avtal måste också täcka sådant som tjänstehantering bryr sig om: servicenivåer, supporttider, incidenthantering, dataskydd, säkerhetsskyldigheter, granskningsrätt, utträde och kontinuitet. Era kollegor inom juridik och inköp bör leda när det gäller de juridiska villkoren.

### Risk

Leverantörer medför risker: fel, ändrade villkor eller priser, säkerhetsbrister, koncentration till en enda leverantör, inlåsning och leverantörens egna beroenden. SRM-artikeln listar minskad risk för fel som ett syfte utan att beskriva metoder. Praktiska åtgärder omfattar att känna till leverantörens egna kontinuitetsarrangemang, sprida kritiska beroenden, hålla data portabla och öva utträde (se Ämne 3.12 — Hantering av tjänstekontinuitet och Ämne 3.13 — Informationssäkerhetshantering).

### Relation, inte bara avtal

SRM-artikeln betonar tvåvägspartnerskap. Leverantörer som förstår era planer kan hjälpa; leverantörer som behandlas bara som källor till fakturor kommer inte att göra det. Dela prognoser, ta med dem i incidentgranskningar som rör dem och lyssna på deras återkoppling om ert beteende, som sena betalningar eller oklara önskemål.

### Källornas gränser

SRM-artikeln ger inga urvalskriterier, avtalsklausuler eller genomförandetidslinjer. SIAM-artikeln har inget kritikavsnitt. Båda är allmänna. För juridiska och ekonomiska villkor, förlita er på era inköps- och juridikfunktioner och på själva avtalet.

## Bästa praxis

1. **Lista era leverantörer och vad ni är beroende av dem för.** Ta med moln, programvara, nät, betalning och konsulter. Notera för var och en vilken tjänst den stöder och vem i ert team som äger relationen.
2. **Segmentera efter beroende och utbytbarhet.** Avgör vilka få leverantörer som är kritiska och investera er uppmärksamhet där. Behåll en lätt hand för resten.
3. **Utse en ägare för varje viktig leverantör.** En person bör känna till avtalet, kontakterna, prestandan och planerna. Utan ägare förfaller relationer.
4. **Kontrollera att leverantörsåtaganden stöder era löften.** Jämför vad varje kritisk leverantör har förbundit sig till med vad ni har sagt till kunder. Täpp till gapet genom design, genom förhandling eller genom att ändra ert löfte.
5. **Kom överens om incidenthantering i förväg.** Vet hur ni rapporterar ett problem till leverantören, hur fort de svarar, vem som kan eskalera och hur de kommer att kommunicera. Pröva vägen innan ni behöver den.
6. **Ta med säkerhet och dataskydd.** Fråga leverantörer hur de skyddar er information och vad de kommer att berätta efter ett intrång. Lägg det i avtalet, tillsammans med juridik.
7. **Planera för utträde och fel.** För kritiska leverantörer, håll data portabla, känn till alternativ och skriv en kort plan för leverantörens fel eller ert avträdande. Öva den del ni kan.
8. **Granska prestanda tillsammans.** Håll regelbundna genomgångar med kritiska leverantörer, dela data åt båda håll och kom överens om åtgärder. Fråga leverantören hur ni kunde bli en bättre kund.
9. **Ta med leverantörer i lärandet.** Bjud in dem till incidentgranskningar och planeringssessioner som rör dem. Dela lärdomar som hjälper dem att hjälpa er.
10. **Gör avtal flexibla där lärande förväntas.** För utvecklingsarbete, föredra avtal som tillåter att omfattningen ändras, med tydliga granskningspunkter, framför löften med fast omfattning. Håll tjänsteåtagandena fasta.
11. **Använd en integratör när många leverantörer bidrar.** För en tjänst som beror på flera leverantörer, utse vem som äger helhetsresultatet och hur problem mellan leverantörer löses. Lämna det inte åt kunden.
12. **Granska leverantörsportföljen regelbundet.** En gång om året, kontrollera vilka leverantörer som fortfarande behövs, vilka som är koncentrerade risker och vilka som är billigare eller bättre någon annanstans.

## Frågor att diskutera med teamet

**Vilka leverantörer kunde stoppa vår tjänst om de fallerade, och vad skulle vi göra?**

Be varje person nämna de beroenden de skulle oroa sig mest för. Sammanställ listan och markera var och en som kritisk, viktig eller rutin. Fråga för varje kritisk vad teamet skulle göra under den första timmen av ett fel. Typiska svar avslöjar gap i kontakter, alternativ och data. Välj en att planera för.

**Vad har våra leverantörer lovat oss, och vad har vi lovat våra kunder?**

Lägg de två sida vid sida för en nyckeltjänst. Där leverantörens löfte är svagare är kundlöftet i fara. Facilitatorn kan fråga om någon har läst leverantörens servicenivåer nyligen. Kom överens om ett gap att täppa till.

**Vem äger varje viktig leverantörsrelation?**

Gå nedför listan och utse en ägare för var och en. Gap är vanliga: personen som skrev under avtalet har slutat, eller ett verktyg köptes med kort och ingen hanterar det. Fråga vad ägaren skulle behöva för att göra jobbet, som tid och en kontakt. Tilldela ägare där de saknas.

**Hur får vi veta om ett leverantörsproblem, och hur talar vi om det för våra användare?**

Följ senaste gången en leverantör hade ett avbrott. Fråga hur ni fick veta om det, hur lång tid det tog och vad ni sa till kunderna. Diskutera statussidor, kontakter och överenskomna kanaler. Planera en förbättring, som en prenumeration på leverantörens statusflöde eller en namngiven eskaleringskontakt.

**Vad skulle krävas för att lämna den här leverantören, och skulle vi någonsin vilja det?**

För en kritisk leverantör, fråga om dataexport, alternativa produkter och avtalsvillkor. Team finner ofta inlåsning de inte avsåg. Diskutera hur den kan minskas där risken motiverar kostnaden. Registrera en kort utträdesanteckning.

**Vet våra leverantörer vad vi planerar, och vet vi vad de planerar?**

Fråga när varje kritisk leverantör senast hörde om era planer, och när ni senast hörde om deras. Överraskningar åt endera hållet orsakar problem. Diskutera ett regelbundet samtal. Kom överens om en leverantör att börja med.

## I praktiken: ett agilt ITIL-exempel

En regional nyhetsutgivare driver en nyhetsapp och webbplats med ett team på fjorton. Tjänsten beror på en molnleverantör, ett innehållsleveransnät, en tjänst för pushnotiser, ett verktyg för kommentarsmoderering och ett litet företag som levererar en widget för liveblogg. När liveblogg-leverantörens tjänst fallerade under en valnatt visade appen fel i två timmar och utgivarens anseende led. Ingen i teamet kunde säga vem leverantörens kontakt var; widgeten hade lagts till av en utvecklare som sedan dess hade gått vidare.

Plattformschefen leder en granskning. Teamet listar alla leverantörer och sorterar dem efter hur mycket tjänsten beror på dem och hur lätt var och en kunde ersättas. Molnleverantören och innehållsleveransnätet är kritiska, och notistjänsten och widgeten är viktiga men utbytbara. Var och en får en ägare i teamet. För widgetleverantören skaffar teamet kontakter, läser villkoren och finner att ingen servicenivå utlovas. De beslutar att behålla leverantören men lägga till en reservlösning: om widgeten inte laddas visar sidan en statisk länk till liveblogg. För molnleverantören jämför de dess åtaganden med den tillgänglighet de har lovat utgivarens redaktörer och finner ett gap i en region, som de täpper till genom att sprida tjänsten över två.

Sex månader senare upptäcks ett andra avbrott hos notisleverantören av övervakningen på minuter, ägaren tar upp det med leverantören via den överenskomna vägen, och appen fortsätter fungera med försenade notiser. Svårigheter återstår. Redaktörerna vill att liveblogg-widgeten ska göra mer, men leverantören är för liten för att förbinda sig till en servicenivå, och utgivarens inköpsregler gör ett byte långsamt. Plattformschefen kommer överens med inköp om att köra en liten prövning av ett alternativ och att granska leverantörslistan varje år.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam väljer och integrerar många leverantörer. Registrera varje beroende när ni lägger till det, utse en ägare och fråga om servicenivåer och utträde innan ni förlitar er på det. Bygg reservlösningar för de fel ni kan föreställa er.

### Tjänste- och driftteam

Driftteam har att göra med leverantörer i incidenter. Håll kontakter och eskaleringsvägar aktuella, pröva dem och registrera leverantörsprestanda. För detta belägg till genomgångar och till inköp.

### Ledning och styrning

Ledare och inköp formar villkoren och relationen. Be om en lista över kritiska leverantörer och deras risker, stöd flexibla avtal för lärandebaserat arbete och se till att avtalet täcker servicenivåer, säkerhet och utträde. Fråga vem som äger helhetsresultatet när många leverantörer bidrar.

### Kunder och användare

Kunder och användare förlitar sig på hela kedjan, inte på någon enskild länk. Fråga leverantörer vilka underleverantörer som betyder något för tjänsten du använder och hur de skyddar den. När något går fel, förvänta dig ärlighet om vilken del som fallerade och vad som görs.

## Vanliga orsaker till misslyckande

- **Dolda beroenden.** Ett verktyg som lagts till av en utvecklare blir kritiskt, och ingen äger det. Registrera i stället varje beroende och utse en ägare.
- **En storlek passar alla.** Varje leverantör får samma tunga process, eller ingen får någon. Segmentera i stället efter beroende och utbytbarhet.
- **Löften som inte går ihop.** Kundlöftet är starkare än leverantörens. Jämför i stället åtaganden och täpp till gapet.
- **Ingen prövad väg.** Leverantörens supportlinje hittas under ett avbrott. Kom i stället överens om och pröva kontakter och eskalering i förväg.
- **Inlåsning av misstag.** Data kan inte exporteras. Kontrollera i stället portabilitet tidigt och registrera en utträdesanteckning.
- **Bara avtal, ingen relation.** Leverantören är en främling när problem kommer. Håll i stället regelbundna genomgångar och dela planer.
- **Ingen äger helheten.** Flera leverantörer skyller på varandra. Utse i stället en integratör för tjänsten från början till slut och kom överens om hantering mellan leverantörer.
- **Avtal med fast omfattning för osäkert arbete.** Avtalet motarbetar lärande. Använd i stället avtal som låter omfattningen ändras inom tydliga gränser.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Känna leverantörer | Leverantörer är kända av individer | Vissa team listar sina leverantörer | En gemensam lista med beroende, utbytbarhet och ägare | Listan granskas mot incidenter och ändringar | Listan delas mellan team och länkas till tjänster |
| Åtaganden och service | Leverantörers servicenivåer är okända | Nyckelleverantörers villkor läses | Leverantörsåtaganden jämförs med kundlöften | Leverantörsprestanda mäts och granskas | Åtaganden samordnas genom kedjan med gemensam granskning |
| Incidenter och risk | Leverantörsproblem upptäcks av en slump | Vissa kontakter är kända | Eskaleringsvägar är överenskomna och prövade; risker registreras | Leverantörsincidenter och -risker följs och åtgärdas | Incidenthantering och riskplaner är gemensamma med leverantörer |
| Relation och utträde | Leverantörer är transaktionella | Vissa leverantörsmöten | Regelbundna genomgångar med kritiska leverantörer och korta utträdesanteckningar | Relationens hälsa och utträdesberedskap granskas | Leverantörer deltar i planering och förbättring |

## Checklista

- [ ] Vi har en lista över leverantörer och vad var och en stöder.
- [ ] Leverantörer är sorterade efter beroende och utbytbarhet.
- [ ] Varje viktig leverantör har en namngiven ägare.
- [ ] Vi har jämfört leverantörsåtaganden med våra kundlöften för nyckeltjänster.
- [ ] Eskaleringskontakter och -vägar för kritiska leverantörer är kända och prövade.
- [ ] Förväntningar på säkerhet och dataskydd finns i avtalet eller är överenskomna skriftligen.
- [ ] En kort utträdes- eller felanteckning finns för varje kritisk leverantör.
- [ ] Vi håller regelbundna genomgångar med kritiska leverantörer.
- [ ] Där flera leverantörer bidrar äger någon helhetsresultatet.
- [ ] Leverantörslistan granskas minst en gång om året.

## AI-prompter

**Syfte: bygga en leverantörs- och beroendelista utifrån det ni vet.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: jämföra leverantörsåtaganden med era kundlöften.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Syfte: förbereda ett leverantörsgenomgångsmöte.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: utarbeta en kort utträdesanteckning för en kritisk leverantör.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att planera urval, granskning och relationen med en leverantör.
- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera leverantörsrisker och hur de hanteras.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): använd för att förstå vem i er organisation och hos leverantören som betyder något för relationen.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): använd för att kontrollera att leverantörsåtaganden stöder det ni lovar.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att klargöra vem som äger varje leverantörsrelation och vem som konsulteras.

## Viktiga källor

- **Supplier relationship management** (Wikipedia): en översikt av segmentering, styrkort och samarbete med leverantörer, med underhållsmärken som visar var källunderlaget är svagt.
- **Service integration and management** (Wikipedia): angreppssättet för flera leverantörer, med dess skikt, modeller och genomförandeutmaningar.
- **Service-level agreement** (Wikipedia): bakgrund om de avtal som leverantörer och kunder skriver under.
- **ITIL** (Wikipedia): sammanhang om hur ITIL behandlar leverantörer.

## Referenser

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
