# Incidenthantering

**Incidenthantering återställer en försämrad tjänst så snabbt som det är säkert, och den agila vana som får det att fungera är tydliga roller under press följda av en skuldfri genomgång som gör varje incident till en förändring.**

## Varför detta är viktigt

Incidenter är ögonblicket då en tjänst bedöms. Användare minns inte månaderna av god tillgänglighet; de minns avbrottet och hur det hanterades. Ett team som i förväg har kommit fram till vem som gör vad, hur det kommunicerar och när det ropar på hjälp återställer tjänsten snabbare och gör färre misstag än ett som improviserar.

Agila team som driver det de bygger hanterar ofta incidenter informellt. Det fungerar tills en incident är stor, spänner över flera team eller inträffar på natten. Då syns bristen på roller och register: ingenjörer kastar sig över det tekniska problemet, ingen talar om för kunderna, och två personer gör motstridiga ändringar. ITSM-arbetssättet incidenthantering, tillsammans med arbetssätt från site reliability engineering, erbjuder beprövade sätt att förhindra det.

[Wikipedia-artikeln om incidenthantering](https://en.wikipedia.org/wiki/Incident_management) täcker flera fält, från krishantering till datasäkerhet. För IT-tjänstehantering säger den att målet är att återställa normal tjänst inom den överenskomna servicenivån så fort som möjligt, citerar ITIL 2011 i att definiera en incident som ett oplanerat avbrott i en IT-tjänst eller en försämring av dess kvalitet och listar tre utmaningar: larmbrus, långdragen problemlösning och svårigheten att förutse avbrott. För detaljer bygger det här ämnet i hög grad på två kapitel i Googles bok *Site Reliability Engineering*, som beskriver ett incidentledningsangreppssätt och skuldfria efteranalyser ur praxis i en stor organisation. Betrakta dessa kapitel som ett väldokumenterat angreppssätt, inte som det enda.

## Centrala begrepp

### Vad en incident är

En **incident** är i ITSM-bruk ett oplanerat avbrott i en tjänst eller en försämring av dess kvalitet. ITSM-artikeln inkluderar också ett "potentiellt" avbrott. En incident är inte detsamma som ett **problem**, som är den underliggande orsaken, eller en **serviceförfrågan**, som är en rutinbegäran (se Ämne 3.3 — Problemhantering och Ämne 3.6 — Hantering av serviceförfrågningar). Att hålla de tre isär är viktigt eftersom var och en hanteras för olika mål: att återställa tjänsten, att ta bort orsaker och att uppfylla rutinefterfrågan.

### Målet: återställ tjänsten, bevara belägg

Det första målet med incidenthantering är att återställa tjänsten. SRE-kapitlet om att hantera incidenter lägger till ett andra: bevara de belägg som behövs för att hitta grundorsaken senare. Kapitlets egna bästa praxis säger att prioritera att återställa tjänsten och bevara belägg, i den andan. Att åtgärda orsaken kan komma senare, i problemhanteringen.

### Varför ohanterade incidenter går fel

SRE-kapitlet, skrivet av Andrew Stribblehill, använder ett utvecklat exempel på en jourhavande ingenjör vars avbrott växer till ett totalt haveri. Det nämner tre faror med ohanterade incidenter:

- **Ett skarpt fokus på det tekniska problemet.** Ingenjörer som är uppslukade av en rättning tappar ur sikte begränsning av skadan och den bredare bilden.
- **Dålig kommunikation.** Ingen vet vad andra gör, och intressenter förblir oinformerade.
- **Frilansande.** Okoordinerade ändringar, som en driftsättning i sista minuten, förvärrar situationen.

### Roller under press

Kapitlet baserar sitt angreppssätt på Incident Command System, som kom från krishantering (Wikipedia-artikeln om incidenthantering nämner det också). Dess huvudidéer:

| Roll | Vad den gör |
|---|---|
| **Incidentledare (incident commander)** | Håller den övergripande bilden, strukturerar svaret, tar bort hinder och innehar varje roll som ännu inte delegerats |
| **Driftledare (operations lead)** | Tillämpar verktyg på problemet; bara driftteamet ändrar systemet under en incident |
| **Kommunikationsansvarig (communications lead)** | Är svarets ansikte utåt; utfärdar regelbundna uppdateringar och håller incidentdokumentet aktuellt |
| **Planeringsansvarig (planning lead)** | Hanterar längre frågor som att registrera fel, ordna överlämningar och spåra avvikelse från det normala så att ändringar kan återställas |

Kapitlet kallar principen en rekursiv uppdelning av ansvar. Tydliga roller ger människor självständighet, eftersom de inte behöver ifrågasätta kollegor, och en överbelastad person ber om mer personal och delegerar delar av arbetet. Överlämningar mellan incidentledare är uttryckliga och bekräftade.

### Det levande incidentdokumentet

Kapitlet säger att incidentledarens viktigaste uppgift är att hålla ett levande dokument över incidentens tillstånd, helst redigerbart av flera samtidigt. Det kan vara rörigt men måste förbli användbart, med nyckelinformation högst upp, och det sparas för senare analys. En gemensam kanal eller ett fysiskt rum fungerar som ledningsplats.

### När man ska utlysa en incident

Kapitlet rekommenderar att utlysa en incident tidigt, inte timmar in i ett förvärrat problem. Det föreslår att behandla en händelse som en incident om ett andra team måste involveras för att åtgärda den, om avbrottet är synligt för kunder eller om det förblir olöst efter en timmes koncentrerad analys. Dessa är en organisations tumregler. Era egna trösklar bör spegla era tjänster och användare.

### Prioritet och allvarlighetsgrad

Källor som lästs för den här guiden definierar inte prioritets- eller allvarlighetsnivåer, och Wikipedia-artikeln anger inga. I praktiken definierar team nivåer utifrån påverkan på användare och behovets brådskande karaktär, och beslutar i förväg vem som kallas på varje nivå. Håll schemat kort, med exempel, och kontrollera det genom att tillämpa det på tidigare incidenter.

### Kommunikation

Kommunikation har två målgrupper. Utförare behöver veta tillståndet och vem som gör vad. Intressenter och användare behöver veta vad som påverkas, vad som görs och när de kan förvänta sig nästa uppdatering. Kommunikationsansvarig i SRE-kapitlet betjänar den andra målgruppen och för loggen för den första. För publikt synliga avbrott är en plan för kommunikation i en kris användbar (se färdigheten för krishantering nedan).

### Skuldfria efteranalyser

SRE-kapitlet om efteranalyskultur anger den lärande halvan. En efteranalys registrerar incidenten, dess påverkan, begränsningen, grundorsakerna och uppföljningsåtgärder. Dess mål är att dokumentera incidenten, förstå alla bidragande grundorsaker och införa effektiva förebyggande åtgärder. Den är skuldfri: den identifierar bidragande orsaker utan att lägga skuld på individer eller team, och antar att alla "hade goda avsikter och gjorde rätt med den information de hade". Med kapitlets ord: "Du kan inte 'fixa' människor, men du kan fixa system och processer."

Kapitlet föreslår att i förväg definiera utlösare för efteranalys, som användarsynlig stilleståndstid över en tröskel, varje dataförlust, en jourintervention som en återställning, lösningstid över en tröskel eller ett övervakningsfel. Det säger också "En ogranskad efteranalys kunde lika gärna aldrig ha existerat", och rekommenderar därför regelbundna granskningssessioner och ett gemensamt förråd. Det beskriver kulturbyggande aktiviteter som ett månatligt nyhetsbrev, läsecirklar och ett "Wheel of Misfortune" där tidigare incidenter spelas upp på nytt.

### Större incidenter

Många ITSM-arbetssätt definierar en **större incident (major incident)** som en som kräver ett mer formellt svar än vanligt. Källorna som lästs här definierar den inte, så gör det med egna ord: till exempel en incident som påverkar många användare eller en kritisk tjänst och kräver ett samordnat svar över team. Det viktiga är att människor i förväg vet vad som ändras: vem som leder, vem som kallas, hur ofta uppdateringar går ut.

### Incidenter och kontinuerlig leverans

Incidenter uppstår ofta av nyliga ändringar. Agila team är väl placerade att lära av dem eftersom de släpper ofta och har korta återkopplingsslingor. Lärandet behöver en väg: efteranalysåtgärder går in i backloggen med ägare och datum, och återkommande incidenter går till problemhantering. Utan den vägen blir incidenthantering en reparationsrutin.

## Bästa praxis

1. **Bestäm i förväg vad som räknas som en incident.** Skriv en kort definition med exempel och sänk tröskeln för att utlysa en. SRE-kapitlets tumregel är att utlysa tidigt när ett andra team behövs, kunder kan se problemet eller en timmes analys inte har löst det.
2. **Definiera några få allvarlighetsnivåer med exempel.** Basera dem på påverkan på användare och ange vem som kallas på varje nivå. Pröva schemat på tidigare incidenter och justera.
3. **Tilldela roller vid början av varje incident.** Utse en incidentledare, en driftledare och en kommunikationsansvarig. I små team kan en person ha mer än en roll; säg det högt.
4. **Skilj åtgärdande från samordning.** De som ändrar systemet bör inte också besvara frågor. Låt incidentledaren samordna och kommunikationsansvarig informera.
5. **För ett levande register.** Använd ett gemensamt dokument eller en kanal med tidsstämplar, beslut och gjorda ändringar. Det stöder överlämningar och ger efteranalysen dess material.
6. **Tillåt bara godkända ändringar.** SRE-kapitlet säger att bara driftteamet ska ändra systemet under en incident. Ange vem som får ändra vad och be andra tala med incidentledaren.
7. **Kommunicera enligt schema.** Kom överens om uppdateringsintervallet för varje allvarlighetsgrad och håll det, även när det inte finns något nytt. Tystnad föder oro och dubbla frågor.
8. **Överlämna uttryckligen.** När en incidentledare eller utförare byts ut, säg det högt och låt den andra personen bekräfta. Oklara överlämningar förlorar sammanhang.
9. **Öva.** Kör incidentprocessen på små händelser och i övningar, så att rollerna är bekanta före ett allvarligt avbrott. Rotera människor mellan roller.
10. **Håll en skuldfri efteranalys när era utlösare uppfylls.** Skriv den med de inblandade, fokusera på bidragande orsaker och systemåtgärder och dela den brett (se färdigheten för efteranalys nedan).
11. **Gör åtgärder till backlogg-objekt.** Ge varje uppföljning en ägare och ett datum och granska dem vid ett regelbundet möte. En ogranskad efteranalys ger ingen förändring.
12. **Mata belägg till problemhantering.** Koppla upprepade incidenter till en problempost, så att orsaker tas bort och inte bara repareras (se Ämne 3.3 — Problemhantering).

## Frågor att diskutera med teamet

**Vad gör vi under de första tio minuterna av en incident, och vem avgör?**

Gå igenom den senaste betydande incidenten minut för minut. Notera vem som tog ledningen, vem som kommunicerade och vem som ändrade vad. Många team finner att roller antogs och inte avtalades. Facilitatorn kan fråga vad som hade hänt om den vanliga ledaren hade varit borta. Fortsätt med att komma överens om hur roller tilldelas nästa gång.

**När kallar vi något en incident, och när väntar vi?**

Samla exempel på händelser som utlystes sent. Fråga vad som höll människor tillbaka: att inte vilja störa andra, osäkerhet eller rädsla för skuld. Jämför med SRE-kapitlets utlösare. Kom överens om en tröskel och ett sätt att utlysa en incident utan krångel.

**Hur får våra användare veta vad som händer under ett avbrott, och hur ofta?**

Titta på det senaste avbrottet ur användarens sida. Fråga vem som berättade för dem, vad de fick höra och hur lång tiden var. Ofta är svaret en lång tystnad följd av en kort notering. Fråga vem som bör äga kommunikationen och vad det första meddelandet bör säga. Kom överens om en mall och en uppdateringsrytm.

**Vad ändrade vår senaste efteranalys, och hur vet vi det?**

Be om åtgärderna, ägarna och statusen. Om inga genomfördes, fråga varför: ingen ägare, ingen tid eller oklart värde. Ta reda på om efteranalyser läses av någon utanför teamet. Kom överens om en regelbunden session för att granska öppna åtgärder.

**Känner människor sig trygga att säga vad de gjorde fel?**

Den här frågan prövar skuldfrihet. Be människor beskriva hur de skulle känna sig inför att skriva om sitt eget misstag i en efteranalys. Lyssna efter rädsla för följder och exempel på när skuld lades. Kräv inte öppenhet; fråga vad teamet och ledare skulle behöva göra för att göra det tryggt. Välj ett synligt steg.

**Hur övar vi, och när gjorde vi det senast?**

Fråga om teamet har kört en övning eller en simulerad incident, och vad det lärde sig. Om aldrig, diskutera en liten start, som att spela upp en tidigare incident på en timme. SRE-kapitlet nämner att öva processen på rutinändringar och övningar för katastrofåterställning. Planera en till nästa kvartal.

## I praktiken: ett agilt ITIL-exempel

Ett regionalt elbolags kundportal låter hushåll rapportera avbrott och se fakturor. Ett team på elva bygger och driver den, med ett jourschema på fyra. Under en storm stiger rapporttrafiken, portalen går långsamt och fallerar sedan. Den jourhavande ingenjören försöker en omstart av databasen, en andra ingenjör driftsätter samtidigt en konfigurationsrättning och en tredje återställer en tidigare release. Portalen kommer tillbaka efter tre timmar, och kundtjänsten, som aldrig fick veta något, tog emot tusentals arga samtal.

Vid efteranalysen ser teamet de tre farorna från SRE-kapitlet: alla fokuserade på den tekniska rättningen, ingen kommunicerade och ändringar kolliderade. De skriver en incidentprocess på en sida. Vem som helst får utlysa en incident, och ett andra team inblandat, kundsynlighet eller en timme utan framsteg betyder att de måste. Den jourhavande ingenjören blir driftledare, och ett schema utser en incidentledare och en kommunikationsansvarig från det bredare teamet. Bara driftledaren ändrar produktion. Kommunikationsansvarig skickar en uppdatering var 30:e minut till kundtjänsten och driftcentralen. En gemensam kanal håller den levande loggen.

Vid nästa storm går portalen långsamt igen, en incident utlyses inom tio minuter och tjänsten återställs på 70 minuter med uppdateringar som går till kundtjänsten hela tiden. Problem återstår. Incidentledarschemat har luckor under helgdagar, och teamet finner att ett beroende, en leverantör av textmeddelanden, saknar eskaleringskontakt. Efteranalysen ger två åtgärder med ägare: fullborda schemat med en reserv och komma överens om en eskaleringsväg med leverantören. Teamet planerar en uppspelning av stormincidenten för nya medlemmar i schemat.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam orsakar och åtgärdar många incidenter. Gå med i jourschemat eller ge direkt stöd till det, och behandla efteranalysåtgärder som backlogg-objekt. Bygg in sätt att upptäcka och återställa problem i era releaser. Delta i övningar så att rollerna är bekanta.

### Tjänste- och driftteam

Driftteam äger processen. Håll den kort och inövad, ge människor befogenhet att agera och för register som andra kan använda. Dela vad ni lär er med leveransteam och för in lärdomarna i problemhantering och planering.

### Ledning och styrning

Ledare formar kulturen. Be om efteranalyser och läs dem, beröm människor som rapporterar problem och vägra att jaga någon att lägga skuld på. Skydda tiden att öva och att slutföra åtgärder. Besluta vem som får lägga pengar eller åberopa den högsta svarsnivån.

### Kunder och användare

Kunder och användare behöver snabba, ärliga uppdateringar och ett tydligt sätt att rapportera problem. Fråga din leverantör vad du kan förvänta dig under ett avbrott och hur du kommer att bli informerad. När en efteranalys delas med dig, läs den för vad leverantören kommer att ändra.

## Vanliga orsaker till misslyckande

- **Inga roller.** Alla arbetar med den tekniska rättningen och ingen samordnar eller kommunicerar. Utse i stället en incidentledare, driftledare och kommunikationsansvarig varje gång.
- **Att utlysa sent.** Människor väntar tills problemet är illa. Sätt i stället låga, tydliga trösklar och normalisera att utlysa.
- **Frilansande.** Flera personer ändrar systemet samtidigt. Tillåt i stället ändringar bara genom driftledaren.
- **Tystnad.** Användare och intressenter hör ingenting. Kom i stället överens om ett uppdateringsintervall och en mall.
- **Skuld.** En efteranalys letar efter den skyldige. Fråga i stället vad i systemet som tillät felet och åtgärda det.
- **Efteranalyser som går ingenstans.** Åtgärder saknar ägare. Lägg i stället in dem i backloggen med datum och granska dem regelbundet.
- **Att aldrig öva.** Första gången processen används är en större incident. Öva i stället på små händelser och i övningar.
- **Att behandla reparation som lösning.** Samma incident återkommer. Koppla i stället upprepningar till problemhantering och åtgärda orsaken.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Upptäckt och utlysning | Incidenter märks genom användarklagomål | Vissa larm finns och vissa incidenter utlyses | Skriftliga trösklar och ett enkelt allvarlighetsschema används konsekvent | Upptäcktstid och utlysningstid följs och minskas | Upptäckt och utlysning delas mellan team och leverantörer |
| Svar och roller | Utförare improviserar | Vissa team utser en ledare | Roller, överlämningar och ett levande register är standard | Svarstider och rollprestanda granskas | Svar samordnas mellan team och leverantörer, med gemensamma övningar |
| Kommunikation | Uppdateringar är ad hoc | Vissa uppdateringar går till vissa målgrupper | Uppdateringsrytm och mallar finns för varje allvarlighetsgrad | Kommunikationens snabbhet mäts och användare tillfrågas | Kommunikation samordnas med kunder och partner |
| Lärande | Genomgångar följer bara på de värsta incidenterna | Vissa efteranalyser skrivs | Skuldfria efteranalyser följer definierade utlösare, med åtgärder som följs | Åtgärders slutförande och återkommande mäts | Lärdomar delas mellan team och matar förändring i hela organisationen |

## Checklista

- [ ] Vi har en kort definition av en incident med exempel.
- [ ] Vi har ett litet allvarlighetsschema med exempel på användarpåverkan och anropslistor.
- [ ] Varje incident börjar med att en incidentledare, en driftledare och en kommunikationsansvarig utses.
- [ ] Ett levande register förs för varje incident.
- [ ] Bara den utsedda driftledaren ändrar produktion under en incident.
- [ ] Uppdateringsintervall är överenskomna för varje allvarlighetsgrad.
- [ ] Utlösare för efteranalys är nedskrivna.
- [ ] Efteranalyser är skuldfria, delade och granskade.
- [ ] Varje efteranalysåtgärd har en ägare och ett datum, och öppna åtgärder granskas.
- [ ] Vi har övat processen de senaste sex månaderna.

## AI-prompter

**Syfte: utarbeta en incidentprocess på en sida utifrån er nuvarande praxis.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: göra en incidentlogg till ett utkast till skuldfri efteranalys.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Syfte: skriva en statusuppdatering om en incident för icke-tekniska intressenter.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Syfte: utforma en liten incidentövning.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): använd för att skriva planen som anger roller, trösklar och kommunikation för ert team.
- [postmortem](../../../../skills/postmortem/SKILL.md): använd för att hålla en skuldfri genomgång och registrera åtgärder efter en incident.
- [runbook](../../../../skills/runbook/SKILL.md): använd för att göra kända åtgärder till korta förfaranden för utföraren.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): använd för att utforma ett rättvist jourschema med reserv och överlämningar.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): använd för att planera vad ni säger till användare, personal och allmänhet under ett större avbrott.

## Viktiga källor

- **Managing Incidents** (Andrew Stribblehill, i *Site Reliability Engineering*, Google, sre.google): den tydligaste offentliga redogörelsen för incidentledning för tjänsteteam.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): argumentet för skuldfria efteranalyser, med utlösare och idéer för att bygga kultur.
- **Incident management** (Wikipedia): en översikt över flera fält med ett avsnitt om IT-tjänstehantering.
- **IT service management** (Wikipedia): definitionen av incident och incidenthanteringens plats i servicedesken.

## Referenser

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
