# AI in IT-servicemanagement

**Kunstmatige intelligentie kan detectie, triage en kenniswerk in IT-servicemanagement versnellen, en het is alleen veilig te gebruiken waar een persoon verantwoordelijk blijft, antwoorden in je eigen materiaal zijn gegrond en de risico's van fouten, bias en gegevensblootstelling worden beheerd.**

## Waarom dit ertoe doet

Servicemanagement omvat veel taal en patroonherkenning: tickets lezen, incidenten samenvatten, kennis doorzoeken, antwoorden opstellen, ongewone signalen in monitoringgegevens zien. Dit zijn de taken waarin recente AI-systemen het meest bekwaam lijken en leveranciers hebben zich gehaast ze aan servicedesks en beheertools toe te voegen. Teams zullen, als dat nog niet is gebeurd, worden gevraagd of ze ze willen gebruiken.

De kans is echt, en de gevaren ook. AI-systemen kunnen met zekerheid onwaarheden beweren, bias in hun training en in de gegevens die ze krijgen weerspiegelen, vertrouwelijke informatie blootstellen als ze onzorgvuldig worden gevoed en mensen ertoe brengen output te vertrouwen die ze niet hebben gecontroleerd. Verschillende wijd gemelde gevallen tonen de kosten van misplaatst vertrouwen. Een serviceorganisatie die AI zonder nadenken overneemt, kan haar klanten en haar eigen reputatie schaden.

In 2026 is AI ook het raamwerk binnengekomen. De openbare certificeringspagina van PeopleCert beschrijft het nieuwe ITIL als "Practical and AI-native by design" en noemt een module ITIL AI Governance (Version 5) die het besturen van AI "verantwoord en op schaal" behandelt (zie Onderwerp 2.2 — ITIL). Deze gids kon uit de publicaties van de eigenaar niet verifiëren wat ITIL 5 in detail over AI zegt, dus dit onderwerp beschrijft het standpunt van het raamwerk niet verder dan die verklaringen. Het put uit de Wikipedia-artikelen over AIOps en over AI-hallucinatie, uit de pagina van NIST over het AI Risk Management Framework en uit praktische redenering, en geeft praktijk als zodanig aan.

## Kernconcepten

### Waar AI helpt in servicemanagement

De meeste toepassingen vallen in een paar groepen. De tabel toont voorbeelden en het soort risico dat elk draagt, als lezing van deze gids.

| Gebruik | Wat de AI doet | Belangrijkste risico's |
|---|---|---|
| **Detectie en correlatie (AIOps)** | Vindt anomalieën, groepeert verwante events, suggereert waarschijnlijke oorzaken | Valse alarmen, gemiste events, ondoorzichtige redenering |
| **Ondersteuning van de servicedesk** | Suggereert antwoorden, vat tickets samen, stelt antwoorden op, routeert verzoeken | Verkeerde of verzonnen antwoorden, toon, privacy |
| **Kenniswerk** | Stelt artikelen op en verbetert ze, doorzoekt kennis | Verzonnen inhoud, verouderde bronnen |
| **Incident- en probleemanalyse** | Vat tijdlijnen samen, suggereert hypothesen, stelt reviews op | Aannemelijke maar ongegronde oorzaken |
| **Wijzigings- en releaseondersteuning** | Reviewt wijzigingen, stelt notes op, suggereert risico | Overmoed, gemiste context |
| **Code en automatisering** | Schrijft scripts en configuratie | Onveilige of onjuiste code, verborgen afhankelijkheden |
| **Analyse en rapportage** | Vat gegevens samen, stelt rapporten op | Verkeerde berekeningen, verzonnen cijfers |

### AIOps

Het Wikipedia-artikel beschrijft AIOps als het gebruik van AI, machine learning en big-dataanalyse om datacentermanagement te automatiseren en te verbeteren, met als doel IT-problemen efficiënter te detecteren, diagnosticeren en oplossen dan met traditionele methoden. Het zegt dat Gartner AIOps in 2016 voor het eerst definieerde. Het artikel noemt capaciteiten waaronder eventcorrelatie, anomaliedetectie, root cause analysis, vaststelling van causaliteit, voorspellende analyse, incidentmanagement, geautomatiseerd herstel, prestatievoorspelling, resourcetoewijzing en capaciteitsmanagement. Het zegt dat AIOps put uit observatiegegevens, zoals logs en monitoring, en interactiegegevens, zoals tickets, events en incidentvastleggingen.

Het artikel beweert voordelen, zoals een verbetering van de gemiddelde detectietijd met 15 tot 20 procent en een daling van kritieke incidenten met meer dan 50 procent, maar merkt op dat deze uit één artikel van een adviesbureau komen en in de tekst niet onafhankelijk zijn geverifieerd. Het noemt geen kritiek, faalgevallen of beperkingen. Behandel leveranciersbeweringen dienovereenkomstig en test elke tool aan je eigen incidenten (zie Onderwerp 3.10 — Monitoring en eventmanagement).

### Generatieve AI en hallucinatie

Het Wikipedia-artikel over hallucinatie in AI definieert het als een antwoord dat onjuiste of misleidende informatie als feit presenteert, en merkt op dat de term wordt bekritiseerd omdat hij software menselijke eigenschappen toeschrijft. Het geeft oorzaken: pre-training op voorspelling van het volgende woord beloont gokken wanneer het model informatie mist, datasets kunnen onvolledig of niet representatief zijn, en onderzoekers van OpenAI betogen dat training en evaluatie gokken boven het erkennen van onzekerheid belonen. Voorbeelden die het vastlegt zijn onder meer:

- **Mata v. Avianca (mei 2023):** een advocaat diende zes valse zaken in die door ChatGPT waren gegenereerd; de rechter legde op 23 juni 2023 een boete van US$ 5.000 op.
- **Moffatt v. Air Canada (februari 2024):** een tribunaal hield een luchtvaartmaatschappij aan een regeling voor rouwtarieven die haar chatbot had verzonnen.
- Rapporten van een adviesbureau die valse bronvermeldingen bevatten, en een studie die vond dat 69 van 178 GPT-3-referenties onjuiste of niet-bestaande identificaties hadden.

Dit zijn de gevolgen van het vertrouwen op ongeverifieerde output: juridische aansprakelijkheid, financiële blootstelling en beschadigd vertrouwen. In servicemanagement schept een chatbot die een beleid of procedure verzint dezelfde soort risico.

### Mitigatie: grounding en controles

Het artikel beschrijft retrieval-augmented generation (RAG) als het model toegang geven tot externe bronnen voordat het antwoordt. Het noemt ook gegevensgerelateerde methoden, model- en inferentiemethoden en voorstellen zoals guardrail-software en betrouwbaarheidsscores, en merkt op dat geen bron die het geeft kwantificeert hoeveel een daarvan hallucinatie vermindert. Voor een serviceteam zijn praktische mitigaties:

- **Baseer antwoorden op je eigen goedgekeurde materiaal,** zoals de kennisbank, en toon de bron.
- **Houd een persoon in de lus** voor alles wat een klant, een toezegging of productie raakt.
- **Vraag waarover de AI onzeker is** en behandel niet-onderbouwde uitspraken als ongeverifieerd.
- **Test regelmatig** op echte gevallen, ook gevallen waarin het juiste antwoord "ik weet het niet" is.

### Risicomanagementraamwerken

Het National Institute of Standards and Technology (NIST) publiceerde het AI Risk Management Framework (AI RMF 1.0) op 26 januari 2023, dat het beschrijft als bedoeld voor vrijwillig gebruik, om risico's van AI voor individuen, organisaties en de samenleving te helpen beheren en het vermogen te verbeteren om overwegingen van betrouwbaarheid op te nemen in het ontwerp, de ontwikkeling, het gebruik en de evaluatie van AI-producten, -services en -systemen. De pagina van NIST noemt vier functies, Govern, Map, Measure en Manage, maar beschrijft ze niet. Het bracht op 26 juli 2024 ook een Generative Artificial Intelligence Profile (NIST-AI-600-1) uit om organisaties te helpen risico's te identificeren die uniek zijn voor generatieve AI, en zegt dat het raamwerk wordt herzien. Lees het raamwerk zelf voor details. Andere regels over AI, zoals wetten en standaarden, verschillen per land en sector; vraag je juridische en compliancefuncties en verkrijg de tekst (zie Onderwerp 5.7 — Governance, risico en compliance).

### Gegevensbescherming en privacy

Alles wat aan een AI-service wordt gegeven, kan worden opgeslagen, voor training gebruikt of blootgesteld, afhankelijk van de service en de voorwaarden. Tickets, logs en chattranscripties bevatten vaak persoonsgegevens, inloggegevens en vertrouwelijke bedrijfsinformatie. Ontdek vóór je een AI-tool met echte gegevens gebruikt waar gegevens heen gaan, wie ze kan zien, hoe lang ze worden bewaard en of ze worden gebruikt om modellen te trainen, en pas je informatiebeveiligingsbeleid toe (zie Onderwerp 3.13 — Informatiebeveiligingsmanagement). Verwijder of vervang persoonlijke en geheime gegevens voordat je ze in een niet-goedgekeurde tool plakt.

### Verantwoording en transparantie

Een persoon of een team moet verantwoordelijk blijven voor beslissingen waaraan een AI bijdraagt. Wanneer AI een antwoord opstelt, is de verzender verantwoordelijk. Wanneer AI een grondoorzaak suggereert, is de onderzoeker verantwoordelijk voor het toetsen ervan. Vertel klanten wanneer ze met een geautomatiseerd systeem praten waar de wet, een contract of redelijkheid dat vereist, en bied een route naar een persoon. Houd voor belangrijke beslissingen vastleggingen bij van wat de AI werd gevraagd en wat ze produceerde, zoals je voor andere tools zou doen (zie Onderwerp 5.1 — Agile servicemanagement voor bewijs).

### Bias en redelijkheid

AI-systemen leren van gegevens die eerdere beslissingen en gaten weerspiegelen. Een triage-assistent die op historische tickets is getraind, kan sommige groepen gebruikers of soorten problemen als lagere prioriteit behandelen. Controleer outputs over groepen heen, betrek mensen met verschillende perspectieven bij het testen en let op patronen. De voor deze gids gelezen bronnen beschrijven bias niet in detail, dus dit is een algemene waarschuwing, geen bevinding.

### AI meten

Meet de kwaliteit en het effect van elke AI-stap, niet alleen haar volume: hoe vaak mensen haar overrulen, hoe vaak ze fout is, hoe lang taken duren met en zonder haar en wat gebruikers zeggen (zie Onderwerp 5.6 — Maatstaven en meten). Wees voorzichtig met cijfers van leveranciers; de eigen voordeelbeweringen van het AIOps-artikel berusten op één bron.

### Vaardigheden en prompts

De praktische vaardigheid om met AI te werken omvat duidelijke instructies schrijven, het juiste materiaal aanleveren, om onzekerheid vragen en output verifiëren. Onderwerp 6.3 — AI-vaardigheden en -prompts behandelt dit in detail.

### Grenzen van de bronnen

Het AIOps-artikel bevat geen kritiek en zijn voordeelcijfers komen uit één bron; het hallucinatie-artikel is gemarkeerd als bijwerking nodig hebbend en werd gedeeltelijk gelezen; de pagina van NIST beschrijft de functies van het raamwerk niet; en de pagina van PeopleCert legt niet uit wat ITIL 5 over AI zegt. Dit onderwerp geeft daarom een voorzichtig verslag en laat specifieke zaken aan primaire bronnen.

## Goede praktijken

1. **Begin met een laagrisicogebruik en een duidelijke vraag.** Kies een taak waar fouten goedkoop en makkelijk te vangen zijn, zoals een samenvatting voor intern gebruik opstellen, en definieer wat succes betekent.
2. **Houd een persoon verantwoordelijk.** Benoem wie verantwoordelijk is voor waar de AI aan bijdraagt en eis review voor alles wat een klant bereikt, productie wijzigt of een toezegging doet.
3. **Baseer antwoorden op goedgekeurd materiaal.** Verbind AI, waar je haar voor antwoorden gebruikt, met je eigen kennisbank en toon de bron. Laat haar "ik weet het niet" zeggen wanneer ze er geen heeft.
4. **Bescherm gegevens.** Beslis welke gegevens naar welke tool mogen, verwijder persoonlijke en geheime gegevens en gebruik goedgekeurde tools met voorwaarden die je hebt gelezen. Betrek beveiligings- en juridisch personeel vroeg.
5. **Test met echte gevallen.** Verzamel een set echte tickets en incidenten met bekende antwoorden, laat de AI erop draaien en leg vast waar ze faalt. Herhaal na elke wijziging van tool of instellingen.
6. **Verifieer beweringen en referenties.** Controleer namen, getallen, bronvermeldingen en procedures aan bronnen, zoals de gevallen van verzonnen rechtbankcitaten tonen. Accepteer nooit referenties die je niet hebt gezien.
7. **Wees eerlijk tegenover klanten.** Zeg wanneer een geautomatiseerd systeem antwoordt waar het ertoe doet en bied een makkelijke route naar een persoon.
8. **Let op bias.** Review outputs over gebruikersgroepen en soorten problemen en betrek mensen die gaten kunnen zien. Pas aan of stop het gebruik waar schade optreedt.
9. **Meet kwaliteit en effect.** Volg overrulingspercentages, foutpercentages, bespaarde tijd en meningen van gebruikers. Vergelijk met het proces zonder AI en wees sceptisch over cijfers van leveranciers.
10. **Houd vastleggingen bij.** Bewaar voor belangrijke beslissingen wat werd gevraagd en geproduceerd, wie het reviewde en wat werd besloten. Dit ondersteunt verantwoording en audit.
11. **Gebruik een risicoraamwerk.** Neem een erkende aanpak over, zoals het AI RMF van NIST of een organisatiebreed AI-beleid, om beslissingen te structureren over waar AI is toegestaan. Behandel het als gids voor denken.
12. **Train mensen.** Leer personeel hoe de tools werken, waar ze falen en wat is toegestaan. Werk de training bij naarmate tools en regels veranderen.

## Vragen om met je team te bespreken

**Waar gebruiken we al AI, officieel of niet?**

Vraag het eerlijk. Personeel gebruikt vaak openbare tools met echte tickets. Het doel is niet te straffen maar te begrijpen. Maak een lijst van de toepassingen en de betrokken gegevens. Bespreek welke acceptabel zijn en welke een veiliger route nodig hebben. Spreek een kort beleid af.

**Bij welke taak zouden we het liefst hulp willen en wat gebeurt er als de AI het fout doet?**

Kies een taak en loop het faalgeval door. Als het antwoord een verontschuldigende e-mail is, is het risico klein; als het een verkeerde instructie aan een klant is, is het risico hoger. Dit helpt toepassingen naar risico te rangschikken. Kies een eerste pilot met beperkte schade.

**Hoe zouden we weten dat een AI-antwoord fout is?**

Vraag wie antwoorden controleert en hoe. Gangbare antwoorden: niemand, of de persoon die het vroeg. Bespreek bronnen, tests en tweede reviews. Spreek een minimale controle af voor elke soort gebruik.

**Welke gegevens zijn we bereid in een AI-tool te stoppen en welke niet?**

Verzamel de typen: tickets, logs, klantnamen, inloggegevens, contracten. Markeer elk als acceptabel, acceptabel na verwijdering van gevoelige delen, of nooit. Stem af met beveiliging en juridische zaken. Schrijf het als gids van één pagina.

**Wie is verantwoordelijk wanneer een door AI ondersteunde beslissing misgaat?**

Gebruik een eerder voorbeeld van een door een tool ondersteunde beslissing. Vraag wie antwoordde. Spreek af dat een benoemde persoon verantwoordelijk blijft en welk bewijs die moet bewaren. Noteer elk gat waar niemand dat zou zijn.

**Wat zou ons overtuigen dat een tool het waard is te houden?**

Vraag het team het bewijs te beschrijven dat ze zouden accepteren: bespaarde tijd met gelijke of betere kwaliteit, minder fouten, gebruikerstevredenheid. Bespreek hoe dat in een proef te verzamelen. Spreek een reviewdatum af.

## In de praktijk: een agile ITIL-voorbeeld

De IT-servicedesk van een nationale belastingdienst handelt ongeveer 1.200 contacten per week van medewerkers af, veel over routinevragen. De deskmanager stelt een AI-assistent voor om antwoorden uit de kennisbank te suggereren en antwoorden op te stellen. De beveiligingsfunctionaris van de dienst maakt zich zorgen over persoonsgegevens in tickets en over verkeerde antwoorden die medewerkers bereiken.

Ze spreken een beperkte pilot af. De assistent werkt alleen uit goedgekeurde kennisartikelen, toont uit welk artikel elke suggestie komt en zegt wanneer ze niets relevants vindt. Analisten reviewen elk voorgesteld antwoord vóór verzending en de tool kan niet zelf verzenden. Tickets worden gescand op persoonsgegevens en inloggegevens, die worden verwijderd voordat de assistent ze ziet. Een testset van 200 eerdere tickets met bekende antwoorden wordt vóór de pilot gebruikt en het team legt vast waar de assistent faalt. De deskmanager en de beveiligingsfunctionaris spreken maten af: hoe vaak analisten suggesties bewerken of afwijzen, tijd tot eerste reactie en een korte tevredenheidsvraag voor medewerkers. De pilot loopt drie maanden en de manager rapporteert aan een gezamenlijke review met een analist en een vertegenwoordiger van het personeel.

Aan het eind accepteren analisten de meeste suggesties voor veelvoorkomende vragen en daalt de reactietijd daarvoor. De testset toont dat de assistent een zelfverzekerd maar fout antwoord geeft op vragen over een recent gewijzigd beleid, omdat het kennisartikel verouderd was. Er blijven problemen. Twee analisten begonnen suggesties met weinig controle te verzenden wanneer ze het druk hadden, een medewerker met een niet-standaardvraag kreeg een kleurloos antwoord dat het punt miste en de voorwaarden van de leverancier over gegevensbewaring waren onduidelijk. De manager voegt een regel toe dat beleidswijzigingen het kennisartikel moeten bijwerken voordat ze ingaan, gebruikt een steekproefcontrole van verzonden antwoorden door een senior analist en vraagt inkoop en de beveiligingsfunctionaris de voorwaarden te verduidelijken voordat de pilot wordt uitgebreid.

## Vier perspectieven

### Product- en leveringsteams

Leveringsteams kunnen AI-functies aan producten toevoegen en AI gebruiken om code en tests te schrijven. Controleer gegenereerde code op juistheid en beveiliging, houd geheimen uit prompts en wees duidelijk tegenover gebruikers wanneer AI betrokken is. Bouw monitoring van AI-gedrag in je service in.

### Service- en beheerteams

Beheerteams zullen AI tegenkomen in monitoring, desktools en analyse. Behandel AI-suggesties als hypothesen, test ze en houd vastleggingen bij. Help definiëren welke gegevens mogen worden gebruikt en geef feedback om het bronmateriaal te verbeteren.

### Leiderschap en governance

Leiders stellen beleid, risicobereidheid en verantwoording voor AI vast. Vraag om een gebruiksinventaris, een risicoraamwerk en bewijs uit pilots, niet om beweringen van leveranciers. Zorg dat juridisch, beveiligings- en privacypersoneel er vanaf het begin bij zijn.

### Klanten en gebruikers

Klanten en gebruikers moeten worden verteld wanneer ze met een geautomatiseerd systeem te maken hebben waar het ertoe doet en een route naar een persoon hebben. Meld foute of vreemde antwoorden, want ze zijn bewijs. Vraag verleners hoe ze je gegevens beschermen en AI-output controleren.

## Veelvoorkomende faalpatronen

- **Ongeverifieerde output vertrouwen.** Verzonnen feiten bereiken klanten. Baseer in plaats daarvan antwoorden op goedgekeurd materiaal en verifieer vóór verzending.
- **Schaduw-AI.** Medewerkers plakken echte gegevens in openbare tools. Bied in plaats daarvan goedgekeurde tools en een duidelijk gegevensbeleid.
- **Geen verantwoordelijke persoon.** Niemand staat in voor door AI ondersteunde beslissingen. Benoem in plaats daarvan een eigenaar en eis review.
- **Cijfers van leveranciers geloven.** Voordeelbeweringen blijven ongecontroleerd. Test in plaats daarvan op je eigen gevallen en meet.
- **Verouderde grounding.** De kennisbank is fout en de AI herhaalt dat. Houd in plaats daarvan artikelen actueel en met een eigenaar.
- **Verborgen bias.** Sommige gebruikers of kwesties worden slechter behandeld. Test in plaats daarvan over groepen en review outputs.
- **Automatiseren voor begrijpen.** AI handelt zonder controles in productie. Begin in plaats daarvan met suggestie en review en ga alleen met sterke waarborgen over op actie.
- **Geen vastleggingen.** Beslissingen kunnen niet worden geaudit. Houd in plaats daarvan logs bij van wat werd gevraagd, geproduceerd en besloten.

## Volwassenheidsmodel

| Dimensie | Initiëren | Ontwikkelen | Standaardiseren | Beheersen | Orkestreren |
|---|---|---|---|---|---|
| Beleid en verantwoording | Gebruik is ad hoc en niet vastgelegd | Sommige teams hebben regels | Een schriftelijk beleid, inventaris van toepassingen en benoemde eigenaren | Beleidsnaleving en incidenten worden gereviewd | Beleid is over teams, leveranciers en toezichthouders afgestemd |
| Kwaliteit en grounding | Output wordt standaard vertrouwd | Enige controles bij belangrijk gebruik | Antwoorden zijn in goedgekeurde bronnen gegrond en op echte gevallen getest | Fout- en overrulingspercentages worden gemeten en erop wordt gehandeld | Grounding en tests worden over teams gedeeld en verbeterd |
| Gegevensbescherming en redelijkheid | Gegevens worden vrij geplakt | Er bestaan enkele gegevensregels | Regels voor gegevensverwerking en biascontroles zijn routine | Gegevensincidenten en bevindingen over redelijkheid worden gevolgd en gerepareerd | Gegevens- en redelijkheidspraktijken worden over de organisatie en leveranciers gecoördineerd |
| Waarde en leren | Waarde wordt aangenomen | Enkele proeven worden gedaan | Pilots hebben afgesproken maten en beslissingen | Voordelen en kosten worden aan nulmetingen gemeten | Leren van AI-gebruik verspreidt zich voortdurend over services |

## Checklist

- [ ] We hebben een inventaris van waar AI in of rond onze services wordt gebruikt, inclusief onofficieel gebruik.
- [ ] Een benoemde persoon is verantwoordelijk voor elk door AI ondersteund gebruik.
- [ ] Een schriftelijk beleid zegt welke gegevens in welke tools mogen.
- [ ] Persoonsgegevens en geheimen worden verwijderd of gemaskeerd vóór gebruik met tools die er niet voor zijn goedgekeurd.
- [ ] Antwoorden die aan klanten worden getoond of in beslissingen worden gebruikt, zijn in goedgekeurd materiaal gegrond en gereviewd.
- [ ] We hebben een testset van echte gevallen en draaien die opnieuw na wijzigingen.
- [ ] Klanten wordt verteld wanneer een geautomatiseerd systeem antwoordt, waar het ertoe doet, en ze hebben een route naar een persoon.
- [ ] We meten overrulingspercentage, foutpercentage, bespaarde tijd en meningen van gebruikers.
- [ ] Voor belangrijke door AI ondersteunde beslissingen worden vastleggingen bewaard.
- [ ] Juridisch, beveiligings- en privacypersoneel hebben ons gebruik en de voorwaarden van de tool gereviewd.

## AI-prompts

**Doel: een AI-gebruiksinventaris opstellen uit wat mensen je vertellen.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een testset voor een AI-assistent ontwerpen.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een AI-gebruiksbeleid van één pagina voor een team schrijven.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Doel: een door AI gegenereerd antwoord reviewen voordat het een gebruiker bereikt.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## AI-vaardigheden

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): gebruik dit om duidelijke prompts te schrijven die het juiste materiaal aanleveren en om onzekerheid vragen.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): gebruik dit om te documenteren waarvoor een model dient, hoe het is getest en wat zijn grenzen zijn.
- [data-governance](../../../../skills/data-governance/SKILL.md): gebruik dit om te beslissen welke gegevens met welke tools mogen worden gebruikt.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): gebruik dit om vragen voor te bereiden voor juridisch en privacypersoneel over AI-gebruik.
- [risk-register](../../../../skills/risk-register/SKILL.md): gebruik dit om AI-gerelateerde risico's, eigenaren en behandelingen vast te leggen.

## Belangrijkste bronnen

- **AIOps** (Wikipedia): een korte beschrijving van AI voor IT-beheer, zijn capaciteiten en beweerde voordelen, zonder kritiek.
- **Hallucination (artificial intelligence)** (Wikipedia): oorzaken, voorbeelden en mitigatie-ideeën voor onjuiste output.
- **AI Risk Management Framework** (NIST): het vrijwillige raamwerk en zijn profiel voor generatieve AI; lees het raamwerk zelf voor de details.
- **ITIL certifications** (PeopleCert): de openbare verklaringen van de eigenaar over het nieuwe ITIL en zijn module voor AI-governance.

## Referenties

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
