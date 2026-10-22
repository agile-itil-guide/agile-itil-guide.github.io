# AI-skills og prompts

**En god prompt giver en AI-assistent det materiale, den opgave og de kontroller, den har brug for, og en god skill pakker den viden, så et team kan genbruge den, hvilket gør vejledningens AI-prompts og -skills til udgangspunkter, som I tilpasser og verificerer.**

## Hvorfor det betyder noget

Hvert emne i denne vejledning ender med prompts og skills. De findes, fordi mange af opgaverne i servicestyring egner sig godt til en assistent, der kan læse en bunke tickets, udarbejde en runbook eller gøre noter til en plan. De findes også, fordi en vag anmodning til en AI giver vage, nogle gange forkerte resultater. Forskellen mellem et brugbart svar og et plausibelt, men tomt, ligger ofte i, hvordan anmodningen blev skrevet, og hvilket materiale der fulgte med.

Dette emne forklarer, hvordan man bruger vejledningens prompts og skills, hvorfor de er skrevet, som de er, og hvordan man skriver sine egne til sit team. Det handler mere om vaner end om tricks: at levere rigtigt materiale, sige hvad man vil have, bede assistenten markere, hvad den ikke ved, og kontrollere det, der kommer tilbage. Det bygger på forbeholdene i det foregående emne, som beskriver, hvor AI hjælper, og hvor den kan skade (se Emne 6.2 — AI i IT-servicestyring).

Kilderne er praktiske. Vejledningens egen skill `skills/prompt-engineering` beskriver promptskrivning som den bevidste praksis at designe og iterere på de instruktioner, en sprogmodel får, og behandler en prompt som et lille stykke software, der skrives, afprøves mod rigtige sager og revideres. Claude Code-dokumentationen beskriver, hvordan skills er struktureret som mapper med en `SKILL.md`-fil. [Wikipedia-artiklen om store sprogmodeller](https://en.wikipedia.org/wiki/Large_language_model) giver baggrund. Ingen kilde, der er læst til denne vejledning, giver belæg for, hvilke promptteknikker der virker bedst; behandl teknikkerne her som vaner, der skal afprøves.

## Kernebegreber

### Prompts, skills og hvad de er til

En **prompt** er den instruktion og det materiale, du giver en AI-assistent til én opgave. En **skill**, i det format der bruges i denne vejledningens mappe `skills/`, er en genanvendelig pakke af viden til en slags opgave: en mappe med en `SKILL.md`-fil, der siger, hvornår den skal bruges, og hvordan arbejdet gøres. I Claude Codes dokumentation er en skill en mappe med en påkrævet `SKILL.md`-fil, hvis frontmatter har et navn og en beskrivelse, og hvis krop giver instruktionerne; assistenten bruger beskrivelsen til at afgøre, hvornår skillen skal anvendes, og indlæser kun hele kroppen, når den bruges.

| | Prompt | Skill |
|---|---|---|
| **Omfang** | Én opgave, nu | En slags opgave, genbrugt |
| **Lever** | I en chat eller et dokument | I en mappe, som `skills/` eller et projekts skills-mappe |
| **Ændres af** | Dig, hver gang | Teamet, med gennemgang |
| **Bedst til** | Specifik analyse af dit eget materiale | Gentagelige metoder som at køre et retrospektiv |

### Hvordan vejledningens prompts er bygget

Vejledningens prompts følger et enkelt mønster, fastlagt i stilguiden:

1. **Et fedt formål på én linje** siger, hvad prompten er til.
2. **En afgrænset blok** indeholder tekst, du kan kopiere og indsætte.
3. **Pladsholdere i kantede parenteser** markerer, hvad du skal levere, med et hint om, hvad der skal stå.
4. **En opgave**, der nævner det ønskede output.
5. **Grænser**: opfind ikke tal, kilder, citater eller compliancepåstande; brug kun det indsatte materiale.
6. **En anmodning om at spørge først**, når information mangler, og om at markere antagelser.
7. **Et sidste tjek**: "List what you are unsure of."

Disse dele findes af grunde. Pladsholdere tvinger dig til at medbringe rigtigt materiale. Grænsen forhindrer assistenten i at udfylde huller med opfindelse. Anmodningen om afklarende spørgsmål gør et enkelt gæt til en kort samtale. Den sidste linje får assistenten til selv at markere sine svage punkter, hvilket hjælper dig med at afgøre, hvad du skal kontrollere.

### Mønstre, der hjælper

Vejledningens skill `prompt-engineering` opregner teknikker, som denne vejledning opsummerer med egne ord:

- **Vær specifik om det output, du vil have,** som en tabel med navngivne kolonner eller en nummereret liste på højst fem punkter, så assistenten ikke gætter formen.
- **Giv eksempler, når instruktioner er tvetydige,** og vis det ønskede mønster i en kort prøve.
- **Giv den kontekst, assistenten ikke kan kende,** som jeres terminologi, begrænsninger og det pågældende dokument, og sig, hvad den ikke bør antage.
- **Iterér mod rigtige testsager,** kør prompten på en række rigtige input, og revidér, hvor den svigter, i stedet for at bedømme den ud fra ét godt eksempel.

En prompt tunet på ét input kan svigte på andre. Skillen peger på, at et kort, mærkeligt formuleret input, eller et der mangler et felt, kan bryde en prompt, der klarede det oprindelige eksempel.

### Verifikationsvaner

Hvert output skal kontrolleres i forhold til prisen for at tage fejl. Vaner, der hjælper:

- **Tjek fakta mod den kilde, du indsatte.** Bed assistenten citere den del af dit materiale, der understøtter hvert udsagn.
- **Acceptér aldrig referencer, du ikke har set.** Sagerne beskrevet i det foregående emne omfatter opdigtede retsafgørelser; gentag dem ikke.
- **Adskil det, assistenten så, fra det, den antog.** Vejledningens prompts beder om dette.
- **Test beregninger selv,** eller bed om mellemregningerne, og tjek dem.
- **Brug et ekstra øjeblik på alt, der forlader teamet,** som et kundesvar eller en politik.
- **Før optegnelser over væsentlig brug,** som beskrevet i Emne 6.2 — AI i IT-servicestyring.

### Beskyttelse af data

Før du indsætter noget i en prompt, så spørg, hvad det indeholder, og hvor det havner. Fjern personoplysninger, legitimationsoplysninger og fortrolige kommercielle detaljer, medmindre værktøjet og dets vilkår er godkendt til dem (se Emne 3.13 — Styring af informationssikkerhed). Vejledningens prompts beder dig anonymisere, men ansvaret er dit. Er du i tvivl, så beskriv situationen i generelle vendinger.

### Hvordan en skill ser ud

Ud fra Claude Code-dokumentationen og skills i denne vejledning er en skill en mappe som `skills/runbook/`, der indeholder `SKILL.md`. Filen begynder med YAML-frontmatter mellem `---`-markører, der indeholder mindst et `name` og en `description`. Dokumentationen siger, at beskrivelsen fortæller assistenten, hvad skillen gør, og hvornår den skal bruges, og anbefaler at sætte den vigtigste anvendelse først. Kroppen giver metoden i markdown. Andre filer, som referencedokumenter eller scripts, kan ligge ved siden af og indlæses, når der er brug for dem; dokumentationen råder til at holde selve `SKILL.md` kort, under 500 linjer.

De kopierede skills i denne vejledning følger samme form. Deres beskrivelser begynder med "Use when asked to…", hvilket gør det klart, hvornår hver gælder.

### Hvor skills bor

Dokumentationen beskriver personlige skills i en brugers hjemmemappe for skills, projektskills i et repositorys skills-mappe, som kan committes og deles med et team, og andre placeringer som plugins. For et team er en projektmappe under versionsstyring det naturlige sted: skills gennemgås, ændres gennem samme proces som andet arbejde og er tilgængelige for alle.

### At skrive egne teamskills

En teamskill fanger en praksis, teamet gentager og vil have gjort ensartet. Eksempler for servicestyring: hvordan man skriver en postmortem i jeres husstil, hvordan man triagerer en bestemt slags ticket, hvordan man forbereder en ændringsanmodning, hvordan man kører jeres fredagsgennemgang. Sådan skriver I en:

1. **Vælg en opgave, I gentager,** og som har en kendt god måde at blive gjort på.
2. **Skriv beskrivelsen først,** begyndende med "Use when…" og den vigtigste anvendelse, så assistenten og jeres kolleger ved, hvornår den gælder.
3. **Skriv metoden** som korte trin, med outputformat, tjek og ting, der skal undgås.
4. **Tilføj eksempler** på et godt resultat, med følsomme detaljer fjernet.
5. **Sig, hvad den ikke må gøre,** som at opfinde tal eller sende noget uden gennemgang.
6. **Test den på rigtige sager,** og revidér.
7. **Giv den en ejer og en gennemgangsdato,** som ethvert andet fælles dokument.

### Skills i denne vejledning

Mappen `skills/` i dette repository rummer kopier af skills fra samlingen skills-on-ai, opført i `skills/README.md`, og to skills skrevet til denne vejledning: én til læsere og én til vedligeholdere. Hvert emne linker til de skills, der er mest nyttige for dets emne, med en sætning om, hvornår hver skal bruges. De kopierede skills er generiske, ikke specifikke for denne vejlednings indhold, så brug dem som udgangspunkter, og tilpas deres output til jeres kontekst.

### Grænser

Ingen kilde, der er læst til denne vejledning, måler, hvor godt nogen promptteknik virker, og AI-værktøjer ændrer sig hurtigt. Claude Code-dokumentationen, der blev læst, var lang og blev kun læst delvist. Det følgende er praktisk rådgivning, der har holdt i almindelig brug, tilbudt som vaner, der skal afprøves, og ikke som garantier.

## God praksis

1. **Start fra en rigtig opgave og rigtigt materiale.** Vælg noget, I har brug for at få gjort, og indsæt de faktiske fakta, ikke en beskrivelse af dem. Udfyld hver pladsholder med specifikke oplysninger.
2. **Angiv formålet på én linje.** Sig, hvad outputtet skal bruges til, og hvem der skal bruge det. Det hjælper assistenten med at vælge det rette detaljeringsniveau.
3. **Specificér outputtet.** Nævn format, længde og struktur. Bed om en tabel, når I vil sammenligne, en liste, når I vil have trin.
4. **Sæt grænser.** Sig, hvad assistenten ikke må: opfinde tal, kilder eller citater; antage fakta, der ikke er givet; påstå, at en regel gælder, uden teksten.
5. **Bed om afklarende spørgsmål først.** Bed assistenten spørge om det, den har brug for, før den svarer. Svar kort, og bed den så fortsætte.
6. **Bed den adskille fakta fra antagelser.** Få den til at markere, hvad den tog fra jeres materiale, og hvad den formodede. Denne vejledningens prompts slutter med "List what you are unsure of."
7. **Bed om belæg.** Bed om citater fra jeres materiale, der understøtter hver påstand, så I hurtigt kan tjekke.
8. **Iterér.** Behandl det første svar som et udkast. Sig, hvad der er galt, og bed om en revision, eller ændr prompten, og prøv igen.
9. **Test prompts på flere sager.** Før I stoler på en prompt, så kør den på tre eller fire rigtige input, inklusive et usædvanligt. Notér, hvor den svigter.
10. **Beskyt data.** Fjern personlige og fortrolige detaljer, før I indsætter. Brug godkendte værktøjer. Følg jeres organisations politik.
11. **Tjek før brug.** Verificér fakta, tal og referencer. Lad en person gennemgå alt, der går til kunder eller ændrer et system.
12. **Del, hvad der virker.** Læg prompts, der viser sig nyttige, med deres noter i en teamskill eller et dokument under versionsstyring, med en ejer.

## Spørgsmål til diskussion i teamet

**Hvilke opgaver gentager vi, som en assistent kunne hjælpe med, og hvad ville vi have brug for at tjekke?**

Bed hver person liste opgaver og markere risikoen, hvis outputtet var forkert. Gruppér dem i lav, mellem og høj risiko. Start med en med lav risiko. Facilitatoren kan spørge, hvad kontroltrinnet ville være. Vælg én opgave til et forsøg.

**Hvad indsætter vi i AI-værktøjer i dag, og bør vi?**

Vær ærlige og ikke dømmende. List eksempler. Sammenlign med datapolitikken og de godkendte værktøjer. Aftal et hurtigt tjek, folk kan anvende før indsættelse: "indeholder det her personoplysninger, hemmeligheder eller fortrolige detaljer?"

**Hvilke af denne vejlednings prompts ville vi prøve først, og med hvilket rigtigt materiale?**

Bladr i promptsene sammen, og vælg én. Identificér det rigtige materiale, der skal indsættes, fjern følsomme detaljer, og kør den. Sammenlign resultater, og drøft, hvad der skal ændres i prompten. Det er en hurtig måde at lære mønsteret på.

**Hvordan ville vi vide, at en prompt virker?**

Bed om et testsæt: nogle få rigtige input med kendte gode output. Drøft, hvordan svar scores, og hvem der afgør det. En prompt uden testsæt er et håb. Aftal et lille sæt for én prompt.

**Hvilken praksis gentager vi, der fortjener at blive en teamskill?**

List kandidater: et reviewformat, en triagerutine, en skabelon til rapporter. Vælg én, og udkast beskrivelsen og trinnene sammen. Beslut, hvem der ejer den, og hvornår den gennemgås.

**Hvad ville vi aldrig lade en AI gøre på egen hånd?**

List handlinger: at sende til kunder, at ændre produktion, at godkende adgang, at afgøre en prioritet. Drøft hvorfor. Svarene er de grænser, der skal skrives ind i jeres prompts og skills. Aftal en kort liste.

## I praksis: et agilt ITIL-eksempel

Et regionalt hospitals IT-servicedesk har fjorten analytikere. Deskens leder har lagt mærke til, at kolleger bruger en AI-assistent på forskellige måder: én indsætter hele tickets, inklusive patientnavne, i en offentlig chatbot; en anden skriver omstændelige prompts og får brugbare resuméer; de fleste bruger den slet ikke. En nylig vidensartikel, udarbejdet af en assistent, indeholdt et procedure-trin, der ikke fandtes.

Deskens leder holder en session på en time efter denne vejlednings tilgang. Hun starter med data: gruppen aftaler en regel om, at ingen patientoplysninger eller legitimationsoplysninger går i noget værktøj, og at den godkendte assistent, som hospitalet har licenseret med passende vilkår, er den eneste, der bruges med tickettekst. Hun vælger én opgave, at udarbejde en vidensartikel ud fra en ticket, der er løst, og bruger mønsteret fra denne vejlednings prompts: et formål på én linje, en pladsholder til den anonymiserede ticket, instruktioner om kun at bruge ticketens indhold, om at markere ethvert udledt trin med et mærke og om at liste, hvad den er usikker på. To analytikere kører prompten på fem tidligere tickets, og gruppen læser resultaterne sammen. Prompten opfinder et trin i ét tilfælde; de tilføjer en linje, der beder om et citat fra ticketen for hvert trin.

Deskens leder skriver den forbedrede prompt som en teamskill i deskens fælles mappe, med en beskrivelse der begynder "Use when…", en ejer og en gennemgangsdato, og tilføjer en regel om, at hver udarbejdet artikel kontrolleres af en anden analytiker før offentliggørelse. Efter to måneder er antallet af udarbejdede artikler pr. uge fordoblet, og gennemgangerne finder færre fejl end før. Nogle problemer består. To analytikere indsætter stadig detaljer i et offentligt værktøj, når de er pressede, skillen producerer alt for formelt sprog, som analytikerne omskriver, og én gennemgang indrømmer at skimme. Deskens leder gentager datareglen ved hvert teammøde, tilføjer et stileksempel til skillen og beder gennemgangerne afkrydse en kort tjekliste.

## Fire perspektiver

### Produkt- og leveranceteams

Leveranceteams bruger assistenter til kode, tests og dokumentation. Anvend de samme vaner: rigtigt materiale, klare grænser, verifikation og gennemgang. Hold hemmeligheder ude af prompts, og gem de nyttige prompts og skills sammen med koden.

### Service- og driftsteams

Driftsteams kan bruge prompts til at analysere tickets, udarbejde runbooks og forberede gennemgange. Hold personoplysninger ude, tjek output mod logs og registreringer, og skriv skills til rutiner, teamet gentager, som postmortems og vagtskifter.

### Ledelse og governance

Ledere sætter reglerne for, hvad der må bruges, med hvilke data, og hvem der er ansvarlig. Bed om en oversigt, en datapolitik og belæg fra piloter. Støt tid til, at teams kan skrive og teste prompts og skills, og sørg for, at fælles skills har ejere.

### Kunder og brugere

Kunder og brugere kan se resultaterne af prompts og skills i svar, artikler og resuméer. Forvent, at leverandører kontrollerer dem og fortæller dig, når de bruger automatiserede værktøjer, hvor det betyder noget. Rapportér fejl, som hjælper med at forbedre det underliggende materiale.

## Almindelige fejlmønstre

- **Vage anmodninger.** Assistenten gætter. I stedet: giv materialet, formålet og det output, I vil have.
- **Indsættelse af følsomme data.** Personlige eller fortrolige detaljer forlader organisationen. I stedet: fjern dem, og brug godkendte værktøjer.
- **At acceptere opdigtet indhold.** Opfundne trin, tal eller referencer bruges. I stedet: sæt grænser, bed om citater, og verificér.
- **Tuning på ét eksempel.** En prompt virker én gang og svigter andre steder. I stedet: test på flere rigtige input.
- **Skills uden ejere.** Fælles prompts bliver forældede. I stedet: tildel en ejer og en gennemgangsdato, og hold dem under versionsstyring.
- **For stor tillid til kopierede prompts.** En prompt fra internettet eller fra denne vejledning bruges uændret. I stedet: tilpas til jeres kontekst, og tjek resultaterne.
- **Intet ekstra øje.** AI-output går direkte til kunder. I stedet: lad en person gennemgå alt, der forlader teamet.
- **At behandle assistenten som en autoritet.** Dens selvsikkerhed tages for korrekthed. I stedet: bed om, hvad den er usikker på, og tjek.

## Modenhedsmodel

| Dimension | Igangsætte | Udvikle | Standardisere | Styre | Orkestrere |
|---|---|---|---|---|---|
| Promptpraksis | Folk skriver ad hoc-prompts | Nogle deler prompts | Teams bruger et fælles mønster med formål, materiale, grænser og tjek | Promptkvalitet testes på sæt af rigtige sager | Prompts forbedres på tværs af teams ud fra fælles testresultater |
| Skills | Ingen fælles skills | Nogle personlige skills findes | Teamskills med ejere og gennemgangsdatoer bor i versionsstyring | Brug og resultater af skills gennemgås | Skills deles og vedligeholdes på tværs af teams og partnere |
| Verifikation og data | Output stoles på; data indsættes frit | Nogle tjek og dataregler | Verifikationsvaner og en datapolitik er rutine | Fejl og datahændelser spores og handles på | Verifikation og datapraksis koordineres på tværs af organisationen |
| Læring | Læring er individuel | Nogle tips deles | Teams holder jævnlige sessioner for at forbedre prompts og skills | Forbedringer spores og måles | Læring spreder sig løbende på tværs af teams |

## Tjekliste

- [ ] Teamet har en kort regel for, hvilke data der må gå i hvilke AI-værktøjer.
- [ ] Prompts, vi stoler på, har et angivet formål, rigtigt materiale, grænser og en anmodning om, hvad assistenten er usikker på.
- [ ] Hver prompt, vi stoler på, er testet på mindst tre rigtige input.
- [ ] Output, der går uden for teamet, gennemgås af en person.
- [ ] Referencer og tal fra AI-output tjekkes mod kilder.
- [ ] Nyttige prompts gemmes med noter et fælles sted under versionsstyring.
- [ ] Teamskills har en klar "Use when…"-beskrivelse, en ejer og en gennemgangsdato.
- [ ] Teamet har listet handlinger, som AI aldrig må foretage på egen hånd.
- [ ] Medarbejdere ved, hvilke værktøjer der er godkendt.
- [ ] Vi gennemgår vores prompts og skills mindst to gange om året.

## AI-prompts

**Formål: at forbedre en prompt, du allerede bruger.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Formål: at gøre en gentaget opgave til et udkast til en teamskill.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at bygge et lille testsæt til en prompt.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Formål: at kontrollere et AI-skrevet udkast mod dets kilde.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## AI-skills

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): brug den til at skrive, teste og forbedre prompts, så de giver pålidelige resultater.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): brug den til at dokumentere, hvad en model er til, og hvad dens grænser er, når jeres team stoler på en.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): brug den, når du hjælper et team med at opbygge vaner omkring prompts og skills over tid.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): brug den til at finde emner i denne vejledning, køre en teamsamtale ud fra dens spørgsmål eller tilpasse en af dens prompts.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): brug den, når du skriver eller tjekker et emne, en prompt eller et skill-link til denne vejledning.

## Vigtigste kilder

- **Claude Code skills documentation** (code.claude.com): beskrivelsen af, hvordan skills er struktureret som mapper med en `SKILL.md`-fil.
- **Prompt engineering** (denne vejlednings `skills/prompt-engineering/SKILL.md`): en kort fremstilling af teknikker og argumentet for at teste prompts på rigtige input.
- **Large language model** (Wikipedia): baggrund om, hvordan disse systemer er bygget, og hvor de kan svigte.
- **AI Risk Management Framework** (NIST): det frivillige rammeværk til styring af AI-risici, nyttigt for teampolitik.

## Referencer

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
