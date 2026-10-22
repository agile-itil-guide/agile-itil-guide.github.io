# Styring af hardwareaktiver

**Styring af hardwareaktiver følger fysisk udstyr fra køb til bortskaffelse, og dens stille risici er enheden, ingen kender til, enheden der beholdes for længe, og enheden der forlader virksomheden med data stadig på.**

## Hvorfor det betyder noget

Hardware betyder stadig noget i en cloud-først-verden. Folk arbejder på bærbare, telefoner og tablets. Netværk kører på switche og adgangspunkter. Mange organisationer beholder servere, lagring og specialudstyr på stedet. Når en bærbar går tabt, en server er ude af garanti, eller en gruppe enheder skal udskiftes, er spørgsmålene de samme: hvad har vi, hvor er det, hvem har det, hvad er det værd, og hvad rummer det?

Dårlig hardwarestyring viser sig på velkendte måder. Personale venter på udstyr, fordi ingen ved, hvad der er på lageret. Gamle enheder bliver i drift, fordi ingen har data til at begrunde udskiftning, og svigter så på et uheldigt tidspunkt. Enheder smides ud med data stadig på. Garantikrav overses. For et agilt team er virkningen langsommere onboarding, mislykkede releases på ikke-vedligeholdt testhardware og sikkerhedseksponeringer, ingen pipeline kan se.

[Wikipedia-afsnittet om IT asset management](https://en.wikipedia.org/wiki/IT_asset_management), der ligger inde i artiklen om datacenterstyring, beskriver hardwareaktivstyring som dækkende fysiske computer- og netværkskomponenter fra anskaffelse til bortskaffelse, med praksisserne anmodning og godkendelse, indkøb, livscyklusstyring, omplacering og bortskaffelse, og siger, at det er en nøglekomponent at fange økonomisk information over livscyklussen. Det er kort. Dette emne tilføjer artiklerne om elektronisk affald og datasletning til bortskaffelse samt praktisk vejledning hentet fra almindelig praksis, og siger det, når det gør det.

## Kernebegreber

### Omfang

Hardwareaktiver omfatter slutbrugerenheder (bærbare, stationære, telefoner, tablets), servere og lagring, netværksudstyr, perifert udstyr og specialiseret eller operationel teknologi. De omfatter også det tilbehør, der gør dem brugbare. For hver vil organisationen kende det grundlæggende: hvad det er, hvem der er ansvarlig for det, hvor det er, hvad det kostede, og hvilken tilstand det er i.

### Hardwarens livscyklus

Wikipedia-afsnittet opregner anmodning og godkendelse, indkøb, livscyklusstyring, omplacering og bortskaffelse. En praktisk udvidelse, udbredt og tilbudt her som sådan:

| Trin | Spørgsmål at besvare | Typiske registreringer |
|---|---|---|
| **Anmodning og godkendelse** | Hvad er der brug for, og hvem godkender? | Anmodning, godkendelse, budgetkode |
| **Indkøb** | Hvad købte vi, fra hvem, på hvilke vilkår? | Ordre, faktura, garanti, leverandør |
| **Modtag og klargør** | Ankom det? Er det konfigureret og tagget? | Serienummer, aktivtag, konfiguration |
| **Tildel og drift** | Hvem har det? Hvad bruges det til? | Ejer eller bruger, placering, understøttet service |
| **Vedligehold** | Hvad er dets tilstand, garanti og opdateringsstatus? | Reparationer, garantislut, firmwarestatus |
| **Omplacér** | Kan en anden bruge det? | Sletning, omtildelingsregistrering |
| **Afvikl og bortskaf** | Er data fjernet? Hvor blev det af? | Sletningsevidens, bortskaffelsesregistrering |

### Økonomisk information

Wikipedia-afsnittet understreger at fange økonomisk information om hardwarens livscyklus. Nyttige fakta omfatter købspris, afskrivning, garanti- og supportomkostning og omkostningen ved at holde det kørende. De fodrer udskiftningsbeslutninger og budgetter (se Emne 4.5 — IT-økonomistyring og FinOps). En enhed, der koster mere at supportere end at erstatte, er en kandidat til afvikling.

### Udskiftning og fornyelse

Organisationer udskifter almindeligvis udstyr efter en cyklus, som hvert par år for bærbare. De kilder, der er læst til denne vejledning, angiver ingen anbefalede perioder, og det rette interval afhænger af udstyret, arbejdet og prisen for svigt. En databaseret tilgang ser på fejlrater, supportomkostning, sikkerhedssupport og ydeevne og udskifter, når evidensen siger det. En fast cyklus er lettere at planlægge, og en evidensbaseret kan spare penge eller undgå svigt.

### Datasikkerhed ved levetidens slutning

Bortskaffelse er der, hvor hardwarestyring møder informationssikkerhed (se Emne 3.13 — Styring af informationssikkerhed). Wikipedia-artiklen om datasletning beskriver datasletning som en softwaremetode, der overskriver hver sektor på et drev, så de lagrede data ikke kan genskabes; almindelig filsletning fjerner kun pegepinde, og almindelige værktøjer kan ofte genskabe dataene. Nøglepunkter fra artiklen:

- **Overskrivning** efterlader drevet brugbart. **Afmagnetisering** og **fysisk destruktion** gør mediet ubrugeligt og tilføjer til elektronisk affald.
- **Solid-state-drev og flashmedier** kan bevare restdata, som sletning overser. Artiklen henviser til en undersøgelse fra 2011, der fandt, at indbyggede sanitize-kommandoer virker, når de er implementeret korrekt, mens softwareteknikker virker det meste af tiden, men ikke altid.
- **Kryptering** tilbyder en anden vej: at ødelægge nøglerne til et selvkrypterende drev gør dets data utilgængelige.
- **Verifikation og certifikater:** god software bør verificere, at overskrivningen nåede hele enheden, inklusive skjulte områder, og udstede et valideringscertifikat og en log over sektorer, der ikke kunne overskrives.
- **Standarder:** artiklen opregner mange, inklusive NIST Special Publication 800-88 (2006, revideret i 2014), som den citerer for at sige, at et enkelt overskrivningspas med et fast mønster som binære nuller typisk hindrer genskabelse. Den siger, at et enkelt pas generelt er tilstrækkeligt for moderne harddiske.

Artiklen er mærket som i behov af henvisninger, og nogle påstande er markeret. Tjek de standarder, jeres sektor eller land kræver, og det aktuelle state of the art for jeres udstyr; stol ikke på en Wikipedia-opsummering til en complianceafgørelse.

### Elektronisk affald

Wikipedia-artiklen om elektronisk affald definerer det som kasserede elektriske eller elektroniske enheder, inklusive ting bestemt til genbrug, videresalg, redning, genanvendelse eller bortskaffelse. Den rapporterer omkring 62 millioner ton genereret globalt i 2022, op 82 procent fra 2010, hvor kun 22,3 procent formelt blev indsamlet og genanvendt ifølge en undersøgelse fra 2024; den henviser også til andre tal, der modsiger, og bærer vedligeholdelsesmærker for ubekræftede påstande, så tjek tal mod primære kilder, før du citerer dem. Den beskriver farer fra materialer som bly, cadmium, kviksølv og flammehæmmere og fra uformel behandling, med eksempler fra Guiyu i Kina og Agbogbloshie i Ghana. Den bemærker, at Basel-konventionen, vedtaget i marts 1989, regulerer grænseoverskridende transport af farligt affald, og at certificerede genanvendere under ordninger som R2 og E-Stewards skal ødelægge alle data lagret på elektronik. Genbrug forlænger enheders levetid og udsætter genanvendelse.

For en organisation er lærestregerne praktiske: vælg bortskaffelsespartnere, der er certificerede og kan vise, hvor enheder ender, foretræk genbrug, hvor det er sikkert, og før registre. Love om elektronisk affald varierer efter land og region; spørg jeres complianceafdeling, hvilke der gælder.

### Hardware og servicestyring

Hardwareregistreringer linker til services: denne switch bærer den service, denne server hoster den applikation. Disse forbindelser gør et aktivregister til et værktøj til hændelsesindsats, ændringsplanlægning og risikovurdering (se Emne 4.4 — Konfigurationsstyring). Uden dem er en svigtet enhed en ticket; med dem er den en konsekvensopgørelse.

### Agil og hardware

Agile teams behandler hardware som en begrænsning at designe omkring, ikke hovedbegivenheden. Cloud og virtualisering reducerer det fysiske estate, men ikke til nul. Testenheder til mobilapps, buildagenter, laboratorieudstyr og edge-enheder skal alle spores. Behandl dem som aktiver med ejere og livscyklusser, og lad dem ikke ligge i et skab.

## God praksis

1. **Tag og registrér hver enhed, der betyder noget.** Tildel et unikt aktivtag eller serieregistrering ved modtagelse, og registrér type, ejer, placering og status. Gør det til det første skridt efter levering.
2. **Knyt enheder til folk og services.** Registrér, hvem der har hver enhed, og hvilken service den understøtter, og opdatér ved flytninger og ændringer. Brug fratrædelsesprocessen til at hente udstyr tilbage og fjerne adgang.
3. **Hold økonomiske data sammen med aktivet.** Registrér omkostning, garanti, supportvilkår og afskrivning. Brug dem til at sammenligne reparation, support og udskiftning.
4. **Brug opdagelse til at finde det ukendte.** Sammenlign registeret med netværks- og endepunktsopdagelse, og undersøg ukendte enheder hurtigt (se Emne 4.1 — Styring af IT-aktiver).
5. **Overvåg tilstand og supportstatus.** Spor garantislutdatoer, firmware- og sikkerhedssupportstatus og fejlhistorik. Planlæg udskiftning, før enheder svigter eller mister support.
6. **Udskift efter evidens.** Se på fejl- og supportdata, ydeevne og sikkerhedssupport for at afgøre udskiftning, og ikke kun alder. Gennemgå politikken en gang om året.
7. **Klargør enheder konsekvent.** Brug en standardbuild og automatiseret enrolment, så nye enheder ankommer klare, med sikkerhedskontroller på plads.
8. **Omplacér, hvor det er sikkert.** Slet og omtildel enheder, der stadig opfylder behov, med en registrering af sletningen. Undgå lagre af ubrugt udstyr.
9. **Slet data ordentligt, og behold evidens.** Brug en metode, der passer til enhedstypen og dataenes følsomhed, verificér den, og behold et certifikat eller en log. For flashlagring brug enhedsunderstøttede sanitize-kommandoer eller nøgledestruktion efter behov (se noterne om datasletning ovenfor).
10. **Vælg bortskaffelsespartnere omhyggeligt.** Foretræk certificerede genanvendere, spørg hvor enheder og materialer ender, og før registre. Medtag vilkår for datadestruktion i kontrakten.
11. **Planlæg for tabte og stjålne enheder.** Hav en hurtig måde at rapportere på, en fjernlås eller -sletning, hvor det er tilgængeligt, og en regel for, hvornår et tab behandles som en sikkerhedshændelse (se Emne 3.2 — Hændelseshåndtering).
12. **Gennemgå jævnligt.** Mindst to gange om året tjek en stikprøve af registeret mod fysisk virkelighed for hovedenhedsklasserne, og ret den proces, der ligger bag ethvert hul.

## Spørgsmål til diskussion i teamet

**Hvis vi talte hver enhed, vi ejer i dag, ville vi matche registeret?**

Vælg en etage, et team eller et lager, og lav en hurtig optælling mod registeret. Forskellene er lærestregen. Spørg, hvilke uoverensstemmelser der betyder mest: enheder med data på, enheder der ikke er opdateret. Facilitatoren kan spørge, hvad der forhindrer folk i at opdatere registeret i ændringens øjeblik. Vælg én proces, der skal strammes.

**Hvad gør vi med en bærbar, når nogen rejser?**

Gennemgå trinnene: hvem henter den, hvor går den hen, hvem sletter den, hvem opdaterer registreringen. Huller dukker ofte op mellem teams. Bed om det seneste eksempel, og følg det. Aftal én ejer og en tjekliste.

**Hvordan afgør vi, hvornår udstyr skal udskiftes?**

Bed om den nuværende regel og dens kilde. Ofte er det en fast alder, nogen satte for længe siden. Drøft, hvilke data I har om fejl, supportomkostning og sikkerhedssupport. Sammenlign med omkostningen ved at udskifte tidligt eller sent. Aftal, hvilke data der skal indsamles.

**Hvordan ville vi bevise, at data på en enhed, vi bortskaffede, blev ødelagt?**

Tag en nylig bortskaffelse, og spørg, hvilken evidens der findes. Hvis svaret er "genanvenderen sagde det", så drøft, hvad et certifikat eller en log bør indeholde. Spørg, hvilken metode der blev brugt til solid-state-lagring. Aftal en minimumsstandard og evidens.

**Hvilke af vores enheder er ude af garanti eller ude af sikkerhedssupport, og hvad afhænger af dem?**

List enheder nær slutningen af support. Spørg, hvad hver understøtter. Ikke-understøttede enheder bag vigtige services er risici. Planlæg udskiftning i rækkefølge efter konsekvens, og afgør, hvor der er brug for kompenserende foranstaltninger.

**Hvem håndterer en tabt eller stjålet enhed, og hvor hurtigt?**

Spørg, hvordan en bruger rapporterer et tab, og hvad der sker derefter. Tjek, om fjernlås eller -sletning er tilgængelig, og om nogen har prøvet det. Drøft, hvornår et tab bliver en sikkerhedshændelse. Aftal et klart første skridt for brugerne.

## I praksis: et agilt ITIL-eksempel

En provinsiel sundhedsmyndighed leverer omkring 4.000 bærbare og tablets til lokale sygeplejersker, der besøger patienter i hjemmet. Enheder går ofte tabt eller bliver beskadiget. Myndighedens registre viser 4.300 enheder, men servicedesken tror, den styrer færre. En sikkerhedsgennemgang finder, at en række bærbare, opført som afviklede, er set i brug, og at et lager af gamle enheder i et skab stadig indeholder patientdata.

Chefen for slutbrugerservices sætter et lille program i gang. Hver enhed får et unikt tag og en registrering knyttet til en navngiven sygeplejerske og et team. Et opdagelsesværktøj sammenligner registeret med enheder, der forbinder til netværket, og en månedlig liste over umatchede enheder går til teamledere, som har to uger til at forklare eller returnere dem. Enheder enrolleres automatisk med kryptering slået til og standardsoftware, så en tabt bærbar afslører lidt. En fratrædelsestjekliste tilføjer returnering af enhed som et trin, lederen godkender. Til afvikling indgår myndigheden kontrakt med en certificeret genanvender, som sletter drev, ødelægger dem der ikke kan slettes, og leverer et certifikat for hver batch. Skabet tømmes, og dets indhold slettes og registreres.

Inden for seks måneder matcher registeret og opdagelsen inden for en lille margin, og en tabt bærbar fjernlåses inden for timen i de fleste tilfælde. Nogle problemer består. Sygeplejersker deler nogle gange enheder i travle vagter, så ejerfeltet er forkert, og genanvenderens certifikater opregner batches, men ikke enkelte enheder, hvilket revisoren spørger til. Chefen for slutbrugerservices indfører en registrering af delte enheder med daglig udlevering og beder genanvenderen medtage serienumre på certifikaterne. Hun beslutter også at gennemgå udskiftningspolitikken ud fra fejldata fra det første år i stedet for at beholde en fast alder.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams rummer testenheder, byggeservere og laboratorieudstyr. Registrér dem, giv dem ejere, og afvikl dem ordentligt. Fortæl aktivstyringen, når I har brug for enheder, så forsyningen matcher projekterne.

### Service- og driftsteams

Driften og servicedesken kører det meste af livscyklussen: byg, udrul, supportér og afvikl. Hold registre ajour ved hvert trin, brug opdagelse til at fange huller, og behold bortskaffelsesevidens. Del tilstands- og fejldata med dem, der planlægger udskiftning.

### Ledelse og governance

Ledere afgør udskiftningsbudgetter og risikovillighed. Bed om antallet af enheder ude af support, processen for tabte enheder og evidensen for datadestruktion. Støt evidensbaseret fornyelse og de små kontroller, som tags og tjeklister, der holder registre sande.

### Kunder og brugere

Brugere har udstyret i hænderne dag til dag. Pas på det, rapportér tab eller skade hurtigt, og returnér udstyr, når du rejser. Fortæl desken, hvis du deler en enhed eller flytter til en anden placering, så registre er rigtige.

## Almindelige fejlmønstre

- **Utaggedt udstyr.** Enheder kan ikke skelnes. I stedet: tag og registrér ved modtagelse.
- **Forældede registre.** Flytninger og fratrædelser fanges ikke. I stedet: knyt opdateringer til begivenheder som tiltrædelses-, flytnings- og fratrædelsesprocesser.
- **Fornyelse efter fast alder uden data.** Enheder udskiftes for tidligt eller for sent. I stedet: gennemgå fejl-, omkostnings- og supportdata.
- **Svag bortskaffelse.** Data bliver på bortskaffede enheder. I stedet: slet og verificér med en metode, der passer til mediet, behold evidens, og brug en certificeret partner.
- **At ignorere flashlagring.** Overskrivning antages at virke. I stedet: brug sanitize-kommandoer eller nøgledestruktion, og verificér.
- **Lagre.** Ubrugte enheder hober sig op. I stedet: omplacér eller afvikl efter en plan.
- **Ingen kobling til services.** En svigtet enhed er kun en ticket. I stedet: registrér den service, hver enhed understøtter.
- **Ikke-certificeret genanvendelse.** Udstyr ender, hvor ingen ved. I stedet: vælg certificerede partnere, og spørg hvor materialer ender.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Lager og sporing | Enheder er kendt uformelt | Et register dækker hovedenheder | Hver enhed er tagget og registreret, afstemt med opdagelse | Nøjagtighed og huller måles og rettes | Lager dækker ejede, leasede og partnerenheder med delte data |
| Livscyklus og fornyelse | Udskiftning sker ved svigt | Nogle enheder følger en fornyelsesplan | Livscyklustrin og en fornyelsespolitik er defineret | Fejl- og omkostningsdata driver udskiftningsbeslutninger | Fornyelse planlægges i hele organisationen med leverandører og økonomi |
| Bortskaffelse og databeskyttelse | Bortskaffelse er ad hoc | Nogle enheder slettes | En standard sletningsmetode og certificeret bortskaffelse med evidens | Bortskaffelsesevidens revideres og huller lukkes | Bortskaffelse koordineres med partnere og genbrugsprogrammer |
| Kobling til service og økonomi | Enheder er ikke knyttet til services eller omkostninger | Nogle omkostningsdata føres | Enheder er knyttet til ejere, services og omkostninger | Omkostnings- og supportdata gennemgås og bruges i budgetter | Aktivdata deles løbende med økonomi, sikkerhed og leverandører |

## Tjekliste

- [ ] Hver enhed, vi sporer, har et unikt tag eller en serieregistrering og en navngiven ejer eller bruger.
- [ ] Enheder er knyttet til den service, de understøtter.
- [ ] Opdagelse sammenlignes med registeret mindst månedligt for hovedenhedstyper.
- [ ] Garanti- og supportslutdatoer registreres og gennemgås.
- [ ] Vores udskiftningspolitik er baseret på data og gennemgås årligt.
- [ ] Fratrædelses- og flytningsprocesser henter eller omtildeler enheder.
- [ ] Datasletning bruger en metode, der passer til mediet, med verifikation og en registrering.
- [ ] Bortskaffelsespartnere er certificerede og giver evidens pr. enhed eller batch.
- [ ] Tabte og stjålne enheder kan rapporteres hurtigt og fjernlåses eller -slettes, hvor det er tilgængeligt.
- [ ] En stikprøve af registeret tjekkes mod fysisk virkelighed to gange om året.

## AI-prompts

**Formål: at afstemme en fysisk optælling med registeret.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Formål: at forberede en databaseret udskiftningsgennemgang.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Formål: at skrive en bortskaffelsestjekliste med evidenskrav.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en respons på en tabt enhed.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): brug den til at knytte enheder til de services, de understøtter.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): brug den til at planlægge, hvor meget udstyr der er brug for, og hvornår.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): brug den til at prognosticere fornyelses- og supportomkostninger.
- [data-governance](../../../../skills/data-governance/SKILL.md): brug den til at afgøre, hvem der ejer dataene på enheder, og hvordan de beskyttes ved afvikling.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den til at udvælge og gennemgå hardwareleverandører og bortskaffelsespartnere.

## Vigtigste kilder

- **IT asset management** (Wikipedia): definitionen og en beskrivelse af hardwareaktivstyring, i artiklen om datacenterstyring.
- **Data erasure** (Wikipedia): metoder, standarder, verifikation og det særlige tilfælde solid-state-lagring.
- **Electronic waste** (Wikipedia): omfang, farer, genanvendelse og Basel-konventionen, med forbehold om modstridende tal.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): den primære vejledning, som Wikipedia-artiklen citerer; læs den aktuelle revision, før I sætter en standard.

## Referencer

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
