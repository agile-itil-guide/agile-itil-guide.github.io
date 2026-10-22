# Styring af servicekontinuitet

**Styring af servicekontinuitet forbereder en organisation på at holde sine vigtigste services kørende, eller få dem hurtigt tilbage, efter en alvorlig forstyrrelse, og dens værdi bevises kun af øvelser, ikke af planen på hylden.**

## Hvorfor det betyder noget

De fleste hændelser er små og lokale. Nogle få er ikke: en brand i datacenteret, en cloudregion der svigter, et ransomware-angreb, en leverandørs kollaps, en pandemi, en oversvømmelse. Disse begivenheder truer organisationens evne til overhovedet at levere, og at håndtere dem kræver planlægning, som almindelig hændelseshåndtering ikke dækker. Et team, der på forhånd har gennemtænkt, hvad der betyder mest, og hvordan det vil fortsætte, har langt bedre chancer for at komme igennem.

Agile teams møder dette emne med en særlig udfordring. Deres systemer ændrer sig ugentligt, så en kontinuitetsplan skrevet én gang og lagt i skuffen er forældet inden for måneder. Genopretningstrin, der afhang af en bestemt server eller et bestemt script, er måske ikke længere gyldige. Det agile svar er ikke at opgive planlægning, men at gøre kontinuitet til en levende del af, hvordan services bygges og drives: genopretning designet ind, afprøvet ofte og holdt i versionsstyring sammen med koden.

[Wikipedia-artiklen om business continuity planning](https://en.wikipedia.org/wiki/Business_continuity_planning) definerer forretningskontinuitet som en organisations evne til at fortsætte med at levere produkter eller services på acceptable niveauer efter en forstyrrelse og behandler kontinuitetsplanlægning som en delmængde af risikostyring. Den engelske Wikipedias side "Disaster recovery" er kun en flertydighedsside med en meddelelse om, at en fuld artikel ønskes, så dette emne bruger artiklen om forretningskontinuitet til definitioner og tilføjer praktisk vejledning fra vejledningens andre emner, med bemærkning om, hvor det er praksis og ikke rapporteret kildemateriale.

## Kernebegreber

### Kontinuitet, genopretning og modstandsdygtighed

Begreber bruges løst, så brug dem omhyggeligt:

| Begreb | Betydning, som bredt brugt | Fokus |
|---|---|---|
| **Forretningskontinuitet** | Evnen til at fortsætte med at levere produkter eller services på acceptable niveauer efter en forstyrrelse | At holde organisationen i gang |
| **Forretningskontinuitetsplanlægning** | At skabe systemer til forebyggelse og genopretning for trusler mod organisationen | Planerne og arrangementerne |
| **IT-katastrofegenopretning** | At vedligeholde eller genetablere vital informationsteknologisk infrastruktur (beskrivelsen på Wikipedias flertydighedsside) | Teknologien |
| **Servicekontinuitet (ITSM)** | At sikre, at IT-services kan genoprettes til aftalte niveauer efter en forstyrrelse | IT-services inden for den større plan |

Wikipedia-artiklen siger, at katastrofegenopretning overlapper med forretningskontinuitetsplanlægning, især i løsningsfasen, og at kontinuitet er det tilsigtede resultat af at gennemføre begge. Styring af servicekontinuitet er IT-servicesynet på det samme mål.

### Konsekvensanalyse for forretningen

En **business impact analysis (BIA)** er ifølge artiklen en metode til at identificere og vurdere, hvordan forstyrrelser påvirker driften, og til at fastsætte genopretningsprioriteter. Dens mål omfatter at identificere kritiske aktiviteter og afhængigheder, vurdere finansielle, operationelle, omdømmemæssige og juridiske konsekvenser, bestemme genopretningsmål og informere risikovurdering. For IT-services spørger BIA, hvilke services organisationen ikke kan undvære, i hvilken rækkefølge de skal komme tilbage, og hvad hver afhænger af (se Emne 4.4 — Konfigurationsstyring for afhængigheder).

### Genopretningsmål

Artiklen definerer to nøglebegreber:

- **Recovery time objective (RTO):** den acceptable tid til at genoprette en funktion.
- **Recovery point objective (RPO):** den acceptable mængde datalatens, med andre ord hvor stort et datatab der er tolerabelt.

Den opregner også den maksimalt tolerable forstyrrelsesperiode. Artiklen giver ingen metode til at vælge disse værdier for en bestemt organisation, så de må komme fra forretningen: spørg, hvad en time, en dag og en uges nedbrud koster, og hvilke data forretningen har råd til at miste. At fastsætte dem er en forretningsbeslutning med en pris, da omkostningen ved at opfylde et strammere mål stiger (se Emne 3.11 — Tilgængelighed, kapacitet og ydeevne).

### Planer

En kontinuitets- eller genopretningsplan beskriver, hvem der gør hvad, i hvilken rækkefølge, for at genoprette kritiske services efter en forstyrrelse. Den bør dække: hvordan planen aktiveres og af hvem, hvordan folk informeres og samles, rækkefølgen af genopretning for services, hvor genopretningen vil finde sted, hvor data kommer fra, hvordan man kommunikerer med kunder og personale, og hvordan man vender tilbage til normal. Planer for IT-services bør linke til runbooks for de enkelte systemer (se Emne 3.9 — Videnstyring).

### Test og øvelser

Artiklen henviser til en bog fra 2008 fra British Standards Institution, der beskriver tre slags øvelser: en **tabletop**-øvelse, hvor en lille gruppe diskuterer ét aspekt af planen, en **mellemstor** øvelse, hvor flere teams arbejder på flere aspekter med scriptede overraskelser, og en **kompleks** øvelse, der tilføjer aktivering uden varsel, faktisk evakuering og brug af et katastrofegenopretningssted. Den beskriver vedligeholdelse i en årlig eller halvårlig cyklus, inklusive test af tekniske løsninger og genopretningsprocedurer, hvor fund vender tilbage til analysefasen. Øvelser er der, hvor planer opdager, at de er forkerte.

### Genopretningsniveauer

Artiklen nævner SHAREs syv katastrofegenopretningsniveauer (1992), senere opdateret af IBM til otte niveauer (0 til 7). De kilder, der er læst her, detaljerer ikke niveauerne. Som generel praksis klassificerer organisationer services i niveauer efter, hvor hurtigt de skal genoprettes, og matcher genopretningstilgang og omkostning med niveauet.

### Standarder

Artiklen henviser til ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, som erstattede udgaven fra 2012 og kræver, at organisationer definerer kontinuitetsmål, minimalt acceptable serviceniveauer og en maksimalt tolerabel forstyrrelsesperiode. ISO 22313:2020 giver vejledning i at bruge den. Det er standarder for et styringssystem, en organisation kan adoptere; de erstatter ikke praktisk planlægning. Tjek standardens tekst direkte, hvis jeres kunder eller tilsynsmyndigheder kræver konformitet.

### Agil kontinuitet

Agile og DevOps-praksisser hjælper kontinuitet:

- **Infrastruktur og konfiguration som kode** lader miljøer genopbygges fra versionsstyring, hvilket gør genopretning hurtigere og testbar.
- **Automatiserede pipelines** kan genudrulle services til et genopretningssted.
- **Hyppige releases** holder teamet øvet i at udrulle.
- **Jævnlige øvelser** kan behandles som en form for test i backloggen.

De skaber også risici: stærk afhængighed af en enkelt cloudkonto, et CI-system, der selv er et enkelt fejlpunkt, og hemmeligheder gemt, hvor de ikke kan nås i en katastrofe. Planlæg for de værktøjer, selve genopretningen afhænger af.

### Menneskelige faktorer

Artiklen nævner SARS-udbruddet i 2002 til 2003 som et eksempel på opdelte og roterede teams, hvilket er en påmindelse om, at kontinuitet omfatter mennesker: nøglefærdigheder spredt over enkeltpersoner, fjernarbejde, kommunikation når de normale kanaler svigter, og omsorg for personale under stress.

### Kildernes grænser

Artiklen giver ingen metode til at fastsætte mål, ingen vejledning om, hvor ofte man skal teste ud over den årlige eller halvårlige vedligeholdelsescyklus, og ingen værktøjsanbefalinger. Den er en generel forretningsartikel, ikke en IT-artikel. For teknisk genopretningsdetalje brug dokumentationen for jeres egne platforme og vejledningens færdigheder om planlægning og test af katastrofegenopretning.

## God praksis

1. **Start med en konsekvensanalyse for forretningen.** Identificér de services, organisationen ikke kan undvære, omkostningen ved at miste dem over tid, og hvad de afhænger af. Gør det sammen med forretningsejere, ikke for dem.
2. **Sæt genopretningsmål sammen med forretningen.** Aftal for hver kritisk service en genopretningstid og et genopretningspunkt, og registrér omkostningen ved at opfylde dem. Gense dem, når forretningen eller teknologien ændrer sig.
3. **Inddel jeres services i niveauer.** Gruppér services efter, hvor hurtigt de skal tilbage, og anvend den genopretningstilgang, der matcher hvert niveau. Anvend ikke den dyreste tilgang på alt.
4. **Skriv en kort plan, folk kan bruge.** Angiv hvordan planen aktiveres, hvem der beslutter, hvem der gør hvad, hvordan man kommunikerer, og rækkefølgen af genopretning. Hold den til nogle få sider med links til runbooks.
5. **Hold planer sammen med koden og miljøet.** Gem genopretningsscripts, konfiguration og runbooks i versionsstyring, og gennemgå dem, når services ændrer sig. En plan, der ikke opdateres med systemet, vil fejle.
6. **Planlæg for de værktøjer, genopretning afhænger af.** Sørg for, at adgang til pipelinen, hemmelighederne, dokumentationen og kommunikationsværktøjerne overlever tabet af de systemer, de understøtter.
7. **Øv jævnligt.** Start med tabletop-diskussioner, gå videre til tekniske tests af restores og failovers, og kør større øvelser for de mest kritiske services. Planlæg dem som andet arbejde.
8. **Test restores, ikke kun backups.** En backup bevises ved at gendanne fra den. Test, at data kommer tilbage, inden for genopretningspunktet, og at servicen virker med dem (se færdigheden om test af katastrofegenopretning nedenfor).
9. **Behandl fund som backlogpunkter.** Hver øvelse producerer huller. Registrér dem med ejere og datoer, og tjek, at de er udført før næste øvelse.
10. **Planlæg kommunikation.** Beslut, hvem der fortæller kunder, personale, tilsynsmyndigheder og offentligheden hvad, og forbered skabeloner. Medtag uden-for-båndet-måder at nå folk på, hvis normale kanaler er nede (se færdigheden om krisekommunikation nedenfor).
11. **Medtag leverandører.** Spørg kritiske leverandører om deres egne kontinuitetsarrangementer, og medtag dem i øvelser, hvor I kan (se Emne 3.14 — Leverandørstyring).
12. **Gennemgå årligt og efter enhver alvorlig hændelse eller større ændring.** Opdatér analysen, målene og planerne, når forretningen eller teknologien ændrer sig, ikke kun efter kalenderen.

## Spørgsmål til diskussion i teamet

**Hvilke af vores services skal tilbage først, og hvordan ved vi det?**

Bed hver person rangere services i rækkefølge efter genopretningsprioritet. Sammenlign. Uenighed er informativ: den viser, at rækkefølgen aldrig er aftalt med forretningen. Facilitatoren kan spørge, hvad det ville koste organisationen for hver at være nede i en time, en dag og en uge. Tag spørgsmålet med til forretningsejere, og aftal en liste.

**Hvor mange data kunne vi miste, og har nogen aftalt det?**

Spørg, hvornår den seneste backup af nøgledata blev taget og hvor ofte. Sammenlign med, hvad forretningen ville tolerere. Mange teams finder, at svaret ikke er det, de antog. Drøft, hvad et strammere genopretningspunkt ville koste. Registrér beslutningen og hvem der traf den.

**Hvornår gendannede vi sidst fra en backup, og hvad skete der?**

Bed om en rigtig dato og et rigtigt resultat. Hvis svaret er "aldrig", er det det vigtigste fund. Hvis det blev gjort, så spørg, hvad der gik galt, og hvad der blev rettet. Planlæg en restore-test for en kritisk service i den næste måned.

**Hvad har vi brug for at genoprette, som afhænger af det, der er svigtet?**

Gennemgå et scenarie som tab af en cloudkonto eller et datacenter. Spørg, hvor runbooks, hemmeligheder og pipeline bor. Afhængigheder af det svigtede system er almindelige, som en runbook gemt på en server, der er nede. List dem, og planlæg at flytte eller kopiere hver.

**Hvem har beføjelse til at erklære en katastrofe og starte planen?**

Spørg folk, hvem der ville beslutte, og om de ved det. Forsinkelse i at aktivere en plan koster tid. Drøft en klar regel og en stedfortræder. Tjek, hvordan personen nås, hvis de sædvanlige kanaler er nede.

**Hvad ville vi gøre, hvis de folk, der ved mest, ikke var tilgængelige?**

Forestil dig, at nøglepersonale er uden for rækkevidde. Spørg, hvem andre der kunne gennemføre genopretningen, og hvad de ville have brug for. Dette spørgsmål forbinder kontinuitet med videnstyring. Planlæg én måde at sprede kritisk viden på.

## I praksis: et agilt ITIL-eksempel

En provinsregerings tinglysningskontor driver en onlineservice, hvor jurister og landinspektører indgiver ejendomstransaktioner. Et team på tolv bygger og driver den, med en enkelt cloududbyders region. En gennemgang af forretningskontinuitet finder, at servicen er klassificeret som kritisk af ministeriet, med en forventning om, at den kan genoprettes inden for fire timer, og at ingen nogensinde har testet, om det er muligt.

Teamet starter med en tabletop-øvelse. Scenariet: cloudregionen er utilgængelig i en dag. De opdager, at runbooks er gemt i en wiki hostet i samme region, at infrastrukturkoden kun dækker en del af miljøet, og at databasebackups kopieres til samme region. Ministeriets forventning om fire timer viser sig at være skrevet af en leder for år siden og aldrig opgjort i omkostninger. Teamet og ministeriets forretningsejer mødes. Ejeren forklarer, hvad et nedbrud på en dag ville betyde for indgivelsesfrister, og er enig i, at fire timer er nødvendigt på indgivelsesdage ved månedsslut, men otte timer er acceptabelt på andre tidspunkter.

Teamet kopierer runbooks og backups til en anden region, fuldfører infrastrukturkoden og genopbygger miljøet fra kode i en testregion i en endagsøvelse. Første forsøg tager elleve timer, mest på grund af manuelle trin og en manglende hemmelighed. Efter rettelser tager et andet forsøg fem. Nogle problemer består. Månedsslutmålet på fire timer er stadig uden for rækkevidde, identitetsudbyderen, som personalet bruger til at logge ind, har ikke noget genopretningsarrangement af sit eget, og teamet indser, at det afhænger af en leverandør, hvis kontinuitetsplan det aldrig har set. Teamet sætter identitetsudbyderen og leverandørspørgsmålet på backloggen, og ministeriet accepterer en længere genopretningstid for ikke-spidsperioder, mens arbejdet fortsætter.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams gør genopretning mulig eller umulig gennem design. Byg services, så de kan genopbygges fra kode, hold data replikeret, og skriv genopretningstrin som en del af færdig. Deltag i øvelser, og ret de huller, de finder.

### Service- og driftsteams

Driftsteams holder planerne og kører øvelserne. Hold planer korte og knyttet til runbooks, test restores og failovers, og gør genopretningens afhængigheder synlige. Spor fundene fra hver øvelse, til de er lukket.

### Ledelse og governance

Ledere sætter målene og betaler for dem. Bed om konsekvensanalysen for forretningen og genopretningsmålene, forstå hvad de koster, og deltag i en øvelse. Acceptér, at nogle services vil tage længere tid at genoprette, og træf beslutningen med vilje.

### Kunder og brugere

Kunder og brugere afhænger af, at servicen fortsætter eller vender tilbage. Fortæl leverandøren, hvor længe du kan undvære den, og hvilke data du ikke kan miste. Spørg om deres kontinuitetsarrangementer og hvad du bør gøre i en katastrofe, som en alternativ måde at indsende hasteopgaver på.

## Almindelige fejlmønstre

- **En plan, ingen har testet.** Den første test er katastrofen. I stedet: start med tabletop-øvelser, og gå videre til tekniske restores.
- **Mål, ingen har aftalt.** Genopretningstiden blev skrevet af en, der er rejst. I stedet: sæt genopretningstid og -punkt sammen med forretningsejere, og registrér omkostningen.
- **Backups, der aldrig gendannes.** Backups findes, men restore fejler. I stedet: test restores efter en plan, og mål tiden.
- **Genopretning afhænger af det, der svigtede.** Runbooks, hemmeligheder og værktøjer sidder i det svigtede system. I stedet: kortlæg genopretningens afhængigheder, og hold kopier andre steder.
- **Ét niveau til alt.** Alle services får den dyreste behandling, eller ingen gør. I stedet: inddel services i niveauer efter behov.
- **Forældede planer.** Systemer ændrer sig, og planer gør ikke. I stedet: hold planer sammen med koden, og gennemgå dem, når services ændrer sig.
- **At ignorere folk.** Planer antager, at det sædvanlige personale er tilgængeligt. I stedet: planlæg for fravær og for kommunikation, når kanaler er nede.
- **At ignorere leverandører.** Kritiske afhængigheder har ingen kontinuitetsarrangementer. I stedet: spørg leverandører, og medtag dem i øvelser.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Konsekvensanalyse og mål | Kritiske services antages | Nogle services har grove genopretningsmål | Kritiske services har aftalt genopretningstid og -punkt, med omkostninger | Mål gennemgås mod øvelsesresultater og forretningsændringer | Mål afstemmes med kunder, leverandører og tilsynsmyndigheder |
| Planer og genopretningsdesign | Genopretning improviseres | Nogle services har genopretningsnoter | Planer og genopretningskode findes for kritiske services og holdes sammen med systemet | Planens aktualitet og genopretningstid måles og forbedres | Genopretning koordineres på tværs af services, teams og leverandører |
| Øvelser og test | Lidt eller ingen test | Nogle restores testes | Tabletop- og tekniske tests sker efter en plan | Fund spores til lukning, og tests tunes efter risiko | Øvelser omfatter leverandører og spænder over organisationer |
| Kommunikation og mennesker | Kommunikation er ad hoc | Nogle kontaktlister findes | Planer dækker hvem der fortæller hvem, med uden-for-båndet-veje og stedfortrædere | Kommunikations- og bemandingshuller måles og lukkes | Kommunikation indøves med kunder, leverandører og tilsynsmyndigheder |

## Tjekliste

- [ ] Vi har identificeret vores kritiske services sammen med forretningsejere.
- [ ] Hver kritisk service har en aftalt genopretningstid og et genopretningspunkt, med omkostningen kendt.
- [ ] Services er grupperet i niveauer, der matcher deres genopretningsbehov.
- [ ] En kort genopretningsplan findes, med hvem der kan aktivere den og hvordan de nås.
- [ ] Genopretningskode, konfiguration og runbooks er i versionsstyring og gennemgås med ændringer.
- [ ] Runbooks, hemmeligheder og værktøjer, der er nødvendige for genopretning, overlever tabet af det primære miljø.
- [ ] En restore fra backup er testet for hver kritisk service inden for det seneste år.
- [ ] En tabletop-øvelse er holdt inden for det seneste år, og fund spores.
- [ ] Kommunikationsskabeloner og uden-for-båndet-veje findes.
- [ ] Kritiske leverandører er blevet spurgt om deres egne kontinuitetsarrangementer.

## AI-prompts

**Formål: at udarbejde spørgsmålene til en konsekvensanalyse for forretningen.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en tabletop-øvelse.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at gøre øvelsesnoter til en hulliste.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Formål: at skrive en kort genopretningsplandisposition for én service.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): brug den til at skrive den plan på organisationsniveau, der holder kritiske funktioner i gang.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): brug den til at planlægge teknisk genopretning af IT-services.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): brug den til at designe restore- og failover-tests.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): brug den til at planlægge, hvad I fortæller kunder, personale og offentligheden under en forstyrrelse.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere kontinuitetsrisici og hvordan de styres.

## Vigtigste kilder

- **Business continuity planning** (Wikipedia): definitioner af kontinuitet, konsekvensanalyse for forretningen, genopretningsmål, øvelser og standarder.
- **ISO 22301** (International Organization for Standardization): kravstandarden for styringssystemer for forretningskontinuitet; læs standarden for påstande om konformitet.
- **Incident management** (Wikipedia): oversigten over flere felter, der placerer kontinuitet ved siden af hændelsesindsats.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): pålidelighedens økonomi, der rammer genopretningsmål ind.

## Referencer

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
