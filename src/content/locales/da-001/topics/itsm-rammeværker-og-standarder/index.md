# ITSM-rammeværker og standarder

**IT-servicestyring har mange rammeværker og standarder, der overlapper, og den nyttige færdighed er at vide, hvad hver er til for: vejledning at lære af, en standard man kan certificeres mod, eller en governance-model, der fortæller, hvad man skal kontrollere.**

## Hvorfor det betyder noget

Spørg fem personer, hvad "vi følger ITSM best practice" betyder, og du får måske fem svar: ITIL, ISO/IEC 20000, COBIT, FitSM eller "hvad end leverandørens værktøj gør". Begreberne bruges løst, og forskellene betyder noget. En kunde, der beder om ISO/IEC 20000-certificering, kan ikke tilfredsstilles med ITIL-uddannelse. En revisor, der spørger til COBIT-kontroller, hjælpes ikke af et procesdiagram for servicedesken.

For agile teams er spørgsmålet praktisk: hvilke af disse skal vi forholde os til, og hvilke kan vi behandle som en kilde til ideer? Mange teams bliver overraskede over at høre, at ITIL, det bedst kendte, er vejledning, som enkeltpersoner kan certificeres i, og ikke en standard for organisationer. Andre bliver overraskede over, at den vigtigste ITSM-standard for nylig har tilføjet vejledning om agile og DevOps arbejdsmåder.

Dette emne sammenligner de vigtigste rammeværker og standarder med afsæt i [Wikipedia-artiklerne om IT service management](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) og [FitSM](https://en.wikipedia.org/wiki/FitSM). Disse artikler varierer i kvalitet, og flere bærer vedligeholdelsesmærker. Hvor de er svage, siger dette emne det. Tjek ejernes egne publikationer, før du stoler på nogen detalje til en kontrakt eller en revision.

## Kernebegreber

### Tre slags ting

Navnene i dette emne falder i tre grupper. At holde dem adskilt undgår mange forvirrede samtaler.

| Slags | Hvad det giver dig | Eksempler nævnt i Wikipedia-artiklen om ITSM |
|---|---|---|
| **Vejledning (et rammeværk eller bibliotek)** | Ideer og beskrevne praksisser, der skal tilpasses | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **En certificerbar standard** | Krav, en organisation kan auditeres og certificeres mod | ISO/IEC 20000 |
| **En governance- eller kapabilitetsmodel** | En måde at lede, kontrollere eller vurdere IT på | COBIT, CMMI, TOGAF |

FitSM sidder mellem de to første, som beskrevet nedenfor.

### ITIL

ITIL er vejledning om ITSM og IT-aktivstyring. Certificering er for enkeltpersoner, og der findes ingen uafhængig vurdering af en organisations ITIL-compliance (se Emne 2.2 — ITIL). Det er den mest udbredte kilde til ordforråd.

### ISO/IEC 20000

ISO/IEC 20000 er en international standard for IT-servicestyring. Ifølge Wikipedia stiller del 1 krav til et servicestyringssystem, der dækker planlægning, levering og forbedring af services. Den blev udviklet ud fra BS 15000, skabt af BSI Group, og blev først udgivet i december 2005. Opdateringer fulgte: del 1 i juni 2011 og en anden revision, ISO/IEC 20000-1:2018, udgivet den 15. juli 2018, hvorefter certificerede organisationer fik en treårig overgangsperiode. Udgaven fra 2018 har ti klausuler, der følger ISO's højniveaustruktur.

Standarden har mange dele. Artiklen opregner blandt andet: vejledning i at anvende et servicestyringssystem (del 2); vejledning om omfang og anvendelighed (del 3); implementeringsvejledning (del 5); krav til certificeringsorganer (del 6); begreber og ordforråd (del 10); og en teknisk specifikation om forholdet til ITIL 4 (del 11). Den opregner også nyligt udgivne dele, fra 2023 til 2025, med vejledning om serviceintegration og -styring (SIAM), agile og DevOps samt bæredygtighed. Wikipedia siger ikke, hvilket delnummer der dækker hvilket emne, så tjek ISO-kataloget, før du citerer et.

Organisationer kan certificeres, og enkeltpersoner kan erhverve kvalifikationer fra organer som APMG-International, EXIN og PECB. Artiklen rapporterer, at ISO-undersøgelsen for 2024 talte 27.332 certifikater, hvoraf 24.056 var i Kina. Det viser, hvor ujævnt certificering er fordelt mellem lande, så antag ikke, at en kunde andre steder vil bede om det.

Wikipedia siger, at standarden oprindeligt blev udviklet til at afspejle ITIL best practice, men markerer den påstand "citation needed". Behandl forholdet som tæt, men ikke identisk. Artiklen siger også, at standarden understøtter andre rammeværker som Microsoft Operations Framework og dele af COBIT.

### COBIT

COBIT er ifølge Wikipedia et rammeværk skabt af ISACA til IT-ledelse og -governance. Det forbinder forretningsmål med IT-mål og definerer ansvar for forretnings- og IT-teams. Artiklen beskriver fem procesområder: Evaluate, Direct and Monitor; Align, Plan and Organize; Build, Acquire and Implement; Deliver, Service and Support; og Monitor, Evaluate and Assess. Den giver disse datoer: først udgivet i 1996, version 5 i 2012, og siger, at ISACA tilbyder certificering i COBIT 2019 og COBIT 5. Artiklen knytter COBIT til ITIL, ISO 27000, CMMI, TOGAF og Project Management Institutes PMBOK Guide.

Artiklen bærer selv vedligeholdelsesmærker om primære kilder og manglende henvisninger, og én påstand, at rammeværket hjælper virksomheder med at følge loven og være mere agile, hviler på en enkelt kilde. Brug COBITs egne publikationer som autoritet.

### FitSM

FitSM er en familie af lette standarder. Wikipedia siger, at den voksede ud af FedSM, et EU-finansieret projekt for at forbedre servicestyring i fødererede e-infrastrukturer, og at reviderede leverancer blev udgivet under navnet FitSM fra maj 2013. FitSM-1 rummer omkring 85 reviderbare krav, der dækker generelle krav og 14 processer, og er meget kortere end ISO/IEC 20000 del 1, selv om den ligner den i omfang og stil. Alle dele udgives under Creative Commons-licenser. Organisationer kan ikke certificeres som FitSM-konforme, selv om konformitet kan auditeres, og en certificeringsordning for personale begyndte i 2013.

FitSM er nyttig for små teams, der vil have et kort kravsæt. Artiklen angiver ikke den nuværende version eller status for dens vedligeholdende gruppe, så verificér det, før du stoler på den.

### Andre navne

ITSM-artiklen opregner også følgende. Denne vejledning dækker dem ikke nærmere.

- **CMMI:** en model til at etablere, styre og forbedre services og processer.
- **TOGAF:** et rammeværk, der forbinder forretningsmål med arkitekturmål.
- **Microsoft Operations Framework:** servicestyringsvejledning baseret på Microsoft-teknologier.
- **Application Services Library og Business Information Services Library:** rammeværker til applikationsstyring og til informationsstyring.
- **USM:** et principbaseret system adopteret af den hollandske regering.

Artiklen tilføjer, at ITSM-rammeværker har trukket på ISO 9000, ISO/IEC 27000 og CMMI. Sikkerhedsstyring har sin egen familie af standarder (se Emne 3.13 — Styring af informationssikkerhed).

### Agile og DevOps i standarderne

ISO/IEC 20000-artiklen opregner en nylig del af standarden med vejledning om agile og DevOps. Det er bemærkelsesværdigt, fordi det viser, at standardiseringsorganet behandler agile arbejdsmåder som noget, et servicestyringssystem må kunne rumme. Artiklen giver ingen detaljer om dens indhold, så læs selve standarden, hvis du har brug for det. Imens beskriver ITIL 4 sig selv som afstemt med agile, DevOps og lean (se Emne 2.2 — ITIL), og Wikipedia-artiklen om ITSM nævner slet ikke agile. Kilder adskiller sig i, hvor meget de har indhentet.

### Valg

Der er intet enkelt rigtigt rammeværk. En fornuftig måde at vælge på er at spørge, hvad du har brug for:

| Hvis du har brug for… | Overvej… |
|---|---|
| Et fælles ordforråd og ideer til praksisser | ITIL |
| Certificering af dit servicestyringssystem til kunder eller udbud | ISO/IEC 20000 |
| Et kort, reviderbart kravsæt til et lille team | FitSM |
| Governance og kontrol af IT i virksomheden, knyttet til forretningsmål | COBIT |
| Vurdering af procesmodenhed | CMMI |

Denne tabel er vejledningens opsummering, ikke en anbefaling fra nogen rammeværksejer.

## God praksis

1. **Start med det spørgsmål, du skal besvare.** Skriv ned, hvad du har brug for: ordforråd, certificering, kontrol eller vurdering. Vælg det rammeværk, der besvarer det, og ikke det med den bedste markedsføring.
2. **Lær forskellen mellem vejledning og standarder.** Lær teamet, at ITIL-certificering er for enkeltpersoner, ISO/IEC 20000-certificering er for organisationer, og COBIT er en governance-model. Mange forvirringer om kontrakter og revisioner starter her.
3. **Find ud af, hvad kunder og tilsynsmyndigheder faktisk kræver.** Bed om den præcise klausul eller det præcise krav. Ofte er anmodningen om et "anerkendt rammeværk", og en kort, ærlig beskrivelse af jeres praksis er nok.
4. **Brug standardens tekst, ikke opsummeringer, til compliance.** Når I påstår konformitet, så arbejd ud fra ISO-standarden eller rammeværksejerens publikation. Opsummeringer, inklusive denne, er kun til orientering.
5. **Kortlæg jeres praksis én gang, ikke fire.** Hvis I skal opfylde mere end ét rammeværk, så byg én beskrivelse af jeres praksis og kortlæg den til hvert, i stedet for at skrive separate dokumenter.
6. **Hold systemet så lille som muligt.** ISO/IEC 20000 beder om et servicestyringssystem og registre. Opfyld hvert krav med den letteste tilgang, der virker, og automatisér evidens fra jeres værktøjer.
7. **Vær opmærksom på omfang.** Et certifikat dækker et angivet omfang. Vælg et omfang, der afspejler reelle services og teams, og udelad ikke de dele, der gør certifikatet svært.
8. **Tjek vejledningen om agile og DevOps i de standarder, I bruger.** Hvor en standard har vejledning om agile og DevOps, så læs den, før I diskuterer med en revisor om, hvordan et agilt team kan opfylde et krav.
9. **Overvej lettere muligheder for små teams.** FitSM eller en delmængde af ITIL kan passe et lille team bedre end et fuldt certificeret system. Notér, hvad I opgiver, som ekstern certificering.
10. **Hold sikkerhed og servicestyring afstemt.** Hvis I bruger ISO/IEC 27001 til informationssikkerhed, så del registre og gennemgange med jeres servicestyringssystem for at undgå dobbeltarbejde (se Emne 3.13 — Styring af informationssikkerhed).
11. **Dokumentér jeres tilpasning.** Registrér, hvilke dele af et rammeværk I bruger, hvilke I ikke bruger, og hvorfor. Det beskytter jer i revisioner og hjælper nyt personale.
12. **Gennemgå årligt.** Standarder og rammeværker ændrer sig. Udpeg en til at følge opdateringer og rapportere, hvad der betyder noget for jeres team (se Emne 6.4 — Læringsstier og certificering).

## Spørgsmål til diskussion i teamet

**Hvilke af disse rammeværker eller standarder er vi forpligtet til at bruge, og hvilke bruger vi af vane?**

List, hvad kunder, kontrakter, tilsynsmyndigheder og ledere faktisk kræver, med det dokument, der siger det. List derefter, hvad teamet bruger uden et krav. De to lister adskiller sig ofte mere end forventet. Facilitatoren kan spørge, hvem der først indførte hver, og hvorfor. Følg op ved at finde den præcise ordlyd af ethvert krav, der driver arbejde.

**Hvis en kunde spurgte, om vi er "ITIL-certificerede", hvad ville vi svare?**

Øv et ærligt svar: enkeltpersoner kan certificeres, organisationer kan ikke, og her er, hvad vi gør. Sammenlign svarene. Nogle vil overdrive. Drøft, hvad kunden sandsynligvis har brug for, og hvilken evidens der kunne opfylde det, som certificering til ISO/IEC 20000 eller en beskrivelse af praksis. Aftal en sætning, alle kan bruge.

**Hvad ville det koste os at blive certificeret til ISO/IEC 20000, og hvad ville vi vinde?**

Spørg, hvilke kunder eller markeder ville værdsætte det, og hvad teamet skulle ændre. Gæt ikke på omkostninger; indhent reelle tilbud, eller spørg en kollega, der har gjort det. List de fordele, du kan beskrive: et anerkendt mærke, et disciplineret system, adgang til udbud. Beslut, om I vil undersøge det nærmere.

**Hvor kommer vores registre til revision fra, og kunne vores værktøjer producere dem automatisk?**

List de registre, revisorer beder om, og hvor hvert kommer fra. Mange kan komme fra versionsstyring, ticketværktøjer og overvågning, hvis de er konfigureret med det i tankerne. Spørg, hvilke registre der produceres i hånden, og hvorfor. Vælg ét, der skal automatiseres.

**Hvordan passer vores agile praksisser til det, standarderne forventer, og hvor er hullet?**

Tag et krav, jeres revisor interesserer sig for, som ændringsgodkendelse, og beskriv, hvordan et agilt team opfylder det. Hvor standarden har vejledning om agile og DevOps, så læs den relevante tekst sammen. Notér huller i evidens, ikke i hensigt.

**Hvem følger ændringer i disse rammeværker for os?**

Spørg, hvem der læser meddelelser fra rammeværksejerne og standardiseringsorganerne. Et hyppigt svar er "ingen". Beslut, hvem der gør det, hvordan vedkommende rapporterer, og hvornår. Facilitatoren kan foreslå en kort note én gang i kvartalet, der opregner, hvad der er ændret, og om det betyder noget.

## I praksis: et agilt ITIL-eksempel

En softwarevirksomhed med 120 ansatte sælger et hostet planlægningsprodukt til hospitaler og universiteter. Et stort universitets udbud kræver "et certificeret IT-servicestyringssystem". Grundlæggerne havde antaget, at deres ITIL-uddannede supportleder ville være nok. Supportlederen forklarer, at ITIL-certificering gælder for enkeltpersoner, og at udbuddet højst sandsynligt mener ISO/IEC 20000.

Driftschefen undersøger sagen. Hun læser udbuddets ordlyd, som nævner ISO/IEC 20000-1, og spørger kunden, hvilket omfang de forventer. Hun læser standardens indholdsfortegnelse og sammenligner dens ti klausuler med virksomhedens eksisterende registre, som mest kommer fra dens ticketværktøj, ændringshistorik og hændelsesgennemgange. Hun finder, at meget af evidensen allerede findes, men at der ingen dokumenterede servicestyringspolitikker er, ingen formelle leverandørgennemgange og ingen ledelsesgennemgang. Hun finder også, at standarden nu har en del med vejledning om agile og DevOps, som hjælper hende med at forklare virksomhedens ugentlige releases for en kommende revisor.

Virksomheden beslutter at søge certificering kun for det hostede produkt, med et beskedent sæt dokumenter og en kvartalsvis ledelsesgennemgang. Den planlægger omkring et års arbejde. Ikke alt går glat. To ingeniører modsætter sig de ekstra registre, og en leverandør afslår at levere formelle servicegennemgangsrapporter. Driftschefen erstatter nogle manuelle registre med eksporter fra virksomhedens værktøjer og forhandler en lettere gennemgangsordning med leverandøren. Virksomheden vinder udbuddet og beslutter ved næste overvågningsaudit at gennemgå, om systemet hjælper eller hæmmer de ugentlige releases.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams møder disse rammeværker som krav fra kunder og revisorer. Lær, hvilket krav der gælder, og spørg, hvilken evidens der er acceptabel. Mange krav kan opfyldes fra de værktøjer, I allerede bruger. Tilbyd at forklare jeres releaseproces i standardens sprog.

### Service- og driftsteams

Driftsteams bærer som regel styringssystemet. Gør registre nyttige, med et angivet formål for hvert. Hold øje med krav, der duplikerer hinanden på tværs af rammeværker, og kortlæg dem én gang. Del planen med leveranceteams, så registre er et biprodukt af arbejdet og ikke en separat opgave.

### Ledelse og governance

Ledere afgør, hvilke rammeværker der adopteres, og hvor meget der investeres i certificering. Spørg, hvad business casen er, og hvad kunderne faktisk kræver. Vær på vagt over for at købe certificering som et mærke. Sørg for, at systemet hjælper organisationen med at forbedre sig, og at nogen ejer det.

### Kunder og brugere

Kunder, der beder om certificering, vil ofte have tryghed. Spørg leverandører, hvilken standard og hvilket omfang deres certifikat dækker, og hvad der ligger uden for. Et certifikat er evidens for et styringssystem, ikke en garanti for noget enkelt resultat.

## Almindelige fejlmønstre

- **At forveksle individuel og organisatorisk certificering.** Teams påstår "ITIL-certificeret" om en virksomhed. I stedet: angiv præcis, hvad der er certificeret, og af hvem.
- **At jagte certificering som et mærke.** Systemet findes til revisionen, ikke til forbedring. I stedet: gør registrene nyttige for teamet først.
- **At duplikere dokumenter på tværs af rammeværker.** Hver standard får sin egen mappe. I stedet: beskriv jeres praksis én gang, og kortlæg den.
- **At indsnævre omfanget for at undgå de svære dele.** Certifikatet udelader de services, kunderne bekymrer sig om. I stedet: vælg et omfang, der afspejler reelle services.
- **At stole på opsummeringer.** Påstande om konformitet bygger på blogindlæg. I stedet: arbejd ud fra standardens eller rammeværksejerens tekst.
- **At ignorere agil vejledning.** Teams diskuterer med revisorer uden at have læst den del af standarden, der behandler agile og DevOps. I stedet: læs den, og forbered eksempler.
- **Overdokumentation.** Systemet får flere registre, end nogen læser. I stedet: knyt hvert register til et formål, og automatisér evidens.
- **At glemme ændringer.** Standarden går videre, og teamet bemærker det ikke. I stedet: udpeg en til at følge opdateringer.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Forståelse af rammeværker | Navne bruges løst | Nogle medarbejdere kan sige, hvad hvert rammeværk er til for | Teams deler en kort, nøjagtig beskrivelse af de rammeværker, der bruges | Brugen af rammeværker gennemgås mod krav og resultater | Teams, kunder og leverandører deler en nøjagtig forståelse |
| Krav og omfang | Krav antages | Nogle krav spores til dokumenter | Krav og omfang er dokumenteret | Compliance og omfang gennemgås, og huller spores | Krav afstemmes med partnere og kunder |
| Evidens | Evidens samles i hånden for hver anmodning | Nogle registre produceres fra værktøjer | Evidens kommer mest fra værktøjer og beskrives konsekvent | Evidenskvalitet måles og forbedres | Evidens deles automatisk med revisorer og partnere |
| Aktualitet | Ændringer i rammeværker går ubemærket hen | Nogle følger meddelelser | En navngiven person rapporterer ændringer med faste mellemrum | Ændringer vurderes og handles på | Ændringer forudses og håndteres sammen med partnere |

## Tjekliste

- [ ] Vi kan angive, hvilke rammeværker og standarder kunder, kontrakter eller tilsynsmyndigheder faktisk kræver.
- [ ] Vi ved, hvilke der er vejledning, hvilke der er certificerbare standarder, og hvilke der er governance-modeller.
- [ ] Vores påstande om certificering er nøjagtige og angiver omfanget.
- [ ] Vi arbejder ud fra standardens eller ejerens tekst for enhver compliancepåstand.
- [ ] Vores praksis er beskrevet én gang og kortlagt til hvert rammeværk, vi skal opfylde.
- [ ] Evidens til revisioner kommer mest fra vores værktøjer.
- [ ] Vi har læst vejledningen om agile og DevOps i de standarder, der gælder for os.
- [ ] Nogen er udpeget til at følge opdateringer og rapportere dem.
- [ ] Vores tilpasningsbeslutninger er skrevet ned.
- [ ] Vi har gennemgået, om vores omfang svarer til reelle services.

## AI-prompts

**Formål: at kortlægge et kundekrav til den rammeværkstekst, der understøtter det.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at beskrive jeres praksis én gang, så den kan kortlægges til flere rammeværker.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede et ærligt svar på "er I ITIL-certificerede?".**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Formål: at planlægge den evidens, en revision af servicestyring kan bede om.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): brug den til at placere servicestyringsrammeværker i det bredere billede af virksomhedsarkitektur og governance.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): brug den til at planlægge, hvordan I forbereder jer til en revision mod en standard eller et kontraktkrav.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): brug den til at designe tjek, der automatisk producerer evidens for konformitet.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den, når et certificeringsomfang afhænger af leverandører, og I skal planlægge leverandørgennemgange.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): brug den, når rammeværker som COBIT eller PMBOK Guide møder jeres projektkontor.

## Vigtigste kilder

- **ISO/IEC 20000-1** (International Organization for Standardization): selve standarden; læs dens omfang og klausuloverskrifter i ISO-kataloget, før du fremsætter påstande.
- **ISO/IEC 20000** (Wikipedia): standardens historie, dele og certificeringslandskab, med henvisninger.
- **COBIT** (ISACA og Wikipedia): ISACAs egne publikationer er autoritative; Wikipedia-artiklen giver historie og struktur, men har svag kildebelægning.
- **FitSM** (Wikipedia og FitSM-projektet): et kort, frit licenseret alternativ; tjek projektets sider for den nuværende version.

## Referencer

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
