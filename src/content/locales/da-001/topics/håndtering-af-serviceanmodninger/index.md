# Håndtering af serviceanmodninger

**Håndtering af serviceanmodninger tager sig af de rutineting, brugere beder om, som adgang, udstyr og information, og det agile mål er at gøre hver almindelig anmodning hurtig, forudsigelig og for det meste automatisk, så dygtige folk bruger deres tid på problemer.**

## Hvorfor det betyder noget

Meget af det arbejde, der når en servicedesk, er slet ikke en fejl. Det er en bruger, der beder om noget, servicen er til for at levere: en ny konto, adgang til en mappe, en bærbar, en licens, en nulstilling af adgangskode. Disse anmodninger er forudsigelige og gentagne. Håndteret godt er de hurtige, og ingen bemærker dem. Håndteret dårligt er de kilden til lange ventetider, gentagne spørgsmål og stille frustration, der skader et teams omdømme mere end et enkelt nedbrud.

Anmodningshåndtering er også der, hvor automatisering og selvbetjening betaler sig mest. En anmodning, der følger de samme trin hver gang, kan designes én gang, testes og for det meste automatiseres. [Wikipedia-artiklen om IT service management](https://en.wikipedia.org/wiki/IT_service_management) definerer en serviceanmodning som en rutineanmodning om en service og nævner IT-procesautomatisering, som erstatter rutinemæssige manuelle trin med automatiserede, så personalet kan fokusere på arbejde med højere prioritet. Det er denne praksis' mål i én sætning.

Artiklen giver lidt mere om anmodninger. Dette emne kombinerer derfor den definition med praktisk vejledning hentet fra udbredt servicestyringspraksis, tilbudt som sådan, og med vejledningens andre emner om servicedesken, servicekataloget og viden. Hvor noget er almindelig praksis og ikke et fund fra en kilde, siger teksten det.

## Kernebegreber

### Hvad en serviceanmodning er

En **serviceanmodning** er en rutineanmodning om noget, en service normalt leverer. Den adskiller sig fra en **hændelse**, som er en forstyrrelse eller potentiel forstyrrelse af en service, og fra en **ændring**, som modificerer en service (se Emne 3.2 — Hændelseshåndtering og Emne 3.4 — Ændringsunderstøttelse). Grænsen kan blive sløret: "Jeg har brug for adgang til økonomisystemet" er en anmodning; "Jeg har adgang, men systemet viser en fejl" er en hændelse; "tilføj et nyt felt til økonomisystemet" er sandsynligvis en ændring.

En praktisk test: hvis arbejdet følger en kendt procedure, har kendte omkostninger og risiko, og svaret på "er dette tilladt?" allerede er afgjort på forhånd, er det en anmodning. Alt, der kræver ny vurdering af risiko, er mere sandsynligt en ændring eller et projekt.

### Hvorfor adskillelsen betyder noget

At blande anmodninger med hændelser forvrider begge. Optællinger af "tickets" udvisker to forskellige slags efterspørgsel. Prioriteter støder sammen, da en hændelse, der stopper arbejdet, bør komme før en anmodning, der kan vente. Responsmålinger vildleder: en lang gennemsnitlig tid til lukning kan skjule, at anmodninger venter på godkendelser, mens hændelser rettes hurtigt. At holde de to adskilt lader dig sætte passende mål og se, hvor forsinkelsen er (se Emne 2.1 — IT-servicestyring).

### Anmodningsmodeller

En **anmodningsmodel** er et gentageligt mønster for en type anmodning: hvilken information der er nødvendig, hvem der skal godkende, hvilke trin der udføres af hvem eller af automatisering, og hvad den forventede tid er. Anmodningsmodeller er en udbredt idé i servicestyring. De giver et team en måde at designe de almindelige anmodninger én gang og køre dem mange gange. Et servicekatalog opregner de tilgængelige anmodninger (se Emne 3.8 — Styring af servicekataloget).

En model for "bærbar til ny medarbejder" kan angive: den information, der er nødvendig fra lederen, godkendelsen (ingen, hvis rollen er på en standardliste), trinnene (bestil, konfigurér, send) og den forventede tid. En model for "adgang til et begrænset system" vil omfatte en godkendelse fra systemets ejer og en registrering til revision.

### Godkendelse

Nogle anmodninger kræver godkendelse, før de går videre: udgifter, adgang til følsomme data eller brug af knappe ressourcer. Spørgsmålet til designet er, om godkendelsen tilfører reel kontrol. En godkendelse, der altid siger ja, er en forsinkelse. Hvor godkendelser er nødvendige, gør dem hurtige og synlige, fortæl godkenderen præcis, hvad der bedes om, og giv en reserve, hvis vedkommende ikke svarer. Hvor godkendelsen afhænger af en rolle, som en leder, der godkender et teammedlems anmodning, så overvej at forhåndsgodkende standardting for rollen.

### Opfyldelse og automatisering

Opfyldelse er arbejdet med at levere anmodningen. ITSM-artiklen beskriver IT-procesautomatisering som automatisering af rutineopgaver, så personalet kan fokusere på arbejde med højere prioritet. Kandidater til automatisering er anmodninger, der er hyppige, følger en stabil procedure og har lav risiko: nulstilling af adgangskoder, gruppemedlemskaber, standardinstallationer af software. Automatisering bør bygges med samme omhu som enhver ændring, med tests og en måde at se, hvad den gjorde.

### Selvbetjening

Mange organisationer tilbyder en portal, hvor brugere kan finde den service, de har brug for, se hvilken information der kræves, og indsende en anmodning uden at tale med nogen. God selvbetjening afhænger af en klar serviceliste skrevet med brugernes ord og af klare formularer. En portal, der spejler organisationsdiagrammet og beder om information, brugeren ikke har, driver folk tilbage til mail og telefon.

### Enterprise service management

ITSM-artiklen bemærker, at enterprise service management anvender ITSM-værktøjer og -ideer på andre forretningsområder som HR eller faciliteter. Anmodningshåndtering er det nemmeste sted at starte, fordi mange funktioner modtager rutineanmodninger: onboarding, rejser, udstyr, kontorflytninger. En fælles anmodningsplatform kan betjene flere funktioner, hver med sine egne anmodningsmodeller og ejere.

### Målinger

Almindelige målinger omfatter, hvor lang tid anmodninger tager fra indsendelse til opfyldelse, hvor ofte anmoderen må komme tilbage med spørgsmål, hvor mange anmodninger der opfyldes uden menneskelig indsats, og anmoderens tilfredshed. Som med enhver måling, undgå mål, der belønner at lukke anmodninger for tidligt. Se efter ventetid, da det meste af en anmodnings forløbne tid som regel er ventetid på godkendelse eller information, ikke arbejde (se Emne 1.7 — Lean softwareudvikling og Emne 5.6 — Metrikker og måling).

### Sikkerhed og compliance

Anmodninger styrer ofte adgang og udgifter, så de har sikkerheds- og revisionsmæssige konsekvenser. Registre bør vise, hvem der bad om det, hvem der godkendte, hvad der blev gjort, og hvornår. Fjern adgang, når den ikke længere er nødvendig, som en del af en anmodningsmodel for fratrædende og ikke som en eftertanke (se Emne 3.13 — Styring af informationssikkerhed).

## God praksis

1. **Start med de mest almindelige anmodninger.** List de ti øverste anmodninger efter mængde fra jeres registre. Design dem først. Nogle få veldesignede modeller dækker meget af efterspørgslen.
2. **Definér en anmodningsmodel for hver.** Skriv, hvilken information der er nødvendig, hvem der godkender, trinnene, hvem der gør hvert, og den forventede tid. Hold hver model til én side.
3. **Brug brugerens ord.** Navngiv anmodninger, som brugere ville gøre ("Få en ny bærbar", ikke "Hardwareforsyningsanmodning type 2"). Afprøv navne med brugere.
4. **Spørg kun om det, du har brug for.** Hvert felt i en formular bør have et formål. Hent, hvad du kan, fra systemer, du allerede har, som brugerens afdeling, i stedet for at spørge brugeren.
5. **Forhåndsgodkend det rutinemæssige.** Aftal med godkendere en standardliste over ting og roller, der ikke behøver godkendelse i hvert enkelt tilfælde. Gennemgå listen jævnligt.
6. **Gør reelle godkendelser nemme og hurtige.** Vis godkenderen, hvad der bedes om og hvorfor, tillad godkendelse fra en telefon eller pr. mail, og sæt en automatisk påmindelse og en stedfortræder ved fravær.
7. **Automatisér det stabile og hyppige.** Vælg anmodninger, der følger de samme trin hver gang og har lav risiko. Test automatiseringen, og registrér, hvad den gjorde.
8. **Behold en menneskelig vej.** Lad brugere bede om hjælp, når en formular ikke passer til deres behov. Behandl de tilfælde som feedback på modellen.
9. **Adskil anmodninger fra hændelser og ændringer.** Giv hver sin kategori, kø og målinger. Lær desken at omklassificere, når en anmodning viser sig at være en fejl eller en ændring.
10. **Hold øje med ventetiderne.** Mål tid brugt på at vente på godkendelse eller information, ikke kun den samlede tid. Vælg den længste ventetid til at reducere først.
11. **Luk løkken med anmoderen.** Bekræft fuldførelse, spørg om det virkede, og tilbyd en måde at sige, om det ikke gjorde. En anmodning markeret som færdig, men ikke leveret, er værre end en, der stadig er åben.
12. **Gennemgå kataloget over anmodninger jævnligt.** Afvikl anmodninger, ingen stiller, slå næsten-dubletter sammen, og tilføj nye ud fra evidens (se Emne 3.8 — Styring af servicekataloget).

## Spørgsmål til diskussion i teamet

**Hvilke anmodninger håndterer vi oftest, og hvor lang tid tager hver fra start til slut?**

Træk de ti øverste fra det seneste kvartal, og følg den forløbne tid for hver. Markér, hvor hver anmodning venter. Overraskelsen er som regel, at det meste af tiden er ventetid, ikke arbejde. Spørg, hvem der venter på hvem. Facilitatoren kan spørge, hvilken anmodning der ville være lettest at forbedre først.

**Hvilke godkendelser i vores anmodninger har aldrig sagt nej?**

Gennemgå en stikprøve af godkendelser, og tæl afslag. En godkendelse, der aldrig afviser, kan være en forsinkelse uden gavn. Spørg, hvad godkendelsen er til for, og hvem der har gavn. Nogle godkendelser findes af hensyn til revision eller ansvarlighed, hvilket er et legitimt formål, der kan opfyldes på en lettere måde, som at give godkenderen besked bagefter. Vælg én, der skal forenkles.

**Hvad må brugerne fortælle os, som vi allerede ved?**

Se på en anmodningsformular, og markér felter, hvis svar findes i et andet system. Hvert sådant felt er indsats for brugeren og en kilde til fejl. Spørg, hvad der skal til for at forudfylde dem. Vælg ét felt, der skal fjernes eller forudfyldes.

**Hvilke af vores anmodninger kunne gøres uden at et menneske rører ved dem?**

List anmodninger, der følger en fast procedure. Spørg for hver, hvad der forhindrer automatisering: værktøjer, adgang, frygt for fejl. Drøft de sikringer, der ville gøre automatisering acceptabel, som grænser og logs. Vælg én, der skal automatiseres som eksperiment.

**Hvordan finder brugerne ud af, hvad de kan bede om?**

Spørg nogle brugere, hvordan de ville bede om noget usædvanligt. Hvis svaret er "spørg en, jeg kender", virker servicelisten ikke. Drøft, hvordan listen præsenteres, og om navnene giver mening for brugerne. Afprøv et udkast med to eller tre brugere.

**Hvad sker der, når en anmodning viser sig at være noget andet?**

Saml eksempler på anmodninger, der i virkeligheden var hændelser eller ændringer. Spørg, hvad fejlklassificeringen kostede i tid. Drøft, hvordan desken genkender og omklassificerer, og om anmodningsformularen hjælper brugere med at vælge rigtigt. Aftal et enkelt omklassificeringstrin.

## I praksis: et agilt ITIL-eksempel

Et nationalt statistikkontor har 3.000 ansatte og en IT-afdeling på 80. Nye medarbejdere venter rutinemæssigt ti dage på en fungerende bærbar og konti, og ledere klager over, at nye medarbejdere sidder ledige. Servicedesken håndterer onboardinganmodningerne som individuelle tickets, hvor hver af fem teams udfører et trin og giver ticketten videre.

En forbedringsleder kortlægger én onboardinganmodning. Hun finder, at det egentlige arbejde tager omkring tre timer, og resten er ventetid: på at lederen skal give oplysninger, på en budgetgodkendelse af en standardbærbar og på at hvert team bemærker ticketten. Teamet designer en anmodningsmodel til nye medarbejdere. Lederen udfylder én kort formular tre uger før startdatoen, med de fleste felter udfyldt fra HR-systemet. Standardbærbare og konti til rollen er forhåndsgodkendt. Et script opretter konti og grupper; hardware bestilles automatisk fra en lagerliste; desken får en enkelt opgaveliste. Den nye medarbejders leder modtager opdateringer og en bekræftelse.

Efter to måneder falder mediantiden fra anmodning til klar bærbar til tre dage, når formularen indsendes til tiden. Nogle vanskeligheder består. Omkring en tredjedel af lederne indsender stadig formularen sent, så nye medarbejdere venter stadig, og scriptet fejler, når HR-registreringen mangler en afdelingskode, hvilket giver manuelt reparationsarbejde. Teamet tilføjer en påmindelse til HR's onboardingtjekliste, opsætter en alarm for fejlede scripts og begynder at tale med HR om at forbedre data. De beholder også en menneskelig vej for roller, der ikke passer til standardlisten.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams modtager ofte anmodninger, der i virkeligheden er ændringer: et nyt felt, en ny rapport. Hjælp desken med at genkende dem og route dem til jeres backlog. Hvor anmodninger til jeres service er hyppige, som adgang, så byg en selvbetjeningsvej med klare grænser og logning.

### Service- og driftsteams

Driften og desken ejer de fleste anmodningsmodeller. Design de almindelige først, fjern ventetid, og automatisér, hvor det er sikkert. Beskyt tid til at bygge og gennemgå modeller, da anmodningsarbejde let fortrænger forbedringsarbejde. Del data om ventetider med godkendere og ledere.

### Ledelse og governance

Ledere og godkendere former meget af ventetiden. Spørg, hvilke godkendelser der tilfører kontrol, og hvilke der tilfører forsinkelse, og acceptér forhåndsgodkendelse, hvor risikoen er lav. Støt en fælles anmodningsplatform på tværs af funktioner, og bed om målinger af ventetid frem for optællinger af tickets.

### Kunder og brugere

Brugere har gavn af klare navne, korte formularer og ærlige estimater. Giv fuldstændig information, når du beder om noget, og sig, når det haster, og hvorfor. Fortæl teamet, når en anmodning ikke leverede det, du havde brug for, da det forbedrer modellen for den næste person.

## Almindelige fejlmønstre

- **At behandle anmodninger som hændelser eller omvendt.** Prioriteter og rapporter forvrides. I stedet: adskil dem, og lær omklassificering.
- **Formularer, der spørger om for meget.** Brugerne forlader portalen. I stedet: spørg kun om det nødvendige, og forudfyld resten.
- **Godkendelser som ritual.** Hver anmodning venter på en underskrift, der aldrig afviser. I stedet: forhåndsgodkend rutineting, og hold reelle godkendelser hurtige.
- **Automatisering uden sikringer.** Et script laver den forkerte ændring i stor skala. I stedet: test, begræns og log automatisering, og overvåg fejl.
- **Interne navne.** Brugerne kan ikke finde, hvad de har brug for. I stedet: navngiv anmodninger med brugernes ord, og afprøv dem.
- **Ingen menneskelig vej.** Usædvanlige behov falder igennem. I stedet: tilbyd hjælp, og behandl mærkelige anmodninger som feedback.
- **Kun at tælle hastighed.** Anmodninger lukkes for tidligt. I stedet: bekræft med anmoderen, og hold øje med gentagne anmodninger.
- **Aldrig at afvikle anmodninger.** Listen bliver forældet. I stedet: gennemgå brug jævnligt, og fjern det, ingen beder om.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Anmodningsmodeller | Hver anmodning håndteres ad hoc | Modeller findes for nogle hyppige anmodninger | Modeller findes for de øverste anmodninger med ejere og forventede tider | Modellernes ydeevne måles og tunes | Modeller deles på tværs af funktioner og leverandører |
| Godkendelse | Godkendelse er uformel eller af vane | Nogle rutineting er forhåndsgodkendt | Forhåndsgodkendelseslister og hurtige godkendelsesveje er standard | Godkendelsesudfald og ventetider gennemgås | Godkendelsesregler afstemmes på tværs af funktioner ud fra risikodata |
| Automatisering og selvbetjening | Anmodninger håndteres manuelt pr. mail | Nogle anmodninger er tilgængelige i en portal eller automatiserede | Hyppige anmodninger med lav risiko er automatiserede, og selvbetjening er standard | Automatiseringens succes og brugerindsats måles | Automatisering og selvbetjening spænder over IT, HR og faciliteter |
| Læring og forbedring | Anmodninger analyseres ikke | Nogle optællinger indsamles | Ventetider og gentagne anmodninger gennemgås jævnligt | Forbedringer planlægges ud fra data og virkninger tjekkes | Forbedringsideer kommer fra brugere og teams i hele organisationen |

## Tjekliste

- [ ] Vi kender vores ti mest almindelige anmodninger og hvor lang tid hver tager.
- [ ] Hver har en anmodningsmodel: nødvendig information, godkender, trin, ejer, forventet tid.
- [ ] Anmodninger er navngivet med brugernes ord.
- [ ] Formularer spørger kun om nødvendig information og forudfylder, hvad vi ved.
- [ ] Rutineting er forhåndsgodkendt, og reelle godkendelser har en hurtig vej og en stedfortræder.
- [ ] Hyppige anmodninger med lav risiko er automatiserede med tests og logs.
- [ ] Anmodninger, hændelser og ændringer er adskilt med et omklassificeringstrin.
- [ ] Vi måler ventetid såvel som den samlede tid.
- [ ] Anmodere bliver bedt om at bekræfte fuldførelse.
- [ ] Listen over anmodninger gennemgås mindst to gange om året.

## AI-prompts

**Formål: at finde de mest almindelige anmodninger og de længste ventetider.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Formål: at skrive en anmodningsmodel for én anmodning.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at omskrive en anmodningsformular, så den er kortere og klarere.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at beslutte, hvad der skal automatiseres først.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): brug den til at liste de anmodninger, brugerne kan stille, med deres ord og med ejere.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): brug den til at finde de mest almindelige anmodninger og deres mængder.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): brug den til at analysere trinnene og ventetiderne i en anmodning.
- [user-story](../../../../skills/user-story/SKILL.md): brug den til at beskrive en anmodning fra brugerens synsvinkel med acceptkriterier.
- [runbook](../../../../skills/runbook/SKILL.md): brug den til at dokumentere trinnene for anmodninger, der forbliver manuelle.

## Vigtigste kilder

- **IT service management** (Wikipedia): definerer en serviceanmodning, enterprise service management og IT-procesautomatisering.
- **Help desk** (Wikipedia): baggrund om kø-styring og routing for anmodninger, der når en desk.
- **Business process automation** (Wikipedia): generel baggrund om at automatisere rutinearbejde.
- **ITIL** (Wikipedia): konteksten for håndtering af serviceanmodninger i ITIL.

## Referencer

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
