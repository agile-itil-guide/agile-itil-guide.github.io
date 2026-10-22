# Styring af softwareaktiver

**Styring af softwareaktiver sikrer, at en organisation køber den software, den har brug for, bruger det, den køber, og overholder de vilkår, den har accepteret, og for agile teams betyder det nu at spore open source-komponenter og abonnementer såvel som licenserede produkter.**

## Hvorfor det betyder noget

Software er en af de største og mindst synlige omkostninger i IT. Licenser købes til folk, der er rejst, abonnementer fornyes ubemærket, og produkter installeres på måder, licensen ikke tillader. Hver er en omkostning eller en risiko. En leverandørrevision kan gøre en lille uoverensstemmelse til en stor regning, og en ikke-opdateret komponent i en glemt applikation kan åbne en dør for en angriber.

Agile teams ændrer billedet. Udviklere trækker biblioteker ind med en enkelt kommando, og moderne applikationer er i vid udstrækning samlet af tredjeparts- og open source-dele. Wikipedia-artiklen om softwareforsyningskæden rapporterer, at open source-software blev fundet i 96 procent af de kommercielle kodebaser, én leverandør analyserede i 2024, med henvisning til Synopsys. Teams køber også cloudservices og abonnementer på kort, uden for indkøbsprocessen. Styring af softwareaktiver (SAM) er derfor vokset ud over at tælle installationer af nogle få store produkter til en praksis, der dækker, hvad der bruges, hvad der skyldes, og hvad der stoles på.

[Wikipedia-artiklen om software asset management](https://en.wikipedia.org/wiki/Software_asset_management) beskriver SAM som en forretningspraksis til at styre og optimere køb, udrulning, vedligeholdelse, udnyttelse og bortskaffelse af software, med mål om at reducere IT-omkostninger, begrænse forretningsmæssig og juridisk risiko og forbedre slutbrugernes produktivitet. Den dækker ikke cloudservices, SBOM'er eller modenhedsmodeller, så dette emne tilføjer artiklerne om softwareforsyningskæden og open source-software. Dette emne beskriver praksis og giver ikke juridisk rådgivning; licensvilkår varierer, og den rette kilde er licens- eller kontrakteksten.

## Kernebegreber

### Hvad SAM er

Ifølge Wikipedia er SAM en del af styring af IT-aktiver (se Emne 4.1 — Styring af IT-aktiver). Den henviser til ITIL som beskrivende, at det omfatter effektiv styring, kontrol og beskyttelse af softwareaktiver. Dens strategiske mål, som artiklen opregner dem, omfatter at reducere software- og supportomkostninger gennem volumenkontrakter og omfordeling af ubrugte licenser, at håndhæve sikkerhedspolitikker og standarder for desktop, server og mobil, at forbedre produktiviteten ved at udrulle teknologi hurtigere og mere pålideligt, at begrænse styringsoverhead gennem automatisering og at etablere politikker for anskaffelse, udrulning, brug og afvikling.

### Licenscompliance

Artiklen beskriver SAM som at balancere antallet af købte licenser mod antallet faktisk forbrugte og sikre, at brug matcher hver leverandørs licensvilkår. Den bemærker, at installationer er det mest almindelige mål for forbrug, men nogle softwareprodukter licenseres efter brugere, kapital, processorer eller CPU-kerner. Organisationer kan reducere ansvar under revisioner fra leverandører eller tredjeparter som Business Software Alliance, siger artiklen, gennem løbende softwarelagre, indkøbspolitikker og værktøjer. Artiklen beskriver ikke revisionsprocedurer. Pointen med øvelsen er at kende jeres **rettighed** (hvad I må bruge), jeres **forbrug** (hvad I bruger) og hullet mellem dem.

### De tre spørgsmål

En SAM-praksis besvarer tre spørgsmål for hvert vigtigt produkt:

| Spørgsmål | Hvad det kræver |
|---|---|
| Hvad har vi ret til? | Kontrakter, licensvilkår, fakturaer og købsbevis |
| Hvad bruger vi? | Lager- og brugsdata fra opdagelse og måling |
| Hvad er hullet, og hvad gør vi ved det? | Sammenligning, beslutninger om køb, omfordeling eller fjernelse |

Et hul kan gå i begge retninger: underlicensering, som er en compliancerisiko, og overlicensering, som er spild.

### Standarder: ISO/IEC 19770

Artiklen opregner delene af ISO/IEC 19770-familien: 19770-1:2017 (krav til IT-aktivstyringssystemer, et procesrammeværk der kan implementeres i trinvise niveauer), 19770-2:2015 (softwareidentifikationstags), 19770-3:2016 (et rettighedsstyringsskema til licens-, kontrakt- og fakturadetaljer), 19770-4:2017 (data til måling af ressourceudnyttelse) og 19770-5:2015 (overblik og ordforråd). Artiklen siger, at standarden for softwareidentifikation støttes af IBM, Microsoft og Adobe. Tjek standarderne for aktuelle udgaver og præcist indhold.

### SAM-teknologier og deres grænser

Artiklen opregner værktøjer til softwarelager, licensstyring, måling, applikationskontrol, udrulning, opdateringsstyring, anmodningsstyring og produktkatalogisering. Den giver også et eksempel på skala: målingsregler i Microsofts System Center Configuration Manager virker godt for små miljøer, men genererer uhåndterlige datamængder i virksomhedsskala. Værktøjer hjælper, men de har brug for et klart spørgsmål og en ejer.

### Open source-software

Wikipedia definerer open source-software som software, hvis kildekode er offentligt tilgængelig, og som brugere må bruge, studere, ændre og distribuere, typisk under en åben licens. Open Source Initiative vedligeholder den mest almindelige definition, med ti kriterier og en liste over godkendte licenser, selv om artiklen siger, at OSI ikke har nogen juridisk autoritet over begrebet. Den beskriver to licensfamilier:

| Familie | Hvad den beder modtagerne om | Nævnte eksempler |
|---|---|---|
| **Permissiv** | Bevar ophavsretsmeddelelser og medtag licensen; ingen pligt til at udgive din egen kode under samme licens | BSD, MIT, Apache |
| **Copyleft** | Brug samme licens for i det mindste nogle dele af det, du distribuerer (stærk copyleft gælder for alle afledte værker; svag copyleft kun under visse betingelser) | GNU GPL (stærk); MPL, EPL (svag) |

Begge familier, siger artiklen, kræver, at ophavsretsmeddelelser bevares, og at en kopi af licensen følger med koden. Den henviser til *Jacobson v Katzer* (2008), hvor en domstol håndhævede vilkårene i en åben licens, inklusive angivelse af ophavsmand, efter ophavsretsloven. Den bemærker, at organisationer opretter open source-programkontorer til at styre deres strategier. Open source-vilkår er reelle forpligtelser. Hvilke der gælder, afhænger af, hvordan du bruger og distribuerer softwaren; spørg jeres juridiske funktion, og læs licensen.

### Softwareforsyningskæden og SBOM'er

Artiklen om softwareforsyningskæden beskriver den som de komponenter, biblioteker, værktøjer og processer, der bruges til at udvikle, bygge og udgive et softwareartefakt. Den nævner risici: angribere kan kompromittere en upstream-komponent for at nå alle downstream-brugere, og henviser til eksempler som Log4Shell i 2021, SolarWinds-angrebet i 2020 og XZ Utils-bagdøren i 2024. Den beskriver en **software bill of materials (SBOM)** som en fortegnelse over komponenterne i et softwareartefakt, inklusive open source- og ejendomsdele, softwarens modstykke til en produktions-stykliste. SBOM'er understøtter sårbarheds- og licensanalyse.

Artiklen rapporterer grænser: regneark kan ikke automatisk beriges med sårbarhedsdata og bør gemmes i et forespørgselsbart arkiv; politikdrevne SBOM'er er sjældne, med én undersøgelse der fandt omkring 0,56 procent af populære GitHub-repositories indeholdende dem; under halvdelen af testede projekter medtager SBOM'er i releases, og mange er ufuldstændige; og en undersøgelse af seks Java-SBOM-værktøjer fandt hyppige unøjagtigheder. Den bemærker, at synlighed alene ikke kan garantere integritet. Den rapporterer også, at USA's Executive Order 14028, underskrevet den 12. maj 2021, pålagde NIST og NTIA at udstede vejledning om softwareforsyningskædens sikkerhed inklusive SBOM'er, og at NTIAs minimumselementer falder i datafelter, understøttelse af automatisering samt praksisser og processer. Artiklen nævner ikke SBOM-formater eller beskriver Den Europæiske Unions Cyber Resilience Act. Regler om SBOM'er varierer efter land og sektor; spørg jeres complianceafdeling, hvad der gælder for jer.

### SaaS og cloudabonnementer

SAM-artiklen diskuterer ikke software som en service (SaaS) eller cloud. Praktisk erfaring viser, at abonnementssoftware skaber nye problemer: køb uden for indkøb, pladser som ingen fjerner, overlappende værktøjer og data placeret hos leverandører uden gennemgang (se Emne 3.14 — Leverandørstyring og Emne 4.5 — IT-økonomistyring og FinOps). SAM for abonnementer fokuserer på at opdage, hvad der købes, hvem der ejer det, hvem der bruger det, og hvornår det fornyes.

### Kildernes grænser

SAM-artiklen dækker ikke revisionsprocedurer, kataloger over licenstyper eller modenhedsmodeller, og dens hovedreferencer omfatter forældede punkter fra 2006 til 2009. Artiklen om softwareforsyningskæden rapporterer tal fra undersøgelser og studier af ujævn kvalitet. Brug kilderne til at ramme spørgsmål ind, og brug licenstekster og kontrakter til svar.

## God praksis

1. **Start med de produkter, der betyder mest.** Vælg de få største eller mest risikable produkter efter omkostning eller juridisk eksponering, og få rettighed, lager og brug på plads for dem først.
2. **Behold bevis for rettigheder.** Gem kontrakter, fakturaer og licensvilkår, hvor de kan findes, og knyt dem til produktregistreringerne. Du kan ikke forsvare en position i en revision uden evidens.
3. **Kend licensmetrikken.** Registrér for hvert produkt, hvordan det tælles: pr. bruger, enhed, processor, kerne eller andet. At tælle installationer, når licensen er pr. kerne, giver det forkerte svar.
4. **Sammenlign rettighed med brug jævnligt.** Mindst kvartalsvis for større produkter, sammenlign hvad I må bruge med hvad I bruger. Handl på hullet ved at købe, omfordele eller fjerne.
5. **Genindvind ubrugte licenser.** Brug brugsdata til at finde licenser, ingen har brugt i en defineret periode, og omfordel eller opsig dem efter at have tjekket med ejeren.
6. **Kontrollér, hvordan software kommer ind.** Gør det let at anmode om godkendt software og svært at købe uden for processen. Medtag abonnementer og kortkøb i udgiftsgennemgange.
7. **Behandl open source-komponenter som aktiver.** Før et lager over open source-komponenterne i jeres produkter, med licens og version. Tjek licenser mod, hvordan I bruger og distribuerer softwaren, med juridisk rådgivning.
8. **Generér SBOM'er i buildet.** Producér en software bill of materials automatisk for hvert build, gem den et forespørgselsbart sted, og brug den til at reagere på sårbarheder og besvare kundespørgsmål. Tjek SBOM'en mod buildet, da værktøjer kan være unøjagtige.
9. **Spor abonnementer.** Registrér for hvert ejer, formål, omkostning, antal pladser, brugere, fornyelsesdato og data rummet. Gennemgå før fornyelse.
10. **Knyt software til services.** Registrér, hvilke services der bruger hvilken software og hvilke versioner, så en sårbarhed eller en licensændring kan spores til de berørte services (se Emne 4.4 — Konfigurationsstyring).
11. **Forbered revisioner roligt.** Hold registre ajour, navngiv en kontakt, og kend jeres rettigheder og pligter fra kontrakten. Vent ikke på varslet med at begynde at organisere.
12. **Afvikl software ordentligt.** Fjern det fra systemer, afslut licenser og abonnementer, og opdatér registre. Ubrugt software er en omkostning og en angrebsflade.

## Spørgsmål til diskussion i teamet

**For vores tre dyreste softwareprodukter, ved vi, hvad vi må bruge, og hvad vi bruger?**

Bed om antallet af licenser i besiddelse og antallet i brug for hvert. Sammenlign. Almindelige udfald er overraskende: flere pladser end brugere, eller brugere ud over pladserne. Facilitatoren kan spørge, hvor rettighedsevidensen opbevares. Planlæg at afstemme det største hul.

**Hvilken software har folk købt eller installeret uden at fortælle nogen det?**

Vær ærlig og uden dom. Spørg om værktøjer købt på kort, gratis værktøjer brugt på arbejdet og browserudvidelser. Typiske grunde er hastighed og uklar proces. Drøft, hvad der ville gøre den godkendte vej hurtig nok. Aftal et registreringstrin.

**Hvilke open source-komponenter afhænger vores produkter af, og hvad er deres licenser?**

Spørg, om nogen kan producere en liste. Hvis ikke, så drøft, hvordan den kan genereres fra buildet. Spørg derefter, hvordan licenser tjekkes. Husk, at forpligtelser adskiller sig mellem permissive og copyleft-licenser. Planlæg med jura at gennemgå højrisikotilfældene.

**Hvis en alvorlig sårbarhed dukkede op i et almindeligt bibliotek i morgen, hvor lang tid ville det tage at vide, om vi bruger det?**

Gennemgå trinnene: hvem får besked, hvordan I søger, hvordan I kender versionen i hver service. Svaret viser, hvor langt SBOM'er og lagre ville hjælpe. Aftal en første forbedring, som at generere en stykliste i pipelinen.

**Hvilke abonnementer fornyes næste kvartal, og hvem beslutter, om vi beholder dem?**

List fornyelserne. Spørg for hver, hvem der ejer den, hvor mange pladser der er aktive, og hvad der sker, hvis den opsiges. Ofte ejer ingen beslutningen. Tildel ejere, og tilføj en gennemgangsdato før hver fornyelse.

**Hvordan ville vi reagere på et varsel om en leverandørrevision?**

Spørg, hvem der ville håndtere det, og hvilken evidens de har. Drøft, om registre er komplette. Målet er en rolig plan, ikke frygt for revisioner. Aftal en kontakt og en tjekliste.

## I praksis: et agilt ITIL-eksempel

En national postvirksomhed driver omkring 60 interne applikationer og en kundevendt pakkesporingsplatform bygget af et team på femten. En leverandør meddeler IT-afdelingen en licensrevision af et databaseprodukt. ITAM-medarbejderen finder, at licensregistre er spredt over tre regneark, og at ingen kan sige, hvor mange processorkerner databasen nu kører på, fordi virtuelle maskiner er blevet flyttet mellem værter mange gange.

ITAM-medarbejderen, en databaseadministrator og indkøbslederen samler evidensen. De indsamler kontrakten, licensmetrikken (pr. processorkerne), fakturaerne og opdagelsesdata om, hvor databasen kører. De finder, at produktet kører på flere kerner, end der blev købt, i ét miljø, og færre i et andet, hvor licenser er ubrugte. Efter at have talt med leverandøren omfordeler de de ubrugte licenser, køber et lille antal ekstra og flytter ét ikke-væsentligt miljø til et gratis alternativ. Omkostningen er langt under, hvad et revisionsfund ville have været, men er ikke triviel.

Samtidig bliver platformsteamet bedt af en stor kunde om en liste over softwarekomponenterne i pakkesporingsplatformen. Teamet indser, at det ikke kan producere en. Det tilføjer et buildtrin, der genererer en stykliste for hver release og gemmer den i et arkiv. Det første output omfatter et bibliotek med en licens, den juridiske afdeling ikke havde gennemgået, og de beslutter at erstatte det. Problemer består. Teamets SBOM-værktøj overser komponenter i ét sprog, og en separat forskningsgruppe fortsætter med at købe abonnementer på et afdelingskort. ITAM-medarbejderen spørger værktøjets leverandør om hullet og overtaler afdelingen til at registrere sine abonnementer.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bringer det meste software ind i organisationen. Registrér de komponenter og abonnementer, I tilføjer, generér styklister i jeres builds, og spørg, før I bruger et bibliotek med en ukendt licens. Del fund med jura og sikkerhed.

### Service- og driftsteams

Driftsteams kører lager, opdatering og måling. Hold softwarelageret koblet til services, opdatér hurtigt, når sårbarheder dukker op, og genindvind ubrugte licenser. Hjælp indkøb med at forstå, hvordan produkter faktisk bruges.

### Ledelse og governance

Ledere ejer risikoen for manglende compliance og udgiften. Bed om rettighed og forbrug for de største produkter, et overblik over abonnementer og en plan for open source- og forsyningskæderisiko. Støt en indkøbsvej, der er hurtig nok til, at folk bruger den.

### Kunder og brugere

Kunder og brugere har gavn, når software er tilgængelig og sikker. Anmod om, hvad du har brug for, gennem den rette vej, returnér det, du ikke længere bruger, og fortæl teamet om værktøjer, du har fundet nyttige. Kunder af jeres produkter kan bede om styklister; forvent at blive spurgt.

## Almindelige fejlmønstre

- **Kun at tælle installationer.** Licensmetrikken er pr. kerne eller bruger. I stedet: registrér metrikken, og tæl det rigtige.
- **Mistet bevis for rettigheder.** Kontrakter og fakturaer kan ikke findes. I stedet: gem dem sammen med produktregistreringen.
- **Shelfware.** Licenser købes og bruges ikke. I stedet: sammenlign rettighed med brug, og genindvind.
- **Skyggeindkøb.** Abonnementer købt på kort slipper uden om processen. I stedet: gør den godkendte vej hurtig, og gennemgå udgifter for undtagelser.
- **Ukendte open source-komponenter.** Ingen kan liste dem. I stedet: generér styklister automatisk i builds.
- **At ignorere licensvilkår for open source.** Copyleft-forpligtelser overses. I stedet: tjek licenser mod brug og distribution med juridisk rådgivning.
- **At stole blindt på værktøjer.** Værktøjer overser komponenter eller lister forkerte. I stedet: valider output på en stikprøve, og spørg leverandører om huller.
- **Revisionspanik.** Registre samles efter varslet. I stedet: hold registre ajour, og navngiv en revisionskontakt.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Rettighed og brug | Registre er spredte; brug ukendt | Større produkter har rettighedsregistre | Rettighed og brug registreres for hovedprodukter og sammenlignes jævnligt | Huller og ubrugte licenser måles og handles på | Rettighed og brug deles med økonomi, indkøb og leverandører |
| Anskaffelse og abonnementer | Software købes af hvem som helst | En godkendt vej findes for nogle køb | Køb og abonnementer følger én vej med ejere og fornyelsesdatoer | Udgifter og pladsbrug gennemgås før fornyelse | Indkøb, brug og kontrakter koordineres i hele organisationen |
| Open source og forsyningskæde | Komponenter er ukendte | Nogle teams lister biblioteker | Styklister genereres i builds, og licenser gennemgås | Sårbarheds- og licensfund spores til lukning | Styklister deles med kunder og leverandører efter behov |
| Revision og compliance | Revisionsvarsler forårsager panik | En kontakt findes | Registre holdes ajour, og en revisionsrutine findes | Compliancerisiko måles og gennemgås | Compliancepraksis afstemmes på tværs af leverandører og jurisdiktioner |

## Tjekliste

- [ ] For vores største softwareprodukter kender vi rettigheden, licensmetrikken og brugen.
- [ ] Kontrakter, fakturaer og licensvilkår opbevares sammen med produktregistreringer.
- [ ] Rettighed og brug sammenlignes mindst kvartalsvis for større produkter.
- [ ] Ubrugte licenser genindvindes efter at have tjekket med ejere.
- [ ] Køb og abonnementer følger én vej, med ejere og fornyelsesdatoer registreret.
- [ ] Vi genererer en stykliste i buildet for produkter, vi sender eller driver.
- [ ] Open source-licenser i vores komponenter gennemgås mod vores brug, med juridisk rådgivning.
- [ ] Vi kan finde ud af, hvilke services der bruger en given komponent eller et givet produkt.
- [ ] En navngiven person håndterer leverandørrevisionsvarsler.
- [ ] Afviklet software fjernes fra systemer og registre.

## AI-prompts

**Formål: at sammenligne rettighed og forbrug for ét produkt.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gennemgå en liste over open source-komponenter for licensspørgsmål.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Formål: at forberede en sårbarhedsopslagning ved hjælp af en stykliste.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at bygge en abonnementsgennemgang til næste kvartal.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## AI-skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den til at styre kontrakter, fornyelser og forholdet til softwareleverandører.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): brug den til at forberede en leverandør- eller complianceaudit.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): brug den til at prognosticere software- og abonnementsomkostninger.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere licens-, sårbarheds- og forsyningskæderisici.
- [security-testing](../../../../skills/security-testing/SKILL.md): brug den til at tjekke afhængigheder og builds for kendte svagheder.

## Vigtigste kilder

- **Software asset management** (Wikipedia): definitionen, mål, teknologier og ISO/IEC 19770-delene.
- **Software supply chain** (Wikipedia): risici, softwarestyklisten, udbredelsestal og regulatorisk baggrund.
- **Open-source software** (Wikipedia): definitionen, licensfamilier og noter om risici og forpligtelser.
- **ISO/IEC 19770** (International Organization for Standardization): selve standardfamilien; læs de aktuelle dele for præcise krav.

## Referencer

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
