# Mått och mätning

**God mätning hjälper ett team att se om dess arbete hjälper användare och blir bättre, och det säkraste sättet att använda ett mått är som en fråga att diskutera, aldrig som ett mål att nå.**

## Varför detta är viktigt

Team behöver tal för att styra. Utan dem bygger beslut på minne, högljudda röster och den som talade sist. Med fel tal kan beslut bli sämre än inga alls: ett team som räknar stängda ärenden lär sig att stänga ärenden snabbt, oavsett om användarnas problem blir lösta. Mätning är kraftfull, och den förändrar beteende på sätt som dess utformare inte alltid avser.

Den här guiden har redan använt många mått: DORA:s mått på programvaruleverans (se Ämne 3.4 — Ändringsmöjliggörande), Kanban Guides fyra flödesmått (se Ämne 1.5 — Kanban), servicenivåindikatorer och -mål (se Ämne 3.7 — Hantering av servicenivåer) och jourbelastning (se Ämne 3.10 — Övervakning och händelsehantering). Det här ämnet för samman dem, lägger till målsättning med mål och nyckelresultat samt mått på kundnöjdhet, och ställer dem mot den äldsta varningen på fältet: Goodharts lag.

[Wikipedia-artikeln om Goodharts lag](https://en.wikipedia.org/wiki/Goodhart%27s_law) ger talesättet i dess vanliga form, "När ett mått blir ett mål upphör det att vara ett bra mått", och tillskriver det den brittiske nationalekonomen Charles Goodhart, som i en artikel från 1975 om brittisk penningpolitik skrev att varje observerad statistisk regelbundenhet tenderar att kollapsa när tryck läggs på den för styrändamål. Den vanliga formuleringen är senare, och artikeln tillskriver den Keith Hoskin (1996) och Marilyn Stratherns uppsats från 1997. Poängen har en lång historia inom olika fält, och den är den rätta utgångspunkten för det här ämnet.

## Centrala begrepp

### Mått, mål och Goodharts lag

Ett **mått (measure)** beskriver något. Ett **mål (target)** är ett tal någon förväntas nå. Övergången från det första till det andra är där problemen börjar. När människor belönas eller straffas för ett tal hittar de sätt att flytta talet som inte är detsamma som att förbättra det talet beskriver. Artikeln ger exempel från penningpolitik, skolsystem och sjukvård. I en tjänsteorganisation är lätta exempel: tid till stängning av ärenden faller därför att ärenden stängs tidigt, antalet driftsättningar stiger därför att ändringar delas upp, och tillgängligheten verkar stiga därför att avbrott omklassificeras.

Botemedlet är inte att undvika att mäta utan att mäta noggrant:

- Använd flera mått som drar åt motsatta håll, som fart och kvalitet.
- Diskutera talen med de människor vars arbete de beskriver.
- Knyt inte individuella belöningar eller disciplinåtgärder till ett enda tal.
- Byt mått när de slutar vara informativa.

### Slags mått

| Slag | Fråga det besvarar | Exempel |
|---|---|---|
| **Resultat** | Har användare och verksamheten det bättre? | Användarnöjdhet, uppgiftsframgång, intäkter, incidenter som skadar användare |
| **Flöde** | Hur väl rör sig arbetet? | Cykeltid, genomflöde, arbetspostens ålder, pågående arbete |
| **Leveransprestanda** | Hur väl når ändringar produktion? | Ledtid för ändring, driftsättningsfrekvens, andel misslyckade ändringar, återställningstid |
| **Servicenivå** | Möter tjänsten användarnas behov? | Tillgänglighet, latens, felfrekvens mot mål |
| **Hälsa och hållbarhet** | Kan detta fortsätta? | Jourbelastning, toil, övertid, personalens upplevelse |
| **Kostnad** | Vad kostar det per enhet värde? | Kostnad per transaktion eller per användare |

En balanserad uppsättning hämtar från flera rader, så att förbättring av ett inte köps på bekostnad av ett annat.

### DORA-måtten

DORA:s mått på programvaruleveransens prestanda är ledtid för ändring, driftsättningsfrekvens, återställningstid efter misslyckad driftsättning, andel misslyckade ändringar och andel omarbete vid driftsättning. DORA:s guide om måtten säger att fart och stabilitet inte är avvägningar, eftersom måtten korrelerar för de flesta team. Den varnar för att sätta dem som mål, förlita sig på ett enda, jämföra mycket olika applikationer och tävla med andra team, och råder att förbättra mot sin egen tidigare prestanda. Wikipedia-artikeln om DevOps tillägger att vissa experter kritiserade DORA:s forskningsmetodik och mått, så behandla dem som användbara frågor med gränser (se Ämne 5.2 — DevOps).

### Flödesmått

Kanban Guide definierar fyra mått: pågående arbete, genomflöde, arbetspostens ålder och cykeltid. Den noterar att team kan döpa om dem och bör lägga till andra efter behov, och säger att mått betyder något bara när de informerar arbetssätten att definiera arbetsflödet, hantera poster i det och förbättra det. Arbetspostens ålder är särskilt användbar eftersom den visar problem medan det fortfarande finns tid att agera (se Ämne 5.4 — Värdeströmshantering).

### Servicenivåmått

Servicenivåindikatorer och -mål (se Ämne 3.7 — Hantering av servicenivåer) ger den mest direkta bilden av vad användare upplever. SRE-boken argumenterar för några få indikatorer valda utifrån vad användare bryr sig om, för percentiler och inte bara medelvärden, och för mål som inte är perfektion. Felbudgetar gör gapet till en gemensam beslutsregel (se Ämne 5.3 — Site reliability engineering).

### Mål och nyckelresultat

**Mål och nyckelresultat (objectives and key results, OKR)** är ett ramverk för målsättning. Wikipedia-artikeln beskriver ett OKR som ett mål, ett betydande, konkret, tydligt definierat mål, parat med tre till fem nyckelresultat, som är mätbara framgångskriterier. Den tillskriver Andrew Grove att ha populariserat angreppssättet på Intel på 1970-talet och dokumenterat det i *High Output Management* (1983), och John Doerr att ha tagit det till Google 1999. Artikeln säger att OKR poängsätts från 0,0 till 1,0, att ambitiösa nyckelresultat siktar på ungefär 0,7 och att Doerr rekommenderar en målnivå på ungefär 70 procents framgång, så ett nyckelresultat som alltid uppfylls bör omvärderas. Den råder att undvika mål som hör till ordinarie verksamhet och att föredra ledande indikatorer framför eftersläpande.

Artikeln redovisar också kritik: de flesta organisationer har slutat sätta OKR för enskilda medarbetare, som tenderar att likna uppgiftslistor och flyta ihop med prestationsbedömningar, och OKR på flera nivåer kan skapa ett vattenfallsangreppssätt. Den ger inget oberoende belägg för effektivitet och bär ett underhållsmärke om att förlita sig på källor nära ämnet. För tjänsteteam kan OKR förbinda resultat (till exempel "användare slutför registrering utan hjälp") med mätbara nyckelresultat, förutsatt att de inte görs till individuella mål.

### Kundnöjdhet

Att mäta vad användare tycker är svårt att göra väl. Ett vanligt instrument är **nettopromotorindex (net promoter score, NPS)**. Enligt Wikipedia bygger det på en fråga om hur sannolikt det är att respondenter rekommenderar ett företag, en produkt eller en tjänst, där promotorer ger 9 eller 10, passiva 7 eller 8 och kritiker 6 eller lägre; poängen är procentandelen promotorer minus procentandelen kritiker. Fred Reichheld på Bain & Company populariserade det i en artikel i *Harvard Business Review* 2003. Artikeln redovisar gränser: forskare ifrågasätter om det pålitligt förutsäger företagstillväxt, en enskild fråga kräver stora antal svar, den säger lite om specifika problem, för många undersökningar väcker klagomål och att koppla det till lön kan förvränga beteende, så Reichheld rekommenderade att koppla loss de två. Andra instrument finns, som kundnöjdhetspoäng och kundansträngningspoäng, men artikeln diskuterar dem inte.

Vilket instrument det än är, ställ en kort fråga, tillåt alltid ett fritextsvar, läs kommentarerna och följ upp det ni lär er.

### Att mäta människor och hållbarhet

Mått på personalens belastning och hälsa, som jourbelastning, toil, övertid och upplevelse, är mått på tjänstens hållbarhet (se Ämne 5.3 — Site reliability engineering). Behandla dem som information om systemet och inte som mått på individers prestation.

### Att mäta AI och automatisering

När ett automatiserat eller AI-stött steg införs, lägg till mått på dess kvalitet: hur ofta människor åsidosätter det, hur ofta det har fel och vad det kostar (se Ämne 6.2 — AI inom IT-tjänstehantering).

### Gränser

Mått är partiella. De utelämnar det som är svårt att räkna, som förtroende, hantverksskicklighet och omdöme. De kan vilseleda när data är ofullständiga eller definitioner skiljer sig mellan team. De artiklar som lästs här ger lite empiriskt belägg för om mätprogram förbättrar resultat. Behandla varje program som ett experiment och granska det.

## Bästa praxis

1. **Börja med frågan.** Fråga vilket beslut ett mått skulle informera, och vem som skulle agera på det. Om ingen skulle det, samla inte in det.
2. **Välj en liten balanserad uppsättning.** Välj några få mått över resultat, flöde, leverans, servicenivå och hälsa. Se till att några drar åt motsatta håll.
3. **Definiera varje mått exakt.** Skriv vad som räknas, varifrån och vad som undantas. Två team som använder samma ord för olika saker ger tal som inte kan jämföras.
4. **Mät per tjänst eller team, och jämför med dess egen tidigare prestanda.** Undvik att rangordna team. DORA råder att förbättra mot sin egen tidigare prestanda och vara försiktig vid jämförelse av olika applikationer.
5. **Gör inte ett enskilt tal till ett mål.** Använd mått som utgångspunkt för diskussion och sätt mål som resultat. När ett mått är ett mål, bevaka fusk (se Goodharts lag).
6. **Para tal med berättelser.** För varje trend, titta på några verkliga fall. Tal säger var ni ska titta; fall säger varför.
7. **Titta på fördelningar.** Använd percentiler och intervall, inte bara medelvärden, för tids- och storleksmått.
8. **Föredra ledande indikatorer där ni kan.** Mått som arbetspostens ålder visar problem innan de landar, till skillnad från mått på tidigare resultat.
9. **Sätt mål med mål och nyckelresultat med omsorg.** Om ni använder OKR, håll dem på team- och organisationsnivå, undvik mål som hör till ordinarie verksamhet och behandla ett resultat som alltid uppfylls som ett tecken på att sikta högre.
10. **Fråga användare, kort och ofta.** Använd en kort fråga med fritext, läs kommentarerna och svara. Knyt inte undersökningspoäng till individuell lön.
11. **Bevaka kostnaden för att mäta.** Föredra data som verktyg producerar som biprodukt av arbetet. Släpp manuell rapportering som ingen använder.
12. **Granska själva måtten.** En eller två gånger om året, fråga vilka mått som ledde till beslut och vilka som inte gjorde det, och avveckla de senare.

## Frågor att diskutera med teamet

**Vilket av våra mått har lett till ett beslut under de senaste sex månaderna?**

Lista måtten och be om ett beslut kopplat till varje. Mått utan koppling är kandidater för borttagning. Facilitatorn kan fråga vilket mått människor litar minst på och varför. Ta bort eller åtgärda ett.

**Vad händer med vårt beteende när ett tal är ett mål?**

Be om ett nyligt exempel där ett tal var ett mål. Fråga vad människor gjorde för att nå det. Goodharts talesätt är ramen. Fråga hur ett bättre mått eller en parning av mått skulle se ut. Kom överens om en förändring.

**Mäter vi fart och kvalitet tillsammans?**

Lista fartmåtten och kvalitetsmåtten. Om listorna är sneda, diskutera effekten. Till exempel inbjuder mätning av tid till stängning av ärenden utan upprepade kontakter till för tidig stängning. Välj en parning.

**Vad säger användare om hur det går, och hur frågar vi?**

Titta på de frågor ni ställer till användare och hur ofta. Läs några av fritextsvaren högt. Fråga vad som förändrades på grund av dem. Kom överens om en kort fråga att pröva.

**Vilka av våra mått kunde användas för att bedöma individer, och vad bör vi göra åt det?**

Identifiera mått som människor kan frukta. Diskutera riskerna och kom överens om uttryckliga regler om vad talen inte kommer att användas till. Skriv ned dem.

**Om vi bara kunde behålla fem mått, vilka skulle vi behålla?**

Be varje person välja fem och jämför. Överlappningen visar kärnan; skillnaderna visar olika behov. Resultatet är en startuppsättning. Kontrollera att den täcker resultat, flöde, servicenivåer och hälsa.

## I praktiken: ett agilt ITIL-exempel

Ett nationellt järnvägsbolags IT-grupp driver systemen bakom dess resenärsinformation. Gruppen rapporterar en instrumentpanel med 40 mått till ledningen varje månad. Instrumentpanelen läses av få, och två mått dominerar diskussionen: antalet incidenter stängda inom måltiden och antalet releaser per kvartal. Incidentteamet har lärt sig att stänga incidenter snabbt och öppna nya för samma fel, och flera leveransteam delar upp arbete i triviala releaser för att uppfylla antalet.

IT-gruppens chef ber ett litet team bygga om måtten. De börjar med att fråga vilka beslut instrumentpanelen bör informera. För varje tjänst väljer de en handfull mått: en användarvänd servicenivåindikator och ett mål, ledtid för ändring och andel misslyckade ändringar, arbetspostens ålder för öppna problemposter, jourbelastning per ingenjör och en månatlig enfrågsenkät om nöjdhet bland stationspersonal med en fritextruta. De gamla antalen avvecklas. Ledningen kommer överens om att inget mått ska användas för att rangordna team eller sätta individuella bonusar, och IT-chefen skriver detta som en regel på instrumentpanelen. Team ombeds sätta förbättringsmål för de tjänster de äger som mål med nyckelresultat, bara på teamnivå.

Efter ett år har instrumentpanelen tolv mått, och den månatliga granskningen har blivit ett samtal om de äldsta öppna problemen och fritextkommentarerna. Upprepade incidenter minskar, och releaser är mer meningsfulla. Vissa svårigheter återstår. Nöjdhetsundersökningen får få svar från nattpersonal, ett teams ledtid ser dålig ut eftersom det är det enda som räknar tid från idén och inte från incheckning, och en chef har börjat citera undersökningspoängen i en prestationsbedömning. IT-chefen ber teamet samordna definitionerna, påminner cheferna om regeln och ordnar en kort undersökning vid nattskiftets överlämning.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam bör välja mått som hjälper dem att styra, ta talen från sina verktyg och diskutera dem i retrospektiv. Bevaka mått som belönar att dela upp arbete eller dölja fel. Dela vad ni lär er med andra team.

### Tjänste- och driftteam

Driftteam bär många av servicenivå- och hälsomåtten. Håll definitioner tydliga och data pålitliga, ta med jourbelastning och toil och presentera tal med fall och kommentarer. Protestera när ett mått används som mål.

### Ledning och styrning

Ledare formar mätkulturen. Säg vad talen kommer och inte kommer att användas till, be om trender och berättelser och inte ligatabeller och motstå att lägga till mått för varje ny oro. Se över hela uppsättningen då och då.

### Kunder och användare

Kunder och användare är både en källa till mått och föremål för dem. Svara på korta undersökningar när du kan och säg vad som är viktigt. Fråga leverantörer vad de mäter om din upplevelse och vad de har gjort med resultaten.

## Vanliga orsaker till misslyckande

- **Mått som mål.** Fusk följer. Använd i stället mått för diskussion och sätt mål som resultat.
- **Ett enda tal.** Ett enskilt mått förvränger beteende. Använd i stället en balanserad uppsättning som drar mot sig själv.
- **Inkonsekventa definitioner.** Team räknar olika. Definiera i stället varje mått och dess källa.
- **Ligatabeller.** Team tävlar och döljer problem. Jämför i stället varje team med sin egen historik.
- **Bara medelvärden.** Långa svansar döljs. Titta i stället på fördelningar och percentiler.
- **Att mäta det som är lätt.** Bekväma tal ersätter viktiga. Börja i stället från beslut och användarnas resultat.
- **Individuella OKR som uppgiftslistor.** Mål blir prestationsbedömningar. Håll i stället OKR på team- och organisationsnivå.
- **Undersökningströtthet och lönekoppling.** Användare slutar svara, eller poäng manipuleras. Håll i stället undersökningar korta och lösgjorda från lön.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Val och definition | Mått är ad hoc | Vissa team definierar några få mått | En balanserad uppsättning med tydliga definitioner används per tjänst | Uppsättningen granskas för användbarhet och gap | Mått samordnas mellan team, leverantörer och kunder |
| Användning i beslut | Tal rapporteras men används sällan | Vissa team diskuterar dem i granskningar | Mått matar regelbundna beslut och förbättring | Beslut kopplade till mått följs och lärs av | Mått vägleder beslut i hela organisationen |
| Skydd mot fusk | Mål sätts på enskilda tal | Viss medvetenhet om förvrängning | Regler för hur mått får användas är skrivna och följs | Tecken på fusk bevakas och mått justeras | Mätkulturen delas i hela organisationen |
| Användar- och hälsomått | Lite användar- eller personaldata | Vissa undersökningar eller belastningsdata | Korta användarundersökningar och hållbarhetsmått är rutin | Resultat leder till planerad åtgärd och kontrolleras | Användar- och personalröster formar prioriteringar över tjänster |

## Checklista

- [ ] Varje mått vi rapporterar har ett angivet beslut det informerar.
- [ ] Vi använder en liten balanserad uppsättning som omfattar resultat-, flödes-, servicenivå-, leverans- och hälsomått.
- [ ] Varje mått har en skriven definition och källa.
- [ ] Team jämförs med sin egen historik, inte rangordnas.
- [ ] Vi har skrivit ned vad mått inte kommer att användas till.
- [ ] Tidsmått visar fördelningar eller percentiler.
- [ ] Användare får regelbundet en kort fråga med utrymme för kommentarer, och svar läses.
- [ ] Om vi använder OKR är de på team- eller organisationsnivå och inte individuella mål.
- [ ] Data tas från verktyg som en biprodukt av arbetet där det är möjligt.
- [ ] Vi granskar själva måtten minst en gång om året.

## AI-prompter

**Syfte: välja en balanserad uppsättning mått för en tjänst.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: hitta hur ett mått kunde fuskas med.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Syfte: skriva OKR för ett tjänsteteam utan att göra dem till uppgifter.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: analysera fritextkommentarer från en undersökning.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## AI-färdigheter

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): använd för att välja och tolka mått på leverans- och tjänsteprestanda.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): använd för att välja tidiga varningsmått för risker mot en tjänst.
- [survey-design](../../../../skills/survey-design/SKILL.md): använd för att utforma korta användar- och personalundersökningar som ger användbara svar.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): använd för att samla in och svara på återkoppling från användare och kollegor.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): använd för att koppla mått på resultat till vad teamet arbetar med härnäst.

## Viktiga källor

- **DORA's software delivery performance metrics** (dora.dev): definitioner av de fem måtten och varningar om deras användning.
- **Goodhart's law** (Wikipedia): ursprunget till och ordalydelsen av talesättet att ett mått som används som mål slutar vara ett bra mått.
- **Objectives and key results** (Wikipedia): ramverket, dess ursprung, poängsättning och kritik.
- **Net promoter score** (Wikipedia): definitionen, användningarna och kritiken av ett nöjdhetsmått.

## Referenser

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
