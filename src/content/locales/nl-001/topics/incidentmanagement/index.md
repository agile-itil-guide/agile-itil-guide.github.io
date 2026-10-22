# Incidentmanagement

**Incidentmanagement herstelt een verslechterde service zo snel als veilig is, en de agile gewoonte die het laat werken is duidelijke rollen onder druk, gevolgd door een schuldvrije review die van elk incident een verandering maakt.**

## Waarom dit ertoe doet

Incidenten zijn het moment waarop een service wordt beoordeeld. Gebruikers onthouden niet de maanden van goede beschikbaarheid; ze onthouden de storing en hoe die werd afgehandeld. Een team dat van tevoren heeft uitgewerkt wie wat doet, hoe het communiceert en wanneer het hulp inroept, herstelt de service sneller en maakt minder fouten dan een team dat improviseert.

Agile teams die beheren wat ze bouwen, handelen incidenten vaak informeel af. Dat werkt tot een incident groot is, meerdere teams beslaat of 's nachts gebeurt. Dan wordt het gebrek aan rollen en vastleggingen zichtbaar: engineers storten zich op het technische probleem, niemand informeert de klanten en twee mensen doen tegenstrijdige wijzigingen. De ITSM-praktijk incidentmanagement biedt, samen met praktijken uit site reliability engineering, beproefde manieren om dat te voorkomen.

Het [Wikipedia-artikel over incidentmanagement](https://en.wikipedia.org/wiki/Incident_management) bestrijkt meerdere vakgebieden, van noodhulp tot computerbeveiliging. Voor IT-servicemanagement zegt het dat het doel is de normale service binnen het afgesproken servicelevel zo snel mogelijk te herstellen, citeert het ITIL 2011 bij de definitie van een incident als een ongeplande onderbreking van een IT-service of een vermindering van haar kwaliteit, en noemt het drie uitdagingen: alarmruis, langdurige probleemoplossing en moeite met het voorspellen van storingen. Voor details leunt dit onderwerp sterk op twee hoofdstukken uit het boek *Site Reliability Engineering* van Google, die een incident-commandobenadering en schuldvrije postmortems uit de praktijk van één grote organisatie beschrijven. Behandel die hoofdstukken als één goed gedocumenteerde aanpak, niet als de enige.

## Kernconcepten

### Wat een incident is

Een **incident** is in ITSM-gebruik een ongeplande onderbreking van een service of een vermindering van haar kwaliteit. Het ITSM-artikel omvat ook een "mogelijke" verstoring. Een incident is niet hetzelfde als een **probleem**, de onderliggende oorzaak, of een **servicerequest**, een routineverzoek (zie Onderwerp 3.3 — Probleemmanagement en Onderwerp 3.6 — Servicerequestmanagement). De drie gescheiden houden doet ertoe omdat elk voor een ander doel wordt beheerd: de service herstellen, oorzaken wegnemen en routinevraag vervullen.

### Het doel: service herstellen, bewijs bewaren

Het eerste doel van incidentmanagement is de service te herstellen. Het SRE-hoofdstuk over het beheren van incidenten voegt een tweede toe: het bewijs bewaren dat later nodig is om de grondoorzaak te vinden. De eigen goede praktijken van het hoofdstuk zeggen in die geest herstel van de service en bewaren van bewijs voorrang te geven. De oorzaak oplossen kan later komen, in probleemmanagement.

### Waarom onbeheerde incidenten misgaan

Het SRE-hoofdstuk, geschreven door Andrew Stribblehill, gebruikt een uitgebreid voorbeeld van een engineer in bereikbaarheidsdienst wiens storing uitgroeit tot een totale uitval. Het noemt drie gevaren van onbeheerde incidenten:

- **Scherpe focus op het technische probleem.** Engineers die opgaan in een oplossing verliezen mitigatie en het bredere beeld uit het oog.
- **Slechte communicatie.** Niemand weet wat anderen doen en belanghebbenden blijven ongeïnformeerd.
- **Freelancen.** Ongecoördineerde wijzigingen, zoals een deployment op het laatste moment, maken de situatie erger.

### Rollen onder druk

Het hoofdstuk baseert zijn aanpak op het Incident Command System, afkomstig uit de noodhulp (het Wikipedia-artikel over incidentmanagement noemt het ook). De belangrijkste ideeën:

| Rol | Wat die doet |
|---|---|
| **Incident commander** | Houdt de overkoepelende stand bij, structureert de respons, ruimt obstakels uit de weg en vervult elke rol die nog niet is gedelegeerd |
| **Operations lead** | Past tools toe op het probleem; alleen het operationele team wijzigt het systeem tijdens een incident |
| **Communications lead** | Is het publieke gezicht van de respons; geeft periodieke updates en houdt het incidentdocument actueel |
| **Planning lead** | Behandelt langetermijnzaken zoals bugs aanmaken, overdrachten regelen en afwijkingen van normaal bijhouden zodat wijzigingen kunnen worden teruggedraaid |

Het hoofdstuk noemt het principe een recursieve scheiding van verantwoordelijkheden. Duidelijke rollen geven mensen autonomie, omdat ze collega's niet hoeven te wantrouwen, en een overbelaste persoon vraagt om meer mensen en delegeert delen van het werk. Overdrachten tussen commanders zijn expliciet en worden bevestigd.

### Het live incidentdocument

Het hoofdstuk zegt dat de belangrijkste taak van de commander is een live document van de stand van het incident bij te houden, bij voorkeur door meerdere mensen tegelijk te bewerken. Het mag rommelig zijn maar moet bruikbaar blijven, met de belangrijkste informatie bovenaan, en wordt bewaard voor latere analyse. Een gedeeld kanaal of een fysieke ruimte dient als commandopost.

### Wanneer een incident uitroepen

Het hoofdstuk raadt aan een incident vroeg uit te roepen, niet uren in een verslechterend probleem. Het stelt voor een gebeurtenis als incident te behandelen als een tweede team nodig is om haar op te lossen, als de storing voor klanten zichtbaar is of als ze na een uur geconcentreerde analyse onopgelost blijft. Dit zijn vuistregels van één organisatie. Je eigen drempels moeten je services en gebruikers weerspiegelen.

### Prioriteit en ernst

De voor deze gids gelezen bronnen definiëren geen prioriteits- of ernstniveaus en het Wikipedia-artikel noemt er geen. In de praktijk definiëren teams niveaus aan de hand van de impact op gebruikers en de urgentie van de behoefte, en beslissen ze van tevoren wie op elk niveau wordt gebeld. Houd het schema kort, met voorbeelden, en toets het door het op eerdere incidenten toe te passen.

### Communicatie

Communicatie heeft twee doelgroepen. Responders moeten de stand weten en wie wat doet. Belanghebbenden en gebruikers moeten weten wat is getroffen, wat eraan wordt gedaan en wanneer de volgende update komt. De communications lead in het SRE-hoofdstuk bedient de tweede doelgroep en houdt het logboek voor de eerste. Voor publieke storingen is een plan voor communicatie in een crisis nuttig (zie de vaardigheid voor crisiscommunicatie hieronder).

### Schuldvrije postmortems

Het SRE-hoofdstuk over postmortemcultuur beschrijft de leerhelft. Een postmortem legt het incident, de impact, de mitigatie, de grondoorzaken en de vervolgacties vast. De doelen zijn het incident te documenteren, alle bijdragende grondoorzaken te begrijpen en effectieve preventieve acties in te voeren. Ze is schuldvrij: ze identificeert bijdragende oorzaken zonder individuen of teams de schuld te geven en gaat ervan uit dat iedereen "goede bedoelingen had en het juiste deed met de informatie die ze hadden". In de woorden van het hoofdstuk: "Je kunt mensen niet 'repareren', maar je kunt systemen en processen repareren."

Het hoofdstuk stelt voor postmortemtriggers van tevoren te definiëren, zoals voor gebruikers zichtbare downtime boven een drempel, elk dataverlies, een ingreep van de bereikbaarheidsdienst zoals een rollback, een hersteltijd boven een drempel of een monitoringfout. Het zegt ook "Een niet-gereviewde postmortem had net zo goed nooit kunnen bestaan", en raadt daarom regelmatige reviewsessies en een gedeelde opslagplaats aan. Het beschrijft cultuuropbouwende activiteiten zoals een maandelijkse nieuwsbrief, leesclubs en een "Wheel of Misfortune" waarin eerdere incidenten worden nagespeeld.

### Majeure incidenten

Veel ITSM-praktijken definiëren een **majeur incident** als een incident dat een formelere respons vraagt dan gebruikelijk. De hier gelezen bronnen definiëren het niet, dus doe het in eigen woorden: bijvoorbeeld een incident dat veel gebruikers of een kritieke service raakt en een gecoördineerde respons over teams vraagt. Wat telt is dat mensen van tevoren weten wat verandert: wie leidt, wie wordt gebeld, hoe vaak updates uitgaan.

### Incidenten en continue levering

Incidenten ontstaan vaak uit recente wijzigingen. Agile teams zijn goed gepositioneerd om ervan te leren omdat ze vaak releasen en korte feedbackloops hebben. Het leren heeft een route nodig: postmortemacties gaan met eigenaren en data naar de backlog en terugkerende incidenten gaan naar probleemmanagement. Zonder die route wordt incidentafhandeling een routine van reparatie.

## Goede praktijken

1. **Beslis van tevoren wat als incident telt.** Schrijf een korte definitie met voorbeelden en verlaag de drempel om er een uit te roepen. De vuistregel van het SRE-hoofdstuk is vroeg uit te roepen wanneer een tweede team nodig is, klanten het probleem kunnen zien of een uur analyse het niet heeft opgelost.
2. **Definieer een paar ernstniveaus met voorbeelden.** Baseer ze op gebruikersimpact en geef aan wie op elk niveau wordt gebeld. Toets het schema op eerdere incidenten en pas aan.
3. **Wijs rollen toe aan het begin van elk incident.** Benoem een incident commander, een operations lead en een communications lead. In kleine teams kan één persoon meer dan één rol hebben; zeg dat hardop.
4. **Scheid repareren van coördineren.** De mensen die het systeem wijzigen, moeten niet ook vragen beantwoorden. Laat de commander coördineren en de communications lead informeren.
5. **Houd een live vastlegging bij.** Gebruik één gedeeld document of kanaal met tijdstempels, beslissingen en gedane wijzigingen. Het ondersteunt overdrachten en geeft de postmortem haar materiaal.
6. **Sta alleen geautoriseerde wijzigingen toe.** Het SRE-hoofdstuk zegt dat alleen het operationele team het systeem tijdens een incident mag wijzigen. Geef aan wie wat mag wijzigen en vraag anderen met de commander te praten.
7. **Communiceer volgens schema.** Spreek het updateinterval af voor elk ernstniveau en houd je eraan, ook als er niets nieuws is. Stilte kweekt zorg en dubbele vragen.
8. **Draag expliciet over.** Zeg het hardop wanneer een commander of responder wordt vervangen en laat de ander het bevestigen. Onduidelijke overdrachten verliezen context.
9. **Oefen.** Voer het incidentproces uit bij kleine gebeurtenissen en in oefeningen, zodat de rollen vertrouwd zijn vóór een ernstige storing. Wissel mensen af over rollen.
10. **Houd een schuldvrije postmortem wanneer je triggers worden bereikt.** Schrijf haar met de betrokkenen, richt je op bijdragende oorzaken en systeemoplossingen en deel haar breed (zie de postmortem-vaardigheid hieronder).
11. **Maak van acties backlogitems.** Geef elke vervolgactie een eigenaar en een datum en review ze in een regelmatige bijeenkomst. Een niet-gereviewde postmortem levert geen verandering op.
12. **Voed probleemmanagement met het bewijs.** Koppel terugkerende incidenten aan een probleemrecord, zodat oorzaken worden weggenomen en niet alleen hersteld (zie Onderwerp 3.3 — Probleemmanagement).

## Vragen om met je team te bespreken

**Wat doen we in de eerste tien minuten van een incident en wie beslist?**

Loop het laatste belangrijke incident minuut voor minuut door. Noteer wie de leiding nam, wie communiceerde en wie wat wijzigde. Veel teams ontdekken dat rollen werden aangenomen en niet afgesproken. De facilitator kan vragen wat er zou zijn gebeurd als de gebruikelijke lead afwezig was geweest. Vervolg met afspreken hoe rollen de volgende keer worden toegewezen.

**Wanneer noemen we iets een incident en wanneer wachten we?**

Verzamel voorbeelden van gebeurtenissen die laat werden uitgeroepen. Vraag wat mensen tegenhield: anderen niet willen lastigvallen, onzekerheid of angst voor schuld. Vergelijk met de triggers van het SRE-hoofdstuk. Spreek een drempel af en een manier om een incident zonder omhaal uit te roepen.

**Hoe komen onze gebruikers te weten wat er tijdens een storing gebeurt en hoe vaak?**

Kijk naar de laatste storing vanuit de gebruiker. Vraag wie hen informeerde, wat hun werd verteld en hoe lang de kloof was. Vaak is het antwoord een lange stilte gevolgd door een kort bericht. Vraag wie de communicatie moet bezitten en wat het eerste bericht moet zeggen. Spreek een sjabloon en een updateritme af.

**Wat veranderde onze laatste postmortem en hoe weten we dat?**

Vraag om de acties, eigenaren en status. Als er geen zijn voltooid, vraag dan waarom: geen eigenaar, geen tijd of onduidelijke waarde. Ontdek of postmortems door iemand buiten het team worden gelezen. Spreek een regelmatige sessie af om open acties te reviewen.

**Voelen mensen zich veilig om te zeggen wat ze verkeerd deden?**

Deze vraag toetst schuldvrijheid. Vraag mensen te beschrijven hoe ze zich zouden voelen als ze over hun eigen fout in een postmortem schreven. Luister naar angst voor gevolgen en voorbeelden van momenten waarop schuld werd toegewezen. Eis geen openheid; vraag wat het team en de leiders moeten doen om het veilig te maken. Kies één zichtbare stap.

**Hoe oefenen we en wanneer deden we het voor het laatst?**

Vraag of het team een oefening of een gesimuleerd incident heeft gedaan en wat het leerde. Als nooit, bespreek dan een kleine start, zoals een eerder incident in een uur naspelen. Het SRE-hoofdstuk noemt het oefenen van het proces bij routinewijzigingen en disaster-recovery-oefeningen. Plan er een voor het volgende kwartaal.

## In de praktijk: een agile ITIL-voorbeeld

Het klantenportaal van een regionaal energiebedrijf laat huishoudens storingen melden en rekeningen bekijken. Een team van elf bouwt en beheert het, met een bereikbaarheidsrooster van vier. Tijdens een storm stijgt het meldingsverkeer, vertraagt het portaal en valt het dan uit. De engineer in bereikbaarheidsdienst probeert een databaseherstart, een tweede engineer deployt tegelijk een configuratiefix en een derde draait een eerdere release terug. Het portaal is na drie uur weer terug en het callcenter, dat nooit was geïnformeerd, nam duizenden boze telefoontjes aan.

Bij de postmortem ziet het team de drie gevaren uit het SRE-hoofdstuk: iedereen richtte zich op de technische oplossing, niemand communiceerde en wijzigingen botsten. Ze schrijven een incidentproces van één pagina. Iedereen mag een incident uitroepen, en een tweede betrokken team, zichtbaarheid voor klanten of een uur zonder voortgang betekent dat ze het moeten doen. De engineer in bereikbaarheidsdienst wordt operations lead, en een rooster benoemt een incident commander en een communications lead uit het bredere team. Alleen de operations lead wijzigt productie. De communications lead stuurt elke 30 minuten een update naar het callcenter en de controlekamer. Een gedeeld kanaal bevat het live logboek.

Bij de volgende storm vertraagt het portaal weer, wordt binnen tien minuten een incident uitgeroepen en is de service in 70 minuten hersteld, met updates naar het callcenter gedurende de hele tijd. Er blijven problemen. Het commanderrooster heeft gaten op feestdagen en het team ontdekt dat één afhankelijkheid, een aanbieder van sms-berichten, geen escalatiecontact heeft. De postmortem levert twee acties met eigenaren op: het rooster aanvullen met een reserve en een escalatiepad met de aanbieder afspreken. Het team plant een naspeling van het stormincident voor nieuwe roosterleden.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams veroorzaken en repareren veel incidenten. Sluit je aan bij het bereikbaarheidsrooster of bied er directe ondersteuning aan en behandel postmortemacties als backlogitems. Bouw de middelen om problemen te detecteren en terug te draaien in je releases in. Neem deel aan oefeningen zodat rollen vertrouwd zijn.

### Service- en beheerteams

Beheerteams bezitten het proces. Houd het kort en geoefend, geef mensen de bevoegdheid om te handelen en houd vastleggingen bij die anderen kunnen gebruiken. Deel wat je leert met leveringsteams en breng de lessen in probleemmanagement en planning.

### Leiderschap en governance

Leiders bepalen de cultuur. Vraag om postmortems en lees ze, prijs mensen die problemen melden en weiger naar iemand te zoeken om de schuld te geven. Bescherm de tijd om te oefenen en acties af te ronden. Beslis wie geld mag uitgeven of het hoogste niveau van respons mag inroepen.

### Klanten en gebruikers

Klanten en gebruikers hebben tijdige, eerlijke updates nodig en een duidelijke manier om problemen te melden. Vraag je verlener wat je tijdens een storing kunt verwachten en hoe je wordt geïnformeerd. Lees een met jou gedeelde postmortem om te zien wat de verlener gaat veranderen.

## Veelvoorkomende faalpatronen

- **Geen rollen.** Iedereen werkt aan de technische oplossing en niemand coördineert of communiceert. Benoem in plaats daarvan elke keer een incident commander, operations lead en communications lead.
- **Laat uitroepen.** Mensen wachten tot het probleem ernstig is. Stel in plaats daarvan lage, duidelijke drempels in en maak uitroepen normaal.
- **Freelancen.** Meerdere mensen wijzigen tegelijk het systeem. Sta in plaats daarvan wijzigingen alleen toe via de operations lead.
- **Stilte.** Gebruikers en belanghebbenden horen niets. Spreek in plaats daarvan een updateinterval en een sjabloon af.
- **Schuld.** Een postmortem zoekt de schuldige. Vraag in plaats daarvan wat in het systeem de fout toeliet en repareer dat.
- **Postmortems die nergens heen gaan.** Acties hebben geen eigenaren. Zet ze in plaats daarvan met data in de backlog en review ze regelmatig.
- **Nooit oefenen.** De eerste keer dat het proces wordt gebruikt is een majeur incident. Repeteer in plaats daarvan bij kleine gebeurtenissen en oefeningen.
- **Reparatie als oplossing behandelen.** Hetzelfde incident keert terug. Koppel in plaats daarvan herhalingen aan probleemmanagement en los de oorzaak op.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Detectie en uitroepen | Incidenten worden via klachten van gebruikers opgemerkt | Er zijn enkele alarmen en sommige incidenten worden uitgeroepen | Schriftelijke drempels en een eenvoudig ernstschema worden consistent gebruikt | Detectietijd en uitroeptijd worden gevolgd en verkort | Detectie en uitroepen worden over teams en leveranciers gedeeld |
| Respons en rollen | Responders improviseren | Sommige teams benoemen een lead | Rollen, overdrachten en een live vastlegging zijn standaard | Responstijden en roluitvoering worden gereviewd | Respons wordt over teams en leveranciers gecoördineerd, met gezamenlijke oefeningen |
| Communicatie | Updates zijn ad hoc | Sommige updates gaan naar sommige doelgroepen | Updateritme en sjablonen bestaan voor elk ernstniveau | Tijdigheid van communicatie wordt gemeten en gebruikers worden gevraagd | Communicatie wordt met klanten en partners gecoördineerd |
| Leren | Reviews volgen alleen de ergste incidenten | Sommige postmortems worden geschreven | Schuldvrije postmortems volgen gedefinieerde triggers, met gevolgde acties | Afronding van acties en herhaling worden gemeten | Lessen worden over teams gedeeld en voeden organisatiebrede verandering |

## Checklist

- [ ] We hebben een korte definitie van een incident met voorbeelden.
- [ ] We hebben een klein ernstschema met voorbeelden van gebruikersimpact en belijsten.
- [ ] Elk incident begint met het benoemen van een incident commander, een operations lead en een communications lead.
- [ ] Voor elk incident wordt een live vastlegging bijgehouden.
- [ ] Alleen de benoemde operations lead wijzigt productie tijdens een incident.
- [ ] Updateintervallen zijn voor elk ernstniveau afgesproken.
- [ ] Postmortemtriggers zijn opgeschreven.
- [ ] Postmortems zijn schuldvrij, gedeeld en gereviewd.
- [ ] Elke postmortemactie heeft een eigenaar en een datum en open acties worden gereviewd.
- [ ] We hebben het proces de afgelopen zes maanden geoefend.

## AI-prompts

**Doel: een incidentproces van één pagina opstellen vanuit je huidige praktijk.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een incidentlogboek omzetten in een concept voor een schuldvrije postmortem.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Doel: een incidentstatusupdate voor niet-technische belanghebbenden schrijven.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Doel: een kleine incidentoefening ontwerpen.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): gebruik dit om het plan te schrijven dat rollen, drempels en communicatie voor je team vastlegt.
- [postmortem](../../../../skills/postmortem/SKILL.md): gebruik dit om na een incident een schuldvrije review te houden en acties vast te leggen.
- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om bekende oplossingen om te zetten in korte procedures voor de responder.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gebruik dit om een eerlijk rooster met reserve en overdrachten te ontwerpen.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): gebruik dit om te plannen wat je gebruikers, personeel en het publiek vertelt tijdens een grote storing.

## Belangrijkste bronnen

- **Managing Incidents** (Andrew Stribblehill, in *Site Reliability Engineering*, Google, sre.google): het duidelijkste openbare verslag van incidentcommando voor serviceteams.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): het pleidooi voor schuldvrije postmortems, met triggers en ideeën voor cultuuropbouw.
- **Incident management** (Wikipedia): een overzicht over meerdere vakgebieden met een sectie over IT-servicemanagement.
- **IT service management** (Wikipedia): de definitie van incident en de plaats van incidentafhandeling in de servicedesk.

## Referenties

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
