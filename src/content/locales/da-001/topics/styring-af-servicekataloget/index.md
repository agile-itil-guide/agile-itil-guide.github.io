# Styring af servicekataloget

**Et servicekatalog (ITIL skriver det "service catalogue") er en kurateret liste over, hvad en organisation tilbyder, med en ejer og en enkel beskrivelse for hver service, og dets værdi afhænger af, om brugerne finder det nyttigt, og ejerne holder det sandt.**

## Hvorfor det betyder noget

Spørg en bruger, hvad IT tilbyder, og du får ofte et vagt svar. Spørg IT-teamet, og du får en liste over systemer. De to lister stemmer sjældent overens, og hullet skaber misforståelser: brugere beder om ting, der ikke findes, teams supporterer services, ingen bruger, og ingen kan sige, hvem der er ansvarlig for hvad. Et servicekatalog lukker det hul ved at angive, ét sted og i enkle vendinger, hvad der tilbydes, og hvem der står bag.

For agile teams er kataloget også en måde at gøre ejerskab synligt på. Et team, der bygger og driver en service, bør kunne sige: "Det her er, hvad vi tilbyder, det her er, hvem man spørger, det her er, hvad man kan forvente." Uden det kommer anmodninger det forkerte sted hen, hændelser preller mellem teams, og nyt personale kan ikke finde hjælp.

[Wikipedia-artiklen om servicekataloger](https://en.wikipedia.org/wiki/Service_catalog) beskriver et servicekatalog som en organiseret og kurateret samling af forretnings- og informationsteknologiservices i en virksomhed, der tjener som et videnstyringsværktøj, som udpeger fageksperter for hver opført service. Den bemærker, at ITILs Service Design-bind definerer et IT-servicekatalog som en udtømmende liste over services, der kun er IT, og den eneste del af serviceporteføljen, der udgives til kunderne, uden at angive ITIL-udgaven. Dette emne bygger på den beskrivelse og på vejledningens andre emner og holder kataloget praktisk og let.

## Kernebegreber

### Hvad der er i et katalog

Ifølge Wikipedia omfatter hver post i et servicekatalog typisk en navngiven ejer, en beskrivelse, en kategori, relaterede anmodningstyper, underliggende services, rettigheder, omkostninger, hvordan servicen anmodes om og opfyldes samt eskaleringskontakter. Almindelige kategorier omfatter IT, drift og opfyldelse. Du behøver ikke alle disse for hver service. Et godt katalog starter med de få, som brugere og supportpersonale faktisk har brug for.

| Felt | Hvorfor det hjælper | Hvem bruger det |
|---|---|---|
| **Navn og beskrivelse i almindelige ord** | Brugerne genkender, hvad der tilbydes | Brugere, servicedesk |
| **Ejer** | Nogen svarer for servicen | Alle |
| **Hvem kan bruge den (rettighed)** | Undgår spildte anmodninger | Brugere, servicedesk |
| **Hvordan man anmoder om eller får hjælp** | Fører brugerne til det rette sted | Brugere, servicedesk |
| **Hvad den afhænger af (underliggende services)** | Viser, hvad andet der må virke | Drift, leveranceteams |
| **Omkostning, hvis der opkræves** | Understøtter beslutninger og budgetter | Kunder, økonomi |
| **Serviceniveau eller forventning** | Sætter forventninger | Brugere, kunder (se Emne 3.7 — Styring af serviceniveauer) |
| **Eskaleringskontakt** | Fremskynder hjælp under problemer | Servicedesk, drift |

### Katalog og portefølje

Wikipedia-artiklen placerer IT-servicekataloget som en delmængde af det bredere virksomhedskatalog. I ITIL-ordforråd er serviceporteføljen det komplette sæt af services, inklusive dem under udvikling og dem, der er ved at blive afviklet, og kataloget er den del, der udgives til kunderne. De kilder, der er læst her, definerer ikke porteføljen i detaljer: artiklen om serviceporteføljestyring omdirigerer til IT-porteføljestyring, som kun siger, at ITIL v3 kræver en praksis for serviceporteføljestyring, der ser ud til at være funktionelt ækvivalent med IT-porteføljestyring. Behandl porteføljeideen som: kataloget er det, du tilbyder nu, og porteføljen er også det, du bygger og afvikler (se Emne 5.7 — Governance, risiko og compliance for porteføljevalg).

### Virksomheds- og IT-kataloger

Et virksomhedsservicekatalog dækker services fra flere funktioner, som HR, faciliteter og IT. Et IT-servicekatalog er en delmængde. Artiklen nævner fordele ved et katalog: at centralisere services på tværs af distribuerede virksomheder, identificere servicehuller og -redundans, spore ressourcetildeling og måle servicens efterspørgsel, udbud, godkendelsestider, leveringstider og økonomi. For cloudservices nævner den selvforsyning og standardiserede definitioner, der hjælper kapacitetsplanlægning og købsprognoser. Det er påstande fra artiklen, baseret på dens citerede kilder.

### Forretningssyn og teknisk syn

Mange organisationer skelner mellem det, kunderne ser, og det, leverandøren har brug for internt. De kilder, der er læst her, gør ikke den skelnen, så behandl det som almindelig praksis. **Det kundevendte syn** lister services i brugerens begreber ("Mail og kalender"). **Det tekniske syn** lister komponenter og teams bag dem ("Mailservere, spamfilter, katalogservice"). Kundesynet hjælper brugerne med at vælge. Det tekniske syn hjælper driften med at forstå afhængigheder (se Emne 4.4 — Konfigurationsstyring). Hold de to koblet, men adskilt, så brugerne ikke konfronteres med komponentnavne.

### Kataloget som videnværktøj

Wikipedia-artiklen understreger, at kataloget udpeger fageksperter for hver service. Det gør det til et kort over, hvem der ved hvad. Et katalog, der holdes ajour, hjælper servicedesken med at route kontakter, hjælper nyt personale med at finde hjælp og hjælper hændelsesresponders med at nå den rette person (se Emne 3.9 — Videnstyring).

### Katalog og anmodninger

Kataloget omfatter som regel de anmodninger, brugere kan stille for hver service, som "anmod om adgang" eller "rapportér en fejl". En anmodningsmodel beskriver, hvordan hver opfyldes (se Emne 3.6 — Håndtering af serviceanmodninger). Ikke hver service har brug for anmodninger, og ikke hver anmodning har brug for en katalogpost, men hyppige anmodninger bør være lette at finde.

### At holde det sandt

Et katalog bliver hurtigt forældet, hvis ingen ejer det. Services ændrer sig, teams omorganiseres, og beskrivelser driver væk fra virkeligheden. Den mest nyttige disciplin er en gennemgangscyklus: hver ejer bekræfter sine poster efter en plan, og ubrugte services afvikles. Wikipedia-artiklen diskuterer ikke kritik eller grænser, men den praktiske erfaring er konsekvent: et katalog, der er forkert, er værre end intet katalog, fordi det sender folk det forkerte sted hen med selvsikkerhed.

### Kataloger og agile teams

Agile teams modsætter sig ofte tunge kataloger, fordi de forventer bureaukrati. Et let katalog er foreneligt med agile arbejdsmåder. Det kan være et fælles dokument eller en side, vedligeholdt af ejerne selv, med nogle få felter pr. service. Testen er brug: konsulterer brugerne og desken det faktisk?

## God praksis

1. **List services med brugernes ord.** Start med at spørge brugere og servicedesken, hvad de ville kalde hver ting. Navngiv services efter, hvad brugerne gør ("Deltag i et videomøde"), og ikke efter teknologi ("Konferenceplatform").
2. **Giv hver service en navngiven ejer.** Én person bør svare for hver service. Hvor en service har flere dele, så navngiv en ejer for helheden og list bidragyderne.
3. **Start småt.** Begynd med de 10 til 20 services, brugerne oftest spørger om. Tilføj flere, efterhånden som I lærer, hvad der er nyttigt. En kort, nøjagtig liste er bedre end en lang, forældet.
4. **Medtag kun det, folk bruger.** Spørg for hvert felt, hvem der bruger det og til hvad. Fjern felter, ingen bruger. Tilføj kun et felt, når nogen har brug for det.
5. **Link til anmodninger og hjælp.** Vis for hver service, hvordan man beder om noget, rapporterer en fejl og finder hjælp. Link til vidensbasen (se Emne 3.9 — Videnstyring).
6. **Vis serviceforventninger.** Angiv, hvad brugerne kan forvente, som supporttider og typisk respons, i almindelige vendinger. Link til den formelle aftale, hvor der er en.
7. **Registrér afhængigheder.** Notér for hver service de vigtigste services og leverandører, den stoler på. Det hjælper hændelsesindsatsen og ændringsplanlægningen.
8. **Adskil kundesynet fra det tekniske syn.** Hold brugervendte beskrivelser fri for jargon. Link dem til tekniske registre, hvor sådanne findes.
9. **Gennemgå efter en plan.** Bed hver ejer om at bekræfte sine poster mindst to gange om året, og afvikl services, ingen bruger. Vis datoen for sidste gennemgang på hver post.
10. **Gør det nemt at finde og bruge.** Placér kataloget, hvor brugerne allerede kigger, som intranettet eller portalen. Afprøv søgningen med rigtige forespørgsler.
11. **Brug kataloget til at finde huller og overlap.** Se efter services, ingen ejer, services der duplikerer hinanden, og anmodninger uden en matchende service. Tag fundene med til planlægningen (se Emne 5.5 — Produkt- og serviceejerskab).
12. **Behandl katalogændringer som serviceændringer.** Når I tilføjer, ændrer eller afvikler en service, så annoncér det til desken og de berørte brugere, som I ville en release.

## Spørgsmål til diskussion i teamet

**Hvis en ny kollega spurgte, hvad vi tilbyder, hvad ville vi svare, og ville vi alle sige det samme?**

Bed hver person liste services på to minutter, og sammenlign derefter. Forskelle viser, hvor uskarpe grænserne er. Facilitatoren kan spørge, hvilke punkter brugerne ikke ville genkende. Brug den kombinerede liste som et udkast til et katalog, og markér punkter, hvor der er uenighed.

**Hvilke services har ingen klar ejer?**

Gennemgå listen, og markér dem, hvor ingen kan sige, hvem der svarer for servicen. Services uden ejer forårsager ofte de længste forsinkelser i hændelser og anmodninger. Spørg, hvad der forhindrer en person i at tage ejerskab: tid, beføjelse eller uklare grænser. Aftal en ejer eller en beslutning om at afvikle for hver.

**Hvad beder brugerne om, som vi ikke lister, og hvad lister vi, som ingen beder om?**

Sammenlign anmodningsdata med listen. Anmodninger uden en matchende service afslører huller; opførte services uden anmodninger afslører kandidater til afvikling. Vær forsigtig: nogle services bruges lydløst. Spørg brugerne, før I fjerner noget. Vælg ét hul og én kandidat, der skal undersøges.

**Hvad ville en bruger have brug for at se for at vælge den rette service uden at ringe til os?**

Tag et almindeligt valg, som hvilket værktøj man skal bruge til at dele filer. Spørg, hvilken information der ville hjælpe: en kort beskrivelse, hvem den er til, en sammenligning. Udkast en post på et afsnit, og afprøv den med to brugere. Målet er et katalog, der afleder opkald ved at være klart.

**Hvordan finder vi ud af, at en service har ændret sig, og kataloget er forældet?**

Spørg, hvornår den seneste gennemgang fandt sted, og hvem der gjorde den. Drøft udløsere, som en omorganisering eller en større release, og en jævnlig cyklus. En synlig "sidst gennemgået"-dato på hver post hjælper. Aftal den første gennemgangsdato og hvem der er ansvarlig.

**Hvad afhænger vi af, som ikke er i kataloget?**

List de platforme og leverandører, der ligger bag jeres services. Spørg, hvilke der er opført, og hvem der ejer dem. Afhængigheder uden ejer er risici. Vælg én, der skal tilføjes til det tekniske syn.

## I praksis: et agilt ITIL-eksempel

En regional kommunes IT-afdeling har 120 ansatte, der betjener 2.500 kommunalt ansatte og flere borgervendte services. Personalet klager over, at de ikke ved, hvem de skal spørge om hjælp, og servicedesken bruger meget af sin tid på at omdirigere opkald. Kommunen byggede engang et servicekatalog med 300 poster, men det bruges sjældent og er for det meste forældet.

Chefen for servicelevering beslutter at starte forfra, småt. Hun beder servicedesken om de 30 hyppigste grunde til, at folk kontakter dem, og grupperer dem i 15 services med brugernes ord: "Mail og kalender", "Filer og deling", "Bærbare og enheder", "Kommunens hjemmeside", "Økonomisystemet" og så videre. For hver skriver en navngiven ejer fire ting: en beskrivelse på to sætninger, hvem den er til, hvordan man får hjælp, og hvad man kan forvente. Afhængigheder registreres i en separat teknisk liste til driften. Kataloget er en enkelt webside på kommunens intranet, og hver post viser datoen for, hvornår ejeren sidst bekræftede den.

Efter tre måneder falder opkald til desken om, hvem man skal spørge, og ejerne bemærker huller: ingen ejede mødelokalebookingsystemet, og to services overlappede. De bliver tildelt og slået sammen. Problemer består. Tre ejere har ikke bekræftet deres poster, og nogle ansatte ringer stadig til desken af vane. Chefen for servicelevering sætter en påmindelsescyklus og arrangerer, at desken peger opkaldere til kataloget, mens den håndterer deres anmodning. Hun finder også, at nogle poster er skrevet i teknisk sprog, og beder en kommunikationsmedarbejder gennemgå dem.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bør navngives som ejere af de services, de bygger og driver, og bør holde deres poster ajour. Når I lancerer eller afvikler en service, så opdatér kataloget og fortæl servicedesken det. Brug kataloget til at finde ud af, hvem man skal tale med om en afhængighed.

### Service- og driftsteams

Driften og servicedesken er de tungeste brugere. Fortæl ejerne, hvad der er galt eller mangler i poster, og brug kataloget til routing og eskalering. Hold det tekniske syn koblet til kundesynet, så hændelsesresponders kan se, hvad der afhænger af hvad.

### Ledelse og governance

Ledere kan bruge kataloget til at se, hvad organisationen tilbyder, hvad der overlapper, og hvad der er forældreløst. Bed om, at huller og dubletter adresseres, og at ejere navngives. Kræv ikke hvert felt for hver service; bed om det, der understøtter beslutninger.

### Kunder og brugere

Kunder og brugere får et klart billede af, hvad de kan bede om, og hvad de kan forvente. Brug kataloget til at finde den rette service, og fortæl ejerne, når en post er forkert eller uklar. Hvis du ikke kan finde, hvad du har brug for, så sig det, da det er evidens for et hul.

## Almindelige fejlmønstre

- **For stort, for tidligt.** Hundredvis af poster oprettes og vedligeholdes ikke. I stedet: start med de mest brugte services, og vokse.
- **Skrevet i leverandørens sprog.** Brugerne kan ikke finde, hvad de har brug for. I stedet: navngiv services efter, hvad brugerne gør, og afprøv med brugere.
- **Ingen ejere.** Ingen holder poster sande. I stedet: navngiv en ejer for hver post, og vis gennemgangsdatoer.
- **Et katalog, ingen bruger.** Det ligger på et sted, brugerne ikke besøger. I stedet: placér det, hvor folk allerede kigger, og lad desken pege på det.
- **At blande kunde- og teknisk syn.** Brugerne møder komponentnavne. I stedet: hold et klart kundesyn, og link et teknisk til driften.
- **Ingen afvikling.** Døde services forbliver opført. I stedet: gennemgå brug, og afvikl det, ingen har brug for.
- **At behandle det som et engangsprojekt.** Kataloget bliver forældet efter lanceringen. I stedet: sæt en gennemgangscyklus, og gør det til en del af ændringer.
- **For mange obligatoriske felter.** Ejere udfylder felter for at tilfredsstille skabelonen. I stedet: kræv kun det, nogen bruger.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Dækning og klarhed | Services er kendt uformelt | En liste over nogle services findes | Et katalog over hovedservices med brugernes ord og ejere | Brug og huller måles, og kataloget justeres | Kataloget spænder over funktioner og partnere og formes sammen med brugere |
| Ejerskab og aktualitet | Ingen ejer listen | Nogle ejere bekræfter poster lejlighedsvis | Hver post har en ejer og en gennemgangsdato | Overskredne gennemgange spores og løses | Ejerskab og gennemgang er rutine i hele organisationen |
| Kobling til anmodninger og hjælp | Anmodninger går pr. mail eller telefon | Nogle poster linker til formularer eller hjælp | Poster linker til anmodninger, viden og supportveje | Gennemklik og afledning måles | Anmodninger, viden og support er integreret på tværs af funktioner |
| Afhængigheder og beslutninger | Afhængigheder er stammeviden | Nogle afhængigheder er listet | Afhængigheder er registreret og bruges i hændelses- og ændringsarbejde | Afhængighedsdata understøtter planlægning og risikogennemgang | Afhængigheder deles med leverandører og bruges til at planlægge sammen |

## Tjekliste

- [ ] Vi har en liste over services med brugernes ord, begyndende med de mest brugte.
- [ ] Hver service har en navngiven ejer.
- [ ] Hver post siger, hvem den er til, hvordan man får hjælp, og hvad man kan forvente.
- [ ] Kataloget er der, hvor brugerne og servicedesken allerede kigger.
- [ ] Poster viser datoen for, hvornår de sidst blev bekræftet.
- [ ] Ejere gennemgår deres poster mindst to gange om året.
- [ ] Hovedafhængigheder er registreret i et teknisk syn.
- [ ] Ubrugte services gennemgås til afvikling.
- [ ] Tilføjelse, ændring eller afvikling af en service annonceres til desken og brugerne.
- [ ] Vi har afprøvet kataloget med rigtige brugerforespørgsler.

## AI-prompts

**Formål: at gøre kontaktdata til et udkast til en liste over services med brugernes ord.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Formål: at skrive en klar katalogpost.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gennemgå et katalog for huller, overlap og forældreløse poster.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Formål: at planlægge en katalogsgennemgang med ejere.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): brug den til at udarbejde poster og strukturere et servicekatalog.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): brug den til at forstå, hvem der bruger hver service, og hvad de har brug for.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): brug den til at finde, hvilke anmodninger og services der bruges mest.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at registrere, hvem der ejer, supporterer og høres om hver service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): brug den til at planlægge, hvordan services tilføjes, ændres eller afvikles over tid.

## Vigtigste kilder

- **Service catalog** (Wikipedia): en kort beskrivelse af indhold, fordele og ITIL-definitionen af et IT-servicekatalog.
- **IT portfolio management** (Wikipedia): baggrund om porteføljebegreber, inklusive noten om at ITIL v3s serviceporteføljestyring ser ud til at være funktionelt ækvivalent.
- **ITIL** (Wikipedia): kontekst om ITIL-versioner og hvor katalog- og porteføljeideer kommer fra.
- **Knowledge management** (Wikipedia): baggrund om, hvordan kataloger fungerer som videnværktøjer.

## Referencer

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
