# Agile servicemanagement

**Agile servicemanagement past agile waarden en methoden toe op het ontwerp en de verbetering van servicemanagement zelf, en behandelt elk proces als een product met een eigenaar, een backlog en gebruikers die kunnen zeggen of het werkt.**

## Waarom dit ertoe doet

Het grootste deel van deze gids keek naar hoe agile teams servicemanagementpraktijken kunnen gebruiken. Dit onderwerp draait de vraag om: hoe kunnen servicemanagementpraktijken op een agile manier worden gebouwd en veranderd? Veel organisaties hebben processen voor incidenten, wijzigingen en verzoeken die eenmaal zijn ontworpen, in een project zijn uitgerold en daarna zijn blijven liggen. Ze zijn traag te veranderen, worden gehaat door de mensen die ze moeten volgen en lopen niet in de pas met hoe de organisatie nu software bouwt. Dat is het tegenovergestelde van wat het principe van het Manifest om verandering te verwelkomen zou suggereren (zie Onderwerp 1.2 — Agile-principes).

Het middel is niet proces te verlaten maar het te behandelen als iets dat met zijn gebruikers wordt ontworpen, in kleine stappen wordt uitgebracht en uit bewijs wordt verbeterd. De leidende principes van ITIL 4 zeggen hetzelfde: begin waar je bent, maak iteratief vooruitgang met feedback, werk samen en bevorder zichtbaarheid en houd het eenvoudig en praktisch (zie Onderwerp 2.4 — De ITIL-leidende principes). Het Wikipedia-artikel over ITIL zegt dat ITIL 4 bij de uitgave in 2019 was afgestemd op agile, DevOps en lean werkwijzen. Het ISO/IEC 20000-artikel noemt recente delen van die standaard, waaronder richtlijnen over agile en DevOps, hoewel het hun inhoud niet geeft.

Er is weinig formeel onderzoek naar agile servicemanagement als zodanig en de voor deze gids geraadpleegde Wikipedia-artikelen dekken het niet. Dit onderwerp put daarom uit de beschrijving van rollen en artefacten in de Scrum Guide, uit de agile en ITIL-principes en uit de rest van deze gids, en biedt zijn aanpak aan als praktische synthese om te proberen, niet als vastgestelde methode.

## Kernconcepten

### Processen als producten

Een **proces** is in deze zin elke herhaalbare werkwijze die een serviceorganisatie mensen vraagt te volgen: hoe je een incident meldt, hoe je toegang aanvraagt, hoe je een wijziging goedkeurt. Gezien als product heeft een proces:

- **Gebruikers:** de mensen die het volgen en de mensen die het bedient.
- **Een doel:** de uitkomst waarvoor het bestaat.
- **Een eigenaar:** iemand die verantwoordelijk is voor de waarde ervan, zoals de Scrum Guide de Product Owner beschrijft als de ene persoon die verantwoordelijk is voor het maximaliseren van de waarde van het product en het ordenen van zijn backlog (zie Onderwerp 1.4 — Leveringsprognoses en planningsmaatstaven).
- **Een backlog:** een geordende lijst van verbeteringen.
- **Releases:** wijzigingen in kleine stappen opgeleverd, met notes.
- **Maten:** bewijs of het werkt.

Zo denken verandert de vragen. Niet "hebben we het wijzigingsproces geïmplementeerd?" maar "helpt het wijzigingsproces mensen hun werk te doen en wat is de volgende verbetering?"

### Rollen

| Rol | In een productteam | Voor een servicemanagementproces |
|---|---|---|
| **Product Owner** | Ordent de backlog en is verantwoordelijk voor waarde | De proceseigenaar, die beslist wat hierna te verbeteren en waarom |
| **Developers / team** | Bouwen het Increment | De mensen die het proces ontwerpen en uitvoeren, bij voorkeur inclusief gebruikers uit levering en beheer |
| **Scrum Master of coach** | Helpt het team het raamwerk toe te passen en ruimt belemmeringen op | Een coach die het team helpt continue softwarelevering te oefenen en feedback te verzamelen |
| **Belanghebbenden** | Reviewen het Increment en geven feedback | Leveringsteams, de servicedesk, auditors, klanten |

De koppeling is die van deze gids, geen standaard. Proceseigenaren ontbreekt het in veel organisaties aan bevoegdheid of tijd, dus de eerste stap is vaak hun beide te geven.

### De procesbacklog

Verbeterideeën voor een proces komen van veel plekken: incidentreviews, retrospectives, auditbevindingen, klachten van gebruikers en maten (zie Onderwerp 3.15 — Continue verbetering). Een procesbacklog verzamelt ze in één geordende lijst. Items zijn klein en beschreven vanuit het gezichtspunt van de gebruiker: "Als ontwikkelaar wil ik dat laagrisicowijzigingen automatisch worden goedgekeurd zodat ik kan releasen wanneer ik klaar ben." De Product Owner ordent de lijst op waarde en inspanning en het team neemt items mee in korte cycli.

### Continue softwarelevering van procesveranderingen

Ontwerp in plaats van een volledig proces te ontwerpen en uit te rollen de kleinste versie die kan werken, probeer die met een paar gebruikers en leer:

| Stap | Wat er gebeurt |
|---|---|
| **Vind het probleem** | Observeer hoe mensen werkelijk werken en waar ze worstelen |
| **Ontwerp een kleine wijziging** | Een nieuw formulier, een kortere goedkeuringsroute, een checklist |
| **Probeer het** | Met één team, of één soort werk, gedurende een korte periode |
| **Controleer** | Vergelijk met wat je verwachtte, met gegevens en gesprek |
| **Neem over, pas aan of laat vallen** | Verspreid wat werkte; repareer of verlaat wat niet werkte |

Dit is de plan-do-check-act-cyclus op het proces zelf toegepast (zie Onderwerp 3.15 — Continue verbetering).

### Ontwerpen met gebruikers

Procesontwerpers die het proces niet gebruiken, maken vermijdbare fouten. Betrek de mensen die het volgen: nodig engineers uit het wijzigingsproces te ontwerpen, deskanalisten het incidentformulier en klanten de verzoekcatalogus. Kijk naar echt werk. Test met echte gevallen. Dit is "samenwerking met de klant boven contractonderhandeling" binnen de organisatie toegepast (zie Onderwerp 1.1 — Het Agile Manifest).

### Minimaal levensvatbaar proces

Een **minimaal levensvatbaar proces** is de kleinste set stappen, vastleggingen en rollen die het doel bereikt. Er iets aan toevoegen vraagt een reden. Het leidende principe "houd het eenvoudig en praktisch" ondersteunt dit. Een nuttige toets van elke stap is vragen wat er zou gebeuren als ze werd verwijderd en wie het zou merken. Beheersmaatregelen die bij wet of contract vereist zijn, blijven, met vermelding van de bron; andere worden in twijfel getrokken.

### Procesreleases en communicatie

Wanneer een proces verandert, moeten mensen het weten. Behandel wijzigingen als releases: een korte note die beschrijft wat er veranderde, waarom en wat anders te doen, met een contact voor vragen. Release in kleine stappen, in een ritme dat mensen kunnen volgen, en vermijd teams met grote wijzigingen te verrassen. Houd een zichtbare geschiedenis van wijzigingen bij.

### Standaarden, audits en wendbaarheid

Veel organisaties moeten aan standaarden of auditors voldoen. ISO/IEC 20000 is een standaard voor servicemanagementsystemen, en Wikipedia noemt een recent deel ervan met richtlijnen over agile en DevOps (zie Onderwerp 2.7 — ITSM-raamwerken en -standaarden). Een proces dat in kleine stappen is gebouwd, kan aan audits voldoen als de vastleggingen tonen hoe het werkt en hoe het verandert: de backlog, releasenotes en maten zijn zelf bewijs. Bespreek vroeg met auditors wat ze nodig hebben en toon hen hoe je werkt.

### Agile servicemanagement en DevOps

Praktijken uit DevOps, zoals automatisering en pipelines, zijn hulpmiddelen om processen te implementeren (zie Onderwerp 5.2 — DevOps). Waar een processtap kan worden geautomatiseerd, zoals een wijziging vanuit een pipeline vastleggen, doe dat dan en behandel de automatisering als onderdeel van het proces. Agile servicemanagement en DevOps delen een belangstelling voor korte cycli en snelle feedback.

### Grenzen

De aanpak neemt aan dat mensen tijd en mandaat hebben om proces te verbeteren, wat niet altijd waar is. Ze kan falen wanneer proceseigenaarschap nominaal is, wanneer belanghebbenden een afgerond ontwerp eisen voordat ze iets willen proberen, of wanneer elke wijziging een lange goedkeuring vraagt. Ze riskeert ook voortdurende onrust als wijzigingen te frequent zijn om te absorberen. Breng continue oplevering van verandering in balans met stabiliteit: verander in een voorspelbaar ritme.

## Goede praktijken

1. **Benoem een eigenaar voor elk proces.** Kies iemand met bevoegdheid om het te veranderen en tijd om dat te doen. Maak hun rol duidelijk: ze zijn verantwoordelijk voor hoe goed het proces zijn doel dient.
2. **Schrijf een doel van één zin.** Vermeld waarvoor het proces dient en wie het bedient. Als je dat niet kunt, kan het proces een kandidaat voor verwijdering zijn.
3. **Houd een procesbacklog bij.** Verzamel ideeën uit reviews, audits, feedback en gegevens in één geordende lijst. Toon haar aan de mensen die het proces volgen.
4. **Betrek de gebruikers bij het ontwerp.** Neem engineers, deskanalisten en klanten op in workshops en proeven. Observeer echt werk voordat je het verandert.
5. **Begin met een minimaal levensvatbaar proces.** Ontwerp de kleinste versie die aan het doel en de juridische behoeften voldoet. Voeg stappen alleen toe als een probleem ze rechtvaardigt.
6. **Probeer voordat je uitrolt.** Pilot met één team of één soort werk gedurende een korte, gedefinieerde periode. Spreek af waar je naar gaat kijken voordat je begint.
7. **Release wijzigingen in kleine stappen in een ritme.** Publiceer voor elke release van het proces een korte note, met een contact. Vermijd grote, verrassende wijzigingen.
8. **Meet het proces.** Kies een paar maten of het werkt, zoals benodigde tijd, herwerk en gebruikerstevredenheid (zie Onderwerp 5.6 — Maatstaven en meten). Review ze met gebruikers.
9. **Automatiseer waar het helpt.** Laat vastleggingen uit tools komen, niet formulieren; maak het makkelijke pad het juiste pad. Controleer dat automatisering geen oordeel verbergt dat mensen moeten vellen.
10. **Bewaar het bewijs voor auditors.** Bewaar de backlog, beslissingen, releasenotes en maten waar auditors ze kunnen zien. Nodig hen uit voor een review van hoe het proces verandert.
11. **Faseer proces uit.** Verwijder stappen, formulieren en vastleggingen die hun doel niet meer dienen. Behandel verwijderen als verbetering.
12. **Review proceseigenaarschap jaarlijks.** Controleer dat elk proces nog een actieve eigenaar, een actuele backlog en gebruikers heeft die hen kunnen bereiken.

## Vragen om met je team te bespreken

**Wie bezit elk van onze processen en welke bevoegdheid hebben ze om het te veranderen?**

Maak een lijst van de belangrijkste processen en noem de eigenaar van elk. Vraag wat de eigenaar kan veranderen zonder iemand te vragen. Vaak is het antwoord "heel weinig". De facilitator kan vragen wat nodig zou zijn zodat de eigenaar snel kleine wijzigingen kan doorvoeren. Spreek één proces af om mee te beginnen.

**Waarvoor dient ons wijzigingsproces? Kunnen we het in één zin zeggen?**

Vraag iedereen een doel te schrijven. Vergelijk. Verschillen tonen verwarring over waarom het proces bestaat. Gebruik de gedeelde verklaring om elke stap te beoordelen. Verwijder of trek stappen in twijfel die haar niet dienen.

**Wanneer veranderden we voor het laatst een proces omdat gebruikers erom vroegen en hoe kwamen we daarachter?**

Vraag om voorbeelden. Als die er niet zijn, vraag dan waar klachten heen gaan. Bespreek hoe feedback de eigenaar kan bereiken: een kanaal, een regelmatige review, een korte enquête. Kies één route om te proberen.

**Hoe zou een proef van een maand met een eenvoudiger proces eruitzien?**

Kies een proces met bekende wrijving. Beschrijf een lichtere versie, wie het zou proberen, wat je zou meten en wat je zou doen stoppen. Dit maakt van een discussie een experiment. Spreek de details en de datum af.

**Welk bewijs zouden onze auditors accepteren van een proces van continue softwarelevering?**

Vraag een auditor of compliance-collega. Maak een lijst van wat het proces produceert: een backlog, releasenotes, maten, vastleggingen. Bespreek gaten. Teams zijn vaak verrast hoe bereidwillig auditors duidelijk bewijs van beheerste verandering accepteren.

**Hoe komen mensen te weten dat een proces is veranderd?**

Volg de laatste wijziging. Veel mensen hoorden het van een collega of stuitten erop. Bespreek releasenotes en een zichtbaar wijzigingslogboek. Spreek een eenvoudige manier af om wijzigingen aan te kondigen en waar ze staan.

## In de praktijk: een agile ITIL-voorbeeld

Een nationaal agentschap voor verkeersveiligheid heeft een IT-afdeling van 90 mensen die een applicatie ondersteunen die door politie en rechtbanken wordt gebruikt. Het incidentproces van de afdeling werd acht jaar geleden geschreven: een formulier met 14 velden, drie goedkeuringen om een incident met hoge prioriteit te sluiten en een maandelijks rapport dat niemand leest. Leveringsteams slaan het formulier tijdens storingen over en vullen het achteraf in, dus de vastleggingen zijn slecht. Een auditbevinding zegt dat incidentvastleggingen onvolledig zijn.

Het hoofd servicemanagement benoemt zichzelf tot eigenaar van het incidentproces en vormt een klein werkteam: twee analisten van de servicedesk, een engineer van elk van twee leveringsteams en een kwaliteitsfunctionaris van de governance-eenheid van het agentschap. Ze schrijft een doel voor het proces: de service snel herstellen en leren van wat er gebeurde. Het team kijkt naar drie echte incidenten. Ze ontdekken dat het formulier achteraf wordt ingevuld, grotendeels met dezelfde weinige waarden, en dat de goedkeuringen vertraging toevoegen zonder ooit een uitkomst te veranderen. Ze bouwen een backlog en beginnen met de kleinste wijzigingen. Een proef met twee teams brengt het formulier terug tot zes velden die waar mogelijk automatisch uit de monitoringtool worden gevuld, schrapt twee van de drie goedkeuringen en voegt een korte schuldvrije review voor elk incident met hoge prioriteit toe.

Na zes weken leggen de proefteams incidenten vast tijdens de storing in plaats van erna, en vindt de kwaliteitsfunctionaris de vastleggingen completer dan voorheen. Het team publiceert een releasenote van één pagina, breidt de wijziging uit naar alle teams en toont de auditor de backlog, de proefresultaten en de maten. Er blijven moeilijkheden. Eén leveringsteam deed nooit mee aan de proef en gebruikt nog het oude formulier, het contract van een leverancier vereist een veld dat het nieuwe formulier weglaat en de kwaliteitsfunctionaris vreest dat het schrappen van goedkeuringen bij de volgende audit ter discussie zal komen. Het hoofd servicemanagement voegt een veld voor het leveranciersgeval toe, vraagt het resterende team aan de volgende ronde mee te doen en spreekt met de auditor af de incidentvastleggingen bij de volgende kwartaalbijeenkomst te reviewen.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams zijn de gebruikers van veel servicemanagementprocessen. Doe mee aan het ontwerp van de processen die jou raken, bied gegevens over hoe ze in de praktijk werken en probeer pilots. Bied aan, waar een processtap in je pipeline kan worden geautomatiseerd, haar te bouwen.

### Service- en beheerteams

Beheerteams bezitten vaak de processen. Behandel elk als product: schrijf een doel, houd een backlog bij, vraag gebruikers en release kleine wijzigingen. Maak tijd voor procesverbetering en verdedig die, want leveringswerk zal haar verdringen.

### Leiderschap en governance

Leiders geven proceseigenaren bevoegdheid en tijd en stellen de verwachting dat processen uit bewijs veranderen. Vraag om het doel en de maten van elk proces en om de backlog. Steun proeven en wees bereid bewijs in nieuwe vormen te accepteren.

### Klanten en gebruikers

Klanten en gebruikers van services volgen ook processen, zoals verzoeken en goedkeuringen. Vertel de eigenaar wat verwarrend of traag is. Bied aan deel te nemen aan een proef. Verwacht dat wijzigingen worden aangekondigd en uitgelegd.

## Veelvoorkomende faalpatronen

- **Proces zonder eigenaar.** Niemand kan het veranderen. Benoem in plaats daarvan een eigenaar met bevoegdheid en tijd.
- **Big-bang-herontwerp.** Een geheel nieuw proces wordt in één keer uitgerold en afgewezen. Verander in plaats daarvan in kleine stappen en pilot.
- **Ontwerp door een commissie ver van gebruikers.** Het proces past bij de ontwerpers. Betrek in plaats daarvan de mensen die het volgen en kijk naar echt werk.
- **Voortdurende onrust.** Wijzigingen komen te vaak om te absorberen. Release in plaats daarvan in een voorspelbaar ritme.
- **De juridische vereisten vergeten.** Een noodzakelijke beheersmaatregel wordt geschrapt. Controleer in plaats daarvan waarvoor elke stap vereist is en noem de bron.
- **Wijzigingen niet aangekondigd.** Mensen ontdekken ze per ongeluk. Publiceer in plaats daarvan korte releasenotes.
- **Bewijs niet bewaard.** De audit kan niet zien hoe het proces veranderde. Bewaar in plaats daarvan de backlog, beslissingen en maten.
- **Geen verwijdering.** Stappen stapelen zich op. Behandel verwijderen in plaats daarvan als verbetering.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Eigenaarschap en doel | Processen hebben geen duidelijke eigenaar of doel | Sommige processen hebben eigenaren | Elk proces heeft een eigenaar met bevoegdheid en een schriftelijk doel | Eigenaren worden op effectiviteit gereviewd en ondersteund | Eigenaren werken over teams samen om processen van begin tot eind af te stemmen |
| Backlog en verandering | Wijzigingen zijn projecten, zeldzaam en groot | Sommige eigenaren houden lijsten met ideeën bij | Elk proces heeft een geordende backlog en brengt wijzigingen in kleine stappen uit | Backlogflow en releaseeffecten worden gemeten | Procesveranderingen worden over processen en met leveranciers gecoördineerd |
| Gebruikers betrekken | Ontwerpers raadplegen zelden gebruikers | Sommige proeven worden met gebruikers gedaan | Gebruikers nemen standaard deel aan ontwerp en proeven | Gebruikersfeedback en -tevredenheid worden gemeten en erop wordt gehandeld | Klanten en leveranciers nemen deel aan procesontwerp |
| Bewijs en audit | Vastleggingen zijn slecht en wijzigingen niet vastgelegd | Sommige procesveranderingen worden gelogd | Backlog, releasenotes en maten dienen als auditbewijs | Auditors reviewen het wijzigingsrecord regelmatig | Bewijs wordt voortdurend met auditors en partners gedeeld |

## Checklist

- [ ] Elk belangrijk proces heeft een benoemde eigenaar met bevoegdheid en tijd.
- [ ] Elk proces heeft een doel van één zin en een gedefinieerde set gebruikers.
- [ ] Elk proces heeft een zichtbare, geordende backlog van verbeteringen.
- [ ] Gebruikers uit levering en beheer nemen deel aan ontwerp en proeven.
- [ ] Wijzigingen worden vóór uitrol gepilot, met een gedefinieerde controle.
- [ ] Procesveranderingen worden in een ritme met korte notes uitgebracht.
- [ ] Een paar maten tonen of elk proces werkt.
- [ ] Juridische en contractuele beheersmaatregelen zijn met hun bronnen geïdentificeerd.
- [ ] Auditors hebben de backlog, releasenotes en maten gezien.
- [ ] Stappen die geen doel meer dienen, worden verwijderd.

## AI-prompts

**Doel: een doelomschrijving en gebruikerslijst voor een proces opstellen.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: feedback en incidentreviews omzetten in een procesbacklog.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Doel: een proef van een maand met een lichter proces ontwerpen.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Doel: een releasenote voor een procesverandering schrijven.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## AI-vaardigheden

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): gebruik dit om duidelijk te maken wie elk proces bezit en wie wordt geraadpleegd.
- [user-story](../../../../skills/user-story/SKILL.md): gebruik dit om procesbacklogitems vanuit het gezichtspunt van de gebruiker te schrijven.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): gebruik dit om te bestuderen hoe een proces werkelijk loopt en waar het worstelt.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): gebruik dit om te reviewen hoe een proces met zijn gebruikers werkt.
- [kaizen](../../../../skills/kaizen/SKILL.md): gebruik dit om kleine, continue verbeteringen aan een proces te plannen.

## Belangrijkste bronnen

- **The Scrum Guide** (Ken Schwaber en Jeff Sutherland, scrumguides.org): de bron voor de rollen en artefacten die hier als analogie voor proceseigenaarschap en backlogs worden gebruikt.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): de agile kant van de ontwerpaanpak.
- **ITIL** (Wikipedia): de geschiedenis van de afstemming van ITIL 4 op agile, DevOps en lean werkwijzen.
- **ISO/IEC 20000** (Wikipedia): de lijst van delen, inclusief recente richtlijnen over agile en DevOps.

## Referenties

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
