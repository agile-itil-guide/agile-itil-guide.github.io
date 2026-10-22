# Probleemmanagement

**Probleemmanagement vindt en verwijdert de oorzaken achter terugkerende incidenten, en haar agile vorm is een gestage stroom van kleine, op bewijs gebaseerde oplossingen in de backlog in plaats van incidentele grote onderzoeken.**

## Waarom dit ertoe doet

Een team dat incidenten goed afhandelt maar hun oorzaken nooit wegneemt, zit op een tredmolen. Elke storing wordt hersteld, dezelfde fout keert terug en de engineers in bereikbaarheidsdienst raken moe. Probleemmanagement is de praktijk die van de tredmolen stapt: ze vraagt waarom het incident gebeurde, of het weer zal gebeuren en wat het zou stoppen.

Agile teams zijn hier goed voor geplaatst. Ze hebben een backlog waarin een oplossing met een functie kan concurreren, ze werken in korte cycli die kleine oplossingen goedkoop maken en ze houden retrospectives waarin patronen kunnen worden opgemerkt. Wat ze vaak missen is de gewoonte om incidenten met elkaar te verbinden en de discipline om oorzaken goed te zoeken. Probleemmanagement levert beide.

Het [Wikipedia-artikel over root cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis) is de belangrijkste bron die voor dit onderwerp is gelezen, omdat de Engelstalige Wikipedia op het gecontroleerde adres geen artikel met de titel "Problem management" heeft. Dat artikel beschrijft root cause analysis (RCA) als een probleemoplossende methode die in IT-beheer en andere vakgebieden wordt gebruikt, en het draagt onderhoudstags voor ontbrekende bronvermeldingen. Het hier gebruikte ITIL-vocabulaire, zoals bekende fout en workaround, komt uit breed gepubliceerde beschrijvingen van de praktijk, die deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk. Lees de actuele publicaties van de eigenaar wanneer exacte definities ertoe doen (zie Onderwerp 2.2 — ITIL).

## Kernconcepten

### Incident, probleem, bekende fout

Drie termen worden samen gebruikt en de onderscheidingen doen ertoe:

| Term | Betekenis, zoals breed gebruikt in ITSM | Voorbeeld |
|---|---|---|
| **Incident** | Een ongeplande onderbreking van een service of vermindering van haar kwaliteit | De boekingspagina ligt twintig minuten plat |
| **Probleem** | De onderliggende oorzaak, of vermoedelijke oorzaak, van een of meer incidenten | Een geheugenlek in de boekingsservice |
| **Bekende fout** | Een probleem waarvan de oorzaak is geïdentificeerd, meestal met een vastgelegde workaround | Een geheugenlek is begrepen; de service elke nacht herstarten voorkomt storingen tot het is opgelost |

Een **workaround** is een manier om de impact van een incident of probleem te verminderen of te vermijden zonder de oorzaak weg te nemen. Probleemmanagement gaat over het wegnemen van de oorzaak en incidentmanagement over het herstellen van de service (zie Onderwerp 3.2 — Incidentmanagement).

### Reactief en proactief

Het artikel over root cause analysis onderscheidt in algemene termen reactieve en proactieve benaderingen. Reactief werk behandelt symptomen snel. Proactief werk wil problemen voorkomen en stelt diagnostische nauwkeurigheid boven snelheid. In ITSM-praktijk bestaan beide: reactief probleemmanagement onderzoekt problemen na incidenten en proactief probleemmanagement zoekt patronen en zwaktes voordat ze incidenten veroorzaken.

### Wat een grondoorzaak is

Het artikel definieert een grondoorzaak met een praktische toets: een factor is de grondoorzaak van een probleem als het wegnemen ervan voorkomt dat het probleem terugkeert. Het onderscheidt een grondoorzaak van andere causale factoren. Dit is een nuttige regel. Als je een factor wegneemt en het probleem nog kan terugkeren, heb je een bijdragende factor gevonden, niet de grond.

Het artikel waarschuwt ook voor grenzen. Het zegt dat ontbrekende monitoringgegevens, zeer hoge gebeurtenisvolumes, meerdere grondoorzaken en onderzoekers die bij een oppervlakkige grond stoppen de analyse bemoeilijken. In IT, merkt het op, ontbreken bij RCA vaak foutenbomen of ontwerpspecificaties, zodat "er is geen grondoorzaak" een gangbare uitspraak is geworden. Verwacht bij complexe systemen meerdere bijdragende oorzaken en niet één schuldige.

### Principes van root cause analysis

Het artikel somt algemene stappen op:

1. Beschrijf het probleem duidelijk.
2. Bouw een tijdlijn van normaal bedrijf tot de fout.
3. Scheid de grondoorzaak van andere causale factoren.
4. Teken een causale graaf die de grondoorzaak met het probleem verbindt.

Het voegt toe dat onderzoekers moeten kijken naar verdedigingen die faalden of ontbraken (barrière-analyse), vooringenomenheid in de onderzoekslijnen moeten vermijden, corrigerende acties moeten bepalen en moeten beoordelen of die acties effectief waren.

### Methoden

Het artikel zegt dat RCA volgens ISO/IEC 31010 gebruik kan maken van five whys, failure mode and effects analysis (FMEA), foutenboomanalyse, Ishikawa-diagrammen (visgraat) en Pareto-analyse. Het schrijft het causale diagram dat zijn naam draagt toe aan Kaoru Ishikawa. Het noemt visgraat- en five-whys-methoden ook "niet rigoureus genoeg", een mening die het niet met een bron staaft. Een praktische lezing: eenvoudige methoden zijn goede beginpunten voor teamgesprekken, en complexe of risicovolle fouten kunnen rigoureuzere vragen.

| Methode | Wat ze doet | Wanneer ze helpt |
|---|---|---|
| **Five whys** | Vraagt herhaaldelijk "waarom" om van een symptoom naar een oorzaak te gaan | Snel gesprek op teamniveau over eenvoudige oorzaakketens |
| **Ishikawa-diagram (visgraat)** | Groepeert mogelijke oorzaken per categorie | Brainstormen over veel mogelijke oorzaken |
| **Pareto-analyse** | Rangschikt oorzaken naar frequentie of impact | Kiezen welk terugkerend probleem je eerst aanpakt |
| **Foutenboomanalyse** | Brengt combinaties van fouten in kaart die tot een uitkomst leiden | Veiligheidskritieke of complexe fouten |
| **FMEA** | Kijkt vooruit naar hoe onderdelen kunnen falen en wat het effect zou zijn | Proactieve ontwerpreview |

### Effectieve corrigerende acties

Het artikel zegt dat corrigerende acties die alleen papierwerk of training toevoegen minder effectief zijn. In de praktijk suggereert dit de voorkeur voor acties die het systeem veranderen: een controle automatiseren, een faalwijze wegnemen, een waarborg toevoegen, monitoring verbeteren. Een actie als "herinner engineers eraan voorzichtig te zijn" is zwak.

### Het schuldvrije principe

Probleemonderzoek deelt het schuldvrije principe dat voor postmortems in het SRE-boek van Google wordt beschreven: identificeer bijdragende oorzaken zonder individuen de schuld te geven, want mensen kunnen worden getraind en systemen kunnen worden gerepareerd (zie Onderwerp 3.2 — Incidentmanagement). Een onderzoek dat "menselijke fout" vindt en stopt, is meestal te vroeg gestopt. Vraag wat de fout mogelijk maakte en wat haar moeilijker zou maken.

### Probleemmanagement in een agile flow

Een praktische agile aanpak ziet er zo uit:

- Incidenten en postmortems scheppen kandidaat-problemen.
- Een korte, regelmatige review groepeert terugkerende incidenten en rangschikt problemen naar impact en frequentie.
- Geselecteerde problemen komen als gewone items in de backlog, met een eigenaar, een hypothese en een tijdslimiet voor onderzoek.
- Workarounds worden als bekende fouten vastgelegd zodat de servicedesk en engineers in bereikbaarheidsdienst ze kunnen gebruiken (zie Onderwerp 3.9 — Kennismanagement).
- Oplossingen zijn klein en getest, worden op de normale manier uitgebracht en daarna gecontroleerd om te zien of de incidenten stopten.

## Goede praktijken

1. **Koppel incidenten aan problemen.** Leg vast welke incidenten dezelfde oorzaak lijken te hebben. Zonder koppelingen zie je het patroon niet, en zonder het patroon kun je niet pleiten voor een oplossing.
2. **Review incidenten volgens schema op patronen.** Groepeer eens per maand recente incidenten naar service en waarschijnlijke oorzaak en kies de top paar. Denk in Pareto: een paar oorzaken zijn meestal verantwoordelijk voor veel van de pijn.
3. **Behandel problemen als backlogitems.** Geef elk geselecteerd probleem een eigenaar, een omschrijving en een tijdslimiet voor onderzoek en laat het met ander werk concurreren. Een aparte wachtrij van "problemen" die niemand plant, is een kerkhof.
4. **Begin met een duidelijke probleemomschrijving.** Schrijf op wat er gebeurt, waar, hoe vaak en wat de impact is, met feiten. Vage omschrijvingen leiden tot vage oplossingen.
5. **Bouw een tijdlijn.** Verzamel logs, wijzigingen en gebeurtenissen van normaal bedrijf tot de fout. Het artikel noemt de tijdlijn een kernstap, en veel verrassingen komen van wijzigingen die niemand had verbonden.
6. **Vraag naar de oorzaak die, als ze wordt weggenomen, herhaling voorkomt.** Gebruik de toets van het artikel. Vraag, wanneer het team een oorzaak voorstelt, of het wegnemen ervan zou stoppen dat het probleem terugkeert.
7. **Verwacht meer dan één oorzaak.** Zoek bijdragende factoren in ontwerp, monitoring, proces en de kennis van mensen. Stop niet bij de eerste aannemelijke.
8. **Kies methoden die bij het probleem passen.** Gebruik five whys of een visgraat voor een snel teamgesprek en rigoureuzere hulpmiddelen voor ernstige of complexe fouten.
9. **Geef de voorkeur aan acties die het systeem veranderen.** Kies voor automatisering, waarborgen en betere monitoring boven herinneringen en training. Leg het verwachte effect vast zodat je het kunt controleren.
10. **Leg workarounds vast als bekende fouten.** Schrijf op hoe het symptoom eruitziet, de workaround en wie de oplossing bezit. Deel de vastlegging met de servicedesk en de bereikbaarheidsdienst.
11. **Controleer dat de oplossing werkte.** Let na een oplossing een afgesproken periode op herhaling en rapporteer het resultaat. Een oplossing die nooit wordt gecontroleerd, is een hoop.
12. **Deel wat je vindt.** Publiceer korte samenvattingen van problemen en oplossingen zodat andere teams soortgelijke patronen kunnen herkennen.

## Vragen om met je team te bespreken

**Welk incident komt steeds terug en wat denken we dat het veroorzaakt?**

Vraag mensen het incident te noemen waar ze het meest genoeg van hebben. Vergelijk antwoorden. Vraag dan wat ieder gelooft dat de oorzaak is en hoe ze dat weten. Overtuigingen verschillen vaak, wat toont hoe weinig gedeeld bewijs er is. De facilitator kan vragen welke gegevens het zouden beslechten. Kies er een om met een tijdslimiet te onderzoeken.

**Hoe weten we of twee incidenten dezelfde oorzaak hebben?**

Kijk hoe incidenten worden vastgelegd en vraag of iemand verwante incidenten snel kan vinden. Typische antwoorden zijn vrije tekst, geheugen of geluk. Vraag welke kleine wijziging in vastleggingen zou helpen, zoals een veld voor service en waarschijnlijke oorzaak. Spreek er een af.

**Wat doen we wanneer we "menselijke fout" vinden in een review?**

Vraag om een recent voorbeeld. De vraag is of de review daar stopte. Bespreek wat in het systeem de fout mogelijk maakte: onduidelijke instructies, een verwarrende tool, tijdsdruk. Vergelijk met het idee dat je mensen niet kunt repareren, maar systemen wel. Spreek een vraag af die je elke keer stelt, zoals "Wat maakte dit makkelijk om te doen?"

**Welke acties uit eerdere reviews veranderden het systeem werkelijk en welke voegden alleen een herinnering toe?**

Maak een lijst van de acties uit de laatste vijf reviews en markeer elke als systeemwijziging of herinnering. Het artikel zegt dat herinneringen en papierwerk minder effectief zijn. Vraag waarom herinneringen zo gangbaar zijn: ze zijn snel, goedkoop en voelen als actie. Kies een herinnering om door een sterkere oplossing te vervangen.

**Waar hebben we workarounds die niemand heeft opgeschreven?**

Vraag engineers in bereikbaarheidsdienst en deskanalisten welke trucs ze gebruiken. Elke ongeschreven workaround is een risico. Leg ze vast als bekende fouten met symptoom, workaround en eigenaar. De facilitator kan vragen wie bij elke vastlegging baat heeft. Maak deze week een korte lijst.

**Hoe zouden we weten dat een oplossing heeft gewerkt?**

Kies een recente oplossing en vraag welk bewijs het liet zien. Als het antwoord "geen klachten meer" is, vraag dan hoe lang je wachtte en wat je mat. Bespreek een eenvoudige controle: let een vaste periode op het specifieke symptoom. Spreek af de controle bij elke oplossing vast te leggen.

## In de praktijk: een agile ITIL-voorbeeld

Een middelgroot logistiek bedrijf draait een routeplanningsservice die door zijn chauffeurs en planners wordt gebruikt. Het platformteam van negen heeft ruwweg elke twee weken hetzelfde incident afgehandeld: routeberekeningen lopen 's ochtends tien tot vijftien minuten vast en herstellen dan. Elke keer herstart de engineer in bereikbaarheidsdienst een workerproces en wordt het incident gesloten. Planners klagen dat de ochtendplanning niet te vertrouwen is.

De teamlead start een maandelijkse review van incidenten, gegroepeerd naar service en waarschijnlijke oorzaak. De ochtendtimeouts staan bovenaan de lijst. Ze schrijft een probleemomschrijving op basis van de incidentvastleggingen: timeouts treden op doordeweeks tussen 7:00 en 7:30, duren tien tot vijftien minuten en raken alle planners. Het team bouwt een tijdlijn met een geplande data-import om 7:00 en een recente wijziging die de omvang van de import vergrootte. Een five-whys-gesprek suggereert dat de import de database verzadigt. Ze proberen de voor de hand liggende oplossing, capaciteit toevoegen, maar de incidenten gaan door in lagere frequentie, dus concluderen ze dat capaciteit een bijdragende factor was en niet de grond.

Een tweede blik ontdekt dat de import een tabel vergrendelt die ook door routeberekeningen wordt gelezen. Het team verplaatst de import naar een aparte replica en voegt een alarm voor lock-waits toe. Ze leggen de herstart vast als bekende fout met het symptoom en de workaround tot de oplossing live is, en spreken af zes weken op het symptoom te letten. De incidenten stoppen. Er blijven problemen: een andere import van een partner draait nog steeds op het piekmoment en het team heeft de partner nog niet overtuigd zijn schema te wijzigen. Ze zetten het schema van de partner op de agenda van de volgende planning en laten het lock-alarm staan.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams hebben de kennis om oorzaken te repareren. Neem de belangrijkste problemen op in je backlog en behandel ze als werk dat vertrouwen verdient. Voeg monitoring en tests toe die de oorzaak zouden hebben onthuld en schrijf de bekende fout in taal die de desk kan gebruiken.

### Service- en beheerteams

Beheerteams zien de incidenten en houden de vastleggingen bij. Koppel incidenten, houd de maandelijkse review en leg workarounds vast als bekende fouten. Breng het bewijs naar leveringsteams in een vorm die het pleidooi maakt, met frequentie, impact en tijdlijn.

### Leiderschap en governance

Leiders beslissen of het repareren van problemen tijd krijgt. Vraag naar de belangrijkste terugkerende problemen en wat eraan wordt gedaan. Weersta het tellen van gesloten incidenten als maat voor succes, want het beloont reparatie. Steun oplossingen die moeite kosten maar pijn wegnemen.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer herhaalde fouten stoppen. Meld terugkerende problemen met data en effecten, want patronen helpen het team. Vraag verleners wat ze hebben gedaan aan de oorzaken van herhaalde storingen en verwacht een antwoord dat verder gaat dan "we hebben het herstart".

## Veelvoorkomende faalpatronen

- **Reparatie zonder verwijdering.** Incidenten worden gesloten en keren terug. Koppel in plaats daarvan herhalingen aan een probleem en los de oorzaak op.
- **Een probleemwachtrij die niemand plant.** Problemen wachten eeuwig. Zet in plaats daarvan geselecteerde problemen met eigenaren en tijdslimieten in de backlog.
- **Stoppen bij menselijke fout.** De review eindigt met iemand om de schuld te geven. Vraag in plaats daarvan wat de fout mogelijk maakte en repareer het systeem.
- **Zwakke acties.** Herinneringen en training vervangen systeemwijzigingen. Kies in plaats daarvan voor automatisering, waarborgen en betere monitoring.
- **Zoeken naar één grondoorzaak.** Het team staat op één schuldige. Accepteer in plaats daarvan meerdere bijdragende oorzaken en pak de meest effectieve aan.
- **Geen controle dat de oplossing werkte.** Het probleem wordt bij de release gesloten. Definieer in plaats daarvan een manier om te zien of het symptoom terugkeert.
- **Ongeschreven workarounds.** Kennis leeft bij individuen. Leg in plaats daarvan bekende fouten vast en deel ze.
- **Methodeaanbidding.** Teams twisten over technieken. Kies in plaats daarvan methoden die bij het probleem passen en besteed de moeite aan bewijs.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Koppelen en prioriteren | Incidenten worden niet gekoppeld | Sommige teams noteren herhalingen | Incidenten worden aan problemen gekoppeld en volgens schema op patronen gereviewd | Problemen worden gerangschikt naar gemeten impact en frequentie | Probleemprioriteiten worden over teams en leveranciers gedeeld |
| Onderzoek | Onderzoek is informeel | Sommige teams gebruiken eenvoudige methoden | Een schriftelijke aanpak met tijdlijnen en bewijs wordt gebruikt | Onderzoekskwaliteit en -tijd worden gereviewd | Onderzoeken beslaan teams en leveranciers met gedeelde gegevens |
| Corrigerende actie | Oplossingen zijn ad hoc of herinneringen | Sommige oplossingen veranderen het systeem | Acties worden gekozen op effect, met eigenaren en data | Effecten worden gecontroleerd en herhaling wordt gemeten | Oplossingen verspreiden zich naar soortgelijke systemen in de organisatie |
| Bekende fouten en kennis | Workarounds zijn ongeschreven | Sommige worden door individuen vastgelegd | Bekende fouten worden vastgelegd en met de desk en bereikbaarheidsdienst gedeeld | Gebruik en juistheid van bekende fouten worden gevolgd | Bekende fouten worden met gebruikers, leveranciers en partners gedeeld |

## Checklist

- [ ] Incidenten die een oorzaak lijken te delen, zijn gekoppeld.
- [ ] Een regelmatige review groepeert incidenten en kiest de belangrijkste terugkerende problemen.
- [ ] Geselecteerde problemen staan met eigenaren en tijdslimieten in de backlog.
- [ ] Elk probleem heeft een schriftelijke omschrijving met feiten.
- [ ] Voor elk onderzoek wordt een tijdlijn gebouwd.
- [ ] Reviews vragen wat in het systeem een menselijke fout toeliet.
- [ ] Acties verkiezen systeemwijzigingen boven herinneringen, met het verwachte effect vastgelegd.
- [ ] Workarounds worden vastgelegd als bekende fouten en gedeeld met de desk en de bereikbaarheidsdienst.
- [ ] Elke oplossing heeft een controle op herhaling gedurende een afgesproken periode.
- [ ] Samenvattingen van problemen en oplossingen worden met andere teams gedeeld.

## AI-prompts

**Doel: herhaalde incidenten en kandidaat-problemen in je vastleggingen vinden.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Doel: uit bewijs een duidelijke probleemomschrijving schrijven.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Doel: een five-whys-sessie voorbereiden en de redeneerketen vastleggen.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: beoordelen of voorgestelde corrigerende acties het systeem veranderen.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## AI-vaardigheden

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): gebruik dit om een onderzoek te leiden van een duidelijke probleemomschrijving naar een geteste oorzaak.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): gebruik dit om met een team mogelijke oorzaken per categorie te brainstormen.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): gebruik dit om uit te zetten hoe oorzaken en gevolgen bij een ingewikkelde fout samenhangen.
- [postmortem](../../../../skills/postmortem/SKILL.md): gebruik dit om de review te houden die kandidaat-problemen identificeert.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): gebruik dit wanneer je op gegevens gebaseerde methoden nodig hebt om variatie of terugkerende defecten te analyseren.

## Belangrijkste bronnen

- **Root cause analysis** (Wikipedia): een algemeen overzicht van de methode, principes en grenzen, met ISO/IEC 31010 genoemd voor de methoden.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): de schuldvrije aanpak om van fouten te leren.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): hoe incidentafhandeling latere analyse voedt.
- **Ishikawa diagram** en **Five whys** (Wikipedia): achtergrond over twee gangbare eenvoudige methoden.

## Referenties

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
