# Ramverk och standarder för ITSM

**IT-tjänstehantering har många ramverk och standarder som överlappar, och den användbara färdigheten är att veta vad var och en är till för: vägledning att lära av, en standard man kan certifieras mot eller en styrmodell som talar om vad som ska kontrolleras.**

## Varför detta är viktigt

Fråga fem personer vad "vi följer bästa praxis för ITSM" betyder och du kan få fem svar: ITIL, ISO/IEC 20000, COBIT, FitSM eller "vad leverantörens verktyg nu gör". Termerna används löst, och skillnaderna spelar roll. En kund som ber om certifiering enligt ISO/IEC 20000 kan inte nöjas med ITIL-utbildning. En revisor som frågar om COBIT-kontroller får ingen hjälp av en processkarta över servicedesken.

För agila team är frågan praktisk: vilka av dessa måste vi förhålla oss till, och vilka kan vi behandla som en källa till idéer? Många team blir förvånade över att få veta att ITIL, det mest kända, är vägledning som individer certifieras i och inte en standard för organisationer. Andra blir förvånade över att den viktigaste ITSM-standarden nyligen har lagt till vägledning om agila och DevOps-arbetssätt.

Det här ämnet jämför de viktigaste ramverken och standarderna, med stöd av [Wikipedia-artiklarna om IT-tjänstehantering](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) och [FitSM](https://en.wikipedia.org/wiki/FitSM). Dessa artiklar varierar i kvalitet, och flera bär underhållsmarkeringar. Där de är svaga säger det här ämnet det. Kontrollera ägarnas egna publikationer innan ni förlitar er på någon detalj för ett avtal eller en revision.

## Centrala begrepp

### Tre slags saker

Namnen i det här ämnet faller i tre grupper. Att hålla isär dem undviker många förvirrade samtal.

| Slag | Vad det ger er | Exempel som nämns i Wikipedia-artikeln om ITSM |
|---|---|---|
| **Vägledning (ett ramverk eller ett bibliotek)** | Idéer och beskrivna arbetssätt att anpassa | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **En certifierbar standard** | Krav som en organisation kan granskas och certifieras mot | ISO/IEC 20000 |
| **En styr- eller förmågemodell** | Ett sätt att leda, kontrollera eller bedöma IT | COBIT, CMMI, TOGAF |

FitSM ligger mellan de två första, som beskrivs nedan.

### ITIL

ITIL är vägledning om ITSM och IT-tillgångshantering. Certifiering är för individer, och ingen oberoende bedömning av en organisations ITIL-efterlevnad finns (se Ämne 2.2 — ITIL). Det är den mest använda källan till ordförråd.

### ISO/IEC 20000

ISO/IEC 20000 är en internationell standard för IT-tjänstehantering. Enligt Wikipedia ställer del 1 krav på ett ledningssystem för tjänstehantering som omfattar planering, leverans och förbättring av tjänster. Den utvecklades ur BS 15000, skapad av BSI Group, och publicerades först i december 2005. Uppdateringar följde: del 1 i juni 2011 och en andra revidering, ISO/IEC 20000-1:2018, som utgavs den 15 juli 2018, varefter certifierade organisationer hade en övergångsperiod på tre år. Utgåvan 2018 har tio klausuler som följer ISO:s övergripande struktur.

Standarden har många delar. Artikeln listar, bland andra: vägledning om att tillämpa ett ledningssystem för tjänstehantering (del 2); vägledning om omfattning och tillämplighet (del 3); implementeringsvägledning (del 5); krav på certifieringsorgan (del 6); begrepp och ordförråd (del 10); och en teknisk specifikation om förhållandet till ITIL 4 (del 11). Den listar också nyligen publicerade delar, från 2023 till 2025, med vägledning om tjänsteintegration och hantering (SIAM), agilt och DevOps samt hållbarhet. Wikipedia säger inte vilket delnummer som täcker vilket ämne, så kontrollera ISO:s katalog innan ni citerar ett.

Organisationer kan certifieras, och individer kan få kvalifikationer från organ som APMG-International, EXIN och PECB. Artikeln rapporterar att ISO:s undersökning för 2024 räknade 27 332 certifikat, varav 24 056 fanns i Kina. Det visar hur ojämnt certifiering är spridd över länder, så anta inte att en kund på annat håll kommer att be om den.

Wikipedia säger att standarden ursprungligen utvecklades för att spegla bästa praxis i ITIL, men markerar det påståendet med "citation needed". Betrakta förhållandet som nära men inte identiskt. Artikeln säger också att standarden stöder andra ramverk som Microsoft Operations Framework och delar av COBIT.

### COBIT

COBIT är, enligt Wikipedia, ett ramverk skapat av ISACA för IT-ledning och -styrning. Det kopplar affärsmål till IT-mål och definierar ansvar för verksamhets- och IT-team. Artikeln beskriver fem processområden: Evaluate, Direct and Monitor; Align, Plan and Organize; Build, Acquire and Implement; Deliver, Service and Support; och Monitor, Evaluate and Assess. Den anger dessa datum: först utgivet 1996, version 5 år 2012, och säger att ISACA erbjuder certifiering i COBIT 2019 och COBIT 5. Artikeln knyter COBIT till ITIL, ISO 27000, CMMI, TOGAF och Project Management Institutes PMBOK Guide.

Artikeln bär själv underhållsmarkeringar om primärkällor och saknade källhänvisningar, och ett påstående, att ramverket hjälper företag att följa lagen och bli mer agila, vilar på en enda källa. Använd COBIT:s egna publikationer för auktoritet.

### FitSM

FitSM är en familj av lättviktsstandarder. Wikipedia säger att den växte ur FedSM, ett EU-finansierat projekt för att förbättra tjänstehantering i federerade e-infrastrukturer, och att reviderade leveranser publicerades under namnet FitSM från maj 2013. FitSM-1 innehåller ungefär 85 granskningsbara krav som omfattar allmänna krav och 14 processer, och är mycket kortare än ISO/IEC 20000 del 1 men liknande i omfattning och stil. Alla delar publiceras under Creative Commons-licenser. Organisationer kan inte certifieras som FitSM-överensstämmande, även om överensstämmelse kan granskas, och ett certifieringssystem för personal började 2013.

FitSM är användbart för små team som vill ha en kort uppsättning krav. Artikeln anger inte den aktuella versionen eller status för den grupp som underhåller det, så kontrollera dem innan ni förlitar er på det.

### Andra namn

ITSM-artikeln listar också följande. Den här guiden behandlar dem inte vidare.

- **CMMI:** en modell för att etablera, hantera och förbättra tjänster och processer.
- **TOGAF:** ett ramverk som kopplar affärsmål till arkitekturmål.
- **Microsoft Operations Framework:** vägledning för tjänstehantering baserad på Microsofts teknik.
- **Application Services Library och Business Information Services Library:** ramverk för applikationsförvaltning och för informationsförvaltning.
- **USM:** ett principbaserat system som antagits av den nederländska regeringen.

Artikeln tillägger att ITSM-ramverk har hämtat från ISO 9000, ISO/IEC 27000 och CMMI. Säkerhetshantering har sin egen familj av standarder (se Ämne 3.13 — Informationssäkerhetshantering).

### Agilt och DevOps i standarderna

Artikeln om ISO/IEC 20000 listar en nyligen publicerad del av standarden med vägledning om agilt och DevOps. Det är anmärkningsvärt eftersom det visar att standardiseringsorganet behandlar agila arbetssätt som något ett ledningssystem för tjänstehantering måste rymma. Artikeln ger inga detaljer om dess innehåll, så läs standarden själv om ni behöver den. Samtidigt beskriver ITIL 4 sig som samordnat med agilt, DevOps och lean (se Ämne 2.2 — ITIL), och Wikipedia-artikeln om ITSM nämner inte agilt alls. Källor skiljer sig i hur mycket de har hunnit ikapp.

### Att välja

Det finns inget enda rätt ramverk. Ett förnuftigt sätt att välja är att fråga vad ni behöver:

| Om ni behöver… | Överväg… |
|---|---|
| Ett gemensamt ordförråd och idéer för arbetssätt | ITIL |
| Certifiering av ert ledningssystem för tjänstehantering för kunder eller anbud | ISO/IEC 20000 |
| En kort, granskningsbar uppsättning krav för ett litet team | FitSM |
| Styrning och kontroll av IT i företaget, kopplad till affärsmål | COBIT |
| Bedömning av processförmåga | CMMI |

Den här tabellen är guidens sammanfattning, inte en rekommendation från något ramverks ägare.

## Bästa praxis

1. **Börja med den fråga ni behöver besvara.** Skriv ned vad ni behöver: ordförråd, certifiering, kontroll eller bedömning. Välj det ramverk som besvarar det, och inte det med bäst marknadsföring.
2. **Lär er skillnaden mellan vägledning och standarder.** Lär teamet att ITIL-certifiering är för individer, ISO/IEC 20000-certifiering är för organisationer och COBIT är en styrmodell. Många avtals- och revisionsförvirringar börjar här.
3. **Ta reda på vad kunder och tillsynsmyndigheter faktiskt kräver.** Be om den exakta klausulen eller kravet. Ofta är begäran om ett "erkänt ramverk", och en kort, ärlig beskrivning av er praxis räcker.
4. **Använd standardtexten, inte sammanfattningar, för efterlevnad.** När ni påstår överensstämmelse, arbeta utifrån ISO-standarden eller ramverksägarens publikation. Sammanfattningar, inklusive denna, är bara för orientering.
5. **Kartlägg er praxis en gång, inte fyra.** Om ni måste uppfylla mer än ett ramverk, bygg en enda beskrivning av er praxis och kartlägg den mot vart och ett, i stället för att skriva separata dokument.
6. **Håll systemet så litet ni kan.** ISO/IEC 20000 ber om ett ledningssystem för tjänstehantering och register. Möt varje krav med det lättaste angreppssätt som fungerar, och automatisera belägg ur era verktyg.
7. **Var uppmärksamma på omfattningen.** Ett certifikat täcker en angiven omfattning. Välj en omfattning som speglar verkliga tjänster och team, och undanta inte de delar som gör certifikatet svårt.
8. **Kontrollera vägledningen om agilt och DevOps i de standarder ni använder.** Där en standard har vägledning om agilt och DevOps, läs den innan ni bråkar med en revisor om hur ett agilt team kan uppfylla ett krav.
9. **Överväg lättare alternativ för små team.** FitSM eller en delmängd av ITIL kan passa ett litet team bättre än ett fullständigt certifierat system. Notera vad ni ger upp, som extern certifiering.
10. **Håll säkerhet och tjänstehantering samordnade.** Om ni använder ISO/IEC 27001 för informationssäkerhet, dela register och genomgångar med ert ledningssystem för tjänstehantering för att undvika dubbelarbete (se Ämne 3.13 — Informationssäkerhetshantering).
11. **Dokumentera er skräddarsydda anpassning.** Registrera vilka delar av ett ramverk ni använder, vilka ni inte använder och varför. Det skyddar er vid revisioner och hjälper ny personal.
12. **Granska årligen.** Standarder och ramverk förändras. Utse någon som följer uppdateringar och rapporterar vad som är viktigt för ert team (se Ämne 6.4 — Lärvägar och certifiering).

## Frågor att diskutera med teamet

**Vilka av dessa ramverk eller standarder är vi skyldiga att använda, och vilka använder vi av vana?**

Lista vad kunder, avtal, tillsynsmyndigheter och chefer faktiskt kräver, med det dokument som säger det. Lista sedan vad teamet använder utan krav. De två listorna skiljer sig ofta mer än väntat. Facilitatorn kan fråga vem som först införde var och en och varför. Fortsätt med att hitta den exakta formuleringen av varje krav som driver arbete.

**Om en kund frågade om vi är "ITIL-certifierade", vad skulle vi svara?**

Öva ett ärligt svar: individer kan certifieras, organisationer kan inte, och så här gör vi. Jämför svar. Vissa kommer att överdriva. Diskutera vad kunden troligen behöver och vilka belägg som kunde möta det, som certifiering enligt ISO/IEC 20000 eller en beskrivning av praxis. Kom överens om en mening alla kan använda.

**Vad skulle det kosta oss att certifieras enligt ISO/IEC 20000, och vad skulle vi vinna?**

Fråga vilka kunder eller marknader som skulle värdera det och vad teamet skulle behöva ändra. Gissa inte kostnader; samla in verkliga offerter eller fråga en kollega som gjort det. Lista de fördelar ni kan beskriva: en erkänd etikett, ett disciplinerat system, tillgång till anbud. Besluta om ni ska undersöka vidare.

**Varifrån kommer våra register för revision, och kunde våra verktyg producera dem automatiskt?**

Lista de register revisorer ber om och var vart och ett kommer ifrån. Många kan komma från versionshantering, ärendeverktyg och övervakning om de konfigureras med detta i åtanke. Fråga vilka register som produceras för hand och varför. Välj ett att automatisera.

**Hur passar våra agila arbetssätt in i vad standarderna förväntar sig, och var är gapet?**

Ta ett krav er revisor bryr sig om, som ändringsauktorisering, och beskriv hur ett agilt team uppfyller det. Där standarden har vägledning om agilt och DevOps, läs den relevanta texten tillsammans. Notera gap i belägg, inte i avsikt.

**Vem följer ändringar i dessa ramverk åt oss?**

Fråga vem som läser tillkännagivanden från ramverksägarna och standardiseringsorganen. Ett vanligt svar är "ingen". Besluta vem som ska, hur de rapporterar och när. Facilitatorn kan föreslå en kort notis en gång per kvartal som listar vad som ändrats och om det är viktigt.

## I praktiken: ett agilt ITIL-exempel

Ett programvaruföretag med 120 personer säljer en webbaserad schemaläggningsprodukt till sjukhus och universitet. Ett stort universitet som kund kräver i sitt anbud "ett certifierat ledningssystem för IT-tjänstehantering". Grundarna hade antagit att deras ITIL-utbildade supportchef skulle räcka. Supportchefen förklarar att ITIL-certifiering gäller individer, och att anbudet sannolikt avser ISO/IEC 20000.

Driftchefen undersöker. Hon läser anbudstexten, som nämner ISO/IEC 20000-1, och frågar kunden vilken omfattning de förväntar sig. Hon läser standardens innehållsförteckning och jämför dess tio klausuler med företagets befintliga register, som mest kommer från ärendeverktyget, ändringshistoriken och incidentgenomgångarna. Hon finner att mycket av beläggen redan finns, men att det inte finns några dokumenterade policyer för tjänstehantering, inga formella leverantörsgenomgångar och ingen ledningsgenomgång. Hon finner också att standarden nu har en del med vägledning om agilt och DevOps, vilket hjälper henne att förklara företagets veckovisa releaser för en blivande revisor.

Företaget beslutar att sträva efter certifiering enbart för den webbaserade produkten, med en blygsam uppsättning dokument och en kvartalsvis ledningsgenomgång. Det planerar för ungefär ett års arbete. Allt går inte smidigt. Två ingenjörer motsätter sig de extra registren och en leverantör vägrar tillhandahålla formella tjänstegenomgångsrapporter. Driftchefen ersätter en del manuella register med exporter från företagets verktyg och förhandlar fram ett lättare granskningsarrangemang med leverantören. Företaget vinner anbudet och beslutar att vid nästa uppföljningsrevision granska om systemet hjälper eller hindrar de veckovisa releaserna.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam möter dessa ramverk som krav från kunder och revisorer. Ta reda på vilket krav som gäller och fråga vilka belägg som är acceptabla. Många krav kan mötas med de verktyg ni redan använder. Erbjud er att förklara er releaseprocess på standardens språk.

### Tjänste- och driftteam

Driftteam bär vanligtvis ledningssystemet. Håll register användbara, med ett angivet syfte för varje. Se upp för krav som dubblerar varandra mellan ramverk och kartlägg dem en gång. Dela planen med leveransteam så att register blir en biprodukt av arbetet och inte en separat uppgift.

### Ledning och styrning

Ledare avgör vilka ramverk som ska införas och hur mycket som ska investeras i certifiering. Fråga vad affärsskälet är och vad kunder faktiskt kräver. Var försiktig med att köpa certifiering som en etikett. Se till att systemet hjälper organisationen att förbättras och att någon äger det.

### Kunder och användare

Kunder som ber om certifiering vill ofta ha trygghet. Fråga leverantörer vilken standard och omfattning deras certifikat täcker, och vad som ligger utanför. Ett certifikat är belägg för ett ledningssystem, inte en garanti för något enskilt resultat.

## Vanliga orsaker till misslyckande

- **Att förväxla individuell och organisatorisk certifiering.** Team påstår "ITIL-certifierad" om ett företag. Ange i stället exakt vad som är certifierat och av vem.
- **Att jaga certifiering som etikett.** Systemet finns för revisionen, inte för förbättring. Gör i stället registren användbara för teamet först.
- **Att duplicera dokument mellan ramverk.** Varje standard får sin egen pärm. Beskriv i stället er praxis en gång och kartlägg den.
- **Att begränsa omfattningen för att undvika de svåra delarna.** Certifikatet utesluter de tjänster kunderna bryr sig om. Välj i stället en omfattning som speglar verkliga tjänster.
- **Att förlita sig på sammanfattningar.** Påståenden om överensstämmelse bygger på blogginlägg. Arbeta i stället utifrån standarden eller ramverksägarens text.
- **Att ignorera agil vägledning.** Team bråkar med revisorer utan att ha läst den del av standarden som behandlar agilt och DevOps. Läs den i stället och förbered exempel.
- **Överdokumentation.** Systemet växer fler register än någon läser. Knyt i stället varje register till ett syfte och automatisera belägg.
- **Att glömma ändringar.** Standarden går vidare och teamet märker det inte. Utse i stället någon som följer uppdateringar.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Förståelse av ramverk | Namn används löst | Vissa medarbetare kan säga vad varje ramverk är till för | Team delar en kort, korrekt beskrivning av ramverk i bruk | Användningen av ramverk granskas mot krav och resultat | Team, kunder och leverantörer delar korrekt förståelse |
| Krav och omfattning | Krav antas | Vissa krav spåras till dokument | Krav och omfattning är dokumenterade | Efterlevnad och omfattning granskas och gap följs | Krav är samordnade med partner och kunder |
| Belägg | Belägg sammanställs för hand för varje begäran | Vissa register produceras ur verktyg | Belägg kommer mest från verktyg och beskrivs konsekvent | Beläggens kvalitet mäts och förbättras | Belägg delas med revisorer och partner automatiskt |
| Aktualitet | Ändringar i ramverk går obemärkta förbi | Vissa människor följer tillkännagivanden | En namngiven person rapporterar ändringar med bestämda intervall | Ändringar bedöms och åtgärdas | Ändringar förutses och hanteras med partner |

## Checklista

- [ ] Vi kan ange vilka ramverk och standarder kunder, avtal eller tillsynsmyndigheter faktiskt kräver.
- [ ] Vi vet vilka som är vägledning, vilka som är certifierbara standarder och vilka som är styrmodeller.
- [ ] Våra påståenden om certifiering är korrekta och anger omfattningen.
- [ ] Vi arbetar utifrån standardens eller ägarens text för varje efterlevnadspåstående.
- [ ] Vår praxis är beskriven en gång och kartlagd mot varje ramverk vi måste uppfylla.
- [ ] Belägg för revisioner kommer mest från våra verktyg.
- [ ] Vi har läst vägledningen om agilt och DevOps i de standarder som gäller oss.
- [ ] Någon är utsedd att följa uppdateringar och rapportera dem.
- [ ] Våra anpassningsbeslut är nedskrivna.
- [ ] Vi har granskat om vår omfattning matchar verkliga tjänster.

## AI-prompter

**Syfte: kartlägga ett kundkrav mot den ramverkstext som stöder det.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: beskriva er praxis en gång så att den kan kartläggas mot flera ramverk.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda ett ärligt svar på "är ni ITIL-certifierade?"**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Syfte: planera de belägg en revision av tjänstehantering kan be om.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): använd för att placera ramverk för tjänstehantering i den bredare bilden av företagsarkitektur och styrning.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): använd för att planera hur ni förbereder er för en revision mot en standard eller ett avtalskrav.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): använd för att utforma kontroller som producerar belägg för överensstämmelse automatiskt.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd när en certifierings omfattning beror på leverantörer och ni behöver planera leverantörsgenomgångar.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): använd när ramverk som COBIT eller PMBOK Guide möter ert projektkontor.

## Viktiga källor

- **ISO/IEC 20000-1** (International Organization for Standardization): standarden själv; läs dess omfattning och klausulrubriker i ISO:s katalog innan ni gör påståenden.
- **ISO/IEC 20000** (Wikipedia): standardens historia, delar och certifieringslandskap, med källhänvisningar.
- **COBIT** (ISACA och Wikipedia): ISACA:s egna publikationer är auktoritativa; Wikipedia-artikeln ger historia och struktur men har svag källförankring.
- **FitSM** (Wikipedia och FitSM-projektet): ett kort, fritt licensierat alternativ; kontrollera projektets sidor för aktuell version.

## Referenser

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
