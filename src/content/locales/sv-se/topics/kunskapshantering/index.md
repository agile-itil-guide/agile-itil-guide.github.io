# Kunskapshantering

**Kunskapshantering gör det människor vet tillgängligt för andra när de behöver det, och angreppssättet som fungerar för agila team är att fånga kunskap som en biprodukt av arbetet, hålla den kort och ägd och kombinera skrivande med samtal.**

## Varför detta är viktigt

Varje tjänst beror på kunskap: hur den fungerar, vad som gått fel förut, hur det åtgärdas och varför den byggdes som den gjorde. När den kunskapen bara finns i ett fåtal huvuden är tjänsten bräcklig. En semester, en uppsägning eller en dålig natt i jour kan förvandla en tio minuters åtgärd till ett tio timmars avbrott. Kunskapshantering är arbetssättet att se till att de som behöver veta kan ta reda på det.

Den agila traditionen lutar åt samtal och fungerande programvara framför dokumentation, och det agila manifestets författare har kritiserats för det (se Ämne 1.1 — Det agila manifestet). En rimlig läsning är att dokumentation måste förtjäna sin plats. Kunskapshantering ger ett sätt att avgöra vad som förtjänar den: kunskap som används ofta, är kostsam att återupptäcka eller innehas av för få. För resten kan samtal och parprogrammering fungera bättre.

[Wikipedia-artikeln om kunskapshantering](https://en.wikipedia.org/wiki/Knowledge_management) är bred och beskriver fältet som bearbetning av kunskap för att uppnå organisatoriska mål, skilt från innehålls- eller informationshantering. Den redovisar historia, modeller, angreppssätt, möjliggörare, hinder och kritik, och säger ingenting specifikt om IT-tjänster. Det här ämnet använder artikelns allmänna idéer och tillämpar dem på tjänsteteam, och markerar var det tillämpar och inte redovisar.

## Centrala begrepp

### Vad kunskapshantering är

Wikipedia beskriver kunskapshantering (KM) som omfattande processer för organisatorisk medvetenhet, lärande, samarbete och innovation, där kunskap används och delas för att stödja en organisations mål. Den noterar att arbetssätt som lärlingskap, företagsbibliotek och mentorskap långt föregår termen. KM växte fram som en disciplin i början av 1990-talet, där akademiker som Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport och Baruch Lev hjälpte till att utveckla fältet. Artikeln säger att ISO 9001:2015 lade till en specifikation för "organisatorisk kunskap".

### Tyst och explicit kunskap

Artikeln skiljer två former. **Tyst kunskap (tacit knowledge)** är internaliserad och ofta inte medvetet känd. **Explicit kunskap** innehas medvetet och kan lätt kommuniceras. Nonakas SECI-modell (socialisering, externalisering, kombination, internalisering), som artikeln tillskriver Nonaka och Takeuchis bok från 1995, beskriver en spiral mellan de två. Artikeln noterar också att senare forskare kallade uppdelningen en förenkling.

För ett tjänsteteam är skillnaden praktisk. En erfaren ingenjör kan ofta känna att ett larm sannolikt är brus eller att en viss release är riskabel, och kan inte lätt skriva ned varför. Något av den känslan kan göras om till runbooks och kontroller; en del kan bara delas genom att arbeta tillsammans.

### Kodifiering och personalisering

Efter Hansen och kollegor (1999) skiljer artikeln två strategier. **Kodifiering** lagrar kunskap i arkiv så att andra kan återanvända den. **Personalisering** delar kunskap genom direkt kontakt mellan människor. Var och en passar olika kunskap:

| Strategi | Passar | Exempel i ett tjänsteteam |
|---|---|---|
| Kodifiering | Upprepade, väl förstådda uppgifter | Runbooks, poster om kända fel, tjänstebeskrivningar, instruktionsartiklar |
| Personalisering | Komplexa, föränderliga eller omdömestunga frågor | Parjour, skuggning, praktikgemenskaper, designdiskussioner |

De flesta team behöver båda. En kunskapsbas med recept lär inte ut omdöme, och enbart samtal skalar inte till nattskiftet.

### Praktikgemenskaper

Artikeln listar praktikgemenskaper (communities of practice) bland perspektiven på KM. I en tjänsteorganisation kan de vara så enkla som ett regelbundet informellt möte mellan människor som arbetar med liknande problem över team, som databasingenjörer eller deskanalytiker. De sprider kunskap och normer och ger människor ett ställe att fråga.

### Vad som ska fångas

Inte allt förtjänar ett register. Användbara kandidater i ett tjänsteteam omfattar:

- **Hur man återställer en tjänst:** runbooks och återställningssteg (se Ämne 3.2 — Incidenthantering).
- **Kända fel och tillfälliga lösningar:** symptom, tillfällig lösning och ägare (se Ämne 3.3 — Problemhantering).
- **Tjänstebeskrivningar:** vad en tjänst gör, vem som äger den och vad den beror på (se Ämne 3.8 — Hantering av tjänstekatalog).
- **Beslut och deras skäl:** varför en design valdes, så att framtida ändringar inte blint ogör den.
- **Lärdomar från incidenter:** efteranalyser som andra kan läsa.
- **Svar på vanliga användarfrågor:** korta artiklar för servicedesken och för självbetjäning.

### Möjliggörare och hinder

Artikeln nämner människor och kultur, processer och struktur samt teknik som kärnkomponenter. Den noterar att motiv omfattar innovation, kortare utvecklingscykler och att dra nytta av expertis, och att organisationer använder incitament som obligatoriskt inlämnande av innehåll, men den säger att det inte råder konsensus om huruvida incitament fungerar. Den listar hinder som kunskap som inte överförs, otillräcklig utbildning och förlusten av kunskap när erfarna medarbetare lämnar. För tjänsteteam är de hinder som betyder mest tidspress, oklart ägarskap av innehåll, verktyg som är krångliga att använda och en kultur som belönar hjälteinsatser framför delande.

### Kunskap i arbetsflödet

En praktisk princip, allmänt använd på servicedeskar, är att fånga kunskap som en del av arbetet och inte som en separat uppgift. När en analytiker löser ett nytt problem blir lösningen ett utkast till artikel innan ärendet stängs. När en ingenjör åtgärdar en incident hamnar stegen i runbooken. Det gör varje arbetsinsats till ett litet bidrag. Källorna som lästs för den här guiden beskriver inte någon särskild metod för detta, så betrakta principen som vanlig praxis att pröva, och se vad som fungerar med era verktyg.

### Kritik och gränser

Artikeln redovisar kritik: att den praktiska relevansen av akademisk KM-forskning har ifrågasatts, att skillnaden mellan tyst och explicit har kritiserats, att incitamentens effektivitet är omstridd och att skydd av kunskap medför risker som överskydd och olovligt tillägnande. Den redovisar inget uppmätt belägg för KM:s effektivitet eller avkastning på investeringen. För ett tjänsteteam är lärdomen blygsam ambition: börja med den kunskap vars frånvaro har gjort ont, mät om den används och släpp det som inte används.

### Kunskap och organisatoriskt lärande

Artikeln säger att KM liknar organisatoriskt lärande men lägger större vikt vid kunskap som en strategisk tillgång och vid informationsdelning, och att KM underlättar organisatoriskt lärande. Detta länkar till agilt lärande (se Ämne 1.10 — Agilt lärande) och till ständig förbättring (se Ämne 3.15 — Ständig förbättring).

## Bästa praxis

1. **Börja med den kunskap vars frånvaro har gjort ont.** Lista de senaste incidenterna eller förseningarna orsakade av saknad kunskap. Börja med dessa ämnen, inte med ett försök att dokumentera allt.
2. **Fånga kunskap i stunden av arbete.** Gör det till en del av att stänga en incident, en förfrågan eller en ändring att skriva en kort anteckning. En grov anteckning skriven nu är mer värdefull än en polerad artikel planerad till senare.
3. **Håll artiklar korta och strukturerade.** Använd en konsekvent form: symptom, orsak om den är känd, steg, när man ska eskalera, ägare, datum för senaste granskning. Människor under press läser rubriker och numrerade steg.
4. **Ge varje artikel en ägare och ett granskningsdatum.** Innehåll utan ägare förfaller. Visa granskningsdatumet på artikeln så att läsare kan bedöma tillförlitligheten.
5. **Ta bort och slå ihop.** Avveckla artiklar ingen använder och slå ihop dubbletter. En mindre, aktuell bas är bättre än en stor, föråldrad.
6. **Gör den lätt att hitta.** Lägg kunskap där människor redan arbetar, pröva sökning med verkliga frågor och länka artiklar från ärenden, tjänstekatalogen (ITIL skriver "service catalogue") och runbooks.
7. **Pröva runbooks genom att använda dem.** Be den som ska använda en runbook följa den på ett testfall. Åtgärda det som är oklart. Det gör ett dokument till fungerande kunskap.
8. **Para och skugga för det tysta.** Låt mindre erfarna arbeta med erfarna på verkliga incidenter och ändringar. Planera parningen, eftersom den inte sker när alla har fullt upp.
9. **Stöd praktikgemenskaper.** Ge människor tid och en plats att mötas över team. Låt ämnena komma från medlemmarna.
10. **Registrera beslut och skäl.** För en kort post över viktiga design- och processbeslut och varför de fattades. Det förhindrar återupptäckt och hjälper nykomlingar.
11. **Dela lärdomarna.** Publicera efteranalyser och problemsammanfattningar brett, i enkla ord, och fråga andra team vad som gäller dem (se Ämne 3.2 — Incidenthantering).
12. **Bevaka kunskapsrisk.** En gång per kvartal, lista de färdigheter och system som beror på en person och planera att sprida dem. Behandla avgångar som en anledning till granskning.

## Frågor att diskutera med teamet

**Vad skulle vi inte kunna göra om en namngiven person var borta en månad?**

Be teamet nämna personer vars frånvaro skulle göra ont och varför. Lista de uppgifter som beror på dem. Det är vanligtvis en lång lista, och obekväm för de namngivna. Rama in det som en risk för tjänsten, inte ett omdöme. Facilitatorn kan fråga vilken uppgift som är mest brådskande att dela och hur. Välj en att börja med.

**Vad skriver vi ned, och läser någon det?**

Be om de tre senaste dokument människor använde och de tre senaste de skrev. Jämför. Gapet visar var dokumentationsinsatsen är felplacerad. Fråga hur en användbar version av de olästa dokumenten skulle se ut, eller om de bör tas bort. Kom överens om att avveckla eller åtgärda ett.

**När vi åtgärdar något nytt, vart tar kunskapen vägen?**

Följ det senaste nya problemet: vem som åtgärdade det, vem som vet hur och var det registrerades. Om svaret är "i ett ärende" eller "i mitt huvud", diskutera hur en bättre väg skulle se ut. Ofta gör en liten vana, som en mall vid stängning, skillnad. Pröva en under en månad.

**Vilken kunskap delas bäst genom att arbeta tillsammans, inte genom att skriva?**

Fråga var omdöme betyder något: att läsa en graf, att avgöra när man ska eskalera, att känna en kund. Diskutera hur nykomlingar lär sig detta i dag. Typiska svar är tur och tid. Planera ett medvetet upplägg, som skuggning i jour. Kom överens om vem som ska para med vem.

**Hur vet vi om en kunskapsartikel fortfarande stämmer?**

Välj en artikel och pröva den. Kontrollera ägaren, granskningsdatumet och om stegen fungerar. Många faller i testet. Fråga vilken granskningscykel som är realistisk och vem som kan avveckla artiklar. Målet är ett synligt tecken på tillförlitlighet på varje artikel.

**Vad hindrar oss från att dela det vi vet?**

Samla ärliga svar: ingen tid, rädsla för att se dum ut, ingen självklar plats, ingen uppskattning. Wikipedia-artikeln noterar att incitamentens effektivitet är omstridd, så undvik enkla svar. Fråga vilket hinder teamet kunde ändra och vilket som behöver ledningen. Förbind er till en synlig förändring.

## I praktiken: ett agilt ITIL-exempel

Ett nationellt järnvägsbolags team för resenärsinformation, på fjorton personer, driver systemen bakom stationernas skärmar och tidtabellsappen. Den mest erfarna ingenjören, som byggde skärmstyrenheten, meddelar sin pensionering om sex månader. Ingen annan förstår hur styrenheten hanterar fel, och dokumentationen är ett designdokument på 200 sidor skrivet för tio år sedan.

Teamledaren listar vad ingenjören vet som andra inte vet. Han får tre grupper: hur styrenheten återställs efter ett fel (explicit och upprepbart), varför vissa underliga beteenden finns (delvis skrivet, delvis i minnet) och hur man bedömer när ett fel är allvarligt (tyst). För det första skriver teamet runbooks tillsammans med ingenjören och prövar var och en genom att låta en kollega följa den på en testenhet. För det andra intervjuar ett par ingenjörer honom varje vecka och skriver korta beslutsanteckningar i en gemensam mapp, var och en med en ägare. För det tredje skuggar en mindre erfaren ingenjör honom vid varje incident i jour under sex månader och tar ledningen i några medan han tittar på.

Efter sex månader kan tre ingenjörer hantera styrenhetsfel, dokumentet på 200 sidor har ersatts av elva korta runbooks och tjugo beslutsanteckningar, och teamet har en månatlig session där en person förklarar något hen kan. Problem återstår. Två runbooks fallerade när de prövades på en annan maskinvaruversion och fick skrivas om, och det tysta omdömet har bara delvis överförts: den skuggande ingenjören säger att vissa avgöranden fortfarande känns som gissningar. Teamet planerar en andra omgång skuggning med den pensionerande ingenjörens efterträdare och kommer överens om att granska runbooks varje kvartal.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam innehar mycket av kunskapen om hur tjänster byggs. Skriv korta runbooks och beslutsanteckningar som en del av er definition av klart och pröva dem med dem som ska använda dem. Dela designskäl med driften så att ändringar inte ogör dem.

### Tjänste- och driftteam

Driftteam genererar och använder mycket av den dagliga kunskapen. Fånga lösningar när ni stänger ärenden, håll kända fel aktuella och be leveransteam om det ni behöver. Gör artiklar lätta att hitta för deskken och för självbetjäning.

### Ledning och styrning

Ledare formar om delande belönas eller avskräcks. Wikipedia-artikeln säger att incitament är omstridda, så fokusera på att ta bort hinder: ge tid, gör verktygen enkla och belöna människor som hjälper andra. Följ kunskapsrisk, som enskilda expertispunkter, på samma sätt som andra tjänsterisker.

### Kunder och användare

Kunder och användare har nytta av tydliga svar och självbetjäningsartiklar. Tala om för teamet när en artikel är fel eller saknas. Fråga leverantörer hur de lär sig av incidenter och hur de delar det de lär sig med dig.

## Vanliga orsaker till misslyckande

- **Att dokumentera allt.** Basen blir stor och föråldrad. Börja i stället med kunskap vars frånvaro har gjort ont och lägg till efter behov.
- **Skrivande skilt från arbetet.** Fångst blir ett åliggande i efterhand. Gör i stället en kort anteckning till en del av att stänga arbetet.
- **Inga ägare.** Ingen uppdaterar artiklar. Utse i stället en ägare och ett granskningsdatum för varje.
- **Dålig sökning.** Människor hittar inte det som finns, så de skriver dubbletter. Pröva i stället sökning med verkliga frågor och länka artiklar därifrån människor arbetar.
- **Att ignorera det tysta.** Allt antas vara skrivbart. Planera i stället parning, skuggning och praktikgemenskaper.
- **Oprövade runbooks.** Steg fallerar när de behövs. Låt i stället en användare följa varje runbook på ett testfall.
- **Hamstring som status.** Människor skyddar kunskap för att skydda sin position. Erkänn i stället delande och sprid beroendet.
- **Att påbjuda innehåll.** Kvantitetsmål ger tunna artiklar. Fokusera i stället på användning och kvalitet och kom ihåg att incitamentens effekt är omstridd.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Fånga kunskap | Kunskap bor i huvuden och chatt | Vissa team för anteckningar och runbooks | Att fånga en anteckning är en del av att stänga arbete | Fångstgrad och användbarhet granskas | Kunskapsfångst delas mellan team och leverantörer |
| Kvalitet och ägarskap | Inga ägare; innehåll förfaller | Vissa artiklar har ägare | Varje artikel har en ägare och ett granskningsdatum | Riktighet och användning mäts; föråldrat innehåll tas bort | Kvalitetsarbetssätt delas och förbättras i hela organisationen |
| Sökbarhet och användning | Sökningen är dålig; människor frågar varandra | Visst innehåll länkas från ärenden | Kunskap länkas från ärenden, katalog och runbooks | Användning och sökmisslyckanden mäts och åtgärdas | Kunskap är tillgänglig för användare, leverantörer och partner efter behov |
| Att dela det tysta | Delande sker av en slump | Viss parning och skuggning sker | Parning, skuggning och praktikgemenskaper är planerade | Kunskapsrisk följs och minskas | Gemenskaper och rotation flyttar kunskap över team rutinmässigt |

## Checklista

- [ ] Vi har listat den kunskap vars frånvaro har gjort ont och börjat där.
- [ ] Att stänga en incident, förfrågan eller ändring inkluderar en kort anteckning när något var nytt.
- [ ] Artiklar följer en kort gemensam struktur med en ägare och ett granskningsdatum.
- [ ] Runbooks har prövats av någon som inte skrev dem.
- [ ] Sökning fungerar för verkliga frågor, och artiklar länkas från ärenden och tjänstekatalogen.
- [ ] Oanvända och duplicerade artiklar avvecklas.
- [ ] Vi har en plan för att sprida kunskap som innehas av en person.
- [ ] Parning eller skuggning är planerad för omdömestungt arbete.
- [ ] Lärdomar från incidenter delas utanför teamet.
- [ ] Vi granskar kunskapsrisk minst kvartalsvis.

## AI-prompter

**Syfte: göra ett löst ärende till ett utkast till kunskapsartikel.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Syfte: hitta kunskapsrisk i ert team.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: granska en runbook för tydlighet innan den prövas.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Syfte: planera en kunskapsöverlämning för någon som slutar.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [runbook](../../../../skills/runbook/SKILL.md): använd för att skriva steg-för-steg-förfaranden som någon annan kan följa under press.
- [postmortem](../../../../skills/postmortem/SKILL.md): använd för att registrera lärdomar från incidenter i en form andra kan läsa.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): använd för att registrera varför ett designbeslut fattades.
- [decision-records](../../../../skills/decision-records/SKILL.md): använd för att föra ett kort register över viktiga icke-arkitektoniska beslut.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): använd för att hitta kompetensgap som kunskapsdelning bör åtgärda.

## Viktiga källor

- **Knowledge management** (Wikipedia): en bred översikt av fältets historia, modeller, angreppssätt och kritik.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): hur en organisation delar lärdomar från incidenter.
- **Tacit knowledge** (Wikipedia): bakgrund om den kunskap som är svår att skriva ned.
- **Community of practice** (Wikipedia): bakgrund om tvärgående grupper som delar kunskap.

## Referenser

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
