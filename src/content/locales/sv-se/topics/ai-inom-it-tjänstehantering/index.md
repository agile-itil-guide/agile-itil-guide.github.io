# AI inom IT-tjänstehantering

**Artificiell intelligens kan påskynda upptäckt, prioritering och kunskapsarbete inom IT-tjänstehantering, och den är säker att använda bara där en människa förblir ansvarig, svar är förankrade i ert eget material och riskerna för fel, bias och dataexponering hanteras.**

## Varför detta är viktigt

Tjänstehantering innebär mycket språk och mönsterigenkänning: att läsa ärenden, sammanfatta incidenter, söka i kunskap, utarbeta svar, upptäcka ovanliga signaler i övervakningsdata. Det är de uppgifter där nyare AI-system verkar mest kapabla, och leverantörer har skyndat sig att lägga till dem i servicedeskar och driftverktyg. Team kommer att få frågan, om de inte redan har fått den, om de ska använda dem.

Möjligheten är verklig, och det är farorna också. AI-system kan påstå osanningar med tillförsikt, återspegla bias i sin träning och i de data de får, avslöja konfidentiell information om de matas slarvigt och leda människor att lita på utdata de inte har kontrollerat. Flera vitt rapporterade fall visar kostnaden för felplacerat förtroende. En tjänsteorganisation som inför AI utan eftertanke kan skada sina kunder och sitt eget anseende.

År 2026 har AI också kommit in i ramverket. PeopleCerts offentliga certifieringssida beskriver den nya ITIL som "Practical and AI-native by design" och listar en modul ITIL AI Governance (version 5) som täcker att styra AI "ansvarsfullt och i skala" (se Ämne 2.2 — ITIL). Den här guiden kunde inte verifiera från ägarens publikationer vad ITIL 5 säger om AI i detalj, så det här ämnet beskriver inte ramverkets ståndpunkt utöver de uttalandena. Det bygger på Wikipedia-artiklarna om AIOps och om AI-hallucination, på NIST:s sida om AI Risk Management Framework och på praktiskt resonemang, och det märker praxis som sådan.

## Centrala begrepp

### Var AI hjälper inom tjänstehantering

De flesta användningar faller i några få grupper. Tabellen visar exempel och vilken sorts risk var och en medför, som den här guidens läsning.

| Användning | Vad AI gör | Huvudrisker |
|---|---|---|
| **Upptäckt och korrelation (AIOps)** | Hittar avvikelser, grupperar relaterade händelser, föreslår sannolika orsaker | Falsklarm, missade händelser, ogenomskinligt resonemang |
| **Stöd för servicedesken** | Föreslår svar, sammanfattar ärenden, utarbetar svar, dirigerar förfrågningar | Felaktiga eller påhittade svar, ton, integritet |
| **Kunskapsarbete** | Utarbetar och förbättrar artiklar, söker i kunskap | Fabricerat innehåll, föråldrade källor |
| **Incident- och problemanalys** | Sammanfattar tidslinjer, föreslår hypoteser, utarbetar granskningar | Rimliga men ogrundade orsaker |
| **Stöd för ändring och release** | Granskar ändringar, utarbetar anteckningar, föreslår risk | Övertro, missat sammanhang |
| **Kod och automatisering** | Skriver skript och konfiguration | Osäker eller felaktig kod, dolda beroenden |
| **Analys och rapportering** | Sammanfattar data, utarbetar rapporter | Felaktiga beräkningar, påhittade siffror |

### AIOps

Wikipedia-artikeln beskriver AIOps som att använda AI, maskininlärning och dataanalys av stora datamängder för att automatisera och förbättra datacenterhantering, med syftet att upptäcka, diagnostisera och lösa IT-problem mer effektivt än traditionella metoder. Den säger att Gartner först definierade AIOps 2016. Artikeln listar förmågor som händelsekorrelation, avvikelseupptäckt, grundorsaksanalys, orsaksbestämning, prediktiv analys, incidenthantering, automatiserad åtgärd, prestandaprognos, resursfördelning och kapacitetshantering. Den säger att AIOps bygger på observationsdata, som loggar och övervakning, och interaktionsdata, som ärenden, händelser och incidentregister.

Artikeln hävdar fördelar, som att genomsnittlig tid till upptäckt förbättras med 15 till 20 procent och att kritiska incidenter minskar med över 50 procent, men noterar att dessa kommer från en enda konsultartikel och inte är oberoende verifierade i texten. Den anger ingen kritik, inga felfall eller begränsningar. Behandla leverantörspåståenden därefter och pröva varje verktyg mot era egna incidenter (se Ämne 3.10 — Övervakning och händelsehantering).

### Generativ AI och hallucination

Wikipedia-artikeln om hallucination inom AI definierar det som ett svar som innehåller falsk eller vilseledande information presenterad som fakta, och noterar att termen kritiseras för att ge programvara mänskliga drag. Den ger orsaker: förträning på nästa-ord-förutsägelse belönar gissning när modellen saknar information, datamängder kan vara ofullständiga eller icke-representativa, och OpenAI-forskare hävdar att träning och utvärdering belönar gissning framför att erkänna osäkerhet. Exempel den redovisar omfattar:

- **Mata v. Avianca (maj 2023):** en advokat lämnade in sex falska rättsfall genererade av ChatGPT; domaren utdömde ett vite på 5 000 US-dollar den 23 juni 2023.
- **Moffatt v. Air Canada (februari 2024):** en nämnd höll ett flygbolag fast vid en sorgeresepolicy som dess chattbot hade hittat på.
- Rapporter från en konsultfirma som innehöll falska källhänvisningar, och en studie som fann att 69 av 178 GPT-3-referenser hade felaktiga eller icke-existerande identifierare.

Dessa är följderna av att lita på overifierade utdata: juridiskt ansvar, ekonomisk exponering och skadat förtroende. Inom tjänstehantering skapar en chattbot som hittar på en policy eller ett förfarande samma klass av risk.

### Åtgärder: förankring och kontroller

Artikeln beskriver retrieval-augmented generation (RAG) som att låta modellen få åtkomst till externa källor innan den svarar. Den listar också datarelaterade metoder, modell- och inferensmetoder och förslag som skyddsräcksprogramvara och konfidenspoängsättning, och noterar att ingen källa den ger kvantifierar hur mycket någon av dessa minskar hallucination. För ett tjänsteteam är praktiska åtgärder:

- **Förankra svar i ert eget godkända material,** som kunskapsbasen, och visa källan.
- **Ha en människa i slingan** för allt som påverkar en kund, ett åtagande eller produktion.
- **Be om vad AI är osäker på,** och behandla ostödda påståenden som overifierade.
- **Testa regelbundet** på verkliga fall, inklusive fall där rätt svar är "jag vet inte".

### Ramverk för riskhantering

National Institute of Standards and Technology (NIST) publicerade AI Risk Management Framework (AI RMF 1.0) den 26 januari 2023, som det beskriver som avsett för frivillig användning, för att hjälpa till att hantera risker från AI för individer, organisationer och samhälle och att förbättra förmågan att ta in hänsyn till trovärdighet i utformning, utveckling, användning och utvärdering av AI-produkter, -tjänster och -system. NIST:s sida nämner fyra funktioner, Govern, Map, Measure och Manage, men beskriver dem inte. Det släppte också en Generative Artificial Intelligence Profile (NIST-AI-600-1) den 26 juli 2024 för att hjälpa organisationer att identifiera risker som är unika för generativ AI, och säger att ramverket revideras. Läs själva ramverket för detaljer. Andra regler om AI, som lagar och standarder, skiljer sig mellan länder och sektorer; fråga era juridiska funktioner och efterlevnadsfunktioner och skaffa texten (se Ämne 5.7 — Styrning, risk och efterlevnad).

### Dataskydd och personlig integritet

Allt som ges till en AI-tjänst kan lagras, användas för träning eller exponeras, beroende på tjänsten och villkoren. Ärenden, loggar och chattutskrifter innehåller ofta personuppgifter, inloggningsuppgifter och konfidentiell affärsinformation. Innan ni använder något AI-verktyg med verkliga data, ta reda på vart data går, vem som kan se dem, hur länge de sparas och om de används för att träna modeller, och tillämpa er informationssäkerhetspolicy (se Ämne 3.13 — Informationssäkerhetshantering). Ta bort eller ersätt personuppgifter och hemligheter innan ni klistrar in dem i ett verktyg ni inte har godkänt.

### Ansvar och transparens

En person eller ett team måste förbli ansvarig för beslut en AI bidrar till. När AI utarbetar ett svar är avsändaren ansvarig. När AI föreslår en grundorsak är utredaren ansvarig för att testa den. Tala om för kunder när de talar med ett automatiserat system där lagen, ett avtal eller rättvisa kräver det, och ge en väg till en människa. För register över vad AI ombads göra och vad den producerade för betydande beslut, som ni skulle göra för andra verktyg (se Ämne 5.1 — Agil tjänstehantering för belägg).

### Bias och rättvisa

AI-system lär sig av data som speglar tidigare beslut och luckor. En prioriteringsassistent tränad på historiska ärenden kan behandla vissa användargrupper eller vissa slags problem som lägre prioriterade. Kontrollera utdata över grupper, involvera människor med olika perspektiv i testning och bevaka mönster. De källor som lästs för den här guiden redovisar inte bias i detalj, så detta är en allmän varning, inte ett fynd.

### Att mäta AI

Mät kvaliteten och effekten av varje AI-steg, inte bara dess volym: hur ofta människor åsidosätter det, hur ofta det har fel, hur lång tid uppgifter tar med och utan det och vad användare säger (se Ämne 5.6 — Mått och mätning). Var försiktiga med leverantörssiffror; AIOps-artikelns egna fördelspåståenden vilar på en källa.

### Färdigheter och prompter

Den praktiska färdigheten att arbeta med AI omfattar att skriva tydliga instruktioner, tillhandahålla rätt material, be om osäkerhet och verifiera utdata. Ämne 6.3 — AI-färdigheter och prompter behandlar detta i detalj.

### Källornas gränser

AIOps-artikeln innehåller ingen kritik och dess fördelssiffror kommer från en källa; hallucinationsartikeln är flaggad som i behov av uppdatering och lästes delvis; NIST:s sida beskriver inte ramverkets funktioner; och PeopleCerts sida förklarar inte vad ITIL 5 säger om AI. Det här ämnet ger därför en försiktig redogörelse och lämnar detaljer åt primärkällor.

## Bästa praxis

1. **Börja med en lågriskanvändning och en tydlig fråga.** Välj en uppgift där fel är billiga och lätta att fånga, som att utarbeta en sammanfattning för internt bruk, och definiera vad framgång betyder.
2. **Håll en person ansvarig.** Utse vem som ansvarar för vad AI bidrar till och kräv granskning av allt som når en kund, ändrar produktion eller gör ett åtagande.
3. **Förankra svar i godkänt material.** Där ni använder AI för svar, koppla den till er egen kunskapsbas och visa källan. Få den att säga "jag vet inte" när den saknar en.
4. **Skydda data.** Avgör vilka data som får gå till vilket verktyg, ta bort personuppgifter och hemligheter och använd godkända verktyg med villkor ni har läst. Involvera säkerhets- och juridikpersonal tidigt.
5. **Testa med verkliga fall.** Samla en uppsättning verkliga ärenden och incidenter med kända svar, kör AI på dem och registrera var den fallerar. Upprepa efter varje byte av verktyg eller inställningar.
6. **Verifiera påståenden och referenser.** Kontrollera namn, tal, källhänvisningar och förfaranden mot källor, som fallen med påhittade rättsfall visar. Godta aldrig referenser ni inte har sett.
7. **Var ärliga mot kunder.** Säg när ett automatiserat system svarar där det betyder något och ge en enkel väg till en människa.
8. **Bevaka bias.** Granska utdata över användargrupper och slags problem och involvera människor som kan se luckor. Justera eller sluta använda där skada uppstår.
9. **Mät kvalitet och effekt.** Följ åsidosättandefrekvens, felfrekvens, sparad tid och användares åsikter. Jämför med processen utan AI och var skeptiska till leverantörssiffror.
10. **För register.** För betydande beslut, behåll vad som frågades och producerades, vem som granskade det och vad som beslutades. Detta stöder ansvar och revision.
11. **Använd ett riskramverk.** Anta ett erkänt angreppssätt, som NIST:s AI RMF eller en organisatorisk AI-policy, för att strukturera beslut om var AI är tillåten. Behandla det som en vägledning för tänkande.
12. **Utbilda människor.** Lär personalen hur verktygen fungerar, var de fallerar och vad som är tillåtet. Uppdatera utbildningen när verktyg och regler förändras.

## Frågor att diskutera med teamet

**Var använder vi redan AI, officiellt eller inte?**

Fråga ärligt. Personal använder ofta publika verktyg med verkliga ärenden. Målet är inte att straffa utan att förstå. Lista användningarna och de data som berörs. Diskutera vilka som är acceptabla och vilka som behöver en säkrare väg. Kom överens om en kort policy.

**Vilken uppgift skulle vi helst vilja ha hjälp med, och vad händer om AI gör fel?**

Välj en uppgift och gå igenom felfallet. Om svaret är ett ursäktsmejl är risken liten; om det är en felaktig instruktion till en kund är risken högre. Det hjälper att rangordna användningar efter risk. Välj en första pilot med begränsad skada.

**Hur skulle vi veta att ett AI-svar är fel?**

Fråga vem som kontrollerar svar och hur. Vanliga svar: ingen, eller den som frågade. Diskutera källor, tester och andra granskningar. Kom överens om en minimikontroll för varje slags användning.

**Vilka data är vi bekväma med att lägga i ett AI-verktyg, och vilka inte?**

Samla typerna: ärenden, loggar, kundnamn, inloggningsuppgifter, avtal. Markera var och en som acceptabel, acceptabel efter borttagning av känsliga delar, eller aldrig. Kontrollera med säkerhet och juridik. Skriv det som en guide på en sida.

**Vem ansvarar när ett AI-stött beslut går fel?**

Använd ett tidigare exempel på ett verktygsstött beslut. Fråga vem som svarade. Kom överens om att en namngiven person förblir ansvarig och vilka belägg de bör behålla. Notera varje gap där ingen skulle göra det.

**Vad skulle övertyga oss om att ett verktyg är värt att behålla?**

Be teamet beskriva de belägg de skulle godta: sparad tid med lika god eller bättre kvalitet, färre fel, användarnöjdhet. Diskutera hur de samlas in i en prövning. Kom överens om ett granskningsdatum.

## I praktiken: ett agilt ITIL-exempel

En nationell skattemyndighets IT-servicedesk hanterar ungefär 1 200 kontakter i veckan från personal, många om rutinfrågor. Deskchefen föreslår en AI-assistent som föreslår svar från kunskapsbasen och utarbetar svar. Myndighetens säkerhetsansvarige oroar sig för personuppgifter i ärenden och för att felaktiga svar når personalen.

De kommer överens om en begränsad pilot. Assistenten arbetar bara utifrån godkända kunskapsartiklar, visar vilken artikel varje förslag kommer från och säger när den inte hittar något relevant. Analytiker granskar varje föreslaget svar innan det skickas, och verktyget kan inte skicka på egen hand. Ärenden skannas efter personuppgifter och inloggningsuppgifter, som tas bort innan assistenten ser dem. En testuppsättning av 200 tidigare ärenden med kända svar används före piloten, och teamet registrerar var assistenten fallerar. Deskchefen och säkerhetsansvarige kommer överens om mått: hur ofta analytiker redigerar eller avvisar förslag, tid till första svar och en kort nöjdhetsfråga till personalen. Piloten pågår i tre månader, och chefen rapporterar till en gemensam granskning som omfattar en analytiker och en personalrepresentant.

I slutet godtar analytiker de flesta förslag för vanliga frågor och svarstiden för dessa sjunker. Testuppsättningen visar att assistenten ger ett självsäkert men felaktigt svar på frågor om en nyligen ändrad policy, eftersom kunskapsartikeln var föråldrad. Vissa problem återstår. Två analytiker började skicka förslag med liten kontroll när de hade fullt upp, en personalmedlem med en ovanlig fråga fick ett intetsägande svar som missade poängen och leverantörens villkor om datalagring var oklara. Chefen lägger till en regel att policyändringar måste uppdatera kunskapsartikeln innan de träder i kraft, inför en stickprovskontroll av skickade svar av en senior analytiker och ber inköp och säkerhetsansvarige att klargöra villkoren innan piloten utvidgas.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam kan lägga till AI-funktioner i produkter och använda AI för att skriva kod och tester. Kontrollera genererad kod för korrekthet och säkerhet, håll hemligheter utanför prompter och var tydliga mot användare när AI är inblandad. Bygg in övervakning av AI-beteende i er tjänst.

### Tjänste- och driftteam

Driftteam kommer att möta AI i övervakning, deskverktyg och analys. Behandla AI-förslag som hypoteser, testa dem och för register. Hjälp till att definiera vilka data som får användas och ge återkoppling för att förbättra förankringsmaterial.

### Ledning och styrning

Ledare sätter policy, riskaptit och ansvar för AI. Be om en förteckning över användningar, ett riskramverk och belägg från piloter, inte leverantörspåståenden. Se till att juridik-, säkerhets- och integritetspersonal är involverade från början.

### Kunder och användare

Kunder och användare bör få veta när de har att göra med ett automatiserat system där det betyder något, och ha en väg till en människa. Rapportera felaktiga eller konstiga svar, eftersom de är belägg. Fråga leverantörer hur de skyddar dina data och kontrollerar AI-utdata.

## Vanliga orsaker till misslyckande

- **Att lita på overifierade utdata.** Fabricerade fakta når kunder. Förankra i stället svar i godkänt material och verifiera före utskick.
- **Skugg-AI.** Personal klistrar in verkliga data i publika verktyg. Ge i stället godkända verktyg och en tydlig datapolicy.
- **Ingen ansvarig person.** Ingen svarar för AI-stödda beslut. Utse i stället en ägare och kräv granskning.
- **Att tro på leverantörssiffror.** Fördelspåståenden förblir okontrollerade. Testa i stället på era egna fall och mät.
- **Föråldrad förankring.** Kunskapsbasen är fel och AI upprepar det. Håll i stället artiklar aktuella och ägda.
- **Dold bias.** Vissa användare eller frågor behandlas sämre. Testa i stället över grupper och granska utdata.
- **Att automatisera före förståelse.** AI agerar på produktion utan kontroller. Börja i stället med förslag och granskning, och gå över till handling bara med starka skyddsåtgärder.
- **Inga register.** Beslut kan inte revideras. För i stället loggar över vad som frågades, producerades och beslutades.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Policy och ansvar | Användning är ad hoc och oregistrerad | Vissa team har regler | En skriven policy, en förteckning över användningar och namngivna ägare | Policyefterlevnad och incidenter granskas | Policy samordnas mellan team, leverantörer och tillsynsmyndigheter |
| Kvalitet och förankring | Utdata betros som standard | Vissa kontroller av viktiga användningar | Svar är förankrade i godkända källor och testade på verkliga fall | Fel- och åsidosättandefrekvenser mäts och åtgärdas | Förankring och tester delas och förbättras mellan team |
| Dataskydd och rättvisa | Data klistras in fritt | Vissa dataregler finns | Regler för datahantering och biaskontroller är rutin | Dataincidenter och rättvisefynd följs och åtgärdas | Data- och rättvisearbetssätt samordnas i hela organisationen och med leverantörer |
| Värde och lärande | Värde antas | Vissa prövningar körs | Piloter har överenskomna mått och beslut | Nyttor och kostnader mäts mot baslinjer | Lärande från AI-användning sprids kontinuerligt över tjänster |

## Checklista

- [ ] Vi har en förteckning över var AI används i eller kring våra tjänster, inklusive inofficiell användning.
- [ ] En namngiven person ansvarar för varje AI-stödd användning.
- [ ] En skriven policy säger vilka data som får gå in i vilka verktyg.
- [ ] Personuppgifter och hemligheter tas bort eller maskeras före användning med verktyg som inte är godkända för dem.
- [ ] Svar som visas för kunder eller används i beslut är förankrade i godkänt material och granskade.
- [ ] Vi har en testuppsättning av verkliga fall och kör om den efter ändringar.
- [ ] Kunder får veta när ett automatiserat system svarar, där det betyder något, och har en väg till en människa.
- [ ] Vi mäter åsidosättandefrekvens, felfrekvens, sparad tid och användares åsikter.
- [ ] Register förs för betydande AI-stödda beslut.
- [ ] Juridik-, säkerhets- och integritetspersonal har granskat vår användning och verktygets villkor.

## AI-prompter

**Syfte: utarbeta en förteckning över AI-användning utifrån vad människor berättar.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: utforma en testuppsättning för en AI-assistent.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva en AI-användningspolicy på en sida för ett team.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: granska ett AI-genererat svar innan det går till en användare.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## AI-färdigheter

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): använd för att skriva tydliga prompter som tillhandahåller rätt material och ber om osäkerhet.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): använd för att dokumentera vad en modell är till för, hur den testades och dess gränser.
- [data-governance](../../../../skills/data-governance/SKILL.md): använd för att avgöra vilka data som får användas med vilka verktyg.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): använd för att förbereda frågor till juridik- och integritetspersonal om AI-användning.
- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera AI-relaterade risker, ägare och behandlingar.

## Viktiga källor

- **AIOps** (Wikipedia): en kort beskrivning av AI för IT-drift, dess förmågor och dess påstådda fördelar, utan kritik.
- **Hallucination (artificial intelligence)** (Wikipedia): orsaker, exempel och åtgärdsidéer för falska utdata.
- **AI Risk Management Framework** (NIST): det frivilliga ramverket och dess profil för generativ AI; läs själva ramverket för detaljerna.
- **ITIL certifications** (PeopleCert): ägarens offentliga uttalanden om den nya ITIL och dess modul för AI-styrning.

## Referenser

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
