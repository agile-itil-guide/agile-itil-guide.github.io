# Release- en deploymentmanagement

**Release- en deploymentmanagement brengt wijzigingen veilig in productie, en het doel in een agile omgeving is releasen zo routinematig, geautomatiseerd en omkeerbaar te maken dat het geen gebeurtenis meer is.**

## Waarom dit ertoe doet

Veel organisaties behandelen een release nog steeds als een grote, gespannen gelegenheid. Er wordt een datum vastgesteld, een venster geboekt, mensen blijven laat en succes wordt afgemeten aan de vraag of er iets kapotging. Dat patroon produceert precies het risico dat het vreest: hoe meer wijzigingen in een release worden gebundeld, hoe moeilijker te begrijpen wat er misging en hoe pijnlijker een rollback.

Het onderzoeksprogramma van DORA beschrijft het alternatief. Zijn pagina over continue levering definieert de praktijk als "het vermogen om wijzigingen van alle soorten op aanvraag snel, veilig en duurzaam uit te brengen", en meldt dat het goed doen ervan leveringsprestaties en beschikbaarheid verbetert en samengaat met minder burn-out en hogere werktevredenheid. De pagina waarschuwt ook dat vaker deployen zonder processen en architectuur te veranderen de faalpercentages meestal verhoogt en teams uitbrandt. De les is niet "release sneller" maar "bouw het vermogen om veilig te releasen en release dan vaak".

Het boek *Site Reliability Engineering* van Google maakt in zijn hoofdstuk over release engineering vanuit de praktijk een soortgelijk punt: frequente releases betekenen minder wijzigingen tussen versies, zodat testen en troubleshooten makkelijker wordt. Dit onderwerp put uit die twee bronnen, uit de andere wijzigingsgerelateerde onderwerpen van de gids en uit veelgebruikt ITIL-vocabulaire dat deze gids niet kon bevestigen aan de tekst van de eigenaar van het raamwerk. Behandel de bronnen als sterk, specifiek en beperkt tot de contexten die ze beschrijven.

## Kernconcepten

### Release en deployment

De twee termen worden vaak verward. Een gangbaar onderscheid, breed gebruikt in servicemanagement, is:

- Een **release** is een versie van een service of component die voor gebruik beschikbaar wordt gesteld. Het is een beslissing over wat gebruikers krijgen.
- Een **deployment** is het verplaatsen van een versie naar een omgeving, zoals productie.

Ze scheiden is krachtig. Je kunt code in productie deployen zonder haar voor gebruikers aan te zetten en haar later gecontroleerd releasen. Technieken als feature switches berusten op deze scheiding (zie het Wikipedia-artikel over feature toggles).

### Continue levering en continue deployment

De pagina van DORA definieert **continue levering** als het vermogen om wijzigingen van alle soorten op aanvraag snel, veilig en duurzaam uit te brengen. Ze onderscheidt haar van **continue deployment**, wat betekent dat elke wijziging zo snel mogelijk in productie wordt gedeployed. DORA zegt dat teams "kunnen en moeten beginnen met continue levering", ook als ze continue deployment nooit overnemen. De beslissing of er wordt gereleased blijft een zakelijke beslissing; continue levering maakt er een keuze van in plaats van een project.

### Wat het onderzoek aanbeveelt

De pagina van DORA noemt praktijken die continue levering ondersteunen:

| Praktijk | Wat DORA zegt |
|---|---|
| **Testautomatisering** | Uitgebreide, betrouwbare geautomatiseerde testsuites, grotendeels door ontwikkelaars gemaakt en onderhouden |
| **Deploymentautomatisering** | Deployments volledig geautomatiseerd, zonder handmatig ingrijpen |
| **Trunk-based development** | Minder dan drie actieve branches, zeer kortlevende branches, zelden periodes van code-vergrendeling |
| **Los gekoppelde teams en architectuur** | Teams kunnen op aanvraag testen en deployen zonder afstemming met andere services |
| **Andere praktijken** | Continue integratie, continu testen, versiebeheer voor alle productieartefacten, testdatamanagement, monitoring en observability, proactieve meldingen, databasewijzigingsmanagement, doordringende beveiliging |

De pagina meldt dat continue levering samengaat met hogere kwaliteit (minder tijd aan herwerk of ongepland werk), minder burn-out en minder deploymentpijn. Ze zegt ook dat elite teams die in het rapport van 2021 betrouwbaarheidsdoelen haalden, drie keer waarschijnlijker een los gekoppelde architectuur hadden dan slecht presterende. Ze noemt geen tools, doel-deploymentfrequenties of implementatietijdlijn, en merkt op dat transformaties gewoonlijk een "J-curve" volgen, met een dip in efficiëntie doordat automatisering de testeisen verhoogt en technische schuld zich opstapelt.

### Lessen uit de praktijk van release engineering

Het hoofdstuk over release engineering in het SRE-boek beschrijft de aanpak van één grote organisatie:

- **Self-service.** Teams voeren hun eigen releaseprocessen uit. Releases zijn "echt automatisch" en vragen alleen betrokkenheid van engineers als er problemen ontstaan.
- **Hoge snelheid.** Frequente releases betekenen minder wijzigingen tussen versies, wat testen en troubleshooten makkelijker maakt.
- **Hermetische builds.** Builds hangen af van bekende versies van tools en bibliotheken, zodat dezelfde revisie identieke resultaten geeft.
- **Afgedwongen beleid.** Toegangsbeheer bewaakt goedkeuringen, het aanmaken van releases en deployment. Bijna alle wijzigingen vragen code review en elke release produceert een rapport van opgenomen wijzigingen.

Het hoofdstuk benadrukt ook configuratie onder versiebeheer en code review, en suggereert dat ontwikkelaars, site reliability engineers en release engineers samenwerken in plaats van resultaten "over het hek te gooien". Het zegt dat organisaties releasebeleid moeten definiëren ook als ze het nog niet kunnen automatiseren of afdwingen, en dat het goedkoper is goede praktijken vroeg in te voeren dan achteraf in te passen. Het hoofdstuk beschrijft de eigen tools van Google; jouw omgeving gebruikt andere, dus haal de principes eruit en niet de producten.

### Omgevingen en promotie

Een release doorloopt meestal een reeks omgevingen, zoals ontwikkeling, test en productie. Elke stap levert bewijs. Een gangbare praktijk, in lijn met het bovenstaande onderzoek, is eenmaal te bouwen en hetzelfde artefact te promoveren, zodat wat is getest ook is wat wordt gedeployed. De nadruk van het SRE-hoofdstuk op identieke builds van dezelfde revisie drukt hetzelfde idee uit.

### Uitrol en terugdraaien

Hoe een release gebruikers bereikt, kan gradueel zijn. Het SRE-hoofdstuk beschrijft uitrol afgestemd op risico, van uurlijkse automatische pushes in ontwikkeling tot uitrol over meerdere dagen voor gevoelige infrastructuur, en noemt canary releases, waarbij een klein deel van het verkeer de nieuwe versie eerst krijgt. Terugdraaien (rollback) betekent terugkeren naar de vorige versie en moet net zo geoefend zijn als uitrol. Teams die snel kunnen terugdraaien, kunnen zich vaak deployen veroorloven (zie Onderwerp 3.4 — Change enablement).

### Releaseinformatie voor ondersteuning

Supportmedewerkers en gebruikers moeten weten wat er verandert en wat te doen als het misgaat. Een releasenote, een lijst met bekende problemen en een benoemd contact zijn het minimum (zie Onderwerp 3.1 — Servicedesk). Het releaserapport van opgenomen wijzigingen uit het SRE-hoofdstuk dient als bron.

### Maatstaven

De pagina van DORA suggereert te meten: korte doorlooptijden voor reguliere en spoedwijzigingen, lage percentages mislukte wijzigingen, korte tijd om de service te herstellen en releasefrequenties die prioriteiten op tijd opleveren. Het overkoepelende doel is dat niemand buiten kantooruren werkt om te deployen. Zie voor definities en waarschuwingen over de maten Onderwerp 3.4 — Change enablement en Onderwerp 5.6 — Maatstaven en meten.

## Goede praktijken

1. **Scheid deployment van release.** Deploy code in een slapende staat in productie en zet haar voor gebruikers aan wanneer ze klaar is, met feature switches of gefaseerde uitrol. Dit verkleint het risico van een deployment en geeft de business controle.
2. **Automatiseer de deployment.** Streef naar geen handmatige stappen. Handmatige stappen zijn traag, verschillen tussen mensen en veroorzaken incidenten. Automatiseer in kleine stappen, beginnend met de stappen die het vaakst misgaan.
3. **Bouw eenmaal, promoveer het artefact.** Produceer één pakket en verplaats het door omgevingen, zodat wat je testte ook is wat je draait. Leg vast welke versie waar staat.
4. **Maak builds reproduceerbaar.** Pin versies van tools en bibliotheken vast zodat dezelfde revisie hetzelfde resultaat geeft. Dit volgt het principe van hermetische builds uit het SRE-hoofdstuk.
5. **Houd branches kortlevend.** De trunk-based richtlijn van DORA is minder dan drie actieve branches en branches die binnen ongeveer een dag worden samengevoegd. Lange branches maken van releases mergegebeurtenissen.
6. **Test automatisch en houd de tests snel en betrouwbaar.** Streef naar feedback in minuten. Een onbetrouwbare of trage testsuite laat mensen haar omzeilen.
7. **Release in kleine batches.** Kleinere releases zijn makkelijker te reviewen, testen en terug te draaien. Als een release groot is, vraag dan hoe ze kan worden gesplitst.
8. **Rol gefaseerd uit.** Begin met een klein deel van de gebruikers of servers, let op de signalen en breid uit. Definieer vooraf waar je op let en wie de uitrol kan stoppen.
9. **Oefen het terugdraaien.** Weet hoe je terugkeert naar de laatste goede versie en oefen het. Een rollback die je nooit hebt geprobeerd, is een hoop.
10. **Geef ondersteuning vóór de release wat ze nodig heeft.** Lever releasenotes, bekende problemen en een contact. Betrek supportmedewerkers bij de goedkeuring van wijzigingen die gebruikers raken (zie Onderwerp 3.1 — Servicedesk).
11. **Houd configuratie in versiebeheer.** Behandel configuratiewijzigingen als code, met review en een vastlegging. Kies waar elke soort instelling leeft en waarom.
12. **Streef naar deployment tijdens werktijd.** DORA noemt dit het overkoepelende doel. Als deployments late avonden vragen, heeft het proces of de architectuur werk nodig.

## Vragen om met je team te bespreken

**Hoe lang duurt het en hoeveel stappen zijn er nodig om een afgeronde wijziging in productie te krijgen?**

Volg één recente wijziging van "klaar" tot "live". Maak een lijst van elke stap, wie haar doet en hoe lang ze wacht. Onderscheid handmatige stappen van geautomatiseerde. Teams zijn vaak verrast door hoeveel stappen handmatig zijn en door het wachten ertussen. De facilitator kan vragen welke stap de meeste incidenten heeft veroorzaakt. Kies er een om te automatiseren.

**Wat moet waar zijn om tijdens werktijd te kunnen releasen zonder ons zorgen te maken?**

Vraag waar het team bang voor is bij het releasen. Typische antwoorden: geen geteste rollback, zwakke tests, onduidelijke impact op gebruikers. Elk is iets om te bouwen. Maak er een lijst van en rangschik ze. Vraag wat de kleinste stap voor de eerste zou zijn. Het DORA-doel dat niemand buiten kantooruren werkt om te deployen is een nuttig doel om te bespreken.

**Waar bundelen we wijzigingen omdat releasen pijnlijk is en wat kost het bundelen ons?**

Kijk naar de inhoud van recente releases. Tel de wijzigingen in elk. Vraag wat er gebeurde toen een bundel misging en hoe lang het duurde de oorzaak te vinden. Bespreek wat releases van één wijziging het makkelijke pad zou maken. Spreek een eerste stap af, zoals het afzonderlijk releasen van één laagrisicowijziging.

**Hoe weten we dat een release werkt zodra ze live is?**

Vraag op welke signalen het team het eerste uur let: fouten, prestaties, meldingen van gebruikers. Als het antwoord "we wachten op klachten" is, bespreek dan monitoring die een probleem snel zou tonen. Vraag wie kijkt en wat ze zouden doen. Spreek een korte checklist voor na de release af.

**Wat weet ons supportteam over een release voordat ze uitgaat?**

Vraag de servicedesk wat ze over de laatste release leerde en wanneer. Vergelijk met wat ze nodig had. Bespreek een eenvoudige overdracht, zoals een releasenote en een benoemd contact. Betrek de mensen die vragen van gebruikers beantwoorden bij de planning van riskante releases.

**Wat weerhoudt ons ervan te deployen zonder vriesperiode en wat zou een vriesperiode ons kosten?**

Vriesperiodes zijn gangbaar rond drukke zakelijke momenten. Vraag hoe lang ze duren en wat ze vertragen. Bespreek of kleine, goed geteste wijzigingen er met extra waarborgen doorheen kunnen. De DORA-pagina waarschuwt ervoor dezelfde goedkeuring toe te passen op alle wijzigingen ongeacht risico of timing, dus vraag of de vriesperiode te grof is.

## In de praktijk: een agile ITIL-voorbeeld

Een universiteit draait een online inschrijfsysteem voor 30.000 studenten. Het ontwikkelteam van acht released eens per termijn, in een weekendvenster voordat de inschrijving opent. Elke release bundelt honderden wijzigingen en vraagt vijftien mensen, een lange handmatige checklist en een belplan. De laatste release mislukte zondag om 2 uur 's nachts en het team besteedde veertien uur aan het vinden van welke wijziging het had veroorzaakt.

De teamlead stelt een andere aanpak voor. Ten eerste worden deployments volledig gescript, beginnend met de stappen die de vorige keer mislukten. Ten tweede voegt het team geautomatiseerde tests toe voor het inschrijfpad die bij elke wijziging draaien en minder dan tien minuten duren. Ten derde worden nieuwe functies uitgeschakeld gedeployed en na controles met een feature switch ingeschakeld. Ten vierde wordt een rollbackstap geschreven en in een testomgeving geoefend. Het bureau van de registrar stemt in met een regel dat in de drie weken van piekinschrijving geen release naar productie gaat tenzij het een oplossing is voor een voor gebruikers zichtbare fout.

Binnen een termijn deployt het team wekelijks buiten de piekweken, tijdens werktijd, met de releasenotes de dag tevoren naar de studentenhelpdesk gestuurd. Sommige releases worden vertraagd door onbetrouwbare tests en één feature switch werd per ongeluk aan gelaten en veroorzaakte korte verwarring. De transformatie raakt ook de J-curve die de DORA-pagina beschrijft: twee maanden lang vertraagt werk aan tests en scripts de levering van functies. Het team gaat door, repareert de onbetrouwbare tests, voegt een checklistpunt toe om switches te verwijderen en spreekt met de registrar af de vriesregel volgend jaar te reviewen. De inschrijfpieken van de termijnen verlopen zonder release-gerelateerd incident.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams bezitten de pipeline: tests, builds, deploymentscripts en rollback. Investeer erin als in een product met gebruikers. Release klein, release vaak en behandel elke release als bewijs over de pipeline. Betrek support en beheer wanneer wijzigingen hen raken.

### Service- en beheerteams

Beheerteams profiteren van kleinere, voorspelbaardere releases en kunnen helpen door te definiëren wat waar moet zijn voordat een release wordt geaccepteerd: monitoring, runbooks en rollback. Verschuif van poortwachter naar mogelijkmaker door het platform en de controles te leveren die leveringsteams gebruiken. Let na een release op signalen.

### Leiderschap en governance

Leiders beslissen of teams in de pipeline kunnen investeren en de J-curve kunnen verdragen. Vraag om doorlooptijd, percentage mislukte wijzigingen en hersteltijd. Weersta het bevriezen van releases als algemene reactie op risico en vraag in plaats daarvan om bewijs dat riskante releases meer toetsing krijgen.

### Klanten en gebruikers

Klanten en gebruikers zien frequente kleine verbeteringen en minder big-bang-verstoringen. Verwacht vooraf bericht over wijzigingen die jou raken en een manier om problemen te melden. Als je piekperiodes hebt, vertel het de verlener dan zodat die gefaseerde uitrol eromheen kan plannen.

## Veelvoorkomende faalpatronen

- **Big-bang-releases.** Honderden wijzigingen gaan samen uit. Release in plaats daarvan in kleine batches en scheid deployment van release.
- **Handmatige deployment.** Stappen verschillen per persoon en falen 's nachts. Automatiseer in plaats daarvan in stappen, beginnend met de riskantste.
- **Vaker releasen zonder waarborgen.** Faalpercentages stijgen en mensen branden uit, zoals DORA waarschuwt. Investeer in plaats daarvan eerst in tests, rollback en monitoring.
- **Verschillende artefacten in verschillende omgevingen.** Wat getest is, is niet wat draait. Bouw in plaats daarvan eenmaal en promoveer hetzelfde artefact.
- **Langlevende branches.** Merges worden gebeurtenissen. Houd in plaats daarvan branches kort en integreer continu.
- **Ongeprobeerde rollback.** De eerste rollback gebeurt tijdens een storing. Oefen haar in plaats daarvan regelmatig.
- **Support hoort het laatst.** Medewerkers horen van wijzigingen via gebruikers. Stuur in plaats daarvan releasenotes en een contact vóór de release.
- **Algemene vriezen.** Dezelfde vriezing geldt voor alle wijzigingen. Laat in plaats daarvan laagrisico, goed geteste wijzigingen met extra controles door en bewaar de vriezing voor wat riskant is.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Deploymentautomatisering | Deployments zijn handmatig en verschillen | Sommige deployments zijn gescript | Deployments zijn geautomatiseerd via een gemeenschappelijke pipeline | Deploymentfouten en -duur worden gevolgd en verminderd | Pipelines en praktijken worden over teams gedeeld en verbeterd |
| Releasefrequentie en -omvang | Releases zijn zeldzaam en groot | Sommige teams releasen in kleinere batches | Teams releasen in kleine batches op een bekend ritme | Frequentie, doorlooptijd en omvang worden gemeten en bijgesteld | Releaseritmes worden over services en leveranciers gecoördineerd |
| Veiligheid (tests, uitrol, rollback) | Testen is handmatig; rollback is ongeprobeerd | Er bestaan enkele geautomatiseerde tests en rollbackstappen | Geautomatiseerde tests, gefaseerde uitrol en geoefende rollback zijn standaard | Percentage mislukte wijzigingen en hersteltijd worden gevolgd en verbeterd | Veiligheidspraktijken worden over teams gedeeld en getest |
| Gereedheid van support | Support hoort van releases via gebruikers | Sommige releases hebben notes | Releasenotes en contacten zijn standaard | Feedback van support op releases wordt verzameld en erop wordt gehandeld | Support, levering en gebruikers plannen releases samen |

## Checklist

- [ ] We kunnen het verschil tussen deployen en releasen benoemen en gebruiken het.
- [ ] Deployments zijn geautomatiseerd zonder handmatige stappen, of de resterende handmatige stappen staan op een lijst.
- [ ] We bouwen eenmaal en promoveren hetzelfde artefact door omgevingen.
- [ ] Geautomatiseerde tests draaien bij elke wijziging en geven feedback in minuten.
- [ ] Branches zijn kortlevend en worden vaak naar trunk samengevoegd.
- [ ] Er bestaat een rollback voor elk type release en die is geoefend.
- [ ] Uitrol is gefaseerd waar het risico dat rechtvaardigt, met vooraf gedefinieerde signalen.
- [ ] Releasenotes en bekende problemen bereiken de servicedesk vóór een release.
- [ ] Configuratie staat in versiebeheer en wordt gereviewd.
- [ ] We volgen voor elke service doorlooptijd, percentage mislukte wijzigingen en hersteltijd.

## AI-prompts

**Doel: de stappen van "klaar" naar "live" in kaart brengen en vinden wat te automatiseren.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Doel: een releasenote voor de servicedesk en gebruikers schrijven.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Doel: een gefaseerde uitrol plannen.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een pleidooi voorbereiden voor investeren in releaseautomatisering.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-vaardigheden

- [release-notes](../../../../skills/release-notes/SKILL.md): gebruik dit om gebruikers en de servicedesk te vertellen wat een release verandert.
- [changelog](../../../../skills/changelog/SKILL.md): gebruik dit om per versie een doorlopende vastlegging van wijzigingen bij te houden.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): gebruik dit om de geautomatiseerde tests te bouwen die frequent releasen veilig maken.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): gebruik dit om testen eerder in de pipeline te verplaatsen zodat problemen sneller worden gevonden.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): gebruik dit om kleine, frequente releases en de controles eromheen te plannen.

## Belangrijkste bronnen

- **Continuous delivery** (DORA, dora.dev): de definitie, aanbevolen praktijken, bevindingen en valkuilen van het onderzoeksprogramma.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): de praktijk van één organisatie met self-service, reproduceerbare builds en afgedwongen releasebeleid.
- **Streamlining change approval** (DORA, dora.dev): richtlijn over hoe goedkeuring in levering past.
- **Continuous delivery** (Wikipedia): een overzicht van de praktijk en haar geschiedenis.

## Referenties

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
