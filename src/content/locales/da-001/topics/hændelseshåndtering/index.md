# Hændelseshåndtering

**Hændelseshåndtering genopretter en forringet service så hurtigt, som det er sikkert, og den agile vane, der får den til at virke, er klare roller under pres efterfulgt af en skyldfri gennemgang, der gør hver hændelse til en ændring.**

## Hvorfor det betyder noget

Hændelser er det øjeblik, en service bliver bedømt. Brugerne husker ikke månederne med god tilgængelighed; de husker nedbruddet og hvordan det blev håndteret. Et team, der på forhånd har afklaret, hvem der gør hvad, hvordan det kommunikerer, og hvornår det kalder på hjælp, genopretter servicen hurtigere og begår færre fejl end et, der improviserer.

Agile teams, der driver det, de bygger, håndterer ofte hændelser uformelt. Det virker, indtil en hændelse er stor, spænder over flere teams eller sker om natten. Så viser manglen på roller og registreringer sig: ingeniører kaster sig over det tekniske problem, ingen fortæller kunderne noget, og to personer foretager modstridende ændringer. ITSM-praksissen hændelseshåndtering, sammen med praksisser fra site reliability engineering, tilbyder afprøvede måder at forhindre det på.

[Wikipedia-artiklen om incident management](https://en.wikipedia.org/wiki/Incident_management) dækker flere felter, fra nødberedskab til computersikkerhed. For IT-servicestyring siger den, at målet er at genoprette normal service inden for det aftalte serviceniveau så hurtigt som muligt, citerer ITIL 2011 i definitionen af en hændelse som en uplanlagt afbrydelse af en IT-service eller en forringelse af dens kvalitet og opregner tre udfordringer: alarmstøj, langvarig problemløsning og vanskeligheder med at forudsige nedbrud. For detaljer læner dette emne sig kraftigt op ad to kapitler i Googles bog *Site Reliability Engineering*, som beskriver en incident command-tilgang og skyldfri postmortems fra praksis i én stor organisation. Betragt disse kapitler som én veldokumenteret tilgang, ikke som den eneste.

## Kernebegreber

### Hvad en hændelse er

En **hændelse** er i ITSM-sprogbrug en uplanlagt afbrydelse af en service eller en forringelse af dens kvalitet. ITSM-artiklen medtager også en "potentiel" forstyrrelse. En hændelse er ikke det samme som et **problem**, som er den underliggende årsag, eller en **serviceanmodning**, som er en rutineforespørgsel (se Emne 3.3 — Problemhåndtering og Emne 3.6 — Håndtering af serviceanmodninger). Det betyder noget at holde de tre adskilt, fordi hver styres mod et forskelligt mål: at genoprette servicen, at fjerne årsager og at opfylde rutineefterspørgsel.

### Målet: genopret servicen, bevar evidens

Hændelseshåndteringens første mål er at genoprette servicen. SRE-kapitlet om at håndtere hændelser tilføjer et andet: bevar den evidens, der skal bruges til at finde grundårsagen senere. Kapitlets egne best practices siger, at man skal prioritere at genoprette servicen og bevare evidens i den ånd. At rette årsagen kan komme senere, i problemhåndtering.

### Hvorfor ustyrede hændelser går galt

SRE-kapitlet, skrevet af Andrew Stribblehill, bruger et udvidet eksempel på en vagthavende ingeniør, hvis nedbrud vokser til en total fejl. Det nævner tre farer ved ustyrede hændelser:

- **Et skarpt fokus på det tekniske problem.** Ingeniører, der er opslugt af en rettelse, mister overblikket over afbødning og det bredere billede.
- **Dårlig kommunikation.** Ingen ved, hvad de andre laver, og interessenter forbliver uinformerede.
- **Freelancing.** Ukoordinerede ændringer, som en udrulning i sidste øjeblik, gør situationen værre.

### Roller under pres

Kapitlet baserer sin tilgang på Incident Command System, som kom fra nødberedskab (Wikipedia-artiklen om incident management nævner det også). Dets hovedideer:

| Rolle | Hvad den gør |
|---|---|
| **Incident commander** | Holder den overordnede tilstand, strukturerer indsatsen, fjerner hindringer og holder enhver rolle, der endnu ikke er delegeret |
| **Operations lead** | Anvender værktøjer på problemet; kun driftsteamet ændrer systemet under en hændelse |
| **Communications lead** | Er indsatsens offentlige ansigt; udsender jævnlige opdateringer og holder hændelsesdokumentet ajour |
| **Planning lead** | Håndterer langsigtede spørgsmål som at oprette fejlrapporter, arrangere overdragelser og spore afvigelser fra normal, så ændringer kan fortrydes |

Kapitlet kalder princippet en rekursiv adskillelse af ansvar. Klare roller giver folk autonomi, fordi de ikke behøver at sætte spørgsmålstegn ved kolleger, og en overbelastet person beder om mere personale og uddelegerer dele af arbejdet. Overdragelser mellem commandere er eksplicitte og bekræftede.

### Det levende hændelsesdokument

Kapitlet siger, at commanderens vigtigste pligt er at føre et levende dokument over hændelsens tilstand, helst redigerbart af flere personer samtidig. Det må gerne være rodet, men skal forblive nyttigt, med nøgleinformation øverst, og det gemmes til senere analyse. En fælles kanal eller et fysisk rum tjener som kommandopost.

### Hvornår man erklærer en hændelse

Kapitlet anbefaler at erklære en hændelse tidligt, ikke timer inde i et forværret problem. Det foreslår at behandle en begivenhed som en hændelse, hvis et andet team skal involveres for at rette den, hvis nedbruddet er synligt for kunder, eller hvis den forbliver uløst efter en times koncentreret analyse. Det er én organisations tommelfingerregler. Jeres egne tærskler bør afspejle jeres services og brugere.

### Prioritet og alvorlighed

De kilder, der er læst til denne vejledning, definerer ikke prioritets- eller alvorlighedsniveauer, og Wikipedia-artiklen angiver ingen. I praksis definerer teams niveauer ud fra påvirkningen af brugerne og behovets hastende karakter og beslutter på forhånd, hvem der kaldes ved hvert niveau. Hold ordningen kort, med eksempler, og tjek den ved at anvende den på tidligere hændelser.

### Kommunikation

Kommunikation har to målgrupper. Responders skal kende tilstanden og hvem der gør hvad. Interessenter og brugere skal vide, hvad der er påvirket, hvad der bliver gjort, og hvornår de kan forvente næste opdatering. Communications lead i SRE-kapitlet tjener den anden målgruppe og fører loggen for den første. Ved nedbrud, der er synlige for offentligheden, er en plan for kommunikation i en krise nyttig (se færdigheden om krisekommunikation nedenfor).

### Skyldfri postmortems

SRE-kapitlet om postmortem-kultur beskriver læringshalvdelen. En postmortem registrerer hændelsen, dens påvirkning, afbødningen, grundårsagerne og opfølgende aktioner. Dens mål er at dokumentere hændelsen, forstå alle bidragende grundårsager og indføre effektive forebyggende aktioner. Den er skyldfri: den identificerer bidragende årsager uden at give enkeltpersoner eller teams skylden og antager, at alle "havde gode hensigter og gjorde det rette med den information, de havde". Med kapitlets ord: "Du kan ikke 'rette' mennesker, men du kan rette systemer og processer."

Kapitlet foreslår at definere udløsere for postmortems på forhånd, som synlig nedetid ud over en tærskel, ethvert datatab, en indgriben fra vagthavende som en tilbagerulning, løsningstid over en tærskel eller en overvågningsfejl. Det siger også "En postmortem, der ikke er gennemgået, kunne lige så godt aldrig have eksisteret", og anbefaler derfor jævnlige gennemgangssessioner og et fælles arkiv. Det beskriver kulturopbyggende aktiviteter som et månedligt nyhedsbrev, læseklubber og et "Wheel of Misfortune", hvor tidligere hændelser genopføres.

### Større hændelser

Mange ITSM-praksisser definerer en **større hændelse** (major incident) som en, der kræver en mere formel indsats end sædvanligt. De kilder, der er læst her, definerer det ikke, så gør det med jeres egne ord: for eksempel en hændelse, der påvirker mange brugere eller en kritisk service og kræver en koordineret indsats på tværs af teams. Det, der betyder noget, er, at folk på forhånd ved, hvad der ændrer sig: hvem der kommanderer, hvem der kaldes, hvor ofte der udsendes opdateringer.

### Hændelser og kontinuerlig levering

Hændelser opstår ofte ud fra nylige ændringer. Agile teams er godt placeret til at lære af dem, fordi de udgiver ofte og har korte feedbackløkker. Læringen har brug for en vej: postmortem-aktioner går ind i backloggen med ejere og datoer, og tilbagevendende hændelser går til problemhåndtering. Uden den vej bliver hændelseshåndtering en reparationsrutine.

## God praksis

1. **Beslut på forhånd, hvad der tæller som en hændelse.** Skriv en kort definition med eksempler, og sænk tærsklen for at erklære en. SRE-kapitlets tommelfingerregel er at erklære tidligt, når et andet team er nødvendigt, kunder kan se problemet, eller en times analyse ikke har løst det.
2. **Definér nogle få alvorlighedsniveauer med eksempler.** Baser dem på brugerpåvirkning, og angiv, hvem der kaldes ved hvert niveau. Afprøv ordningen på tidligere hændelser, og justér.
3. **Tildel roller ved starten af hver hændelse.** Navngiv en incident commander, en operations lead og en communications lead. I små teams kan én person have mere end én rolle; sig det højt.
4. **Adskil at rette fra at koordinere.** De, der ændrer systemet, bør ikke også besvare spørgsmål. Lad commanderen koordinere og communications lead informere.
5. **Før en levende registrering.** Brug ét fælles dokument eller én kanal med tidsstempler, beslutninger og foretagne ændringer. Det understøtter overdragelser og giver postmortem sit materiale.
6. **Tillad kun autoriserede ændringer.** SRE-kapitlet siger, at kun driftsteamet bør ændre systemet under en hændelse. Angiv, hvem der må ændre hvad, og bed andre om at tale med commanderen.
7. **Kommunikér efter en plan.** Aftal opdateringsintervallet for hver alvorlighed, og hold det, selv når der intet nyt er. Tavshed avler bekymring og dobbeltspørgsmål.
8. **Overdrag eksplicit.** Når en commander eller responder erstattes, så sig det højt, og lad den anden person bekræfte det. Uklare overdragelser mister kontekst.
9. **Øv.** Kør hændelsesprocessen på små begivenheder og i øvelser, så rollerne er velkendte før et alvorligt nedbrud. Roter folk gennem rollerne.
10. **Hold en skyldfri postmortem, når jeres udløsere er opfyldt.** Skriv den sammen med de involverede, fokusér på bidragende årsager og systemrettelser, og del den bredt (se færdigheden om postmortem nedenfor).
11. **Gør aktioner til backlogpunkter.** Giv hver opfølgning en ejer og en dato, og gennemgå dem på et jævnligt møde. En postmortem, der ikke gennemgås, giver ingen ændring.
12. **Giv evidensen videre til problemhåndtering.** Knyt gentagne hændelser til en problemregistrering, så årsager fjernes og ikke blot repareres (se Emne 3.3 — Problemhåndtering).

## Spørgsmål til diskussion i teamet

**Hvad gør vi i de første ti minutter af en hændelse, og hvem beslutter?**

Gennemgå den seneste væsentlige hændelse minut for minut. Notér, hvem der tog føringen, hvem der kommunikerede, og hvem der ændrede hvad. Mange teams finder, at roller blev antaget og ikke aftalt. Facilitatoren kan spørge, hvad der ville være sket, hvis den sædvanlige leder havde været væk. Følg op ved at aftale, hvordan roller tildeles næste gang.

**Hvornår kalder vi noget en hændelse, og hvornår venter vi?**

Saml eksempler på begivenheder, der blev erklæret sent. Spørg, hvad der holdt folk tilbage: ikke at ville genere andre, usikkerhed eller frygt for skyld. Sammenlign med SRE-kapitlets udløsere. Aftal en tærskel og en måde at erklære en hændelse uden postyr.

**Hvordan finder vores brugere ud af, hvad der sker under et nedbrud, og hvor ofte?**

Se på det seneste nedbrud fra brugerens side. Spørg, hvem der fortalte dem noget, hvad de fik at vide, og hvor langt hullet var. Ofte er svaret en lang tavshed efterfulgt af en kort note. Spørg, hvem der bør eje kommunikationen, og hvad den første besked skal sige. Aftal en skabelon og en opdateringsrytme.

**Hvad ændrede vores seneste postmortem, og hvordan ved vi det?**

Bed om aktionerne, ejerne og status. Hvis ingen blev gennemført, så spørg hvorfor: ingen ejer, ingen tid eller uklar værdi. Find ud af, om postmortems læses af nogen uden for teamet. Aftal en jævnlig session til at gennemgå åbne aktioner.

**Føler folk sig trygge ved at sige, hvad de gjorde forkert?**

Dette spørgsmål afprøver skyldfrihed. Bed folk beskrive, hvordan de ville have det med at skrive om deres egen fejl i en postmortem. Lyt efter frygt for konsekvenser og eksempler på, hvornår der blev givet skyld. Kræv ikke åbenhed; spørg, hvad teamet og lederne skulle gøre for at gøre det sikkert. Vælg ét synligt skridt.

**Hvordan øver vi, og hvornår gjorde vi det sidst?**

Spørg, om teamet har kørt en øvelse eller en simuleret hændelse, og hvad det lærte. Hvis aldrig, så drøft en lille start, som at genafspille en tidligere hændelse på en time. SRE-kapitlet nævner at øve processen på rutineændringer og katastrofeøvelser. Planlæg én til næste kvartal.

## I praksis: et agilt ITIL-eksempel

Et regionalt elselskabs kundeportal lader husstande rapportere nedbrud og se regninger. Et team på elleve bygger og driver den, med en vagtplan på fire. Under en storm stiger rapporttrafikken, portalen bliver langsom og svigter derefter. Den vagthavende ingeniør prøver en genstart af databasen, en anden ingeniør udruller samtidig en konfigurationsrettelse, og en tredje ruller en tidligere release tilbage. Portalen kommer tilbage efter tre timer, og callcentret, som aldrig fik besked, tog imod tusindvis af vrede opkald.

Ved postmortem ser teamet de tre farer fra SRE-kapitlet: alle fokuserede på den tekniske rettelse, ingen kommunikerede, og ændringer kolliderede. De skriver en hændelsesproces på én side. Alle må erklære en hændelse, og et involveret andet team, kundesynlighed eller en time uden fremskridt betyder, at de skal. Den vagthavende ingeniør bliver operations lead, og en vagtplan udpeger en incident commander og en communications lead fra det bredere team. Kun operations lead ændrer produktion. Communications lead sender en opdatering hvert 30. minut til callcentret og kontrolrummet. En fælles kanal rummer den levende log.

Ved den næste storm bliver portalen langsom igen, en hændelse erklæres inden for ti minutter, og servicen genoprettes på 70 minutter, med opdateringer til callcentret hele vejen. Problemer består. Commander-vagtplanen har huller i ferier, og teamet finder, at én afhængighed, en leverandør af sms-beskeder, ikke har nogen eskaleringskontakt. Postmortem giver to aktioner med ejere: færdiggør vagtplanen med en reserve, og aftal en eskaleringsvej med leverandøren. Teamet planlægger en genafspilning af stormhændelsen for nye medlemmer af vagtplanen.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams forårsager og retter mange hændelser. Deltag i vagtplanen eller yd direkte support til den, og behandl postmortem-aktioner som backlogpunkter. Byg midlerne til at opdage og rulle problemer tilbage ind i jeres releases. Deltag i øvelser, så rollerne er velkendte.

### Service- og driftsteams

Driftsteams ejer processen. Hold den kort og øvet, giv folk beføjelse til at handle, og før registre, andre kan bruge. Del, hvad I lærer, med leveranceteams, og skub erfaringerne ind i problemhåndtering og planlægning.

### Ledelse og governance

Ledere sætter kulturen. Bed om postmortems, og læs dem, ros folk, der rapporterer problemer, og nægt at lede efter nogen at give skylden. Beskyt tiden til at øve og til at gennemføre aktioner. Beslut, hvem der må bruge penge eller kalde det højeste niveau af indsats.

### Kunder og brugere

Kunder og brugere har brug for rettidige, ærlige opdateringer og en klar måde at rapportere problemer på. Spørg din leverandør, hvad du kan forvente under et nedbrud, og hvordan du får besked. Når en postmortem deles med dig, så læs den for, hvad leverandøren vil ændre.

## Almindelige fejlmønstre

- **Ingen roller.** Alle arbejder på den tekniske rettelse, og ingen koordinerer eller kommunikerer. I stedet: navngiv hver gang en incident commander, operations lead og communications lead.
- **At erklære sent.** Folk venter, til problemet er slemt. I stedet: sæt lave, klare tærskler, og gør det normalt at erklære.
- **Freelancing.** Flere ændrer systemet på én gang. I stedet: tillad kun ændringer gennem operations lead.
- **Tavshed.** Brugere og interessenter hører intet. I stedet: aftal et opdateringsinterval og en skabelon.
- **Skyld.** En postmortem leder efter den skyldige. I stedet: spørg, hvad i systemet der tillod fejlen, og ret det.
- **Postmortems, der ikke fører nogen vegne.** Aktioner har ingen ejere. I stedet: sæt dem i backloggen med datoer, og gennemgå dem jævnligt.
- **Aldrig at øve.** Første gang processen bruges, er et større nedbrud. I stedet: indøv på små begivenheder og i øvelser.
- **At behandle reparation som løsning.** Den samme hændelse vender tilbage. I stedet: knyt gentagelser til problemhåndtering, og ret årsagen.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Opdagelse og erklæring | Hændelser bemærkes gennem brugerklager | Nogle alarmer findes, og nogle hændelser erklæres | Skriftlige tærskler og en enkel alvorlighedsordning bruges konsekvent | Opdagelsestid og erklæringstid spores og reduceres | Opdagelse og erklæring deles på tværs af teams og leverandører |
| Indsats og roller | Responders improviserer | Nogle teams udpeger en leder | Roller, overdragelser og en levende registrering er standard | Responstider og rolleydelse gennemgås | Indsatsen koordineres på tværs af teams og leverandører, med fælles øvelser |
| Kommunikation | Opdateringer er ad hoc | Nogle opdateringer går til nogle målgrupper | Opdateringsrytme og skabeloner findes for hver alvorlighed | Kommunikationens rettidighed måles, og brugere spørges | Kommunikation koordineres med kunder og partnere |
| Læring | Gennemgange følger kun de værste hændelser | Nogle postmortems skrives | Skyldfrie postmortems følger definerede udløsere, med aktioner sporet | Gennemførelse af aktioner og gentagelser måles | Erfaringer deles på tværs af teams og fodrer ændringer i hele organisationen |

## Tjekliste

- [ ] Vi har en kort definition af en hændelse med eksempler.
- [ ] Vi har en lille alvorlighedsordning med eksempler på brugerpåvirkning og kaldelister.
- [ ] Hver hændelse starter med at navngive en incident commander, en operations lead og en communications lead.
- [ ] En levende registrering føres for hver hændelse.
- [ ] Kun den navngivne operations lead ændrer produktion under en hændelse.
- [ ] Opdateringsintervaller er aftalt for hver alvorlighed.
- [ ] Udløsere for postmortems er skrevet ned.
- [ ] Postmortems er skyldfri, delt og gennemgået.
- [ ] Hver postmortem-aktion har en ejer og en dato, og åbne aktioner gennemgås.
- [ ] Vi har øvet processen inden for de seneste seks måneder.

## AI-prompts

**Formål: at udarbejde en hændelsesproces på én side ud fra jeres nuværende praksis.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gøre en hændelseslog til et udkast til en skyldfri postmortem.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Formål: at skrive en statusopdatering om hændelsen til ikke-tekniske interessenter.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Formål: at designe en lille hændelsesøvelse.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): brug den til at skrive den plan, der fastlægger roller, tærskler og kommunikation for jeres team.
- [postmortem](../../../../skills/postmortem/SKILL.md): brug den til at køre en skyldfri gennemgang og registrere aktioner efter en hændelse.
- [runbook](../../../../skills/runbook/SKILL.md): brug den til at gøre kendte rettelser til korte procedurer for respondereren.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): brug den til at designe en fair vagtplan med reserve og overdragelser.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): brug den til at planlægge, hvad I fortæller brugere, personale og offentligheden under et større nedbrud.

## Vigtigste kilder

- **Managing Incidents** (Andrew Stribblehill, i *Site Reliability Engineering*, Google, sre.google): den klareste offentlige beretning om incident command for serviceteams.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): argumentet for skyldfri postmortems, med udløsere og ideer til kulturopbygning.
- **Incident management** (Wikipedia): en oversigt over flere felter med et afsnit om IT-servicestyring.
- **IT service management** (Wikipedia): definitionen af hændelse og hændelseshåndteringens plads i servicedesken.

## Referencer

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
