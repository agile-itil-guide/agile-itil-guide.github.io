# Vier dimensies van servicemanagement

**De vier dimensies van ITIL 4 zijn een checklist om te vinden wat een service mist: de juiste mensen en structuur, informatie en technologie, partners en leveranciers en gedefinieerde werkstromen, en een zwakte in een daarvan beperkt de waarde van de andere.**

## Waarom dit ertoe doet

Wanneer een service tegenvalt, grijpen teams vaak naar de oplossing die ze het best kennen. Engineers verdenken de technologie, managers het proces en HR de vaardigheden. Elk kan gelijk hebben, en de kans het probleem op te lossen is beter als je op alle vier plekken kijkt. De vier dimensies geven een eenvoudig kader om dat te doen.

De dimensies zijn ook een nuttige rem op een veelvoorkomend agile falen. Een team dat uitstekend code levert, kan toch een slechte service leveren als niemand heeft nagedacht over de leverancier van wiens API het afhangt, de vaardigheden die nodig zijn om haar 's nachts te ondersteunen of de informatie die de servicedesk nodig heeft wanneer ze uitvalt. Evenzo kan een servicemanagementgroep die haar processen perfectioneert de cultuur en tools verwaarlozen waardoor ze werken.

Volgens de ITIL 4 Foundation-pagina van PeopleCert zijn de vier dimensies organisaties en mensen; informatie en technologie; partners en leveranciers; en waardestromen en processen. Die lijst is het enige deel van dit onderwerp dat rechtstreeks uit de openbare pagina's van de eigenaar van het raamwerk komt. De onderstaande beschrijvingen komen uit bronnen van opleidingsaanbieders en commentaren, die het onderling eens zijn maar secundair zijn. Controleer de ITIL 4-publicaties wanneer je exacte formuleringen nodig hebt.

## Kernconcepten

### De vier dimensies

De tabel geeft elke dimensie, wat ze omvat zoals algemeen samengevat, en een vraag om over een service te stellen.

| Dimensie | Wat ze omvat | Een vraag om te stellen |
|---|---|---|
| **Organisaties en mensen** | De structuur, cultuur, rollen, vaardigheden en leiderschap die nodig zijn om het werk te doen; reikt verder dan IT-medewerkers tot iedereen die met de service in aanraking komt | Wie doet wat, met welke vaardigheden, en ondersteunt de cultuur het? |
| **Informatie en technologie** | De informatie en kennis die de service gebruikt en creëert en de tools en technologie die haar ondersteunen | Wat moeten we weten en waarop draaien we haar? |
| **Partners en leveranciers** | De relaties met andere organisaties die aan de service bijdragen, inclusief hoe leveranciers worden geselecteerd, beheerd en geïntegreerd | Wie is er nog meer bij betrokken en waarvoor zijn we van hen afhankelijk? |
| **Waardestromen en processen** | De activiteiten en werkstromen waarlangs waarde wordt gecreëerd en hoe ze worden georganiseerd en beheerst | Hoe beweegt werk en waar wacht het? |

Opleidingsbronnen benadrukken dat de dimensies onderling afhankelijk zijn. Te weinig aandacht voor een ervan beperkt de waarde die een organisatie aan haar belanghebbenden kan leveren.

### Relatie met de rest van het raamwerk

De dimensies gelden voor elk deel van het servicewaardesysteem (zie Onderwerp 2.3 — Het ITIL-servicewaardesysteem). Een praktijk, zoals incidentmanagement, kan door elk ervan worden onderzocht: welke mensen en rollen ze nodig heeft, welke informatie en tools, welke leveranciers en welke processen. Ze sluiten ook aan op de leidende principes, vooral "denk en werk holistisch" (zie Onderwerp 2.4 — De ITIL-leidende principes).

### Externe factoren

Opleidings- en commentaarbronnen beschrijven ook externe factoren die alle vier de dimensies beïnvloeden. Ze gebruiken gewoonlijk het acroniem **PESTLE**: politiek, economisch, sociaal (sommige bronnen zeggen sociaal-cultureel), technologisch, juridisch en omgeving (environmental). Dit zijn dingen die de organisatie niet kan beheersen maar wel moet overwegen, omdat ze risico's kunnen scheppen of de aanleiding kunnen zijn een service te wijzigen. Een wetswijziging kan veranderen welke informatie een service mag bewaren; een economische verschuiving kan de prijzen van een leverancier veranderen; een nieuwe technologie kan veranderen wat klanten verwachten. Bronnen stellen voor ze te bekijken wanneer je overweegt hoe te reageren op veranderende vraag of kansen.

### De dimensies in een agile team

Agile teams werken uit gewoonte al met sommige dimensies en verwaarlozen andere.

| Dimensie | Wat agile teams meestal goed doen | Wat vaak wordt gemist |
|---|---|---|
| Organisaties en mensen | Zelfsturende teams, retrospectives, aandacht voor motivatie | Bereikbaarheidsbelasting, vaardigheden buiten het team, de cultuur van de groepen die de service ondersteunen |
| Informatie en technologie | Automatisering, tooling, versiebeheer | Kennis voor supportmedewerkers, data-eigenaarschap, documentatie die anderen gebruiken |
| Partners en leveranciers | Snel diensten van derden en open source gebruiken | Wie een afhankelijkheid ondersteunt, wat er gebeurt als een leverancier voorwaarden wijzigt of faalt |
| Waardestromen en processen | Korte cycli, zichtbare borden | De delen van de flow buiten het team, zoals goedkeuringen, beveiligingsreviews en overdracht aan beheer |

### De dimensies gebruiken om te diagnosticeren

Een praktisch gebruik is een incident of een mislukte wijziging te nemen en te vragen in welke dimensie de zwakte zat. Een paar voorbeelden tonen het idee, zonder te beweren dat ze typisch zijn:

- Een oplossing duurde uren omdat slechts één persoon het systeem begreep: organisaties en mensen.
- Een alarm werd genegeerd omdat het niets nuttigs zei: informatie en technologie.
- Een herstel stagneerde omdat de supportlijn van een leverancier gesloten was: partners en leveranciers.
- Een wijziging wachtte drie dagen op een handtekening die geen doel diende: waardestromen en processen.

De meeste echte problemen raken meer dan één. De waarde van de oefening is op te merken welke dimensie je gewoonlijk over het hoofd ziet.

### Grenzen

De dimensies zijn een kader en geen methode. Ze zeggen niet hoe je een zwakke dimensie repareert, en ze zijn breed genoeg dat bijna elk probleem in meer dan één kan worden geplaatst. Het Wikipedia-artikel over ITIL beschrijft ze niet en deze gids heeft geen onafhankelijk bewijs gevonden over hoe goed ze in de praktijk werken. Behandel ze als aanzetten die een team helpen betere vragen te stellen.

## Goede praktijken

1. **Review elke service via alle vier de dimensies.** Schrijf voor elke belangrijke service twee of drie regels onder elke dimensie: wat er is en wat ontbreekt. Doe dit wanneer je een service ontwerpt en daarna eens per jaar.
2. **Zet mensen bovenaan de lijst.** Controleer wie in bereikbaarheidsdienst is, welke vaardigheden nodig zijn en of de belasting eerlijk is. Een service die afhangt van een paar uitgeputte mensen is in gevaar (zie Onderwerp 1.2 — Agile-principes over houdbaar tempo).
3. **Behandel informatie als onderdeel van de service.** Identificeer de informatie die gebruikers, supportmedewerkers en andere teams nodig hebben en wie haar bezit. Maak haar makkelijk te vinden (zie Onderwerp 3.9 — Kennismanagement).
4. **Ken je technologie en houd haar ondersteunbaar.** Houd een lijst bij van de belangrijkste componenten en wie elk kan ondersteunen. Faseer uit wat niemand begrijpt.
5. **Maak een lijst van je leveranciers en waarvoor je van hen afhangt.** Neem cloudaanbieders, softwareleveranciers en interne teams buiten je eigen team mee. Leg vast wie je belt, hoe en wat ze hebben beloofd (zie Onderwerp 3.14 — Leveranciersmanagement).
6. **Neem leveranciers op in je reviews.** Nodig belangrijke partners uit voor gezamenlijke planning of incidentreviews. Een leverancier die laat van je plannen hoort, kan niet helpen.
7. **Breng de waardestroom en de overdrachten in kaart.** Teken hoe werk van verzoek naar waarde stroomt en markeer waar het een team of leverancier oversteekt. Overdrachten zijn waar informatie en tijd het vaakst verloren gaan (zie Onderwerp 5.4 — Waardestroommanagement).
8. **Kijk eerst naar de minst ontwikkelde dimensie.** Begin bij het verbeteren van een service met de zwakste dimensie, niet met die het team het liefst heeft. Toon het bewijs achter je keuze.
9. **Scan externe factoren een of twee keer per jaar.** Gebruik de PESTLE-koppen om te noteren wat voor elke service kan veranderen: wetten, prijzen, technologie, publieke opvattingen. Noteer welke dimensie elk kan raken.
10. **Gebruik de dimensies in incident- en wijzigingsreviews.** Voeg een vraag toe aan het reviewsjabloon: welke dimensie was hier het zwakst? Na verloop van tijd tonen patronen zich.
11. **Houd het licht.** Een pagina per service volstaat. Als de review langer dan een uur duurt, verzamel je waarschijnlijk informatie die niemand gebruikt.
12. **Gebruik de dimensies niet om te beschuldigen.** Het doel is een compleet beeld van de service. Behandel een gat als ontwerpprobleem om samen op te lossen, niet als falen van een team.

## Vragen om met je team te bespreken

**Wat zouden we voor onze belangrijkste service onder elk van de vier dimensies schrijven, en welke is het dunst?**

Verdeel het team in vier groepen, een per dimensie, en geef ze tien minuten. Vergelijk de lijsten. De dunne verrast mensen vaak: leveringsteams vinden vaak dat partners en leveranciers weinig oplevert, terwijl beheerteams hetzelfde voor informatie kunnen vinden. De facilitator kan vragen wat de dunne dimensie de afgelopen zes maanden heeft gekost.

**Van wie zijn we afhankelijk met wie we nooit hebben gesproken?**

Maak een lijst van leveranciers en interne teams waarop de service rekent, inclusief die achter een cloudproduct. Markeer bij welke je een contact hebt en bij welke niet. Vraag wat er zou gebeuren als elk uitviel. Dit is een goede plek om risico's te vinden die niemand bezit. Kies één afhankelijkheid om beter te begrijpen.

**Welke kennis bestaat alleen in het hoofd van één persoon?**

Vraag mensen taken te noemen die maar één persoon kan doen en welke informatie de servicedesk mist om de service te ondersteunen. Behandel de antwoorden als risicolijst. Vraag hoe kennis binnen een maand kan worden gedeeld, bijvoorbeeld door pairing of het schrijven van een korte gids. Leg de eerste stap en de eigenaar vast.

**Waar wacht werk buiten ons team?**

Volg een recent verzoek over teams heen en markeer elke wachttijd. Wachttijden bij goedkeuringen, beveiligingsreviews of leverancierswachtrijen vallen buiten de controle van het team maar niet buiten zijn invloed. Vraag wie elke wachttijd kan veranderen en welk bewijs zou helpen. Kies één wachttijd om bij de eigenaar aan te kaarten.

**Wat gebeurde er de laatste keer dat iets buiten onze controle veranderde, zoals een wet, een prijs of een platform?**

Vraag naar een echt geval. Kijk hoe lang het duurde om het op te merken, wie besliste en welke dimensie de klap kreeg. Het doel is te leren hoe het team naar externe verandering scant. Vraag wie verantwoordelijk is voor het in de gaten houden en wat ze in de gaten houden.

**Als we maar één dimensie dit kwartaal konden versterken, welke zou onze gebruikers het meeste voordeel geven?**

Laat mensen pleiten voor een dimensie met een recent voorbeeld. Vermijd eerst stemmen; vraag naar bewijs. Spreek dan één actie in de gekozen dimensie af met een eigenaar en een maatstaf. Vergeet niet te zeggen aan welke dimensies je niet gaat werken, zodat de keuze expliciet is.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal milieuagentschap draait een openbaar dataportaal dat luchtkwaliteitsmetingen van duizenden sensoren publiceert. Een team van negen bouwt en beheert het. Het team levert wekelijks wijzigingen op en zijn processen zien er gezond uit. Toch wordt het portaal tijdens een hittegolf traag, schiet de publieke belangstelling omhoog en hoort de persdienst van het agentschap van het probleem via sociale media.

De eigenaar van het portaal gebruikt de vier dimensies om het incident te reviewen. Bij organisaties en mensen begrijpen maar twee engineers de pipeline voor gegevensinname, en een was met verlof. Bij informatie en technologie toonde de monitoring dat de database druk was maar niet welke metingen te laat waren, zodat het team de persdienst niet kon vertellen wat was getroffen. Bij partners en leveranciers komen de sensordata van regionale agentschappen en een cloudaanbieder, en niemand had een van beide gevraagd wat te verwachten tijdens piekvraag. Bij waardestromen en processen heeft de persdienst geen route naar het incidentproces, zodat haar eerste contact via een journalist kwam.

Het team voert vier veranderingen door, een per dimensie: een derde engineer wordt getraind op de pipeline, het dashboard toont versheid van gegevens per regio, de regionale agentschappen en de cloudaanbieder worden uitgenodigd voor een korte capaciteitsreview en de persdienst wordt aan de incidentmeldingen toegevoegd. Een latere hittegolf wordt zonder publieke klachten afgehandeld. Er blijven problemen: een regionaal agentschap stuurt nog gegevens in een oud formaat die de pipeline breken, en de persdienst vindt technische statusberichten moeilijk om te zetten in gewone taal. Het team spreekt af het regionale agentschap om een schema voor het wijzigen van zijn formaat te vragen en met de persdienst een kort statussjabloon te schrijven.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams beheersen meestal technologie en proces maar kunnen mensen en leveranciers over het hoofd zien. Vraag wie zal ondersteunen wat je bouwt, welke vaardigheden ze nodig hebben en op welke externe partijen je service rekent. Lever informatie die anderen nodig hebben en nodig hen uit voor je reviews.

### Service- en beheerteams

Beheerteams zien zwaktes in de dimensies vaak het eerst omdat ze met de gevolgen leven. Gebruik de dimensies om problemen te beschrijven op een manier waarop leveringsteams en managers kunnen handelen, en om te pleiten voor tijd voor kennisdeling en leveranciersrelaties.

### Leiderschap en governance

Leiders beheersen structuur, vaardigheden, leverancierscontracten en de processen die teams oversteken. Vraag om een review van vier dimensies voor belangrijke services en kijk naar de dunne dimensie. Wees bereid de onopvallende delen te financieren, zoals training en leveranciersrelaties.

### Klanten en gebruikers

Klanten en gebruikers ervaren het resultaat van alle vier de dimensies zonder ze te zien. Vertel de verlener wat je zag en wat je nodig had wanneer er iets misgaat. Die informatie helpt hen de zwakke dimensie te vinden. Vraag verleners hoe ze ondersteuning, leveranciers en informatie voor de services die jij gebruikt regelen.

## Veelvoorkomende faalpatronen

- **De bekende dimensie repareren.** Engineers voegen technologie toe aan elk probleem. Vraag in plaats daarvan naar welke dimensie het bewijs wijst.
- **Leveranciers vergeten.** De service hangt af van partijen die niemand heeft ontmoet. Maak in plaats daarvan een lijst van leveranciers en leg contacten, toezeggingen en risico's vast.
- **Mensen als gegeven behandelen.** Vaardigheden en bereikbaarheidsbelasting worden aangenomen. Review ze in plaats daarvan als onderdeel van de service.
- **Processen die bij de teamgrens stoppen.** Overdrachten worden niet beheerd. Breng in plaats daarvan de stroom over teams in kaart en spreek de overdrachten af.
- **Informatie die niemand kan vinden.** Documentatie bestaat maar supportmedewerkers kunnen haar niet gebruiken. Vraag in plaats daarvan de gebruikers van de informatie wat ze nodig hebben.
- **Overanalyse.** De review wordt een groot document. Houd haar in plaats daarvan bij een pagina per service.
- **Het kader gebruiken voor beschuldiging.** Teams worden beoordeeld op gaten. Behandel gaten in plaats daarvan als gedeelde ontwerpproblemen.
- **Externe verandering negeren.** Wetten, prijzen en technologie verschuiven zonder aankondiging. Scan in plaats daarvan regelmatig PESTLE-factoren en noteer welke dimensie elk raakt.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Organisaties en mensen | Rollen en vaardigheden zijn informeel | Sommige teams noemen vaardigheden en bereikbaarheidsbelasting | Rollen, vaardigheden en werkbelasting zijn voor elke service beschreven | Vaardigheden en belasting worden gemeten en gereviewd | Bezetting en vaardigheden worden over teams en partners gepland |
| Informatie en technologie | Kennis en tools zijn verspreid | Sommige teams houden component- en kennislijsten bij | Componenten en informatie hebben eigenaren en zijn vindbaar | Gebruik van informatie en tools wordt gevolgd en gaten worden gedicht | Informatie en tools worden over teams en leveranciers gedeeld en verbeterd |
| Partners en leveranciers | Leveranciers worden door individuen beheerd | Sommige belangrijke leveranciers staan met contacten op een lijst | Alle belangrijke leveranciers hebben eigenaren, contacten en verwachtingen | Leveranciersprestatie en -risico worden gereviewd | Leveranciers nemen deel aan planning en verbetering |
| Waardestromen en processen | Werk stroomt uit gewoonte | Sommige stromen zijn getekend | Belangrijke stromen zijn over teams in kaart gebracht met eigenaren | Flow en wachttijden worden gemeten en verminderd | Stromen worden samen met klanten en leveranciers verbeterd |

## Checklist

- [ ] Voor elke belangrijke service hebben we opgeschreven wat er is en wat ontbreekt in elke dimensie.
- [ ] De mensen en vaardigheden die nodig zijn om elke service te beheren, zijn geïdentificeerd, met de bereikbaarheidsbelasting gereviewd.
- [ ] De informatie die gebruikers en supportmedewerkers nodig hebben, heeft een eigenaar en is vindbaar.
- [ ] De belangrijkste componenten van de service staan op een lijst, met iemand die elk kan ondersteunen.
- [ ] Belangrijke leveranciers en interne verleners staan met contacten en verwachtingen op een lijst.
- [ ] De werkstroom van één service is over teams in kaart gebracht.
- [ ] We hebben het afgelopen jaar minstens eenmaal externe factoren (PESTLE) gescand.
- [ ] Incident- en wijzigingsreviews vragen welke dimensie het zwakst was.
- [ ] De review voor elke service past op één pagina.
- [ ] We hebben één zwakke dimensie gekozen om dit kwartaal te versterken.

## AI-prompts

**Doel: een review van vier dimensies van een service opstellen.**

```text
Help me draft a four-dimension review of the service [name]. The dimensions are: organizations and people; information and technology; partners and suppliers; value streams and processes.

About the service: [describe what it does and who uses it].
For each dimension, what I know: [write a few lines each; write "unknown" where you do not know].

For each dimension, say what exists, what appears to be missing, and one question I should ask the team, using only my text. Highlight the thinnest dimension and say why. Do not invent suppliers, people, or tools. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: de zwakste dimensie in recente incidenten classificeren.**

```text
Here are short, factual descriptions of [number] recent incidents or failed changes: [paste, one per item].

For each, say which of the four ITIL dimensions (organizations and people; information and technology; partners and suppliers; value streams and processes) the weakness most likely lay in, with one sentence of reasoning drawn only from the text. Where more than one applies, say so. Then count how many fall under each dimension, from my list only, and suggest two questions about the pattern. Do not invent causes, and list what you are unsure of.
```

**Doel: leveranciers en afhankelijkheden van een service opsommen.**

```text
Help me build a dependency and supplier list for [service].

What I know about how it is built and run: [describe components, cloud services, data sources, other teams].
Contracts or support arrangements I know about: [list, or write "unknown"].

Produce a table with columns: dependency, who provides it, what we rely on it for, what happens if it fails (from my text only), and the question I should ask the supplier. Mark anything you inferred. Do not invent contracts or service levels. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: externe factoren voor een service scannen.**

```text
Help me prepare a scan of external factors using the PESTLE headings (political, economic, social, technological, legal, environmental) for the service [name].

Context: [describe the sector, countries served, and users].
Known upcoming changes: [list laws, price changes, technology shifts you actually know about, or write "none known"].

For each heading, propose questions we should research (not answers), and note which of the four ITIL dimensions each factor could affect. Do not state that any law or regulation exists or applies unless I have listed it. Mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gebruik dit om de partners, leveranciers en groepen in kaart te brengen die van een service afhangen of eraan bijdragen.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om te plannen hoe je leveranciers selecteert, beheert en reviewt.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): gebruik dit om de werkstroom over teams in kaart te brengen voor de dimensie waardestromen en processen.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md): gebruik dit naast de scan van externe factoren om sterktes, zwaktes, kansen en bedreigingen samen te vatten.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): gebruik dit om vaardigheidsgaten in de dimensie organisaties en mensen te vinden.

## Belangrijkste bronnen

- **ITIL 4 Foundation** (PeopleCert): de pagina van de eigenaar die de vier dimensies onder de bestudeerde onderwerpen noemt.
- **The ITIL Four Dimensions of Service Management** (itsm.tools): een samenvatting van een praktijksite van elke dimensie en van PESTLE; secundair.
- **PESTLE analysis** (Wikipedia): achtergrond over het hulpmiddel voor externe factoren.
- **ITIL** (Wikipedia): context over ITIL 4 en zijn plaats in de geschiedenis van het raamwerk.

## Referenties

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
