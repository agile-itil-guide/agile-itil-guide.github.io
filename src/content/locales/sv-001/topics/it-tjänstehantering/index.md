# IT-tjänstehantering

**IT-tjänstehantering (ITSM) är disciplinen att utforma, leverera, driva och förbättra IT-tjänster utifrån vad kunderna behöver, och agila team som driver tjänster gör redan detta, oavsett om de använder namnet.**

## Varför detta är viktigt

När ett team levererar programvara och sedan driver den blir det en tjänsteleverantör. Användare är beroende av den, förväntar sig att den är tillgänglig och vill ha hjälp när den fallerar. ITSM är den samling arbetssätt som vuxit fram kring den relationen. Team som ignorerar det återupptäcker det ofta den hårda vägen: genom att bli larmade på natten, genom att tappa koll på vad som ändrats eller genom att bråka med kunder om vad som utlovats.

ITSM har rykte om sig att vara tungrott, och en del av det ryktet är förtjänt. Agila team har i sin tur rykte om sig att röra sig snabbt och lämna åt driften att hantera resultatet. Båda ryktena beskriver misslyckanden, inte avsikten med något av fälten. ITSM frågar vad kunden behöver av en tjänst och hur leverantören ska leverera och förbättra den. Det är en fråga agila team också bryr sig om.

Det här ämnet ger det ordförråd som används i resten av guiden: vad en tjänst är, vilka kunderna och användarna är, vad ITSM omfattar och var dess huvudsakliga ramverk kommer ifrån. Det använder [Wikipedia-artikeln om IT-tjänstehantering](https://en.wikipedia.org/wiki/IT_service_management) som karta. Den artikeln är kort och listar ramverk mer än den förklarar dem, så ämnet lägger till praktisk tolkning och påpekar var det gör det.

## Centrala begrepp

### Vad ITSM är

Wikipedia-artikeln definierar ITSM som den uppsättning aktiviteter en organisation utför för att utforma, bygga, leverera, driva och kontrollera IT-tjänster som erbjuds kunder. Den kontrasterar ITSM med teknikorienterade angreppssätt som nätverkshantering och systemhantering. ITSM, säger den, har ett processperspektiv, fokuserar på kundernas behov snarare än på system och betonar ständig förbättring.

Artikeln hänvisar till en undersökning från 2017 av CIO WaterCooler som rapporterar att företag använder ITSM mest till stöd för kundupplevelse (35 %) och tjänstekvalitet (48 %). Det är en undersökning, och dess urval beskrivs inte i artikeln, så betrakta siffrorna som en illustration av hur utövare beskriver sina mål och inte som ett mått på hur vanligt varje mål är.

### Tjänst, kund och användare

En **tjänst** är ett sätt att leverera värde till andra utan att de måste äga kostnaderna och riskerna. En banks nätbetalningar, ett sjukhus tidsbokning och ett företags delade fillagring är alla tjänster. Artikeln skiljer **användare**, som använder tjänsten, från **kunder**, som betalar för den eller beställer den. I ett företags interna IT kan kunden vara chefen för en affärsenhet och användarna dess personal. I en offentlig tjänst kan kunden vara ett departement och användarna medborgare. De två grupperna har olika behov, och en leverantör som bara lyssnar på kunden kan missa vad användarna upplever.

### Typiska ITSM-aktiviteter

Artikeln nämner några grundläggande idéer, och normal ITSM-praxis lägger till andra. Tillsammans ger de en igenkännbar form:

| Aktivitet | Vad den är till för | Var den här guiden behandlar den |
|---|---|---|
| **Servicedesk** | En enda kontaktpunkt mellan leverantörer och användare; hanterar incidenter och serviceförfrågningar | Ämne 3.1 — Servicedesk |
| **Incidenthantering** | Att återställa tjänsten när något stör eller hotar den | Ämne 3.2 — Incidenthantering |
| **Serviceförfrågningar** | Att tillhandahålla rutinsaker användare ber om, som åtkomst eller utrustning | Ämne 3.6 — Hantering av serviceförfrågningar |
| **Problem och ändringar** | Att hitta och åtgärda underliggande orsaker, och att kontrollera ändringar av tjänster | Ämne 3.3 — Problemhantering och Ämne 3.4 — Ändringsmöjliggörande |
| **Servicenivåer och katalog** | Att komma överens om vad som erbjuds och hur väl | Ämne 3.7 — Hantering av servicenivåer och Ämne 3.8 — Hantering av tjänstekatalog |
| **Ständig förbättring** | Att göra tjänster bättre över tid | Ämne 3.15 — Ständig förbättring |

Artikeln definierar en **incident** som ett avbrott eller potentiellt avbrott i en tjänsts tillgänglighet eller kvalitet, och en **serviceförfrågan** som en rutinförfrågan om en tjänst. Den nämner **servicenivåavtal (SLA)** bara i förbigående, så guiden förklarar dem i Ämne 3.7 — Hantering av servicenivåer.

### Tjänstehantering för hela företaget och automatisering

Artikeln noterar två utvidgningar. **Enterprise service management (ESM)** tillämpar ITSM-verktyg och -idéer på andra delar av ett företag, som personal eller fastighetsdrift, som också tar emot förfrågningar och levererar tjänster. **IT-processautomatisering** ersätter manuella rutinsteg med automatiserade så att personalen kan fokusera på arbete med högre prioritet. Båda är viktiga för agila team: ESM visar att disciplinen inte är knuten till IT, och automatisering är hur små team hänger med i volymen.

### Ramverk och standarder

Artikeln listar många ramverk och standarder. Listan nedan upprepar dess enradiga beskrivningar och utvecklas i Ämne 2.7 — Ramverk och standarder för ITSM.

| Namn | Vad artikeln säger |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Detaljerade arbetssätt för ITSM och IT-tillgångshantering, som anpassar IT till affärsmål |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | En internationell standard för ledningssystem för tjänstehantering, mot vilken en organisation kan certifieras |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Ett ramverk för IT-styrning med kontrollmål, mått och mognadsmodeller |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | En lättviktsstandard, till stor del i linje med ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | En modell för att etablera, hantera och förbättra tjänster |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Ett ramverk som kopplar affärsmål till arkitekturmål |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Vägledning för tjänstehantering baserad på Microsofts teknik |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Ett ramverk för professionell applikationsförvaltning |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Ett ramverk med bästa praxis för informationsförvaltning |
| Business Process Framework (eTOM) | Ett processramverk för teleoperatörer |

Artikeln tillägger att ITSM-ramverk har hämtat från ISO 9000, ISO/IEC 27000 och CMMI, och att ITIL version 2 och BS 15000, föregångaren till ISO/IEC 20000, var inbördes samordnade. Den beskriver också USM, ett principbaserat ledningssystem som antagits av den nederländska regeringen.

### Vad artikeln inte täcker

Artikeln har inget historieavsnitt, ingen kritik och inget omnämnande av agilt eller DevOps. Den tystnaden är viktig. ITSM har kritiserats för processtyngd och långsam förändring, och agila team har kritiserats för att försumma driften, men du hittar ingendera kritiken där. Den här guiden täcker gapet i Del 5, med början i Ämne 5.1 — Agil tjänstehantering. Där det här ämnet nämner problem hämtar det från guidens andra källor och från praktisk erfarenhet, och säger det.

### ITSM och ITAM

ITIL-artikeln beskriver ITIL som omfattande både ITSM och IT-tillgångshantering (ITAM). ITAM är disciplinen att veta vilka IT-tillgångar en organisation har, vad de kostar och hur de används. Tjänster är beroende av tillgångar, och de två disciplinerna delar information, vilket är varför Del 4 följer ITSM tätt (se Ämne 4.1 — Hantering av IT-tillgångar).

## Bästa praxis

1. **Definiera era tjänster ur kundens sida.** Lista vad kunder och användare faktiskt använder, med deras ord, som "logga in", "boka en tid" och "skicka en faktura". Gruppera tekniken bakom var och en. Detta är början på en tjänstekatalog (ITIL skriver den "service catalogue"; se Ämne 3.8 — Hantering av tjänstekatalog).
2. **Namnge vilka kunderna och användarna är.** För varje tjänst, skriv ned vem som betalar eller beställer den och vem som använder den. Om de är olika personer, kontrollera att båda grupperna har en röst.
3. **Ge varje tjänst en ägare.** Utse en person som ansvarar för hur tjänsten presterar och förbättras över tid. Utan ägare är problem med tjänsten ingens uppgift.
4. **Börja med de aktiviteter som gör mest ont.** Om avbrott är smärtan, förstärk incidenthanteringen först. Om ingen vet vad som ändrats, börja med ändringsposter. Rulla inte ut alla ITSM-arbetssätt på en gång.
5. **Använd en enda ingång.** Ge användare ett ställe att be om hjälp och göra förfrågningar, och gör det enkelt. En servicedesk som är svår att nå kringgås, och då förlorar ni den information som ITSM är beroende av.
6. **Skilj incidenter från förfrågningar från problem.** En incident är ett avbrott, en förfrågan är en rutinbegäran och ett problem är en underliggande orsak. Blandade köer döljer mönster och förvränger mått.
7. **Registrera det som betyder något och inte mer.** För register över incidenter, ändringar och tillgångar som ni kommer att använda för att fatta beslut. Ta bort fält som ingen läser. Register är en kostnad, och ni bör kunna säga vad var och en är till för.
8. **Välj ramverk efter problem, inte efter mode.** Använd ITIL, ISO/IEC 20000, COBIT eller lättare modeller som källor till idéer för det problem ni har. Inför de delar som hjälper och säg vilka ni lämnat utanför.
9. **Automatisera rutinen.** Leta efter upprepade steg, som lösenordsåterställningar och åtkomstbeviljande, och automatisera dem med omsorg. Se över automatiserade åtgärder regelbundet så att de inte glider ifrån vad användarna behöver.
10. **Mät det kunderna känner.** Följ tillgänglighet, tid till återställd tjänst och användarnöjdhet före ni räknar intern aktivitet. Använd undersökningen från Wikipedia-artikeln som en påminnelse om att utövare redan nämner kundupplevelse och kvalitet som huvudmål.
11. **Titta bortom IT.** Om andra delar av organisationen hanterar förfrågningar dåligt, överväg gemensamma verktyg och arbetssätt genom enterprise service management. Tvinga inte på dem IT:s ordförråd.
12. **Förbättra ständigt.** Avsätt regelbunden tid för att granska vad som fungerar, med hjälp av incident- och förfrågningsdata, och för att göra små förändringar (se Ämne 3.15 — Ständig förbättring).

## Frågor att diskutera med teamet

**Vilka tjänster tillhandahåller vi, med de ord våra användare skulle använda?**

Be varje person skriva de tre saker användare oftast förlitar sig på oss för. Jämför listorna. Skillnader visar vanligtvis att teamet har olika bilder av tjänsten, eller att det beskriver tjänster efter teknik i stället för efter användning. En facilitator kan fråga vilken tjänst som saknar tydlig ägare. Fortsätt med att komma överens om en första lista över tjänster.

**Vilka är kunderna och vilka är användarna av vår huvudtjänst, och vill de ha samma saker?**

Namnge den som beställer eller betalar och dem som använder. Fråga vad var och en vill ha av tjänsten. I intern IT kan kunden bry sig om kostnad och risk, och användarna om fart och enkelhet. Fråga var de står i konflikt och hur teamet får veta det. Välj en konflikt att prata igenom med verkliga människor.

**Vart går användare när de behöver hjälp, och hur många vägar finns det?**

Räkna sätten: en portal, ett telefonnummer, e-post, chatt, en kollegas skrivbord. Fråga vilken väg användare föredrar och varför. Flera informella vägar betyder att en del efterfrågan är osynlig. Diskussionen bör sluta med ett beslut om vilka vägar som ska behållas, vilka som ska slås ihop och hur det som kommer via informella vägar ska fångas.

**Hur väl kan vi skilja en incident från en förfrågan från ett problem, och vad händer när vi blandar dem?**

Ta tio nyliga ärenden och sortera dem. Oenighet visar att definitioner skiljer sig i teamet. Fråga vad blandade kategorier gör med rapporter och prioriteringar. Till exempel kan många förfrågningar i en incidentkö få incidenthanteringen att se långsam ut. Kom överens om enkla definitioner och exempel.

**Vilka ITSM-arbetssätt saknar vi eller gör bara på papper?**

Lista arbetssätten i tabellen ovan och bedöm var och en som fungerande, delvis fungerande eller bara på papper. Be om ett färskt exempel på varje som bedömts fungera. Facilitatorn bör motstå lusten att fylla varje gap och bör fråga vilket gap som gör mest skada för kunderna.

**Vad skulle vi vilja att ett ramverk gjorde för oss, och vad är vi rädda att det skulle göra mot oss?**

Samla förhoppningar och farhågor om att införa ITIL eller ISO/IEC 20000. Förhoppningar är ofta konsekvens och trovärdighet. Farhågor är ofta pappersarbete och långsamhet. Fråga hur man får det första utan det andra. Till exempel, inför ordförråd och några få arbetssätt och undvik formulär. Anteckna de villkor teamet skulle behöva.

## I praktiken: ett agilt ITIL-exempel

En medelstor nätbutik har vuxit från en grundares webbplats till ett företag med ett team på tolv ingenjörer, en växande kundbas och en liten grupp supportpersonal. Kunder e-postar problem till en delad inkorg och ringer ett privat mobilnummer när kassan fallerar. Ingenjörerna rättar det de hör om och skriver sällan ned något. Efter ett betalningsavbrott som varade i tre timmar frågar grundaren varför ingen visste förrän en kund ringde.

Teknikchefen föreslår lättast möjliga ITSM. Teamet listar sina tjänster med kundens ord: bläddra och sök, kassa och betalning, orderspårning och kundkonton. Var och en får en ägare. En delad supportadress blir den enda ingången och matar ett enkelt ärendeverktyg med separata typer för incidenter och förfrågningar. Varje incident som varar mer än 30 minuter får en kort genomgång, skriven i ett gemensamt dokument. Ändringar av kassan och betalningen tillkännages i en teamkanal innan de sker.

Efter tre månader vet teamet hur många incidenter det hanterar och finner att de flesta kommer från två orsaker. Det åtgärdar båda, och kassaavbrottet upprepas inte. Vissa svårigheter återstår. Kunder ringer fortfarande grundaren när de är upprörda, så en del efterfrågan kringgår ärendeverktyget. Ingenjörerna muttrar också att det tar tid att skriva genomgångar, och två genomgångar hoppades över en hektisk månad. Teknikchefen beslutar att hålla genomgångarna korta, att be grundaren vidarebefordra samtal till supportadressen och att åter ta upp om en fullständigare process i ITIL-stil behövs efter ytterligare ett kvartal av data.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam som också driver det de bygger gör redan ITSM. Namnge era tjänster, registrera incidenter och ändringar på ett lätt sätt och dela data med den som supportar era tjänster. Behandla servicedesken som en källa till belägg för vad användare kämpar med.

### Tjänste- och driftteam

Drift- och servicedeskpersonal bär det mesta av ITSM-arbetet. Agila idéer kan hjälpa genom att göra ert arbete synligt, korta återkopplingsslingor med användare och flytta förbättring från årliga projekt till små regelbundna ändringar. Förklara syftet bakom varje ITSM-regel så att kollegor kan anpassa den på ett förnuftigt sätt.

### Ledning och styrning

Ledare avgör hur mycket struktur som ska krävas och hur mycket belägg som ska begäras. Be om resultat som kunder känner och några få mått teamen kan ta fram ur sina verktyg. Var försiktig med att köpa ett ramverk som signal; Wikipedia-artikeln listar många, och inget ersätter att känna sina egna tjänster.

### Kunder och användare

Kunder och användare är skälet till att ITSM finns. Räkna med ett tydligt sätt att be om hjälp, ärlig information om vad du kan förvänta dig och någon som äger varje tjänst. I gengäld, ge snabb och specifik information när något går fel, så att leverantören kan lära av det.

## Vanliga orsaker till misslyckande

- **Process för processens skull.** Formulär och godkännanden ökar och ingen minns varför. Knyt i stället varje arbetssätt till ett syfte och ta bort dem som inte längre tjänar något.
- **Ingen enda ingång.** Användare vänder sig till den de känner, och efterfrågan är osynlig. Erbjud i stället en enkel väg och fånga informella förfrågningar in i den.
- **Att blanda incidenter, förfrågningar och problem.** Rapporter vilseleder och orsaker förblir dolda. Använd i stället enkla definitioner och sortera ärenden konsekvent.
- **Tjänster beskrivna efter teknik.** Användare hittar inte vad de behöver och ägare är oklara. Beskriv i stället tjänster med kundens ord och utse en ägare för var och en.
- **Att införa ett ramverk i sin helhet.** Team kopierar ett stort ramverk och begraver sig i process. Börja i stället med problemet och ta bara de delar som hjälper.
- **Att ignorera användarna.** Leverantören talar bara med den kund som betalar. Lyssna i stället på både kunder och användare och leta efter konflikter.
- **Att mäta aktivitet.** Antal ärenden och samtal ersätter belägg för tjänstekvalitet. Mät i stället tillgänglighet, tid till återställd tjänst och användarnöjdhet.
- **Att behandla ITSM som skilt från leverans.** Leveransteam levererar och lämnar åt driften att klara sig. Koppla i stället samman dem genom gemensamma tjänster, gemensamma data och gemensamma genomgångar (se Ämne 5.1 — Agil tjänstehantering).

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Tjänstedefinition | Tjänster beskrivs efter teknik eller inte alls | Vissa tjänster listas med ägare | Alla tjänster beskrivs med kundens ord med namngivna ägare | Tjänstebeskrivningar kontrolleras mot användning och återkoppling | Tjänstedefinitioner delas med kunder och leverantörer och justeras tillsammans |
| Support och förfrågningar | Hjälp begärs via informella vägar | Vissa team har ett ärendeverktyg eller en delad inkorg | En ingång med tydliga typer för incidenter och förfrågningar | Efterfrågan och lösningstider följs och granskas | Support samordnas mellan team och leverantörer med gemensamma data |
| Register och mått | Få register förs | Vissa team registrerar incidenter och ändringar | Register är konsekventa och var och en har ett angivet syfte | Kundvända mått granskas regelbundet | Mått delas mellan tjänster och används för att sätta prioriteringar tillsammans |
| Förbättring | Åtgärder följer på kriser | Vissa team går igenom incidenter | Regelbunden genomgång av incident- och förfrågningsdata leder till planerade förändringar | Förbättringsarbete får resurser och resultaten kontrolleras | Förbättring är rutin mellan team och med kunder |

## Checklista

- [ ] Vi har en lista över våra tjänster på kundens språk.
- [ ] Varje tjänst har en namngiven ägare.
- [ ] Vi vet vilka kunderna och vilka användarna är för varje tjänst.
- [ ] Användare har en tydlig ingång för hjälp och förfrågningar.
- [ ] Incidenter, förfrågningar och problem registreras som olika saker.
- [ ] Varje slags register har ett angivet syfte, och oanvända fält tas bort.
- [ ] Vi mäter minst en sak som kunder känner, som tillgänglighet eller tid till återställd tjänst.
- [ ] Vi går igenom incident- och förfrågningsdata regelbundet och agerar på det.
- [ ] Vi kan säga vilka ramverksidéer vi använder och vilka vi har lämnat utanför.
- [ ] Rutinuppgifter som säkert kan automatiseras har identifierats.

## AI-prompter

**Syfte: utarbeta en lista över era tjänster på kundens språk.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Syfte: sortera nyliga ärenden i incidenter, förfrågningar och problem.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Syfte: välja en liten första uppsättning ITSM-arbetssätt för er situation.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda ett samtal mellan ett leveransteam och servicedesken.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [service-catalog](../../../../skills/service-catalog/SKILL.md): använd för att utarbeta eller granska en lista över tjänster på kundens språk, med ägare och beskrivningar.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): använd när ni är redo att komma överens med kunder om vilken servicenivå de kan förvänta sig.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): använd för att förbereda hur ert team hanterar en incident innan en inträffar.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): använd för att förstå vilka slags förfrågningar och incidenter som kommer och i vilken volym.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att göra klart vem som äger varje tjänst och vem som konsulteras eller informeras.

## Viktiga källor

- **IT service management** (Wikipedia): en kort definition med en lista över relaterade ramverk och standarder, användbar som karta.
- **ITIL** (Wikipedia): historien och versionerna av det mest kända ITSM-ramverket, inklusive dess ägarbyten.
- **ISO/IEC 20000** (Wikipedia): bakgrund om den internationella standarden för ledningssystem för tjänstehantering.
- **Enterprise service management** (Wikipedia): en introduktion till att tillämpa ITSM-idéer bortom IT.

## Referenser

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
