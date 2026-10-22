# Leverandørstyring

**Leverandørstyring sikrer, at de udenforstående parter, en service afhænger af, vælges med omhu, holdes til klare forventninger og behandles som en del af servicen, fordi et løfte til dine kunder kun er så stærkt som løfterne bag det.**

## Hvorfor det betyder noget

Næsten ingen moderne service bygges og drives af ét team alene. Den afhænger af cloudplatforme, softwareleverandører, betalingsbehandlere, netværksudbydere, konsulenter og specialistpartnere. Når en af dem svigter, skelner kunden ikke mellem dit svigt og deres. Deres nedbrud er dit, og det er arbejdet med at forklare det også.

Agile teams tager let leverandører i brug: et kreditkort, nogle linjer konfiguration, og en ny evne kører. Den hastighed er værdifuld, og den skaber et hul. Måske har ingen spurgt, hvad der sker, hvis leverandørens service forringes, ændrer sine vilkår eller lukker. Måske ved ingen, hvem der ejer forholdet. Leverandørstyring er praksissen at lukke det hul i forhold til risikoen, uden at gøre hvert køb til et projekt.

[Wikipedia-artiklen om supplier relationship management](https://en.wikipedia.org/wiki/Supplier_relationship_management) beskriver den systematiske, virksomhedsdækkende vurdering af leverandørers styrker, ydeevne og evner, afstemt med forretningsstrategien, og bemærker, at dens kildebelægning er tynd og forældet, med flere henvisninger fra 2009 til 2012. [Artiklen om service integration and management](https://en.wikipedia.org/wiki/Service_integration_and_management) beskriver en tilgang for organisationer, der bruger flere leverandører. Dette emne kombinerer dem med vejledningens andre emner og med praksis, der er almindelig i servicestyring, og siger, når det gør det sidste.

## Kernebegreber

### Leverandørrelationsstyring

Ifølge Wikipedia koordinerer leverandørrelationsstyring (SRM) interaktioner med leverandører på tværs af forholdets livscyklus, med det formål at opbygge tosidede partnerskaber med strategiske leverandører, på en måde der svarer til kunderelationsstyring. Artiklen fremsætter flere punkter, der er nyttige for serviceteams:

- **Segmentér leverandører.** Leverandører segmenteres efter samlet potentiel værdi på tværs af flere dimensioner, ikke kun udgift, og efter graden af risiko, der påvirker den værdi. Artiklen kritiserer en "én størrelse passer alle"-tilgang.
- **Mål ydeevne begge veje.** Organisationer bruger fælles, tosidede balancerede scorecards med kvantitative og kvalitative målinger, og nogle bruger 360-graders scorecards, der også spørger leverandørerne.
- **Samarbejd.** Fælles aktiviteter omfatter leverandørtopmøder, ledermøder, fælles forretningsplanlægning, driftsgennemgange og fælles efterspørgselsprognoser. Artiklen påstår, at fælles prognoser og procesgenindretning har frigjort besparelser på 10 til 30 procent for førende organisationer, men artiklen har vedligeholdelsesmærker om svag ordlyd og manglende henvisninger, så behandl tallet som en påstand, ikke et fund.

### Hvorfor segmentering betyder noget

Du kan ikke styre hver leverandør tæt. En nyttig segmentering stiller to spørgsmål: hvor meget afhænger servicen af denne leverandør, og hvor svært ville det være at erstatte dem? Et groft gitter følger.

| Afhængighed og udskiftelighed | Eksempler | Tilgang |
|---|---|---|
| **Kritisk og svær at erstatte** | Cloudplatformen, betalingsbehandleren | Tæt forhold: navngiven ejer, jævnlige gennemgange, fælles planlægning, exit- og kontinuitetsplaner |
| **Vigtig, men udskiftelig** | Et overvågningsværktøj, en beskedservice | Jævnlig gennemgang, klare serviceniveauer og en plan for at skifte om nødvendigt |
| **Rutine og let at erstatte** | Kontorartikler, et mindre bibliotek | Let kontrakt og periodisk tjek |

Gitteret er denne vejlednings illustration, ikke fra en kilde.

### Leverandørydeevne og den service, du lover

Dine serviceniveauer afhænger af dine leverandørers (se Emne 3.7 — Styring af serviceniveauer). Hvis du lover 99,9 % tilgængelighed, og din eneste cloududbyder lover mindre, går regnestykket ikke op. Leverandørstyring omfatter at sammenligne, hvad leverandører har forpligtet sig til, med, hvad du har lovet, og at designe omkring hullet med redundans eller ved at justere dit eget løfte.

I ITIL-ordforråd kaldes en aftale med en ekstern leverandør, der understøtter en serviceniveauaftale, en underliggende kontrakt (underpinning contract), og en aftale mellem interne teams, der understøtter den, kaldes en operational-level agreement. De kilder, der er læst til denne vejledning, definerer ikke disse, så tjek ITIL-publikationer for de præcise begreber.

### Miljøer med flere leverandører og SIAM

Artiklen om service integration and management (SIAM) beskriver en tilgang til at styre flere leverandører og integrere dem i en enkelt, forretningsvendt service. Den bemærker, at organisationer i stigende grad skaffer IT-evner fra flere eksterne leverandører, en model kaldet multisourcing, som kan reducere omkostninger og fremme konkurrence, men tilføjer styringsoverhead og gør servicestyring fra ende til anden sværere. En **serviceintegrator** giver governance og koordinering, så udbydere arbejder sammen.

Artiklen opregner fire modeller for integratoren (intern, hovedleverandør, ekstern og hybrid) og tre lag: kundeorganisationen, serviceintegratoren og serviceudbyderne. Den siger, at SIAM opstod omkring 2005 i den britiske offentlige sektor, først designet til Department for Work and Pensions, og opregner milepæle som en vidensbase i 2016 og revisioner i 2019 for COBIT 2019 og ITIL 4. Den bemærker, at ITIL giver et fundament og et fælles sprog til at arbejde med leverandører, men ikke behandler miljøer med flere leverandører i dybden. Implementeringsudfordringer, den opregner, omfatter uafstemte serviceniveauaftaler, udbydere der giver hinanden skylden, uklart ejerskab af grundårsagsbeslutninger og kommunikationshuller.

Få agile teams har brug for en formel SIAM, men lærestregerne er nyttige: når flere parter bidrager til én service, må nogen eje helheden, aftale hvordan problemer håndteres på tværs af grænser og holde leverandørernes serviceniveauer konsistente med hinanden.

### Kontrakter og agilitet

Kontrakter kan hjælpe eller hindre agilt arbejde. Kontrakter med fast omfang og fast pris passer dårligt til at lære undervejs (se Emne 1.1 — Det agile manifest om samarbejde med kunden frem for kontraktforhandling). Aftaler, der tillader ændring, med klare måder at justere omfang og måle værdi på, passer bedre. En kontrakt skal også dække de ting, servicestyring bekymrer sig om: serviceniveauer, supporttider, hændelseshåndtering, databeskyttelse, sikkerhedsforpligtelser, revisionsrettigheder, exit og kontinuitet. Jeres kolleger i jura og indkøb bør lede på de juridiske vilkår.

### Risiko

Leverandører medfører risici: svigt, ændring af vilkår eller pris, sikkerhedssvagheder, koncentration hos én udbyder, indlåsning (lock-in) og leverandørens egne afhængigheder. SRM-artiklen opregner at reducere risikoen for svigt som et mål uden at beskrive metoder. Praktiske foranstaltninger omfatter at kende leverandørens egne kontinuitetsarrangementer, sprede kritiske afhængigheder, holde data flytbare og øve exit (se Emne 3.12 — Styring af servicekontinuitet og Emne 3.13 — Styring af informationssikkerhed).

### Relation, ikke kun kontrakt

SRM-artiklen understreger tosidede partnerskaber. Leverandører, der forstår dine planer, kan hjælpe; leverandører, der kun behandles som kilder til fakturaer, gør det ikke. Del prognoser, involvér dem i hændelsesgennemgange, der angår dem, og lyt til deres feedback om din adfærd, som sene betalinger eller uklare anmodninger.

### Kildernes grænser

SRM-artiklen giver ingen udvælgelseskriterier, kontraktklausuler eller implementeringstidsplaner. SIAM-artiklen har intet kritikafsnit. Begge er generelle. For juridiske og økonomiske vilkår, stol på jeres indkøbs- og juridiske funktioner og på selve kontrakten.

## God praksis

1. **List jeres leverandører, og hvad I afhænger af dem til.** Medtag cloud, software, netværk, betaling og konsulenter. Notér for hver, hvilken service den understøtter, og hvem i jeres team der ejer forholdet.
2. **Segmentér efter afhængighed og udskiftelighed.** Beslut, hvilke få leverandører der er kritiske, og invester jeres opmærksomhed der. Behold en let hånd for resten.
3. **Navngiv en ejer for hver vigtig leverandør.** Én person bør kende kontrakten, kontakterne, ydeevnen og planerne. Uden ejer forfalder forhold.
4. **Tjek, at leverandørforpligtelser understøtter jeres løfter.** Sammenlign, hvad hver kritisk leverandør har forpligtet sig til, med, hvad I har fortalt kunderne. Luk hullet ved design, ved forhandling eller ved at ændre jeres løfte.
5. **Aftal hændelseshåndtering på forhånd.** Vid, hvordan man rapporterer et problem til leverandøren, hvor hurtigt de svarer, hvem der kan eskalere, og hvordan de vil kommunikere. Afprøv vejen, før I har brug for den.
6. **Medtag sikkerhed og databeskyttelse.** Spørg leverandører, hvordan de beskytter jeres information, og hvad de vil fortælle jer efter et brud. Sæt det i kontrakten, sammen med den juridiske afdeling.
7. **Planlæg for exit og svigt.** For kritiske leverandører hold data flytbare, kend alternativer, og skriv en kort plan for leverandørens svigt eller jeres afgang. Øv den del, I kan.
8. **Gennemgå ydeevne sammen.** Hold jævnlige gennemgange med kritiske leverandører, del data begge veje, og aftal handlinger. Spørg leverandøren, hvordan I kunne være en bedre kunde.
9. **Medtag leverandører i læring.** Invitér dem til hændelsesgennemgange og planlægningssessioner, der involverer dem. Del erfaringer, der hjælper dem med at hjælpe jer.
10. **Gør kontrakter fleksible, hvor læring forventes.** For udviklingsarbejde foretræk aftaler, der tillader omfanget at ændre sig, med klare gennemgangspunkter, frem for løfter om fast omfang. Hold serviceforpligtelserne faste.
11. **Brug én integrator, når mange leverandører bidrager.** For en service, der afhænger af flere udbydere, navngiv hvem der ejer resultatet fra ende til anden, og hvordan problemer på tværs af leverandører løses. Overlad det ikke til kunden.
12. **Gennemgå leverandørporteføljen jævnligt.** Én gang om året tjek, hvilke leverandører der stadig er brug for, hvilke der er koncentrerede risici, og hvilke der er billigere eller bedre andre steder.

## Spørgsmål til diskussion i teamet

**Hvilke leverandører kunne stoppe vores service, hvis de svigtede, og hvad ville vi gøre?**

Bed hver person nævne de afhængigheder, de ville bekymre sig mest om. Saml listen, og markér hver som kritisk, vigtig eller rutine. For hver kritisk spørg, hvad teamet ville gøre i den første time af et svigt. Typiske svar afslører huller i kontakter, alternativer og data. Vælg én at planlægge for.

**Hvad har vores leverandører lovet os, og hvad har vi lovet vores kunder?**

Sæt de to side om side for en nøgleservice. Hvor leverandørens løfte er svagere, er kundeløftet i fare. Facilitatoren kan spørge, om nogen har læst leverandørens serviceniveauer for nylig. Aftal ét hul, der skal lukkes.

**Hvem ejer hvert vigtigt leverandørforhold?**

Gå listen ned, og navngiv en ejer for hver. Huller er almindelige: den, der underskrev kontrakten, er rejst, eller et værktøj blev købt på et kort, og ingen styrer det. Spørg, hvad ejeren ville have brug for for at gøre jobbet, som tid og en kontakt. Tildel ejere, hvor de mangler.

**Hvordan finder vi ud af et leverandørproblem, og hvordan fortæller vi brugerne det?**

Følg den seneste gang, en leverandør havde et nedbrud. Spørg, hvordan I hørte om det, hvor lang tid det tog, og hvad I fortalte kunderne. Drøft statussider, kontakter og aftalte kanaler. Planlæg en forbedring, som et abonnement på leverandørens statusfeed eller en navngiven eskaleringskontakt.

**Hvad skulle der til for at forlade denne leverandør, og ville vi nogensinde ville det?**

For en kritisk leverandør spørg om dataeksport, alternative produkter og kontraktvilkår. Teams finder ofte lock-in, de ikke havde tilsigtet. Drøft, hvordan man reducerer det, hvor risikoen retfærdiggør omkostningen. Registrér en kort exit-note.

**Ved vores leverandører, hvad vi planlægger, og ved vi, hvad de planlægger?**

Spørg, hvornår hver kritisk leverandør sidst hørte om jeres planer, og hvornår I sidst hørte om deres. Overraskelser i begge retninger giver besvær. Drøft en jævnlig samtale. Aftal én leverandør at starte med.

## I praksis: et agilt ITIL-eksempel

En regional tv-station driver en nyhedsapp og hjemmeside med et team på fjorten. Servicen afhænger af en cloududbyder, et content delivery network, en push-notifikationsservice, et kommentarmoderationsværktøj og et lille firma, der leverer en live-blog-widget. Da live-blog-leverandørens service svigtede en valgnat, viste appen fejl i to timer, og stationens omdømme led. Ingen i teamet kunne sige, hvem leverandørens kontakt var; widgetten var blevet tilføjet af en udvikler, som siden var gået videre.

Platformschefen leder en gennemgang. Teamet lister alle leverandører og sorterer dem efter, hvor meget servicen afhænger af dem, og hvor let hver kunne erstattes. Cloududbyderen og content delivery networket er kritiske, og notifikationsservicen og widgetten er vigtige, men udskiftelige. Hver får en ejer i teamet. For widgetleverandøren skaffer teamet kontakter, læser vilkårene og finder, at intet serviceniveau er lovet. De beslutter at beholde leverandøren, men tilføje en reserve: hvis widgetten ikke indlæses, viser siden et statisk link til live-bloggen. For cloududbyderen sammenligner de dens forpligtelser med den tilgængelighed, de har lovet stationens redaktører, og finder et hul i én region, som de lukker ved at sprede servicen over to.

Seks måneder senere opdages et andet nedbrud hos notifikationsudbyderen af overvågningen på få minutter, ejeren tager det op med leverandøren gennem den aftalte vej, og appen bliver ved med at virke med forsinkede notifikationer. Vanskeligheder består. Redaktørerne vil have, at live-blog-widgetten gør mere, men leverandøren er for lille til at forpligte sig til et serviceniveau, og stationens indkøbsregler gør en udskiftning langsom. Platformschefen aftaler med indkøb at køre et lille forsøg med et alternativ og at gennemgå leverandørlisten årligt.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams vælger og integrerer mange leverandører. Registrér hver afhængighed, når I tilføjer den, navngiv en ejer, og spørg om serviceniveauer og exit, før I stoler på den. Byg reserver for de svigt, I kan forestille jer.

### Service- og driftsteams

Driftsteams har med leverandører at gøre i hændelser. Hold kontakter og eskaleringsveje ajour, test dem, og registrér leverandørernes ydeevne. Bring den evidens til gennemgange og til indkøb.

### Ledelse og governance

Ledere og indkøb former vilkårene og forholdet. Bed om en liste over kritiske leverandører og deres risici, støt fleksible kontrakter til læringsbaseret arbejde, og sørg for, at kontrakten dækker serviceniveauer, sikkerhed og exit. Spørg, hvem der ejer resultatet fra ende til anden, når mange leverandører bidrager.

### Kunder og brugere

Kunder og brugere stoler på hele kæden, ikke på et enkelt led. Spørg leverandører, hvilke underleverandører der betyder noget for den service, du bruger, og hvordan de beskytter den. Når noget går galt, forvent ærlighed om, hvilken del der svigtede, og hvad der gøres.

## Almindelige fejlmønstre

- **Skjulte afhængigheder.** Et værktøj tilføjet af én udvikler bliver kritisk, og ingen ejer det. I stedet: registrér hver afhængighed, og navngiv en ejer.
- **Én størrelse passer alle.** Hver leverandør får den samme tunge proces, eller ingen får nogen. I stedet: segmentér efter afhængighed og udskiftelighed.
- **Løfter, der ikke går op.** Kundeløftet er stærkere end leverandørens. I stedet: sammenlign forpligtelser, og luk hullet.
- **Ingen afprøvet vej.** Leverandørens supportlinje findes under et nedbrud. I stedet: aftal og afprøv kontakter og eskalering på forhånd.
- **Lock-in ved et uheld.** Data kan ikke eksporteres. I stedet: tjek flytbarhed tidligt, og registrér en exit-note.
- **Kun kontrakt, intet forhold.** Leverandøren er en fremmed, når problemerne kommer. I stedet: hold jævnlige gennemgange, og del planer.
- **Ingen ejer helheden.** Flere leverandører giver hinanden skylden. I stedet: navngiv en integrator for servicen fra ende til anden, og aftal håndtering på tværs af leverandører.
- **Kontrakter med fast omfang til usikkert arbejde.** Kontrakten kæmper mod læring. I stedet: brug aftaler, der lader omfanget ændre sig inden for klare grænser.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| At kende leverandører | Leverandører er kendt af enkeltpersoner | Nogle teams lister deres leverandører | En fælles liste med afhængighed, udskiftelighed og ejere | Listen gennemgås mod hændelser og ændringer | Listen deles på tværs af teams og knyttes til services |
| Forpligtelser og service | Leverandørers serviceniveauer er ukendte | Nøgleleverandørers vilkår er læst | Leverandørforpligtelser sammenlignes med kundeløfter | Leverandørydeevne måles og gennemgås | Forpligtelser afstemmes langs kæden med fælles gennemgang |
| Hændelser og risiko | Leverandørproblemer findes ved et tilfælde | Nogle kontakter er kendt | Eskaleringsveje er aftalt og afprøvet; risici registreres | Leverandørhændelser og -risici spores og handles på | Hændelseshåndtering og risikoplaner er fælles med leverandører |
| Relation og exit | Leverandører er transaktionelle | Nogle leverandørmøder | Jævnlige gennemgange med kritiske leverandører og korte exit-noter | Relationens sundhed og exit-parathed gennemgås | Leverandører deltager i planlægning og forbedring |

## Tjekliste

- [ ] Vi har en liste over leverandører og hvad hver understøtter.
- [ ] Leverandører er sorteret efter afhængighed og udskiftelighed.
- [ ] Hver vigtig leverandør har en navngiven ejer.
- [ ] Vi har sammenlignet leverandørforpligtelser med vores kundeløfter for nøgleservices.
- [ ] Eskaleringskontakter og -veje for kritiske leverandører er kendt og afprøvet.
- [ ] Forventninger til sikkerhed og databeskyttelse står i kontrakten eller er aftalt skriftligt.
- [ ] En kort exit- eller svigtnote findes for hver kritisk leverandør.
- [ ] Vi holder jævnlige gennemgange med kritiske leverandører.
- [ ] Hvor flere leverandører bidrager, ejer nogen resultatet fra ende til anden.
- [ ] Leverandørlisten gennemgås mindst én gang om året.

## AI-prompts

**Formål: at bygge en leverandør- og afhængighedsliste ud fra det, I ved.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at sammenligne leverandørforpligtelser med jeres kundeløfter.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Formål: at forberede et leverandørgennemgangsmøde.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Formål: at udarbejde en kort exit-note for en kritisk leverandør.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## AI-skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): brug den til at planlægge udvælgelse, gennemgang og forholdet til en leverandør.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere leverandørrisici og hvordan de styres.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): brug den til at forstå, hvem i jeres organisation og i leverandørens der betyder noget for forholdet.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): brug den til at tjekke, at leverandørforpligtelser understøtter det, I lover.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): brug den til at gøre det klart, hvem der ejer hvert leverandørforhold, og hvem der høres.

## Vigtigste kilder

- **Supplier relationship management** (Wikipedia): en oversigt over segmentering, scorecards og samarbejde med leverandører, med vedligeholdelsesmærker, der viser, hvor kildebelægningen er svag.
- **Service integration and management** (Wikipedia): tilgangen med flere leverandører, med dens lag, modeller og implementeringsudfordringer.
- **Service-level agreement** (Wikipedia): baggrund om aftaler, leverandører og kunder underskriver.
- **ITIL** (Wikipedia): kontekst om, hvordan ITIL behandler leverandører.

## Referencer

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
