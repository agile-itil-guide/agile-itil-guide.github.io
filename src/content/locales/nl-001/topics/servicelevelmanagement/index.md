# Servicelevelmanagement

**Servicelevelmanagement zet wat gebruikers nodig hebben om in doelen die een team kan meten en verdedigen, en de nuttigste vorm voor agile teams is een klein aantal gebruikersgerichte doelstellingen met een expliciet budget voor falen.**

## Waarom dit ertoe doet

Elke service heeft een kwaliteitsniveau, of iemand het nu heeft gemeten of niet. Als het niet is vermeld, nemen gebruikers er een aan en het team een ander, en de kloof wordt tijdens een storing ontdekt. Servicelevelmanagement is de praktijk om het niveau te noemen, te meten en op de resultaten te handelen. Het geeft een team iets om op te sturen en klanten iets om op te vertrouwen.

Agile teams verzetten zich vaak tegen servicelevels omdat ze die associëren met contracten en boetes. Toch neemt een agile team dat wekelijks released, of het dat nu weet of niet, een beslissing over hoeveel risico het met beschikbaarheid neemt. Een duidelijke doelstelling maakt die beslissing expliciet. Het boek *Site Reliability Engineering* van Google beschrijft in zijn hoofdstuk over service level objectives hoe dit te doen op een manier die bij snel bewegende teams past: kies een paar indicatoren die voor gebruikers tellen, stel doelen en gebruik de ruimte tussen perfect en acceptabel, het foutbudget, om te beslissen wanneer te releasen.

Dit onderwerp combineert dat hoofdstuk met het [Wikipedia-artikel over service-level agreements](https://en.wikipedia.org/wiki/Service-level_agreement) voor definities van overeenkomsten, en met veelgebruikt ITIL-vocabulaire dat deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk. Het SRE-hoofdstuk weerspiegelt de praktijk van één organisatie en pleit voor een specifieke aanpak; lees het als een goed uitgelegde optie, niet als een universele regel.

## Kernconcepten

### Indicator, doelstelling, overeenkomst

Het SRE-hoofdstuk onderscheidt drie termen die vaak door elkaar worden gehaald:

| Term | Betekenis | Voorbeeld |
|---|---|---|
| **Service level indicator (SLI)** | Een zorgvuldig gedefinieerde kwantitatieve maat voor een aspect van het serviceniveau | Het deel van de goed gevormde verzoeken dat slaagt |
| **Service level objective (SLO)** | Een doelwaarde of -bereik voor een SLI | Minstens 99,9% van de verzoeken slaagt over een maand |
| **Service level agreement (SLA)** | Een expliciet of impliciet contract met gebruikers dat gevolgen bevat voor het halen of missen van de doelstellingen, meestal financieel | Een terugbetaling als de beschikbaarheid onder een vermeld niveau komt |

De toets van het hoofdstuk om een SLA van een SLO te onderscheiden is of er een expliciet gevolg is. Zo niet, dan is het een SLO. De voorbeeldgetallen in de tabel zijn illustraties, geen aanbevelingen.

Het Wikipedia-artikel beschrijft een SLA als een overeenkomst, meestal een bindend contract, tussen een verlener en een klant die aspecten van de service definieert zoals kwaliteit, beschikbaarheid en verantwoordelijkheden. Het somt typische inhoud op: een beschrijving van de service, prestatieniveaus, monitoring en rapportage, hoe problemen worden gemeld, respons- en oplostermijnen en gevolgen bij niet-nakoming. Het noemt gangbare maten zoals mean time between failures, mean time to repair, uptime, first-call resolution en doorlooptijd. Het merkt op dat grote organisaties vaak interne SLA's tussen eenheden gebruiken. Het beschrijft typen naar reikwijdte: klantgebaseerd, servicegebaseerd en meerlaags.

### Indicatoren kiezen

Het SRE-hoofdstuk adviseert een paar indicatoren te kiezen die weerspiegelen waar gebruikers om geven, niet elke maat die je kunt volgen. Gebruikersgerichte systemen richten zich meestal op beschikbaarheid, latentie en doorvoer. Opslagsystemen voegen duurzaamheid toe en alle systemen moeten correctheid volgen. Het suggereert dat meting aan de clientzijde problemen kan vangen die maten aan de serverzijde missen. Een praktisch gevolg voor serviceteams: begin met de ervaring van de gebruiker, zoals "ik kan een afspraak boeken en het duurt een paar seconden", en zoek dan een indicator die dat benadert.

### Gemiddelden verbergen pijn

Het hoofdstuk pleit ertegen op gemiddelden te vertrouwen: "De meeste maten kun je beter als verdelingen zien dan als gemiddelden." Hoge percentielen, zoals het 99e of 99,9e, tonen aannemelijke slechtste gevallen, terwijl de mediaan het typische geval toont. Gemiddelden kunnen een lange staart van trage verzoeken verbergen. Als je maat een gemiddelde is, kunnen enkele gebruikers een zeer slechte tijd hebben zonder dat het getal beweegt.

### Doelen kiezen

De richtlijn van het hoofdstuk over doelen is direct en nuttig:

- **Begin bij gebruikers.** "Begin met te bedenken (of uit te zoeken!) waar je gebruikers om geven, niet wat je kunt meten."
- **Verankeer niet in huidige prestaties.** Een doel kiezen op basis van wat je nu haalt, kan heroïsche inspanning vastleggen.
- **Houd het eenvoudig.** Ingewikkelde aggregaties verhullen veranderingen en zijn moeilijker te doorgronden.
- **Vermijd absolute uitspraken.** Beloften van "altijd" beschikbaar zijn onrealistisch.
- **Heb zo weinig mogelijk SLO's.** Elke moet het waard zijn verdedigd te worden in een prioriteitengesprek.
- **Perfectie kan wachten.** Het is beter met een los doel te beginnen dat je aanscherpt dan met een doel dat later moet worden versoepeld.

### Foutbudgetten

Het hoofdstuk zegt dat 100% naleving eisen onrealistisch is en innovatie vertraagt. In plaats daarvan staan teams een **foutbudget** toe: het tempo waarmee een SLO gemist mag worden, dagelijks, wekelijks of maandelijks bijgehouden. Het budget stuurt beslissingen over releases. Als er veel budget over is, kan een team meer risico nemen met wijziging; als het bijna op is, vertraagt het team wijziging en investeert het in betrouwbaarheid. Dit geeft agile teams en beheer een gedeelde, numerieke manier om te twisten over snelheid tegenover stabiliteit, in plaats van met argumenten van gezag.

### Verwachtingen scheppen

Het hoofdstuk merkt op dat het publiceren van een SLO de verwachtingen van gebruikers bepaalt. Teams kunnen een veiligheidsmarge houden met een strenger intern doel. Het waarschuwt ook tegen overpresteren, omdat gebruikers afhankelijk worden van wat ze aan prestaties waarnemen. Als een service veel beter is dan haar vermelde doelstelling, bouwen gebruikers daarop voort en beschermt de doelstelling het team niet meer.

### De regellus

Het hoofdstuk beschrijft SLI's en SLO's als basis van een regellus: monitor de SLI's, vergelijk ze met de SLO's, beslis of actie nodig is, bepaal welke actie het doel haalt en voer haar uit. Zonder SLO kan een team niet zeggen of en wanneer te handelen (zie Onderwerp 3.10 — Monitoring en eventmanagement).

### Interne en externe overeenkomsten

Een SLA is tussen een verlener en een klant. Binnen een verlener zijn teams van elkaar en van leveranciers afhankelijk. Het Wikipedia-artikel noemt dat SLA's kunnen worden ondersteund door operational-level agreements (OLA's) maar legt ze niet uit. In ITIL-vocabulaire is een OLA een overeenkomst tussen interne teams die een SLA ondersteunt, en een underpinning contract het equivalent met een externe leverancier. De hier gelezen bronnen bevestigen die definities niet, dus controleer ze aan de ITIL-publicaties. Het praktische punt is dat een belofte aan een klant maar zo goed is als de beloften erachter (zie Onderwerp 3.14 — Leveranciersmanagement).

### Service level expectations in Kanban

In Kanban is een **service level expectation** een voorspelling van hoe lang een werkitem moet duren, gebaseerd op eerdere cyclustijden (zie Onderwerp 1.5 — Kanban). Het is geen overeenkomst, maar het dient een soortgelijk doel voor werkitems en kan doelen voor verzoeken en incidenten voeden.

## Goede praktijken

1. **Begin met wat gebruikers nodig hebben.** Vraag gebruikers en klanten wat het meest telt en wat pijn doet als het faalt. Schrijf het in hun woorden voordat je een maat kiest.
2. **Kies een paar indicatoren.** Kies voor elke service twee tot vier indicatoren die de gebruikerservaring weerspiegelen, zoals slagingspercentage en snelheid. Voeg er niet meer toe voordat je deze hebt gebruikt.
3. **Gebruik percentielen voor snelheid.** Meet het trage einde van de verdeling, niet alleen het gemiddelde, zodat gebruikers met een slechte ervaring zichtbaar zijn.
4. **Stel eerst losse doelen en scherp ze dan aan.** Begin met een doel dat je kunt halen en verdedigen en scherp het aan zodra je gegevens en vertrouwen hebt. Dit volgt het advies van het hoofdstuk dat perfectie kan wachten.
5. **Kopieer geen huidige prestaties.** Als je service nu uitstekend is, stel dan geen doelstelling op dat niveau tenzij gebruikers het nodig hebben. Een losser doel geeft ruimte voor verandering en vermijdt heroïsche inspanning.
6. **Spreek een foutbudget af en gebruik het.** Definieer hoeveel falen in een periode acceptabel is en laat het resterende budget releasebeslissingen sturen. Review het in een regelmatige bijeenkomst met levering en beheer samen.
7. **Schrijf de overeenkomst in gewone taal.** Een SLA moet zeggen wat wordt geleverd, hoe het wordt gemeten, hoe problemen worden gemeld, wat er gebeurt als doelen worden gemist en wanneer ze wordt gereviewd. Vermijd termen die alleen een jurist of engineer kan lezen.
8. **Scheid doelstellingen van overeenkomsten.** Houd interne doelstellingen aan die strenger zijn dan de overeenkomsten die je tekent. De marge geeft je ruimte om te reageren voordat je iets verschuldigd bent.
9. **Weet waarvan je belofte afhangt.** Maak een lijst van de teams en leveranciers waarop je serviceniveau rekent en controleer of hun toezeggingen de jouwe ondersteunen.
10. **Rapporteer in een vorm die klanten kunnen gebruiken.** Deel resultaten regelmatig, met een korte toelichting op wat er gebeurde en wat je eraan doet. Vermijd dashboards zonder toelichting.
11. **Review doelen met klanten.** Vraag minstens jaarlijks of de niveaus nog passen bij wat klanten nodig hebben en wat jij kunt leveren. Wijzig ze als het antwoord nee is.
12. **Gebruik servicelevels niet om mensen te straffen.** Gebruik ze om gesprekken en beslissingen te starten. Een doel dat als stok wordt gebruikt, wordt gemanipuleerd (zie Onderwerp 5.6 — Maatstaven en meten).

## Vragen om met je team te bespreken

**Hoe ziet een goede dag er voor onze gebruikers uit en hoe zouden we dat weten?**

Vraag het team in de woorden van de gebruiker te beschrijven wat een goede ervaring van de service is. Vraag dan wat we meten dat daarmee overeenkomt. Vaak beschrijven de maten die we hebben onze systemen en niet de ervaring van de gebruiker. De facilitator kan vragen of we het zouden merken als een groep gebruikers een slechte dag had. Kies een indicator om toe te voegen of te wijzigen.

**Hebben we een getal dat we beloven of nastreven en wie heeft daarmee ingestemd?**

Maak een lijst van de doelen die bestaan, formeel of informeel. Vraag bij elk wie het stelde, wanneer en op welke basis. Veel doelen blijken uit gewoonte te zijn gesteld of door iemand die vertrok. Bespreek welke moeten worden bevestigd, gewijzigd of geschrapt. Spreek af wie elk bezit.

**Hoeveel falen kunnen we ons veroorloven en wat zouden we met de ruimte doen?**

Introduceer het idee van een foutbudget. Vraag welk niveau van onbeschikbaarheid gebruikers zouden tolereren en wat het team met de ruimte kon doen, zoals snellere releases. Het doel is de afweging in getallen te zien. Verwacht geen precieze antwoorden; vraag om een eerste schatting om te toetsen.

**Waar verbergen onze gemiddelden slechte ervaringen?**

Kijk naar één maat die een gemiddelde rapporteert. Vraag wat de langzaamste één procent van de gebruikers ervaart. Als je dat niet weet, bespreek dan hoe je het kunt ontdekken. Vaak heeft een kleine groep gebruikers of een bepaald tijdstip van de dag een veel slechtere ervaring. Plan een maand lang naar één percentiel te kijken.

**Waarvan zijn we afhankelijk waar we niet naar hebben gevraagd?**

Maak een lijst van de services, leveranciers en teams waarop je service rekent. Vraag bij elk wat ze hebben beloofd en hoe je zou weten als ze het misten. Veel afhankelijkheden hebben geen vermeld niveau. Kies de belangrijkste en open een gesprek.

**Wanneer veranderde een doel voor het laatst en wat was de aanleiding?**

Vraag naar de laatste wijziging. Als die lang geleden was, vraag dan wat er sindsdien is veranderd in gebruikersbehoeften of in het vermogen van het team. Bespreek een regelmatige review. Goede aanleidingen zijn nieuwe gebruikersbehoeften, incidenten die een onrealistisch doel onthulden of een wijziging in architectuur.

## In de praktijk: een agile ITIL-voorbeeld

Een nationale loterijorganisatie draait een online ticketverkoopservice. Een team van twaalf bouwt en beheert haar. De business heeft een informele regel dat de service "altijd up" moet zijn, terwijl het team twee keer per week released en in een jaar vier korte storingen heeft gehad. Na een slecht weekend eist de executive sponsor "100% beschikbaarheid" en de teamlead vreest dat dit een einde maakt aan frequente releases.

De teamlead en de sponsor houden een workshop met het hoofd klantenservice. Ze vragen wat voor spelers telt. Het antwoord is dat spelers in het uur voordat een trekking sluit een ticket moeten kunnen kopen; buiten dat uur kan de service minuten uit de lucht zijn zonder schade. Ze definiëren een indicator: het deel van de aankooppogingen dat slaagt in de twee uur voordat elke trekking sluit. Ze stellen een doelstelling die het team denkt te kunnen halen, iets onder zijn recente prestaties, en spreken een foutbudget voor elke maand af. Ze komen ook overeen dat wanneer het budget bijna op is, releases die de aankoop raken tot de volgende maand stoppen en het team in betrouwbaarheid investeert.

Drie maanden later is het budget één keer opgebruikt, in een maand met een storing bij de betalingsaanbieder, en pauzeert het team riskante releases twee weken zonder conflict. De doelstelling geeft het team en de sponsor een gedeelde manier om te praten. Er blijven moeilijkheden. De eigen toezegging van de betalingsaanbieder is zwakker dan de doelstelling van het team, dus de belofte van het team hangt af van een leverancier die er niet mee heeft ingestemd. De maat negeert ook een trage afrekenpagina waarover gebruikers klagen, omdat ze alleen slagen telt. Het team voegt een snelheidsindicator op het 99e percentiel toe en opent gesprekken met de aanbieder over zijn servicelevels.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams moeten helpen indicatoren te kiezen en het foutbudget in de planning te gebruiken. Bouw de meting in de service in zodat de getallen betrouwbaar zijn. Behandel een uitgeput budget als reden om aan betrouwbaarheid te werken, niet als straf.

### Service- en beheerteams

Beheerteams draaien meestal de monitoring en rapporteren over niveaus. Houd de set maten klein, toon ze met toelichting en breng de gegevens naar planningsgesprekken. Houd een lijst bij van waarvan je service afhangt en controleer of toezeggingen op elkaar aansluiten.

### Leiderschap en governance

Leiders en sponsors stellen verwachtingen. Vermijd te vragen om perfectie; vraag wat gebruikers nodig hebben en wat de afweging kost. Steun het gebruik van een foutbudget als gedeelde regel en zorg dat het ook voor je eigen verzoeken geldt. Review servicelevels volgens schema met klanten.

### Klanten en gebruikers

Klanten en gebruikers profiteren wanneer het serviceniveau wordt vermeld en gehaald. Zeg wat voor jou telt, inclusief wanneer. Vraag om rapporten in een vorm die je begrijpt en vertel de verlener wanneer het vermelde niveau niet meer past bij je behoeften.

## Veelvoorkomende faalpatronen

- **Te veel maatstaven.** Niemand weet welke telt. Kies in plaats daarvan een paar die de gebruikerservaring weerspiegelen.
- **Alleen gemiddelden.** Een groep gebruikers lijdt terwijl het gemiddelde er goed uitziet. Neem in plaats daarvan een maat met een hoog percentiel op.
- **Doelen gekopieerd van huidige prestaties.** Het team zit vast aan heroïek. Stel in plaats daarvan doelstellingen uit gebruikersbehoeften en scherp aan met gegevens.
- **100% eisen.** Releases stoppen en innovatie vertraagt. Spreek in plaats daarvan een foutbudget en een regel voor het gebruik af.
- **Beloften die je niet kunt waarmaken.** Het serviceniveau hangt af van leveranciers die er niet mee hebben ingestemd. Controleer in plaats daarvan afhankelijkheden en stem toezeggingen af.
- **Overeenkomsten die niemand leest.** Voorwaarden staan in juridische taal. Schrijf in plaats daarvan gewoon en review met klanten.
- **Dashboards zonder toelichting.** Getallen worden gerapporteerd zonder betekenis. Voeg in plaats daarvan een korte uitleg toe van wat er gebeurde en wat er verandert.
- **Missers straffen.** Mensen verbergen problemen. Gebruik missers in plaats daarvan als aanleiding voor beslissingen en leren.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Niveaus definiëren | Niveaus worden aangenomen of zijn informeel | Sommige services hebben vermelde doelen | Elke service heeft gebruikersgebaseerde indicatoren en doelstellingen met eigenaren | Doelstellingen worden gereviewd tegen gebruikersbehoeften en gegevens | Niveaus worden samen met klanten en leveranciers gesteld |
| Meten | Maten zijn ad hoc | Sommige indicatoren worden gemeten | Indicatoren worden betrouwbaar gemeten, inclusief percentielen | Meetkwaliteit wordt gereviewd en gaten worden gedicht | Meting wordt over teams en leveranciers gedeeld en gevalideerd |
| Foutbudgetten gebruiken | Falen is ongepland | Sommige teams bespreken acceptabel falen | Budgetten sturen releasebeslissingen voor belangrijke services | Budgetgebruik wordt gereviewd en regels worden bijgesteld | Budgetten worden over afhankelijke services gecoördineerd |
| Overeenkomsten en afhankelijkheden | Beloften zijn informeel | Er bestaan enkele overeenkomsten | Overeenkomsten zijn in gewone taal, met bekende afhankelijkheden | Overeenkomsten en leverancierstoezeggingen worden aan resultaten getoetst | Overeenkomsten vormen een consistente keten over teams, leveranciers en klanten |

## Checklist

- [ ] We hebben voor elke service in de woorden van gebruikers beschreven hoe goed eruitziet.
- [ ] Elke service heeft twee tot vier indicatoren die de gebruikerservaring weerspiegelen.
- [ ] Minstens één snelheidsmaat gebruikt een hoog percentiel en niet alleen een gemiddelde.
- [ ] Doelstellingen zijn gesteld uit gebruikersbehoeften, niet alleen uit huidige prestaties.
- [ ] Er bestaat een foutbudget dat releasebeslissingen voor minstens één service stuurt.
- [ ] Overeenkomsten zijn in gewone taal geschreven en met klanten gereviewd.
- [ ] Afhankelijkheden van andere teams en leveranciers staan met hun toezeggingen op een lijst.
- [ ] Resultaten worden regelmatig met toelichting gerapporteerd.
- [ ] Doelen worden minstens eenmaal per jaar gereviewd.
- [ ] Servicelevelgegevens worden in de planning gebruikt en niet als stok.

## AI-prompts

**Doel: gebruikersbehoeften omzetten in kandidaat-indicatoren en -doelstellingen.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: analyseren of gemiddelden slechte ervaringen verbergen.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Doel: een schets van een service level agreement in gewone taal opstellen.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een foutbudgetbeleid plannen.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): gebruik dit om een overeenkomst in gewone taal op te stellen of te reviewen.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): gebruik dit om maten van levering en serviceprestaties te kiezen en te interpreteren.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): gebruik dit om vroegwaarschuwingsindicatoren te selecteren die tonen dat een serviceniveau in gevaar is.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): gebruik dit om te controleren of capaciteit de niveaus ondersteunt die je belooft.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): gebruik dit om toezeggingen van leveranciers af te stemmen op de niveaus die je biedt.

## Belangrijkste bronnen

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): de duidelijkste openbare uitleg van indicatoren, doelstellingen, overeenkomsten, percentielen en foutbudgetten.
- **Service-level agreement** (Wikipedia): de definitie, typische inhoud, typen en geschiedenis van SLA's.
- **DORA's software delivery performance metrics** (dora.dev): verwante maten van leveringssnelheid en stabiliteit.
- **Quality of service** (Wikipedia): achtergrond over hoe servicekwaliteit wordt beschreven en gemeten.

## Referenties

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
