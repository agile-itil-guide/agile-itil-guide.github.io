# Hantering av hårdvarutillgångar

**Hantering av hårdvarutillgångar följer fysisk utrustning från inköp till avyttring, och dess tysta risker är enheten som ingen känner till, enheten som behålls för länge och enheten som lämnar organisationen med data kvar på sig.**

## Varför detta är viktigt

Hårdvara betyder fortfarande något i en molnförst-värld. Människor arbetar på laptops, telefoner och surfplattor. Nät körs på switchar och accesspunkter. Många organisationer behåller servrar, lagring och specialutrustning på plats. När en laptop tappas bort, en server är utan garanti eller en omgång enheter behöver bytas är frågorna desamma: vad har vi, var är det, vem har det, vad är det värt och vad innehåller det?

Dålig hårdvaruthantering visar sig på välbekanta sätt. Personal väntar på utrustning eftersom ingen vet vad som finns i förrådet. Gamla enheter blir kvar i drift eftersom ingen har data som motiverar utbyte, och fallerar sedan vid en olämplig tidpunkt. Enheter kastas med data kvar på sig. Garantianspråk missas. För ett agilt team blir effekten långsammare introduktion, misslyckade releaser på ovårdad testhårdvara och säkerhetsexponeringar som ingen pipeline kan se.

[Wikipedia-avsnittet om hantering av IT-tillgångar](https://en.wikipedia.org/wiki/IT_asset_management), som ligger inuti artikeln om datacenterhantering, beskriver hantering av hårdvarutillgångar som att täcka fysiska dator- och nätverkskomponenter från anskaffning till avyttring, med arbetssätten förfrågan och godkännande, inköp, livscykelhantering, omplacering och avyttring, och säger att fånga ekonomisk information över livscykeln är en nyckelkomponent. Det är kort. Det här ämnet lägger till artiklarna om elektronikavfall och dataradering för avyttring, och praktisk vägledning hämtad från vanlig praxis, med notering om när den gör det.

## Centrala begrepp

### Omfattning

Hårdvarutillgångar omfattar slutanvändarenheter (laptops, stationära datorer, telefoner, surfplattor), servrar och lagring, nätverksutrustning, kringutrustning och specialiserad eller operativ teknik. De omfattar också tillbehören som gör dem användbara. För var och en vill organisationen känna till grunderna: vad det är, vem som ansvarar för det, var det är, vad det kostade och i vilket skick det är.

### Hårdvarans livscykel

Wikipedia-avsnittet listar förfrågan och godkännande, inköp, livscykelhantering, omplacering och avyttring. En praktisk utvidgning, allmänt använd och erbjuden här som sådan:

| Steg | Frågor att besvara | Typiska register |
|---|---|---|
| **Förfrågan och godkännande** | Vad behövs och vem godkänner det? | Förfrågan, godkännande, budgetkod |
| **Inköp** | Vad köpte vi, från vem, på vilka villkor? | Order, faktura, garanti, leverantör |
| **Ta emot och förbereda** | Kom det fram? Är det konfigurerat och märkt? | Serienummer, tillgångsetikett, konfiguration |
| **Tilldela och driva** | Vem har det? Vad används det till? | Ägare eller användare, plats, tjänst som stöds |
| **Underhålla** | Vilket skick, vilken garanti och vilken uppdateringsstatus har det? | Reparationer, garantislut, firmwarestatus |
| **Omplacera** | Kan någon annan använda det? | Radering, omtilldelningsregister |
| **Avveckla och avyttra** | Är data borttagna? Vart tog det vägen? | Raderingsbevis, avyttringsregister |

### Ekonomisk information

Wikipedia-avsnittet betonar att fånga ekonomisk information om hårdvarans livscykel. Användbara fakta omfattar inköpskostnad, avskrivning, garanti- och supportkostnad samt kostnaden för att hålla det igång. Dessa matar beslut om utbyte och budgetar (se Ämne 4.5 — IT-ekonomistyrning och FinOps). En enhet som kostar mer att supporta än att ersätta är en kandidat för avveckling.

### Utbyte och förnyelse

Organisationer byter vanligen utrustning i en cykel, som vart några år för laptops. De källor som lästs för den här guiden anger inga rekommenderade perioder, och rätt intervall beror på utrustningen, arbetet och kostnaden för fel. Ett databaserat angreppssätt tittar på felfrekvenser, supportkostnad, säkerhetssupport och prestanda, och byter när beläggen säger det. En fast cykel är lättare att planera, och en belägg-baserad kan spara pengar eller undvika fel.

### Datasäkerhet vid livets slut

Avyttring är där hårdvaruhantering möter informationssäkerhet (se Ämne 3.13 — Informationssäkerhetshantering). Wikipedia-artikeln om dataradering beskriver dataradering som en programvarumetod som skriver över varje sektor på en disk så att lagrade data blir oåterställbara; vanlig filborttagning tar bara bort pekare, och vanliga verktyg kan ofta återställa data. Nyckelpunkter från artikeln:

- **Överskrivning** lämnar disken användbar. **Avmagnetisering (degaussing)** och **fysisk förstörelse** gör mediet oanvändbart och bidrar till elektronikavfall.
- **Halvledarenheter (SSD) och flashminne** kan behålla restdata som radering missar. Artikeln hänvisar till en studie från 2011 som fann att inbyggda sanitize-kommandon fungerar när de är korrekt implementerade, medan programvarutekniker fungerar för det mesta, men inte alltid.
- **Kryptering** erbjuder en annan väg: att förstöra nycklarna till en självkrypterande disk gör dess data oåtkomliga.
- **Verifiering och certifikat:** god programvara bör verifiera att överskrivningen nådde hela enheten, inklusive dolda områden, och utfärda ett valideringscertifikat och en logg över sektorer som inte kunde skrivas över.
- **Standarder:** artikeln listar många, inklusive NIST Special Publication 800-88 (2006, reviderad 2014), som den citerar som att en enda överskrivningspassering med ett fast mönster som binära nollor vanligen hindrar återställning. Den anger att en enda passering i allmänhet räcker för moderna hårddiskar.

Artikeln är märkt som i behov av källhänvisningar och vissa påståenden är flaggade. Kontrollera de standarder er sektor eller ert land kräver och det aktuella kunskapsläget för er utrustning; förlita er inte på en Wikipedia-sammanfattning för ett efterlevnadsbeslut.

### Elektronikavfall

Wikipedia-artikeln om elektronikavfall definierar det som kasserade elektriska eller elektroniska enheter, inklusive föremål avsedda för återanvändning, återförsäljning, bärgning, återvinning eller avyttring. Den redovisar ungefär 62 miljoner ton genererade globalt 2022, en ökning med 82 procent från 2010, där bara 22,3 procent formellt samlades in och återvanns enligt en studie från 2024; den hänvisar också till andra siffror som strider mot detta, och den bär underhållsmärken för overifierade påståenden, så kontrollera tal mot primärkällor innan ni citerar dem. Den beskriver faror från material som bly, kadmium, kvicksilver och flamskyddsmedel, och från informell bearbetning, med exempel från Guiyu i Kina och Agbogbloshie i Ghana. Den noterar att Baselkonventionen, antagen i mars 1989, reglerar gränsöverskridande transport av farligt avfall, och att certifierade återvinnare under system som R2 och E-Stewards måste förstöra all data lagrad på elektronik. Återanvändning förlänger enheters liv och skjuter upp återvinning.

För en organisation är lärdomarna praktiska: välj avyttringspartner som är certifierade och kan visa vart enheter tar vägen, föredra återanvändning där det är säkert och för register. Lagar om elektronikavfall skiljer sig mellan länder och regioner; fråga er efterlevnadsfunktion vilka som gäller.

### Hårdvara och tjänstehantering

Hårdvaruregister länkar till tjänster: den här switchen bär den tjänsten, den här servern värdar den applikationen. Dessa länkar gör ett tillgångsregister till ett verktyg för incidentsvar, ändringsplanering och riskbedömning (se Ämne 4.4 — Konfigurationshantering). Utan dem är en fallerad enhet ett ärende; med dem är den ett konsekvensutlåtande.

### Agilt och hårdvara

Agila team behandlar hårdvara som en begränsning att designa kring, inte som huvudsaken. Moln och virtualisering minskar den fysiska miljön, men inte till noll. Testenheter för mobilappar, byggagenter, labbutrustning och edge-enheter behöver alla följas. Behandla dem som tillgångar med ägare och livscykler, och lämna dem inte i ett skåp.

## Bästa praxis

1. **Märk och registrera varje enhet som betyder något.** Tilldela en unik tillgångsetikett eller ett serieregister vid mottagande och registrera typ, ägare, plats och status. Gör detta till det första steget efter leverans.
2. **Länka enheter till människor och tjänster.** Registrera vem som har varje enhet och vilken tjänst den stöder, och uppdatera vid flyttar och ändringar. Använd avgångsprocessen för att återta utrustning och ta bort åtkomst.
3. **Håll ekonomiska data med tillgången.** Registrera kostnad, garanti, supportvillkor och avskrivning. Använd dem för att jämföra reparation, support och utbyte.
4. **Använd upptäckt för att hitta det okända.** Jämför registret med nät- och slutpunktsupptäckt och utred okända enheter omgående (se Ämne 4.1 — Hantering av IT-tillgångar).
5. **Övervaka skick och supportstatus.** Följ garantislutsdatum, firmware- och säkerhetssupportstatus och felhistorik. Planera utbyte innan enheter fallerar eller förlorar support.
6. **Byt på belägg.** Titta på fel- och supportdata, prestanda och säkerhetssupport för att avgöra utbyte, och inte bara ålder. Se över policyn en gång om året.
7. **Förbered enheter konsekvent.** Använd ett standardbygge och automatiserad registrering så att nya enheter kommer färdiga, med säkerhetskontroller på plats.
8. **Omplacera där det är säkert.** Radera och tilldela om enheter som fortfarande möter behoven, med ett register över raderingen. Undvik lager av oanvänd utrustning.
9. **Radera data ordentligt och behåll bevis.** Använd en metod som passar enhetstypen och datas känslighet, verifiera den och behåll ett certifikat eller en logg. För flashlagring, använd enhetsstödda sanitize-kommandon eller nyckelförstörelse efter behov (se noteringarna om dataradering ovan).
10. **Välj avyttringspartner noggrant.** Föredra certifierade återvinnare, fråga vart enheter och material tar vägen och för register. Ta med villkor om dataförstörelse i avtalet.
11. **Planera för förlorade och stulna enheter.** Ha ett snabbt sätt att rapportera, en fjärrlåsning eller -radering där det finns och en regel för när en förlust ska behandlas som en säkerhetsincident (se Ämne 3.2 — Incidenthantering).
12. **Granska regelbundet.** Minst två gånger om året, kontrollera ett urval av registret mot fysisk verklighet för de huvudsakliga enhetsklasserna och åtgärda processen bakom varje gap.

## Frågor att diskutera med teamet

**Om vi räknade varje enhet vi äger i dag, skulle det stämma med registret?**

Välj en våning, ett team eller ett förråd och gör en snabb räkning mot registret. Skillnaderna är lärdomen. Fråga vilka avvikelser som betyder mest: enheter med data på, enheter som inte är uppdaterade. Facilitatorn kan fråga vad som hindrar människor från att uppdatera registret i stunden av förändring. Välj en process att strama åt.

**Vad gör vi med en laptop när någon slutar?**

Gå igenom stegen: vem som hämtar den, vart den går, vem som raderar den, vem som uppdaterar registret. Gap uppstår ofta mellan team. Be om det senaste exemplet och följ det. Kom överens om en ägare och en checklista.

**Hur avgör vi när utrustning ska bytas?**

Fråga efter den nuvarande regeln och dess källa. Ofta är det en fast ålder som någon satte för länge sedan. Diskutera vilka data ni har om fel, supportkostnad och säkerhetssupport. Jämför med kostnaden för att byta tidigt eller sent. Kom överens om vilka data som ska samlas in.

**Hur skulle vi bevisa att data på en enhet vi avyttrat förstördes?**

Ta en nylig avyttring och fråga vilka bevis som finns. Om svaret är "återvinnaren sa det", diskutera vad ett certifikat eller en logg bör innehålla. Fråga vilken metod som användes för halvledarlagring. Kom överens om en miniminivå och bevis.

**Vilka av våra enheter är utan garanti eller utan säkerhetssupport, och vad beror på dem?**

Lista enheter nära slutet av supporten. Fråga vad var och en stöder. Enheter utan support bakom viktiga tjänster är risker. Planera utbyte i ordning efter konsekvens och avgör var kompenserande åtgärder behövs.

**Vem hanterar en förlorad eller stulen enhet, och hur snabbt?**

Fråga hur en användare rapporterar en förlust och vad som händer sedan. Kontrollera om fjärrlåsning eller -radering finns och om någon har prövat det. Diskutera när en förlust blir en säkerhetsincident. Kom överens om ett tydligt första steg för användare.

## I praktiken: ett agilt ITIL-exempel

En provinsiell hälsomyndighet tillhandahåller ungefär 4 000 laptops och surfplattor till närsjuksköterskor som besöker patienter i hemmet. Enheter tappas bort eller skadas ofta. Myndighetens register visar 4 300 enheter, men servicedesken tror att den hanterar färre. En säkerhetsgranskning finner att ett antal laptops som är listade som avvecklade har setts i bruk, och att ett lager av gamla enheter i ett skåp fortfarande innehåller patientdata.

Chefen för slutanvändartjänster sätter upp ett litet program. Varje enhet får en unik etikett och ett register länkat till en namngiven sjuksköterska och ett team. Ett upptäcktsverktyg jämför registret med enheter som ansluter till nätet, och en månatlig lista över omatchade enheter går till teamchefer, som har två veckor på sig att förklara eller återlämna dem. Enheter registreras automatiskt med kryptering på och standardprogramvara, så att en förlorad laptop avslöjar lite. En avgångschecklista lägger till återlämning av enhet som ett steg som chefen kvitterar. För avveckling anlitar myndigheten en certifierad återvinnare som raderar diskar, förstör de som inte kan raderas och ger ett certifikat för varje omgång. Skåpet töms och dess innehåll raderas och registreras.

Inom sex månader stämmer registret och upptäckten överens inom en liten marginal, och en förlorad laptop fjärrlåses inom timmen i de flesta fall. Vissa problem återstår. Sjuksköterskor delar ibland enheter under hektiska skift, så ägarfältet blir fel, och återvinnarens certifikat listar omgångar men inte enskilda enheter, vilket revisorn frågar om. Chefen för slutanvändartjänster inför ett register för delade enheter med daglig utkvittering och ber återvinnaren ta med serienummer på certifikaten. Hon beslutar också att se över utbytespolicyn med hjälp av felutfall från det första året, i stället för att behålla en fast ålder.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam innehar testenheter, byggservrar och labbutrustning. Registrera dem, ge dem ägare och avveckla dem ordentligt. Tala om för tillgångshanteringen när ni behöver enheter, så att utbudet matchar projekten.

### Tjänste- och driftteam

Drift och servicedesken kör det mesta av livscykeln: bygga, driftsätta, supporta och avveckla. Håll register aktuella vid varje steg, använd upptäckt för att fånga gap och behåll avyttringsbevis. Dela skick- och felutfall med den som planerar utbyte.

### Ledning och styrning

Ledare avgör budgetar för utbyte och riskaptit. Be om antalet enheter utan support, processen för förlorade enheter och beläggen för dataförstörelse. Stöd belägg-baserad förnyelse och de små kontroller, som etiketter och checklistor, som håller register sanna.

### Kunder och användare

Användare har utrustningen i det dagliga. Ta hand om den, rapportera förlust eller skada snabbt och lämna tillbaka utrustning när du slutar. Tala om för deskken om du delar en enhet eller flyttar till en annan plats, så att registren stämmer.

## Vanliga orsaker till misslyckande

- **Omärkt utrustning.** Enheter går inte att skilja åt. Märk och registrera i stället vid mottagande.
- **Föråldrade register.** Flyttar och avgångar fångas inte. Knyt i stället uppdateringar till händelser som processerna för nyanställda, flyttar och avgångar.
- **Förnyelse vid fast ålder utan data.** Enheter byts för tidigt eller för sent. Granska i stället fel-, kostnads- och supportdata.
- **Svag avyttring.** Data finns kvar på avyttrade enheter. Radera och verifiera i stället med en metod som passar mediet, behåll bevis och använd en certifierad partner.
- **Att ignorera flashlagring.** Överskrivning antas fungera. Använd i stället sanitize-kommandon eller nyckelförstörelse och verifiera.
- **Lager.** Oanvända enheter hopar sig. Omplacera eller avveckla i stället enligt schema.
- **Ingen koppling till tjänster.** En fallerad enhet är bara ett ärende. Registrera i stället vilken tjänst varje enhet stöder.
- **Ocertifierad återvinning.** Utrustning hamnar där ingen vet. Välj i stället certifierade partner och fråga vart material tar vägen.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Inventering och spårning | Enheter är informellt kända | Ett register täcker huvudenheter | Varje enhet är märkt och registrerad, avstämd mot upptäckt | Korrekthet och gap mäts och korrigeras | Inventering täcker ägda, leasade och partners enheter med delade data |
| Livscykel och förnyelse | Utbyte sker vid fel | Vissa enheter följer en förnyelseplan | Livscykelsteg och en förnyelsepolicy är definierade | Fel- och kostnadsdata driver utbytesbeslut | Förnyelse planeras över organisationen med leverantörer och ekonomi |
| Avyttring och dataskydd | Avyttring är ad hoc | Vissa enheter raderas | En standardraderingsmetod och certifierad avyttring med bevis | Avyttringsbevis granskas och gap stängs | Avyttring samordnas med partner och återanvändningsprogram |
| Koppling till tjänst och ekonomi | Enheter är inte länkade till tjänster eller kostnader | Vissa kostnadsdata förs | Enheter är länkade till ägare, tjänster och kostnader | Kostnads- och supportdata granskas och används i budgetar | Tillgångsdata delas fortlöpande med ekonomi, säkerhet och leverantörer |

## Checklista

- [ ] Varje enhet vi följer har en unik etikett eller ett serieregister och en namngiven ägare eller användare.
- [ ] Enheter är länkade till den tjänst de stöder.
- [ ] Upptäckt jämförs med registret minst månadsvis för huvudenhetstyper.
- [ ] Garanti- och supportslutsdatum registreras och granskas.
- [ ] Vår utbytespolicy bygger på data och granskas årligen.
- [ ] Avgångs- och flyttprocesser återtar eller omtilldelar enheter.
- [ ] Dataradering använder en metod som passar mediet, med verifiering och register.
- [ ] Avyttringspartner är certifierade och ger bevis per enhet eller omgång.
- [ ] Förlorade och stulna enheter kan rapporteras snabbt och fjärrlåsas eller raderas där det finns.
- [ ] Ett urval av registret kontrolleras mot fysisk verklighet två gånger om året.

## AI-prompter

**Syfte: stämma av en fysisk räkning mot registret.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Syfte: förbereda en databaserad granskning av utbyte.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Syfte: skriva en avyttringschecklista med beviskrav.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera ett svar på förlorad enhet.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [configuration-management](../../../../skills/configuration-management/SKILL.md): använd för att länka enheter till de tjänster de stöder.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): använd för att planera hur mycket utrustning som behövs och när.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): använd för att prognostisera kostnader för förnyelse och support.
- [data-governance](../../../../skills/data-governance/SKILL.md): använd för att avgöra vem som äger data på enheter och hur de skyddas vid avveckling.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att välja och granska hårdvaruleverantörer och avyttringspartner.

## Viktiga källor

- **IT asset management** (Wikipedia): definitionen och en beskrivning av hantering av hårdvarutillgångar, inom artikeln om datacenterhantering.
- **Data erasure** (Wikipedia): metoder, standarder, verifiering och specialfallet halvledarlagring.
- **Electronic waste** (Wikipedia): omfattning, faror, återvinning och Baselkonventionen, med förbehåll om motstridiga siffror.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): den primära vägledning som Wikipedia-artikeln citerar; läs den aktuella revisionen innan ni sätter en standard.

## Referenser

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
