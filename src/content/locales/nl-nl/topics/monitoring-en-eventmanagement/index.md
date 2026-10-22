# Monitoring en eventmanagement

**Monitoring vertelt je of een service werkt zoals gebruikers haar ervaren, en goed eventmanagement zet een stroom van signalen om in een klein aantal alarmen die een persoon kan begrijpen en waarop gehandeld kan worden.**

## Waarom dit ertoe doet

Een service die je niet kunt zien, is een service die je niet kunt beheren. Zonder monitoring hoort een team van fouten via gebruikers en van sluipend verval van niemand. Bij slechte monitoring is het probleem het tegenovergestelde: zoveel alarmen dat de engineer in bereikbaarheidsdienst ze niet meer gelooft en het alarm dat telt in de ruis verdwijnt. Beide uitersten kosten slaap, vertrouwen en tijd.

Monitoring en eventmanagement bepalen ook hoe snel een incident kan worden gevonden en opgelost. Alles in incidentmanagement hangt ervan af snel te weten dat er iets mis is en genoeg informatie te hebben om uit te zoeken waarom (zie Onderwerp 3.2 — Incidentmanagement). Agile teams die vaak releasen hebben dit nog meer nodig, omdat elke release een kans is om iets te breken en elke rollbackbeslissing afhangt van het zien van het effect.

Het boek *Site Reliability Engineering* van Google heeft twee hoofdstukken die het onderwerp rechtstreeks behandelen: "Monitoring Distributed Systems" en "Practical Alerting from Time-Series Data". Ze beschrijven de praktijk van één organisatie en pleiten voor een bewust eenvoudige, gebruikersgerichte aanpak. Dit onderwerp gebruikt ze als hoofdbron, omdat de voor deze gids geraadpleegde Wikipedia-artikelen weinig over de praktijk geven. Het ITIL-vocabulaire hier, zoals event, alarm en eventmanagement, komt uit breed gepubliceerde beschrijvingen die deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk. Lees de SRE-hoofdstukken als één goed uitgelegde optie.

## Kernconcepten

### Monitoring

Het SRE-hoofdstuk definieert **monitoring** als het verzamelen, verwerken en weergeven van kwantitatieve realtimegegevens over een systeem. Het zegt dat monitoring langetermijntrendanalyse, vergelijking tussen experimenten, alarmering, dashboards en ad-hocdebuggen achteraf ondersteunt. Het benadrukt dat monitoring een aanzienlijke engineeringinspanning is en dat teams er gewoonlijk minstens één persoon aan toewijzen.

### Events, alarmen en incidenten

In ITSM-gebruik is een **event** een toestandsverandering die betekenis heeft voor het beheer van een service. De meeste events zijn informatief. Sommige wijzen op een waarschuwing of een uitzondering. Een **alarm** is, zoals het SRE-hoofdstuk het zegt, een melding voor een mens, geleverd als ticket, e-mail of pagina. Een **incident** is een ongeplande onderbreking of kwaliteitsvermindering (zie Onderwerp 3.2 — Incidentmanagement). Eventmanagement is de praktijk om te beslissen welke events ertoe doen, wat eraan te doen en wie moet worden geïnformeerd. De flow is events naar alarmen naar, soms, incidenten.

### Black-box- en white-box-monitoring

Het hoofdstuk onderscheidt twee soorten:

| Soort | Wat het doet | Kracht |
|---|---|---|
| **Black-box** | Test extern zichtbaar gedrag, zoals een gebruiker het zou zien | Detecteert actieve problemen; geschikt voor paging |
| **White-box** | Gebruikt maten die door de binnenkant van het systeem worden blootgesteld, zoals logs of interne handlers | Onthult dreigende problemen en door retries gemaskeerde fouten; essentieel voor debuggen |

Het boek combineert beide. Een black-box-probe vertelt je dat afrekenen faalt; white-box-gegevens helpen uitzoeken waarom.

### Symptomen en oorzaken

Het hoofdstuk zegt dat monitoring twee vragen moet beantwoorden: wat is kapot en waarom. Het adviseert alarmen te richten op symptomen, wat gebruikers ervaren, en op oorzaken alleen te pagen wanneer ze zeker en dreigend zijn. Een enkele machine die uitvalt is, in de woorden van het alarmeringshoofdstuk, onaanvaardbaar om voor gealarmeerd te worden, omdat het te veel ruis geeft. Dit is de kern van een goede alarmeringsaanpak: zeg een mens wanneer gebruikers worden of zullen worden geschaad, niet wanneer een onderdeel schokt.

### De vier gouden signalen

Het hoofdstuk stelt vier signalen voor om te bewaken bij een gebruikersgericht systeem:

- **Latentie:** de tijd om een verzoek te bedienen. Volg mislukte verzoeken apart, want een "trage fout is nog erger dan een snelle fout".
- **Verkeer:** de vraag naar het systeem.
- **Fouten:** mislukte verzoeken, expliciet, impliciet of volgens beleid.
- **Verzadiging:** hoe "vol" de service is. Prestaties verslechteren vaak vóór 100% benutting.

Deze sluiten natuurlijk aan op service level indicators (zie Onderwerp 3.7 — Servicelevelmanagement). Het hoofdstuk waarschuwt ook dat gemiddelden trage uitschieters verbergen en suggereert aantallen verzoeken in latentiebuckets vast te leggen om de verdeling te zien.

### Wat een goed alarm maakt

Het hoofdstuk biedt vragen om te stellen voordat je een alarm schrijft: detecteert het een urgente, uitvoerbare, voor gebruikers zichtbare toestand; kan het veilig worden genegeerd; en kan de respons worden geautomatiseerd? Pagina's moeten uitvoerbaar zijn, oordeel vragen en nieuwe problemen betreffen. Het zegt dat alarmen nooit mogen afgaan alleen omdat "iets een beetje raar lijkt". Pagina's waarvan de respons routinematig en algoritmisch is, zijn volgens het hoofdstuk een rode vlag die vraagt om automatisering of reparatie van de grondoorzaak.

### Alarmen routeren

Het alarmeringshoofdstuk beschrijft het sturen van paginawaardige alarmen naar het bereikbaarheidspersoneel, subkritieke naar ticketwachtrijen en de rest naar statusdashboards. Het beschrijft tooling om alarmen te routeren, ontdubbelen en remmen en merkt op dat alarmen een minimale duur moeten wachten voordat ze afgaan omdat ze kunnen flappen. Het waarschuwt dat "je alleen kunt alarmeren op de fouten die je verwachtte", en daarom is het combineren van black-box-probes met white-box-gegevens belangrijk.

### Houd het eenvoudig

Het hoofdstuk pleit voor eenvoudige, snelle systemen boven "magie" die drempels leert of causaliteit detecteert, en merkt op dat complexe afhankelijkheidshiërarchieën beperkt succes hebben gehad. Het zegt regels die echte incidenten vangen eenvoudig te houden, zelden gebruikte alarmen en ongebruikte signalen te verwijderen en onderhoudskosten langzamer te laten groeien dan de omvang van de service. De gevallen die het beschrijft, zoals een team dat door alarmen werd overspoeld en tijdelijk zijn doelstelling versoepelde en e-mailalarmen uitschakelde om tijd vrij te maken voor blijvende oplossingen, tonen de bereidheid ruis te verwijderen.

### Dashboards en langetermijnbeelden

Het hoofdstuk behandelt dashboards als vooraf gebouwde samenvattende beelden van de belangrijkste maten van een service en zegt dat dashboards beter zijn dan e-mailalarmen, die het van zeer beperkte waarde noemt. Het raadt ook aan paginafrequentie in de loop van de tijd te reviewen, bijvoorbeeld in kwartaalrapporten, om leiderschap op de hoogte te houden van de belasting van de pager. Dit maakt alarmkwaliteit zichtbaar voor managers (zie Onderwerp 1.2 — Agile-principes over houdbaar tempo).

### Grenzen van de bronnen

De SRE-hoofdstukken geven geen drempels buiten één uitgewerkt voorbeeld, bespreken geen runbooks of grenzen aan bereikbaarheidsbelasting en beschrijven niet hoe alarmen in de loop van de tijd worden gereviewd en uitgefaseerd, dus dat zijn zaken voor je eigen praktijk. Ze komen van één grote organisatie met sterke engineeringmiddelen. Kleinere teams kunnen de principes toepassen met eenvoudiger tools.

## Goede praktijken

1. **Monitor wat gebruikers ervaren.** Voeg minstens één black-box-probe toe die een echte gebruikershandeling uitvoert, zoals inloggen of een bestelling plaatsen, en alarmeer wanneer die faalt.
2. **Bewaak de vier gouden signalen.** Volg voor elke service latentie, verkeer, fouten en verzadiging. Voeg andere maten alleen toe als ze een vraag beantwoorden die je hebt gesteld.
3. **Alarmeer op symptomen.** Page wanneer gebruikers worden of binnenkort worden geschaad. Behandel interne toestanden, zoals één uitgevallen machine, als informatie met lagere prioriteit tenzij ze zeker en dreigend zijn.
4. **Maak elke pagina uitvoerbaar.** Schrijf vóór je een alarm maakt op wat de responder moet doen. Als er niets te doen is, is het geen pagina.
5. **Routeer op urgentie.** Stuur urgente alarmen naar de bereikbaarheidsdienst, minder urgente naar een ticketwachtrij en informatie naar een dashboard. Stuur geen e-mailalarmen naar mensen die ze negeren.
6. **Gebruik verdelingen, niet alleen gemiddelden.** Kijk naar hoge percentielen voor latentie, of naar buckets, zodat trage uitschieters zichtbaar zijn.
7. **Stel een minimale duur in.** Eis dat een toestand kort aanhoudt voordat er wordt gealarmeerd, om flappen te vermijden. Stem de duur af met echte gegevens.
8. **Faseer luidruchtige alarmen uit.** Review welke alarmen het vaakst afgaan en tot geen actie leidden. Verwijder of repareer ze. Het SRE-hoofdstuk behandelt routinematige reacties als signaal voor automatisering of reparatie.
9. **Test je monitoring.** Breek bewust iets in een testomgeving en controleer of het juiste alarm afgaat. Neem het monitoringsysteem zelf op in de controles, zodat zijn uitval wordt opgemerkt.
10. **Review de pagerbelasting.** Tel elk kwartaal pagina's per dienst, onderbrekingen buiten kantooruren en valse alarmen. Deel de resultaten met managers en gebruik ze in planning.
11. **Houd monitoring in de definition of done.** Vraag voor elke nieuwe functie welke signalen tonen of ze werkt en welk alarm, indien nodig, ze vraagt (zie Onderwerp 3.5 — Release- en deploymentmanagement).
12. **Houd het eenvoudig.** Geef de voorkeur aan een paar begrijpelijke regels boven een complex schema. Verwijder ongebruikte signalen en review regels na incidenten.

## Vragen om met je team te bespreken

**Hoe kwamen we achter onze laatste drie incidenten?**

Maak een lijst van elk incident en hoe het voor het eerst werd opgemerkt: een alarm, een gebruiker, een collega. Als de meeste van gebruikers kwamen, mist monitoring de symptomen die ertoe doen. De facilitator kan vragen wat een probe zou hebben getoond. Kies eerst één gebruikershandeling om te monitoren.

**Welke alarmen negeren we en waarom?**

Vraag engineers in bereikbaarheidsdienst naar de alarmen die ze dempen of overslaan. Elk is een kandidaat om te repareren of te verwijderen. Vraag wat mensen een alarm doet vertrouwen of wantrouwen. Een openhartig antwoord onthult vaak alarmen die afgaan op toestanden waarop niemand kan handelen. Spreek af er drie uit te faseren of te repareren.

**Wat is de ergste nacht die we in bereikbaarheidsdienst hebben gehad en wat had die beter gemaakt?**

Verzamel verhalen zonder schuld. Zoek patronen: herhaalde pagina's, onduidelijke alarmen, gebrek aan runbooks, geen escalatie. Elk patroon is een verbetering. Vraag welke twee veranderingen het meest zouden helpen. Het doel is een lichtere belasting en een helderder signaal.

**Als ons monitoringsysteem uitviel, hoe zouden we dat weten?**

Vraag wie de bewaker bewaakt. Veel teams hebben geen controle of de monitoring werkt. Bespreek een eenvoudige heartbeat of een probe vanuit een apart systeem. Spreek één controle af om toe te voegen.

**Wat tonen onze dashboards en wie kijkt ernaar?**

Maak een lijst van de dashboards en vraag wie elk de afgelopen maand gebruikte. Ongebruikte dashboards zijn rommel; nuttige vertellen een verhaal over de service. Vraag welke vraag elk beantwoordt. Houd een kleine set die echte vragen beantwoordt.

**Hoe zouden we weten dat een release dingen erger maakte?**

Kies een recente release en vraag welk signaal een probleem zou tonen. Als het antwoord "we zouden het van gebruikers horen" is, bespreek dan op welke signalen je na een release let en wie verantwoordelijk is. Deze vraag koppelt monitoring aan deployment. Schrijf een korte checklist voor na de release.

## In de praktijk: een agile ITIL-voorbeeld

Het openbaarvervoerbedrijf van een stad draait een reisplanner-website en -app die dagelijks door 400.000 mensen wordt gebruikt. Een platformteam van tien bezit de service met een bereikbaarheidsrooster van vier. Het team heeft honderden alarmen: CPU op elke server, schijfruimte, wachtrijlengtes en foutaantallen. Engineers in bereikbaarheidsdienst ontvangen in een typische week 40 pagina's, de meeste buiten werktijd, en twee incidenten in het afgelopen kwartaal werden het eerst door gebruikers op sociale media gemeld.

De teamlead en een engineer reviewen drie maanden aan pagina's. Ze ontdekken dat driekwart betrekking had op toestanden die geen actie vroegen of vanzelf verdwenen. Ze spreken af een eenvoudige aanpak uit het SRE-boek te volgen: alarmeer op wat gebruikers ervaren. Ze voegen een probe toe die elke minuut een standaardreis plant en succes en snelheid meet, en houden een kleine set alarmen op verzadiging van de database en de wachtrij. De rest verplaatsen ze naar een dashboard en een dagelijks ticket. Elke resterende pagina krijgt een korte runbookvermelding die zegt wat te controleren.

Na een maand dalen de pagina's tot ongeveer vijf per week en werden de twee incidenten die volgden allebei door de probe gedetecteerd voordat gebruikers klaagden. Er blijven problemen. De probe dekt maar één reistype en een fout die reizen per fiets raakte, bleef een dag onopgemerkt. Eén engineer meldt ook dat de beslissing "verplaats naar het dashboard" een langzaam schijfprobleem verborg dat later een storing veroorzaakte. Het team voegt probes voor andere reistypen toe, voegt een dagelijkse review van het dashboard aan het rooster toe en spreekt af de pagerbelasting elk kwartaal te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams weten wat de software moet doen en waar ze waarschijnlijk faalt. Bouw de signalen in de code in: nuttige logs, maten en health checks. Definieer probes voor belangrijke gebruikershandelingen en behandel monitoring als onderdeel van klaar. Neem deel aan alarmreviews zodat pagina's echte problemen weerspiegelen.

### Service- en beheerteams

Beheerteams dragen de pager en de dashboards. Houd alarmen weinig en uitvoerbaar, routeer op urgentie en volg de pagerbelasting. Duw luidruchtige alarmen met bewijs terug naar de teams die ze bezitten en deel wat je uit incidenten leert over waar op te letten.

### Leiderschap en governance

Leiders moeten vragen om pagerbelasting en incidentdetectiegegevens, niet om meer alarmen. Steun tijd om ruis te verwijderen en nuttige signalen toe te voegen. Behandel een stijgend aantal pagina's buiten kantooruren als een risico voor de service en voor mensen.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer problemen worden gevonden voordat ze het merken. Meld problemen met details, zoals wat je probeerde en wanneer, want dat helpt de monitoring af te stemmen. Vraag verleners hoe ze fouten detecteren en hoe snel, en of ze statusinformatie publiceren.

## Veelvoorkomende faalpatronen

- **Op alles alarmeren.** De pager gaat constant en vertrouwen gaat verloren. Page in plaats daarvan op symptomen en stuur de rest naar tickets of dashboards.
- **Systemen monitoren, geen gebruikers.** Alle machines zijn groen terwijl gebruikers niet kunnen inloggen. Voeg in plaats daarvan black-box-probes van echte gebruikershandelingen toe.
- **Geen actie gekoppeld.** Pagina's komen aan zonder iets te doen. Eis in plaats daarvan dat elke pagina een beschreven respons heeft, of verwijder haar.
- **Alleen gemiddelden.** Een groep gebruikers lijdt terwijl het gemiddelde er goed uitziet. Kijk in plaats daarvan naar hoge percentielen of verdelingen.
- **Complexe, slimme regels.** Geleerde drempels en afhankelijkheidsbomen verwarren responders. Geef in plaats daarvan de voorkeur aan eenvoudige, begrijpelijke regels.
- **Onbewaakte monitoring.** Het monitoringsysteem faalt stilletjes. Controleer het in plaats daarvan met heartbeats en tests.
- **Routinematige reacties.** Mensen herhalen na elke pagina dezelfde oplossing. Automatiseer in plaats daarvan de respons of repareer de oorzaak.
- **Pagerbelasting negeren.** Nachtelijke pagina's worden als normaal behandeld. Meet en review ze in plaats daarvan en behandel hoge belasting als risico.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Zichtbaarheid van gebruikerservaring | Gebruikers melden de meeste problemen | Sommige services hebben probes of maten voor gebruikershandelingen | Belangrijke gebruikershandelingen worden geprobed en gouden signalen worden voor elke service gevolgd | Detectietijd en dekking worden gemeten en gaten gerepareerd | Monitoring wordt over teams, leveranciers en klanten gedeeld |
| Alarmkwaliteit | Veel alarmen, weinig actie | Sommige teams snoeien alarmen | Pagina's zijn symptoomgebaseerd, uitvoerbaar en op urgentie gerouteerd | Alarmprecisie en ruis worden gemeten en gereviewd | Alarmontwerp wordt over teams verbeterd op basis van gedeeld bewijs |
| Respons en automatisering | Reacties worden geïmproviseerd | Er bestaan enkele runbooks | Pagina's linken naar runbooks en routinereacties worden geautomatiseerd | Responstijd en gebruik van automatisering worden gemeten | Reacties worden over teams en leveranciers gecoördineerd |
| Mensen en belasting | Pagerbelasting wordt niet gevolgd | Sommige teams tellen pagina's | Pagerbelasting wordt elk kwartaal gereviewd | Belasting wordt uit gegevens verdeeld en verminderd | Belasting en leren worden over teams gedeeld en weerspiegeld in planning |

## Checklist

- [ ] Elke belangrijke service heeft minstens één probe van een echte gebruikershandeling.
- [ ] We volgen voor elke service latentie, verkeer, fouten en verzadiging.
- [ ] Elke pagina heeft een schriftelijke respons en betreft een voor gebruikers zichtbare of dreigende toestand.
- [ ] Alarmen worden op urgentie gerouteerd naar de bereikbaarheidsdienst, tickets of dashboards.
- [ ] Hoge percentielen of verdelingen zijn voor latentie zichtbaar.
- [ ] We reviewen welke alarmen het vaakst afgaan en faseren die uit die tot geen actie leiden.
- [ ] Het monitoringsysteem zelf wordt gecontroleerd.
- [ ] Pagerbelasting (pagina's per dienst, onderbrekingen buiten kantooruren) wordt elk kwartaal gereviewd.
- [ ] Nieuwe functies bevatten monitoring in hun definition of done.
- [ ] Na elke release controleert iemand de signalen aan de hand van een korte lijst.

## AI-prompts

**Doel: een lijst alarmen reviewen op ruis en uitvoerbaarheid.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Doel: een probe voor een gebruikersreis definiëren.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: het responsgedeelte voor een alarm schrijven.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een kwartaalreview van pagerbelasting voorbereiden.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## AI-vaardigheden

- [runbook](../../../../skills/runbook/SKILL.md): gebruik dit om de respons te schrijven die bij elke pagina hoort.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): gebruik dit om een eerlijk rooster te ontwerpen en te plannen hoe pagerbelasting wordt gedeeld en gereviewd.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gebruik dit om maten van service- en leveringsprestaties te kiezen en te interpreteren.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): gebruik dit om latentie en verzadiging onder belasting te controleren voordat problemen gebruikers bereiken.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): gebruik dit om te testen dat fouten worden gedetecteerd en afgehandeld door ze bewust in een veilige omgeving te veroorzaken.

## Belangrijkste bronnen

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definities, de vier gouden signalen, symptomen tegenover oorzaken en advies over eenvoudige alarmering.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): hoe alarmregels, routering en flappen in de praktijk werken.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): de koppeling tussen indicatoren, doelstellingen en alarmen.
- **IT service management** (Wikipedia): de plaats van monitoring en incidenten in ITSM.

## Referenties

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
