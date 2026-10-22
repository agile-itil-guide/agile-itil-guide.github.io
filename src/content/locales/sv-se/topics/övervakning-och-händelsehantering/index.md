# Övervakning och händelsehantering

**Övervakning talar om för dig om en tjänst fungerar så som användare upplever den, och god händelsehantering gör en flod av signaler till ett litet antal larm som en person kan förstå och agera på.**

## Varför detta är viktigt

En tjänst du inte kan se är en tjänst du inte kan driva. Utan övervakning får ett team veta om fel från användare, och om långsam nedbrytning från ingen. Med dålig övervakning är problemet det omvända: så många larm att jouringenjören slutar tro på dem, och det som betyder något försvinner i bruset. Båda ytterligheterna kostar sömn, förtroende och tid.

Övervakning och händelsehantering avgör också hur snabbt en incident kan hittas och åtgärdas. Allt i incidenthantering beror på att snabbt veta att något är fel och ha tillräckligt med information för att ta reda på varför (se Ämne 3.2 — Incidenthantering). Agila team som släpper ofta behöver detta ännu mer, eftersom varje release är en chans att förstöra något och varje beslut om återställning beror på att se effekten.

Googles bok *Site Reliability Engineering* har två kapitel som tar upp ämnet direkt: "Monitoring Distributed Systems" och "Practical Alerting from Time-Series Data". De beskriver en organisations praxis och argumenterar för ett medvetet enkelt, användarfokuserat angreppssätt. Det här ämnet använder dem som huvudkälla, eftersom de Wikipedia-artiklar som konsulterats för den här guiden ger lite om arbetssättet. ITIL-ordförrådet här, som händelse, larm och händelsehantering, är hämtat från allmänt publicerade beskrivningar som den här guiden inte kunde bekräfta mot ramverksägarens text. Läs SRE-kapitlen som ett väl förklarat alternativ.

## Centrala begrepp

### Övervakning

SRE-kapitlet definierar **övervakning (monitoring)** som att samla in, bearbeta och visa kvantitativa realtidsdata om ett system. Det säger att övervakning stöder långsiktig trendanalys, jämförelse mellan experiment, larm, instrumentpaneler och ad hoc-felsökning i efterhand. Det betonar att övervakning är en betydande ingenjörsinsats och att team vanligtvis tilldelar minst en person åt den.

### Händelser, larm och incidenter

I ITSM-språkbruk är en **händelse (event)** en tillståndsförändring som har betydelse för hanteringen av en tjänst. De flesta händelser är informativa. Vissa indikerar en varning eller ett undantag. Ett **larm (alert)** är, som SRE-kapitlet uttrycker det, en notifiering till en människa, levererad som ett ärende, ett e-postmeddelande eller en personsökning. En **incident** är ett oplanerat avbrott eller en kvalitetsförsämring (se Ämne 3.2 — Incidenthantering). Händelsehantering är arbetssättet att avgöra vilka händelser som betyder något, vad som ska göras åt dem och vem som ska underrättas. Flödet är händelser till larm till, ibland, incidenter.

### Svartlåde- och vitlådeövervakning

Kapitlet skiljer två slag:

| Slag | Vad det gör | Styrka |
|---|---|---|
| **Svart låda (black-box)** | Testar externt synligt beteende, så som en användare skulle se det | Upptäcker pågående problem; lämpar sig för personsökning |
| **Vit låda (white-box)** | Använder mått som systemets inre exponerar, som loggar eller interna hanterare | Avslöjar förestående problem och fel som maskeras av omförsök; avgörande för felsökning |

Boken kombinerar båda. En svartlådeprob talar om att kassan fallerar; vitlådedata hjälper dig ta reda på varför.

### Symptom och orsaker

Kapitlet säger att övervakning bör besvara två frågor: vad som är trasigt och varför. Det råder att fokusera larm på symptom, alltså vad användare upplever, och att bara sända personsökning på orsaker när de är säkra och förestående. Att en enskild maskin fallerar är, med dess ord i larmkapitlet, inte acceptabelt att larmas om, eftersom det är för bullrigt. Detta är kärnan i ett gott larmangreppssätt: tala om för en människa när användare är eller kommer att bli drabbade, inte varje gång en del ryckar till.

### De fyra gyllene signalerna

Kapitlet föreslår fyra signaler att bevaka för ett användarvänt system:

- **Latens:** tiden att betjäna en förfrågan. Följ misslyckade förfrågningar separat, eftersom ett "långsamt fel är ännu värre än ett snabbt fel".
- **Trafik:** efterfrågan på systemet.
- **Fel:** misslyckade förfrågningar, vare sig uttryckliga, underförstådda eller genom policy.
- **Mättnad:** hur "fullt" tjänsten är. Prestanda försämras ofta före 100 procents utnyttjande.

Dessa motsvarar naturligt servicenivåindikatorer (se Ämne 3.7 — Hantering av servicenivåer). Kapitlet varnar också för att medelvärden döljer långsamma avvikare och föreslår att registrera antal förfrågningar i latenskorgar för att se fördelningen.

### Vad som gör ett bra larm

Kapitlet erbjuder frågor att ställa innan man skriver ett larm: upptäcker det ett brådskande, åtgärdbart, användarsynligt tillstånd; kan det säkert ignoreras; och kan svaret automatiseras? Personsökningar bör vara åtgärdbara, kräva omdöme och gälla nya problem. Det säger att larm aldrig bör utlösas enbart för att "något verkar lite konstigt". Personsökningar vars svar är rutinmässiga och algoritmiska är enligt kapitlet en varningsflagga som kräver automatisering eller åtgärd av grundorsaken.

### Dirigering av larm

Larmkapitlet beskriver att skicka personsökningsvärdiga larm till jourpersonal, underkritiska till ärendeköer och resten till statuspaneler. Det beskriver verktyg för att dirigera, avduplicera och hämma larm och noterar att larm bör vänta en minsta varaktighet innan de utlöses eftersom de kan fladdra. Det varnar för att "du kan bara larma om de fel du förväntade dig", vilket är varför det är viktigt att kombinera svartlådeprober med vitlådedata.

### Håll det enkelt

Kapitlet argumenterar för enkla, snabba system framför "magi" som lär sig tröskelvärden eller upptäcker kausalitet, och noterar att komplexa beroendehierarkier haft begränsad framgång. Det säger att hålla regler som fångar verkliga incidenter enkla, ta bort sällan använda larm och oanvända signaler och låta underhållskostnaderna växa långsammare än tjänstens storlek. De fall det beskriver, som ett team överväldigat av larm som tillfälligt lättade sitt mål och stängde av e-postlarm för att frigöra tid för bestående åtgärder, visar en vilja att ta bort brus.

### Instrumentpaneler och långsiktiga vyer

Kapitlet behandlar instrumentpaneler som förbyggda sammanfattningsvyer av en tjänsts nyckelmått och säger att instrumentpaneler är bättre än e-postlarm, som det kallar av mycket begränsat värde. Det rekommenderar också att granska personsökningsfrekvens över tid, till exempel i kvartalsrapporter, för att hålla ledningen informerad om jourbelastningen. Det gör larmkvalitet till något chefer kan se (se Ämne 1.2 — Agila principer om hållbar takt).

### Källornas gränser

SRE-kapitlen ger inga tröskelvärden utöver ett enda genomgånget exempel, diskuterar inte runbooks eller gränser för jourbelastning och beskriver inte hur man granskar och avvecklar larm över tid, så det är frågor för er egen praxis. De kommer från en stor organisation med starka ingenjörsresurser. Mindre team kan tillämpa principerna med enklare verktyg.

## Bästa praxis

1. **Övervaka vad användare upplever.** Lägg till minst en svartlådeprob som utför en verklig användarhandling, som att logga in eller lägga en beställning, och larma när den fallerar.
2. **Bevaka de fyra gyllene signalerna.** Följ för varje tjänst latens, trafik, fel och mättnad. Lägg till andra mått bara om de besvarar en fråga ni har ställt.
3. **Larma på symptom.** Sänd personsökning när användare är eller snart blir drabbade. Behandla interna tillstånd, som en enskild fallerad maskin, som information med lägre prioritet om de inte är säkra och förestående.
4. **Gör varje personsökning åtgärdbar.** Innan ni skapar ett larm, skriv vad den som svarar ska göra. Om det inte finns något att göra är det ingen personsökning.
5. **Dirigera efter brådska.** Skicka brådskande larm till jour, mindre brådskande till en ärendekö och information till en instrumentpanel. Skicka inte e-postlarm till människor som kommer att ignorera dem.
6. **Använd fördelningar, inte bara medelvärden.** Titta på höga percentiler för latens, eller korgar, så att långsamma avvikare syns.
7. **Sätt en minsta varaktighet.** Kräv att ett tillstånd håller i sig en kort tid innan larm, för att undvika fladder. Justera varaktigheten med verkliga data.
8. **Avveckla bullriga larm.** Granska vilka larm som utlöses oftast och ledde till ingen åtgärd. Ta bort eller åtgärda dem. SRE-kapitlet behandlar rutinmässiga svar som en signal för automatisering eller reparation.
9. **Testa er övervakning.** Förstör avsiktligt något i en testmiljö och kontrollera att rätt larm utlöses. Inkludera själva övervakningssystemet i kontrollerna, så att dess fel märks.
10. **Granska jourbelastningen.** Räkna personsökningar per skift, avbrott utanför kontorstid och falsklarm varje kvartal. Dela resultaten med chefer och använd dem i planeringen.
11. **Ha övervakning i definitionen av klart.** Fråga för varje ny funktion vilka signaler som visar om den fungerar och vilket larm, om något, den behöver (se Ämne 3.5 — Release- och driftsättningshantering).
12. **Håll det enkelt.** Föredra några få begripliga regler framför ett komplext system. Ta bort oanvända signaler och granska regler efter incidenter.

## Frågor att diskutera med teamet

**Hur fick vi veta om våra tre senaste incidenter?**

Lista varje incident och hur den först upptäcktes: ett larm, en användare, en kollega. Om de flesta kom från användare missar övervakningen de symptom som betyder något. Facilitatorn kan fråga vad en prob hade visat. Välj en användarhandling att övervaka först.

**Vilka larm ignorerar vi, och varför?**

Fråga jouringenjörer om de larm de tystar eller hoppar över. Vart och ett är en kandidat att åtgärda eller ta bort. Fråga vad som får människor att lita på eller misstro ett larm. Ett uppriktigt svar avslöjar ofta larm som utlöses på tillstånd ingen kan agera på. Kom överens om att avveckla eller åtgärda tre.

**Vad är den värsta natten vi har haft i jour, och vad hade gjort den bättre?**

Samla berättelser utan skuldbeläggning. Leta efter mönster: upprepade personsökningar, oklara larm, brist på runbooks, ingen eskalering. Varje mönster är en förbättring. Fråga vilka två förändringar som skulle hjälpa mest. Målet är en lättare belastning och en tydligare signal.

**Om vårt övervakningssystem fallerade, hur skulle vi veta det?**

Fråga vem som bevakar bevakaren. Många team har ingen kontroll av att övervakningen fungerar. Diskutera en enkel hjärtslagssignal eller en prob från ett separat system. Kom överens om en kontroll att lägga till.

**Vad visar våra instrumentpaneler, och vem tittar på dem?**

Lista instrumentpanelerna och fråga vem som använde var och en den senaste månaden. Oanvända instrumentpaneler är skräp; användbara berättar en historia om tjänsten. Fråga vilken fråga var och en besvarar. Behåll en liten uppsättning som besvarar verkliga frågor.

**Hur skulle vi veta att en release gjorde saker värre?**

Välj en nylig release och fråga vilken signal som skulle visa ett problem. Om svaret är "vi skulle höra från användare", diskutera vilka signaler som ska bevakas efter en release och vem som ansvarar. Den här frågan länkar övervakning till driftsättning. Skriv en kort checklista för efter release.

## I praktiken: ett agilt ITIL-exempel

En stads kollektivtrafikmyndighet driver en reseplanerarwebbplats och -app som används av 400 000 människor om dagen. Ett plattformsteam på tio äger tjänsten med ett jourschema på fyra. Teamet har hundratals larm: processorbelastning på varje server, diskutrymme, könivåer och felantal. Jouringenjörer får 40 personsökningar en typisk vecka, de flesta utanför kontorstid, och två incidenter under det senaste kvartalet rapporterades först av användare i sociala medier.

Teamledaren och en ingenjör granskar tre månaders personsökningar. De finner att tre fjärdedelar gällde tillstånd som inte krävde någon åtgärd eller som löstes av sig själva. De kommer överens om att följa ett enkelt angreppssätt från SRE-boken: larma på vad användare upplever. De lägger till en prob som planerar en standardresa varje minut och mäter framgång och hastighet, och de behåller en liten uppsättning larm på mättnad av databasen och kön. De flyttar resten till en instrumentpanel och ett dagligt ärende. Varje kvarvarande personsökning får en kort runbook-post som säger vad som ska kontrolleras.

Efter en månad sjunker personsökningarna till ungefär fem i veckan, och de två incidenter som följde upptäcktes båda av proben innan användare klagade. Vissa problem återstår. Proben täcker bara en resetyp, och ett fel som påverkade cykelresor gick obemärkt i ett dygn. En ingenjör rapporterar också att beslutet att "flytta till instrumentpanelen" dolde ett långsamt diskproblem som senare orsakade ett fel. Teamet lägger till prober för andra resetyper, lägger en daglig granskning av instrumentpanelen i jourschemat och kommer överens om att granska jourbelastningen varje kvartal.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam vet vad programvaran är avsedd att göra och var den sannolikt fallerar. Bygg in signalerna i koden: användbara loggar, mått och hälsokontroller. Definiera prober för viktiga användarhandlingar och behandla övervakning som en del av klart. Delta i larmgranskningar så att personsökningar speglar verkliga problem.

### Tjänste- och driftteam

Driftteam bär personsökaren och instrumentpanelerna. Håll larm få och åtgärdbara, dirigera efter brådska och följ jourbelastningen. Skicka bullriga larm tillbaka till de team som äger dem, med belägg, och dela vad ni lär er av incidenter om vad som ska bevakas.

### Ledning och styrning

Ledare bör be om data om jourbelastning och incidentupptäckt, inte om fler larm. Stöd tid för att avveckla brus och lägga till användbara signaler. Behandla ett ökande antal personsökningar utanför kontorstid som en risk för tjänsten och för människor.

### Kunder och användare

Kunder och användare har nytta när problem upptäcks innan de märker dem. Rapportera problem med detaljer, som vad du försökte och när, eftersom det hjälper att justera övervakningen. Fråga leverantörer hur de upptäcker fel och hur snabbt, och om de publicerar statusinformation.

## Vanliga orsaker till misslyckande

- **Att larma om allt.** Personsökaren går ständigt och förtroendet går förlorat. Sänd i stället personsökning på symptom och skicka resten till ärenden eller instrumentpaneler.
- **Att övervaka system, inte användare.** Alla maskiner är gröna medan användare inte kan logga in. Lägg i stället till svartlådeprober av verkliga användarhandlingar.
- **Ingen åtgärd kopplad.** Personsökningar kommer med inget att göra. Kräv i stället att varje personsökning har ett beskrivet svar, eller ta bort den.
- **Bara medelvärden.** En grupp användare lider medan medelvärdet ser bra ut. Titta i stället på höga percentiler eller fördelningar.
- **Komplexa, smarta regler.** Inlärda tröskelvärden och beroendeträd förvirrar dem som svarar. Föredra i stället enkla, begripliga regler.
- **Obevakad övervakning.** Övervakningssystemet fallerar tyst. Kontrollera det i stället med hjärtslag och tester.
- **Rutinmässiga svar.** Människor upprepar samma åtgärd efter varje personsökning. Automatisera i stället svaret eller åtgärda orsaken.
- **Att ignorera jourbelastning.** Nattliga personsökningar behandlas som normala. Mät och granska dem i stället och behandla hög belastning som en risk.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Synlighet av användarupplevelsen | Användare rapporterar de flesta problem | Vissa tjänster har prober eller mått för användarhandlingar | Viktiga användarhandlingar probas och gyllene signaler följs för varje tjänst | Upptäcktstid och täckning mäts och gap åtgärdas | Övervakning delas mellan team, leverantörer och kunder |
| Larmkvalitet | Många larm, lite åtgärd | Vissa team rensar larm | Personsökningar är symptombaserade, åtgärdbara och dirigeras efter brådska | Larmprecision och brus mäts och granskas | Larmdesign förbättras mellan team utifrån delade belägg |
| Svar och automatisering | Svar improviseras | Vissa runbooks finns | Personsökningar länkar till runbooks och rutinmässiga svar automatiseras | Svarstid och automatiseringsanvändning mäts | Svar samordnas mellan team och leverantörer |
| Människor och belastning | Jourbelastning följs inte | Vissa team räknar personsökningar | Jourbelastning granskas varje kvartal | Belastning balanseras och minskas utifrån data | Belastning och lärande delas mellan team och speglas i planeringen |

## Checklista

- [ ] Varje viktig tjänst har minst en prob av en verklig användarhandling.
- [ ] Vi följer latens, trafik, fel och mättnad för varje tjänst.
- [ ] Varje personsökning har ett skrivet svar och gäller ett användarsynligt eller förestående tillstånd.
- [ ] Larm dirigeras efter brådska till jour, ärenden eller instrumentpaneler.
- [ ] Höga percentiler eller fördelningar är synliga för latens.
- [ ] Vi granskar vilka larm som utlöses oftast och avvecklar de som inte leder till någon åtgärd.
- [ ] Själva övervakningssystemet kontrolleras.
- [ ] Jourbelastning (personsökningar per skift, avbrott utanför kontorstid) granskas varje kvartal.
- [ ] Nya funktioner inkluderar övervakning i sin definition av klart.
- [ ] Efter varje release kontrollerar någon signalerna mot en kort lista.

## AI-prompter

**Syfte: granska en lista över larm för brus och åtgärdbarhet.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Syfte: definiera en prob för en användarresa.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva svarsavsnittet för ett larm.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda en kvartalsvis granskning av jourbelastning.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## AI-färdigheter

- [runbook](../../../../skills/runbook/SKILL.md): använd för att skriva svaret som hör till varje personsökning.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): använd för att utforma ett rättvist jourschema och planera hur jourbelastningen delas och granskas.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): använd för att välja och tolka mått på tjänste- och leveransprestanda.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): använd för att kontrollera latens och mättnad under belastning innan problem når användare.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): använd för att testa att fel upptäcks och hanteras genom att avsiktligt orsaka dem i en säker miljö.

## Viktiga källor

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definitioner, de fyra gyllene signalerna, symptom mot orsaker och råd om enkel larmning.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): hur larmregler, dirigering och fladder fungerar i praktiken.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): kopplingen mellan indikatorer, mål och larm.
- **IT service management** (Wikipedia): övervakningens och incidenternas plats i ITSM.

## Referenser

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
