# Styring af informationssikkerhed

**Styring af informationssikkerhed beskytter fortroligheden, integriteten og tilgængeligheden af information gennem risikobaserede kontroller, og i en agil organisation virker kontrollerne bedst, når de er bygget ind i leveringspipelinen og teamenes daglige vaner i stedet for at være tilføjet som en port til sidst.**

## Hvorfor det betyder noget

Enhver service rummer information, nogen bekymrer sig om: kunders oplysninger, betalingsregistre, sundhedsdata, interne planer. Et sikkerhedssvigt skader de mennesker, informationen beskriver, skader organisationens omdømme og kan medføre juridiske og økonomiske sanktioner. Servicestyringsteams er ofte dem, der ser svigtet først, som en hændelse, og dem, der bagefter må genoprette normal drift.

Sikkerhed og kontinuerlig levering stilles ofte op som modsætninger: sikkerhed siger sæt farten ned, levering siger sæt farten op. Det syn er ikke hjælpsomt. Sikkerhed, der først kommer til sidst i en release, giver sene overraskelser og forhastede undtagelser. Sikkerhed bygget ind i arbejdet, med tjek, der kører automatisk, og risici drøftet tidligt, beskytter servicen uden at bremse den. Det samme gælder servicestyring: de praksisser, der gør ændringer sikre, gør også sikkerhedsændringer sikre.

Dette emne bruger [Wikipedia-artiklen om information security](https://en.wikipedia.org/wiki/Information_security) og [artiklen om ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) som hovedkilder. Begge er generelle. Den første er en lang artikel, og denne vejledning læste kun de første 100.000 af dens cirka 243.000 tegn. Dette emne giver ikke juridisk rådgivning; love, regler og kontraktlige forpligtelser varierer efter land og sektor, og den rette kilde er teksten til den regel, der gælder for dig.

## Kernebegreber

### Hvad informationssikkerhed er

Wikipedia definerer informationssikkerhed som at beskytte information ved at mindske informationsrisici, med det formål at forhindre eller reducere uautoriseret adgang, brug, offentliggørelse, forstyrrelse, sletning, ødelæggelse, ændring eller forringelse af værdi af information og at reducere virkningen af hændelser. Den gælder for elektronisk, fysisk og immateriel information, og den er en del af informationsrisikostyring.

### CIA-triaden

Kernemålene er **fortrolighed**, **integritet** og **tilgængelighed**, afbalanceret mod politikeffektivitet og organisatorisk produktivitet. Artiklen beskriver dem sådan:

| Mål | Betydning | Eksempel i en service |
|---|---|---|
| **Fortrolighed** | Information er beskyttet mod uautoriseret offentliggørelse | Kun autoriseret personale kan se patientjournaler |
| **Integritet** | Information er nøjagtig og komplet og kan ikke ændres på en uautoriseret eller uopdaget måde | Et betalingsbeløb kan ikke ændres uden spor |
| **Tilgængelighed** | Information er tilgængelig, når der er brug for den | Servicen forbliver oppe og modstår denial-of-service-angreb |

Artiklen bemærker, at fortrolighed adskiller sig fra privatliv, som den kalder et bredere begreb. Den bemærker også, at organisationer kan tilføje mål som autenticitet, ansvarlighed, uafviselighed og pålidelighed, og at Parkerian Hexad, en udvidet model, har omdiskuterede fortjenester. Tilgængelighed hænger direkte sammen med servicestyring (se Emne 3.11 — Tilgængelighed, kapacitet og ydeevne).

### Risikostyring

Artiklen beskriver risiko som sandsynligheden for skade på et informationsaktiv. **Sårbarheder** er svagheder, **trusler** er potentielle årsager til skade, og **konsekvens** er det deraf følgende tab. Risikostyring er en vedvarende, iterativ proces, hvor ledelsen kan acceptere, afbøde, overføre (for eksempel gennem forsikring) eller undgå en risiko. Det, der er tilbage, kaldes **restrisiko**. Artiklen opregner seks trin: identificér aktiver, vurdér trusler, vurdér sårbarheder, beregn konsekvens, vælg og implementér kontroller og evaluér disse kontroller.

### Kontroller og forsvar i dybden

Kontroller beskytter fortrolighed, integritet eller tilgængelighed. Artiklen beskriver **forsvar i dybden** (defense in depth), lagdeling af overlappende kontroller, med kontroltyper beskrevet som administrative (politikker, procedurer), logiske (tekniske foranstaltninger som adgangskontrol og kryptering) og fysiske (låse, faciliteter). Ingen enkelt kontrol er nok; lagene dækker over hinandens svigt.

### Sikkerhedshændelser

Artiklen beskriver computersikkerhedshændelsesstyring som overvågning, opdagelse og respons på sikkerhedsbegivenheder, med hændelsesresponsplaner aktiveret, når brud opdages, typisk udført af et hændelsesresponsteam. Sikkerhedshændelser er en slags hændelse og har gavn af de samme roller, kommunikation og skyldfri læring (se Emne 3.2 — Hændelseshåndtering), plus specifikke trin som at bevare evidens og underrette tilsynsmyndigheder eller berørte personer, hvor det kræves.

### ISO/IEC 27001 og 27002

Ifølge Wikipedia opstiller **ISO/IEC 27001** krav til at etablere, implementere, vedligeholde og løbende forbedre et informationssikkerhedsstyringssystem (ISMS), inklusive at vurdere og behandle informationssikkerhedsrisici. Dens krav er generiske og tænkt til organisationer af enhver type, størrelse eller art. Den første udgave udkom i oktober 2005 ud fra den britiske standard BS 7799-2, den anden i 2013 og den tredje i oktober 2022, afstemt med ISO/IEC 27002:2022; et tillæg i februar 2024 tilføjede en overvejelse om klimaforandringer.

Nøglefakta fra artiklen:

- ISMS-kravene står i klausulerne 4 til 10: kontekst, lederskab, planlægning, støtte, drift, ydelsesevaluering og forbedring.
- Udgaven fra 2022 har i Annex A 93 referencekontroller i fire temaer: organisatoriske, menneskelige, fysiske og teknologiske. Udgaven fra 2013 opregnede 114. Annex A er et referencesæt og ikke en obligatorisk tjekliste: organisationer udarbejder en **Statement of Applicability**, der begrunder, hvilke kontroller de medtager og udelader.
- Certificering er frivillig, medmindre en lov, kontrakt eller ordning kræver den. ISO certificerer ikke organisationer; uafhængige certificeringsorganer gør det, i trin, efterfulgt af overvågningsaudits og recertificering i en treårig cyklus. Et certifikat gælder kun inden for sit angivne omfang.
- **ISO/IEC 27002** giver vejledning om Annex A-kontrollerne. Det er vejledning og kan ikke certificeres mod.

Artiklen bemærker, at et litteraturstudie fra 2021 fandt få empiriske undersøgelser af certificeringens resultater. Et certifikat viser, at et styringssystem findes; det er ikke bevis for, at et bestemt brud ikke kan ske.

### Andre rammeværker og love

Informationssikkerhedsartiklen nævner mange andre standarder og ordninger, som NIST Cybersecurity Framework, Cyber Essentials i Storbritannien, Essential Eight i Australien og betalingskortbranchens standard. Den opregner også love, herunder Storbritanniens Computer Misuse Act (1990) og Data Protection Act (1998) og USA's HIPAA (1996), Gramm-Leach-Bliley Act (1999) og Sarbanes-Oxley Act (2002). Listen viser, hvor forskellige reglerne er. Hvilke der gælder for dig, afhænger af, hvor du opererer, sektoren og de data, du rummer; spørg jeres juridiske funktion eller complianceafdeling (se Emne 5.7 — Governance, risiko og compliance).

### Sikkerhed i leveringspipelinen

Praksisser, der passer til kontinuerlig levering, omfatter:

- **Tidlig trusselsdiskussion:** spørg i planlægningen, hvad der kunne gå galt med en funktion, og hvem der ville misbruge den.
- **Automatiserede tjek:** scanning af kode, afhængigheder og konfiguration ved hver ændring, med resultater synlige for teamet (se Emne 3.4 — Ændringsunderstøttelse).
- **Mindste privilegium:** kun at give folk og systemer den adgang, de har brug for.
- **Styring af hemmeligheder:** at holde legitimationsoplysninger ude af koden og rotere dem.
- **Sikkerhedstest:** penetrationstests og automatiserede tests som en del af cyklussen (se færdigheden om sikkerhedstest nedenfor).
- **Logning og overvågning:** at opdage mistænkelig aktivitet (se Emne 3.10 — Overvågning og eventstyring).

DORAs vejledning, citeret andre steder i denne vejledning, opregner gennemgående sikkerhed blandt de praksisser, der understøtter kontinuerlig levering (se Emne 3.5 — Release- og deploymentstyring).

### Kultur og mennesker

Informationssikkerhedsartiklen nævner forskning i sikkerhedskultur, inklusive syv kulturdimensioner identificeret af Roer og Petric (2017). Uanset modellen er pointen, at mange brud begynder med mennesker: en phishingbesked, en fejl, en genvej under pres. Uddannelse, klare rapporteringsveje og en skyldfri holdning til ærlige fejl forbedrer sikkerheden mere end skyld gør.

### Kildernes grænser

Wikipedia-artiklen angiver ingen specifik kritik af CIA-triaden og blev kun læst delvist. ISO/IEC 27001-artiklen diskuterer ikke forholdet til ISO/IEC 20000 eller til Plan-Do-Check-Act-cyklussen. Dette emne giver ikke tekniske instruktioner; brug specialistvejledning for jeres platforme og standardernes tekst, hvis I skal påstå konformitet.

## God praksis

1. **Vid, hvilken information I rummer, og hvor.** Lav en liste over de vigtigste typer information, hvem der ejer hver, hvor den er gemt, og hvor følsom den er. Du kan ikke beskytte, hvad du ikke har identificeret.
2. **Lav risikovurderinger i almindeligt sprog.** Spørg for hver vigtig service, hvad der kunne gå galt med fortrolighed, integritet og tilgængelighed, hvor sandsynligt og hvor slemt. Registrér beslutninger om at acceptere, reducere, overføre eller undgå hver risiko (se Emne 5.7 — Governance, risiko og compliance).
3. **Lagdel jeres kontroller.** Kombinér politikker, tekniske kontroller og fysiske kontroller, så ét svigt ikke er nok. Gennemgå, hvilke lag der beskytter jeres mest følsomme information.
4. **Byg tjek ind i pipelinen.** Kør automatiserede sikkerhedstjek på kode, afhængigheder og konfiguration ved hver ændring, og gør fejlende tjek synlige. Ret problemer ved ændringspunktet.
5. **Giv mindste privilegium som standard.** Tildel adgang efter rolle og behov, gennemgå den jævnligt, og fjern den hurtigt, når folk rejser eller skifter rolle (se Emne 3.6 — Håndtering af serviceanmodninger).
6. **Styr hemmeligheder ordentligt.** Hold legitimationsoplysninger ude af kildekode, gem dem i en styret boks (vault), og roter dem. Test, at I kan rotere dem hurtigt efter en hændelse.
7. **Behandl sikkerhedshændelser som hændelser.** Brug de samme roller, kommunikation og gennemgang som for andre hændelser, og tilføj trin for evidens, inddæmning og underretning. Øv planen.
8. **Kend jeres underretningspligter.** Find ud af, fra jeres juridiske funktion eller complianceafdeling, hvilke love eller kontrakter der kræver, at I underretter myndigheder eller berørte personer efter et brud, og hvor hurtigt. Skriv det ind i hændelsesplanen, med citat af kildeteksten.
9. **Medtag leverandører.** Spørg kritiske leverandører, hvordan de beskytter jeres information, og sæt forventninger ind i kontrakter (se Emne 3.14 — Leverandørstyring).
10. **Uddan og tal.** Giv kort, jævnlig uddannelse baseret på rigtige eksempler, og gør det let at rapportere en fejl eller en mistænkelig besked uden skyld.
11. **Brug standarder som kilde til struktur.** Hvis I adopterer ISO/IEC 27001, så behandl Annex A som et referencesæt, skriv en begrundet Statement of Applicability, og hold ISMS let. Certificering er frivillig, medmindre den kræves.
12. **Lær af næsten-ulykker.** Gennemgå næsten-ulykker og begivenheder med lav alvorlighed for mønstre, og før dem ind i backloggen og risikoregisteret.

## Spørgsmål til diskussion i teamet

**Hvilken information rummer vi, som ville skade folk, hvis den slap ud, og hvor er den?**

Bed hver person nævne de mest følsomme data, de håndterer, og hvor de bor. Sammenlign. Overraskelser er almindelige: kopier i testmiljøer, eksporter i delte mapper, logs der indeholder personoplysninger. Facilitatoren kan spørge, hvilken kopi der er mindst beskyttet. Vælg én, der skal reduceres eller beskyttes bedre.

**Hvornår traf vi sidst en beslutning om at acceptere en sikkerhedsrisiko, og hvem traf den?**

Bed om et eksempel. Accepterede risici træffes ofte lydløst, ved forsinkelse. Drøft, hvem der bør beslutte, hvilken information de har brug for, og hvor det registreres. Artiklens liste over måder at håndtere risiko på (acceptér, afbød, overfør, undgå) er en nyttig ramme. Aftal et enkelt sted at registrere den næste beslutning.

**Hvilke sikkerhedstjek kører automatisk ved hver ændring, og hvad ignorerer vi?**

List tjekkene i pipelinen og resultaterne. Spørg, hvilke fund der rutinemæssigt ignoreres, og hvorfor. Ignorerede fund betyder som regel støj, manglende ejerskab eller mangel på tid. Beslut, hvilke der skal rettes, hvilke der skal undertrykkes med en begrundelse, og hvem der ejer listen.

**Hvem har adgang til hvad, og hvornår gennemgik vi det sidst?**

Vælg et følsomt system, og list, hvem der kan nå det. Sammenlign med, hvem der har brug for det. Ofte har adgang ophobet sig. Spørg, hvor hurtigt adgang fjernes, når nogen rejser. Aftal en gennemgangsdato og en ejer.

**Hvad ville vi gøre i den første time af et mistænkt brud?**

Gennemgå trinnene: hvem får besked, hvad bevares, hvad lukkes ned, hvem taler med hvem. Huller dukker som regel op omkring beføjelse og evidens. Spørg, hvor planen er, og hvornår den sidst blev brugt. Planlæg en tabletop-øvelse.

**Hvilke regler om sikkerhed eller privatliv gælder for os, og hvordan ved vi det?**

Spørg, hvem der er ansvarlig for at vide det. Hvis svaret er "jura" eller "ingen", så spørg, hvordan ingeniørerne får kendskab til kravene. Regler varierer efter land og sektor, så list de steder, I opererer. Aftal at bede den juridiske funktion eller complianceafdelingen om en kort liste, med kildeteksten.

## I praksis: et agilt ITIL-eksempel

Et universitets forskningsberegningsservice rummer datasæt fra medicinske undersøgelser og giver forskere adgang til analyseservere. Et team på otte driver den. Efter en hændelse, hvor en forsker kopierede et ubeskyttet datasæt til en personlig skymappe, kræver universitetets sikkerhedschef, at hver ændring og hver adgangsanmodning går gennem en tre uger lang sikkerhedsgennemgang. Forskerne protesterer, at det vil gøre servicen ubrugelig.

Servicechefen foreslår en anden tilgang og mødes med sikkerhedschefen og to forskere. De lister den information, der rummes, og grupperer datasæt som offentlige, interne og følsomme. For følsomme data aftaler de strengere kontroller: adgang efter navngiven rolle og projekt, ingen kopier uden for servicen og logning af dataeksport. For andre data gælder lettere regler. Teamet tilføjer automatiserede tjek for fejlkonfigureret lagring og for hemmeligheder i kode til leveringspipelinen, og sikkerhedschefen gennemgår resultaterne ugentligt i stedet for at gennemgå hver ændring. Adgangsanmodninger til følsomme datasæt følger en anmodningsmodel med godkendelse fra projektets datasteward og en udløbsdato. En kort uddannelsessession baseret på den tidligere hændelse køres for forskerne.

Seks måneder senere er der ikke fundet flere kopier uden for servicen, og adgangsgennemgange tager en eftermiddag hvert kvartal. Nogle vanskeligheder består. En gruppe forskere bruger et værktøj, der eksporterer data på en måde, logningen ikke fanger, og de automatiserede tjek giver falske alarmer, som teamet er begyndt at ignorere. De aftaler med sikkerhedschefen at føje værktøjet til logningens omfang, at tune tjekkene og at gennemgå alarmer månedligt. De beder også den juridiske afdeling om en skriftlig erklæring om de underretningspligter, der gælder for de følsomme datasæt, så hændelsesplanen kan citere kilden.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams gør sikkerhed virkelig i kode og konfiguration. Drøft trusler tidligt, hold hemmeligheder ude af kode, reagér på automatiserede fund, og undgå at dele følsomme data i tests. Fortæl sikkerhed og drift om ændringer, der ændrer eksponeringen.

### Service- og driftsteams

Driftsteams kører kontrollerne: adgang, overvågning, opdatering og backups. Behandl sikkerhedsbegivenheder som hændelser, bevar evidens, og deltag i øvelser. Giv hændelsesmønstre tilbage til leverance og til risikoregisteret.

### Ledelse og governance

Ledere ejer risikobeslutninger og kulturen omkring dem. Bed om risikoopsummeringer i almindeligt sprog, støt tid til uddannelse og øvelser, og sørg for, at nogen er ansvarlig for hver beslutning om at acceptere en risiko. Kræv ikke certificering som et mærke uden grund.

### Kunder og brugere

Kunder og brugere stoler på, at servicen forvalter deres information. Brug stærk autentificering, hvor det tilbydes, rapportér mistænkelige beskeder, og spørg leverandører, hvordan de beskytter dine data, og hvordan de ville fortælle dig om et brud. Forvent ærlighed og hurtighed, hvis noget går galt.

## Almindelige fejlmønstre

- **Sikkerhed som endelig port.** Gennemgange kommer til sidst og forsinker releases. I stedet: drøft trusler tidligt, og automatisér tjek i pipelinen.
- **Compliance som mål.** Et certifikat skjuler svag praksis. I stedet: brug standarder til struktur, og mål reel beskyttelse.
- **Ikke-sporede data.** Kopier spreder sig til testsystemer og personlig lagring. I stedet: vid hvor følsomme data bor, og begræns kopier.
- **For megen adgang.** Rettigheder ophobes og fjernes aldrig. I stedet: gennemgå adgang jævnligt, og lad den udløbe.
- **Hemmeligheder i kode.** Legitimationsoplysninger gemmes i repositories. I stedet: brug en vault, og roter hemmeligheder.
- **Ingen afprøvet hændelsesplan.** Første brug er et rigtigt brud. I stedet: øv planen, og skriv underretningspligter ned.
- **Skyld for fejl.** Folk skjuler fejl. I stedet: gør rapportering let, og svar med læring.
- **At ignorere leverandører.** Tredjeparter rummer data uden klare beskyttelser. I stedet: spørg, kontrahér og gennemgå.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Information og risiko | Følsomme data er ikke listet; risici er implicitte | Nogle services registrerer datatyper og risici | Data og risici registreres pr. service med ejere og beslutninger | Risici gennemgås mod hændelser og målinger | Risikosyn deles med kunder og leverandører og afstemmes |
| Kontroller i leveringen | Sikkerhedsgennemgang sker til sidst, hvis overhovedet | Nogle teams kører sikkerhedsscanninger | Sikkerhedstjek er automatiserede i en fælles pipeline, med ejere af fund | Fund, rettelser og undslupne fejl måles og gennemgås | Kontroller forbedres på tværs af teams ud fra fælles evidens |
| Adgang og hemmeligheder | Adgang gives ad hoc; hemmeligheder i kode | Nogle gennemgange og vaults findes | Rollebaseret adgang med udløb og styrede hemmeligheder er standard | Adgangsgennemgange og rotation måles | Praksisser for adgang og hemmeligheder koordineres med partnere |
| Hændelsesrespons og kultur | Sikkerhedshændelser improviseres | Nogle planer findes | Sikkerhedshændelser følger hændelsesprocessen med definerede ekstra trin og øves | Opdagelses- og responstider måles, og læring deles | Respons koordineres med leverandører, kunder og myndigheder |

## Tjekliste

- [ ] Vi har listet de vigtigste typer information, deres ejere, placeringer og følsomhed.
- [ ] Risici for fortrolighed, integritet og tilgængelighed vurderes for vigtige services, og beslutninger registreres.
- [ ] Automatiserede sikkerhedstjek kører ved hver ændring, og fund har ejere.
- [ ] Adgang er efter rolle og behov, gennemgås jævnligt og fjernes, når den ikke længere er nødvendig.
- [ ] Hemmeligheder opbevares i en styret vault og kan roteres hurtigt.
- [ ] En sikkerhedshændelsesplan findes, er øvet og omfatter underretningspligter med kildetekst.
- [ ] Leverandører, der rummer vores information, er spurgt om deres beskyttelser.
- [ ] Personalet får kort, jævnlig uddannelse og kan rapportere fejl uden skyld.
- [ ] Hvis vi bruger ISO/IEC 27001, har vi en begrundet Statement of Applicability og et let ISMS.
- [ ] Næsten-ulykker gennemgås for mønstre.

## AI-prompts

**Formål: at lave en fortegnelse over jeres information og rangere den efter følsomhed.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at køre en kort trusselsdiskussion for en ny funktion.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gennemgå automatiserede sikkerhedsfund for støj og prioritet.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Formål: at forberede en sikkerhedshændelsesøvelse.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [security-testing](../../../../skills/security-testing/SKILL.md): brug den til at planlægge sikkerhedstests som en del af leveringscyklussen.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere sikkerhedsrisici, beslutninger og ejere.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): brug den til at vælge tidlige varslingsmålinger for sikkerhedsrisici.
- [data-governance](../../../../skills/data-governance/SKILL.md): brug den til at definere, hvem der ejer data, og hvordan de må bruges og deles.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): brug den til at forberede spørgsmål til juridisk personale eller complianceafdelingen om privatlivspligter.

## Vigtigste kilder

- **Information security** (Wikipedia): CIA-triaden, risikostyring, kontroller og hændelsesrespons, med en lang liste over beslægtede standarder og love.
- **ISO/IEC 27001** (Wikipedia og selve standarden fra ISO): kravene til et informationssikkerhedsstyringssystem, med Annex A-kontroller og certificeringsprocessen.
- **Computer security incident management** (Wikipedia): baggrund om at reagere på sikkerhedsbegivenheder.
- **Defense in depth** (Wikipedia): baggrund om lagdelte kontroller.

## Referencer

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
