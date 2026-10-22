# Servicecontinuïteitsmanagement

**Servicecontinuïteitsmanagement bereidt een organisatie voor om haar belangrijkste services draaiende te houden, of snel terug te brengen, na een ernstige verstoring, en haar waarde wordt alleen bewezen door oefeningen, niet door het plan op de plank.**

## Waarom dit ertoe doet

De meeste incidenten zijn klein en lokaal. Enkele niet: een brand in het datacenter, een uitgevallen cloudregio, een ransomware-aanval, de ineenstorting van een leverancier, een pandemie, een overstroming. Deze gebeurtenissen bedreigen het vermogen van de organisatie om nog te kunnen leveren, en ze afhandelen vraagt planning die gewoon incidentmanagement niet dekt. Een team dat van tevoren heeft doordacht wat het meest telt en hoe het doorgaat, heeft een veel grotere kans erdoorheen te komen.

Agile teams ontmoeten dit onderwerp met een bijzondere uitdaging. Hun systemen veranderen wekelijks, dus een continuïteitsplan dat eenmaal is geschreven en opgeborgen, is binnen maanden verouderd. Herstelstappen die van een bepaalde server of een bepaald script afhingen, zijn misschien niet meer geldig. Het agile antwoord is niet de planning op te geven maar continuïteit een levend onderdeel te maken van hoe services worden gebouwd en beheerd: herstel ingebouwd, vaak getest en samen met de code in versiebeheer bewaard.

Het [Wikipedia-artikel over business continuity planning](https://en.wikipedia.org/wiki/Business_continuity_planning) definieert business continuity als het vermogen van een organisatie om producten of services na een verstoring op aanvaardbare niveaus te blijven leveren, en behandelt continuïteitsplanning als een deelverzameling van risicomanagement. De pagina "Disaster recovery" op de Engelstalige Wikipedia is slechts een doorverwijspagina, met een bericht dat een volledig artikel gewenst is, dus dit onderwerp gebruikt het artikel over business continuity voor definities en voegt praktische richtlijnen uit de andere onderwerpen van de gids toe, met de aantekening waar het praktijk is en geen gerapporteerd bronmateriaal.

## Kernconcepten

### Continuïteit, herstel en veerkracht

Termen worden losjes gebruikt, dus gebruik ze zorgvuldig:

| Term | Betekenis, zoals breed gebruikt | Focus |
|---|---|---|
| **Business continuity** | Het vermogen om producten of services na een verstoring op aanvaardbare niveaus te blijven leveren | De organisatie draaiende houden |
| **Business continuity planning** | Systemen van preventie en herstel creëren voor bedreigingen van de organisatie | De plannen en regelingen |
| **IT disaster recovery** | Vitale informatietechnologische infrastructuur in stand houden of herstellen (de beschrijving op de Wikipedia-doorverwijspagina) | De technologie |
| **Servicecontinuïteit (ITSM)** | Ervoor zorgen dat IT-services na een verstoring tot afgesproken niveaus kunnen worden hersteld | IT-services binnen het grotere plan |

Het Wikipedia-artikel zegt dat disaster recovery overlapt met business continuity planning, vooral in de oplossingsfase, en dat continuïteit de beoogde uitkomst is van het uitvoeren van beide. Servicecontinuïteitsmanagement is de IT-servicekijk op hetzelfde doel.

### Business impact analysis

Een **business impact analysis (BIA)** is volgens het artikel een methode om te identificeren en te evalueren hoe verstoringen operaties raken en om herstelprioriteiten vast te stellen. De doelstellingen omvatten het identificeren van kritieke activiteiten en afhankelijkheden, het beoordelen van financiële, operationele, reputatie- en juridische gevolgen, het bepalen van herstelmaatstaven en het voeden van risicobeoordeling. Voor IT-services vraagt de BIA welke services de organisatie niet kan missen, in welke volgorde ze terug moeten komen en waarvan elk afhangt (zie Onderwerp 4.4 — Configuratiemanagement voor afhankelijkheden).

### Herstelmaatstaven

Het artikel definieert twee kernbegrippen:

- **Recovery time objective (RTO):** de aanvaardbare tijd om een functie te herstellen.
- **Recovery point objective (RPO):** de aanvaardbare hoeveelheid datalatentie, met andere woorden hoeveel gegevensverlies te verdragen is.

Het noemt ook de maximaal verdraagbare verstoringsperiode. Het artikel geeft geen methode om deze waarden voor een bepaalde organisatie te kiezen, dus ze moeten van de business komen: vraag wat een uur, een dag en een week storing kosten en welke gegevens de business zich kan veroorloven te verliezen. Ze vaststellen is een zakelijke beslissing met een prijs, want de kosten om aan een strengere doelstelling te voldoen stijgen (zie Onderwerp 3.11 — Beschikbaarheid, capaciteit en prestaties).

### Plannen

Een continuïteits- of herstelplan beschrijft wie wat doet, in welke volgorde, om kritieke services na een verstoring te herstellen. Het moet dekken: hoe en door wie het plan wordt ingeroepen, hoe mensen worden geïnformeerd en verzameld, de volgorde van herstel van services, waar het herstel plaatsvindt, waar gegevens vandaan komen, hoe met klanten en personeel te communiceren en hoe terug te keren naar normaal. Plannen voor IT-services moeten linken naar runbooks voor de afzonderlijke systemen (zie Onderwerp 3.9 — Kennismanagement).

### Testen en oefeningen

Het artikel citeert een boek van de British Standards Institution uit 2008 dat drie soorten oefening beschrijft: een **tabletop**-oefening waarin een kleine groep één aspect van het plan bespreekt, een **gemiddelde** oefening waarin meerdere teams aan meerdere aspecten werken met gescripte verrassingen, en een **complexe** oefening die activering zonder aankondiging, daadwerkelijke evacuatie en gebruik van een herstellocatie toevoegt. Het beschrijft onderhoud op een jaarlijkse of tweejaarlijkse cyclus, inclusief het testen van technische oplossingen en herstelprocedures, waarbij bevindingen terugkeren naar de analysefase. Oefeningen zijn waar plannen ontdekken dat ze fout zijn.

### Herstelniveaus

Het artikel noemt de zeven disaster-recovery-niveaus van SHARE (1992), later door IBM bijgewerkt tot acht niveaus (0 tot 7). De hier gelezen bronnen beschrijven de niveaus niet in detail. Als algemene praktijk classificeren organisaties services in niveaus naar hoe snel ze moeten worden hersteld en stemmen ze de herstelaanpak en kosten af op het niveau.

### Standaarden

Het artikel citeert ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, die de editie van 2012 verving en organisaties verplicht continuïteitsdoelstellingen, minimaal aanvaardbare serviceniveaus en een maximaal verdraagbare verstoringsperiode te definiëren. ISO 22313:2020 geeft richtlijnen voor het gebruik ervan. Dit zijn standaarden voor een managementsysteem dat een organisatie kan overnemen; ze vervangen praktische planning niet. Controleer de standaardtekst rechtstreeks als je klanten of toezichthouders conformiteit vereisen.

### Agile continuïteit

Agile en DevOps-praktijken helpen continuïteit:

- **Infrastructuur en configuratie als code** maken het mogelijk omgevingen uit versiebeheer opnieuw op te bouwen, wat herstel sneller en testbaar maakt.
- **Geautomatiseerde pipelines** kunnen services opnieuw naar een herstellocatie deployen.
- **Frequente releases** houden het team geoefend in deployen.
- **Regelmatige oefeningen** kunnen als vorm van testen in de backlog worden behandeld.

Ze scheppen ook risico's: zware afhankelijkheid van één cloudaccount, een CI-systeem dat zelf een single point of failure is en geheimen die worden bewaard waar ze bij een ramp niet bereikbaar zijn. Plan voor de tools waarvan het herstel zelf afhangt.

### Menselijke factoren

Het artikel noemt de SARS-uitbraak van 2002-2003 als voorbeeld van gecompartimenteerde en geroteerde teams, wat een herinnering is dat continuïteit mensen omvat: belangrijke vaardigheden gespreid over individuen, thuiswerken, communicatie wanneer de normale kanalen uitvallen en zorg voor personeel onder stress.

### Grenzen van de bronnen

Het artikel geeft geen methode om doelstellingen te stellen, geen richtlijnen over hoe vaak te testen buiten de jaarlijkse of tweejaarlijkse onderhoudscyclus en geen toolaanbevelingen. Het is een algemeen bedrijfsartikel, geen IT-artikel. Gebruik voor technisch hersteldetail de documentatie van je eigen platforms en de vaardigheden van de gids over disaster-recovery-planning en -testen.

## Goede praktijken

1. **Begin met een business impact analysis.** Identificeer de services die de organisatie niet kan missen, de kosten van hun verlies in de tijd en waarvan ze afhangen. Doe het met de zakelijke eigenaren, niet voor hen.
2. **Stel herstelmaatstaven samen met de business vast.** Spreek voor elke kritieke service een hersteltijd en een herstelpunt af en leg de kosten vast om ze te halen. Herzie wanneer de business of de technologie verandert.
3. **Deel je services in niveaus in.** Groepeer services naar hoe snel ze terug moeten komen en pas de herstelaanpak toe die bij elk niveau past. Pas niet de duurste aanpak toe op alles.
4. **Schrijf een kort plan dat mensen kunnen gebruiken.** Vermeld hoe het plan wordt ingeroepen, wie beslist, wie wat doet, hoe te communiceren en de volgorde van herstel. Houd het bij een paar pagina's met links naar runbooks.
5. **Houd plannen bij de code en de omgeving.** Bewaar herstelscripts, configuratie en runbooks in versiebeheer en review ze wanneer services veranderen. Een plan dat niet met het systeem wordt bijgewerkt, zal falen.
6. **Plan voor de tools waarvan herstel afhangt.** Zorg dat toegang tot de pipeline, de geheimen, de documentatie en de communicatietools het verlies overleeft van de systemen die ze ondersteunen.
7. **Oefen regelmatig.** Begin met tabletopgesprekken, ga naar technische tests van restores en failovers en voer grotere oefeningen uit voor de meest kritieke services. Plan ze als ander werk.
8. **Test restores, niet alleen back-ups.** Een back-up wordt bewezen door ervan te herstellen. Test dat gegevens terugkomen, binnen het herstelpunt, en dat de service ermee werkt (zie de vaardigheid voor disaster-recovery-testen hieronder).
9. **Behandel bevindingen als backlogitems.** Elke oefening levert gaten op. Leg ze met eigenaren en data vast en controleer dat ze zijn afgehandeld vóór de volgende oefening.
10. **Plan communicatie.** Beslis wie klanten, personeel, toezichthouders en het publiek wat vertelt en bereid sjablonen voor. Neem out-of-band manieren op om mensen te bereiken als normale kanalen uitvallen (zie de crisiscommunicatievaardigheid hieronder).
11. **Betrek leveranciers.** Vraag kritieke leveranciers naar hun eigen continuïteitsregelingen en betrek ze waar mogelijk bij oefeningen (zie Onderwerp 3.14 — Leveranciersmanagement).
12. **Review jaarlijks, en na elk ernstig incident of grote wijziging.** Werk de analyse, de doelstellingen en de plannen bij wanneer de business of technologie verandert, niet alleen volgens de kalender.

## Vragen om met je team te bespreken

**Welke van onze services moeten het eerst terugkomen en hoe weten we dat?**

Vraag iedereen de services te rangschikken naar herstelprioriteit. Vergelijk. Onenigheid is informatief: het toont dat de volgorde nooit met de business is afgesproken. De facilitator kan vragen wat het de organisatie zou kosten als elk een uur, een dag en een week plat lag. Neem de vraag mee naar de zakelijke eigenaren en spreek een lijst af.

**Hoeveel gegevens kunnen we verliezen en heeft iemand daarmee ingestemd?**

Vraag wanneer de laatste back-up van de belangrijkste gegevens is gemaakt en hoe vaak. Vergelijk met wat de business zou tolereren. Veel teams vinden dat het antwoord niet is wat ze aannamen. Bespreek wat een strenger herstelpunt zou kosten. Leg de beslissing vast en wie haar nam.

**Wanneer hebben we voor het laatst van een back-up hersteld en wat gebeurde er?**

Vraag om een echte datum en een echt resultaat. Als het antwoord "nooit" is, is dat de belangrijkste bevinding. Als het is gedaan, vraag dan wat misging en wat werd gerepareerd. Plan in de komende maand een herstelstest voor een kritieke service.

**Wat moeten we herstellen dat afhangt van wat is uitgevallen?**

Loop een scenario door zoals het verlies van een cloudaccount of een datacenter. Vraag waar de runbooks, geheimen en pipeline leven. Afhankelijkheden van het uitgevallen systeem zijn gebruikelijk, zoals een runbook dat is opgeslagen op een server die plat ligt. Maak er een lijst van en plan elk te verplaatsen of te kopiëren.

**Wie heeft de bevoegdheid een ramp uit te roepen en het plan te starten?**

Vraag mensen wie zou beslissen en of ze het weten. Vertraging bij het inroepen van een plan kost tijd. Bespreek een duidelijke regel en een vervanger. Controleer hoe de persoon wordt bereikt als de gebruikelijke kanalen uitvallen.

**Wat zouden we doen als de mensen die het meest weten niet beschikbaar waren?**

Stel je voor dat sleutelpersoneel onbereikbaar is. Vraag wie anders het herstel kan uitvoeren en wat die nodig zou hebben. Deze vraag koppelt continuïteit aan kennismanagement. Plan één manier om kritieke kennis te spreiden.

## In de praktijk: een agile ITIL-voorbeeld

Het kadaster van een provinciale overheid draait een online service waar juristen en landmeters vastgoedtransacties indienen. Een team van twaalf bouwt en beheert haar, met één regio van één cloudaanbieder. Een business-continuity-review ontdekt dat de service door het ministerie als kritiek is geclassificeerd, met de verwachting dat ze binnen vier uur kan worden hersteld, en dat niemand ooit heeft getest of dit mogelijk is.

Het team begint met een tabletop-oefening. Het scenario: de cloudregio is een dag onbeschikbaar. Ze ontdekken dat de runbooks staan in een wiki die in dezelfde regio wordt gehost, dat de infrastructuurcode maar een deel van de omgeving dekt en dat de databaseback-ups naar dezelfde regio worden gekopieerd. De verwachting van vier uur van het ministerie blijkt jaren geleden door een manager te zijn geschreven en nooit te zijn doorgerekend. Het team en de zakelijke eigenaar van het ministerie ontmoeten elkaar. De eigenaar legt uit wat een storing van een dag voor indieningsdeadlines zou betekenen en stemt ermee in dat vier uur nodig is op indieningsdagen aan het einde van de maand maar acht uur acceptabel is op andere momenten.

Het team kopieert runbooks en back-ups naar een tweede regio, maakt de infrastructuurcode compleet en bouwt de omgeving in een oefening van een dag opnieuw op uit code in een testregio. De eerste poging duurt elf uur, vooral door handmatige stappen en een ontbrekend geheim. Na reparaties duurt een tweede poging vijf. Er blijven problemen. Het doel van vier uur aan het einde van de maand is nog buiten bereik, de identiteitsaanbieder waarmee medewerkers inloggen heeft geen eigen herstelregeling en het team beseft dat het afhangt van een leverancier wier continuïteitsplan het nooit heeft gezien. Het team zet de identiteitsaanbieder en de leveranciersvraag op de backlog en het ministerie stemt in met een langere hersteltijd voor niet-piekperiodes terwijl het werk doorgaat.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams maken herstel mogelijk of onmogelijk door ontwerp. Bouw services zo dat ze uit code kunnen worden herbouwd, houd gegevens gerepliceerd en schrijf herstelstappen als onderdeel van klaar. Neem deel aan oefeningen en repareer de gaten die ze vinden.

### Service- en beheerteams

Beheerteams houden de plannen en voeren de oefeningen uit. Houd plannen kort en aan runbooks gekoppeld, test restores en failovers en maak de afhankelijkheden van herstel zichtbaar. Volg de bevindingen van elke oefening tot ze zijn gesloten.

### Leiderschap en governance

Leiders stellen de doelstellingen en betalen ervoor. Vraag om de business impact analysis en de herstelmaatstaven, begrijp wat ze kosten en woon een oefening bij. Accepteer dat sommige services langer nodig hebben om te herstellen en neem de beslissing bewust.

### Klanten en gebruikers

Klanten en gebruikers zijn ervan afhankelijk dat de service doorgaat of terugkeert. Vertel de verlener hoe lang je haar kunt missen en welke gegevens je niet mag verliezen. Vraag naar hun continuïteitsregelingen en wat je bij een ramp moet doen, zoals een alternatieve manier om dringend werk in te dienen.

## Veelvoorkomende faalpatronen

- **Een plan dat niemand heeft getest.** De eerste test is de ramp. Begin in plaats daarvan met tabletop-oefeningen en ga door naar technische restores.
- **Doelstellingen die niemand afsprak.** De hersteltijd werd geschreven door iemand die vertrok. Stel in plaats daarvan hersteltijd en -punt vast met zakelijke eigenaren en leg de kosten vast.
- **Back-ups nooit hersteld.** Back-ups bestaan maar herstel faalt. Test in plaats daarvan restores volgens schema en meet de tijd.
- **Herstel hangt af van wat uitviel.** Runbooks, geheimen en tools zitten in het uitgevallen systeem. Breng in plaats daarvan de afhankelijkheden van herstel in kaart en bewaar kopieën elders.
- **Eén niveau voor alles.** Alle services krijgen de duurste behandeling, of geen. Deel services in plaats daarvan in niveaus in naar behoefte.
- **Verouderde plannen.** Systemen veranderen en plannen niet. Houd plannen in plaats daarvan bij de code en review ze wanneer services veranderen.
- **Mensen negeren.** Plannen nemen aan dat het gebruikelijke personeel beschikbaar is. Plan in plaats daarvan voor afwezigheid en voor communicatie wanneer kanalen uitvallen.
- **Leveranciers negeren.** Kritieke afhankelijkheden hebben geen continuïteitsregelingen. Vraag in plaats daarvan leveranciers en betrek ze bij oefeningen.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Impactanalyse en doelstellingen | Kritieke services worden aangenomen | Sommige services hebben ruwe herstelmaatstaven | Kritieke services hebben afgesproken hersteltijd en -punt, met kosten | Doelstellingen worden aan oefenresultaten en bedrijfsverandering getoetst | Doelstellingen zijn afgestemd met klanten, leveranciers en toezichthouders |
| Plannen en herstelontwerp | Herstel wordt geïmproviseerd | Sommige services hebben herstelnotities | Plannen en herstelcode bestaan voor kritieke services en worden bij het systeem bewaard | Actualiteit van plannen en hersteltijd worden gemeten en verbeterd | Herstel wordt over services, teams en leveranciers gecoördineerd |
| Oefeningen en testen | Weinig of geen testen | Sommige restores worden getest | Tabletop- en technische tests gebeuren volgens schema | Bevindingen worden tot sluiting gevolgd en tests worden op risico afgestemd | Oefeningen omvatten leveranciers en beslaan organisaties |
| Communicatie en mensen | Communicatie is ad hoc | Er bestaan enkele contactlijsten | Plannen dekken wie wie vertelt, met out-of-band-routes en vervangers | Communicatie- en bezettingsgaten worden gemeten en gedicht | Communicatie wordt met klanten, leveranciers en toezichthouders geoefend |

## Checklist

- [ ] We hebben onze kritieke services met zakelijke eigenaren geïdentificeerd.
- [ ] Elke kritieke service heeft een afgesproken hersteltijd en herstelpunt, met bekende kosten.
- [ ] Services zijn gegroepeerd in niveaus die bij hun herstelbehoeften passen.
- [ ] Er bestaat een kort herstelplan, met wie het kan inroepen en hoe ze te bereiken zijn.
- [ ] Herstelcode, configuratie en runbooks staan in versiebeheer en worden met wijzigingen gereviewd.
- [ ] Runbooks, geheimen en tools die voor herstel nodig zijn, overleven het verlies van de primaire omgeving.
- [ ] Een restore uit een back-up is het afgelopen jaar voor elke kritieke service getest.
- [ ] Het afgelopen jaar is een tabletop-oefening gehouden en de bevindingen worden gevolgd.
- [ ] Er bestaan communicatiesjablonen en out-of-band-routes.
- [ ] Kritieke leveranciers zijn naar hun eigen continuïteitsregelingen gevraagd.

## AI-prompts

**Doel: de vragen voor een business impact analysis opstellen.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een tabletop-oefening plannen.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: oefennotities omzetten in een gatenlijst.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Doel: een kort herstelplanoverzicht voor één service schrijven.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): gebruik dit om het plan op organisatieniveau te schrijven om kritieke functies draaiende te houden.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): gebruik dit om technisch herstel van IT-services te plannen.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): gebruik dit om restore- en failovertests te ontwerpen.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): gebruik dit om te plannen wat je klanten, personeel en het publiek tijdens een verstoring vertelt.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om continuïteitsrisico's en hun beheersing vast te leggen.

## Belangrijkste bronnen

- **Business continuity planning** (Wikipedia): definities van continuïteit, business impact analysis, herstelmaatstaven, oefeningen en standaarden.
- **ISO 22301** (International Organization for Standardization): de eisenstandaard voor business-continuity-managementsystemen; lees de standaard voor conformiteitsclaims.
- **Incident management** (Wikipedia): het overzicht over meerdere vakgebieden dat continuïteit naast incidentrespons plaatst.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): de economie van betrouwbaarheid die herstelmaatstaven omkadert.

## Referenties

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
