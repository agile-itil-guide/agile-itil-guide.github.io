# Informationssäkerhetshantering

**Informationssäkerhetshantering skyddar informationens konfidentialitet, riktighet och tillgänglighet genom riskbaserade kontroller, och i en agil organisation fungerar kontrollerna bäst när de byggs in i leveranspipelinen och teamens dagliga vanor i stället för att läggas till som en grind i slutet.**

## Varför detta är viktigt

Varje tjänst innehåller information som någon bryr sig om: kunders uppgifter, betalningsregister, hälsodata, interna planer. Ett säkerhetsfel skadar de människor informationen beskriver, skadar organisationens anseende och kan medföra juridiska och ekonomiska påföljder. Team för tjänstehantering är ofta de som ser felet först, som en incident, och de som måste återställa normal drift efteråt.

Säkerhet och kontinuerlig leverans framställs ofta som motsatser: säkerhet säger sakta ned, leverans säger öka farten. Den uppfattningen är inte till hjälp. Säkerhet som kommer först i slutet av en release ger sena överraskningar och forcerade undantag. Säkerhet som byggs in i arbetet, med kontroller som körs automatiskt och risker som diskuteras tidigt, skyddar tjänsten utan att stoppa den. Detsamma gäller tjänstehantering: de arbetssätt som gör ändringar säkra gör också säkerhetsändringar säkra.

Det här ämnet använder [Wikipedia-artikeln om informationssäkerhet](https://en.wikipedia.org/wiki/Information_security) och [artikeln om ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) som huvudkällor. Båda är allmänna. Den första är en lång artikel, och den här guiden läste bara de första 100 000 av dess ungefär 243 000 tecken. Det här ämnet ger inga juridiska råd; lagar, förordningar och avtalsmässiga skyldigheter skiljer sig mellan länder och sektorer, och rätt källa är texten i den regel som gäller er.

## Centrala begrepp

### Vad informationssäkerhet är

Wikipedia definierar informationssäkerhet som att skydda information genom att minska informationsrisker, med syftet att förhindra eller minska obehörig åtkomst, användning, utlämnande, avbrott, radering, förvanskning, ändring eller värdeminskning av information, och att minska effekten av incidenter. Den gäller elektronisk, fysisk och immateriell information, och den är en del av informationsriskhantering.

### CIA-triaden

Kärnmålen är **konfidentialitet**, **riktighet (integritet)** och **tillgänglighet**, avvägda mot policyns effektivitet och organisationens produktivitet. Artikeln beskriver dem så här:

| Mål | Betydelse | Exempel i en tjänst |
|---|---|---|
| **Konfidentialitet** | Information skyddas mot obehörigt utlämnande | Bara behörig personal kan se patientjournaler |
| **Riktighet (integrity)** | Information är korrekt och fullständig och kan inte ändras på ett obehörigt eller oupptäckt sätt | Ett betalningsbelopp kan inte ändras utan spår |
| **Tillgänglighet** | Information är åtkomlig när den behövs | Tjänsten förblir uppe och motstår överbelastningsattacker |

Artikeln noterar att konfidentialitet skiljer sig från personlig integritet (privacy), som den kallar ett vidare begrepp. Den noterar också att organisationer kan lägga till mål som autenticitet, ansvarighet, oförnekbarhet och pålitlighet, och att Parkerian Hexad, en utvidgad modell, har omstridda förtjänster. Tillgänglighet länkar direkt till tjänstehantering (se Ämne 3.11 — Tillgänglighet, kapacitet och prestanda).

### Riskhantering

Artikeln beskriver risk som sannolikheten för skada på en informationstillgång. **Sårbarheter** är svagheter, **hot** är potentiella orsaker till skada och **konsekvens** är den resulterande förlusten. Riskhantering är en pågående, iterativ process där ledningen kan acceptera, minska, överföra (till exempel genom försäkring) eller undvika en risk. Det som återstår kallas **restrisk**. Artikeln listar sex steg: identifiera tillgångar, bedöma hot, bedöma sårbarheter, beräkna konsekvens, välja och införa kontroller och utvärdera dessa kontroller.

### Kontroller och skiktat försvar

Kontroller skyddar konfidentialitet, riktighet eller tillgänglighet. Artikeln beskriver **skiktat försvar (defense in depth)**, att lägga överlappande kontroller i lager, där kontrolltyperna beskrivs som administrativa (policyer, rutiner), logiska (tekniska åtgärder som åtkomstkontroll och kryptering) och fysiska (lås, lokaler). Ingen enskild kontroll räcker; lagren täcker varandras fel.

### Säkerhetsincidenter

Artikeln beskriver hantering av datasäkerhetsincidenter som att övervaka, upptäcka och svara på säkerhetshändelser, med incidentsvarsplaner som aktiveras när intrång upptäcks, vanligtvis utförda av ett incidentsvarsteam. Säkerhetsincidenter är en sorts incident och har nytta av samma roller, kommunikation och skuldfritt lärande (se Ämne 3.2 — Incidenthantering), plus särskilda steg som att bevara bevis och underrätta tillsynsmyndigheter eller berörda människor där det krävs.

### ISO/IEC 27001 och 27002

Enligt Wikipedia anger **ISO/IEC 27001** krav för att upprätta, införa, underhålla och ständigt förbättra ett ledningssystem för informationssäkerhet (information security management system, ISMS), inklusive att bedöma och hantera informationssäkerhetsrisker. Kraven är generiska och avsedda för organisationer av alla slag, storlekar och karaktärer. Första utgåvan kom i oktober 2005 från den brittiska standarden BS 7799-2, andra 2013 och tredje i oktober 2022, anpassad till ISO/IEC 27002:2022; ett tillägg i februari 2024 lade till en klimatförändringshänsyn.

Nyckelfakta från artikeln:

- ISMS-kraven finns i klausulerna 4 till 10: sammanhang, ledarskap, planering, stöd, verksamhet, utvärdering av prestanda och förbättring.
- 2022 års utgåvas bilaga A har 93 referenskontroller i fyra teman: organisatoriska, människor, fysiska och tekniska. Utgåvan från 2013 listade 114. Bilaga A är en referensuppsättning och inte en obligatorisk checklista: organisationer upprättar en **tillämplighetsförklaring (Statement of Applicability)** som motiverar vilka kontroller de tar med och utelämnar.
- Certifiering är frivillig om inte en lag, ett avtal eller ett system kräver den. ISO certifierar inte organisationer; oberoende certifieringsorgan gör det, i steg, följt av övervakningsrevisioner och omcertifiering i en treårscykel. Ett certifikat gäller bara inom sin angivna omfattning.
- **ISO/IEC 27002** ger vägledning om kontrollerna i bilaga A. Den är vägledning och man kan inte certifieras mot den.

Artikeln noterar att en litteraturgenomgång från 2021 fann få empiriska studier av certifieringens resultat. Ett certifikat visar att ett ledningssystem finns; det är inte bevis för att ett visst intrång inte kan inträffa.

### Andra ramverk och lagar

Artikeln om informationssäkerhet nämner många andra standarder och system, som NIST Cybersecurity Framework, Cyber Essentials i Storbritannien, Essential Eight i Australien och betalkortsbranschens standard. Den listar också lagar, inklusive Storbritanniens Computer Misuse Act (1990) och Data Protection Act (1998) och USA:s HIPAA (1996), Gramm–Leach–Bliley Act (1999) och Sarbanes–Oxley Act (2002). Listan visar hur varierande reglerna är. Vilka som gäller er beror på var ni verkar, sektorn och de data ni innehar; fråga er juridiska funktion eller efterlevnadsfunktion (se Ämne 5.7 — Styrning, risk och efterlevnad).

### Säkerhet i leveranspipelinen

Arbetssätt som passar kontinuerlig leverans omfattar:

- **Hotdiskussion tidigt:** fråga i planeringen vad som kan gå fel med en funktion och vem som skulle vilja missbruka den.
- **Automatiserade kontroller:** skanning av kod, beroenden och konfiguration vid varje ändring, med resultat synliga för teamet (se Ämne 3.4 — Ändringsmöjliggörande).
- **Minsta möjliga behörighet (least privilege):** ge människor och system bara den åtkomst de behöver.
- **Hantering av hemligheter:** hålla inloggningsuppgifter utanför koden och rotera dem.
- **Säkerhetstestning:** penetrationstester och automatiserade tester som en del av cykeln (se färdigheten för säkerhetstestning nedan).
- **Loggning och övervakning:** upptäcka misstänkt aktivitet (se Ämne 3.10 — Övervakning och händelsehantering).

DORA:s vägledning, som citeras på andra ställen i den här guiden, listar genomgripande säkerhet bland de arbetssätt som stöder kontinuerlig leverans (se Ämne 3.5 — Release- och driftsättningshantering).

### Kultur och människor

Artikeln om informationssäkerhet nämner forskning om säkerhetskultur, inklusive sju kulturdimensioner identifierade av Roer och Petric (2017). Vilken modell man än väljer är poängen att många intrång börjar hos människor: ett nätfiskemeddelande, ett misstag, en genväg under press. Utbildning, tydliga rapporteringsvägar och en skuldfri hållning till ärliga misstag förbättrar säkerheten mer än skuldbeläggning gör.

### Källornas gränser

Wikipedia-artikeln anger ingen särskild kritik av CIA-triaden och lästes bara delvis. ISO/IEC 27001-artikeln diskuterar inte förhållandet till ISO/IEC 20000 eller till cykeln planera-göra-kontrollera-agera. Det här ämnet ger inga tekniska instruktioner; använd specialistvägledning för era plattformar, och standardernas text om ni behöver göra anspråk på överensstämmelse.

## Bästa praxis

1. **Vet vilken information ni innehar och var.** Gör en lista över de huvudsakliga informationstyperna, vem som äger var och en, var den lagras och hur känslig den är. Ni kan inte skydda det ni inte har identifierat.
2. **Gör riskbedömningar i enkla ord.** För varje viktig tjänst, fråga vad som kan gå fel med konfidentialitet, riktighet och tillgänglighet, hur sannolikt och hur illa. Registrera besluten att acceptera, minska, överföra eller undvika varje risk (se Ämne 5.7 — Styrning, risk och efterlevnad).
3. **Lägg era kontroller i skikt.** Kombinera policyer, tekniska kontroller och fysiska kontroller så att ett fel inte räcker. Granska vilka skikt som skyddar er mest känsliga information.
4. **Bygg in kontroller i pipelinen.** Kör automatiserade säkerhetskontroller på kod, beroenden och konfiguration vid varje ändring och gör fallerade kontroller synliga. Åtgärda problem vid ändringstillfället.
5. **Ge minsta möjliga behörighet som standard.** Bevilja åtkomst efter roll och behov, granska den regelbundet och ta bort den omgående när människor slutar eller byter roll (se Ämne 3.6 — Hantering av serviceförfrågningar).
6. **Hantera hemligheter ordentligt.** Håll inloggningsuppgifter utanför källkoden, lagra dem i ett hanterat valv och rotera dem. Testa att ni snabbt kan rotera dem efter en incident.
7. **Behandla säkerhetsincidenter som incidenter.** Använd samma roller, kommunikation och granskning som för andra incidenter och lägg till steg för bevis, begränsning och underrättelse. Öva planen.
8. **Känn till era underrättelseskyldigheter.** Ta reda på, från er juridiska funktion eller efterlevnadsfunktion, vilka lagar eller avtal som kräver att ni underrättar myndigheter eller berörda människor efter ett intrång, och hur snabbt. Skriv in det i incidentplanen, med citerad källtext.
9. **Ta med leverantörer.** Fråga kritiska leverantörer hur de skyddar er information och lägg förväntningar i avtal (se Ämne 3.14 — Leverantörshantering).
10. **Utbilda och prata.** Ge korta, regelbundna utbildningar baserade på verkliga exempel och gör det enkelt att rapportera ett misstag eller ett misstänkt meddelande utan skuldbeläggning.
11. **Använd standarder som en källa till struktur.** Om ni inför ISO/IEC 27001, behandla bilaga A som en referensuppsättning, skriv en motiverad tillämplighetsförklaring och håll ISMS lättviktigt. Certifiering är frivillig om den inte krävs.
12. **Lär av nära missar.** Granska nära missar och händelser med låg allvarlighet för mönster och för in dem i backloggen och riskregistret.

## Frågor att diskutera med teamet

**Vilken information innehar vi som skulle skada människor om den läckte, och var finns den?**

Be varje person nämna de känsligaste data de hanterar och var de finns. Jämför. Överraskningar är vanliga: kopior i testmiljöer, exporter i delade mappar, loggar som innehåller personuppgifter. Facilitatorn kan fråga vilken kopia som är sämst skyddad. Välj en att minska eller skydda bättre.

**När fattade vi senast ett beslut att acceptera en säkerhetsrisk, och vem fattade det?**

Be om ett exempel. Accepterade risker uppstår ofta tyst, genom dröjsmål. Diskutera vem som bör besluta, vilken information de behöver och var det registreras. Artikelns lista över sätt att hantera risk (acceptera, minska, överföra, undvika) är en användbar ram. Kom överens om ett enkelt ställe att registrera nästa beslut.

**Vilka säkerhetskontroller körs automatiskt vid varje ändring, och vad ignorerar vi?**

Lista kontrollerna i pipelinen och resultaten. Fråga vilka fynd som rutinmässigt ignoreras och varför. Ignorerade fynd betyder vanligtvis brus, brist på ägarskap eller brist på tid. Avgör vilka som ska åtgärdas, vilka som ska undertryckas med ett skäl och vem som äger listan.

**Vem har åtkomst till vad, och när granskade vi det senast?**

Välj ett känsligt system och lista vem som kan nå det. Jämför med vem som behöver det. Ofta har åtkomst ackumulerats. Fråga hur snabbt åtkomst tas bort när någon slutar. Kom överens om ett granskningsdatum och en ägare.

**Vad skulle vi göra under den första timmen av ett misstänkt intrång?**

Gå igenom stegen: vem som underrättas, vad som bevaras, vad som stängs av, vem som talar med vem. Gap dyker vanligtvis upp kring befogenhet och bevis. Fråga var planen finns och när den användes senast. Schemalägg en bordsövning.

**Vilka regler om säkerhet eller personlig integritet gäller oss, och hur vet vi det?**

Fråga vem som ansvarar för att veta. Om svaret är "juridik" eller "ingen", fråga hur ingenjörerna får veta om kraven. Regler skiljer sig mellan länder och sektorer, så lista de platser där ni verkar. Kom överens om att be den juridiska funktionen eller efterlevnadsfunktionen om en kort lista, med källtexten.

## I praktiken: ett agilt ITIL-exempel

Ett universitets forskningsberäkningstjänst innehåller datamängder från medicinska studier och ger forskare åtkomst till analysservrar. Ett team på åtta driver den. Efter en incident där en forskare kopierade en oskyddad datamängd till en personlig molnmapp kräver universitetets säkerhetsansvarige att varje ändring och varje åtkomstförfrågan går genom en tre veckors säkerhetsgranskning. Forskare invänder att detta kommer att göra tjänsten oanvändbar.

Tjänsteansvarig föreslår ett annat angreppssätt och träffar säkerhetsansvarige och två forskare. De listar den information som finns och grupperar datamängderna som offentliga, interna och känsliga. För känsliga data kommer de överens om strängare kontroller: åtkomst via namngiven roll och projekt, inga kopior utanför tjänsten och loggning av dataexport. För andra data gäller lättare regler. Teamet lägger till automatiserade kontroller av felkonfigurerad lagring och av hemligheter i kod i leveranspipelinen, och säkerhetsansvarige granskar resultaten varje vecka i stället för att granska varje ändring. Åtkomstförfrågningar för känsliga datamängder följer en förfrågningsmodell med godkännande av projektets dataansvarige och ett utgångsdatum. En kort utbildning baserad på den tidigare incidenten hålls för forskare.

Sex månader senare har inga fler kopior utanför tjänsten hittats, och åtkomstgranskningar tar en eftermiddag varje kvartal. Vissa svårigheter återstår. En grupp forskare använder ett verktyg som exporterar data på ett sätt som loggningen inte fångar, och de automatiserade kontrollerna ger falsklarm som teamet har börjat ignorera. De kommer överens med säkerhetsansvarige om att lägga verktyget i loggningens omfattning, att justera kontrollerna och att granska larm varje månad. De ber också den juridiska enheten om ett skriftligt utlåtande om de underrättelseskyldigheter som gäller de känsliga datamängderna, så att incidentplanen kan citera källan.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam gör säkerhet verklig i kod och konfiguration. Diskutera hot tidigt, håll hemligheter utanför koden, svara på automatiserade fynd och undvik att dela känsliga data i tester. Tala om för säkerhet och drift om ändringar som förändrar exponeringen.

### Tjänste- och driftteam

Driftteam kör kontrollerna: åtkomst, övervakning, uppdatering av programvara och säkerhetskopior. Behandla säkerhetshändelser som incidenter, bevara bevis och delta i övningar. För tillbaka incidentmönster till leverans och till riskregistret.

### Ledning och styrning

Ledare äger riskbesluten och kulturen kring dem. Be om risksammanfattningar i enkla ord, stöd tid för utbildning och övningar och se till att någon är ansvarig för varje beslut att acceptera en risk. Kräv inte certifiering som en etikett utan skäl.

### Kunder och användare

Kunder och användare anförtror tjänsten sin information. Använd stark autentisering där den erbjuds, rapportera misstänkta meddelanden och fråga leverantörer hur de skyddar dina data och hur de skulle tala om ett intrång för dig. Förvänta dig ärlighet och snabbhet om något går fel.

## Vanliga orsaker till misslyckande

- **Säkerhet som slutgrind.** Granskningar kommer i slutet och försenar releaser. Diskutera i stället hot tidigt och automatisera kontroller i pipelinen.
- **Efterlevnad som mål.** Ett certifikat döljer svagt arbetssätt. Använd i stället standarder för struktur och mät verkligt skydd.
- **Ospårade data.** Kopior sprids till testsystem och personlig lagring. Vet i stället var känsliga data finns och begränsa kopior.
- **Överflödig åtkomst.** Rättigheter ackumuleras och tas aldrig bort. Granska i stället åtkomst regelbundet och låt den löpa ut.
- **Hemligheter i kod.** Inloggningsuppgifter lagras i arkiv. Använd i stället ett valv och rotera hemligheter.
- **Ingen testad incidentplan.** Den första användningen är ett verkligt intrång. Öva i stället planen och skriv ned underrättelseskyldigheter.
- **Skuld för misstag.** Människor döljer fel. Gör i stället rapportering enkel och svara med lärande.
- **Att ignorera leverantörer.** Tredje parter innehar data utan tydligt skydd. Fråga, avtala och granska i stället.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Information och risk | Känsliga data är inte listade; risker är underförstådda | Vissa tjänster registrerar datatyper och risker | Data och risker registreras per tjänst med ägare och beslut | Risker granskas mot incidenter och mått | Riskvyer delas med kunder och leverantörer och samordnas |
| Kontroller i leveransen | Säkerhetsgranskning sker i slutet, om alls | Vissa team kör säkerhetsskanningar | Säkerhetskontroller är automatiserade i en gemensam pipeline, med ägare för fynd | Fynd, åtgärder och missar mäts och granskas | Kontroller förbättras mellan team utifrån delade belägg |
| Åtkomst och hemligheter | Åtkomst ges ad hoc; hemligheter i kod | Vissa granskningar och valv finns | Rollbaserad åtkomst med utgångsdatum och hanterade hemligheter är standard | Åtkomstgranskningar och rotation mäts | Åtkomst- och hemlighetsarbetssätt samordnas med partner |
| Incidentsvar och kultur | Säkerhetsincidenter improviseras | Vissa planer finns | Säkerhetsincidenter följer incidentprocessen med definierade extra steg och övas | Upptäckts- och svarstider mäts och lärande delas | Svar samordnas med leverantörer, kunder och myndigheter |

## Checklista

- [ ] Vi har listat de huvudsakliga informationstyperna, deras ägare, platser och känslighet.
- [ ] Risker för konfidentialitet, riktighet och tillgänglighet bedöms för viktiga tjänster, och beslut registreras.
- [ ] Automatiserade säkerhetskontroller körs vid varje ändring, och fynd har ägare.
- [ ] Åtkomst ges efter roll och behov, granskas regelbundet och tas bort när den inte längre behövs.
- [ ] Hemligheter lagras i ett hanterat valv och kan roteras snabbt.
- [ ] En säkerhetsincidentplan finns, har övats och inkluderar underrättelseskyldigheter med källtext.
- [ ] Leverantörer som innehar vår information har tillfrågats om sina skyddsåtgärder.
- [ ] Personal får korta, regelbundna utbildningar och kan rapportera misstag utan skuldbeläggning.
- [ ] Om vi använder ISO/IEC 27001 har vi en motiverad tillämplighetsförklaring och ett lättviktigt ISMS.
- [ ] Nära missar granskas för mönster.

## AI-prompter

**Syfte: inventera er information och rangordna den efter känslighet.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: hålla en kort hotdiskussion för en ny funktion.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: granska automatiserade säkerhetsfynd för brus och prioritet.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Syfte: förbereda en säkerhetsincidentövning.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [security-testing](../../../../skills/security-testing/SKILL.md): använd för att planera säkerhetstester som en del av leveranscykeln.
- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera säkerhetsrisker, beslut och ägare.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): använd för att välja tidiga varningsmått för säkerhetsrisker.
- [data-governance](../../../../skills/data-governance/SKILL.md): använd för att definiera vem som äger data och hur de får användas och delas.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): använd för att förbereda frågor till juridisk personal eller efterlevnadspersonal om integritetsskyldigheter.

## Viktiga källor

- **Information security** (Wikipedia): CIA-triaden, riskhantering, kontroller och incidentsvar, med en lång lista över relaterade standarder och lagar.
- **ISO/IEC 27001** (Wikipedia, och själva standarden från ISO): kraven på ett ledningssystem för informationssäkerhet, med kontrollerna i bilaga A och certifieringsprocessen.
- **Computer security incident management** (Wikipedia): bakgrund om att svara på säkerhetshändelser.
- **Defense in depth** (Wikipedia): bakgrund om kontroller i skikt.

## Referenser

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
