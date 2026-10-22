# Extreme Programming

**Extreme Programming (XP) er den agile metode, der er mest specifik om ingeniørpraksis, og dens vaner med at teste først, integrere kontinuerligt og dele ejerskab af koden er det, der gør hyppige ændringer af en live service sikre.**

## Hvorfor det betyder noget

Hyppig forandring er målet med kontinuerlig levering og servicestyringens bekymring. Vejen til at forene dem er ikke flere godkendelsesmøder, men en stærkere evne til at vide, at en ændring virker, før den når brugerne. Extreme Programming er den agile metode, der siger mest om, hvordan man bygger den evne: skriv tests først, integrér flere gange om dagen, hold designet enkelt, og del ansvaret for koden.

Mange teams tager Scrums events og tavler og efterlader ingeniørpraksisserne. Resultatet er et team, der planlægger i sprints, men udgiver med frygt. XP's praksisser er den manglende halvdel. De betyder noget for enhver, der skal drive resultatet, fordi en service bygget med automatiserede tests, små releases og delt viden er lettere at supportere end en bygget af nogle få personer i store, utestede batches.

XP stiller også noget til organisationen, der let overses: et bæredygtigt tempo, et helt team med alle de nødvendige færdigheder og en kunde, der er virkelig tilgængelig. Det er betingelser i arbejdsmiljøet, ikke kun programmørers vaner. Dette emne forklarer metoden, evidensen om dens grænser, og hvordan dens praksisser hænger sammen med ITIL-praksisser som ændringsunderstøttelse, releasestyring og videnstyring.

## Kernebegreber

### Hvor XP kom fra

Kent Beck udviklede XP, mens han arbejdede på Chrysler Comprehensive Compensation System (C3), et lønprojekt. Ifølge [Wikipedia-artiklen om Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming) blev Beck projektleder i marts 1996 og forfinede metoden der, med Ward Cunningham som en stor indflydelse og Ron Jeffries, der kom til for at coache teamet. Hans bog *Extreme Programming Explained* udkom i oktober 1999. Chrysler aflyste C3-projektet i februar 2000, efter Daimler-Benz havde købt virksomheden.

Artiklen påpeger, at mange XP-praksisser ikke var nye. Den nævner test-først-udvikling i NASA's Project Mercury i begyndelsen af 1960'erne. XP's træk var at tage gode praksisser til "ekstreme" niveauer: hvis test er godt, så test hele tiden; hvis gennemgang er godt, så gennemgå konstant ved at arbejde i par. Beck og Cunningham var blandt de 17 personer, der skrev det agile manifest (se Emne 1.1 — Det agile manifest).

### De fem værdier

XP angiver fem værdier:

| Værdi | Hvad den betyder | I servicearbejde |
|---|---|---|
| **Kommunikation** | Opbyg fælles forståelse mellem udviklere, brugere og kunder, hovedsageligt ved at tale sammen og holde design enkelt | Udviklere og driftspersonale taler om, hvordan en release vil opføre sig, før den sendes |
| **Enkelhed** | Gør det simpleste, der virker, og byg ikke til spekulative fremtidige behov | Færre bevægelige dele at overvåge, sikre og forklare |
| **Feedback** | Lær hurtigt af tests, af kunder og af teamets egne estimater | Hurtige testresultater og produktionsovervågning forkorter tiden til at lære |
| **Mod** | Refaktorér, kassér forældet kode, og hold ud gennem svære problemer | At afvikle en gammel komponent, ingen tør røre |
| **Respekt** | Respekt for holdkammerater og for ens eget arbejde | Skyldfri gennemgang efter fejl og en fair vagtbelastning |

Artiklen bemærker, at respekt blev tilføjet i anden udgave af *Extreme Programming Explained*, efter de oprindelige fire.

### Praksisserne

Artiklen om XP-praksisser grupperer tolv praksisser i fire sæt. De forstås bedst som et system, der understøtter sig selv.

| Gruppe | Praksisser | Formål |
|---|---|---|
| **Feedback i lille skala** | Parprogrammering, planlægningsspil (planning game), testdrevet udvikling, helt team | Få feedback på minutter eller dage, ikke måneder |
| **Kontinuerlig proces** | Kontinuerlig integration, forbedring af design (refaktorering), små releases | Hold softwaren altid i en udgivelsesklar tilstand |
| **Fælles forståelse** | Kodestandard, kollektivt kodeejerskab, enkelt design, systemmetafor | Lad alle i teamet ændre en hvilken som helst del sikkert |
| **Programmørernes trivsel** | Bæredygtigt tempo | Hold folk udhvilede og effektive over år |

En kort beskrivelse af de vigtigste:

- **Parprogrammering:** to personer arbejder på én opgave ved én arbejdsstation, én skriver og én gennemgår, og de skifter ofte makker.
- **Testdrevet udvikling (TDD):** programmøren skriver først en fejlende test og skriver derefter lige nok kode til at få den til at bestå.
- **Kontinuerlig integration (CI):** udviklere fletter deres arbejde ind i det fælles lager hver få timer, så integrationsproblemer dukker op tidligt.
- **Små releases:** lever fungerende software i hyppige, små skridt, så kunderne kan se fremdrift og reagere.
- **Kollektivt kodeejerskab:** alle i teamet må ændre en hvilken som helst del af koden.
- **Bæredygtigt tempo:** undgå regelmæssigt overarbejde, og tillad aldrig overarbejde to uger i træk.

### Kontroverser og grænser

Artiklen registrerer flere kritikpunkter. Matt Stephens og Doug Rosenberg argumenterede i en bog fra 2003 for, at XP's praksisser afhænger af hinanden, så at adoptere kun nogle underminerer processen. Kritikere satte også spørgsmålstegn ved parprogrammering som den normale arbejdsmåde, manglen på stort design på forhånd, den kunde, der sidder på stedet, som en enkelt fejlkilde, og uformelle ændringsanmodninger, der fører til omarbejde og scope creep. P. McBreen samt Boehm og Turner skrev også kritiske vurderinger. Artiklen tilføjer, at agile praktikere anser mange af disse kritikpunkter for misforståelser.

Hvad angår skala, siger artiklen, at Industrial XP, introduceret i 2004, udvidede XP til større og distribuerede teams med 23 praksisser. Den rapporterer også en påstand, markeret som kræver en kilde, om at ThoughtWorks havde rimelig succes med distribuerede XP-projekter med op til tres personer. Læs den påstand med forsigtighed, og se Emne 1.8 — Skalering af agilitet for den bredere diskussion.

Artiklen diskuterer ikke deployment eller produktionsovervågning ud over kontinuerlig integration og små releases. XP siger lidt om at drive software. Det bringer du fra servicestyringen, og du bruger XP til at gøre overdragelsen mindre risikabel.

### XP og ITILs syn på ændring

ITILs praksis for ændringsunderstøttelse (se Emne 3.4 — Ændringsunderstøttelse) handler om at sikre, at ændringer vurderes, godkendes og planlægges, så risikoen kontrolleres. XP kontrollerer risiko et andet sted: i koden, gennem tests, små skridt og delt viden. En ændring, der er lille, automatisk testet, integreret og let at fortryde, er en ændring med lavere risiko efter enhver rimelig vurdering. De to syn passer sammen, når evidensen fra XP's praksisser bruges i ændringsbeslutningen.

## God praksis

1. **Adoptér praksisser som et sæt.** Kritikernes pointe om, at XP's praksisser understøtter hinanden, er en nyttig advarsel. Test uden integration, eller integration uden små skridt, giver mindre end summen. Indfør dem sammen, hvor I kan, og lær, hvilke af dem de andre afhænger af.
2. **Skriv testen først for ændringer, der betyder noget.** For en ny adfærd eller en fejlrettelse skriv en fejlende test, der viser problemet, og ret det derefter. Testen bliver som værn mod, at problemet vender tilbage, hvilket er særligt nyttigt for fejl, der forårsagede hændelser.
3. **Integrér flere gange om dagen.** Hold grene kortlivede, og byg og test automatisk ved hver sammenfletning. Et ødelagt build er teamets første prioritet.
4. **Udgiv i små skridt.** Hver lille release bærer mindre risiko og er lettere at forstå og fortryde. Sigt efter det mindste interval, jeres pipeline kan understøtte sikkert, og forkort det, efterhånden som tilliden vokser.
5. **Refaktorér løbende.** Forbedr designet lidt hver dag i stedet for at gemme det til en omskrivning. Testsuiten er det, der gør det sikkert.
6. **Hold designet så enkelt som muligt.** Byg det, der er brug for nu, og fjern det, der ikke bruges. Et mindre system har mindre at overvåge, opdatere og forklare.
7. **Del ejerskabet af koden.** Lad ethvert teammedlem ændre enhver del, understøttet af tests og fælles standarder. Det mindsker afhængigheden af nogle få eksperter, hvilket også er en tilgængelighedsrisiko for servicen.
8. **Par på risikabelt eller ukendt arbejde.** Brug parring til vanskelige ændringer, til onboarding og til at følge med på vagt. Behandl det som et værktøj til at sprede viden og fange fejl, og gør det ikke til en regel for hver opgave.
9. **Hold et bæredygtigt tempo.** Planlæg arbejdet, så overarbejde er sjældent og ikke gentages uge efter uge. En træt vagthavende ingeniør er en servicerisiko (se Emne 1.2 — Agile principper om tempoet).
10. **Gør kunden til en del af teamet.** Find en reel bruger eller brugerrepræsentant, der kan svare på spørgsmål under arbejdet. Husk kritikken om, at én person er en enkelt fejlkilde, så involvér mere end én stemme.
11. **Skriv acceptkriterier som tests, hvor det er muligt.** Gør kundens forventninger til automatiserede tjek, der kører ved hvert build. De dokumenterer så adfærd og værner den på samme tid.
12. **Tag driftstjek med i testene.** Tilføj tjek for overvågning, logning og genoprettelsesadfærd til pipelinen, så driftsparathed verificeres ved hver ændring (se Emne 3.5 — Release- og deploymentstyring).

## Spørgsmål til diskussion i teamet

**Hvordan ved vi, at en ændring virker, før den når brugerne, og hvor lang tid tager det at vide?**

Følg de tjek, en ændring passerer mellem en udviklers laptop og produktion. Tæl, hvor mange der er automatiserede, og hvor lang tid hvert tager. Typiske svar omfatter en manuel test, en gennemgang og et håb. Spørg, hvilket tjek der har fanget flest problemer, og hvilket der aldrig har fanget noget. Følg op ved at vælge ét manuelt tjek, der skal automatiseres.

**Hvem kan ændre hvilke dele af vores system, og hvad sker der, når de folk er væk?**

List komponenterne og de personer, der forstår hver. Komponenter med én person bag er risici for servicen. Kollektivt ejerskab er XP's svar, og det kræver tests og fælles standarder for at være sikkert. Spørg, hvad én person kunne lære en anden inden for en måned. Facilitatoren kan spørge, om ferie eller sygdom nogensinde har forsinket en rettelse.

**Hvor ville parring hjælpe os mest, og hvor ville den kun gøre os langsommere?**

Parprogrammering er kontroversiel, så inviter til ærlige synspunkter. Spørg folk om den bedste og den værste parring, de har prøvet. Parring hjælper ofte med ukendte systemer, vanskelige ændringer og onboarding. Den hjælper mindre med rutinearbejde, som én person kan gøre godt. Aftal én situation, hvor I prøver parring i en måned, og hvordan I vil bedømme den.

**Hvad sker der med vores kvalitet, når vi er under pres, og hvad dropper vi først?**

Bed om en nylig hektisk periode og hvad der blev sprunget over: tests, gennemgange, dokumentation. Spørg, hvad der skete bagefter. Ofte vendte det oversprungne arbejde tilbage som hændelser. Pointen er at lægge mærke til mønstret og på forhånd beslutte, hvilke praksisser der er beskyttede. Undgå skyld, og knyt svaret til det bæredygtige tempo.

**Hvor ofte fletter vi vores arbejde sammen, og hvad får os til at vente?**

Spørg, hvor længe en typisk gren lever, og hvad der holder den tilbage. Lange grene afspejler som regel store ændringer, langsomme gennemgange eller et upålideligt build. Hver kræver en forskellig løsning. Spørg, hvad teamet kunne gøre for at gøre sammenfletning inden for få timer til normaltilfældet. Vælg én hindring, der skal fjernes.

**Har vi en kunde eller bruger tilgængelig for teamet, eller gætter vi, hvad de vil have?**

Spørg, hvem der besvarer spørgsmål om, hvad brugerne har brug for, og hvor lang tid de tager. Hvis svaret er en lang kæde, så spørg, hvilket spørgsmål det var dyrest at få forkert. Husk XP's egne kritikere: en enkelt kunderepræsentant kan være en flaskehals. Drøft, hvordan man når flere brugere kortvarigt og ofte.

## I praksis: et agilt ITIL-eksempel

En offentlig transportvirksomheds digitale team på ni bygger og driver sin ruteplanlægningsapp og et feed med live-ankomstdata, som andre udviklere i byen bruger. Teamet udgiver månedligt efter en manuel testcyklus på fire dage. Når en release går galt, tager en tilbagerulning en halv dag, så teamet er tilbageholdende med at udgive oftere. Driftslederen, som også er den mest erfarne udvikler, tager de fleste opkald uden for arbejdstid, fordi ingen andre ved, hvordan feedet virker.

Teamet beslutter at adoptere nogle få XP-praksisser sammen. Det opsætter kontinuerlig integration, der bygger og kører enhedstests ved hver sammenfletning. For hver fejl fundet i produktion skriver det en fejlende test, før det retter. To udviklere parrer med driftslederen på feedarbejde en time om dagen. Teamet tilføjer også et deploymenttrin, der kan skifte tilbage til den forrige version på få minutter.

Efter fire måneder udgiver teamet hver uge. Testsuiten fanger to regressioner før release, som den manuelle cyklus først ville have fundet på sidste dag. Tre udviklere kan nu håndtere de fleste feedopkald. Ikke alt virker: testsuiten tager 25 minutter at køre, så udviklerne fletter sjældnere, end de skulle, og en fejlbehæftet ændring af ankomstfeedet slipper igennem, fordi dens tests brugte eksempeldata, der ikke matchede et reelt kanttilfælde. Teamet flytter de langsomme tests til et andet trin, så de første resultater kommer inden for fem minutter, og tilføjer et overvågningstjek på feedets output. De aftaler også, at parring forbliver et værktøj til svære problemer og onboarding, ikke en regel for hver opgave.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams ejer XP's praksisser. Start med dem, der giver feedback hurtigst: automatiserede tests og kontinuerlig integration. Behandl jeres testsuite som et produkt, der også bruges af driften. Den beskriver, hvad servicen skal gøre, og fortæller hurtigt, når den holder op med det.

### Service- og driftsteams

Driftspersonale kan bruge XP-ideer på deres eget arbejde: infrastruktur- og konfigurationsændringer testet, før de kører, små ændringer integreret ofte og viden delt i teamet gennem parring og kollektivt ejerskab. Bed leveranceteams om tests, der dækker de fejl, I ser i produktion, og tilbyd hændelseshistorik til at styre, hvad der testes.

### Ledelse og governance

Ledere muliggør XP ved at beskytte tempoet, betale for bygge- og testinfrastruktur og acceptere, at kvalitet bygges ind i arbejdet og ikke inspiceres ind bagefter. Bed om evidens for sikkerhed, der kommer fra pipelinen, som testresultater og releasehistorik, og kræv ikke dobbelt manuel evidens.

### Kunder og brugere

Kunder har den mest direkte rolle i XP: de er en del af teamets feedbackløkke. Forvent at blive bedt om at prøve små releases, svare hurtigt på spørgsmål og sige, hvad der betyder mest i denne uge. Til gengæld bør du se færre overraskelser og hurtigere rettelser af problemer, du rapporterer.

## Almindelige fejlmønstre

- **Kun at adoptere ritualerne.** Teams tager stand-ups og tavler og springer tests og integration over. I stedet: begynd med automatiserede tests og kontinuerlig integration, da de giver det største udbytte.
- **At behandle parring som en regel.** Tvungen parring på alt arbejde frustrerer folk og gør rutineopgaver langsommere. I stedet: brug parring til svære problemer, onboarding og videnoverførsel, og gennemgå, hvordan det virker.
- **En testsuite, ingen stoler på.** Langsomme eller upålidelige tests bliver ignoreret. I stedet: hold suiten hurtig, og ret eller slet ustabile tests omgående.
- **Kollektivt ejerskab uden standarder.** Alle kan ændre alt, og koden forfalder. I stedet: par det med fælles kodestandarder, gennemgang og automatiserede tjek.
- **En enkelt kunderepræsentant.** Én person bliver flaskehalsen eller kilden til skævhed. I stedet: spred kontakten over flere brugere, og tjek beslutninger mod reel brug.
- **At springe design helt over.** Teams refaktorerer gentagne gange uden retning. I stedet: hold et let billede af arkitekturen, og gennemgå det med jævne mellemrum.
- **Overarbejde som normal.** Lange timer nedbryder kvaliteten og forårsager hændelser. I stedet: planlæg til et bæredygtigt tempo, og behandl gentaget overarbejde som et signal om at reducere omfanget.
- **At ignorere driften.** XP siger lidt om at drive software, og teams antager, at det er dækket. I stedet: tilføj driftstjek til testene, og inviter driftspersonale ind i planlægningen.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Test | Test er manuel og sen | Nogle teams har automatiserede enhedstests | Teams skriver tests sammen med koden og kører dem ved hver ændring | Testresultater og undslupne fejl spores og gennemgås | Teststrategien koordineres på tværs af services og deles med driften |
| Integration og release | Integration er sjælden, og releases er store | Nogle teams bruger kontinuerlig integration | En fælles pipeline bygger, tester og udruller hver ændring | Releasefrekvens og fejlrate måles og forbedres | Pipelines koordineres på tværs af teams og leverandører |
| Delt ejerskab og viden | Viden sidder hos nogle få personer | Nogle teams parrer eller roterer arbejde | Kollektivt ejerskab med standarder er normen | Videnshuller spores og reduceres | Viden bevæger sig frit mellem teams og ind i runbooks |
| Tempo og trivsel | Overarbejde er rutine | Nogle teams holder øje med deres arbejdsbyrde | Bæredygtigt tempo er en erklæret politik | Vagtbelastning og overarbejde måles og gennemgås | Arbejdsbyrden udbalanceres på tværs af teams ud fra fælles data |

## Tjekliste

- [ ] Teamet har aftalt, hvilke XP-praksisser det bruger, og har prøvet dem sammen.
- [ ] Automatiserede tests kører ved hver ændring, og et fejlende build rettes først.
- [ ] Hver produktionsfejl får en test, der ville have fanget den.
- [ ] Arbejde flettes til den fælles gren flere gange om dagen.
- [ ] Releases er små, og en tilbagerulning kan gøres hurtigt.
- [ ] Mere end én person kan ændre og supportere hver del af systemet.
- [ ] Parring bruges til svære problemer og onboarding, og dens effekt gennemgås.
- [ ] Overarbejde er sjældent og ikke gentaget uge efter uge.
- [ ] En bruger eller brugerrepræsentant er tilgængelig til at svare på spørgsmål under arbejdet.
- [ ] Tests omfatter tjek for overvågning og genoprettelsesadfærd.

## AI-prompts

**Formål: at gøre en produktionshændelse til en test og en liste over erfaringer.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Formål: at vurdere, hvor sikkert jeres team kan udgive små ændringer.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Formål: at designe et månedslangt eksperiment med parring.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at tjekke en Definition of Done for driftsparathed.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## AI-skills

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): brug den til at gennemgå eller indføre XP-praksisser som parring, testdrevet udvikling og kontinuerlig integration.
- [user-story](../../../../skills/user-story/SKILL.md): brug den til at gøre kundebehov til stories med acceptkriterier, der kan blive automatiserede tests.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): brug den til at planlægge små, hyppige releases og de tjek, der gør dem sikre.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): brug den til at gennemgå, hvor godt praksisserne virker, og vælge én ændring.
- [runbook](../../../../skills/runbook/SKILL.md): brug den til at gøre viden, som én person sidder med, til en fælles, afprøvet procedure.

## Vigtigste kilder

- **Extreme programming** og **Extreme programming practices** (Wikipedia): en oversigt over historie, værdier, praksisser og kritik, med henvisninger.
- **Extreme Programming Explained** (Kent Beck): den oprindelige fremstilling af metoden; anden udgave tilføjer værdien respekt.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP er en af de metoder, hvis ophavsmænd skrev manifestet.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens og Doug Rosenberg, 2003): den mest kendte kritik, nyttig til at afprøve egne antagelser.

## Referencer

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
