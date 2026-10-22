# Tilgængelighed, kapacitet og ydeevne

**Tilgængelighed, kapacitet og ydeevne er tre syn på, om en service er der, stor nok og hurtig nok, når brugerne har brug for den, og den agile tilgang er at vælge mål ud fra brugerbehov, prissætte dem ærligt og afprøve dem, før efterspørgslen kommer.**

## Hvorfor det betyder noget

Brugere skiller ikke de tre ad. En service, der er "oppe", men for langsom til at bruge, har svigtet dem, og en service, der er hurtig på en stille dag og vælter ved spidsbelastning, har svigtet dem i det øjeblik, de har mest brug for den. Teams, der ser på tilgængelighed, kapacitet og ydeevne hver for sig, overser ofte, hvordan de påvirker hinanden: at tilføje kapacitet ændrer omkostning og kompleksitet, at jage perfekt tilgængelighed begrænser, hvor hurtigt man kan ændre, og at tune til fart kan reducere modstandsdygtighed.

Agile teams står over for en særlig udgave af problemet. De ændrer servicen ofte, og hver ændring kan ændre ydeevne eller ressourcebehov på måder, ingen har testet. De har også tendens til at arbejde mod korte tidshorisonter, så kapacitetsbehov, der tager måneder at arrangere, som hardware, kontrakter eller licenser, kan blive overset. Praksisserne i dette emne giver en måde at se frem på uden at vende tilbage til langtidsplanlægning for dens egen skyld.

Googles bog *Site Reliability Engineering* er i sit kapitel "Embracing Risk" en klar kilde til tilgængelighedens økonomi: den siger, at dens tilgang ikke sigter mod 100 % pålidelighed, fordi det ud over et punkt at maksimere stabilitet begrænser, hvor hurtigt nye funktioner kan udvikles, og pålidelighedens omkostninger stiger stejlt. [Wikipedia-artiklen om capacity planning](https://en.wikipedia.org/wiki/Capacity_planning) giver generelle definitioner og strategier. Begge er partielle, og ITIL-ordforrådet, der bruges her, kommer fra bredt udgivne beskrivelser, som denne vejledning ikke kunne bekræfte mod rammeværksejerens tekst.

## Kernebegreber

### Tilgængelighed

**Tilgængelighed** er en services evne til at gøre, hvad brugerne har brug for, når de har brug for det. En almindelig måde at udtrykke den på er som en procentdel over en periode. SRE-kapitlet nævner to måder at måle den på. For et enkelt system er tilgængelighed tidsbaseret: 99,99 % tillader omkring 52,56 minutters uplanlagt nedetid om året. For distribuerede services, der til enhver tid er delvist oppe, måles den bedre som anmodningernes succesrate over et glidende vindue; kapitlets eksempel er en service med 2,5 millioner daglige anmodninger og et mål på 99,99 %, som tillader op til 250 fejl. Kapitlet fokuserer på uplanlagt nedetid. Planlagt nedetid har brug for sin egen aftale med brugerne.

### Prisen for hvert ekstra ni

Kapitlet siger, at pålidelighedens omkostninger stiger ulineært: ét ekstra ni kan koste 100 gange det forrige trin, inklusive redundante ressourcer og alternativomkostningen ved ingeniører, der ikke bygger brugervendte funktioner. Det giver en illustration: at hæve tilgængeligheden fra 99,9 % til 99,99 % på en service med 1 million USD i omsætning er omkring 900 USD værd, så investeringen betaler sig kun, hvis det ekstra ni koster mindre end det. Tallene er kildens eksempel, og dine egne må komme fra din egen omsætning eller værdi. Princippet holder: vælg den tilgængelighed, brugerne har brug for, og prissæt alt ud over den.

### Risikotolerance

Kapitlet beskriver at arbejde med product owners for at gøre forretningsmål til eksplicitte mål. Faktorer omfatter den krævede tilgængelighed, fejlenes form (en konstant lav fejlrate mod lejlighedsvise fuldstændige nedbrud, hvor dataeksponering er særligt alvorlig), omkostning og andre målinger som latenstid. Det bemærker, at infrastruktur, der betjener mange klienter, kan tilbydes på eksplicit definerede serviceniveauer, så hver klient vælger det billigste niveau, der opfylder dens behov.

### Fejlbudgetter

Kapitlet forklarer fejlbudgettet som en fælles, objektiv måling mellem produktteams, som måles på hastighed, og pålidelighedsteams, som måles på pålidelighed. Så længe der er budget tilbage, fortsætter releases. Når det er brugt, bremser releases, og indsatsen flyttes til pålidelighed (se Emne 3.7 — Styring af serviceniveauer).

### Kapacitet

Wikipedia-artiklen definerer kapacitetsplanlægning som at bestemme den produktionskapacitet, en organisation har brug for til at imødekomme skiftende efterspørgsel, og siger, at det i IT er et synonym for kapacitetsstyring: at estimere de lager-, hardware-, software- og forbindelsesressourcer, der er nødvendige over en fremtidig periode. Artiklen skelner mellem **designkapacitet**, det maksimalt mulige output, og **effektiv kapacitet**, outputtet efter begrænsninger. I praksis planlæg efter effektiv kapacitet, som altid er lavere end designtallet.

### Kapacitetsstrategier

Artiklen beskriver fire strategier for at tilføje kapacitet:

| Strategi | Hvad det betyder | Afvejning |
|---|---|---|
| **Lead** | Tilføj kapacitet forud for efterspørgslen | God service og korte leveringstider, men risikabelt, hvis efterspørgslen er uforudsigelig |
| **Lag** | Tilføj kun kapacitet, efter man har kørt på eller ud over fuld kapacitet | Lavere risiko for overbygning, men kan miste kunder |
| **Match** | Tilføj kapacitet i små trin, efterhånden som efterspørgslen ændrer sig | Afbalanceret, kræver god overvågning |
| **Justering** | Tilføj eller reducér kapacitet med små eller store beløb, efterhånden som efterspørgsel eller arkitektur ændrer sig | Fleksibel, kræver hurtig provisionering |

Artiklen beskriver kort-, mellem- og langsigtet planlægning (operationel, taktisk og strategisk), fra dage til år. I en cloudsammenhæng er "match" og justering ofte lettere, fordi ressourcer kan tilføjes hurtigt, men omkostninger og kontrakter skal stadig planlægges (se Emne 4.5 — IT-økonomistyring og FinOps).

### Ydeevne

**Ydeevne** er, hvor hurtigt og hvor godt servicen svarer. SRE-bogens kapitel om overvågning foreslår at måle latenstid, trafik, fejl og mætning, og det advarer om, at gennemsnit skjuler langsomme yderpunkter (se Emne 3.10 — Overvågning og eventstyring). Mætning, hvor "fuld" servicen er, forbinder ydeevne med kapacitet: kapitlet bemærker, at ydeevnen ofte forringes før 100 % udnyttelse.

### Hvordan de tre påvirker hinanden

- Mere kapacitet kan hæve tilgængelighed og ydeevne, til en pris.
- Høje tilgængelighedsmål kræver som regel redundans, som er ekstra kapacitet.
- At tune til spidsydeevne kan reducere rummet til fejl.
- Ændringer af servicen ændrer alle tre, og derfor betyder test noget.

En nyttig disciplin er at angive målene sammen for hver service: hvor tilgængelig, hvor hurtig og hvor meget belastning den skal bære.

### Efterspørgsel og prognoser

Kapacitet afhænger af efterspørgsel. Efterspørgsel kommer fra brugere og fra forretningen: markedsføringskampagner, sæsonspidser, nye kunder. Forretningen ved mere om fremtiden end IT, så spørg. Planlæg med intervaller i stedet for enkelte tal, og gense prognosen jævnligt (se færdigheden om efterspørgselsprognoser nedenfor).

### Test

Påstande om kapacitet og ydeevne er hypoteser, indtil de er testet. Belastningstest og ydeevnetest anvender realistisk efterspørgsel for at se, hvordan servicen opfører sig, og chaostest indfører fejl for at se, om tilgængeligheden holder. De kan være en del af leveringspipelinen.

### Kildernes grænser

Wikipedia-artiklen om kapacitetsplanlægning nævner ikke ITILs kapacitetsstyring og analyserer ikke forholdet mellem kapacitet, ydeevne og tilgængelighed, og dens afsnit om aktiver er markeret som manglende henvisninger. SRE-kapitlet beskriver praksisserne i en meget stor organisation med særegen økonomi. Brug dem til principper, ikke til tal.

## God praksis

1. **Angiv mål for tilgængelighed, ydeevne og belastning sammen.** Skriv for hver service, hvor tilgængelig den skal være, hvor hurtigt den skal svare, og hvor meget belastning den skal bære. Baser dem på brugerbehov, og aftal dem med serviceejeren og kunderne.
2. **Prissæt målene.** Estimér, hvad et ekstra niveau af tilgængelighed eller hastighed koster, i penge og i forsinkede funktioner. Sammenlign med, hvad brugere og forretning ville vinde. Brug jeres egne tal, ikke eksemplet i en bog.
3. **Mål tilgængelighed på en måde, der passer til servicen.** For services, der hele tiden er delvist oppe, brug succesrate over et glidende vindue, som SRE-kapitlet gør. For enkle systemer brug tidsbaserede målinger. Tæl uplanlagt og planlagt nedetid separat.
4. **Planlæg efter effektiv kapacitet.** Estimér, hvad servicen kan bære efter reelle begrænsninger som overhead, komponentsvigt og vedligeholdelse. Behold en margin.
5. **Vælg en kapacitetsstrategi med vilje.** Beslut, om I vil lead, lag eller match for hver ressource, ud fra leveringstider, omkostning ved mangel og omkostning ved overbygning. Skriv valget ned, og gense det.
6. **Spørg forretningen om efterspørgsel.** Mød ledere fra marketing, salg og drift i en jævn cyklus for at høre om kampagner, lanceringer og sæsonspidser. Registrér den forventede belastning med intervaller.
7. **Hold øje med mætning.** Spor, hvor fulde nøgleressourcer er, og sæt alarmer langt før det punkt, hvor ydeevnen forringes. Kend det niveau, hvor jeres service begynder at blive langsom.
8. **Test før spidsen.** Kør belastnings- og ydeevnetests, der ligner reel trafik, før kendte spidser og efter væsentlige ændringer. Ret det, I finder, mens der er tid.
9. **Test fejl, ikke kun belastning.** Øv at miste en komponent, en zone eller en leverandør i et sikkert miljø, og se, om tilgængeligheden holder (se færdigheden om chaostest nedenfor).
10. **Medtag kapacitet i ændrings- og releasearbejde.** Spørg i design og gennemgang, om en ændring ændrer ressourcebehov. Tilføj ydeevnetjek til pipelinen for de veje, der betyder noget (se Emne 3.5 — Release- og deploymentstyring).
11. **Brug fejlbudgettet til at afgøre afvejninger.** Når der er budget, brug det på forandring. Når det er brugt, brug kræfterne på pålidelighed og kapacitet. Gennemgå reglen med leverance og drift sammen.
12. **Gennemgå prognoser mod faktiske tal.** Hvert kvartal sammenlign forudsagt og faktisk efterspørgsel, og justér jeres metode. Behandl overraskelser som information.

## Spørgsmål til diskussion i teamet

**Hvad har vores brugere egentlig brug for i tilgængelighed, hastighed og kapacitet, og hvem besluttede det?**

Bed om de nuværende mål og hvor de kom fra. Ofte blev de sat for længe siden eller af teamet uden at spørge brugerne. Spørg brugere og kunder, hvad der gør mest ondt. Drøft, om målene passer. Facilitatoren kan spørge, hvad der ville ske, hvis målet var ét trin lavere, og hvad det ville frigøre.

**Hvad koster det næste ni os?**

Vælg en service med et højt tilgængelighedsmål. Estimér, hvad det ville koste at hæve eller sænke det ét trin, i penge og i forsinket arbejde. Sammenlign med værdien for brugerne. SRE-kapitlets eksempel viser, hvor hurtigt regnestykket kan vende sig mod et højere mål. Lav beregningen med jeres egne tal, og registrér forudsætningerne.

**Hvad er den næste efterspørgselsspids, vi kender til, og hvad har vi gjort for at forberede os?**

List de kendte spidser: en kampagne, en frist, en sæsonrush. Spørg for hver, hvem der kender den forventede belastning, og om servicen er testet på det niveau. Ofte har ingen spurgt. Aftal en person til at indsamle tallene og en dato for testen.

**Hvor er vores service tættest på mætning, og hvad sker der, når den når dertil?**

Spørg efter den mest anvendte ressource. Se på tendensen. Spørg, hvad servicen gør ved den grænse: bliver langsom, giver fejl eller svigter. Hvis ingen ved det, så test det. Vælg en tærskel at handle ved og en alarm for den.

**Hvilke af vores seneste ændringer påvirkede ydeevne eller kapacitet, og vidste vi det på forhånd?**

Gennemgå nylige ændringer, og spørg, hvordan ydeevnen blev tjekket. Hvis den ikke blev, så drøft, hvad et let tjek ville være. Typiske muligheder er en test på den kritiske vej eller en canary-release med overvågning. Aftal ét til den næste release.

**Hvis én komponent svigtede lige nu, hvad ville der ske med tilgængeligheden?**

Tag en nøgleservice, og følg en fejl i en database, en zone eller en leverandør. Spørg, hvad designet antager, og hvad der er testet. Huller mellem antagelse og evidens er risici. Planlæg en kontrolleret fejltest i et sikkert miljø.

## I praksis: et agilt ITIL-eksempel

En national pensionsmyndighed driver en onlineservice, hvor borgere tjekker deres rettigheder og indsender formularer. Servicen har et roligt år bortset fra ugerne efter årsopgørelser sendes, hvor trafikken stiger til flere gange det normale niveau. Sidste år blev servicen så langsom, at mange brugere gav op, og callcentret blev overvældet. Platformsteamet på ni og driftschefen vil undgå en gentagelse.

Teamet starter med at spørge kommunikationskontoret om den forventede belastning. Kontoret siger, at opgørelserne sendes i to bølger, og giver datoer, men ingen tal. Teamet estimerer intervallet ud fra sidste års data og sætter et mål: formularsiden skal svare inden for en acceptabel tid ved den forventede spids, og servicen skal forblive tilgængelig gennem de to bølger. De kører en belastningstest på en kopi af produktion og finder, at databasen er den første ressource, der mættes, langt under den forudsagte spids. De adopterer en "lead"-strategi for databasen, da leveringstiden for at tilføje kapacitet er lang, og en "match"-strategi for webserverne, som kan tilføjes på minutter. En fejltest viser, at tab af én databasenode halverer kapaciteten, hvilket ville være uacceptabelt ved spidsen, så de tilføjer en reserve.

Ved spidsen forbliver servicen oppe, og svartiderne holder i den første bølge. I den anden bølge bliver en betalingsbekræftelseskomponent, ingen havde testet, langsom under belastning, og nogle brugere ser forsinkelser. Teamet kendte ikke denne afhængigheds grænse og var ikke blevet fortalt, at den anden bølge ville være større. De føjer komponenten til den næste belastningstest, beder kommunikationskontoret om omfanget af hver bølge tidligere og aftaler at gennemgå prognoseprocessen i næste kvartal.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams påvirker alle tre gennem design og ændring. Medtag ydeevne og kapacitet i designgennemgange og i pipelinen. Fortæl driften om ændringer, der ændrer belastningen, og spørg forretningen om forventet efterspørgsel.

### Service- og driftsteams

Driftsteams bærer som regel overvågningen og kapacitetsplanerne. Spor mætning og tendens, hold et overblik over leveringstider for ressourcer, og bring evidens til planlægningen. Hjælp forretningen med at forstå, hvad hvert niveau af tilgængelighed koster.

### Ledelse og governance

Ledere sætter den pris, de er villige til at betale for pålidelighed og hastighed. Bed om mål, der svarer til brugerbehov, med omkostninger, og acceptér, at perfekt tilgængelighed ikke er et fornuftigt mål. Støt test før kendte spidser og budgettet til modstandsdygtighed, hvor det betyder noget.

### Kunder og brugere

Kunder og brugere mærker resultatet. Fortæl leverandøren, når du forventer ekstra belastning, som en kampagne eller frist, og hvad der betyder mest for dig i hastighed og tilgængelighed. Rapportér langsomhed såvel som nedbrud, da begge er svigt set fra din side.

## Almindelige fejlmønstre

- **Mål af vane.** "Fem nier" kræves uden at spørge hvorfor. I stedet: udled mål fra brugerbehov, og prissæt dem.
- **Overraskende spidser.** Forretningen kender til en kampagne, og IT gør ikke. I stedet: mød hinanden i en jævn cyklus, og registrér forventet belastning.
- **Gennemsnit for ydeevne.** Langsomme yderpunkter ses ikke. I stedet: se på høje percentiler og mætning.
- **Kapacitet tilføjet først efter problemer.** Lag-strategi bruges ved et uheld. I stedet: vælg en strategi med vilje, ud fra leveringstider.
- **Uafprøvet modstandsdygtighed.** Redundans findes på papiret. I stedet: test komponentsvigt i et sikkert miljø.
- **Ændringer uden ydeevnetjek.** En release forringer farten. I stedet: tilføj tjek til pipelinen for de veje, der betyder noget.
- **At glemme afhængigheder.** En tredjepartskomponent begrænser hele servicen. I stedet: list afhængigheder, og test dem.
- **At behandle prognosen som fast.** Planer ignorerer fejl. I stedet: brug intervaller, og sammenlign prognoser med faktiske tal.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Mål og omkostning | Mål er uformelle eller kopierede | Nogle services har angivne mål | Services har aftalte mål for tilgængelighed, ydeevne og belastning med kendte omkostninger | Mål og omkostninger gennemgås mod resultater | Mål sættes i fællesskab med kunder og leverandører og justeres efter evidens |
| Efterspørgsels- og kapacitetsplanlægning | Kapacitet tilføjes efter problemer | Nogle teams prognosticerer kendte spidser | Efterspørgsel indsamles fra forretningen i en cyklus, med en angivet kapacitetsstrategi | Prognosenøjagtighed spores og metoder forbedres | Planlægning koordineres på tværs af teams, leverandører og forretningen |
| Test | Lidt test af belastning eller fejl | Nogle tests før store begivenheder | Belastnings- og fejltests er rutine for centrale services | Testresultater driver sporede forbedringer | Tests deles og koordineres på tværs af indbyrdes afhængige services |
| Overvågning og respons | Problemer bemærkes sent | Noget mætning spores | Mætning, latenstid og fejl overvåges med alarmer før grænserne | Tendenser og tærskler tunes ud fra data | Signaler og responser koordineres på tværs af teams og leverandører |

## Tjekliste

- [ ] Hver service har angivne mål for tilgængelighed, ydeevne og belastning, med deres kilde.
- [ ] Vi har estimeret, hvad det næste niveau af tilgængelighed ville koste.
- [ ] Vi ved, hvordan tilgængelighed måles for hver service, og hvad der tæller som nedetid.
- [ ] Vi har valgt en kapacitetsstrategi for hver nøgleressource.
- [ ] Vi mødes jævnligt med forretningen for at høre om forventet efterspørgsel.
- [ ] Mætning af nøgleressourcer overvåges med alarmer før grænserne.
- [ ] Belastningstests er kørt før den seneste kendte spids.
- [ ] Svigt af mindst én nøglekomponent er afprøvet i et sikkert miljø.
- [ ] Ændringer, der påvirker ydeevne eller kapacitet, markeres i gennemgangen.
- [ ] Prognoser sammenlignes med faktisk efterspørgsel hvert kvartal.

## AI-prompts

**Formål: at gøre målte data til et billede af kapacitetsspillerum.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Formål: at prissætte et højere tilgængelighedsmål.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at planlægge en belastningstest før en kendt spids.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at designe en fejltest.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-skills

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): brug den til at estimere de ressourcer, en service har brug for over tid, og vælge en strategi for at tilføje dem.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): brug den til at estimere fremtidig belastning som et interval ud fra tidligere data og forretningsplaner.
- [load-testing](../../../../skills/load-testing/SKILL.md): brug den til at designe tests, der anvender realistisk efterspørgsel før en spids.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): brug den til at tjekke hastighed og ressourceforbrug på kritiske veje som en del af leveringen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): brug den til at afprøve, om tilgængeligheden holder, når komponenter svigter.

## Vigtigste kilder

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): tilgængelighedens økonomi, anmodningsbaseret måling og fejlbudgettet.
- **Capacity planning** (Wikipedia): definitioner og strategierne lead, lag, match og justering.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): de gyldne signaler inklusive mætning.
- **High availability** (Wikipedia): baggrund om at designe systemer til kontinuerlig drift.

## Referencer

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
