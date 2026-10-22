# Problemhantering

**Problemhantering finner och tar bort orsakerna bakom återkommande incidenter, och dess agila form är en jämn ström av små, evidensbaserade åtgärder i backloggen i stället för enstaka stora utredningar.**

## Varför detta är viktigt

Ett team som hanterar incidenter väl men aldrig tar bort deras orsaker går i ett löpband. Varje avbrott repareras, samma fel återkommer och de jourhavande ingenjörerna blir trötta. Problemhantering är arbetssättet som kliver av löpbandet: det frågar varför incidenten hände, om den kommer att hända igen och vad som skulle stoppa den.

Agila team är väl placerade att göra detta. De har en backlogg där en åtgärd kan konkurrera med en funktion, de arbetar i korta cykler som gör små åtgärder billiga och de håller retrospektiv där mönster kan märkas. Vad de ofta saknar är vanan att koppla incidenter till varandra och disciplinen att söka orsaker ordentligt. Problemhantering tillhandahåller båda.

[Wikipedia-artikeln om grundorsaksanalys](https://en.wikipedia.org/wiki/Root_cause_analysis) är den huvudsakliga källan som lästs för det här ämnet, eftersom den engelska Wikipedia inte har någon artikel med titeln "Problem management" på den adress som kontrollerats. Artikeln beskriver grundorsaksanalys (RCA) som en problemlösningsmetod som används inom IT-drift och andra fält, och den bär underhållsmarkeringar om saknade källhänvisningar. ITIL-ordförrådet som används här, som känt fel och tillfällig lösning, kommer från allmänt publicerade beskrivningar av arbetssättet, som den här guiden inte kunde bekräfta mot ramverksägarens text. Läs ägarens aktuella publikationer när exakta definitioner spelar roll (se Ämne 2.2 — ITIL).

## Centrala begrepp

### Incident, problem, känt fel

Tre termer används tillsammans, och skillnaderna är viktiga:

| Term | Betydelse, så som den allmänt används i ITSM | Exempel |
|---|---|---|
| **Incident** | Ett oplanerat avbrott i en tjänst eller en försämring av dess kvalitet | Bokningssidan ligger nere i tjugo minuter |
| **Problem** | Den underliggande orsaken, eller den misstänkta orsaken, till en eller flera incidenter | Ett minnesläckage i bokningstjänsten |
| **Känt fel (known error)** | Ett problem vars orsak har identifierats, vanligtvis med en tillfällig lösning registrerad | Ett minnesläckage är förstått; att starta om tjänsten varje natt förhindrar avbrott tills det är åtgärdat |

En **tillfällig lösning (workaround)** är ett sätt att minska eller undvika effekten av en incident eller ett problem utan att ta bort dess orsak. Problemhantering handlar om att ta bort orsaken, och incidenthantering handlar om att återställa tjänsten (se Ämne 3.2 — Incidenthantering).

### Reaktivt och proaktivt

Artikeln om grundorsaksanalys skiljer reaktiva och proaktiva angreppssätt i allmänna termer. Reaktivt arbete behandlar symptom snabbt. Proaktivt arbete syftar till att förebygga problem och sätter diagnostisk noggrannhet före fart. I ITSM-praxis finns båda: reaktiv problemhantering undersöker problem efter incidenter, och proaktiv problemhantering letar efter mönster och svagheter innan de orsakar incidenter.

### Vad en grundorsak är

Artikeln definierar en grundorsak med ett praktiskt test: en faktor är grundorsaken till ett problem om dess borttagning förhindrar att problemet återkommer. Den skiljer en grundorsak från andra orsaksfaktorer. Det är en användbar regel. Om ni tar bort en faktor och problemet fortfarande kan återvända har ni funnit en bidragande faktor, inte grundorsaken.

Artikeln varnar också för gränser. Den säger att saknade övervakningsdata, mycket stora händelsevolymer, flera grundorsaker och utredare som stannar vid en ytlig orsak alla försvårar analysen. Inom IT, noterar den, saknar RCA ofta felträd eller konstruktionsspecifikationer, så "det finns ingen grundorsak" har blivit ett vanligt talesätt. För komplexa system, räkna med flera bidragande orsaker och inte en enda skyldig.

### Principer för grundorsaksanalys

Artikeln listar allmänna steg:

1. Beskriv problemet tydligt.
2. Bygg en tidslinje från normal drift till felet.
3. Skilj grundorsaken från andra orsaksfaktorer.
4. Rita en orsaksgraf som kopplar grundorsaken till problemet.

Den tillägger att utredare bör titta på försvar som fallerade eller saknades (barriäranalys), undvika partiskhet i utredningslinjerna, besluta om korrigerande åtgärder och granska om dessa åtgärder var effektiva.

### Metoder

Artikeln säger att, enligt ISO/IEC 31010, kan RCA använda fem varför, analys av felmoder och deras effekter (FMEA), felträdsanalys, Ishikawa-diagram (fiskbensdiagram) och Paretoanalys. Den tillskriver Kaoru Ishikawa orsaksdiagrammet som bär hans namn. Den kallar också fiskben- och fem-varför-metoder "inte tillräckligt stränga", en åsikt den inte stöder med en källa. En praktisk läsning: enkla metoder är bra utgångspunkter för teamdiskussion, och komplexa eller högriskfel kan behöva strängare.

| Metod | Vad den gör | När den hjälper |
|---|---|---|
| **Fem varför** | Frågar "varför" upprepade gånger för att gå från ett symptom mot en orsak | Snabb diskussion på teamnivå om enkla orsakskedjor |
| **Ishikawa-diagram (fiskben)** | Grupperar möjliga orsaker efter kategori | Brainstorming av många möjliga orsaker |
| **Paretoanalys** | Rangordnar orsaker efter frekvens eller påverkan | Att välja vilket återkommande problem som ska hanteras först |
| **Felträdsanalys** | Kartlägger kombinationer av fel som leder till ett utfall | Säkerhetskritiska eller komplexa fel |
| **FMEA** | Ser framåt på hur delar kan fallera och vilken effekten skulle bli | Proaktiv designgranskning |

### Effektiva korrigerande åtgärder

Artikeln säger att korrigerande åtgärder som bara lägger till pappersarbete eller utbildning är mindre effektiva. I praktiken föreslår det att gynna åtgärder som ändrar systemet: automatisera en kontroll, ta bort en felmod, lägg till ett skydd, förbättra övervakningen. En åtgärd som "påminn ingenjörer om att vara försiktiga" är svag.

### Skuldfrihetsprincipen

Problemutredning delar skuldfrihetsprincipen som beskrivs för efteranalyser i Googles SRE-bok: identifiera bidragande orsaker utan att lägga skuld på individer, eftersom människor kan läras upp och system kan åtgärdas (se Ämne 3.2 — Incidenthantering). En utredning som finner "mänskligt fel" och stannar har vanligtvis stannat för tidigt. Fråga vad som gjorde felet möjligt och vad som skulle göra det svårare.

### Problemhantering i ett agilt flöde

Ett praktiskt agilt angreppssätt ser ut så här:

- Incidenter och efteranalyser skapar kandidatproblem.
- En kort, regelbunden genomgång grupperar upprepade incidenter och rangordnar problem efter påverkan och frekvens.
- Valda problem går in i backloggen som vanliga objekt, med en ägare, en hypotes och en tidsgräns för utredning.
- Tillfälliga lösningar registreras som kända fel så att servicedesken och jourhavande ingenjörer kan använda dem (se Ämne 3.9 — Kunskapshantering).
- Åtgärder är små och testade, släpps på normalt sätt och kontrolleras efteråt för att se om incidenterna upphörde.

## Bästa praxis

1. **Koppla incidenter till problem.** Registrera vilka incidenter som verkar ha samma orsak. Utan länkar kan ni inte se mönstret, och utan mönstret kan ni inte argumentera för en åtgärd.
2. **Granska incidenter efter mönster enligt schema.** En gång i månaden, gruppera nyliga incidenter efter tjänst och sannolik orsak och välj de främsta. Använd Pareto-tänkande: några få orsaker står vanligtvis för mycket av smärtan.
3. **Behandla problem som backlogg-objekt.** Ge varje valt problem en ägare, ett påstående och en tidsgräns för utredning, och låt det konkurrera med annat arbete. En separat kö av "problem" som ingen schemalägger är en kyrkogård.
4. **Börja med ett tydligt problempåstående.** Skriv vad som händer, var, hur ofta och vilken påverkan det har, med fakta. Vaga påståenden leder till vaga åtgärder.
5. **Bygg en tidslinje.** Samla loggar, ändringar och händelser från normal drift till fel. Artikeln listar tidslinjen som ett kärnsteg, och många överraskningar kommer från ändringar som ingen kopplat.
6. **Fråga efter orsaken som, om den tas bort, förhindrar återkomst.** Använd artikelns test. När teamet föreslår en orsak, fråga om dess borttagning skulle hindra problemet från att återvända.
7. **Räkna med mer än en orsak.** Leta efter bidragande faktorer i design, övervakning, process och människors kunskap. Stanna inte vid den första rimliga.
8. **Välj metoder som passar problemet.** Använd fem varför eller ett fiskben för snabb teamdiskussion, och strängare verktyg för allvarliga eller komplexa fel.
9. **Föredra åtgärder som ändrar systemet.** Gynna automatisering, skydd och bättre övervakning framför påminnelser och utbildning. Registrera den förväntade effekten så att ni kan kontrollera den.
10. **Registrera tillfälliga lösningar som kända fel.** Skriv hur symptomet ser ut, den tillfälliga lösningen och vem som äger åtgärden. Dela registret med servicedesken och jourpersonalen.
11. **Kontrollera att åtgärden fungerade.** Efter en åtgärd, bevaka återkomst under en överenskommen period och rapportera resultatet. En åtgärd som aldrig kontrolleras är ett hopp.
12. **Dela det ni finner.** Publicera korta sammanfattningar av problem och åtgärder så att andra team kan känna igen liknande mönster.

## Frågor att diskutera med teamet

**Vilken incident fortsätter att återkomma, och vad tror vi orsakar den?**

Be människor nämna den incident de är tröttast på. Jämför svar. Fråga sedan vad var och en tror är orsaken och hur de vet. Föreställningar skiljer sig ofta, vilket visar hur lite delade belägg som finns. Facilitatorn kan fråga vilka data som skulle avgöra saken. Välj en att utreda med en tidsgräns.

**Hur vet vi om två incidenter har samma orsak?**

Titta på hur incidenter registreras och fråga om någon snabbt kunde hitta relaterade incidenter. Typiska svar är fri text, minne eller tur. Fråga vilken liten ändring i registren som skulle hjälpa, som ett fält för tjänst och sannolik orsak. Kom överens om en.

**Vad gör vi när vi finner "mänskligt fel" i en genomgång?**

Be om ett färskt exempel. Frågan är om genomgången stannade där. Diskutera vad i systemet som gjorde felet möjligt: oklara instruktioner, ett förvirrande verktyg, tidspress. Jämför med idén att man inte kan åtgärda människor men man kan åtgärda system. Kom överens om en fråga att ställa varje gång, som "Vad gjorde detta lätt att göra?"

**Vilka åtgärder från tidigare genomgångar ändrade faktiskt systemet, och vilka lade bara till en påminnelse?**

Lista åtgärderna från de fem senaste genomgångarna och markera var och en som en systemändring eller en påminnelse. Artikeln säger att påminnelser och pappersarbete är mindre effektiva. Fråga varför påminnelser är så vanliga: de är snabba, billiga och känns som handling. Välj en påminnelse att ersätta med en starkare åtgärd.

**Var har vi tillfälliga lösningar som ingen har skrivit ned?**

Fråga jourhavande ingenjörer och deskanalytiker vilka knep de använder. Varje oskriven tillfällig lösning är en risk. Registrera dem som kända fel med symptom, tillfällig lösning och ägare. Facilitatorn kan fråga vem som har nytta av varje register. Gör en kort lista den här veckan.

**Hur skulle vi veta att en åtgärd har fungerat?**

Välj en nyligen genomförd åtgärd och fråga vilket belägg som visade det. Om svaret är "inga fler klagomål", fråga hur länge ni väntade och vad ni mätte. Diskutera en enkel kontroll: bevaka det specifika symptomet under en bestämd period. Kom överens om att registrera kontrollen för varje åtgärd.

## I praktiken: ett agilt ITIL-exempel

Ett medelstort logistikföretag driver en ruttplaneringstjänst som används av dess förare och dispatchers. Plattformsteamet på nio har hanterat samma incident ungefär varannan vecka: ruttberäkningar tar timeout i tio till femton minuter på morgonen och återhämtar sig sedan. Varje gång startar den jourhavande ingenjören om en arbetsprocess, och incidenten stängs. Dispatchers klagar på att morgonplaneringen inte går att lita på.

Teamledaren startar en månatlig genomgång av incidenter, grupperade efter tjänst och sannolik orsak. Morgontimeouterna toppar listan. Hon skriver ett problempåstående utifrån incidentregistren: timeouter inträffar på vardagar mellan 7:00 och 7:30, varar tio till femton minuter och påverkar alla dispatchers. Teamet bygger en tidslinje som inkluderar en schemalagd dataimport klockan 7:00 och en nylig ändring som ökade importens storlek. En diskussion med fem varför antyder att importen mättar databasen. De prövar den självklara åtgärden, att lägga till kapacitet, men incidenterna fortsätter i lägre takt, så de drar slutsatsen att kapacitet var en bidragande faktor och inte grundorsaken.

En andra titt visar att importen låser en tabell som ruttberäkningarna också läser. Teamet flyttar importen till en separat replika och lägger till ett larm för låsvänttider. De registrerar omstarten som ett känt fel med symptom och tillfällig lösning tills åtgärden är live, och de kommer överens om att bevaka symptomet i sex veckor. Incidenterna upphör. Vissa frågor återstår: en annan import från en partner körs fortfarande vid toppbelastning, och teamet har ännu inte övertygat partnern att ändra sitt schema. De sätter partnerns schema på nästa planeringsagenda och behåller låslarmet.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam har kunskapen att åtgärda orsaker. Ta de främsta problemen in i er backlogg och behandla dem som arbete som förtjänar förtroende. Lägg till övervakning och tester som hade avslöjat orsaken, och skriv det kända felet på ett språk som deskken kan använda.

### Tjänste- och driftteam

Driftteam ser incidenterna och för registren. Koppla incidenter, kör den månatliga genomgången och registrera tillfälliga lösningar som kända fel. För beläggen till leveransteam i en form som för fram argumentet, med frekvens, påverkan och tidslinje.

### Ledning och styrning

Ledare avgör om problemåtgärder får tid. Be om de främsta återkommande problemen och vad som görs åt dem. Motstå att räkna stängda incidenter som framgångsmått, eftersom det belönar reparation. Stöd åtgärder som kräver ansträngning men tar bort smärta.

### Kunder och användare

Kunder och användare har nytta när upprepade fel upphör. Rapportera återkommande problem med datum och effekter, eftersom mönster hjälper teamet. Fråga leverantörer vad de har gjort åt orsakerna till upprepade avbrott och räkna med ett svar bortom "vi startade om det".

## Vanliga orsaker till misslyckande

- **Reparation utan borttagning.** Incidenter stängs och återkommer. Koppla i stället upprepningar till ett problem och åtgärda orsaken.
- **En problemkö som ingen schemalägger.** Problem väntar för evigt. Lägg i stället valda problem i backloggen med ägare och tidsgränser.
- **Att stanna vid mänskligt fel.** Genomgången slutar med någon att lägga skuld på. Fråga i stället vad som gjorde felet möjligt och åtgärda systemet.
- **Svaga åtgärder.** Påminnelser och utbildning ersätter systemändringar. Föredra i stället automatisering, skydd och bättre övervakning.
- **Att söka en enda grundorsak.** Teamet insisterar på en enda skyldig. Acceptera i stället flera bidragande orsaker och åtgärda de mest effektiva.
- **Ingen kontroll av att åtgärden fungerade.** Problemet stängs vid release. Definiera i stället ett sätt att se om symptomet återkommer.
- **Oskrivna tillfälliga lösningar.** Kunskap bor hos individer. Registrera i stället kända fel och dela dem.
- **Metoddyrkan.** Team bråkar om tekniker. Välj i stället metoder som passar problemet och lägg ansträngningen på belägg.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Koppling och prioritering | Incidenter kopplas inte | Vissa team noterar upprepningar | Incidenter kopplas till problem och granskas efter mönster enligt schema | Problem rangordnas efter uppmätt påverkan och frekvens | Problemprioriteringar delas mellan team och leverantörer |
| Utredning | Utredning är informell | Vissa team använder enkla metoder | Ett skriftligt angreppssätt med tidslinjer och belägg används | Utredningens kvalitet och tid granskas | Utredningar sträcker sig över team och leverantörer med gemensamma data |
| Korrigerande åtgärd | Åtgärder är ad hoc eller påminnelser | Vissa åtgärder ändrar systemet | Åtgärder väljs för effekt, med ägare och datum | Effekter kontrolleras och återkomst mäts | Åtgärder sprids till liknande system i organisationen |
| Kända fel och kunskap | Tillfälliga lösningar är oskrivna | Vissa registreras av individer | Kända fel registreras och delas med deskken och jouren | Användning och riktighet av kända fel följs | Kända fel delas med användare, leverantörer och partner |

## Checklista

- [ ] Incidenter som verkar dela en orsak är kopplade.
- [ ] En regelbunden genomgång grupperar incidenter och väljer de främsta återkommande problemen.
- [ ] Valda problem finns i backloggen med ägare och tidsgränser.
- [ ] Varje problem har ett skriftligt påstående med fakta.
- [ ] En tidslinje byggs för varje utredning.
- [ ] Genomgångar frågar vad i systemet som tillät något mänskligt fel.
- [ ] Åtgärder gynnar systemändringar framför påminnelser, med den förväntade effekten registrerad.
- [ ] Tillfälliga lösningar registreras som kända fel och delas med deskken och jourpersonalen.
- [ ] Varje åtgärd har en kontroll av återkomst under en överenskommen period.
- [ ] Sammanfattningar av problem och åtgärder delas med andra team.

## AI-prompter

**Syfte: hitta upprepade incidenter och kandidatproblem i era register.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Syfte: skriva ett tydligt problempåstående utifrån belägg.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Syfte: förbereda en fem-varför-session och registrera tankekedjan.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: utvärdera om föreslagna korrigerande åtgärder ändrar systemet.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## AI-färdigheter

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): använd för att vägleda en utredning från ett tydligt problempåstående till en prövad orsak.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): använd för att brainstorma möjliga orsaker efter kategori med ett team.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): använd för att lägga fram hur orsaker och verkan hänger ihop i ett komplicerat fel.
- [postmortem](../../../../skills/postmortem/SKILL.md): använd för att hålla genomgången som identifierar kandidatproblem.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): använd när ni behöver databaserade metoder för att analysera variation eller återkommande fel.

## Viktiga källor

- **Root cause analysis** (Wikipedia): en allmän översikt över metoden, principerna och gränserna, med ISO/IEC 31010 listad för metoderna.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): det skuldfria angreppssättet för att lära av fel.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): hur incidenthantering matar senare analys.
- **Ishikawa diagram** och **Five whys** (Wikipedia): bakgrund om två vanliga enkla metoder.

## Referenser

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
