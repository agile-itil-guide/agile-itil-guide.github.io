# IT-servicestyring

**IT-servicestyring (ITSM) er disciplinen at designe, levere, drive og forbedre IT-services ud fra, hvad kunderne har brug for, og agile teams, der driver services, gør det allerede, uanset om de bruger navnet.**

## Hvorfor det betyder noget

Når et team leverer software og derefter driver den, bliver det en serviceleverandør. Brugerne afhænger af den, forventer, at den er tilgængelig, og vil have hjælp, når den svigter. ITSM er den samling af praksis, der er vokset op omkring det forhold. Teams, der ignorerer det, genopdager det ofte den hårde vej: ved at blive kaldt ud om natten, ved at miste overblikket over, hvad der blev ændret, eller ved at strides med kunder om, hvad der blev lovet.

ITSM har ry for tung proces, og noget af det ry er fortjent. Agile teams har til gengæld ry for at bevæge sig hurtigt og lade driften rydde op efter resultatet. Begge omdømmer beskriver fejl, ikke de to felters hensigt. ITSM spørger, hvad kunden har brug for fra en service, og hvordan leverandøren vil levere og forbedre den. Det er et spørgsmål, agile teams også interesserer sig for.

Dette emne giver det ordforråd, der bruges i resten af vejledningen: hvad en service er, hvem kunderne og brugerne er, hvad ITSM dækker, og hvor dets vigtigste rammeværker kommer fra. Det bruger [Wikipedia-artiklen om IT service management](https://en.wikipedia.org/wiki/IT_service_management) som sit kort. Den artikel er kort og opregner rammeværker mere, end den forklarer dem, så emnet tilføjer praktisk fortolkning og påpeger, hvor det gør det.

## Kernebegreber

### Hvad ITSM er

Wikipedia-artiklen definerer ITSM som det sæt aktiviteter, en organisation udfører for at designe, bygge, levere, drive og kontrollere IT-services tilbudt til kunder. Den sætter ITSM i kontrast til teknologiorienterede tilgange som netværksstyring og systemstyring. ITSM, siger den, tager en procestilgang, fokuserer på kundernes behov frem for på systemer og lægger vægt på løbende forbedring.

Artiklen henviser til en undersøgelse fra 2017 af CIO WaterCooler, der rapporterer, at virksomheder bruger ITSM mest til at understøtte kundeoplevelse (35 %) og servicekvalitet (48 %). Det er én undersøgelse, og dens stikprøve er ikke beskrevet i artiklen, så betragt tallene som en illustration af, hvordan praktikere beskriver deres mål, og ikke som et mål for, hvor almindeligt hvert mål er.

### Service, kunde og bruger

En **service** er en måde at levere værdi til andre på, uden at de selv skal eje omkostningerne og risiciene. En banks onlinebetalinger, et hospitals tidsbestilling og en virksomheds fælles fillager er alle services. Artiklen skelner mellem **brugere**, som bruger servicen, og **kunder**, som betaler for den eller bestiller den. I en virksomheds interne IT kan kunden være en forretningsenheds leder og brugerne dens medarbejdere. I en offentlig service kan kunden være et ministerium og brugerne borgere. De to grupper har forskellige behov, og en leverandør, der kun lytter til kunden, kan overse, hvad brugerne oplever.

### Typiske ITSM-aktiviteter

Artiklen nævner nogle få kerneideer, og standard ITSM-praksis tilføjer andre. Sammen giver de en genkendelig form:

| Aktivitet | Hvad den er til for | Hvor vejledningen dækker den |
|---|---|---|
| **Servicedesk** | Et enkelt kontaktpunkt mellem leverandører og brugere; håndterer hændelser og serviceanmodninger | Emne 3.1 — Servicedesk |
| **Hændelseshåndtering** | At genoprette servicen, når noget forstyrrer eller truer den | Emne 3.2 — Hændelseshåndtering |
| **Serviceanmodninger** | At levere rutineting, brugere beder om, som adgang eller udstyr | Emne 3.6 — Håndtering af serviceanmodninger |
| **Problemer og ændringer** | At finde og rette underliggende årsager og kontrollere ændringer af services | Emne 3.3 — Problemhåndtering og Emne 3.4 — Ændringsunderstøttelse |
| **Serviceniveauer og katalog** | At aftale, hvad der tilbydes, og hvor godt | Emne 3.7 — Styring af serviceniveauer og Emne 3.8 — Styring af servicekataloget |
| **Løbende forbedring** | At gøre services bedre over tid | Emne 3.15 — Løbende forbedring |

Artiklen definerer en **hændelse** som en forstyrrelse eller potentiel forstyrrelse af servicens tilgængelighed eller kvalitet og en **serviceanmodning** som en rutineanmodning om en service. Den nævner kun **serviceniveauaftaler (SLA'er)** i forbifarten, så vejledningen forklarer dem i Emne 3.7 — Styring af serviceniveauer.

### Enterprise service management og automatisering

Artiklen bemærker to udvidelser. **Enterprise service management (ESM)** anvender ITSM-værktøjer og -ideer på andre dele af en virksomhed, som HR eller faciliteter, der også modtager anmodninger og leverer services. **IT-procesautomatisering** erstatter rutinemæssige manuelle trin med automatiserede, så personalet kan fokusere på arbejde med højere prioritet. Begge betyder noget for agile teams: ESM viser, at disciplinen ikke er bundet til IT, og automatisering er, hvordan små teams holder trit med mængden.

### Rammeværker og standarder

Artiklen opregner mange rammeværker og standarder. Listen nedenfor gentager dens en-linjes beskrivelser og uddybes i Emne 2.7 — ITSM-rammeværker og standarder.

| Navn | Hvad artiklen siger |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Detaljerede praksisser for ITSM og IT-aktivstyring, der afstemmer IT med forretningsmål |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | En international standard for servicestyringssystemer, som en organisation kan certificeres mod |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Et IT-governance-rammeværk med kontrolmål, metrikker og modenhedsmodeller |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | En let standard, i vid udstrækning afstemt med ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | En model til at etablere, styre og forbedre services |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Et rammeværk, der forbinder forretningsmål med arkitekturmål |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Servicestyringsvejledning baseret på Microsoft-teknologier |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Et rammeværk for professionel applikationsstyring |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Et best practice-rammeværk for informationsstyring |
| Business Process Framework (eTOM) | Et procesrammeværk for telekommunikationsudbydere |

Artiklen tilføjer, at ITSM-rammeværker har trukket på ISO 9000, ISO/IEC 27000 og CMMI, og at ITIL version 2 og BS 15000, forløberen til ISO/IEC 20000, var gensidigt afstemt. Den beskriver også USM, et principbaseret styringssystem adopteret af den hollandske regering.

### Hvad artiklen ikke dækker

Artiklen har intet historieafsnit, ingen kritik og ingen omtale af agil eller DevOps. Den tavshed betyder noget. ITSM er blevet kritiseret for procesbyrde og langsom forandring, og agile teams er blevet kritiseret for at forsømme driften, men du finder ingen af kritikkerne der. Vejledningen dækker hullet i del 5, begyndende med Emne 5.1 — Agil servicestyring. Hvor dette emne nævner problemer, trækker det på vejledningens andre kilder og på praktisk erfaring og siger det.

### ITSM og ITAM

ITIL-artiklen beskriver ITIL som dækkende både ITSM og IT-aktivstyring (ITAM). ITAM er disciplinen at vide, hvilke IT-aktiver en organisation har, hvad de koster, og hvordan de bruges. Services afhænger af aktiver, og de to discipliner deler information, hvilket er grunden til, at del 4 følger tæt efter ITSM (se Emne 4.1 — Styring af IT-aktiver).

## God praksis

1. **Definér jeres services fra kundens side.** List, hvad kunder og brugere faktisk bruger, med deres ord, som "log ind", "book en tid" og "send en faktura". Gruppér teknologien bag hver. Det er starten på et servicekatalog (se Emne 3.8 — Styring af servicekataloget).
2. **Navngiv, hvem kunderne og brugerne er.** Skriv for hver service ned, hvem der betaler for eller bestiller den, og hvem der bruger den. Hvis de er forskellige personer, så tjek, at begge grupper har en stemme.
3. **Giv hver service en ejer.** Navngiv én person, der er ansvarlig for, hvordan servicen klarer sig og forbedres over tid. Uden en ejer er problemer med servicen ingens opgave.
4. **Start med de aktiviteter, der gør mest ondt.** Hvis nedbrud er smerten, så styrk hændelseshåndteringen først. Hvis ingen ved, hvad der blev ændret, så start med ændringsregistreringer. Rul ikke alle ITSM-praksisser ud på én gang.
5. **Brug én enkelt hoveddør.** Giv brugerne ét sted at bede om hjælp og stille anmodninger, og gør det let. En servicedesk, der er svær at nå, bliver omgået, og så mister du den information, ITSM afhænger af.
6. **Adskil hændelser fra anmodninger fra problemer.** En hændelse er en forstyrrelse, en anmodning er en rutineforespørgsel, og et problem er en underliggende årsag. Blandede køer skjuler mønstre og forvrider målinger.
7. **Registrér det, der betyder noget, og ikke mere.** Før registre over hændelser, ændringer og aktiver, som I bruger til at træffe beslutninger. Slet felter, ingen læser. Registre koster, og du bør kunne sige, hvad hvert er til for.
8. **Vælg rammeværker efter problem, ikke efter mode.** Brug ITIL, ISO/IEC 20000, COBIT eller lettere modeller som kilder til ideer til det problem, du har. Adoptér de dele, der hjælper, og sig, hvilke du udelod.
9. **Automatisér rutinen.** Se efter gentagne trin, som nulstilling af adgangskoder og tildeling af adgang, og automatisér dem med omhu. Gennemgå automatiserede handlinger jævnligt, så de ikke driver væk fra, hvad brugerne har brug for.
10. **Mål, hvad kunderne mærker.** Spor tilgængelighed, tid til at genoprette servicen og brugertilfredshed, før du tæller intern aktivitet. Brug undersøgelsen fra Wikipedia-artiklen som en påmindelse om, at praktikere allerede nævner kundeoplevelse og kvalitet som hovedmålene.
11. **Se ud over IT.** Hvis andre dele af organisationen håndterer anmodninger dårligt, så overvej fælles værktøjer og praksis gennem enterprise service management. Tving ikke ITs ordforråd ned over dem.
12. **Forbedr løbende.** Afsæt regelmæssig tid til at gennemgå, hvad der virker, ud fra hændelses- og anmodningsdata, og til at lave små ændringer (se Emne 3.15 — Løbende forbedring).

## Spørgsmål til diskussion i teamet

**Hvilke services leverer vi, med de ord vores brugere ville bruge?**

Bed hver person skrive de tre ting, brugerne oftest stoler på os til. Sammenlign listerne. Forskelle viser som regel, at teamet har forskellige billeder af servicen, eller at det beskriver services efter teknologi i stedet for efter brug. En facilitator kan spørge, hvilken service der ikke har en klar ejer. Følg op ved at aftale en første liste over services.

**Hvem er kunderne, og hvem er brugerne af vores hovedservice, og vil de det samme?**

Navngiv den, der bestiller eller betaler, og dem, der bruger. Spørg, hvad hver vil have fra servicen. I intern IT kan kunden interessere sig for omkostninger og risiko og brugerne for fart og lethed. Spørg, hvor de er i konflikt, og hvordan teamet får det at vide. Vælg én konflikt, der skal tales igennem med rigtige mennesker.

**Hvor går brugerne hen, når de har brug for hjælp, og hvor mange veje er der?**

Tæl måderne: en portal, et telefonnummer, mail, chat, en kollegas skrivebord. Spørg, hvilken vej brugerne foretrækker, og hvorfor. Flere uformelle veje betyder, at noget efterspørgsel er usynlig. Diskussionen bør ende med en beslutning om, hvilke veje der beholdes, hvilke der slås sammen, og hvordan det, der kommer ad uformelle veje, fanges.

**Hvor godt kan vi se forskel på en hændelse, en anmodning og et problem, og hvad sker der, når vi blander dem?**

Tag ti nylige tickets og sortér dem. Uenigheder viser, at definitionerne er forskellige i teamet. Spørg, hvad blandede kategorier gør ved rapporter og prioriteter. For eksempel kan mange anmodninger i en hændelseskø få hændelseshåndteringen til at se langsom ud. Aftal enkle definitioner og eksempler.

**Hvilke ITSM-praksisser mangler vi, eller gør vi kun på papiret?**

List praksisserne i tabellen ovenfor, og vurdér hver som virkende, delvist virkende eller kun på papiret. Bed om et nyligt eksempel på hver, der er vurderet som virkende. Facilitatoren bør modstå trangen til at fylde alle huller og spørge, hvilket hul der gør mest skade for kunderne.

**Hvad ville vi have et rammeværk til at gøre for os, og hvad frygter vi, at det ville gøre ved os?**

Saml håb og frygt ved at adoptere ITIL eller ISO/IEC 20000. Håb er ofte konsistens og troværdighed. Frygt er ofte papirarbejde og langsomhed. Spørg, hvordan man får det første uden det andet. For eksempel adoptér ordforråd og nogle få praksisser, og undgå formularer. Registrér de betingelser, teamet ville have brug for.

## I praksis: et agilt ITIL-eksempel

En mellemstor webshop er vokset fra en grundlæggers hjemmeside til en virksomhed med et team på tolv ingeniører, en voksende kundebase og en lille gruppe supportmedarbejdere. Kunder mailer problemer til en fælles indbakke og ringer til et privat mobilnummer, når checkout svigter. Ingeniørerne retter det, de hører om, og skriver sjældent noget ned. Efter et betalingsnedbrud, der varede tre timer, spørger grundlæggeren, hvorfor ingen vidste det, før en kunde ringede.

Chefen for ingeniørerne foreslår den lettest mulige ITSM. Teamet lister sine services i kundebegreber: gennemse og søg, checkout og betaling, ordresporing og kundekonti. Hver får en ejer. En fælles supportadresse bliver den enkelte hoveddør og fører ind i et enkelt ticketværktøj med separate typer for hændelser og anmodninger. Enhver hændelse, der varer mere end 30 minutter, får en kort gennemgang, skrevet i et fælles dokument. Ændringer af checkout og betaling annonceres i en teamkanal, før de sker.

Efter tre måneder ved teamet, hvor mange hændelser det håndterer, og finder, at de fleste kommer fra to årsager. Det retter begge, og checkoutnedbruddet gentager sig ikke. Nogle vanskeligheder består. Kunder ringer stadig til grundlæggeren, når de er oprevne, så noget efterspørgsel omgår ticketværktøjet. Ingeniørerne brokker sig også over, at det tager tid at skrive gennemgange, og to gennemgange blev sprunget over i en travl måned. Chefen for ingeniørerne beslutter at holde gennemgangene korte, at bede grundlæggeren videresende opkald til supportadressen og at gense, om en fuldere ITIL-lignende proces er nødvendig efter endnu et kvartal med data.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams, der også driver det, de bygger, gør allerede ITSM. Navngiv jeres services, registrér hændelser og ændringer på en let måde, og del data med dem, der supporterer jeres services. Behandl servicedesken som en kilde til evidens om, hvad brugerne kæmper med.

### Service- og driftsteams

Drifts- og servicedeskpersonale bærer det meste af ITSM-praksissen. Agile ideer kan hjælpe ved at gøre jeres arbejde synligt, forkorte feedbackløkker med brugerne og flytte forbedring fra årlige projekter til små, jævnlige ændringer. Forklar formålet bag hver ITSM-regel, så kolleger kan tilpasse den fornuftigt.

### Ledelse og governance

Ledere afgør, hvor meget struktur der kræves, og hvor meget evidens der skal efterspørges. Bed om resultater, kunderne mærker, og nogle få målinger, teams kan producere fra deres værktøjer. Vær forsigtig med at købe et rammeværk som signal; Wikipedia-artiklen opregner mange, og ingen er en erstatning for at kende sine egne services.

### Kunder og brugere

Kunder og brugere er grunden til, at ITSM findes. Forvent en klar måde at bede om hjælp på, ærlig information om, hvad man kan forvente, og en person, der ejer hver service. Til gengæld giv rettidig og specifik information, når noget går galt, så leverandøren kan lære af det.

## Almindelige fejlmønstre

- **Proces for processens skyld.** Formularer og godkendelser mangedobles, og ingen husker hvorfor. I stedet: knyt hver praksis til et formål, og slet dem, der ikke længere tjener et.
- **Ingen enkelt hoveddør.** Brugerne henvender sig til den, de kender, og efterspørgslen er usynlig. I stedet: tilbyd én nem vej, og fang uformelle anmodninger ind i den.
- **At blande hændelser, anmodninger og problemer.** Rapporter vildleder, og årsager forbliver skjulte. I stedet: brug enkle definitioner, og sortér tickets konsekvent.
- **Services beskrevet efter teknologi.** Brugerne kan ikke finde, hvad de har brug for, og ejerne er uklare. I stedet: beskriv services i kundebegreber, og navngiv en ejer for hver.
- **At adoptere et rammeværk på hel og holdent.** Teams kopierer et stort rammeværk og begraver sig i proces. I stedet: begynd med problemet, og tag kun de dele, der hjælper.
- **At ignorere brugerne.** Leverandøren taler kun med den kunde, der betaler. I stedet: lyt til både kunder og brugere, og se efter konflikter.
- **At måle aktivitet.** Optællinger af tickets og opkald erstatter evidens for servicekvalitet. I stedet: mål tilgængelighed, tid til at genoprette servicen og brugertilfredshed.
- **At behandle ITSM som adskilt fra levering.** Leveranceteams sender og lader driften klare sig. I stedet: forbind dem gennem fælles services, fælles data og fælles gennemgange (se Emne 5.1 — Agil servicestyring).

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Servicedefinition | Services beskrives efter teknologi eller slet ikke | Nogle services er listet med ejere | Alle services beskrives i kundebegreber med navngivne ejere | Servicebeskrivelser tjekkes mod brug og feedback | Servicedefinitioner deles med kunder og leverandører og justeres sammen |
| Support og anmodninger | Hjælp bedes om ad uformelle veje | Nogle teams har et ticketværktøj eller en fælles indbakke | Én hoveddør med klare typer for hændelser og anmodninger | Efterspørgsel og løsningstider spores og gennemgås | Support koordineres på tværs af teams og leverandører med fælles data |
| Registre og målinger | Få registre føres | Nogle teams registrerer hændelser og ændringer | Registre er konsistente, og hvert har et angivet formål | Kundevendte målinger gennemgås jævnligt | Målinger deles på tværs af services og bruges til at sætte prioriteter sammen |
| Forbedring | Rettelser følger kriser | Nogle teams gennemgår hændelser | Jævnlig gennemgang af hændelses- og anmodningsdata fører til planlagte ændringer | Forbedringsarbejde er ressourcesat, og dets resultater tjekkes | Forbedring er rutine på tværs af teams og med kunder |

## Tjekliste

- [ ] Vi har en liste over vores services på kundens sprog.
- [ ] Hver service har en navngiven ejer.
- [ ] Vi ved, hvem kunderne og hvem brugerne er for hver service.
- [ ] Brugerne har én klar hoveddør til hjælp og anmodninger.
- [ ] Hændelser, anmodninger og problemer registreres som forskellige ting.
- [ ] Hver slags registrering har et angivet formål, og ubrugte felter er fjernet.
- [ ] Vi måler mindst én ting, kunderne mærker, som tilgængelighed eller tid til at genoprette servicen.
- [ ] Vi gennemgår jævnligt hændelses- og anmodningsdata og handler på dem.
- [ ] Vi kan sige, hvilke rammeværksideer vi bruger, og hvilke vi har udeladt.
- [ ] Rutineopgaver, der sikkert kan automatiseres, er identificeret.

## AI-prompts

**Formål: at udarbejde en liste over jeres services på kundens sprog.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Formål: at sortere nylige tickets i hændelser, anmodninger og problemer.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Formål: at vælge et lille første sæt ITSM-praksisser til jeres situation.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede en samtale mellem et leveranceteam og servicedesken.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): brug den til at udarbejde eller gennemgå en liste over services på kundens sprog, med ejere og beskrivelser.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): brug den, når I er klar til at aftale med kunderne, hvilket serviceniveau der kan forventes.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): brug den til at forberede, hvordan jeres team håndterer en hændelse, før en indtræffer.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): brug den til at forstå, hvilke slags anmodninger og hændelser der kommer, og i hvilket omfang.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre det klart, hvem der ejer hver service, og hvem der høres eller informeres.

## Vigtigste kilder

- **IT service management** (Wikipedia): en kort definition med en liste over beslægtede rammeværker og standarder, nyttig som kort.
- **ITIL** (Wikipedia): historien og versionerne af det bedst kendte ITSM-rammeværk, inklusive dets ejerskifter.
- **ISO/IEC 20000** (Wikipedia): baggrund om den internationale standard for servicestyringssystemer.
- **Enterprise service management** (Wikipedia): en introduktion til at anvende ITSM-ideer ud over IT.

## Referencer

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
