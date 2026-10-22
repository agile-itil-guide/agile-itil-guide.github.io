# Governance, risiko og compliance

**Governance, risiko og compliance fastlægger retning, grænser og dokumentation for en organisations arbejde, og i en agil organisation virker det bedst som autoværn indbygget i måden, teams leverer på, ikke som porte placeret til sidst.**

## Hvorfor det betyder noget

Enhver organisation, der leverer services, er ansvarlig over for nogen: kunder, en bestyrelse, en tilsynsmyndighed, offentligheden. Det ansvar tager nogle velkendte former. Der skal være klar retning og beslutningsret (governance). Der skal være et ærligt overblik over, hvad der kan gå galt, og hvad der gøres ved det (risiko). Og der skal være dokumentation for, at organisationen følger de love, kontrakter og politikker, der gælder for den (compliance).

Agile teams og governancefunktioner mødes ofte i en tilstand af gensidig mistænksomhed. Teams ser godkendelsesudvalg, lange formularer og regler, hvis begrundelse de ikke kan se. Governance- og revisionsfolk ser teams, der ændrer produktion hurtigt og efterlader få spor. Begge sider har et punkt. Vejen frem er ikke, at nogen vinder, men at designe governance, der er forenelig med hyppig forandring: klare grænser, risikobaserede kontroller og dokumentation produceret af selve arbejdet.

[Wikipedia-artiklen om governance, risk management and compliance](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) beskriver GRC som en helhedsorienteret tilgang til governance, risikostyring og regulatorisk compliance, udviklet i 2000'erne til at styre stadig mere komplekse finansielle compliancekrav. Den nævner ingen kritik og ingen IT-specifikke rammeværker. Dette emne kombinerer den med artiklerne om risikostyring og regulatorisk compliance, med de tidligere emner om ændring, sikkerhed og kontinuitet og med DORAs vejledning om godkendelse. Det giver ikke juridisk rådgivning; de regler, der gælder for jer, afhænger af jeres land, sektor og kontrakter, og den rette kilde er selve regelteksten.

## Kernebegreber

### Governance

GRC-artiklen beskriver virksomhedsledelse som de processer, bestyrelsen fastsætter, der former strukturen og tildeler roller. I IT handler governance om, hvem der beslutter hvad, på hvilket grundlag, og hvordan beslutninger kontrolleres. COBIT, som Wikipedia beskriver som et ISACA-rammeværk for IT-styring og -governance, er én reference (se Emne 2.7 — ITSM-rammeværker og standarder). ITILs serviceværdisystem omfatter governance som en komponent (se Emne 2.3 — ITILs serviceværdisystem).

God governance i en agil organisation er eksplicit om:

- **Retning:** mål og prioriteter, og hvem der sætter dem.
- **Grænser:** hvad teams selv må beslutte, og hvad der kræver eskalering (se Emne 1.9 — Agil ledelse).
- **Ansvar:** hvem der svarer for hver service (se Emne 5.5 — Produkt- og serviceejerskab).
- **Dokumentation:** hvordan organisationen ved, at dens retning og grænser følges.

### Risikostyring

Wikipedia beskriver risikostyring som identifikation, vurdering og prioritering af risici, efterfulgt af at minimere, overvåge og kontrollere deres påvirkning eller sandsynlighed. Artiklen nævner fire behandlingsmuligheder:

| Mulighed | Betydning | Eksempel |
|---|---|---|
| **Undgåelse** | Lad være med at udføre den risikable aktivitet (hvilket også opgiver mulige gevinster) | Beslut ikke at lagre visse data |
| **Reduktion** | Sænk alvorligheden eller sandsynligheden | Automatiserede tests, trinvise udrulninger, ekstra overvågning |
| **Deling** | Overfør byrden eller fordelen, fx gennem forsikring eller outsourcing; artiklen bemærker, at "risikooverførsel" ofte er en misvisende betegnelse, da den oprindelige part som regel beholder det juridiske ansvar | Forsikring, kontraktindgåelse med en leverandør |
| **Fastholdelse** | Accepter tabet, typisk for små eller uforsikrelige risici | En beslutning om at leve med en mindre risiko |

Artiklen behandler også muligheder, positive usikre begivenheder, med parallelle strategier. Den bemærker, at risikovurdering vejer alvorlighed og sandsynlighed, og at ratedata ofte er knappe, især for katastrofale begivenheder. Den citerer kritik: Douglas Hubbard (2009) citeres for at sige, at nogle standarder ikke viser nogen målbar forbedring i risiko, selv om tilliden til beslutninger ser ud til at stige; senere forskning tyder på, at økonomiske fordele afhænger mere af, hvor ofte og med hvilken metode risici vurderes, end af hvilken formel der bruges; og Benoit Mandelbrots skelnen mellem "mild" og "vild" risiko, hvor undervurdering af vildskaben er en almindelig fejl. Artiklen henviser til ISO 31000, "Risk management: Guidelines", og er selv markeret som i behov af flere henvisninger.

### Risikoregisteret

Et **risikoregister** er en registrering af identificerede risici, med en beskrivelse, en vurdering, en ejer, den valgte behandling og status. Det uddrag af artiklen, der er læst til denne vejledning, nævner det ikke, så det er almindelig praksis. Hold det kort, ejet og gennemgået. Risici for services omfatter sikkerhed, tilgængelighed, leverandørsvigt, afhængighed af nøglepersoner og compliance (se Emne 3.13 — Styring af informationssikkerhed, Emne 3.12 — Styring af servicekontinuitet og Emne 3.14 — Leverandørstyring).

### Compliance

Wikipedia-artiklen om regulatorisk compliance beskriver det som det mål, organisationer stræber efter at nå ved at være opmærksomme på og følge relevante love, politikker og regler, og bemærker, at organisationer i stigende grad samler kontroller i fælles rammeværker for at reducere dobbeltarbejde. Den siger, at definitionen af en effektiv compliance-plan har været svær at fastlægge, og nævner standarder som ISO 37301 og ISO 19600. Den nævner regimer som Sarbanes-Oxley Act (2002), HIPAA, GDPR, PCI-DSS, Gramm-Leach-Bliley Act og andre. Den registrerer kritik: psykologisk forskning, der citeres i artiklen, hævder, at belønninger eller bøder kan svække den indre motivation og undergrave compliance, privatlivsforkæmpere sætter spørgsmålstegn ved krav om datalagring, håndhævelsen er forskellig på tværs af jurisdiktioner, og hurtigt skiftende krav er svære at følge.

Et praktisk punkt: compliance er ikke én ting. Hvert regime har sit eget omfang og sine egne krav. Find ud af, hvilke der gælder for hvilke af jeres services, hos jeres juridiske afdeling eller compliancefunktion, og skaf teksten.

### GRC som ét overblik

GRC-artiklen siger, at GRC dækker tre beslægtede facetter: virksomhedsledelse, risikostyring for hele virksomheden og compliance, og nævner varianter som finansiel, juridisk og operationel GRC. Den krediterer begrebet til Scott Mitchells artikel fra 2007 og Open Compliance and Ethics Group og bemærker, at software til GRC har eksisteret siden 2002, og at nogle virksomheder begyndte at bruge AI-værktøjer til GRC i 2025. Fordelen ved det samlede syn er, at de tre hænger sammen: governance fastsætter, hvad der betyder noget, risikostyring finder det, der truer det, og compliance viser, hvad der gøres.

### Autoværn, ikke porte

En **port** er et kontrolpunkt, som regel manuelt, hvor arbejde venter på godkendelse. Et **autoværn** er en grænse indbygget i vejen, som holder arbejdet fra at køre af sporet uden at stoppe det. Eksempler: automatiserede tests, der skal bestå, politiktjek i pipelinen, der blokerer usikre konfigurationer, budgetter med alarmer og rollebaseret adgang. DORAs vejledning om ændringsgodkendelse siger, at godkendelse bedst opnås gennem peer review og automatisering, at tung ekstern godkendelse er forbundet med dårligere leveringsydeevne, og at tilføjelse af godkendelser som reaktion på ustabilitet har tendens til at gøre tingene værre (se Emne 3.4 — Ændringsunderstøttelse). Autoværn anvender den samme idé på tværs af governance: kontrollen sidder i systemet og producerer sin egen dokumentation.

### Dokumentation som biprodukt

Revisorer har brug for dokumentation for, at kontroller fungerer. En pipeline, der registrerer, hvem der gennemgik, hvad der blev testet, og hvad der blev udrullet, giver dokumentation for hver ændring. Et servicekatalog med ejere giver dokumentation for ansvar. Postmortems giver dokumentation for læring. Det er meget stærkere end et kvartalsdokument skrevet til en revision. Drøft tidligt med revisorer, hvad de vil acceptere (se Emne 5.1 — Agil servicestyring).

### Regulerede miljøer

Wikipedia-artiklen om agil softwareudvikling rapporterer, at regulerede områder som medicinsk udstyr, lægemidler, finans, nuklear, bilindustri og luftfartselektronik først blev anset for uegnede til agil, og at der nu findes tilpasninger, med bekymringer for kvalitetssikring, sikkerhed og tryghed, sporbarhed samt verifikation og validering (se Emne 1.3 — Agil softwareudvikling). Det mønster, der virker, er typisk at beholde de krævede kontroller, automatisere deres dokumentation og gøre dem til en del af definitionen af færdig, i stedet for at fjerne dem.

### Kildernes grænser

GRC-artiklen nævner ingen rammeværker eller kritik og blev til denne vejledning læst i en kort form. Risikostyringsartiklen blev kun læst delvist og er markeret som i behov af henvisninger. Compliance-artiklen giver ingen omkostninger og ingen revisionsprocedurer. Brug dem som kort, og gå til primærkilderne for detaljer.

## God praksis

1. **Skriv beslutningsretten ned.** For hvert team eller hver service: sig, hvad det selv må beslutte, hvad der kræver høring, og hvad der kræver godkendelse. Publicér det, og gennemgå det med teamene.
2. **Sæt retning og grænser, ikke detaljerede instruktioner.** Angiv resultater, budgetter, risikogrænser og ufravigelige regler. Lad teamene bestemme, hvordan de arbejder inden for dem.
3. **Før et kort risikoregister.** For hver vigtig service: list de største risici med en ejer, en behandling og en gennemgangsdato. Gennemgå det på et fast møde, og drop risici, der er væk.
4. **Vælg behandlingen med vilje.** For hver risiko: beslut at undgå, reducere, dele eller fastholde den, og registrér, hvem der traf beslutningen. Husk at deling af en risiko ikke fjerner jeres eget ansvar.
5. **Vurdér ofte, med enkle metoder.** Artiklen rapporterer, at fordelene afhænger mere af hyppighed og metode end af formlen. Gennemgå risici jævnligt med en metode, teamet forstår.
6. **Vid, hvilke regler der gælder for hvilke services.** Bed jeres juridiske afdeling eller compliancefunktion om en liste over de regimer, der gælder, med kildeteksten. Registrér den ved hver service.
7. **Byg autoværn ind i pipelinen.** Automatisér tests, sikkerhedsscanninger, politiktjek og adgangsgrænser, så usikkert arbejde stoppes tidligt. Behandl kontrollerne som kode med ejere.
8. **Indsaml dokumentation som biprodukt.** Sørg for, at værktøjerne registrerer gennemgange, godkendelser, testresultater, udrulninger og hændelser. Aftal med revisorer, hvad de vil acceptere.
9. **Kortlæg kontroller én gang.** Hvis I skal opfylde flere rammeværker, så beskriv jeres kontroller én gang og kortlæg dem til hvert krav, som compliance-artiklen siger, at organisationer i stigende grad gør.
10. **Brug risikobaserede veje for ændring.** Gør ændringer med lav risiko hurtige, markér dem med høj risiko til gennemgang, og hold et centralt organ til koordinering og afvejninger (se Emne 3.4 — Ændringsunderstøttelse).
11. **Tag governance med i retrospektiver.** Spørg jævnligt, hvilke kontroller der hjalp, og hvilke der kun tilføjede forsinkelse. Fjern eller redesign de sidste sammen med ejeren og revisoren.
12. **Planlæg for ændringer i reglerne.** Udpeg nogen til at følge ændringer i love, standarder og kontrakter og rapportere det, der betyder noget for jeres services.

## Spørgsmål til diskussion i teamet

**Hvilke godkendelser skal vi have, og hvad beskytter hver af dem mod?**

List godkendelserne på en typisk ændring eller et typisk indkøb. Spørg for hver, hvilken risiko den adresserer, og om den nogensinde har afvist noget. Godkendelser, der ikke beskytter noget, er kandidater til fjernelse. Godkendelser, der beskytter mod en reel risiko, kan måske opfyldes på en lettere måde. Facilitatoren kan spørge, hvilken dokumentation godkenderen ville acceptere i stedet for en underskrift.

**Hvad er de fem største risici for vores hovedservice, og hvem ejer hver?**

Bed folk om selvstændigt at liste risici og derefter sammenligne. Forskellene viser, hvad teamet ser. Tjek, at hver har en ejer og en behandling. Drøft, hvilke der accepteres som standard og ikke ved beslutning.

**Hvilke regler gælder for os, og hvor er teksten?**

Bed om listen over love, standarder og kontrakter, der gælder. Hvis ingen kan sige det, så find ud af, hvem der kan. Tjek, at udviklingen ved, hvad hver kræver af den. Aftal en måde at holde listen ajour på.

**Hvilken dokumentation producerer vores værktøjer allerede, som en revisor kunne bruge?**

List registreringerne: gennemgange, testresultater, udrulningshistorik, hændelsesgennemgange. Spørg, hvad en revisor har bedt om for nylig, og om værktøjerne kunne levere det. Identificér én registrering, der skal automatiseres. Invitér en revisor til at kigge.

**Hvor har vi tilføjet en kontrol efter et problem, og hjalp det?**

Bed om eksempler. Sammenlign med DORAs advarsel om, at tilføjelse af godkendelser som reaktion på ustabilitet har tendens til at gøre tingene værre. Spørg, om et andet svar, som bedre tests eller mindre ændringer, ville have virket. Registrér én lære.

**Hvordan ville et autoværn se ud for noget, vi nu sætter en port på?**

Vælg én port. Spørg, hvad porten skal forhindre, og hvordan det kunne forhindres automatisk. For eksempel et politiktjek, der blokerer en risikabel konfiguration. Aftal et forsøg med portens ejer.

## I praksis: et agilt ITIL-eksempel

En national pensionskasse driver en online ydelsesberegner og en betalingsservice. Den er reguleret, revideres årligt og er underlagt strenge regler for databehandling. Kassens governancekontor kræver, at hver ændring i produktion gennemgås af et ændringsudvalg, der mødes ugentligt, og at hvert projekt gennemfører en risikovurdering på 30 sider før release. Udviklere udgiver sjældent og i store batches. En nylig release forårsagede en forkert beregning for en lille gruppe medlemmer, og udvalgets svar var at tilføje endnu en godkendelse.

Chefen for risiko og chefen for udvikling beslutter at prøve en anden vej. De starter med en liste over de regimer, der gælder for beregneren og betalingsservicen, indhentet fra kassens juridiske team med teksten til hvert, og kortlægger kassens kontroller til dem én gang. Ændringsudvalgets rolle ændres: rutineændringer, der er veltestede med automatiserede tests og peer review, går videre uden det, ændringer med høj risiko (dem der berører beregningsregler eller betalinger) markeres af en kort liste af signaler og gennemgås af en risikospecialist inden for to dage, og udvalget mødes for at koordinere og håndtere undtagelser. Pipelinen registrerer, hvem der gennemgik, og hvilke tests der bestod, og et politiktjek blokerer releases, der fejler beregningstestsuiten. Risikovurderingen erstattes af en registerindgang på én side pr. service, gennemgået månedligt.

En intern revisor ser pipelineregistrene og registeret og beder om en stikprøve af gennemgange for at teste, om peer review er ægte; chefen for udvikling arrangerer en kvartalsvis stikprøve foretaget af en senioringeniør. Efter seks måneder er releases ugentlige, andelen af mislykkede ændringer er lavere, og revisionen finder dokumentationen tilstrækkelig. Nogle vanskeligheder består. To teams anvender højrisikosignalerne inkonsekvent, én tilsynsmyndigheds vejledning kræver en eksplicit godkendelse for visse beregningsændringer, som den nye vej ikke fanger, og registerindgangene er skrevet med lidt omhu i nogle teams. Chefen for risiko tilføjer godkendelsestrinnet for de ændringer, udsender eksempler på signalerne og beder teamene medbringe én registerindgang til en månedlig gennemgang.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams udfører kontroller gennem deres pipelines og praksisser. Lær, hvilke regler der gælder for jeres service og hvorfor, tilbyd måder at producere dokumentation automatisk, og bring risiko ind i planlægningen. Behandl autoværn som en del af produktet.

### Service- og driftsteams

Driftsteams ejer mange kontroller: adgang, overvågning, kontinuitet og registreringer. Hold dokumentation i værktøjer, fortæl governance, hvad der virker i praksis, og hjælp med at redesigne porte, der kun tilføjer forsinkelse. Deltag i risikogennemgange med rigtige hændelsesdata.

### Ledelse og governance

Ledere sætter retning, grænser og ansvar og beslutter, hvilke risici der skal accepteres. Bed om risikooversigter i klart sprog og om dokumentation, ikke om mængden af dokumenter. Vær villig til at erstatte en port med et autoværn, når formålet kan opfyldes. Hold udvalgets rolle fokuseret på koordinering og reelle afvejninger.

### Kunder og brugere

Kunder og brugere stoler på, at organisationen håndterer deres data og penge forsvarligt. Spørg leverandører, hvilke standarder og regler de følger, og hvordan de viser det. Forvent ærlig information efter et svigt. Hvis du har særlige krav, som en tilsynsmyndigheds regel, så fortæl leverandøren det tidligt.

## Almindelige fejlmønstre

- **Governance som sidste port.** Gennemgange kommer til sidst og bremser alt. I stedet: byg autoværn ind i arbejdet, og gennemgå efter risiko.
- **Dokumenter som dokumentation.** Rapporter skrives til revisoren. I stedet: producér dokumentation fra de værktøjer, der bruges i arbejdet.
- **Én vej for al ændring.** Rutineændringer venter sammen med risikable. I stedet: klassificér efter risiko.
- **Et risikoregister, ingen læser.** Det bliver en lang liste. I stedet: hold det kort, ejet og gennemgået.
- **At behandle risikooverførsel som risikofjernelse.** Forsikring eller outsourcing antages at afslutte ansvaret. I stedet: husk, at den oprindelige part som regel beholder ansvaret.
- **Ukendte regler.** Teams ved ikke, hvilke love og standarder der gælder. I stedet: skaf listen og teksten fra jura eller compliance.
- **Kontrol tilføjet efter hver hændelse.** Processen vokser, og farten falder. I stedet: led efter årsagen, og ret den med tests, mindre ændringer eller hurtigere genopretning.
- **Compliance som straf.** Bøder og frygt dominerer. I stedet: forklar reglernes formål, og gør den sikre vej til den nemme.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Governance og beslutningsret | Beslutninger følger vane og hierarki | Nogle teams har skrevne grænser | Beslutningsret, grænser og ejere er skrevet og delt | Governancens effektivitet gennemgås mod resultater | Governance afstemmes på tværs af teams, leverandører og partnere |
| Risikostyring | Risici drøftes uformelt | Nogle services har risikolister | Korte ejede risikoregistre med behandlinger gennemgås jævnligt | Risikomålinger og -hændelser informerer vurdering og behandling | Risikooversigter deles og konsolideres på tværs af organisationen |
| Compliance og dokumentation | Dokumentation samles til revisioner | Noget dokumentation produceres af værktøjer | Gældende regler er listet; kontroller kortlagt én gang; dokumentation kommer fra værktøjer | Kontrollers funktion og dokumentationskvalitet måles | Dokumentation deles løbende med revisorer og partnere |
| Autoværn og ændringsveje | Kontroller er manuelle porte | Nogle automatiserede tjek findes | Risikobaserede veje og pipeline-autoværn er standard | Autoværns effektivitet og falske blokeringer spores og tunes | Autoværn deles og forbedres på tværs af teams |

## Tjekliste

- [ ] Beslutningsret og grænser er skrevet for hvert team eller hver service.
- [ ] Hver vigtig service har et kort risikoregister med ejere, behandlinger og gennemgangsdatoer.
- [ ] Vi har en liste over de love, standarder og kontrakter, der gælder for hver service, med kildetekst.
- [ ] Vores kontroller er beskrevet én gang og kortlagt til hvert krav.
- [ ] Pipelinen registrerer gennemgange, tests og udrulninger som dokumentation.
- [ ] Revisorer har sagt, hvilken dokumentation de accepterer i stedet for underskrifter.
- [ ] Rutine- og risikable ændringer følger forskellige veje med klare kriterier.
- [ ] Hver godkendelse har et angivet formål, og godkendelser, der aldrig afviser, gennemgås.
- [ ] Kontroller tilføjet efter hændelser gennemgås for deres virkning.
- [ ] Nogen følger ændringer i gældende regler og rapporterer dem.

## AI-prompts

**Formål: at gøre en godkendelseskæde til muligheder for autoværn.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at udarbejde en indgang i risikoregisteret.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at liste den dokumentation, jeres værktøjer allerede producerer for en kontrol.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at forberede en governancesamtale mellem leveranceteams og revision.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere og gennemgå risici, behandlinger og ejere.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): brug den til at føre en let log over risici, aktioner, problemer og beslutninger.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): brug den til at vælge tidlige varselsmålinger for risici.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): brug den til at forberede revisioner og organisere dokumentation.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre beslutningsret og ansvar eksplicit.

## Vigtigste kilder

- **Governance, risk management, and compliance** (Wikipedia): et kort overblik over GRC, dets komponenter og historie.
- **Risk management** (Wikipedia): definitionen, behandlingsmulighederne og forbehold ved risikovurdering.
- **Regulatory compliance** (Wikipedia): definitionen, nævnte regimer og kritik.
- **Streamlining change approval** (DORA, dora.dev): forskningsbaseret vejledning om at erstatte tung godkendelse med peer review og automatisering.

## Referencer

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes-Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
