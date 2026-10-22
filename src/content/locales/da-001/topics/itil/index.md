# ITIL

**ITIL er et rammeværk af praksisser til at styre IT-services, der begyndte som britisk regeringsvejledning i 1980'erne og nu beskriver servicestyring i form af værdi, og du kan bruge det som kilde til afprøvede ideer uden at adoptere det hele.**

## Hvorfor det betyder noget

ITIL er det mest udbredt kendte navn inden for IT-servicestyring (ITSM). Stillingsopslag nævner dets certificeringer, revisorer spørger, om I "følger ITIL", og mange organisationer indretter deres servicedesks efter dets ordforråd. Et team, der arbejder agilt, vil før eller siden møde ITIL, ofte som et sæt formularer og godkendelser, der ser ud til at høre til en anden tid. At vide, hvad ITIL egentlig er, hvor det kom fra, og hvad det påstår, hjælper dig med at skille de nyttige ideer fra bagagen.

ITIL har også ændret sig. Det rammeværk, du måske husker, med en livscyklus af servicestrategi, -design, -overgang, -drift og -forbedring, blev i 2019 erstattet af ITIL 4, som blev skrevet for at stemme overens med agile, DevOps og lean arbejdsmåder. I 2026 annoncerede ejeren endnu en version, kaldet ITIL 5. En vejledning, der behandlede ITIL som fast, ville vildlede dig, og det ville en, der behandlede alle versioner som ens, også.

Dette emne beskriver ITILs historie, ejerskab, versioner og certificering, med afsæt i [Wikipedia-artiklen om ITIL](https://en.wikipedia.org/wiki/ITIL) og rammeværksejerens offentlige sider. Det er omhyggeligt med datoer og med, hvad de offentlige kilder faktisk siger. Detaljerne om, hvordan ITIL 4 virker, begynder med Emne 2.3 — ITILs serviceværdisystem.

## Kernebegreber

### Hvad ITIL er

ITIL, Information Technology Infrastructure Library, er ifølge Wikipedia et rammeværk af praksisser til IT-aktiviteter som ITSM og IT-aktivstyring, med det formål at afstemme IT-services med forretningens behov. Det er en kilde til vejledning. Det er ikke en standard, en organisation certificeres mod. Wikipedia anfører, at certificering i ITIL kun er tilgængelig for enkeltpersoner og ikke for organisationer, og at der ikke findes nogen formel uafhængig tredjepartsvurdering, der viser, at en organisation overholder ITIL. Den beslægtede standard, organisationer kan certificeres mod, er ISO/IEC 20000 (se Emne 2.7 — ITSM-rammeværker og standarder).

### Hvor det kom fra

Wikipedia siger, at den britiske regerings Central Computer and Telecommunications Agency (CCTA) udviklede anbefalingerne i 1980'erne for at standardisere styringen af statens IT, og knytter procesmodeltilgangen til W. Edwards Demings arbejde og Plan-Do-Check-Act-cyklussen. Denne oprindelse betyder noget: ITIL blev skrevet til store, stabile organisationer, der drev delt infrastruktur, en sammenhæng, hvor forandring var dyr, og nedbrud var synlige. Nogle af dets antagelser ser forældede ud i en verden af cloudservices og daglige releases.

### Versioner og datoer

Datoerne nedenfor følger Wikipedia-artiklen. Hvor artiklen tier, tier dette emne.

| Dato | Begivenhed |
|---|---|
| 1989 | ITIL udgivet som en serie på 30 bøger |
| 1993 | EXIN udviklede den første ITIL-certificeringsordning |
| 2001 | ITIL version 2 udgivet |
| Maj 2007 | ITIL version 3 udgivet, med 26 processer og funktioner grupperet i fem bind (også kaldet 2007-udgaven) |
| 2009 | Office of Government Commerce (OGC) annoncerede, at ITIL v2-certificering ville blive trukket tilbage |
| Juli 2011 | ITIL 2011-udgaven udgivet |
| Februar 2019 | ITIL 4 udgivet; versionsnummereringen blev forenklet, og artiklen siger, at den blev afstemt med Agile, DevOps og Lean og flyttede vægten fra IT-servicestyring til generel servicestyring |
| Januar 2026 | PeopleCert annoncerede ITIL 5 |

Artiklen angiver ingen udgivelsesdato for en første version af ITIL, så ingen er givet her.

### Hvem der ejer det

Wikipedia sporer ejerskabet som følger. CCTA var ophavet til ITIL. I april 2001 blev CCTA sluttet sammen med Office of Government Commerce, et kontor under det britiske finansministerium. I 2013 blev ITIL købt af AXELOS, et joint venture mellem Capita og det britiske Cabinet Office. PeopleCert gennemførte sit køb af AXELOS i juni 2021 og har ejet ITIL-varemærket siden 2021. Navnet ITIL er et registreret varemærke; denne vejledning bruger det korrekt og antyder ikke godkendelse fra dets ejer.

### ITIL 4 i omrids

ITIL 4, udgivet i 2019, beskrives i de næste emner, fra Emne 2.3 — ITILs serviceværdisystem og frem. I omrids har det:

- et **serviceværdisystem (SVS)**, modellen for, hvordan en organisations dele arbejder sammen for at skabe værdi;
- **fire dimensioner** af servicestyring, som PeopleCerts ITIL 4 Foundation-side opregner som organisationer og mennesker, information og teknologi, partnere og leverandører samt værdistrømme og processer;
- **syv vejledende principper**, som Wikipedia opregner som fokus på værdi; start, hvor du er; skrid frem iterativt med feedback; samarbejd og fremme synlighed; tænk og arbejd holistisk; hold det enkelt og praktisk; og optimér og automatisér;
- en **serviceværdikæde** af aktiviteter, som udbredte opsummeringer fra uddannelsesudbydere opregner som planlæg, forbedr, engagér, design og overgang, skaf/byg samt lever og understøt;
- et sæt **praksisser**, som Wikipedia tæller til 34, fordelt på 22 produkt- og servicestyringspraksisser og 12 generelle ledelsespraksisser.

Én advarsel. Wikipedia placerer de vejledende principper og praksisantallet under sit ITIL 5-afsnit. De svarer til den udgivne struktur i ITIL 4, som den er bredt beskrevet, og denne vejledning behandler dem som ITIL 4-begreber. Tjek mod ejerens aktuelle publikationer, før du stoler på tallene.

### ITIL 5

Wikipedia rapporterer, at PeopleCert annoncerede ITIL 5 i januar 2026. PeopleCerts certificeringsside, som den er læst til denne vejledning, siger "The new ITIL is here!" og beskriver det som "Practical and AI-native by design." Den opregner ITIL Foundation (Version 5), ITIL Product (Version 5), ITIL Service (Version 5) og et ITIL AI Governance (Version 5)-modul. Den opregner stadig ITIL 4-kurser og tilbyder en opgraderingsvej for ITIL 4-certificerede fagfolk. Siden angiver ikke en udgivelsesdato og siger ikke, om ITIL 4-certificeringer udgår.

Det er alt, vejledningen kan angive fra ejerens offentlige sider. Praksismaterialet i del 2 og 3 hviler derfor på ITIL 4-begreber, og det nævner kun ITIL 5, hvor en ejerkilde understøtter det. Hvis du arbejder med ITIL 5-materiale, så læs de nye publikationer direkte.

### Certificering

Wikipedia beskriver ITIL 4-vejen som begyndende med ITIL 4 Foundation og derefter forgrenende sig i to spor: Managing Professional, med fire specialistmoduler, og Strategic Leader, med to. PeopleCerts side organiserer nu certificeringer efter version (ITIL 4 eller ITIL Version 5) og efter kvalifikationsveje. Certificeringer viser, at en person har studeret materialet; de viser ikke i sig selv, at en organisation driver services godt. Priser og det præcise katalog ændrer sig, så tjek ejerens side for aktuelle detaljer (se Emne 6.4 — Læringsstier og certificering).

### Hvad ITIL ikke er

ITIL er ikke en standard, du kan bestå eller dumpe, en metodik, du skal følge fuldt ud, eller et sæt regler, som revisioner håndhæver af sig selv. Wikipedia-artiklen nævner ingen kritik, men praktikere rejser ofte velkendte indvendinger: at implementeringer glider over i papirarbejde, at tidligere versioner antog langsom forandring, og at certificering kan blive målet. Hvor disse bekymringer er reelle i din organisation, er midlet at tilpasse ITILs ideer, hvilket rammeværket selv opmuntrer til gennem principper som "start, hvor du er" og "hold det enkelt og praktisk".

## God praksis

1. **Behandl ITIL som et bibliotek af ideer.** Læs det for praksisser, der passer til et problem, I har, og tag det, der hjælper. Rammeværket er vejledning, og det er ikke et complianceregime, du kan dumpe.
2. **Vid, hvilken version folk mener.** Når kolleger, leverandører eller revisorer siger "ITIL", så spørg, om de mener ITIL v3, ITIL 4 eller ITIL 5. Praksisser, ordforråd og certificering adskiller sig, og misforståelser er almindelige.
3. **Tjek ejerens aktuelle publikationer.** Datoer, certificeringsveje og produktnavne ændrer sig. Læs rammeværksejerens sider for den aktuelle tilstand, og stol ikke kun på uddannelsesudbyderes opsummeringer, inklusive denne vejledning.
4. **Start, hvor I er.** Kortlæg de praksisser, I allerede følger, før I tilføjer nogen. Mange agile teams gør allerede hændelseshåndtering, release og vidensdeling uden at bruge ITILs navne, og navnene kan tilføjes senere.
5. **Adoptér ordforråd før proces.** Fælles begreber som hændelse, problem, ændring og serviceanmodning hjælper teams med at tale med drift, revision og kunder. Indfør dem først, og tilføj formelle trin kun, hvor en smerte retfærdiggør det.
6. **Brug ITIL 4s vejledende principper til jeres egne beslutninger.** De er korte og for det meste forenelige med agil og kan tjene som tjekliste for enhver proces. Afprøv en foreslået proces mod "hold det enkelt og praktisk" og "skrid frem iterativt med feedback".
7. **Adskil brug af rammeværket fra certificering.** At uddanne jeres folk i ITIL er nyttigt, men certifikater beviser ikke, at jeres services drives godt. Mål resultater som tid til at genoprette servicen og kundetilfredshed.
8. **Par kun ITIL med ISO/IEC 20000, når I har brug for ekstern certificering.** Hvis en kunde eller tilsynsmyndighed kræver et certificeret servicestyringssystem, er ISO/IEC-standarden vejen. Ellers er ITIL-vejledning nok (se Emne 2.7 — ITSM-rammeværker og standarder).
9. **Vær ærlige i det, I påstår.** Sig "vi bruger ideer fra ITIL 4", hvis det er sandt. At påstå compliance med et rammeværk, der ikke har nogen organisatorisk certificering, indbyder til problemer med revisorer og kunder.
10. **Tilpas ældre praksisser til hurtigere forandring.** Hvis jeres organisation stadig bruger processer fra ITIL v2 eller v3, så gennemgå dem mod den nuværende leveringshastighed, og erstat lange godkendelser med lettere tjek, der opfylder det samme formål (se Emne 3.4 — Ændringsunderstøttelse).
11. **Inddrag leveranceteams i alt ITIL-arbejde.** Hvis en servicestyringsgruppe designer processer alene, vil leveranceteams arbejde uden om dem. Inddrag dem fra begyndelsen, og afprøv processer med en pilot.
12. **Hold øje med nye versioner uden at skynde jer.** Når en ny version annonceres, så læs, hvad ejeren udgiver, notér hvad der er ændret, og afgør, hvad der er værd at adoptere. Omstrukturér ikke services for at matche en ny version uden grund.

## Spørgsmål til diskussion i teamet

**Hvad mener vi, når vi siger "ITIL", og mener alle det samme?**

Bed hver person beskrive ITIL i en sætning og navngive den version, de kender. Forskelle er almindelige: nogen husker v3-livscyklussen, nogen har ITIL 4 Foundation-certifikatet, nogen kender kun ticketværktøjet. Skriv den fælles betydning ned. Facilitatoren kan spørge, hvad hver version antyder om, hvor hurtigt organisationen bør ændre sig.

**Hvilke ITIL-ideer bruger vi allerede uden navnet?**

List de praksisser, teamet følger: håndtering af hændelser, registrering af ændringer, en vidensbase. Match dem med ITIL-praksisser. Mange teams bliver overraskede over, hvor meget de gør. Spørg, hvilke af dem der er skrevet ned, og hvilke der bor i folks hoveder. Vælg én, der skal registreres.

**Hvor har ITIL, eller noget kaldet ITIL, hjulpet os, og hvor har det skadet?**

Saml historier om begge dele. Hjælpsomme historier handler som regel om fælles ordforråd og om at undgå gentagne fejl. Skadelige historier handler som regel om langsomme godkendelser og formularer. Spørg, hvad der adskilte de to slags. Ofte er det, om processen havde et klart formål og en ejer, der kunne ændre den. Aftal én ting at beholde og én at ændre.

**Hvad forventer vores kunder, revisorer eller leverandører af os med hensyn til ITIL?**

Spørg folk, der har med disse grupper at gøre, hvad der bliver bedt om. Nogle gange er forventningen et certificeret styringssystem, nogle gange kun ITIL-ordforråd. At afklare forventningen undgår overinvestering. Bemærk, at organisatorisk certificering mod ITIL ikke findes, så spørg, hvilken evidens den anden part faktisk ville acceptere.

**Passer vores certificerings- eller uddannelsesplan til de problemer, vi har?**

Se på, hvem der har hvilke certifikater, og hvilke problemer teamet står over for. Kurser hjælper, når de er knyttet til en opgave. Spørg, om pengene ville gøre mere gavn andre steder, som i værktøjer eller tid til at forbedre. Drøft uden dom over enkeltpersoners veje. Vælg ét læringsmål, der forbinder sig til et teamproblem.

**Hvordan skal vi reagere på en ny version af ITIL?**

Spørg, hvem der er ansvarlig for at følge ejerens meddelelser, og hvad der ville udløse en ændring. En fornuftig regel er at læse det nye materiale, liste hvad det ændrer for teamet og beslutte et lille eksperiment. Undgå at forpligte jer til en gennemgribende ændring, før praksissen er forstået. Facilitatoren kan spørge, hvad der kunne gå galt, hvis teamet bevægede sig for tidligt eller for sent.

## I praksis: et agilt ITIL-eksempel

En mellemstor regional bank har en IT-driftsafdeling på fyrre personer. Dens processer blev skrevet for ti år siden ud fra ITIL v3, med et ugentligt change advisory board, en lang hændelsesformular og en separat problemregistrering for hvert gentaget nedbrud. Leveranceteams, som nu udgiver de fleste applikationer hver anden uge, klager over, at ændringsrådet er langsomt, og formularerne er overflødige. Driftspersonalet svarer, at formularerne findes, fordi tidligere nedbrud har kostet banken penge og en tilsynsadvarsel.

Lederen af servicestyring nedsætter en arbejdsgruppe med to leveranceteamledere og to driftschefer. De begynder med at liste formålet med hver formular og godkendelse, med spørgsmålet "hvad beskytter dette mod?". Flere viser sig ikke at have noget klart formål. De læser derefter ITIL 4s vejledende principper og afprøver deres processer mod to af dem: "hold det enkelt og praktisk" og "skrid frem iterativt med feedback". Gruppen skærer hændelsesformularen ned fra 22 felter til ni, erstatter det ugentlige ændringsråd for ændringer med lav risiko og god test med automatisk registrering og beholder rådet til ændringer med høj risiko.

Seks måneder senere flyder ændringer hurtigere, og bankens interne revision finder evidensen for ændringer med lav risiko tilstrækkelig. Ikke alt er løst. Nogle medarbejdere beder stadig om den gamle formular, og en leverandørkontrakt skrevet omkring de gamle processer kræver ændringer, banken ikke kan lave hurtigt. Samtidig bemærker lederen af servicestyring, at bankens uddannelsesbudget stadig går helt til ITIL v3-certifikater, som ikke længere svarer til praksis. Hun bestiller en gennemgang af uddannelsesplanen og fortæller personalet, at banken bruger ideer fra ITIL 4 og ikke påstår compliance med nogen version.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams kan bruge ITIL som en tjekliste over, hvad driften bekymrer sig om: hvordan en service overvåges, supporteres og ændres. Lær ordforrådet, og foreslå lettere måder at opfylde de samme formål. Når nogen siger "ITIL kræver det", så spørg, hvilken version, hvilken praksis, og hvad det beskytter mod.

### Service- og driftsteams

Driftsteams er ofte bærere af ITIL-viden. Del grundene bag jeres processer, og vær klar til at forenkle. Tjek, at jeres praksis afspejler den aktuelle version af ITIL, hvor I påstår at følge den. Brug ITILs egne principper til at argumentere for iterativ forbedring frem for store redesigns.

### Ledelse og governance

Ledere afgør, hvordan ITIL bruges. Undgå at behandle det som et compliancemærke. Bed om resultater, ikke certifikater. Hvis en ekstern part har brug for et certificeret styringssystem, så brug ISO/IEC 20000, og forstå dets omfang. Hold uddannelsesplanen afstemt med den aktuelle praksis og med de problemer, organisationen har.

### Kunder og brugere

Kunder og brugere er sjældent optaget af, hvilken version af ITIL en leverandør følger. De bekymrer sig om, at hændelser håndteres godt, anmodninger besvares, og ændringer ikke ødelægger noget. Spørg leverandører, hvad de gør ved de resultater, og ikke hvilket rammeværk de henviser til.

## Almindelige fejlmønstre

- **At behandle ITIL som en standard, der skal bestås.** Teams jagter compliance med et rammeværk, der ikke har organisatorisk certificering. I stedet: angiv, hvilke ideer I bruger, og mål resultater.
- **At forveksle versioner.** Processer fra v3 forsvares som "ITIL" mod ITIL 4s vejledning. I stedet: spørg, hvilken version der menes, og læs den aktuelle publikation.
- **At implementere alt.** Teams bygger hver praksis, før de har behov. I stedet: start med smerterne, og tilføj praksisser, når problemerne retfærdiggør det.
- **Certifikat som mål.** Uddannelsesudgifter erstatter forbedringsarbejde. I stedet: knyt læring til et problem, og mål, hvad der ændrer sig i arbejdet.
- **Proces uden formål.** Formularer og godkendelser forbliver, fordi de er i processen. I stedet: spørg, hvad hver beskytter mod, og slet dem, der ikke beskytter noget.
- **At stole på uddannelsesopsummeringer.** Blogindlæg og kursusnoter angiver detaljer med tryghed, og nogle er forkerte eller forældede. I stedet: læs ejerens publikationer, og henvis til dem.
- **At antage, at en ny version løser gamle problemer.** En ny version kommer, og teams håber, at den retter kulturen. I stedet: læs, hvad der er ændret, og kør et lille eksperiment.
- **At udelukke leveranceteams.** Servicestyring designer processer alene. I stedet: byg sammen med levering og drift, og afprøv med en pilot.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Forståelse af ITIL | Personalet kender navnet og lidt mere | Nogle er uddannet og bruger ITIL-ordforråd | Teams deler en angiven læsning af, hvilke ITIL-ideer de bruger, og hvilken version | Brugen af ITIL-ideer gennemgås mod resultater | Teams, leverandører og kunder bruger et fælles ordforråd og gennemgår det sammen |
| Tilpasning af praksis | Processer er arvede og uændrede | Nogle teams forenkler processer lokalt | Hver praksis har en ejer og en vej for ændring | Procesfriktion og resultater måles | Praksisser tilpasses på tværs af teams ud fra fælles evidens |
| Påstande og evidens | Compliance påstås løst | Nogle påstande tjekkes | Påstande er nøjagtige og understøttet af registre | Evidens gennemgås med revisorer og kunder | Evidens deles og stoles på på tværs af partnere |
| Læring og certificering | Uddannelse er ad hoc | Nogle medarbejdere er certificeret | Uddannelse planlægges mod teamets problemer | Uddannelsens virkning på arbejdet gennemgås | Læring koordineres på tværs af teams og leverandører og opdateres med nye versioner |

## Tjekliste

- [ ] Teamet kan sige, hvilken ITIL-version kolleger, leverandører og revisorer mener.
- [ ] Vi ved, hvilke ITIL-ideer vi bruger, og hvilke vi har udeladt, og hvorfor.
- [ ] Vores påstande om ITIL er nøjagtige og antyder ikke en organisatorisk certificering, der ikke findes.
- [ ] Hver proces har et angivet formål og en ejer, der kan ændre den.
- [ ] Både leverance- og driftspersonale deltager i at designe servicestyringsprocesser.
- [ ] Vi læser rammeværksejerens aktuelle publikationer, ikke kun uddannelsesopsummeringer.
- [ ] Vores uddannelsesplan er knyttet til teamets faktiske problemer.
- [ ] Vi ved, om nogen kunde eller tilsynsmyndighed kræver ISO/IEC 20000 eller en anden certificeret standard.
- [ ] Vi har en navngiven person, der følger meddelelser fra ITIL-ejeren.
- [ ] Processer arvet fra ældre versioner er gennemgået mod den nuværende leveringshastighed.

## AI-prompts

**Formål: at finde ud af, hvilken version af ITIL jeres processer var baseret på.**

```text
Help me work out which version of ITIL my organization's processes seem to be based on.

Here are descriptions of our processes (names of processes, roles, forms, meetings, and the vocabulary we use): [paste a list].

Here are notes I have from the ITIL owner's public pages for each version I am comparing: [paste only the text you have read from official pages or publications].

Using only the pasted notes, say which version each process appears to follow, quote the words you based that on, and list processes where you cannot tell. Do not add facts about ITIL versions from memory. Ask me clarifying questions first, and list what you are unsure of.
```

**Formål: at spørge "hvad beskytter dette mod?" for hvert procestrin.**

```text
Here is a process we use: [paste the steps, forms, approvals, and who does each].

For each step, answer: (1) what risk or purpose it may serve, (2) who benefits, (3) what evidence shows it works, using only the text I gave you, and (4) a lighter alternative that could meet the same purpose. Mark every point where you are guessing. Do not claim any standard or regulation requires a step unless I have pasted its text: [paste any rule text, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede en kort briefing om ITIL til et team af udviklere.**

```text
Write a one-page briefing on ITIL for a team of [number] developers who run what they build.

Use only these notes, which I have read from sources: [paste notes, such as the history and versions you verified, ITIL 4 guiding principles, and the fact that organizations cannot be certified against ITIL].

Include: what ITIL is and is not, three ideas that suit our team, and three questions to ask operations. Keep it neutral about agile and ITIL. Do not add dates or claims that are not in my notes. Mark assumptions, and list what you are unsure of.
```

**Formål: at planlægge, hvordan man reagerer på en ny version af ITIL.**

```text
A new version of ITIL has been announced. Here is what the framework owner's public pages say, copied by me: [paste the text].

Our current practice: [describe in a few sentences which ITIL-based practices we use].

Using only the pasted text, list what appears to have changed that might affect us, what the text does not say, and questions to ask the owner or a training provider. Propose a small experiment we could run in one quarter. Do not guess about content not in the text. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): brug den til at gøre ITILs idé om aftalte serviceniveauer til en enkel aftale, kunderne kan forstå.
- [change-request](../../../../skills/change-request/SKILL.md): brug den til at udarbejde ændringsregistreringer, der bærer den information, drift og revisorer har brug for.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): brug den til at fastlægge, hvordan jeres team reagerer på hændelser, i overensstemmelse med den praksis, I vælger.
- [configuration-management](../../../../skills/configuration-management/SKILL.md): brug den til at planlægge, hvordan I registrerer delene af jeres services og hvordan de hænger sammen.
- [kaizen](../../../../skills/kaizen/SKILL.md): brug den til at gøre ITILs idé om løbende forbedring til små, jævnlige ændringer.

## Vigtigste kilder

- **ITIL** (Wikipedia): rammeværkets historie, ejerskab, versioner og certificering, med henvisninger.
- **ITIL certifications** (PeopleCert): den nuværende ejers offentlige katalog over ITIL 4- og ITIL Version 5-certificeringer; tjek det for den aktuelle tilstand.
- **ITIL 4 Foundation** (PeopleCert): ejerens opsummering af, hvad Foundation-niveauet dækker, inklusive de fire dimensioner.
- **IT service management** (Wikipedia): kontekst om, hvor ITIL placerer sig blandt ITSM-rammeværker og standarder.

## Referencer

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
5. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
6. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
7. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
8. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
