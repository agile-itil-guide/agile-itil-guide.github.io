# Servicecatalogusmanagement

**Een servicecatalogus (ITIL spelt het "service catalogue") is een samengestelde lijst van wat een organisatie aanbiedt, met een eigenaar en een heldere beschrijving per service, en haar waarde hangt af van of gebruikers haar nuttig vinden en de eigenaren haar waar houden.**

## Waarom dit ertoe doet

Vraag een gebruiker wat IT aanbiedt en je krijgt vaak een vaag antwoord. Vraag het IT-team en je krijgt een lijst van systemen. De twee lijsten komen zelden overeen en de kloof veroorzaakt misverstanden: gebruikers vragen om dingen die niet bestaan, teams ondersteunen services die niemand gebruikt en niemand kan zeggen wie waarvoor verantwoordelijk is. Een servicecatalogus dicht die kloof door op één plek en in gewone taal te vermelden wat wordt aangeboden en wie erachter staat.

Voor agile teams is de catalogus ook een manier om eigenaarschap zichtbaar te maken. Een team dat een service bouwt en beheert, moet kunnen zeggen: "dit bieden we aan, dit is wie je kunt vragen, dit kun je verwachten." Zonder dat komen verzoeken op de verkeerde plek aan, kaatsen incidenten tussen teams heen en weer en kunnen nieuwe medewerkers geen hulp vinden.

Het [Wikipedia-artikel over servicecatalogi](https://en.wikipedia.org/wiki/Service_catalog) beschrijft een servicecatalogus als een georganiseerde en samengestelde verzameling van zakelijke en informatietechnologische services binnen een onderneming, die dient als kennismanagementhulpmiddel dat voor elke vermelde service vakspecialisten aanwijst. Het merkt op dat het deel Service Design van ITIL een IT-servicecatalogus definieert als een uitputtende lijst van uitsluitend IT-services en als het enige deel van de serviceportfolio dat aan klanten wordt gepubliceerd, zonder de ITIL-editie te specificeren. Dit onderwerp bouwt op die beschrijving en op de andere onderwerpen van de gids en houdt de catalogus praktisch en licht.

## Kernconcepten

### Wat er in een catalogus staat

Volgens Wikipedia bevat elk item in een servicecatalogus doorgaans een benoemde eigenaar, een beschrijving, een categorie, verwante verzoektypen, onderliggende services, rechten, kosten, hoe de service wordt aangevraagd en vervuld en escalatiecontacten. Gangbare categorieën zijn IT, beheer en vervulling. Je hebt niet alle daarvan nodig voor elke service. Een goede catalogus begint met de weinige die gebruikers en supportmedewerkers werkelijk nodig hebben.

| Veld | Waarom het helpt | Wie het gebruikt |
|---|---|---|
| **Naam en beschrijving in gewone woorden** | Gebruikers herkennen wat wordt aangeboden | Gebruikers, servicedesk |
| **Eigenaar** | Iemand staat in voor de service | Iedereen |
| **Wie het mag gebruiken (recht)** | Voorkomt verspilde verzoeken | Gebruikers, servicedesk |
| **Hoe aan te vragen of hulp te krijgen** | Brengt gebruikers naar de juiste plek | Gebruikers, servicedesk |
| **Waarvan het afhangt (onderliggende services)** | Toont wat er nog meer moet werken | Beheer, leveringsteams |
| **Kosten, indien in rekening gebracht** | Ondersteunt beslissingen en budgetten | Klanten, financiën |
| **Serviceniveau of verwachting** | Schept verwachtingen | Gebruikers, klanten (zie Onderwerp 3.7 — Servicelevelmanagement) |
| **Escalatiecontact** | Versnelt hulp bij problemen | Servicedesk, beheer |

### Catalogus en portfolio

Het Wikipedia-artikel plaatst de IT-servicecatalogus als deelverzameling van de bredere ondernemingscatalogus. In ITIL-vocabulaire is de serviceportfolio de complete set van services, inclusief die in ontwikkeling en die worden uitgefaseerd, en is de catalogus het deel dat aan klanten wordt gepubliceerd. De hier gelezen bronnen definiëren de portfolio niet in detail: het artikel over serviceportfoliomanagement verwijst door naar IT-portfoliomanagement, dat alleen zegt dat ITIL v3 een praktijk voor serviceportfoliomanagement vraagt die functioneel gelijkwaardig lijkt aan IT-portfoliomanagement. Behandel het portfolio-idee als: de catalogus is wat je nu aanbiedt en de portfolio is ook wat je bouwt en uitfaseert (zie Onderwerp 5.7 — Governance, risico en compliance voor portfoliokeuzes).

### Ondernemings- en IT-catalogi

Een ondernemingsservicecatalogus omvat services van meerdere functies, zoals human resources, facilitair en IT. Een IT-servicecatalogus is een deelverzameling. Het artikel noemt voordelen van een catalogus: services centraliseren over verspreide ondernemingen, servicegaten en redundantie identificeren, toewijzing van middelen volgen en vraag naar services, aanbod, goedkeuringstijden, leveringstijden en financiën meten. Voor cloudservices noemt het zelfprovisioning en gestandaardiseerde definities die capaciteitsplanning en inkoopprognoses helpen. Dit zijn beweringen uit het artikel, gebaseerd op zijn bronnen.

### Zakelijk beeld en technisch beeld

Veel organisaties onderscheiden wat klanten zien van wat de verlener intern nodig heeft. De hier gelezen bronnen maken dit onderscheid niet, dus behandel het als gangbare praktijk. Het **klantgerichte beeld** somt services op in de termen van de gebruiker ("E-mail en agenda"). Het **technische beeld** somt de componenten en teams erachter op ("Mailservers, spamfilter, directoryservice"). Het klantbeeld helpt gebruikers kiezen. Het technische beeld helpt beheer afhankelijkheden te begrijpen (zie Onderwerp 4.4 — Configuratiemanagement). Houd de twee gekoppeld maar gescheiden, zodat gebruikers niet met componentnamen worden geconfronteerd.

### De catalogus als kennishulpmiddel

Het Wikipedia-artikel benadrukt dat de catalogus voor elke service vakspecialisten aanwijst. Dit maakt haar tot een kaart van wie wat weet. Een catalogus die actueel wordt gehouden helpt de servicedesk contacten te routeren, helpt nieuwe medewerkers hulp te vinden en helpt incidentresponders de juiste persoon te bereiken (zie Onderwerp 3.9 — Kennismanagement).

### Catalogus en verzoeken

De catalogus bevat meestal de verzoeken die gebruikers voor elke service kunnen doen, zoals "toegang aanvragen" of "een fout melden". Een verzoekmodel beschrijft hoe elk wordt vervuld (zie Onderwerp 3.6 — Servicerequestmanagement). Niet elke service heeft verzoeken nodig en niet elk verzoek heeft een catalogusitem nodig, maar frequente verzoeken moeten makkelijk te vinden zijn.

### Actueel houden

Een catalogus veroudert snel als niemand haar bezit. Services veranderen, teams reorganiseren en beschrijvingen wijken af van de werkelijkheid. De nuttigste discipline is een reviewcyclus: elke eigenaar bevestigt zijn items volgens schema en ongebruikte services worden uitgefaseerd. Het Wikipedia-artikel bespreekt geen kritiek of grenzen, maar praktijkervaring is consistent: een catalogus die onjuist is, is erger dan geen catalogus, want ze stuurt mensen met vertrouwen naar de verkeerde plek.

### Catalogi en agile teams

Agile teams verzetten zich vaak tegen zware catalogi omdat ze bureaucratie verwachten. Een lichte catalogus is verenigbaar met agile werkwijzen. Het kan een gedeeld document of een gedeelde pagina zijn, onderhouden door de eigenaren zelf, met een paar velden per service. De toets is gebruik: raadplegen gebruikers en de desk haar werkelijk?

## Goede praktijken

1. **Som services op in de woorden van gebruikers.** Begin met gebruikers en de servicedesk te vragen hoe ze elk ding zouden noemen. Noem services naar wat gebruikers doen ("Deelnemen aan een videovergadering") en niet naar technologie ("Conferentieplatform").
2. **Geef elke service een benoemde eigenaar.** Eén persoon moet voor elke service instaan. Benoem, waar een service meerdere delen heeft, een eigenaar voor het geheel en noem de bijdragers.
3. **Begin klein.** Begin met de 10 tot 20 services waar gebruikers het vaakst naar vragen. Voeg er meer toe naarmate je leert wat nuttig is. Een korte, juiste lijst is beter dan een lange, verouderde.
4. **Neem alleen op wat mensen gebruiken.** Vraag bij elk veld wie het gebruikt en waarvoor. Verwijder velden die niemand gebruikt. Voeg een veld alleen toe wanneer iemand het nodig heeft.
5. **Link naar verzoeken en hulp.** Toon voor elke service hoe je iets aanvraagt, een fout meldt en hulp vindt. Link naar de kennisbank (zie Onderwerp 3.9 — Kennismanagement).
6. **Toon serviceverwachtingen.** Vermeld in gewone termen wat gebruikers kunnen verwachten, zoals ondersteuningsuren en typische respons. Link naar de formele overeenkomst waar er een is.
7. **Leg afhankelijkheden vast.** Noteer voor elke service de belangrijkste services en leveranciers waarvan ze afhangt. Dit helpt incidentrespons en wijzigingsplanning.
8. **Scheid het klantbeeld van het technische beeld.** Houd gebruikersgerichte beschrijvingen vrij van jargon. Link ze aan technische records waar die bestaan.
9. **Review volgens schema.** Vraag elke eigenaar zijn items minstens twee keer per jaar te bevestigen en faseer services uit die niemand gebruikt. Toon de laatste reviewdatum bij elk item.
10. **Maak haar makkelijk te vinden en te gebruiken.** Zet de catalogus waar gebruikers al kijken, zoals het intranet of het portaal. Test zoeken met echte zoekvragen.
11. **Gebruik de catalogus om gaten en overlap te vinden.** Zoek services die niemand bezit, services die elkaar dupliceren en verzoeken zonder passende service. Breng de bevindingen naar de planning (zie Onderwerp 5.5 — Product- en service-eigenaarschap).
12. **Behandel catalogusveranderingen als servicewijzigingen.** Kondig het aan de desk en getroffen gebruikers aan wanneer je een service toevoegt, wijzigt of uitfaseert, zoals bij een release.

## Vragen om met je team te bespreken

**Als een nieuwe collega vroeg wat we aanbieden, wat zouden we antwoorden en zouden we allemaal hetzelfde zeggen?**

Vraag iedereen in twee minuten de services op te sommen en vergelijk dan. Verschillen tonen hoe vaag de grenzen zijn. De facilitator kan vragen welke items gebruikers niet zouden herkennen. Gebruik de gecombineerde lijst als conceptcatalogus en markeer items waarover onenigheid is.

**Welke services hebben geen duidelijke eigenaar?**

Loop de lijst door en markeer die waarvan niemand kan zeggen wie voor de service instaat. Services zonder eigenaar veroorzaken vaak de langste vertragingen bij incidenten en verzoeken. Vraag wat een persoon tegenhoudt eigenaarschap te nemen: tijd, bevoegdheid of onduidelijke grenzen. Spreek voor elk een eigenaar of een besluit tot uitfaseren af.

**Waar vragen gebruikers om wat we niet vermelden en wat vermelden we waar niemand om vraagt?**

Vergelijk verzoekgegevens met de lijst. Verzoeken zonder passende service onthullen gaten; vermelde services zonder verzoeken onthullen kandidaten voor uitfasering. Wees voorzichtig: sommige services worden stilzwijgend gebruikt. Vraag gebruikers voordat je iets verwijdert. Kies één gat en één kandidaat om te onderzoeken.

**Wat zou een gebruiker moeten zien om de juiste service te kiezen zonder ons te bellen?**

Neem een gangbare keuze, zoals welke tool je gebruikt om bestanden te delen. Vraag welke informatie zou helpen: een korte beschrijving, voor wie het is, een vergelijking. Schrijf een item van één alinea en test het met twee gebruikers. Het doel is een catalogus die telefoontjes afweert door duidelijk te zijn.

**Hoe komen we te weten dat een service is veranderd en de catalogus verouderd is?**

Vraag wanneer de laatste review plaatsvond en wie haar deed. Bespreek triggers, zoals een reorganisatie of een grote release, en een regelmatige cyclus. Een zichtbare datum "laatst gereviewd" bij elk item helpt. Spreek de eerste reviewdatum af en wie verantwoordelijk is.

**Waarvan zijn we afhankelijk dat niet in de catalogus staat?**

Maak een lijst van de platforms en leveranciers achter je services. Vraag welke zijn opgenomen en wie ze bezit. Afhankelijkheden zonder eigenaar zijn risico's. Kies er een om aan het technische beeld toe te voegen.

## In de praktijk: een agile ITIL-voorbeeld

Een regionale gemeenteraad heeft 120 medewerkers in zijn IT-afdeling die 2.500 gemeentemedewerkers en verschillende publieke services bedienen. Medewerkers klagen dat ze niet weten wie ze om hulp moeten vragen en de servicedesk besteedt veel tijd aan het doorverwijzen van telefoontjes. De gemeente bouwde ooit een servicecatalogus met 300 items, maar die wordt zelden gebruikt en is grotendeels verouderd.

Het hoofd servicelevering besluit opnieuw te beginnen, klein. Ze vraagt de servicedesk om de 30 meest voorkomende redenen waarom mensen contact opnemen en groepeert ze in 15 services in de woorden van gebruikers: "E-mail en agenda", "Bestanden en delen", "Laptops en apparaten", "Gemeentewebsite", "Financieel systeem" enzovoort. Voor elke schrijft een benoemde eigenaar vier dingen: een beschrijving van twee zinnen, voor wie het is, hoe je hulp krijgt en wat je kunt verwachten. Afhankelijkheden worden vastgelegd in een aparte technische lijst voor beheer. De catalogus is één webpagina op het intranet van de gemeente en elk item toont de datum waarop de eigenaar het laatst bevestigde.

Na drie maanden nemen telefoontjes naar de desk over wie je moet vragen af, en de eigenaren merken gaten op: niemand bezat het boekingssysteem voor vergaderruimtes en twee services overlapten. Die worden toegewezen en samengevoegd. Er blijven problemen. Drie eigenaren hebben hun items niet bevestigd en sommige medewerkers bellen de desk nog uit gewoonte. Het hoofd servicelevering stelt een herinneringscyclus in en regelt dat de desk bellers naar de catalogus verwijst terwijl ze hun verzoek afhandelt. Ze ontdekt ook dat sommige items in technische taal zijn geschreven en vraagt een communicatiemedewerker ze te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams moeten als eigenaar worden benoemd van de services die ze bouwen en beheren en moeten hun items actueel houden. Werk de catalogus bij wanneer je een service lanceert of uitfaseert en vertel het de servicedesk. Gebruik de catalogus om te vinden met wie je over een afhankelijkheid moet praten.

### Service- en beheerteams

Beheer en de servicedesk zijn de zwaarste gebruikers. Vertel eigenaren wat er in items fout is of ontbreekt en gebruik de catalogus voor routering en escalatie. Houd het technische beeld gekoppeld aan het klantbeeld, zodat incidentresponders kunnen zien wat waarvan afhangt.

### Leiderschap en governance

Leiders kunnen de catalogus gebruiken om te zien wat de organisatie aanbiedt, wat overlapt en wat verweesd is. Vraag om gaten en duplicaten aan te pakken en om eigenaren te benoemen. Eis niet elk veld voor elke service; vraag wat beslissingen ondersteunt.

### Klanten en gebruikers

Klanten en gebruikers krijgen een helder beeld van waar ze om kunnen vragen en wat ze kunnen verwachten. Gebruik de catalogus om de juiste service te vinden en vertel de eigenaren wanneer een item onjuist of onduidelijk is. Als je niet kunt vinden wat je nodig hebt, zeg dat dan, want dat is bewijs van een gat.

## Veelvoorkomende faalpatronen

- **Te groot, te snel.** Honderden items worden aangemaakt en niet onderhouden. Begin in plaats daarvan met de meest gebruikte services en groei.
- **Geschreven in de taal van de verlener.** Gebruikers kunnen niet vinden wat ze nodig hebben. Noem services in plaats daarvan naar wat gebruikers doen en test met gebruikers.
- **Geen eigenaren.** Niemand houdt items waar. Benoem in plaats daarvan een eigenaar voor elk item en toon reviewdata.
- **Een catalogus die niemand gebruikt.** Ze staat op een site die gebruikers niet bezoeken. Zet haar in plaats daarvan waar mensen al kijken en laat de desk ernaar verwijzen.
- **Het klantbeeld en het technische beeld mengen.** Gebruikers krijgen componentnamen voor zich. Houd in plaats daarvan een duidelijk klantbeeld en link een technisch beeld voor beheer.
- **Geen uitfasering.** Dode services blijven vermeld. Review in plaats daarvan het gebruik en faseer uit wat niemand nodig heeft.
- **Het als eenmalig project behandelen.** De catalogus veroudert na de lancering. Stel in plaats daarvan een reviewcyclus in en maak haar onderdeel van wijzigingen.
- **Te veel verplichte velden.** Eigenaren vullen velden in om aan het sjabloon te voldoen. Eis in plaats daarvan alleen wat iemand gebruikt.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Dekking en duidelijkheid | Services zijn informeel bekend | Er bestaat een lijst van enkele services | Een catalogus van de belangrijkste services in de woorden van gebruikers met eigenaren | Gebruik en gaten worden gemeten en de catalogus wordt bijgesteld | De catalogus omvat functies en partners en wordt met gebruikers vormgegeven |
| Eigenaarschap en actualiteit | Niemand bezit de lijst | Sommige eigenaren bevestigen items af en toe | Elk item heeft een eigenaar en een reviewdatum | Achterstallige reviews worden gevolgd en opgelost | Eigenaarschap en review zijn routine in de hele organisatie |
| Link met verzoeken en hulp | Verzoeken gaan per e-mail of telefoon | Sommige items linken naar formulieren of hulp | Items linken naar verzoeken, kennis en supportroutes | Doorklikken en afweren worden gemeten | Verzoeken, kennis en support zijn over functies geïntegreerd |
| Afhankelijkheden en beslissingen | Afhankelijkheden zijn stamkennis | Sommige afhankelijkheden staan op een lijst | Afhankelijkheden worden vastgelegd en bij incident- en wijzigingswerk gebruikt | Afhankelijkheidsgegevens ondersteunen planning en risicoreview | Afhankelijkheden worden met leveranciers gedeeld en gebruikt om samen te plannen |

## Checklist

- [ ] We hebben een lijst van services in de woorden van gebruikers, beginnend met de meest gebruikte.
- [ ] Elke service heeft een benoemde eigenaar.
- [ ] Elk item zegt voor wie het is, hoe je hulp krijgt en wat je kunt verwachten.
- [ ] De catalogus staat waar gebruikers en de servicedesk al kijken.
- [ ] Items tonen de datum waarop ze voor het laatst zijn bevestigd.
- [ ] Eigenaren reviewen hun items minstens twee keer per jaar.
- [ ] De belangrijkste afhankelijkheden zijn in een technisch beeld vastgelegd.
- [ ] Ongebruikte services worden gereviewd voor uitfasering.
- [ ] Het toevoegen, wijzigen of uitfaseren van een service wordt aan de desk en gebruikers aangekondigd.
- [ ] We hebben de catalogus getest met echte zoekvragen van gebruikers.

## AI-prompts

**Doel: contactgegevens omzetten in een conceptlijst van services in de woorden van gebruikers.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Doel: een duidelijk catalogusitem schrijven.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een catalogus reviewen op gaten, overlap en weesservices.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Doel: een catalogusreview met eigenaren plannen.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-vaardigheden

- [service-catalog](../../../../skills/service-catalog/SKILL.md): gebruik dit om items op te stellen en een servicecatalogus te structureren.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): gebruik dit om te begrijpen wie elke service gebruikt en wat ze nodig hebben.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): gebruik dit om te vinden welke verzoeken en services het meest worden gebruikt.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om vast te leggen wie elke service bezit, ondersteunt en wordt geraadpleegd.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): gebruik dit om te plannen hoe services in de loop van de tijd worden toegevoegd, gewijzigd of uitgefaseerd.

## Belangrijkste bronnen

- **Service catalog** (Wikipedia): een korte beschrijving van inhoud, voordelen en de ITIL-definitie van een IT-servicecatalogus.
- **IT portfolio management** (Wikipedia): achtergrond over portfolioconcepten, inclusief de opmerking dat ITIL v3-serviceportfoliomanagement functioneel gelijkwaardig lijkt.
- **ITIL** (Wikipedia): context over ITIL-versies en waar de ideeën over catalogus en portfolio vandaan komen.
- **Knowledge management** (Wikipedia): achtergrond over hoe catalogi als kennishulpmiddel dienen.

## Referenties

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
