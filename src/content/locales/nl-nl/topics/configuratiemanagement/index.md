# Configuratiemanagement

**Configuratiemanagement houdt een juist, bruikbaar beeld bij van de onderdelen van een service en hoe ze samenhangen, en haar moderne vorm is een vastlegging die uit code en discovery wordt opgebouwd en wordt vertrouwd omdat het systeem zelf haar actueel houdt.**

## Waarom dit ertoe doet

Wanneer iets kapotgaat, zijn de eerste vragen altijd dezelfde. Wat is dit onderdeel? Waarmee is het verbonden? Wat is er veranderd? Wie bezit het? Als het een uur duurt de antwoorden te vinden, sleept een incident dat in minuten had kunnen worden opgelost zich voort. Wanneer een wijziging wordt gepland, bepalen dezelfde vragen of je het risico begrijpt. Een goed beeld van de service en haar onderdelen is een van de nuttigste dingen die een beheerteam kan hebben.

Het is ook een van de moeilijkste om waar te houden. Documenten van de infrastructuur, eenmaal getekend, zijn binnen weken verouderd. Databases van componenten, met de hand onderhouden, zijn onjuist op manieren die niemand kan zien. Agile en cloudwerkwijzen maken dit in één opzicht erger, met veel kleine, snel veranderende onderdelen, en in een ander beter, omdat configuratie als code kan worden geschreven, in versiebeheer opgeslagen en automatisch toegepast.

Het artikel over configuratiemanagement op de Engelstalige Wikipedia beschrijft het als een managementproces om consistentie tussen de eigenschappen van een product en zijn eisen, ontwerp en operationele informatie gedurende zijn levensduur tot stand te brengen en te onderhouden, met wortels bij het Amerikaanse ministerie van Defensie in de jaren vijftig. Het artikel over configuratiemanagementdatabases beschrijft de ITIL-term voor de opslag van configuratie-items en hun relaties. Het artikel over infrastructure as code beschrijft het beheren van resources via machineleesbare definitiebestanden. Samen geven ze het traditionele beeld en het moderne, en dit onderwerp verbindt ze.

## Kernconcepten

### Configuratiemanagement in het algemeen

Volgens Wikipedia wordt configuratiemanagement (CM) gebruikt in militaire systemen, in IT-servicemanagement onder ITIL en in de civiele techniek. De geschiedenis begint bij het Amerikaanse ministerie van Defensie in de jaren vijftig als technische discipline voor hardware, waarbij militaire standaarden eind jaren zestig en zeventig het tot een eigen discipline maakten. Het artikel noemt meerdere standaarden, waaronder ANSI/EIA-649, ISO 10007 (editie 2017) en IEEE 828-2012. De kerndisciplines die het uit militaire handboeken en de EIA-standaard noemt, zijn:

| Discipline | Wat ze doet |
|---|---|
| **Planning en management** | Een plan voor mensen, training, naamgevingsconventies, audits en leveranciersvereisten |
| **Configuratie-identificatie** | Baselines vaststellen en onderhouden die architectuur en componenten definiëren; de gevolgde producten zijn **configuratie-items (CI's)** |
| **Configuratiebeheersing** | Wijzigingsverzoeken beoordelen en goedkeuren of afwijzen |
| **Configuratiestatusadministratie** | CI-beschrijvingen en afwijkingen van de baseline vastleggen en rapporteren |
| **Verificatie en audit** | Onafhankelijke controles dat het systeem overeenkomt met zijn documentatie en eisen |

Een **baseline** is een afgesproken referentiepunt; zodra een eigenschap is gebaselined, gaan wijzigingen door formele beheersing, worden ze beoordeeld, goedgekeurd en daarna opnieuw gebaselined. Het artikel onderscheidt configuratiemanagement van assetmanagement, dat zich richt op financiële administratie en de waarde van IT-assets (zie Onderwerp 4.1 — IT-assetmanagement).

### Softwareconfiguratiemanagement

Het artikel beschrijft softwareconfiguratiemanagement als het identificeren van software-eigenschappen op verschillende punten en het beheersen van wijzigingen om integriteit en traceerbaarheid te handhaven, met dezelfde vier procedures van identificatie, beheersing, statusadministratie en audits. Versiebeheersystemen, buildtools en releasevastleggingen zijn moderne voorbeelden.

### De configuratiemanagementdatabase

Wikipedia beschrijft een **configuration management database (CMDB)** als een ITIL-term voor een database die informatie bewaart over de hardware- en softwareassets van een organisatie, de CI's, en de relaties daartussen. Ze "vertegenwoordigt de geautoriseerde configuratie van de belangrijke componenten van de IT-omgeving." Kernpunten uit het artikel:

- **CI's hebben eigenschappen** zoals een identificatie, namen, beschrijvingen, eigenaarschap en belang, die in de honderden kunnen lopen.
- **Relaties** verbinden gewoonlijk een bron-CI met een doel-CI. Geavanceerdere relaties voegen een descriptor toe, zoals een database die een component van een applicatie is.
- **Federatie:** implementaties federeren vaak gegevens uit bronnen zoals assetmanagement, zodat elke bron de controle over zijn gegevens houdt; het artikel zet dit tegenover het kopiëren van gegevens naar de CMDB.
- **Gebruik:** impactanalyse, root cause analysis, wijzigingsmanagement, incidentmanagement, inventaris en builds.
- **CI-typen:** hardware, software, communicatie en netwerken, locatie, documentatie en mensen; volwassen organisaties voegen zakelijke typen toe zoals producten en leveranciers.
- **Uitdagingen:** relevantie (gegevens verzamelen over de levenscyclus van elk CI), onderhoud (de datakwaliteit hoog houden, wat meerdere gespecialiseerde rollen vraagt) en bruikbaarheid (CMDB's zijn vaak gewone databases zonder visualisatie, zodat een extra applicatielaag nodig kan zijn).

Het artikel noemt geautomatiseerde discovery van CI's en het volgen van wijzigingen als kritieke succesfactoren. Het noemt geen oprichtingsdatum, geen specifieke ITIL-versie en geen adoptiegegevens, en is gemarkeerd als meer bronvermeldingen nodig hebbend. Het zegt ook dat ITIL het proces in ITIL versie 3 Service Asset and Configuration Management noemde (dit komt uit het artikel over configuratiemanagement).

### Infrastructure as code

Het artikel over infrastructure as code beschrijft de praktijk om datacenterresources te beheren en te provisioneren via machineleesbare definitiebestanden, in plaats van handmatige installatie of interactieve tools, met definities in versiebeheer. Het onderscheidt:

- **Declaratieve** benaderingen, die de gewenste eindtoestand beschrijven en het systeem de stappen laten uitzoeken, en **imperatieve** benaderingen, die opdrachten in volgorde specificeren. Het artikel zegt dat IaC vaker declaratieve definities gebruikt.
- **Push**-methoden, waarbij een beheersysteem instructies naar servers stuurt, en **pull**-methoden, waarbij servers hun eigen instructies ophalen.

Het noemt veel tools van CFEngine (1993) tot Terraform, Ansible, Puppet, Chef, Pulumi en OpenTofu, en relateert de praktijk aan DevOps door ontwikkelaars bij configuratie te betrekken en beheer eerder binnen te halen. De beweerde voordelen, op kosten, snelheid en minder menselijke fouten, zijn getagd als bronvermeldingen nodig hebbend. Het citeert een rapport van Unit 42 uit 2020 dat ongeveer 200.000 mogelijke kwetsbaarheden in IaC-sjablonen vond, een herinnering dat ook code gebreken kan bevatten. Het artikel noemt configuratiedrift of idempotentie niet.

### Gedeclareerde en ontdekte configuratie

Een nuttige manier om over moderne configuratiemanagement na te denken is dat er twee bronnen van waarheid zijn en dat de waarde in het vergelijken ervan ligt:

| Bron | Wat ze zegt | Kracht | Zwakte |
|---|---|---|---|
| **Gedeclareerd** (code, definities in versiebeheer) | Wat we willen dat het systeem is | Reviewbaar, geversioneerd, herhaalbaar | Komt mogelijk niet overeen met wat draait |
| **Ontdekt** (scans, cloud-API's, agents) | Wat nu bestaat | Weerspiegelt de werkelijkheid | Zegt niet wat bedoeld is of waarom |

Een CMDB die uit beide wordt gevoed, kan **drift** tonen, het verschil tussen bedoelde en werkelijke toestand. De voor deze gids gelezen bronnen gebruiken het woord niet, maar het benoemt het probleem dat de CM-disciplines statusadministratie en audit moeten vangen.

### Configuratiemanagement en wijziging

Configuratiebeheersing en change enablement zijn nauwe partners (zie Onderwerp 3.4 — Change enablement). De CM-disciplines zeggen dat wijzigingen aan gebaselinede items worden beoordeeld en goedgekeurd. In een op pipelines gebaseerde opzet wordt een wijziging in de code die de infrastructuur definieert gereviewd en getest als elke andere, en de vastlegging van de pipeline toont wie wat wanneer wijzigde. De CMDB of haar equivalent weerspiegelt dan het resultaat.

### Gebruik in servicemanagement

De relaties die in de configuratiegegevens zijn vastgelegd beantwoorden vragen over de andere praktijken heen:

- **Incidenten:** wat hangt af van dit uitvallende onderdeel en wie bezit het (zie Onderwerp 3.2 — Incidentmanagement)?
- **Problemen:** welke componenten waren betrokken bij terugkerende incidenten (zie Onderwerp 3.3 — Probleemmanagement)?
- **Wijzigingen:** wat is de blast radius van deze wijziging?
- **Continuïteit:** wat moet worden hersteld en in welke volgorde (zie Onderwerp 3.12 — Servicecontinuïteitsmanagement)?
- **Beveiliging:** wat is blootgesteld en wat is veranderd?

### Grenzen van de bronnen

Het artikel over configuratiemanagement is gemarkeerd als mogelijk een herschrijving nodig hebbend en zegt weinig over praktische implementatie. Het CMDB-artikel heeft geen sectie met kritiek en weinig bronvermeldingen. De ervaring in het veld is dat CMDB's vaak falen doordat ze te veel, te nauwkeurig en te lang proberen bij te houden. Behandel dat als praktijkervaring die deze gids aanbiedt, niet als bevinding uit de bronnen.

## Goede praktijken

1. **Begin bij de vragen die je moet beantwoorden.** Maak een lijst van de vragen die incidentresponders, wijzigingsreviewers en continuïteitsplanners stellen, zoals "wat hangt hiervan af?" en "wie bezit het?" Leg alleen vast wat ze beantwoordt.
2. **Definieer een kleine set configuratie-itemtypen.** Begin met services, applicaties, hosts of containers, databases en belangrijke externe afhankelijkheden. Voeg typen toe wanneer een vraag erom vraagt.
3. **Leg relaties vast, niet alleen items.** Leg vast welke items van welke afhangen en welke service ze ondersteunen. Relaties maken de gegevens nuttig voor impactanalyse.
4. **Benoem een eigenaar voor elk item.** Een item zonder eigenaar is een risico. Maak eigenaarschap onderdeel van hoe items worden aangemaakt.
5. **Houd de bedoelde configuratie in versiebeheer.** Druk infrastructuur en configuratie uit als code, review haar als andere code en laat de pipeline haar toepassen. De repository is dan een vastlegging van intentie en geschiedenis.
6. **Gebruik discovery om de werkelijkheid te vinden.** Scan netwerken en cloudaccounts om te zien wat bestaat en vergelijk het met de gedeclareerde configuratie. Onderzoek verschillen (drift) in plaats van ze te negeren.
7. **Federeer in plaats van te kopiëren waar je kunt.** Laat elke gegevensbron (assetregister, cloudaccounts, deploymenttools) zijn feiten bezitten en link ernaar vanuit de configuratiegegevens, zoals het CMDB-artikel beschrijft.
8. **Automatiseer updates.** Voed de configuratiegegevens vanuit de pipeline en vanuit discovery zodat ze veranderen naarmate het systeem verandert. Handmatige updates raken achterop.
9. **Baseline wat ertoe doet.** Leg voor kritieke services de goedgekeurde configuratie vast en pas formele wijzigingsbeheersing toe op afwijkingen. Voor de rest volstaat lichtere beheersing.
10. **Audit regelmatig.** Vergelijk elk kwartaal de gegevens met de werkelijkheid voor een steekproef van items en repareer het proces achter elk verschil. Dit is de discipline verificatie en audit in de praktijk.
11. **Maak de gegevens makkelijk bruikbaar.** Bied visualisatie en zoeken voor responders en planners, want gegevens die niet snel kunnen worden gelezen, worden niet gebruikt.
12. **Houd beveiliging in beeld.** Behandel configuratiecode als gevoelig, scan sjablonen op zwaktes en beheers wie de baseline kan wijzigen. Het cijfer van Unit 42 in het artikel over infrastructure as code is een herinnering aan het risico.

## Vragen om met je team te bespreken

**Wanneer een incident optreedt, hoe lang duurt het voordat we weten wat afhangt van het uitvallende onderdeel?**

Kijk naar het laatste incident en de tijd die aan deze vraag werd besteed. Vraag waar het antwoord vandaan kwam: een diagram, een persoon, een zoekopdracht. De facilitator kan vragen wat de meeste tijd had bespaard. Vaak is het een lijst van afhankelijkheden en eigenaren voor de belangrijkste services. Spreek af er een voor één service te maken.

**Waar is onze infrastructuur gedefinieerd en komt dat overeen met wat draait?**

Vraag of de belangrijkste omgevingen uit code worden gebouwd en hoe vaak iemand ze met de hand wijzigt. Zoek verschillen. Als je het niet weet, plan dan een vergelijking voor één omgeving. Bespreek hoe handmatige wijzigingen te voorkomen of snel te detecteren.

**Welke items in onze configuratievastleggingen hebben geen eigenaar of zijn de laatste tijd niet bevestigd?**

Neem een steekproef en tel. Vraag waarom ze in die staat zijn: geen proces voor eigenaren, geen herinnering, geen gevolg. Bespreek een licht mechanisme, zoals een jaarlijkse bevestiging of een bij aanmaak verplichte eigenaartag. Kies er een.

**Welke gegevens houden we bij die niemand gebruikt?**

Maak een lijst van de velden en recordtypen en vraag wie ze het afgelopen kwartaal gebruikte. Het CMDB-artikel noemt onderhoud een kernuitdaging, en ongebruikte gegevens zijn een kostenpost zonder voordeel. Verwijder of stop met onderhouden wat niemand gebruikt.

**Wat zouden we moeten zien om een wijziging aan een kritieke service met vertrouwen goed te keuren?**

Vraag de reviewers. Typische antwoorden: wat de wijziging raakt, wat ervan afhangt, wat ze de vorige keer deed. Vraag welke daarvan de configuratiegegevens kunnen geven. Kies één ontbrekend stuk om toe te voegen.

**Wie mag de baseline van onze kritieke services wijzigen en hoe weten we wanneer ze dat doen?**

Vraag om de lijst en om het bewijs van wijzigingen. Bespreek of wijzigingen buiten de pipeline worden gedetecteerd. Spreek af hoe drift wordt gevonden en wie handelt.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale belastingdienst draait 120 applicaties en een mix van eigen servers en cloudservices. Een team van zes beheerengineers onderhoudt een CMDB die drie jaar geleden uit een spreadsheet is geladen. Tijdens een groot incident op het aangifteportaal ontdekken de engineers dat de CMDB een databaseserver vermeldt die een jaar eerder was uitgefaseerd en de load balancer weglaat die daadwerkelijk uitviel. Het incident duurt drie uur langer om op te lossen omdat het zo lang duurt uit te zoeken waarvan het portaal afhangt.

Het hoofd beheer en een engineer reviewen welke vragen de responders stellen. Ze beperken de reikwijdte van de CMDB tot services, applicaties, de belangrijkste infrastructuurcomponenten erachter en belangrijke externe afhankelijkheden, en laten typen met lage waarde vallen. De infrastructuur voor het aangifteportaal wordt in code in versiebeheer gezet en de pipeline schrijft een vastlegging van elk gedeployed onderdeel naar de CMDB. Een discoveryscan van het netwerk en de cloudaccounts draait elke nacht en een rapport somt verschillen op tussen de gedeclareerde en ontdekte gegevens. Elk item heeft een eigenaarveld, dat het rapport ook controleert. Een eenvoudig afhankelijkheidsbeeld voor het aangifteportaal wordt uit de gegevens opgebouwd.

Een kwartaal later is het afhankelijkheidsbeeld van het portaal nauwkeurig genoeg dat het volgende incidentteam het in de eerste tien minuten gebruikt. Het nachtelijke verschilrapport vindt 14 onbeheerde servers, waarvan de meeste zijn uitgefaseerd of door eigenaren worden opgeëist. Er blijven problemen. Services buiten het aangifteportaal vertrouwen nog op de oude gegevens en één team blijft handmatige wijzigingen aan een databaseserver doen die de pipeline dan overschrijft, wat een korte storing veroorzaakt. Het hoofd beheer breidt de aanpak uit naar de volgende drie services, voegt een regel toe dat productiewijzigingen via de pipeline gaan en vraagt het discoveryrapport handmatige wijzigingen te markeren.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams definiëren configuratie via code. Zet infrastructuur en instellingen in versiebeheer, review ze en laat de pipeline ze toepassen. Tag resources met eigenaar en service en beschrijf afhankelijkheden in de repository of het servicerecord.

### Service- en beheerteams

Beheerteams gebruiken en onderhouden de configuratiegegevens. Houd de reikwijdte klein, vergelijk gedeclareerde en ontdekte configuratie en jaag op drift. Voed wat je uit incidenten leert terug in de typen en relaties die je vastlegt.

### Leiderschap en governance

Leiders bepalen hoeveel inspanning configuratiegegevens verdienen. Vraag welke beslissingen ze ondersteunen, zoals impactanalyse en continuïteitsplanning, en oordeel op gebruik. Vermijd het financieren van een enorme database omwille van zichzelf. Steun de pipelinebeheersing die vastleggingen juist houdt.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer incidenten sneller worden opgelost en wijzigingen minder breken, wat goede configuratiegegevens helpen bereiken. Ze zien de gegevens zelden. Vraag verleners hoe ze weten wat een wijziging raakt en hoe ze de oorzaak van een storing vinden.

## Veelvoorkomende faalpatronen

- **Alles proberen vast te leggen.** De gegevens zijn te groot om waar te houden. Begin in plaats daarvan bij de vragen en de kritieke services.
- **Handmatig onderhoud.** Vastleggingen raken achterop. Voed in plaats daarvan gegevens vanuit de pipeline en vanuit discovery.
- **Geen relaties.** Items staan op een lijst maar zijn niet verbonden. Leg in plaats daarvan afhankelijkheden vast en de service die elk item ondersteunt.
- **Geen eigenaren.** Niemand bevestigt of repareert vastleggingen. Eis in plaats daarvan een eigenaar en controleer regelmatig.
- **Handwijzigingen buiten de pipeline.** Werkelijkheid en intentie drijven uiteen. Stuur in plaats daarvan wijzigingen via de pipeline en detecteer drift.
- **Onleesbare gegevens.** Responders kunnen de database niet gebruiken. Bied in plaats daarvan zoeken en visualisatie.
- **Kopiëren in plaats van federeren.** Gedupliceerde gegevens verouderen. Link in plaats daarvan naar de bron die de feiten bezit.
- **Configuratiecode als onschuldig behandelen.** Sjablonen bevatten kwetsbaarheden. Scan en review ze in plaats daarvan.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Reikwijdte en relaties | Componenten zijn informeel bekend | Sommige services hebben componentenlijsten | Belangrijke services hebben items, eigenaren en afhankelijkheden vastgelegd | Dekking en juistheid worden gemeten en gaten gedicht | Configuratiegegevens omvatten teams, clouds en leveranciers |
| Gedeclareerde configuratie | Systemen worden met de hand geconfigureerd | Sommige omgevingen gebruiken code | Infrastructuur en configuratie voor belangrijke services zijn code in versiebeheer | Wijzigingsgeschiedenis en drift worden gevolgd | Configuratiecode wordt over teams gedeeld en hergebruikt |
| Discovery en verificatie | De werkelijkheid wordt aangenomen | Af en toe worden scans uitgevoerd | Regelmatige discovery wordt met gedeclareerde gegevens vergeleken | Verschillen en hun oorzaken worden gemeten en verminderd | Discovery en verificatie zijn over de organisatie geautomatiseerd |
| Gebruik van de gegevens | Gegevens worden zelden geraadpleegd | Gebruikt bij sommige incidenten | Routinematig gebruikt voor incidenten, wijzigingen en continuïteitsplanning | Gebruik en voordeel worden gemeten en de gegevens verbeterd | Gegevens ondersteunen beslissingen over de organisatie en met partners |

## Checklist

- [ ] We hebben de vragen op een lijst gezet die onze responders en reviewers met configuratiegegevens moeten kunnen beantwoorden.
- [ ] We leggen een kleine set itemtypen vast met eigenaren en relaties.
- [ ] Infrastructuur en configuratie voor belangrijke services staan in versiebeheer.
- [ ] Productiewijzigingen aan die services gaan via de pipeline.
- [ ] Discoveryresultaten worden volgens schema met gedeclareerde configuratie vergeleken.
- [ ] Verschillen (drift) worden onderzocht en gerepareerd.
- [ ] Vastleggingen worden waar mogelijk automatisch vanuit de pipeline en discovery gevoed.
- [ ] Een steekproef van vastleggingen wordt elk kwartaal tegen de werkelijkheid geaudit.
- [ ] De gegevens kunnen door responders makkelijk worden doorzocht en gevisualiseerd.
- [ ] Configuratiecode wordt gereviewd en op zwaktes gescand.

## AI-prompts

**Doel: beslissen wat vast te leggen door de vragen te noemen die je moet beantwoorden.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: drift tussen gedeclareerde en ontdekte configuratie samenvatten.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Doel: een afhankelijkheidsbeeld voor één service opbouwen.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een kwartaalaudit van configuratievastleggingen plannen.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [configuration-management](../../../../skills/configuration-management/SKILL.md): gebruik dit om te plannen wat vast te leggen, hoe het waar te houden en hoe het te gebruiken.
- [change-request](../../../../skills/change-request/SKILL.md): gebruik dit om wijzigingsrecords te schrijven die naar de getroffen items verwijzen.
- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om configuratiekennis om te zetten in stappen die responders kunnen volgen.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): gebruik dit om services, applicaties en infrastructuur in een architectuurbeeld te plaatsen.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): gebruik dit om configuratie en ontwerp in de loop van de tijd veilig te laten veranderen.

## Belangrijkste bronnen

- **Configuration management** (Wikipedia): de geschiedenis, kerndisciplines, baselines en standaarden van configuratiemanagement.
- **Configuration management database** (Wikipedia): de definitie, inhoud, het gebruik en de uitdagingen van een CMDB.
- **Infrastructure as code** (Wikipedia): resources beheren via machineleesbare definities, met een lijst van tools en aantekeningen over voordelen en risico's.
- **ITIL** (Wikipedia): het raamwerk waarin de CMDB en configuratiemanagement voorkomen.

## Referenties

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
