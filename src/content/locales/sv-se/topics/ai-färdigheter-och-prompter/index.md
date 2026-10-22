# AI-färdigheter och prompter

**En bra prompt ger en AI-assistent det material, den uppgift och de kontroller den behöver, och en bra färdighet paketerar den kunskapen så att ett team kan återanvända den, vilket gör AI-prompterna och AI-färdigheterna i den här guiden till utgångspunkter som ni anpassar och verifierar.**

## Varför detta är viktigt

Varje ämne i den här guiden slutar med prompter och färdigheter. De finns därför att många av uppgifterna inom tjänstehantering passar väl för en assistent som kan läsa en hög ärenden, utarbeta en runbook eller göra anteckningar till en plan. De finns också därför att en vag begäran till en AI ger vaga, ibland felaktiga, resultat. Skillnaden mellan ett användbart svar och ett rimligt men tomt ligger ofta i hur begäran skrevs och vilket material som följde med.

Det här ämnet förklarar hur guidens prompter och färdigheter används, varför de är skrivna som de är och hur ni skriver egna för ert team. Det handlar mer om vanor än om knep: att tillhandahålla verkligt material, säga vad ni vill ha, be assistenten markera vad den inte vet och kontrollera det som kommer tillbaka. Det bygger på varningarna i det föregående ämnet, som beskriver var AI hjälper och var den kan skada (se Ämne 6.2 — AI inom IT-tjänstehantering).

Källorna är praktiska. Guidens egen färdighet `skills/prompt-engineering` beskriver promptskrivande som den medvetna praktiken att utforma och iterera de instruktioner som ges till en språkmodell, och behandlar en prompt som ett litet stycke programvara som skrivs, testas mot verkliga fall och revideras. Dokumentationen för Claude Code beskriver hur färdigheter struktureras som kataloger med en `SKILL.md`-fil. [Wikipedia-artikeln om stora språkmodeller](https://en.wikipedia.org/wiki/Large_language_model) ger bakgrund. Ingen källa som lästs för den här guiden ger belägg för vilka promptingtekniker som fungerar bäst; behandla teknikerna här som vanor att pröva.

## Centrala begrepp

### Prompter, färdigheter och vad de är till för

En **prompt** är den instruktion och det material ni ger en AI-assistent för en uppgift. En **färdighet (skill)**, i det format som används i den här guidens mapp `skills/`, är ett återanvändbart paket med kunnande för en sorts uppgift: en katalog som innehåller en `SKILL.md`-fil som säger när den ska användas och hur arbetet görs. I Claude Codes dokumentation är en färdighet en katalog med en obligatorisk `SKILL.md`-fil vars frontmatter har ett namn och en beskrivning, och vars innehåll ger instruktionerna; assistenten använder beskrivningen för att avgöra när färdigheten ska tillämpas, och läser in hela innehållet först när den används.

| | Prompt | Färdighet |
|---|---|---|
| **Omfattning** | En uppgift, nu | En sorts uppgift, återanvänd |
| **Finns** | I en chatt eller ett dokument | I en mapp, som `skills/` eller ett projekts färdighetskatalog |
| **Ändras av** | Er, varje gång | Teamet, med granskning |
| **Bäst för** | Särskild analys av ert eget material | Upprepbara metoder som att hålla ett retrospektiv |

### Hur guidens prompter är byggda

Prompterna i den här guiden följer ett enkelt mönster, fastställt i stilguiden:

1. **Ett fetstilt syfte på en rad** säger vad prompten är till för.
2. **Ett inramat block** innehåller text ni kan kopiera och klistra in.
3. **Platshållare inom hakparenteser** markerar vad ni måste tillhandahålla, med ett tips om vad som ska stå där.
4. **En uppgift** som anger vilken utdata som önskas.
5. **Gränser**: hitta inte på tal, källor, citat eller efterlevnadspåståenden; använd bara det inklistrade materialet.
6. **En begäran att fråga först** när information saknas, och att markera antaganden.
7. **En slutlig kontroll**: "List what you are unsure of."

Dessa delar finns av skäl. Platshållare tvingar er att ta med verkligt material. Gränsen hindrar assistenten från att fylla luckor med påhitt. Begäran om förtydligande frågor gör en gissning i ett svep till ett kort samtal. Den sista raden får assistenten att flagga sina egna svaga punkter, vilket hjälper er att avgöra vad som ska kontrolleras.

### Mönster som hjälper

Guidens färdighet `prompt-engineering` listar tekniker, som den här guiden sammanfattar med egna ord:

- **Var specifika om den utdata ni vill ha,** som en tabell med namngivna kolumner eller en numrerad lista med högst fem poster, så att assistenten inte gissar formen.
- **Ge exempel när instruktioner är tvetydiga,** och visa det mönster ni vill ha i ett kort prov.
- **Tillhandahåll det sammanhang assistenten inte kan känna till,** som er terminologi, begränsningar och det aktuella dokumentet, och säg vad den inte bör anta.
- **Iterera mot verkliga testfall,** kör prompten på en rad verkliga indata och revidera där den fallerar, i stället för att bedöma den efter ett enda bra exempel.

En prompt som justerats på en indata kan fallera på andra. Färdigheten gör poängen att en kort, märkligt formulerad indata, eller en som saknar ett fält, kan få en prompt att haverera som hanterade det ursprungliga exemplet.

### Verifieringsvanor

Varje utdata behöver kontrolleras i proportion till kostnaden för att ha fel. Vanor som hjälper:

- **Kontrollera fakta mot den källa ni klistrade in.** Be assistenten citera den del av ert material som stöder varje påstående.
- **Godta aldrig referenser ni inte har sett.** Fallen som beskrivs i det föregående ämnet omfattar påhittade rättsfall; upprepa dem inte.
- **Skilj vad assistenten såg från vad den antog.** Guidens prompter ber om detta.
- **Testa beräkningar själva,** eller be om uträkningen och kontrollera den.
- **Använd en andra granskning för allt som lämnar teamet,** som ett kundsvar eller en policy.
- **För register över betydande användningar,** som beskrivs i Ämne 6.2 — AI inom IT-tjänstehantering.

### Att skydda data

Innan ni klistrar in något i en prompt, fråga vad det innehåller och vart det kommer att gå. Ta bort personuppgifter, inloggningsuppgifter och konfidentiella kommersiella detaljer om inte verktyget och dess villkor har godkänts för dem (se Ämne 3.13 — Informationssäkerhetshantering). Guidens prompter ber er anonymisera, men ansvaret är ert. I tveksamma fall, beskriv situationen i allmänna termer.

### Hur en färdighet ser ut

Enligt Claude Codes dokumentation och färdigheterna i den här guiden är en färdighet en katalog som `skills/runbook/` som innehåller `SKILL.md`. Filen börjar med YAML-frontmatter mellan `---`-markörer, som innehåller minst ett `name` och en `description`. Dokumentationen säger att beskrivningen talar om för assistenten vad färdigheten gör och när den ska användas, och rekommenderar att sätta det viktigaste användningsfallet först. Innehållet ger metoden i markdown. Andra filer, som referensdokument eller skript, kan ligga bredvid och läsas in vid behov; dokumentationen råder att hålla själva `SKILL.md` kort, under 500 rader.

De kopierade färdigheterna i den här guiden följer samma form. Deras beskrivningar börjar med "Use when asked to…", vilket gör det tydligt när var och en gäller.

### Var färdigheter finns

Dokumentationen beskriver personliga färdigheter i en användares hemkatalog för färdigheter, projektfärdigheter i ett arkivs färdighetskatalog som kan checkas in och delas med ett team, och andra platser som plugin-program. För ett team är en projektmapp under versionshantering den naturliga platsen: färdigheter granskas, ändras genom samma process som annat arbete och är tillgängliga för alla.

### Att skriva egna teamfärdigheter

En teamfärdighet fångar ett arbetssätt teamet upprepar och vill ha gjort konsekvent. Exempel för tjänstehantering: hur man skriver en efteranalys i er husstil, hur man prioriterar en viss sorts ärende, hur man förbereder en ändringsförfrågan, hur man håller er fredagsgranskning. För att skriva en:

1. **Välj en uppgift ni upprepar** och som har ett känt bra sätt att göras på.
2. **Skriv beskrivningen först,** med början i "Use when…" och det viktigaste användningsfallet, så att assistenten och era kolleger vet när den gäller.
3. **Skriv metoden** som korta steg, med utdataformat, kontroller och saker att undvika.
4. **Lägg till exempel** på ett bra resultat, med känsliga detaljer borttagna.
5. **Säg vad den inte får göra,** som att hitta på siffror eller skicka något utan granskning.
6. **Testa den på verkliga fall** och revidera.
7. **Ge den en ägare och ett granskningsdatum,** som varje annat delat dokument.

### Färdigheter i den här guiden

Mappen `skills/` i det här arkivet innehåller kopior av färdigheter från samlingen skills-on-ai, listade i `skills/README.md`, och två färdigheter skrivna för den här guiden: en för läsare och en för underhållare. Varje ämne länkar till de färdigheter som är mest användbara för dess ämne, med en mening om när var och en ska användas. De kopierade färdigheterna är generiska, inte specifika för den här guidens innehåll, så använd dem som utgångspunkter och anpassa deras utdata till ert sammanhang.

### Gränser

Ingen källa som lästs för den här guiden mäter hur väl någon promptingteknik fungerar, och AI-verktyg förändras snabbt. Dokumentationen för Claude Code som lästs var lång och lästes bara delvis. Det som följer är praktiska råd som har hållit i allmän användning, erbjudna som vanor att pröva och inte som garantier.

## Bästa praxis

1. **Börja från en verklig uppgift och verkligt material.** Välj något ni behöver få gjort och klistra in de faktiska fakta, inte en beskrivning av dem. Fyll i varje platshållare med specifika uppgifter.
2. **Ange syftet på en rad.** Säg vad utdata är till för och vem som ska använda den. Det hjälper assistenten att välja rätt detaljnivå.
3. **Specificera utdata.** Ange format, längd och struktur ni vill ha. Be om en tabell när ni vill jämföra, en lista när ni vill ha steg.
4. **Sätt gränser.** Säg vad assistenten inte får göra: hitta på tal, källor eller citat; anta fakta som inte getts; påstå att en regel gäller utan texten.
5. **Be om förtydligande frågor först.** Säg åt assistenten att fråga vad den behöver innan den svarar. Svara kort och be den sedan gå vidare.
6. **Be den skilja fakta från antaganden.** Låt den markera vad den tog från ert material och vad den förutsatte. Den här guidens prompter slutar med "List what you are unsure of."
7. **Begär belägg.** Be om citat ur ert material som stöder varje påstående, så att ni snabbt kan kontrollera.
8. **Iterera.** Behandla det första svaret som ett utkast. Säg vad som är fel och be om en revidering, eller ändra prompten och försök igen.
9. **Testa prompter på flera fall.** Innan ni förlitar er på en prompt, kör den på tre eller fyra verkliga indata, inklusive en ovanlig. Notera var den fallerar.
10. **Skydda data.** Ta bort personuppgifter och konfidentiella detaljer före inklistring. Använd godkända verktyg. Följ er organisations policy.
11. **Kontrollera före användning.** Verifiera fakta, tal och referenser. Låt en person granska allt som går till kunder eller ändrar ett system.
12. **Dela vad som fungerar.** Lägg prompter som visar sig användbara, med anteckningar, i en teamfärdighet eller ett dokument under versionshantering, med en ägare.

## Frågor att diskutera med teamet

**Vilka uppgifter upprepar vi som en assistent kunde hjälpa till med, och vad skulle vi behöva kontrollera?**

Be varje person lista uppgifter och markera risken om utdata vore fel. Gruppera dem i låg, medel och hög risk. Börja med en lågriskuppgift. Facilitatorn kan fråga vad kontrollsteget skulle vara. Välj en uppgift för en prövning.

**Vad klistrar vi in i AI-verktyg i dag, och bör vi det?**

Var ärliga och icke-dömande. Lista exempel. Jämför med datapolicyn och de godkända verktygen. Kom överens om en snabbkontroll människor kan tillämpa före inklistring: "innehåller detta personuppgifter, hemligheter eller konfidentiella detaljer?"

**Vilka av den här guidens prompter skulle vi pröva först, och med vilket verkligt material?**

Bläddra igenom prompterna tillsammans och välj en. Identifiera det verkliga material som ska klistras in, ta bort känsliga detaljer och kör den. Jämför resultat och diskutera vad som ska ändras i prompten. Detta är ett snabbt sätt att lära sig mönstret.

**Hur skulle vi veta att en prompt fungerar?**

Be om en testuppsättning: några få verkliga indata med kända bra utdata. Diskutera hur svar poängsätts och vem som avgör. En prompt utan testuppsättning är ett hopp. Kom överens om en liten uppsättning för en prompt.

**Vilket arbetssätt upprepar vi som förtjänar att bli en teamfärdighet?**

Lista kandidater: ett granskningsformat, en prioriteringsrutin, en mall för rapporter. Välj en och utarbeta beskrivningen och stegen tillsammans. Avgör vem som äger den och när den ska granskas.

**Vad skulle vi aldrig vilja att en AI gör på egen hand?**

Lista åtgärder: att skicka till kunder, att ändra produktion, att godkänna åtkomst, att avgöra en prioritet. Diskutera varför. Svaren är de gränser ni ska skriva in i era prompter och färdigheter. Kom överens om en kort lista.

## I praktiken: ett agilt ITIL-exempel

Ett regionalt sjukhus IT-servicedesk har fjorton analytiker. Deskchefen har märkt att kolleger använder en AI-assistent på olika sätt: en klistrar in hela ärenden, inklusive patientnamn, i en publik chattbot; en annan skriver utförliga prompter och får användbara sammanfattningar; de flesta använder den inte alls. En nyligen utarbetad kunskapsartikel, skriven av en assistent, innehöll ett förfarandesteg som inte fanns.

Deskchefen håller en timmes session med hjälp av den här guidens angreppssätt. Hon börjar med data: gruppen kommer överens om en regel att inga patientuppgifter eller inloggningsuppgifter går in i något verktyg, och att den godkända assistenten, som sjukhuset har licensierat med lämpliga villkor, är den enda som används med ärendetext. Hon väljer en uppgift, att utarbeta en kunskapsartikel från ett löst ärende, och använder mönstret från den här guidens prompter: ett syfte på en rad, en platshållare för det anonymiserade ärendet, instruktioner att bara använda ärendets innehåll, att markera varje antaget steg med en tagg och att lista vad den är osäker på. Två analytiker kör prompten på fem tidigare ärenden, och gruppen läser resultaten tillsammans. Prompten hittar på ett steg i ett fall; de lägger till en rad som ber om ett citat ur ärendet för varje steg.

Deskchefen skriver den förbättrade prompten som en teamfärdighet i deskens gemensamma mapp, med en beskrivning som börjar "Use when…", en ägare och ett granskningsdatum, och lägger till en regel att varje utarbetad artikel kontrolleras av en andra analytiker före publicering. Efter två månader har antalet utarbetade artiklar per vecka fördubblats och granskare finner färre fel än förut. Vissa problem återstår. Två analytiker klistrar fortfarande in detaljer i ett publikt verktyg när de har bråttom, färdigheten ger alltför formellt språk som analytiker skriver om och en granskare erkänner att han skummar. Deskchefen upprepar dataregeln vid varje teammöte, lägger till ett stilexempel i färdigheten och ber granskarna kryssa av en kort checklista.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam använder assistenter för kod, tester och dokumentation. Tillämpa samma vanor: verkligt material, tydliga gränser, verifiering och granskning. Håll hemligheter utanför prompter och lagra de användbara prompterna och färdigheterna med koden.

### Tjänste- och driftteam

Driftteam kan använda prompter för att analysera ärenden, utarbeta runbooks och förbereda granskningar. Håll personuppgifter utanför, kontrollera utdata mot loggar och register och skriv färdigheter för rutiner teamet upprepar, som efteranalyser och skiftöverlämningar.

### Ledning och styrning

Ledare sätter reglerna för vad som får användas, med vilka data och vem som är ansvarig. Be om en förteckning, en datapolicy och belägg från piloter. Stöd tid för team att skriva och testa prompter och färdigheter, och se till att delade färdigheter har ägare.

### Kunder och användare

Kunder och användare kan se resultaten av prompter och färdigheter i svar, artiklar och sammanfattningar. Räkna med att leverantörer kontrollerar dem och talar om för dig när de använder automatiserade verktyg där det betyder något. Rapportera fel, som hjälper till att förbättra det underliggande materialet.

## Vanliga orsaker till misslyckande

- **Vaga begäranden.** Assistenten gissar. Tillhandahåll i stället materialet, syftet och den utdata ni vill ha.
- **Att klistra in känsliga data.** Personliga eller konfidentiella detaljer lämnar organisationen. Ta i stället bort dem och använd godkända verktyg.
- **Att godta påhittat innehåll.** Fabricerade steg, tal eller referenser används. Sätt i stället gränser, be om citat och verifiera.
- **Justering mot ett enda exempel.** En prompt fungerar en gång och fallerar på andra håll. Testa i stället på flera verkliga indata.
- **Färdigheter utan ägare.** Delade prompter blir föråldrade. Tilldela i stället en ägare och ett granskningsdatum och förvara dem i versionshantering.
- **Övertro på kopierade prompter.** En prompt från internet eller från den här guiden används oförändrad. Anpassa i stället till ert sammanhang och kontrollera resultat.
- **Ingen andra granskning.** AI-utdata går direkt till kunder. Låt i stället en person granska allt som lämnar teamet.
- **Att behandla assistenten som en auktoritet.** Dess tillförsikt tas för korrekthet. Be i stället om vad den är osäker på och kontrollera.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Promptpraxis | Människor skriver ad hoc-prompter | Vissa delar prompter | Team använder ett gemensamt mönster med syfte, material, gränser och kontroller | Promptkvalitet testas på uppsättningar av verkliga fall | Prompter förbättras mellan team utifrån delade testresultat |
| Färdigheter | Inga delade färdigheter | Vissa personliga färdigheter finns | Teamfärdigheter med ägare och granskningsdatum finns i versionshantering | Användning och resultat av färdigheter granskas | Färdigheter delas och underhålls mellan team och partner |
| Verifiering och data | Utdata betros; data klistras in fritt | Vissa kontroller och dataregler | Verifieringsvanor och en datapolicy är rutin | Fel och dataincidenter följs och åtgärdas | Verifiering och datapraxis samordnas i hela organisationen |
| Lärande | Lärande är individuellt | Vissa tips delas | Team håller regelbundna sessioner för att förbättra prompter och färdigheter | Förbättringar följs och mäts | Lärande sprids kontinuerligt mellan team |

## Checklista

- [ ] Teamet har en kort regel för vilka data som får gå in i vilka AI-verktyg.
- [ ] Prompter vi förlitar oss på har ett angivet syfte, verkligt material, gränser och en begäran om vad assistenten är osäker på.
- [ ] Varje prompt vi förlitar oss på har testats på minst tre verkliga indata.
- [ ] Utdata som går utanför teamet granskas av en person.
- [ ] Referenser och tal från AI-utdata kontrolleras mot källor.
- [ ] Användbara prompter sparas med anteckningar på ett gemensamt ställe under versionshantering.
- [ ] Teamfärdigheter har en tydlig beskrivning som börjar "Use when…", en ägare och ett granskningsdatum.
- [ ] Teamet har listat åtgärder som AI aldrig får vidta på egen hand.
- [ ] Personalen vet vilka verktyg som är godkända.
- [ ] Vi granskar våra prompter och färdigheter minst två gånger om året.

## AI-prompter

**Syfte: förbättra en prompt ni redan använder.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Syfte: göra en upprepad uppgift till ett utkast till teamfärdighet.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: bygga en liten testuppsättning för en prompt.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: kontrollera ett AI-skrivet utkast mot dess källa.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## AI-färdigheter

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): använd för att skriva, testa och förbättra prompter så att de ger pålitliga resultat.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): använd för att dokumentera vad en modell är till för och vilka dess gränser är när ert team förlitar sig på en.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): använd när ni hjälper ett team att bygga vanor kring prompter och färdigheter över tid.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): använd för att hitta ämnen i den här guiden, hålla ett teamsamtal utifrån dess frågor eller anpassa en av dess prompter.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): använd när ni skriver eller kontrollerar ett ämne, en prompt eller en färdighetslänk för den här guiden.

## Viktiga källor

- **Claude Code skills documentation** (code.claude.com): beskrivningen av hur färdigheter struktureras som kataloger med en `SKILL.md`-fil.
- **Prompt engineering** (den här guidens `skills/prompt-engineering/SKILL.md`): ett kort uttalande om tekniker och argumentet för att testa prompter på verkliga indata.
- **Large language model** (Wikipedia): bakgrund om hur dessa system byggs och var de kan fallera.
- **AI Risk Management Framework** (NIST): det frivilliga ramverket för att hantera AI-risker, användbart för teampolicy.

## Referenser

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
