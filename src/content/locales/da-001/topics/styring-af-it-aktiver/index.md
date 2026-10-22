# Styring af IT-aktiver

**Styring af IT-aktiver holder styr på den hardware, software og de relaterede ressourcer, en organisation ejer eller betaler for, fra køb til bortskaffelse, så beslutninger om omkostning, risiko og support bygger på fakta i stedet for gæt.**

## Hvorfor det betyder noget

Spørg de fleste organisationer, hvor mange bærbare, servere, cloudkonti og softwarelicenser de har, og det første svar er et gæt. Det andet, efter en søgning, er ofte anderledes. Det hul har omkostninger. Der købes licenser, som ingen bruger, eller bruges uden at være købt. Gammel hardware bliver på netværket uden opdateringer. Fratrådte medarbejdere beholder adgang til systemer, som ingen huskede at fjerne. En servicedesk kan ikke supportere udstyr, den ikke ved findes.

Styring af IT-aktiver (ITAM) er praksissen at lukke det hul. Den er tæt knyttet til servicestyring: services kører på aktiver, hændelser og ændringer berører aktiver, og en services omkostning er i vid udstrækning omkostningen ved dens aktiver. For agile teams har praksissen en særlig drejning. Aktiver omfatter nu cloudressourcer oprettet af et script på sekunder og nedlagt minutter senere, containerbilleder, open source-biblioteker og abonnementer købt på et kort. Den gamle model med et regneark over købt udstyr fanger dem ikke.

Den engelske Wikipedias artikel med titlen "IT asset management" omdirigerer i øjeblikket til dens artikel om datacenterstyring, hvor ITAM optræder som et afsnit. Afsnittet beskriver ITAM som forretningspraksisser, der forener økonomiske, kontraktlige og lagerfunktioner for at understøtte livscyklusstyring og strategiske IT-beslutninger, og det er kort. Dette emne bruger det til definition, tilføjer detaljerne fra artiklerne om software asset management og konfigurationsstyringsdatabaser og placerer praksissen i den agile sammenhæng. Hvor det går ud over kilderne, siger det det.

## Kernebegreber

### Hvad det er

Ifølge Wikipedia-afsnittet om datacenteraktivstyring, der citerer Gartner, er ITAM et sæt forretningspraksisser, der forener økonomiske, kontraktlige og lagerfunktioner for at understøtte livscyklusstyring og strategiske IT-beslutninger. Aktiver omfatter software og hardware i forretningsmiljøet. Praksissen kaldes også lagerstyring. Artiklen bemærker, at praksissen bruger automatiseret opdagelse, så lageret kan sammenlignes med licensrettigheder, og at fuld styring kræver et arkiv af flere typer information, integreret med forsyningskæde-, help desk-, indkøbs-, HR- og ITSM-systemer.

### Hvad der tæller som et aktiv

En nyttig arbejdsliste for en serviceorganisation:

| Aktivtype | Eksempler | Behandlet i |
|---|---|---|
| **Hardware** | Bærbare, servere, netværksenheder, telefoner, lagring | Emne 4.3 — Styring af hardwareaktiver |
| **Software** | Licenserede applikationer, operativsystemer, open source-komponenter, abonnementer | Emne 4.2 — Styring af softwareaktiver |
| **Cloud- og serviceressourcer** | Virtuelle maskiner, containere, lagerspande, SaaS-konti | Emne 4.2 — Styring af softwareaktiver og Emne 4.5 — IT-økonomistyring og FinOps |
| **Data og information** | Datasæt, registre, backups | Emne 3.13 — Styring af informationssikkerhed |
| **Kontrakter og rettigheder** | Licenser, supportaftaler, garantier | Emne 4.2 — Styring af softwareaktiver og Emne 3.14 — Leverandørstyring |
| **Mennesker og færdigheder** | Personale og evner (ikke som regel i aktivregisteret, men en del af servicen) | Emne 2.5 — De fire dimensioner af servicestyring |

Tabellen er denne vejlednings arbejdsliste, ikke en klassifikation fra en kilde.

### Livscyklus

Wikipedia-afsnittet beskriver hardwareaktivstyring som dækkende fysiske computer- og netværkskomponenter fra anskaffelse til bortskaffelse, med opførte praksisser som anmodning og godkendelse, indkøb, livscyklusstyring, omplacering og bortskaffelse, og siger, at det er en nøglekomponent at fange økonomisk information om hardwarens livscyklus. Det giver ingen formel fasemodel. En almindelig praktisk rækkefølge, udbredt og tilbudt her som sådan, er:

1. **Planlæg og anmod:** beslut hvad der er brug for, og få godkendelse.
2. **Anskaf:** køb eller byg, og registrér købet.
3. **Udrul:** sæt i drift, og knyt til brugeren eller servicen.
4. **Drift og vedligehold:** opdatér, supportér, flyt og spor ændringer.
5. **Afvikl og bortskaf:** tag ud af drift, slet data og bortskaf sikkert.

Spørg ved hvert trin, hvem der er ansvarlig, og hvilken registrering der føres.

### Lager, opdagelse og registre

Et aktivregister er kun nyttigt, hvis det er sandt. Artiklen bemærker, at automatiseret opdagelse understøtter at sammenligne lager med rettigheder. Opdagelsesværktøjer scanner netværk og cloudkonti for at finde, hvad der findes, og registeret registrerer, hvad organisationen har til hensigt at eje og betale for. Forskelle mellem de to er fund: ukendte enheder, ubrugte licenser, ikke-godkendte abonnementer.

### Forholdet til ITSM og CMDB

Wikipedia-afsnittet siger, at ITAM integrerer med ITSM, men kortlægger det ikke til ITIL-processer i detaljer. ITIL-beskrivelser skelner typisk mellem aktivstyring, som angår ejerskab, omkostning og kontrakter, og konfigurationsstyring, som angår relationer mellem komponenter. En **konfigurationsstyringsdatabase (CMDB)** er ifølge Wikipedia et ITIL-begreb for en database, der gemmer information om hardware- og softwareaktiver, kaldet konfigurationsitems, og relationerne mellem dem (se Emne 4.4 — Konfigurationsstyring). Aktivregistreringer og konfigurationsregistreringer overlapper; mange organisationer fødererer data, så hver kilde beholder kontrollen over sit eget.

### Standarder

Wikipedia-afsnittet nævner ISO/IEC 19770 som standardfamilien for softwareaktivstyring uden at beskrive dens dele. Artiklen om software asset management opregner delene: 19770-1:2017 om krav til IT-aktivstyringssystemer, et procesrammeværk der kan implementeres i trinvise niveauer; 19770-2:2015 om softwareidentifikationstags; 19770-3:2016 om rettighedsstyring; 19770-4:2017 om måling af ressourceudnyttelse; og 19770-5:2015 om overblik og ordforråd. Tjek standarderne selv for den præcise ordlyd og aktuelle udgaver.

### Fordele og grænser

Wikipedia-afsnittet opregner ingen fordele og ingen kritik, og det nævner ingen værktøjer. Praktiske fordele påstås bredt, som lavere licensomkostning, reduceret sikkerhedsrisiko og bedre support, men denne vejledning har ingen målt evidens for dem i de læste kilder. Behandl påstande om besparelser med forsigtighed, bed dem, der fremsætter dem, om deres evidens, og mål jeres egne.

### ITAM i en agil sammenhæng og en cloudsammenhæng

Praksisser fra tidligere årtier antager, at aktiver købes, leveres og installeres af IT. I dag:

- **Teams opretter ressourcer selv,** i cloudkonsoller eller gennem kode. Registeret må høre om dem fra cloudkontoen, ikke fra en indkøbsordre.
- **Aktiver er kortlivede.** En container kan vare en time. Spor servicen og kontoen, ikke hver instans.
- **Abonnementer erstatter licenser.** Software betales månedligt af nogens kort, og ejerskabet er uklart.
- **Open source-komponenter** kommer ind gennem kode, uden for indkøbssystemet (se Emne 4.2 — Styring af softwareaktiver).

Disse ændringer skubber ITAM mod automatisering, tagging og delt ansvar mellem IT og de teams, der bruger aktiverne.

## God praksis

1. **Start med det, der betyder mest.** Vælg først de aktiver med højest omkostning eller risiko: dyre licenser, internetvendte servere, enheder med følsomme data. Et komplet register kan komme senere.
2. **Definér, hvad et aktiv er til jeres formål.** Skriv en kort liste over de aktivtyper, I vil spore, og de fakta, I har brug for til hver: ejer, placering eller konto, omkostning, kontrakt og status. Undgå felter, ingen vil bruge.
3. **Navngiv en ejer for hvert aktiv.** En person eller et team bør svare for hvert aktiv eller hver gruppe af aktiver. Aktiver uden ejere er der, hvor spild og risiko samler sig.
4. **Brug opdagelse til at finde, hvad der findes.** Scan netværk, cloudkonti og endepunkter, og sammenlign med registeret. Behandl forskellene som punkter, der skal undersøges.
5. **Tag cloudressourcer.** Kræv tags for ejer, service og miljø på ressourcer oprettet i cloudkonti, og rapportér om utaggede. Tags lader registeret følge hurtigtbevægende aktiver.
6. **Forbind indkøb med registeret.** Sørg for, at nye køb, inklusive abonnementer og kortkøb, opretter eller opdaterer en registrering. Gennemgå udgifter for punkter, der ikke gjorde.
7. **Knyt aktiver til services.** Registrér, hvilken service hvert aktiv understøtter. Det lader dig udregne konsekvensen af en hændelse, en ændring eller en afvikling (se Emne 4.4 — Konfigurationsstyring).
8. **Spor den økonomiske side.** Registrér omkostning, kontraktvilkår, fornyelsesdatoer og afskrivning, hvor relevant. At fange økonomisk information over livscyklussen er en nøglekomponent i hardwarestyring, som Wikipedia-afsnittet siger.
9. **Styr slutningen af levetiden.** Planlæg afvikling fra begyndelsen: datasletning, returnering og bortskaffelse. Fjern adgang og licenser samtidig.
10. **Gennemgå jævnligt.** Mindst to gange om året tjek registeret mod virkeligheden for de vigtigste aktivklasser. Ret den proces, der forårsagede enhver forskel.
11. **Del data.** Gør aktivdata tilgængelige for servicedesken, sikkerhed, økonomi og teams, i en form de kan bruge. Data, kun aktivlederen ser, er lidt værd.
12. **Mål praksissen.** Spor, hvor komplet og nøjagtigt registeret er, hvor lang tid det tager at finde et aktiv, og omkostningen ved ubrugte punkter. Brug dem til at forbedre, ikke til at rangere folk.

## Spørgsmål til diskussion i teamet

**Hvis nogen spurgte, hvor mange af hver slags aktiver vi har, hvor sikre ville vi være?**

Bed hver person estimere antallet af bærbare, servere, cloudkonti og abonnementer, og sammenlign derefter med registeret. Forskelle viser, hvor meget der er ukendt. Facilitatoren kan spørge, hvilken kategori folk stoler mindst på. Vælg én, der skal afstemmes først.

**Hvem ejer hvert af vores aktiver, og hvad sker der, når personen rejser?**

Tag en stikprøve af aktiver, og se på ejerfeltet. Tæl dem uden ejer eller med en fratrådt ejer. Spørg, hvilken proces der bør opdatere ejere, når folk flytter. Aftal én udløser, som fratrædelsesprocessen.

**Hvad betaler vi for, som ingen bruger?**

Se på licenser, abonnementer og cloudressourcer, og spørg, hvilke der ikke har haft nylig brug. Vær klar til overraskelser. Spørg, hvem der kan godkende at opsige noget. Vælg de tre største, og tjek hver.

**Hvordan finder vi ud af en ny cloudressource eller et nyt abonnement?**

Følg det seneste. Ofte er svaret "ved regningen" eller "da det gik i stykker". Drøft, hvordan indkøb, tagging og opdagelse kunne fange det før. Aftal én kontrol, som påkrævede tags eller en månedlig rapport over utaggede punkter.

**Hvad sker der med en bærbar eller server ved slutningen af dens levetid?**

Gennemgå trinnene: hvem beslutter, hvordan data fjernes, hvad registreringen siger. Huller dukker ofte op omkring datasletning og registre. Bed om evidens for, at en nylig bortskaffelse blev gjort ordentligt. Planlæg en kort tjekliste.

**Hvilke aktivdata har andre teams brug for, som vi ikke giver dem?**

Spørg servicedesken, sikkerhed og økonomi, hvad de gerne vil se. Typiske ønsker omfatter ejer, service og omkostning. Drøft, hvordan det deles, og hvem der holder det ajour. Vælg én rapport, der skal produceres.

## I praksis: et agilt ITIL-eksempel

Et nationalt statistikbureau har 1.800 ansatte og driver sin undersøgelsesbehandling i en blanding af et datacenter på stedet og en offentlig cloudkonto. Økonomiteamet bemærker, at cloudregningen er vokset med en tredjedel på et år, og en sikkerhedsrevision finder tre servere i datacentret, som ingen kan identificere. ITAM-funktionen er to personer med et regneark.

IT-chefen sætter et beskedent mål: kend de vigtigste aktiver, hvem der ejer dem, og hvad de koster, begyndende med cloud. En ny regel kræver tags for ejer, service og miljø på hver cloudressource. En ugentlig rapport lister utaggede ressourcer, og teams har to uger til at gøre krav på eller fjerne dem. I datacentret kører de to ITAM-medarbejdere en opdagelsesscanning og sammenligner den med regnearket og finder 40 enheder, der ikke er på listen. De finder ejere til de fleste. Indkøb aftaler, at ethvert nyt softwareabonnement rapporteres til ITAM inden for en uge.

Efter et kvartal falder andelen af utaggede cloudressourcer fra omkring en tredjedel til en håndfuld, og økonomi kan henføre cloudregningen til services. Nogle ubrugte ressourcer lukkes ned, og to servere afvikles. Problemer består. En forskningsgruppe køber værktøjer på et afdelingskort og rapporterer dem ikke, og den ugentlige rapport læses kun af nogle få teams. ITAM-medarbejderne taler med forskningsgruppen om en enkel registreringsformular og beder økonomichefen føje abonnementer til den månedlige gennemgang. De beslutter også, at registeret vil dække cloudservices pr. konto og service, ikke hver kortlivet instans.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams opretter mange aktiver. Tag det, I opretter, registrér de abonnementer og biblioteker, I tilføjer, og afvikl det, I ikke længere har brug for. Behandl registeret som en service, I bidrager til og har gavn af.

### Service- og driftsteams

Driftsteams afhænger af registeret til support, opdatering og hændelsesindsats. Hold det nøjagtigt ved at opdatere det ved udrulning, ændring og afvikling. Brug opdagelse til at finde, hvad der mangler, og rapportér forskelle til ejere.

### Ledelse og governance

Ledere og økonomi bruger aktivdata til beslutninger om udgifter, risiko og fornyelser. Bed om nogle få pålidelige tal, som udgift pr. service og andelen af aktiver med ejere, i stedet for et perfekt register. Støt de små kontroller, som tags og indkøbsrapportering, der holder det sandt.

### Kunder og brugere

Brugere har gavn, når deres udstyr og adgang styres godt: fungerende enheder, hurtige udskiftninger og ingen overraskende gebyrer. Fortæl servicedesken om udstyr, du tilføjer eller ikke længere har brug for, og forvent at blive bedt om at bekræfte, hvad du har.

## Almindelige fejlmønstre

- **Et register, ingen stoler på.** Det er forældet og ignoreret. I stedet: indsnævr omfanget, brug opdagelse, og opdatér ved hver livscyklushændelse.
- **Ingen ejere.** Aktiver tilhører ingen. I stedet: kræv en ejer for hvert aktiv eller hver gruppe.
- **At spore alt.** Indsatsen begraver værdien. I stedet: start med det, der er dyrt eller risikabelt, og vokse.
- **At ignorere cloud og abonnementer.** Registeret dækker kun købt hardware. I stedet: tag cloudressourcer, og fang abonnementer.
- **Indkøb uden for processen.** Kortkøb omgår registeret. I stedet: forbind indkøb og udgiftsrapporter med ITAM.
- **Ingen proces for levetidens slutning.** Gamle enheder beholder data og adgang. I stedet: planlæg afvikling, sletning og bortskaffelse.
- **Data holdt fra andre.** Kun ITAM ser registeret. I stedet: del det med servicedesken, sikkerhed og økonomi.
- **At tælle uden at handle.** Rapporter viser ubrugte aktiver, og intet opsiges. I stedet: tildel ejere til at handle på fund.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Lager og opdagelse | Aktiver listes i regneark eller slet ikke | Nogle aktivklasser er inventeret | Opdagelse og et register dækker de vigtigste aktivklasser og afstemmes jævnligt | Fuldstændighed og nøjagtighed måles, og huller rettes | Lager spænder over lokal drift, cloud og leverandører med delte data |
| Ejerskab og ansvarlighed | Få aktiver har ejere | Ejere er navngivet for nogle aktiver | Hvert aktiv eller hver gruppe har en ejer, holdt ajour af en proces | Ejerskabshuller spores og løses | Ejere på tværs af teams og leverandører arbejder efter fælles regler |
| Livscyklus og økonomisk kontrol | Køb og bortskaffelse er uformelle | Nogle aktiver har omkostnings- og kontraktdata | Livscyklustrin og økonomiske data registreres for hovedaktiver | Omkostning, fornyelser og udnyttelse gennemgås og handles på | Økonomiske data og livscyklusdata knyttes til services og deles med økonomi |
| Brug af data | Data bruges af få | Servicedesken bruger nogle gange registeret | Desk, sikkerhed og økonomi bruger rutinemæssigt aktivdata | Datakvalitet og brug måles og forbedres | Data fodrer beslutninger i hele organisationen og med partnere |

## Tjekliste

- [ ] Vi har en kort liste over aktivtyper og de fakta, vi registrerer for hver.
- [ ] Hvert sporet aktiv eller hver gruppe har en navngiven ejer.
- [ ] Opdagelsesresultater sammenlignes med registeret efter en jævn plan.
- [ ] Cloudressourcer bærer tags for ejer, service og miljø, og utaggede rapporteres.
- [ ] Nye køb, inklusive abonnementer, opretter eller opdaterer en registrering.
- [ ] Aktiver er knyttet til de services, de understøtter.
- [ ] Omkostning, kontrakt og fornyelsesdata registreres for hovedaktiverne.
- [ ] Afvikling omfatter datafjernelse, adgangsfjernelse og en registrering.
- [ ] Registeret afstemmes med virkeligheden mindst to gange om året for hovedaktivklasserne.
- [ ] Servicedesken, sikkerhed og økonomi kan se de data, de har brug for.

## AI-prompts

**Formål: at afstemme opdagelsesresultater med registeret.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Formål: at udarbejde en kort tagging-standard til cloudressourcer.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en afviklingstjekliste for en enhed eller server.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at finde kandidater til besparelser ud fra brugsdata.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## AI-skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): brug den til at planlægge, hvordan aktiver og deres relationer registreres og holdes sande.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den til at styre kontrakter og fornyelser, der ligger bag aktiver.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): brug den til at prognosticere omkostningen ved aktiver og abonnementer.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre det klart, hvem der ejer, supporterer og godkender hver aktivklasse.
- [data-governance](../../../../skills/data-governance/SKILL.md): brug den til at afgøre, hvem der ejer data på aktiver, og hvordan de afvikles.

## Vigtigste kilder

- **IT asset management** (Wikipedia, i øjeblikket i artiklen om datacenterstyring): en kort definition og en beskrivelse af hardwareaktivstyring.
- **Software asset management** (Wikipedia): definitionen, mål, teknologier og ISO/IEC 19770-delene.
- **Configuration management database** (Wikipedia): ITIL-begrebet for lageret af konfigurationsitems og relationer.
- **ITIL** (Wikipedia): rammeværket, der behandler ITAM ved siden af servicestyring.

## Referencer

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
