# AI i IT-servicestyring

**Kunstig intelligens kan fremskynde opdagelse, triage og videnarbejde i IT-servicestyring, og den er kun sikker at bruge, hvor en person forbliver ansvarlig, svar er forankret i jeres eget materiale, og risiciene for fejl, bias og dataeksponering styres.**

## Hvorfor det betyder noget

Servicestyring involverer meget sprog og mønstergenkendelse: at læse tickets, opsummere hændelser, søge i viden, udarbejde svar, få øje på usædvanlige signaler i overvågningsdata. Det er de opgaver, hvor nyere AI-systemer ser ud til at være mest kompetente, og leverandører har skyndt sig at tilføje dem til servicedeske og driftsværktøjer. Teams vil blive spurgt, hvis de ikke allerede er det, om de skal bruge dem.

Muligheden er reel, og det er farerne også. AI-systemer kan fremsætte usandheder med selvsikkerhed, afspejle bias i deres træning og i de data, de får, afsløre fortrolige oplysninger, hvis de fodres skødesløst, og få folk til at stole på output, de ikke har kontrolleret. Flere vidt omtalte sager viser prisen for malplaceret tillid. En serviceorganisation, der adopterer AI uden eftertanke, kan skade sine kunder og sit eget omdømme.

I 2026 er AI også kommet ind i rammeværket. PeopleCerts offentlige certificeringsside beskriver den nye ITIL som "Practical and AI-native by design" og opregner et modul, ITIL AI Governance (Version 5), der dækker at styre AI "responsibly and at scale" (se Emne 2.2 — ITIL). Denne vejledning kunne ikke verificere ud fra ejerens publikationer, hvad ITIL 5 siger om AI i detaljer, så dette emne beskriver ikke rammeværkets holdning ud over disse udsagn. Det trækker på Wikipedia-artiklerne om AIOps og om AI-hallucination, på NIST's side om AI Risk Management Framework og på praktisk ræsonnement, og det markerer praksis som sådan.

## Kernebegreber

### Hvor AI hjælper i servicestyring

De fleste anvendelser falder i nogle få grupper. Tabellen viser eksempler og den slags risiko, hver bærer, som denne vejlednings læsning.

| Anvendelse | Hvad AI gør | Hovedrisici |
|---|---|---|
| **Opdagelse og korrelation (AIOps)** | Finder anomalier, grupperer beslægtede events, foreslår sandsynlige årsager | Falske alarmer, oversete events, uigennemsigtig ræsonnering |
| **Servicedesk-assistance** | Foreslår svar, opsummerer tickets, udarbejder svar, router anmodninger | Forkerte eller opdigtede svar, tone, privatliv |
| **Videnarbejde** | Udarbejder og forbedrer artikler, søger i viden | Opdigtet indhold, forældede kilder |
| **Hændelses- og problemanalyse** | Opsummerer tidslinjer, foreslår hypoteser, udarbejder gennemgange | Plausible, men ubegrundede årsager |
| **Ændrings- og releasestøtte** | Gennemgår ændringer, udarbejder noter, foreslår risiko | Overdreven selvsikkerhed, manglende kontekst |
| **Kode og automatisering** | Skriver scripts og konfiguration | Usikker eller forkert kode, skjulte afhængigheder |
| **Analyse og rapportering** | Opsummerer data, udarbejder rapporter | Forkerte beregninger, opdigtede tal |

### AIOps

Wikipedia-artiklen beskriver AIOps som brug af AI, maskinlæring og big data-analyse til at automatisere og forbedre styringen af datacentre, med sigte på at opdage, diagnosticere og løse IT-problemer mere effektivt end traditionelle metoder. Den siger, at Gartner først definerede AIOps i 2016. Artiklen opregner kapabiliteter, herunder eventkorrelation, anomalidetektion, rodårsagsanalyse, bestemmelse af årsagssammenhænge, prædiktiv analyse, hændelseshåndtering, automatiseret afhjælpning, ydeevneforudsigelse, ressourceallokering og kapacitetsstyring. Den siger, at AIOps trækker på observationsdata, som logs og overvågning, og interaktionsdata, som tickets, events og hændelsesregistreringer.

Artiklen påstår fordele, som at gennemsnitlig tid til opdagelse forbedres med 15 til 20 procent, og at kritiske hændelser falder med over 50 procent, men bemærker, at disse stammer fra én konsulentartikel og ikke er uafhængigt verificeret i teksten. Den angiver ingen kritik, svigttilfælde eller begrænsninger. Behandl leverandørpåstande derefter, og afprøv ethvert værktøj mod jeres egne hændelser (se Emne 3.10 — Overvågning og eventstyring).

### Generativ AI og hallucination

Wikipedia-artiklen om hallucination i AI definerer det som et svar, der indeholder falsk eller vildledende information præsenteret som fakta, og bemærker, at betegnelsen kritiseres for at gøre software menneskelig. Den giver årsager: fortræning på næste-ord-forudsigelse belønner gætteri, når modellen mangler information, datasæt kan være ufuldstændige eller urepræsentative, og OpenAI-forskere argumenterer for, at træning og evaluering belønner at gætte frem for at erkende usikkerhed. Eksempler, den registrerer, omfatter:

- **Mata v. Avianca (maj 2023):** en advokat indgav seks falske sager genereret af ChatGPT; dommeren idømte en bøde på 5.000 USD den 23. juni 2023.
- **Moffatt v. Air Canada (februar 2024):** et tribunal holdt et flyselskab til en regel om sorgbilletter, som dets chatbot havde opfundet.
- Rapporter fra et konsulentfirma, der indeholdt falske henvisninger, og en undersøgelse, der fandt, at 69 af 178 GPT-3-referencer havde forkerte eller ikkeeksisterende identifikatorer.

Det er konsekvenserne af at stole på ikke-verificeret output: juridisk ansvar, økonomisk eksponering og skadet tillid. I servicestyring skaber en chatbot, der opfinder en politik eller en procedure, samme slags risiko.

### Afbødning: forankring og kontrol

Artiklen beskriver retrieval-augmented generation (RAG) som at lade modellen få adgang til eksterne kilder, før den svarer. Den opregner også datarelaterede metoder, model- og inferensmetoder og forslag som autoværnssoftware og konfidensscoring og bemærker, at ingen kilde, den giver, kvantificerer, hvor meget nogen af disse reducerer hallucination. For et serviceteam er praktiske afbødninger:

- **Forankr svar i jeres eget godkendte materiale,** som vidensbasen, og vis kilden.
- **Hav et menneske i løkken** for alt, der påvirker en kunde, en forpligtelse eller produktion.
- **Bed om, hvad AI er usikker på,** og behandl ubegrundede udsagn som ikke-verificerede.
- **Test jævnligt** på rigtige sager, også sager hvor det rigtige svar er "jeg ved det ikke".

### Rammeværker til risikostyring

National Institute of Standards and Technology (NIST) udgav AI Risk Management Framework (AI RMF 1.0) den 26. januar 2023, som det beskriver som beregnet til frivillig brug, for at hjælpe med at styre risici fra AI for enkeltpersoner, organisationer og samfundet og for at forbedre evnen til at inkorporere hensyn til troværdighed i design, udvikling, brug og evaluering af AI-produkter, -services og -systemer. NIST's side nævner fire funktioner, Govern, Map, Measure og Manage, men beskriver dem ikke. Det udgav også en Generative Artificial Intelligence Profile (NIST-AI-600-1) den 26. juli 2024 for at hjælpe organisationer med at identificere risici, der er unikke for generativ AI, og siger, at rammeværket er under revision. Læs selve rammeværket for detaljer. Andre regler om AI, som love og standarder, er forskellige efter land og sektor; spørg jeres juridiske afdeling og compliancefunktion, og skaf teksten (se Emne 5.7 — Governance, risiko og compliance).

### Databeskyttelse og privatliv

Alt, der gives til en AI-service, kan blive lagret, brugt til træning eller eksponeret, afhængigt af servicen og vilkårene. Tickets, logs og chattranskriptioner indeholder ofte personoplysninger, legitimationsoplysninger og fortrolige forretningsoplysninger. Før I bruger et AI-værktøj med rigtige data, så find ud af, hvor data går hen, hvem der kan se dem, hvor længe de opbevares, og om de bruges til at træne modeller, og anvend jeres informationssikkerhedspolitik (se Emne 3.13 — Styring af informationssikkerhed). Fjern eller erstat personlige og hemmelige data, før I indsætter dem i et værktøj, I ikke har godkendt.

### Ansvar og gennemsigtighed

En person eller et team skal forblive ansvarlig for beslutninger, som en AI bidrager til. Når AI udarbejder et svar, er afsenderen ansvarlig. Når AI foreslår en rodårsag, er undersøgeren ansvarlig for at teste den. Fortæl kunder, når de taler med et automatiseret system, hvor loven, en kontrakt eller retfærdighed kræver det, og giv en vej til en person. Før optegnelser over, hvad AI blev spurgt om, og hvad den producerede, for væsentlige beslutninger, som I ville for andre værktøjer (se Emne 5.1 — Agil servicestyring for dokumentation).

### Bias og retfærdighed

AI-systemer lærer af data, der afspejler tidligere beslutninger og huller. En triageassistent trænet på historiske tickets kan behandle nogle brugergrupper eller nogle slags problemer som lavere prioritet. Tjek output på tværs af grupper, inddrag folk med forskellige perspektiver i testen, og hold øje med mønstre. De kilder, der er læst til denne vejledning, detaljerer ikke bias, så dette er et generelt forbehold, ikke et fund.

### At måle AI

Mål kvaliteten og virkningen af ethvert AI-trin, ikke kun dets volumen: hvor ofte mennesker tilsidesætter det, hvor ofte det tager fejl, hvor lang tid opgaver tager med og uden det, og hvad brugerne siger (se Emne 5.6 — Metrikker og måling). Vær forsigtig med leverandørtal; AIOps-artiklens egne fordelspåstande hviler på én kilde.

### Færdigheder og prompts

Den praktiske færdighed i at arbejde med AI omfatter at skrive klare instruktioner, levere det rette materiale, bede om usikkerhed og verificere output. Emne 6.3 — AI-skills og prompts dækker dette i detaljer.

### Kildernes grænser

AIOps-artiklen indeholder ingen kritik, og dens fordelstal stammer fra én kilde; hallucinationsartiklen er markeret som i behov af opdatering og blev læst delvist; NIST's side beskriver ikke rammeværkets funktioner; og PeopleCerts side forklarer ikke, hvad ITIL 5 siger om AI. Dette emne giver derfor en forsigtig fremstilling og overlader detaljer til primærkilderne.

## God praksis

1. **Start med en anvendelse med lav risiko og et klart spørgsmål.** Vælg en opgave, hvor fejl er billige og nemme at fange, som at udarbejde et resumé til internt brug, og definér, hvad succes betyder.
2. **Hold en person ansvarlig.** Navngiv, hvem der er ansvarlig for det, AI bidrager med, og kræv gennemgang af alt, der når en kunde, ændrer produktion eller giver en forpligtelse.
3. **Forankr svar i godkendt materiale.** Hvor I bruger AI til svar, så forbind den til jeres egen vidensbase, og vis kilden. Få den til at sige "jeg ved det ikke", når den mangler en.
4. **Beskyt data.** Beslut, hvilke data der må gå til hvilket værktøj, fjern personlige og hemmelige data, og brug godkendte værktøjer med vilkår, I har læst. Inddrag sikkerheds- og juridisk personale tidligt.
5. **Test med rigtige sager.** Indsaml et sæt rigtige tickets og hændelser med kendte svar, kør AI på dem, og registrér, hvor den svigter. Gentag efter enhver ændring af værktøj eller indstillinger.
6. **Verificér påstande og referencer.** Tjek navne, tal, henvisninger og procedurer mod kilder, som sagerne med opdigtede retsafgørelser viser. Acceptér aldrig referencer, I ikke har set.
7. **Vær ærlige over for kunder.** Sig, når et automatiseret system svarer, hvor det betyder noget, og giv en nem vej til en person.
8. **Hold øje med bias.** Gennemgå output på tværs af brugergrupper og slags problemer, og inddrag folk, der kan få øje på huller. Justér eller stop brugen, hvor der opstår skade.
9. **Mål kvalitet og virkning.** Spor tilsidesættelsesrater, fejlrater, sparet tid og brugernes synspunkter. Sammenlign med processen uden AI, og vær skeptiske over for leverandørtal.
10. **Før optegnelser.** For væsentlige beslutninger: gem, hvad der blev spurgt om og produceret, hvem der gennemgik det, og hvad der blev besluttet. Det understøtter ansvar og revision.
11. **Brug et risikorammeværk.** Adoptér en anerkendt tilgang, som NIST's AI RMF eller en organisatorisk AI-politik, til at strukturere beslutninger om, hvor AI er tilladt. Behandl det som en vejledning til at tænke.
12. **Træn folk.** Lær medarbejdere, hvordan værktøjerne virker, hvor de svigter, og hvad der er tilladt. Opdatér træningen, efterhånden som værktøjer og regler ændrer sig.

## Spørgsmål til diskussion i teamet

**Hvor bruger vi allerede AI, officielt eller ej?**

Spørg ærligt. Medarbejdere bruger ofte offentlige værktøjer med rigtige tickets. Målet er ikke at straffe, men at forstå. List anvendelserne og de involverede data. Drøft, hvilke der er acceptable, og hvilke der har brug for en sikrere vej. Aftal en kort politik.

**Hvilken opgave vil vi helst have hjælp til, og hvad sker der, hvis AI tager fejl?**

Vælg en opgave, og gennemgå fejltilfældet. Hvis svaret er en undskyldende e-mail, er risikoen lille; hvis det er en forkert instruktion til en kunde, er risikoen højere. Det hjælper med at rangere anvendelser efter risiko. Vælg en første pilot med begrænset skade.

**Hvordan ville vi vide, at et AI-svar er forkert?**

Spørg, hvem der tjekker svar, og hvordan. Almindelige svar: ingen, eller den der spurgte. Drøft kilder, tests og anden gennemgang. Aftal et minimumstjek for hver slags anvendelse.

**Hvilke data er vi trygge ved at lægge i et AI-værktøj, og hvilke ikke?**

Indsaml typerne: tickets, logs, kundenavne, legitimationsoplysninger, kontrakter. Markér hver som acceptabel, acceptabel efter fjernelse af følsomme dele eller aldrig. Tjek med sikkerhed og jura. Skriv det som en vejledning på én side.

**Hvem er ansvarlig, når en AI-understøttet beslutning går galt?**

Brug et tidligere eksempel på en værktøjsunderstøttet beslutning. Spørg, hvem der svarede. Aftal, at en navngiven person forbliver ansvarlig, og hvilken dokumentation vedkommende bør gemme. Notér ethvert hul, hvor ingen ville.

**Hvad ville overbevise os om, at et værktøj er værd at beholde?**

Bed teamet beskrive det belæg, de ville acceptere: sparet tid med lige så god eller bedre kvalitet, færre fejl, brugertilfredshed. Drøft, hvordan det kan indsamles i et forsøg. Aftal en gennemgangsdato.

## I praksis: et agilt ITIL-eksempel

En national skattemyndigheds IT-servicedesk håndterer omkring 1.200 henvendelser om ugen fra medarbejdere, mange om rutinespørgsmål. Deskchefen foreslår en AI-assistent, der foreslår svar fra vidensbasen og udarbejder svar. Myndighedens sikkerhedsansvarlige er bekymret for personoplysninger i tickets og for forkerte svar, der når medarbejderne.

De aftaler en begrænset pilot. Assistenten arbejder kun ud fra godkendte vidensartikler, viser hvilken artikel hvert forslag kommer fra og siger fra, når den ikke finder noget relevant. Analytikere gennemgår hvert foreslået svar, før det sendes, og værktøjet kan ikke sende af sig selv. Tickets scannes for personoplysninger og legitimationsoplysninger, som fjernes, før assistenten ser dem. Et testsæt på 200 tidligere tickets med kendte svar bruges før piloten, og teamet registrerer, hvor assistenten svigter. Deskchefen og sikkerhedsansvarlige aftaler målinger: hvor ofte analytikere redigerer eller afviser forslag, tid til første svar og et kort tilfredshedsspørgsmål til medarbejderne. Piloten kører i tre måneder, og chefen rapporterer til en fælles gennemgang, der omfatter en analytiker og en medarbejderrepræsentant.

Til sidst accepterer analytikerne de fleste forslag til almindelige spørgsmål, og svartiden for disse falder. Testsættet viser, at assistenten giver et selvsikkert, men forkert svar på spørgsmål om en nylig ændret politik, fordi vidensartiklen var forældet. Nogle problemer består. To analytikere begyndte at sende forslag med lidt kontrol, når der var travlt, en medarbejder med et usædvanligt spørgsmål fik et intetsigende svar, der ikke ramte pointen, og leverandørens vilkår om dataopbevaring var uklare. Chefen tilføjer en regel om, at politikændringer skal opdatere vidensartiklen, før de træder i kraft, bruger en stikprøvekontrol af sendte svar foretaget af en senioranalytiker og beder indkøb og sikkerhedsansvarlige om at afklare vilkårene, før piloten udvides.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams kan tilføje AI-funktioner til produkter og bruge AI til at skrive kode og tests. Tjek genereret kode for korrekthed og sikkerhed, hold hemmeligheder ude af prompts, og vær klare over for brugerne, når AI er involveret. Byg overvågning af AI-adfærd ind i jeres service.

### Service- og driftsteams

Driftsteams vil møde AI i overvågning, deskværktøjer og analyse. Behandl AI-forslag som hypoteser, test dem, og før optegnelser. Hjælp med at definere, hvilke data der må bruges, og giv feedback for at forbedre forankringsmaterialet.

### Ledelse og governance

Ledere sætter politik, risikoappetit og ansvar for AI. Bed om en oversigt over anvendelser, et risikorammeværk og belæg fra piloter, ikke leverandørpåstande. Sørg for, at juridisk, sikkerheds- og privatlivspersonale er med fra start.

### Kunder og brugere

Kunder og brugere bør have at vide, når de har med et automatiseret system at gøre, hvor det betyder noget, og have en vej til en person. Rapportér forkerte eller mærkelige svar, da de er belæg. Spørg leverandører, hvordan de beskytter dine data og kontrollerer AI-output.

## Almindelige fejlmønstre

- **At stole på ikke-verificeret output.** Opdigtede fakta når kunder. I stedet: forankr svar i godkendt materiale, og verificér før afsendelse.
- **Skygge-AI.** Medarbejdere indsætter rigtige data i offentlige værktøjer. I stedet: stil godkendte værktøjer og en klar datapolitik til rådighed.
- **Ingen ansvarlig person.** Ingen svarer for AI-understøttede beslutninger. I stedet: navngiv en ejer, og kræv gennemgang.
- **At tro på leverandørtal.** Fordelspåstande forbliver ukontrollerede. I stedet: test på jeres egne sager, og mål.
- **Forældet forankring.** Vidensbasen er forkert, og AI gentager det. I stedet: hold artikler ajour og ejede.
- **Skjult bias.** Nogle brugere eller problemer behandles dårligere. I stedet: test på tværs af grupper, og gennemgå output.
- **At automatisere før forståelse.** AI handler på produktion uden kontrol. I stedet: begynd med forslag og gennemgang, og gå først til handling med stærke sikkerhedsforanstaltninger.
- **Ingen optegnelser.** Beslutninger kan ikke revideres. I stedet: før logs over, hvad der blev spurgt om, produceret og besluttet.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Politik og ansvar | Brug er ad hoc og uregistreret | Nogle teams har regler | En skrevet politik, en oversigt over anvendelser og navngivne ejere | Politikoverholdelse og hændelser gennemgås | Politik afstemmes på tværs af teams, leverandører og tilsynsmyndigheder |
| Kvalitet og forankring | Output stoles på som standard | Nogle tjek på vigtige anvendelser | Svar er forankret i godkendte kilder og testet på rigtige sager | Fejl- og tilsidesættelsesrater måles og handles på | Forankring og tests deles og forbedres på tværs af teams |
| Databeskyttelse og retfærdighed | Data indsættes frit | Nogle dataregler findes | Regler for datahåndtering og biastjek er rutine | Datahændelser og retfærdighedsfund spores og rettes | Data- og retfærdighedspraksis koordineres på tværs af organisationen og leverandører |
| Værdi og læring | Værdi antages | Nogle forsøg køres | Piloter har aftalte målinger og beslutninger | Fordele og omkostninger måles mod baselines | Læring fra AI-brug spreder sig løbende på tværs af services |

## Tjekliste

- [ ] Vi har en oversigt over, hvor AI bruges i eller omkring vores services, inklusive uofficiel brug.
- [ ] En navngiven person er ansvarlig for hver AI-understøttet anvendelse.
- [ ] En skrevet politik siger, hvilke data der må gå i hvilke værktøjer.
- [ ] Personoplysninger og hemmeligheder fjernes eller maskeres før brug med værktøjer, der ikke er godkendt til dem.
- [ ] Svar vist til kunder eller brugt i beslutninger er forankret i godkendt materiale og gennemgået.
- [ ] Vi har et testsæt af rigtige sager og kører det igen efter ændringer.
- [ ] Kunder får besked, når et automatiseret system svarer, hvor det betyder noget, og har en vej til en person.
- [ ] Vi måler tilsidesættelsesrate, fejlrate, sparet tid og brugernes synspunkter.
- [ ] Der føres optegnelser for væsentlige AI-understøttede beslutninger.
- [ ] Juridisk, sikkerheds- og privatlivspersonale har gennemgået vores brug og værktøjets vilkår.

## AI-prompts

**Formål: at udarbejde en oversigt over AI-brug ud fra det, folk fortæller jer.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at designe et testsæt til en AI-assistent.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at skrive en AI-brugspolitik på én side for et team.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at gennemgå et AI-genereret svar, før det går til en bruger.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## AI-skills

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): brug den til at skrive klare prompts, der leverer det rette materiale og beder om usikkerhed.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): brug den til at dokumentere, hvad en model er til, hvordan den blev testet, og dens grænser.
- [data-governance](../../../../skills/data-governance/SKILL.md): brug den til at afgøre, hvilke data der må bruges med hvilke værktøjer.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): brug den til at forberede spørgsmål til juridisk og privatlivspersonale om AI-brug.
- [risk-register](../../../../skills/risk-register/SKILL.md): brug den til at registrere AI-relaterede risici, ejere og behandlinger.

## Vigtigste kilder

- **AIOps** (Wikipedia): en kort beskrivelse af AI til IT-drift, dens kapabiliteter og dens påståede fordele, uden kritik.
- **Hallucination (artificial intelligence)** (Wikipedia): årsager, eksempler og afbødningsidéer for falsk output.
- **AI Risk Management Framework** (NIST): det frivillige rammeværk og dets profil for generativ AI; læs selve rammeværket for detaljerne.
- **ITIL certifications** (PeopleCert): ejerens offentlige udsagn om den nye ITIL og dens AI-governancemodul.

## Referencer

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
