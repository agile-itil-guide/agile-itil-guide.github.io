# Hantering av serviceförfrågningar

**Hantering av serviceförfrågningar hanterar de rutinsaker användare ber om, som åtkomst, utrustning och information, och det agila målet är att göra varje vanlig förfrågan snabb, förutsägbar och mestadels automatisk så att skickliga människor kan lägga sin tid på problem.**

## Varför detta är viktigt

Mycket av det arbete som når en servicedesk är inte ett fel alls. Det är en användare som ber om något tjänsten är avsedd att tillhandahålla: ett nytt konto, åtkomst till en mapp, en laptop, en licens, en lösenordsåterställning. Dessa förfrågningar är förutsägbara och repetitiva. Väl hanterade är de snabba och ingen lägger märke till dem. Dåligt hanterade är de källan till långa väntetider, upprepade frågor och tyst frustration som skadar ett teams rykte mer än något enskilt avbrott.

Förfrågningshantering är också där automatisering och självbetjäning ger mest. En förfrågan som följer samma steg varje gång kan utformas en gång, testas och mestadels automatiseras. [Wikipedia-artikeln om IT-tjänstehantering](https://en.wikipedia.org/wiki/IT_service_management) definierar en serviceförfrågan som en rutinförfrågan om en tjänst och listar IT-processautomatisering, som ersätter manuella rutinsteg med automatiserade så att personalen kan fokusera på arbete med högre prioritet. Det är målet med detta arbetssätt i en mening.

Artikeln ger inte mycket mer om förfrågningar. Det här ämnet kombinerar därför den definitionen med praktisk vägledning hämtad från allmänt använd praxis för tjänstehantering, som erbjuds som sådan, och med guidens andra ämnen om servicedesken, tjänstekatalogen (ITIL skriver "service catalogue") och kunskap. Där något är vanlig praxis och inte ett fynd från en källa, säger texten det.

## Centrala begrepp

### Vad en serviceförfrågan är

En **serviceförfrågan** är en rutinbegäran om något en tjänst normalt tillhandahåller. Den skiljer sig från en **incident**, som är ett avbrott eller potentiellt avbrott i en tjänst, och från en **ändring**, som modifierar en tjänst (se Ämne 3.2 — Incidenthantering och Ämne 3.4 — Ändringsmöjliggörande). Gränsen kan suddas ut: "Jag behöver åtkomst till ekonomisystemet" är en förfrågan; "Jag har åtkomst men systemet visar ett fel" är en incident; "lägg till ett nytt fält i ekonomisystemet" är troligen en ändring.

Ett praktiskt test: om arbetet följer ett känt förfarande, har en känd kostnad och risk, och svaret på "är detta tillåtet?" redan är bestämt i förväg, är det en förfrågan. Allt som kräver ett nytt omdöme om risk är mer sannolikt en ändring eller ett projekt.

### Varför skillnaden är viktig

Att blanda förfrågningar med incidenter förvränger båda. Antal "ärenden" suddar ut två olika slags efterfrågan. Prioriteringar krockar, eftersom en incident som stoppar arbete bör komma före en förfrågan som kan vänta. Svarsmått vilseleder: en lång genomsnittlig tid till stängning kan dölja att förfrågningar väntar på godkännanden medan incidenter åtgärdas snabbt. Att hålla de två isär låter er sätta lämpliga mål och se var förseningen finns (se Ämne 2.1 — IT-tjänstehantering).

### Förfrågningsmodeller

En **förfrågningsmodell (request model)** är ett återanvändbart mönster för en typ av förfrågan: vilken information som behövs, vem som måste godkänna, vilka steg som utförs av vem eller av automatisering och vad den förväntade tiden är. Förfrågningsmodeller är en allmänt använd idé i tjänstehantering. De ger ett team ett sätt att utforma de vanliga förfrågningarna en gång och köra dem många gånger. En tjänstekatalog listar de tillgängliga förfrågningarna (se Ämne 3.8 — Hantering av tjänstekatalog).

En modell för "laptop till ny medarbetare" kan ange: informationen som behövs från chefen, godkännandet (inget, om rollen finns på en standardlista), stegen (beställa, konfigurera, skicka) och den förväntade tiden. En modell för "åtkomst till ett begränsat system" kommer att inkludera ett godkännande av systemets ägare och ett register för revision.

### Godkännande

Vissa förfrågningar behöver godkännande innan de går vidare: kostnader, åtkomst till känsliga data eller användning av knappa resurser. Frågan för designen är om godkännandet tillför verklig kontroll. Ett godkännande som alltid säger ja är en försening. Där godkännanden behövs, gör dem snabba och synliga, tala om för godkännaren exakt vad som efterfrågas och ge en reserv om de inte svarar. Där godkännandet beror på en roll, som en chef som godkänner en teammedlems förfrågan, överväg att förgodkänna standardobjekt för rollen.

### Uppfyllande och automatisering

Uppfyllande är arbetet att leverera förfrågan. ITSM-artikeln beskriver IT-processautomatisering som att automatisera rutinuppgifter så att personalen kan fokusera på arbete med högre prioritet. Kandidater för automatisering är förfrågningar som är frekventa, följer ett stabilt förfarande och har låg risk: lösenordsåterställningar, gruppmedlemskap, standardinstallationer av programvara. Automatisering bör byggas med samma omsorg som vilken ändring som helst, med tester och ett sätt att se vad den gjorde.

### Självbetjäning

Många organisationer erbjuder en portal där användare kan hitta den tjänst de behöver, se vilken information som krävs och skicka en förfrågan utan att tala med någon. God självbetjäning beror på en tydlig tjänstelista skriven med användarnas ord och på tydliga formulär. En portal som speglar organisationsschemat och ber om information användaren inte har driver människor tillbaka till e-post och telefon.

### Tjänstehantering för hela företaget

ITSM-artikeln noterar att enterprise service management tillämpar ITSM-verktyg och -idéer på andra verksamhetsområden som personal eller fastighetsdrift. Förfrågningshantering är det enklaste stället att börja, eftersom många funktioner tar emot rutinförfrågningar: introduktion, resor, utrustning, kontorsflyttar. En gemensam förfrågningsplattform kan betjäna flera funktioner, var och en med sina egna förfrågningsmodeller och ägare.

### Mått

Vanliga mått omfattar hur lång tid förfrågningar tar från inlämning till uppfyllande, hur ofta den som begär måste komma tillbaka med frågor, hur många förfrågningar som uppfylls utan mänsklig insats och nöjdhet hos den som begär. Som med alla mått, undvik mål som belönar att stänga förfrågningar tidigt. Leta efter väntetid, eftersom det mesta av en förfrågans förflutna tid vanligtvis är väntan på godkännande eller information, inte arbete (se Ämne 1.7 — Lean programvaruutveckling och Ämne 5.6 — Mått och mätning).

### Säkerhet och efterlevnad

Förfrågningar styr ofta åtkomst och kostnader, så de har säkerhets- och revisionskonsekvenser. Register bör visa vem som bad, vem som godkände, vad som gjordes och när. Ta bort åtkomst när den inte längre behövs, som en del av en avgångsförfrågningsmodell, inte som en eftertanke (se Ämne 3.13 — Informationssäkerhetshantering).

## Bästa praxis

1. **Börja med de vanligaste förfrågningarna.** Lista de tio främsta förfrågningarna efter volym från era register. Utforma dessa först. Några få väl utformade modeller täcker mycket av efterfrågan.
2. **Definiera en förfrågningsmodell för var och en.** Skriv vilken information som behövs, vem som godkänner, stegen, vem som gör varje steg och den förväntade tiden. Håll varje modell till en sida.
3. **Använd användarens ord.** Namnge förfrågningar som användare skulle göra ("Få en ny laptop", inte "Maskinvaruanskaffning, typ 2"). Pröva namnen med användare.
4. **Fråga bara efter det ni behöver.** Varje fält i ett formulär bör ha ett syfte. Hämta vad ni kan från system ni redan har, som användarens avdelning, i stället för att fråga användaren.
5. **Förgodkänn det som är rutin.** Kom överens med godkännare om en standardlista över objekt och roller som inte behöver godkännande från fall till fall. Granska listan med jämna mellanrum.
6. **Gör verkliga godkännanden enkla och snabba.** Visa godkännaren vad som efterfrågas och varför, tillåt godkännande från en telefon eller via e-post och sätt en automatisk påminnelse och en ersättare vid frånvaro.
7. **Automatisera det stabila och frekventa.** Välj förfrågningar som följer samma steg varje gång och har låg risk. Testa automatiseringen och registrera vad den gjorde.
8. **Behåll en mänsklig väg.** Låt användare be om hjälp när ett formulär inte passar deras behov. Behandla dessa fall som återkoppling på modellen.
9. **Skilj förfrågningar från incidenter och ändringar.** Ge var och en sin egen kategori, kö och mått. Lär deskken att omklassificera när en förfrågan visar sig vara ett fel eller en ändring.
10. **Bevaka väntetiderna.** Mät tid som tillbringas väntande på godkännande eller information, inte bara total tid. Välj den längsta väntan att minska först.
11. **Slut kretsen med den som begärde.** Bekräfta slutförande, fråga om det fungerade och erbjud ett sätt att säga om det inte gjorde det. En förfrågan markerad klar men inte levererad är värre än en som fortfarande är öppen.
12. **Granska katalogen över förfrågningar regelbundet.** Avveckla förfrågningar som ingen gör, slå ihop nästan dubbletter och lägg till nya utifrån belägg (se Ämne 3.8 — Hantering av tjänstekatalog).

## Frågor att diskutera med teamet

**Vilka förfrågningar hanterar vi oftast, och hur lång tid tar var och en från början till slut?**

Hämta de tio främsta från det senaste kvartalet och följ den förflutna tiden för var och en. Markera var varje förfrågan väntar. Överraskningen är vanligtvis att det mesta av tiden är väntan, inte arbete. Fråga vem som väntar på vem. Facilitatorn kan fråga vilken förfrågan som vore lättast att förbättra först.

**Vilka godkännanden i våra förfrågningar har aldrig sagt nej?**

Granska ett urval godkännanden och räkna avslag. Ett godkännande som aldrig avslår kan vara en försening utan nytta. Fråga vad godkännandet är till för och vem som har nytta av det. Vissa godkännanden finns för revision eller ansvarsutkrävande, vilket är ett legitimt syfte som kan mötas på ett lättare sätt, som att underrätta godkännaren i efterhand. Välj ett att förenkla.

**Vad måste användare tala om för oss som vi redan vet?**

Titta på ett förfrågningsformulär och markera fält vars svar finns i ett annat system. Varje sådant fält är ansträngning för användaren och en källa till fel. Fråga vad som skulle krävas för att fylla i dem i förväg. Välj ett fält att ta bort eller fylla i förväg.

**Vilka av våra förfrågningar kunde göras utan att en person rör dem?**

Lista förfrågningar som följer ett fast förfarande. Fråga för var och en vad som hindrar automatisering: verktyg, åtkomst, rädsla för fel. Diskutera de skyddsåtgärder som skulle göra automatisering acceptabel, som gränser och loggar. Välj en att automatisera som ett experiment.

**Hur får användare veta vad de kan be om?**

Fråga några användare hur de skulle begära något ovanligt. Om svaret är "fråga någon jag känner" fungerar inte tjänstelistan. Diskutera hur listan presenteras och om namnen är begripliga för användarna. Pröva ett utkast med två eller tre användare.

**Vad händer när en förfrågan visar sig vara något annat?**

Samla exempel på förfrågningar som egentligen var incidenter eller ändringar. Fråga vad felklassificeringen kostade. Diskutera hur deskken känner igen och omklassificerar, och om förfrågningsformuläret hjälper användare att välja rätt. Kom överens om ett enkelt omklassificeringssteg.

## I praktiken: ett agilt ITIL-exempel

En nationell statistikmyndighet har 3 000 anställda och en IT-avdelning på 80. Nyanställda väntar rutinmässigt tio dagar på en fungerande laptop och konton, och chefer klagar på att nyanställda sitter overksamma. Servicedesken hanterar introduktionsförfrågningar som enskilda ärenden, där vart och ett av fem team utför ett steg och för ärendet vidare.

En förbättringsledare kartlägger en introduktionsförfrågan. Hon finner att det faktiska arbetet tar ungefär tre timmar och resten är väntan: på att chefen ska lämna uppgifter, på ett budgetgodkännande för en standardlaptop och på att varje team ska lägga märke till ärendet. Teamet utformar en förfrågningsmodell för nyanställda. Chefen fyller i ett kort formulär tre veckor före startdatum, med de flesta fält ifyllda från personalsystemet. Standardlaptops och konton för rollen är förgodkända. Ett skript skapar konton och grupper; maskinvara beställs automatiskt från en lagerlista; deskken får en enda uppgiftslista. Den nyanställdas chef får uppdateringar och en bekräftelse.

Efter två månader sjunker mediantiden från förfrågan till färdig laptop till tre dagar när formuläret lämnas in i tid. Vissa svårigheter återstår. Ungefär en tredjedel av cheferna lämnar fortfarande in formuläret sent, så nyanställda väntar fortfarande, och skriptet fallerar när personalposten saknar en avdelningskod, vilket ger manuellt reparationsarbete. Teamet lägger till en påminnelse i personalavdelningens introduktionschecklista, sätter upp ett larm för fallerade skript och börjar prata med personalavdelningen om att förbättra data. De behåller också en mänsklig väg för roller som inte passar standardlistan.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam får ofta förfrågningar som egentligen är ändringar: ett nytt fält, en ny rapport. Hjälp deskken att känna igen dem och dirigera dem till er backlogg. Där förfrågningar om er tjänst är frekventa, som åtkomst, bygg en självbetjäningsväg med tydliga gränser och loggning.

### Tjänste- och driftteam

Drift och deskken äger de flesta förfrågningsmodeller. Utforma de vanliga först, ta bort väntan och automatisera där det är säkert. Skydda tid för att bygga och granska modeller, eftersom förfrågningsarbete lätt trycker undan förbättringsarbete. Dela data om väntetider med godkännare och chefer.

### Ledning och styrning

Ledare och godkännare formar mycket av väntan. Fråga vilka godkännanden som tillför kontroll och vilka som tillför försening, och acceptera förgodkännande där risken är låg. Stöd en gemensam förfrågningsplattform över funktioner och be om mått på väntetid snarare än antal ärenden.

### Kunder och användare

Användare har nytta av tydliga namn, korta formulär och ärliga uppskattningar. Ge fullständig information när du ber, och säg när det är brådskande och varför. Tala om för teamet när en förfrågan inte levererade det du behövde, eftersom det förbättrar modellen för nästa person.

## Vanliga orsaker till misslyckande

- **Att behandla förfrågningar som incidenter eller tvärtom.** Prioriteringar och rapporter förvrängs. Skilj i stället dem åt och lär omklassificering.
- **Formulär som frågar för mycket.** Användare överger portalen. Fråga i stället bara efter det ni behöver och fyll i resten i förväg.
- **Godkännanden som ritual.** Varje förfrågan väntar på en underskrift som aldrig avslår. Förgodkänn i stället rutinobjekt och håll verkliga godkännanden snabba.
- **Automatisering utan skyddsåtgärder.** Ett skript gör fel ändring i stor skala. Testa, begränsa och logga i stället automatisering och övervaka fel.
- **Interna namn.** Användare hittar inte vad de behöver. Namnge i stället förfrågningar med användarnas ord och pröva dem.
- **Ingen mänsklig väg.** Ovanliga behov faller mellan stolarna. Erbjud i stället hjälp och behandla udda förfrågningar som återkoppling.
- **Att bara räkna hastighet.** Förfrågningar stängs tidigt. Bekräfta i stället med den som begärde och bevaka upprepade förfrågningar.
- **Att aldrig avveckla förfrågningar.** Listan blir föråldrad. Granska i stället användningen regelbundet och ta bort det ingen ber om.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Förfrågningsmodeller | Varje förfrågan hanteras ad hoc | Modeller finns för vissa frekventa förfrågningar | Modeller finns för de främsta förfrågningarna med ägare och förväntade tider | Modellernas prestanda mäts och justeras | Modeller delas över funktioner och leverantörer |
| Godkännande | Godkännande är informellt eller av vana | Vissa rutinobjekt är förgodkända | Förgodkännandelistor och snabba godkännandevägar är standard | Godkännandeutfall och väntetider granskas | Godkännanderegler samordnas över funktioner utifrån riskdata |
| Automatisering och självbetjäning | Förfrågningar hanteras manuellt via e-post | Vissa förfrågningar finns i en portal eller är automatiserade | Frekventa lågriskförfrågningar är automatiserade och självbetjäning är standard | Automatiseringens framgång och användarens ansträngning mäts | Automatisering och självbetjäning sträcker sig över IT, personal och fastighet |
| Lärande och förbättring | Förfrågningar analyseras inte | Vissa antal samlas in | Väntetider och upprepade förfrågningar granskas regelbundet | Förbättringar planeras utifrån data och effekter kontrolleras | Förbättringsidéer kommer från användare och team i hela organisationen |

## Checklista

- [ ] Vi känner till våra tio vanligaste förfrågningar och hur lång tid var och en tar.
- [ ] Var och en har en förfrågningsmodell: information som behövs, godkännare, steg, ägare, förväntad tid.
- [ ] Förfrågningar är namngivna med användarnas ord.
- [ ] Formulär frågar bara efter nödvändig information och fyller i det vi vet i förväg.
- [ ] Rutinobjekt är förgodkända, och verkliga godkännanden har en snabb väg och en ersättare.
- [ ] Frekventa lågriskförfrågningar är automatiserade med tester och loggar.
- [ ] Förfrågningar, incidenter och ändringar är åtskilda med ett omklassificeringssteg.
- [ ] Vi mäter väntetid såväl som total tid.
- [ ] Den som begär ombeds bekräfta slutförande.
- [ ] Listan över förfrågningar granskas minst två gånger om året.

## AI-prompter

**Syfte: hitta de vanligaste förfrågningarna och de längsta väntetiderna.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Syfte: skriva en förfrågningsmodell för en förfrågan.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: skriva om ett förfrågningsformulär så att det blir kortare och tydligare.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: avgöra vad som ska automatiseras först.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [service-catalog](../../../../skills/service-catalog/SKILL.md): använd för att lista de förfrågningar användare kan göra, med deras ord, med ägare.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): använd för att hitta de vanligaste förfrågningarna och deras volymer.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): använd för att analysera stegen och väntetiderna i en förfrågan.
- [user-story](../../../../skills/user-story/SKILL.md): använd för att beskriva en förfrågan ur användarens synvinkel med acceptanskriterier.
- [runbook](../../../../skills/runbook/SKILL.md): använd för att dokumentera stegen för förfrågningar som förblir manuella.

## Viktiga källor

- **IT service management** (Wikipedia): definierar en serviceförfrågan, enterprise service management och IT-processautomatisering.
- **Help desk** (Wikipedia): bakgrund om köhantering och dirigering för förfrågningar som når en desk.
- **Business process automation** (Wikipedia): allmän bakgrund om att automatisera rutinarbete.
- **ITIL** (Wikipedia): sammanhanget för hantering av serviceförfrågningar i ITIL.

## Referenser

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
