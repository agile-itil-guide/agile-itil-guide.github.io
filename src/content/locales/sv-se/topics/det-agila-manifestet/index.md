# Det agila manifestet

**Manifestet för agil programvaruutveckling består av fyra korta värdeutsagor som talar om för ett team vad det ska föredra när två goda saker drar åt olika håll, och dessa val betyder lika mycket för att driva en levande tjänst som för att bygga en.**

## Varför detta är viktigt

Det agila manifestet är roten till nästan allt annat i den här guiden. Scrum, Kanban, Extreme Programming och DevOps är alla sätt att agera utifrån de värderingar som manifestet formulerar. Om du bara känner till arbetssätten kommer du att kopiera ritualerna och missa resonemanget, och när en ritual slutar fungera har du inget att styra efter.

Det är viktigt för IT-tjänstehantering (ITSM) av ett praktiskt skäl. De flesta team som driver tjänster i dag bygger dem också, och de två uppgifterna drar åt olika håll. Att bygga belönar förändring och snabbhet. Att driva belönar stabilitet och förutsägbarhet. Manifestet tar inte bort den spänningen, men det ger ett team ett gemensamt sätt att tala om den: vilken värdering föredrar vi här, och vad betalar vi för det?

Det hjälper också att veta vad manifestet inte är. Det är ingen process, ingen certifiering och inget löfte om att projekt lyckas om man följer det. [Wikipedia-artikeln om agil programvaruutveckling](https://en.wikipedia.org/wiki/Agile_software_development) noterar att belägg för fördelarna med agila metoder är begränsade och inte entydiga. Betrakta manifestet som en uppsättning välmotiverade hypoteser som du prövar i ditt eget sammanhang, inte som en helig text.

## Centrala begrepp

### Var det kom ifrån

Sjutton yrkesverksamma möttes på skidorten Snowbird i Wasatchbergen i Utah, från den 11 till den 13 februari 2001, och skrev manifestet tillsammans. Enligt [berättelsen på agilemanifesto.org](https://agilemanifesto.org/history.html) kom de från metoder som Extreme Programming, Scrum och Crystal, och de ville ha ett alternativ till tungrodda, dokumentationsdrivna processer. Etiketten "Light" hade varit på tal och Alistair Cockburn invände mot den, och gruppen kom därefter att kalla sig Agile Alliance.

Undertecknarna var Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland och Dave Thomas. Flera av dem hade redan skapat de metoder de tog med sig: Beck och Cunningham arbetade med [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), och Schwaber och Sutherland med [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Manifestet var en reaktion mot ett arbetssätt där ett team planerar ett helt projekt i förväg, bygger i långa faser och får veta sent om resultatet är önskat. Den stilen kallas ofta [vattenfallsmodellen](https://en.wikipedia.org/wiki/Waterfall_model). Författarna uppfann inte iterativt arbete (Wikipedia-artikeln spårar iterativa och inkrementella metoder tillbaka till 1957), men de gav det ett gemensamt namn och en kort värdeförklaring.

### De fyra värderingarna

Manifestet formulerar sina värderingar i sin helhet så här. Dess upphovsrättsmeddelande tillåter att det kopieras fritt i vilken form som helst, men bara i sin helhet, så det citeras därför fullständigt här:

> Vi upptäcker bättre sätt att utveckla programvara genom att göra det och genom att hjälpa andra att göra det. Genom detta arbete har vi kommit att värdera:
>
> **Individer och interaktioner** framför processer och verktyg
> **Fungerande programvara** framför omfattande dokumentation
> **Samarbete med kunden** framför kontraktsförhandling
> **Förmåga att möta förändring** framför att följa en plan
>
> Det vill säga, även om det finns värde i punkterna till höger, värderar vi punkterna till vänster högre.

Tre detaljer i formuleringen är lätta att missa och ändrar innebörden:

- **"Framför" är inte "i stället för".** Den sista meningen säger att punkterna till höger fortfarande har värde. Ett team som släpper all dokumentation eller all planering har missförstått manifestet.
- **Det är en preferens för när du måste välja.** Värderingarna talar inte om vad du ska göra varje dag. De talar om åt vilket håll du ska luta när en process, ett dokument, ett kontrakt eller en plan står i vägen för ett bättre resultat.
- **"Genom att göra det."** Den inledande meningen säger att författarna fann dessa värderingar genom praktiskt arbete. Påståendet är empiriskt, vilket är varför du uppmanas att pröva det mot din egen erfarenhet.

### Att läsa varje värdering för tjänstearbete

Värderingarna skrevs om programvaruutveckling. Så här kan var och en betyda för ett team som också driver tjänster.

| Värdering | Vad den skyddar mot | Vad den kan betyda i tjänstearbete |
|---|---|---|
| Individer och interaktioner framför processer och verktyg | En process som fungerar på papper men som ingen kan följa under press | Vid en större incident pratar de som kan systemet direkt med varandra. Incidentprocessen stöder det samtalet och ersätter det inte. |
| Fungerande programvara framför omfattande dokumentation | Dokument som beskriver ett system som inte längre finns | En runbook som testats av den jourhavande ingenjör som använder den är värd mer än en lång manual som ingen har öppnat. |
| Samarbete med kunden framför kontraktsförhandling | Att strida om ett servicenivåavtal (SLA) medan kundens verkliga behov förblir obesvarat | Se över servicenivåer med kunderna regelbundet och ändra dem när deras behov ändras. |
| Förmåga att möta förändring framför att följa en plan | Att frysa en plan efter att situationen har förändrats | En ändringsprocess som kan godkänna en liten ändring med låg risk på några minuter gör att teamet kan svara på förändring. En process som behandlar alla ändringar lika kan det inte. |

### De tolv principerna

Manifestet åtföljs av tolv principer som förtydligar värderingarna. De är ämnet för nästa avsnitt (se Ämne 1.2 — Agila principer). Tillsammans kallas värderingarna och principerna ibland för det agila synsättet.

### Kritik som är värd att känna till

Kritiker har invänt att manifestet undergräver ingenjörsdisciplinen. Wikipedia-artikeln citerar Stephen Rakitin, som i ett brev till *IEEE Computer* kallade agil "ännu ett försök att undergräva disciplinen programvaruteknik" och som läste "fungerande programvara framför omfattande dokumentation" som ett tillstånd att hoppa över dokumentation. Försvarare svarar att dokumentationen bör vara "precis tillräckligt bra", en formulering som Scott Ambler använde, och att för lite dokumentation skadar underhåll och kunskapsdelning.

För ett tjänsteteam har kritiken bett. Driftpersonal ärver det som leveransteamen lämnar efter sig, och tunn dokumentation märks som långsam incidenthantering och långa överlämningar. En rättvis läsning av manifestet är att dokumentation måste förtjäna sin plats, inte att den saknar plats.

## Bästa praxis

1. **Behandla värderingarna som ett beslutsstöd, inte som en regeluppsättning.** När ett team är oense, fråga vilken värdering som är i spänning och åt vilket håll teamet ska luta. Det förvandlar en dispyt om preferenser till ett samtal om avvägningar.
2. **Läs meningen som följer efter värderingarna.** Påminn teamet ofta om att punkterna till höger fortfarande har värde. Skriv ned vilka processer, dokument, kontrakt och planer ni behåller och varför.
3. **Pröva varje värdering mot en nyligen inträffad händelse.** Välj en verklig incident eller release och fråga hur arbetet hade gått om teamet hade lutat åt andra hållet. Belägg från ert eget arbete övertygar bättre än ett citat.
4. **Behåll dokumentation och håll den levande.** Föredra korta dokument som används, testas och har en ägare, som runbooks och tjänstebeskrivningar, framför långa dokument som skrivs en gång. Ta bort det som ingen läser.
5. **Gör kundsamarbete till rutin.** För regelbundna samtal med dem som använder era tjänster och för in det ni lär er i backloggen. Vänta inte på en kontraktsöversyn.
6. **Gör planer som förväntar sig förändring.** Planera på korta horisonter med tydliga granskningspunkter. Behåll en längre riktning och acceptera att stegen mot den kommer att flytta sig.
7. **Ge processer ägare och låt dem utvecklas.** Varje process i ert system för tjänstehantering bör ha en namngiven ägare och ett sätt för dem som använder den att föreslå ändringar. En process som ingen får ändra kommer att kringgås.
8. **Använd värderingarna vid rekrytering och introduktion.** Beskriv dem för nya medarbetare med exempel från ert eget team så att de ser hur värderingarna visar sig i vardagliga val.
9. **Återbesök värderingarna efter att ni vuxit.** Större organisationer glider mot process och verktyg. Håll ett återkommande samtal, kanske två gånger om året, om balansen fortfarande tjänar kunderna.
10. **Använd inte manifestet som vapen.** Att citera "individer framför processer" för att avfärda en kollegas oro för revision eller säkerhet avslutar ett samtal som borde ha börjat. Använd det för att öppna diskussionen, inte för att vinna den.

## Frågor att diskutera med teamet

**Vilken av de fyra värderingarna föredrar vårt team redan i praktiken, och vilken säger vi bara att vi föredrar?**

Börja med att lista nyligen fattade beslut: en release som försenats för pappersarbete, en förfrågan som nekats för att den inte stod i kontraktet, en plan som behållits sedan den slutat vara vettig. Koppla varje beslut till en värdering. Team finner ofta ett gap mellan vad de säger och vad de gör, och gapet är det användbara fyndet. En facilitator bör undvika skuldbeläggning och fråga vilket tryck som låg bakom varje val. Fortsätt med att fråga vilka av dessa tryck teamet kan ändra.

**Var hjälper våra processer och verktyg människor att tala med varandra, och var står de i vägen?**

Be människor nämna en process som sparar dem arbete och en som kostar dem arbete. Den kostsamma är ofta en bra process som tillämpas stelt, som ett ärendeflöde som kräver fyra godkännanden för en trivial ändring. Leta efter ställen där människor undviker verktyget och använder chatt eller korridorsamtal i stället, eftersom det oftast tyder på en missanpassning. Avsluta med en process att förenkla den här månaden.

**Vilken dokumentation skulle vi sakna om den försvann, och vad skulle vi kunna ta bort i morgon?**

Den här frågan prövar värderingen "fungerande programvara framför omfattande dokumentation" utan att driva den till ytterligheten. Fråga människor vilka dokument de använt den senaste månaden. Runbooks, arkitekturdiagram och kundvända tjänstebeskrivningar kommer ofta upp. Dokument som ingen nämner är kandidater för borttagning eller sammanslagning. Påminn teamet om att borttagning är ett beslut, så utse en ansvarig för det.

**Hur deltar våra kunder i att forma våra tjänster, och hur vet vi att det räcker?**

Samla exempel på kundinspel som ändrat ett beslut. Om listan är kort, fråga varför. Orsakerna är oftast strukturella: en kundansvarig i mitten, en SLA-översyn en gång om året eller en servicedesk som registrerar klagomål men inte för dem vidare. Fråga kunderna direkt, om ni kan, vad de skulle ändra. Instruktionen till facilitatorn är att leta efter ett konkret sätt att förkorta vägen mellan en kund och teamet.

**Vad skulle krävas för att vi ska godkänna en liten ändring med låg risk inom en timme, och bör vi?**

Den här frågan kopplar den fjärde värderingen till ändringskontroll (se Ämne 3.4 — Ändringsmöjliggörande). Fråga vad som bromsar små ändringar i dag: ett veckomöte, ett manuellt riskformulär, ett saknat test. Fråga vilka belägg som skulle göra teamet trygga, som automatiserade tester eller en snabb återställning. Pressa inte fram ett "ja". Syftet är att upptäcka vad teamet tror att det skulle behöva, vilket är början på en plan.

**Om en tillsynsmyndighet, en revisor eller en stor kund läste manifestet, vad skulle de oroa sig för, och har de rätt?**

Vissa farhågor är befogade. Revisorer vill ha belägg, och kunder vill ha åtaganden. Uppmuntra teamet att ta dessa farhågor på allvar och fråga vilka lätta belägg och åtaganden som skulle tillfredsställa dem. Team som kan visa hur agilt arbete skapar ett revisionsspår får oftast mer frihet, inte mindre. Anteckna farhågorna till styrningsdiskussionen i Ämne 5.7 — Styrning, risk och efterlevnad.

## I praktiken: ett agilt ITIL-exempel

En medelstor nätbutik har ett plattformsteam på åtta personer som bygger och driver kassatjänsten. Teamet har nyligen gått från kvartalsvisa releaser till veckovisa och har nu ett problem: servicedesken klagar på att ändringar kommer utan förvarning, och plattformsteamet klagar på att ändringsgodkännandemötet tar en vecka att godkänna ändringar som är klara på måndagen.

Teamets ledare håller en timmes session med de fyra värderingarna som ram. De listar nyligen inträffade händelser på en vägg. En rättning av en rabattkod väntade nio dagar på godkännande. En databasändring godkändes snabbt och orsakade ett avbrott. En runbook för betalningsfel visade sig beskriva ett system som avvecklats året innan. Gruppen placerar varje händelse mot en värdering. De flesta fördröjningsfallen hamnar under "processer och verktyg framför individer och interaktioner", alltså att processen kördes för sin egen skull. Avbrottet hamnar under "förmåga att möta förändring framför att följa en plan", eftersom godkännandemötet behandlade alla ändringar lika och inte tittade närmare på den riskabla.

De kommer överens om tre förändringar. För det första ska ändringar som passar en kort lista över lågriskmönster, med godkända automatiserade tester och en testad återställning, förgodkännas och registreras automatiskt. För det andra ska riskabla ändringar granskas av en kollega och en driftrepresentant inom ett dygn. För det tredje ska varje runbook ha en namngiven ägare och kontrolleras varje gång den används under en incident.

Två månader senare går ledaren igenom resultatet med servicedesken. Förgodkända ändringar flödar snabbt, och servicedesken ser nu varje ändring i ett gemensamt flöde. Ett problem återstår: två av de förgodkända mönstren drogs för brett, och en mindre incident följde. Teamet smalnar av mönstren och behåller arbetssättet. De ser också att det gemensamma flödet inte ersätter samtal, så servicedeskens ledare går med i plattformsteamets veckoplanering.

## Fyra perspektiv

### Produkt- och leveransteam

För leveransteam är manifestet en påminnelse om att fungerande programvara inkluderar fungerande drift. En funktion som inte kan övervakas, supportas eller återställas är inte färdig. Använd värderingarna för att argumentera för det driftarbete som gör releaser säkra, och bjud in driftpersonal till planeringen tidigt.

### Tjänste- och driftteam

Driftpersonal känner ofta att manifestet talar för utvecklare. Läs det annorlunda: värderingarna gynnar att människor talar med varandra, testade artefakter och snabba svar på förändring, vilket allt passar god drift. Ta med ITIL-arbetssätten till bordet som samlad erfarenhet av vad som går fel, och föreslå lättare versioner som behåller syftet.

### Ledning och styrning

Ledare skapar de förutsättningar som låter värderingarna fungera. Om varje release kräver fem underskrifter kan ett team inte föredra förmågan att möta förändring, hur många affischer som än hänger på väggen. Fråga era team var era egna regler bromsar dem, och var beredd att ändra en regel när syftet kan nås på annat sätt.

### Kunder och användare

Kunder nämns i två av de fyra värderingarna. För dem lovar manifestet samarbete, inte bara leverans. Räkna med att bli tillfrågad om vad du behöver, att se fungerande ändringar ofta och att kunna ändra dig. I gengäld behöver ett team snabb återkoppling och snabba beslut från dig.

## Vanliga orsaker till misslyckande

- **Att använda "framför" som "i stället för".** Team släpper dokumentation, planering eller kontrakt helt och får lida för det. Gör i stället klart vad var och en av dem måste åstadkomma och behåll den lättaste form som klarar det.
- **Att behandla värderingarna som tillstånd att hoppa över disciplin.** "Vi är agila" blir en ursäkt för att inte testa, inte föra register och inte göra överlämningar. Koppla i stället varje värdering till ett konkret arbetssätt och kontrollera att arbetssättet efterlevs.
- **Att citera manifestet utan att pröva det.** Slagord ersätter tänkande. Granska i stället faktiska händelser mot värderingarna med jämna mellanrum.
- **Att använda det mot kollegor.** Att citera en värdering för att avfärda en oro från revision, säkerhet eller drift skadar förtroendet. Fråga i stället vad oron skyddar och hur den kan mötas lätt.
- **Att införa arbetssätt utan värderingarna.** Dagliga möten och tavlor dyker upp, men beslut väntar fortfarande på godkännandekedjor. Fråga i stället vilka beslut som bör flyttas närmare dem som utför arbetet.
- **Att anta att manifestet besvarar driftfrågor.** Det skrevs om programvaruutveckling år 2001 och säger lite om att driva tjänster. Kombinera det i stället med arbetssätt för tjänstehantering och anpassa båda.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Gemensam förståelse av värderingarna | Några få har läst manifestet | Vissa team diskuterar det, med olika läsningar | Teamen delar en kort, skriftlig läsning av värderingarna för sitt sammanhang | Teamen kontrollerar nyliga beslut mot värderingarna vid regelbundna genomgångar | Team, leverantörer och kunder använder ett gemensamt ordförråd för avvägningar |
| Balans mellan process och människor | Processer följs eller ignoreras beroende på person | Vissa processer förenklas av enskilda team | Varje process har en ägare och en väg för ändringsförslag | Processfriktion mäts, till exempel väntetid per ändring | Processer justeras över team utifrån gemensamma belägg |
| Kundsamarbete | Återkoppling kommer som klagomål | Vissa team möter kunder regelbundet | Varje tjänst har ett definierat sätt att samla in kundinspel | Kundinspel spåras och kopplas till gjorda ändringar | Kunder hjälper till att sätta prioriteringar över tjänster |
| Dokumentation och planer | Dokument är sällsynta eller inaktuella | Teamen behåller de dokument de finner användbara | Obligatoriska dokument är få, har ägare och granskas | Användningen av dokument observeras och oanvända tas bort | Dokumentation genereras eller verifieras som en del av leveransen |

## Checklista

- [ ] Varje teammedlem har läst manifestet och dess tolv principer en gång.
- [ ] Teamet kan formulera varje värdering med egna ord, med ett exempel från sitt eget arbete.
- [ ] Vi har listat vilka processer, dokument, kontrakt och planer vi behåller, och varför.
- [ ] Varje process som används har en namngiven ägare och ett sätt att föreslå ändringar.
- [ ] Runbooks och tjänstebeskrivningar har ägare och ett granskningsdatum.
- [ ] Vi för ett regelbundet samtal med kunderna till minst en tjänst.
- [ ] Vi har granskat minst en nyligen inträffad incident eller release mot de fyra värderingarna.
- [ ] Regler som ledningen satt och som bromsar teamet har listats och diskuterats.
- [ ] Vi har skrivit ned hur vi ska visa revisorer och tillsynsmyndigheter vad vi gör.

## AI-prompter

**Syfte: göra de fyra värderingarna till en kort läsning för ditt eget team.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Syfte: granska en nyligen inträffad händelse mot värderingarna.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Syfte: förbereda svar på en revisors oro över agila arbetssätt.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Syfte: utforma en timmes teamsession om manifestet.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## AI-färdigheter

- [agile-principles](../../../../skills/agile-principles/SKILL.md): använd när du vill kontrollera ett arbetssätt i teamet eller ett processbeslut mot manifestets principer.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla ett retrospektiv som granskar nyliga händelser mot värderingarna och leder till en verklig förändring.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): använd när du startar ett nytt team eller projekt och vill ha en gemensam läsning av värderingarna från dag ett.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): använd när du är den som hjälper ett team att gå från att kopiera ritualer till att förstå skälen bakom dem.

## Viktiga källor

- **Manifesto for Agile Software Development** (agilemanifesto.org): originaltexten. Läs den i sin helhet; det tar två minuter.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): de tolv principerna, det mest användbara komplementet till värderingarna.
- **History: The Agile Manifesto** (agilemanifesto.org): författarnas egen korta berättelse om mötet i Snowbird.
- **Agile software development** (Wikipedia): en bred översikt med historia, metoder, arbetssätt och kritik, användbar som karta för vidare läsning.

## Referenser

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
