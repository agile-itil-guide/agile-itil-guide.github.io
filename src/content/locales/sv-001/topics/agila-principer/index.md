# Agila principer

**De tolv principerna bakom det agila manifestet gör fyra värdeutsagor till vanor som går att kontrollera, och var och en kan läsas som en fråga att ställa till en levande tjänst lika väl som till ett programvaruprojekt.**

## Varför detta är viktigt

De fyra värderingarna i manifestet talar om för ett team åt vilket håll det ska luta (se Ämne 1.1 — Det agila manifestet). De tolv principerna säger hur det ser ut att luta åt det hållet i det dagliga arbetet: hur ofta man ska leverera, hur man behandlar ändrade krav, vem som talar med vem, vad som räknas som framsteg och hur ett team fortsätter att lära sig. De är korta nog att lära sig utantill och tillräckligt specifika för att prövas mot vad ett team gjorde förra veckan.

För ett team som driver tjänster är principerna användbara eftersom de går tvärs över den vanliga uppdelningen mellan att bygga och att driva. Flera av dem, som jämn arbetstakt, uppmärksamhet på teknisk kvalitet och regelbunden reflektion, beskriver vad som håller en tjänst frisk under många år och inte bara vad som får en funktion ut genom dörren. Andra principer drar åt motsatt håll mot vanor som vuxit fram kring IT-tjänstehantering (ITSM), som att behandla varje ändring som en risk som ska kontrolleras innan den sker. Att läsa de två sida vid sida visar var spänningen är verklig och var den kommer från gamla antaganden.

Principerna skrevs 2001 om programvaruutveckling, så de nämner inte incidenter, servicenivåer eller jourscheman. Det är ett gap som du fyller genom tolkning, och tolkningen är arbetet i det här ämnet. Betrakta läsningarna nedan som förslag att pröva i ditt eget sammanhang, inte som författarnas åsikter.

## Centrala begrepp

### Var principerna kommer ifrån

Principerna publiceras på [agilemanifesto.org](https://agilemanifesto.org/principles.html) under rubriken "Principles behind the Agile Manifesto", inledda med orden "We follow these principles." De hör till manifestet som skrevs av gruppen som möttes i Snowbird, Utah, i februari 2001. [Wikipedia-artikeln om agil programvaruutveckling](https://en.wikipedia.org/wiki/Agile_software_development) listar dem som de tolv principerna bakom manifestet.

Endast de fyra värderingarna bär manifestets underskrifter. Principerna är gruppens utveckling av dessa värderingar, och det är dem de flesta team citerar när de vill kontrollera ett arbetssätt. Texten för varje princip finns hos källan; det här ämnet sammanfattar varje princip med egna ord och citerar bara korta fraser.

### De tolv principerna i korthet

Tabellen grupperar principerna efter tema och ger en enkel omformulering av var och en. Numren följer ordningen på agilemanifesto.org.

| # | I korthet | Vad det kan betyda för ett team som driver tjänster |
|---|---|---|
| 1 | Tillfredsställ kunden genom tidig och kontinuerlig leverans av värde | Släpp användbara förbättringar av en tjänst i små steg i stället för att spara dem till en stor lansering. Bedöm framgång efter vad användarna får, inte efter vad planen sade. |
| 2 | Välkomna ändrade krav, även sent | Behandla en ändring i vad kunden behöver som information, inte som en förolämpning mot planen. Gör er ändringsprocess så snabb att det går att välkomna en ändring. |
| 3 | Leverera fungerande programvara ofta, och föredra den kortare tidsskalan | Håll intervallet mellan releaser kort, från dagar till några veckor. Små releaser har mindre risk var och är lättare att återställa. |
| 4 | Verksamhetsföreträdare och utvecklare arbetar tillsammans dagligen | Sätt de som förstår verksamhetens behov i samma samtal som de som bygger och driver tjänsten, varje dag, inte vid kvartalsgenomgångar. |
| 5 | Bygg kring motiverade individer, ge dem stöd och lita på dem | Ge teamet åtkomst, verktyg och befogenhet att lösa problem utan en kedja av tillstånd. Förtroende måste matchas av tydligt ansvar. |
| 6 | Samtal ansikte mot ansikte är det bästa sättet att förmedla information | När en tjänst fallerar, prata. Skriv ned resultatet efteråt. Använd video eller ett gemensamt samtal om människor inte är på samma plats. |
| 7 | Fungerande programvara är det främsta måttet på framsteg | Mät det som körs och fungerar för användarna, som en funktion som används eller en incident som inte längre återkommer, inte producerade dokument eller stängda uppgifter. |
| 8 | Hållbar utveckling: en jämn takt, utan tidsgräns | Skydda människor från permanent hjältedåd. Ett jourschema som beror på ett fåtal utmattade individer är en risk för tjänsten. |
| 9 | Kontinuerlig uppmärksamhet på teknisk excellens och god design | Åtgärda orsakerna till upprepade fel och håll plattformen underhållbar. Kvalitetsarbete i dag är det som låter er förändra snabbt senare. |
| 10 | Enkelhet: maximera mängden arbete som inte behöver göras | Ta bort tjänster, steg, godkännanden och dokument som inte längre tjänar något syfte. Varje sak ni behåller måste drivas, uppdateras och förklaras. |
| 11 | De bästa designerna växer fram ur självorganiserande team | Låt dem som står närmast arbetet bestämma hur det ska göras inom tydliga ramar. Ge skyddsräcken, inte detaljerade instruktioner. |
| 12 | Reflektera med jämna mellanrum och justera | Håll regelbundna genomgångar av hur teamet arbetar, även efter incidenter, och gör minst en verklig förändring av varje. |

### Fyra teman

Principerna delas in i fyra grupper som är användbara när du planerar ett samtal.

- **Värde och förändring (1, 2, 3):** leverera tidigt och ofta, och behandla förändring som normalt. Dessa principer är de som står i störst spänning mot tung ändringskontroll.
- **Människor och kommunikation (4, 5, 6):** dagligt samarbete, förtroende och direkta samtal. Dessa principer betyder mest under incidenter och överlämningar.
- **Kvalitet och hållbarhet (7, 8, 9, 10):** fungerande resultat som mått på framsteg, en takt människor kan hålla, teknisk kvalitet och enkelhet. Dessa principer skyddar en tjänst under många år.
- **Lärande och självorganisering (11, 12):** team som bestämmer hur de ska arbeta och förbättrar hur de arbetar. Dessa principer hänger ihop med ständig förbättring (se Ämne 3.15 — Ständig förbättring).

### Principer och arbetssätt är inte samma sak

En princip anger en riktning. Ett arbetssätt är ett sätt att följa den. Scrum, Kanban och Extreme Programming är paket av arbetssätt som deras användare säger följer principerna (se Ämne 1.4 — Leveransprognoser och planeringsmått, Ämne 1.5 — Kanban och Ämne 1.6 — Extreme Programming). Ett team kan följa ett arbetssätt och bryta mot principen bakom det. Ett dagligt stand-up som blir en statusrapport till en chef behåller ritualen och förlorar poängen med princip 4 och princip 5.

### Där principerna är tysta eller omstridda

Principerna säger ingenting om säkerhet, revision, reglering eller kostnaden för ett avbrott. De säger inte vem som har jour klockan tre på natten. Ett tjänsteteam måste ta in den kunskapen från ITSM och från sitt eget sammanhang. Kritiker påpekar också att princip 6 kan vara svår att uppfylla när team är spridda över tidszoner, och att "fungerande programvara som främsta mått" kan läsas som att dokumentation ignoreras. Wikipedia-artikeln om agil programvaruutveckling redovisar kritik av det här slaget och noterar att belägg för fördelarna med agila metoder är begränsade. Pröva principerna mot era egna resultat.

## Bästa praxis

1. **Använd principerna som en granskningschecklista.** Välj två eller tre principer varje månad och fråga om en nyligen genomförd release, incident eller ett projekt om teamets beteende stämde. Använd verkliga händelser, inte allmän diskussion. Värdet ligger i de gap ni hittar.
2. **Korta intervallet mellan releaser innan ni automatiserar.** Princip 3 föredrar den kortare tidsskalan. Fråga vad som hindrar er från att släppa varje vecka i stället för varje månad, lista hindren och ta bort dem i tur och ordning. Automatiseringen stöder då en rytm ni redan har.
3. **Skapa en väg för sena ändringar.** Princip 2 ber er välkomna förändring, vilket bara fungerar om det finns ett snabbt, säkert sätt att ta emot den. Definiera en lätt väg för ändringar med låg risk och behåll en fullständigare granskning för riskabla (se Ämne 3.4 — Ändringsmöjliggörande).
4. **Sätt verksamhets- och tekniska personer i samma rum varje dag.** Princip 4 ber om dagligt samarbete. I ett tjänsteteam kan det betyda en tjänsteägare som deltar i det dagliga mötet, eller en produktföreträdare som sitter med servicedesken en gång i veckan.
5. **Matcha förtroende med ansvar.** Princip 5 ber er lita på motiverade människor. Ange tydligt vad varje team äger, vad det får besluta ensamt och vad det måste eskalera. Förtroende växer när beslut och deras resultat är synliga.
6. **Prata först, dokumentera sedan.** Under en incident, få rätt personer in i ett samtal, på plats eller i ett samtal på distans, och låt någon skriva ned beslut och tider medan de sker. Det tjänar princip 6 och ger er ett underlag för senare genomgång (se Ämne 3.2 — Incidenthantering).
7. **Räkna resultat, inte aktivitet.** Princip 7 gör fungerande programvara till måttet på framsteg. För en tjänst, välj mått som tid till återställd tjänst, hur många användare som använder en ny funktion och hur ofta ett fel återkommer. Undvik mått som belönar snabb stängning av ärenden utan att något åtgärdats (se Ämne 5.6 — Mått och mätning).
8. **Skydda takten.** Princip 8 ber om en takt teamet skulle kunna hålla för evigt. Granska jourbelastning, övertid och antalet brådskande avbrott, och behandla en stigande trend som en tjänsterisk, inte som ett personligt tillkortakommande.
9. **Betala av teknisk skuld enligt schema.** Princip 9 kopplar kvalitet till smidighet. Reservera en synlig andel av varje cykel för reparationer, uppgraderingar och tester, och koppla den till problemposter så att arbetet bygger på belägg (se Ämne 3.3 — Problemhantering).
10. **Ta bort saker.** Princip 10 värdesätter arbete som inte behöver göras. En gång per kvartal, lista tjänster, rapporter, formulär och godkännandesteg och avveckla dem som ingen använder eller som inte längre minskar risk.
11. **Ge team skyddsräcken, inte manus.** Princip 11 hävdar att goda designer kommer från självorganiserande team. Sätt gränserna, som säkerhetsregler, budgetar och servicenivåer, och låt teamet välja hur de ska uppfyllas.
12. **Avsluta varje reflektion med en förändring.** Princip 12 ber teamet reflektera och sedan justera. Efter varje retrospektiv eller efteranalys, kom överens om en förändring, utse en ägare och kontrollera den vid nästa genomgång.

## Frågor att diskutera med teamet

**Vilken av de tolv principerna följer vi bäst i dag, och vilken följer vi minst?**

Ge varje person listan och be dem markera en princip de tycker att teamet följer väl och en som det följer dåligt, och jämför sedan. Oenighet är användbar eftersom den visar var människor ser arbetet olika. Be om ett färskt exempel bakom varje markering. En facilitator bör hålla samtalet på händelser och bort från personer. Avsluta med att välja en princip för teamet att arbeta med.

**Hur lång tid tar det för oss att få en liten, användbar förbättring framför våra användare, och vad bromsar?**

Den här frågan prövar principerna 1 och 3. Följ en nyligen genomförd liten ändring från förfrågan till release och skriv ned varje väntetid. Typiska svar är godkännandemöten, manuell testning och releasefönster. Några av dessa väntetider skyddar mot verklig risk, så fråga vad var och en skyddar. Fortsätt med att välja en väntetid att förkorta.

**När drabbades vi senast av att kunden ändrade sig sent, och vad hade låtit oss ta emot ändringen?**

Be om ett verkligt fall och undvik generaliseringar. Människor nämner ofta kontraktsvillkor, fast omfattning eller en release som redan var frusen. Leta efter punkten där ett ja hade kostat lite och fråga vad som hade gjort det möjligt. Den här frågan kopplar princip 2 till hur teamet planerar.

**Vem från verksamheten talar med dem som driver och bygger våra tjänster varje dag, och vem borde?**

Kartlägg de personer som är inblandade i en tjänst: ägaren, användarna, supportpersonalen, byggarna. Markera hur ofta varje par talar med varandra. Gap uppstår ofta mellan supportpersonal och byggare, eller mellan användare och någon med befogenhet att besluta. En facilitator kan fråga vilket gap som orsakat mest problem de senaste sex månaderna och föreslå en liten, regelbunden kontakt för att täppa till det.

**Vad skulle krävas för att vi ska kunna arbeta i den här takten i ytterligare fem år?**

Den här frågan prövar princip 8. Fråga om jourbelastning, helgarbete och hur teamet känner inför att ta ledigt. Se upp för svar som behandlar hjältedåd som normalt. Be om fakta, som hur många samtal utanför arbetstid det senaste jourschemat gav, och håll diskussionen på systemet, inte på individer. Fortsätt med en förändring som skulle sänka belastningen.

**Vad gör vi som vi skulle kunna sluta göra utan att skada en kund?**

Den här frågan tillämpar princip 10. Bjud in människor att nämna rapporter som ingen läser, möten som upprepar varandra och godkännanden som aldrig nekar något. Fråga vem som skulle märka det om var och en togs bort. Svaren behöver kontrolleras före åtgärd, så ge någon i uppdrag att ta reda på det. Team upptäcker ofta snabba vinster här, och övningen bygger vanan att ifrågasätta gamla regler.

## I praktiken: ett agilt ITIL-exempel

En regional sjukhusförvaltnings IT-avdelning stöder ett fyrtiotal kliniska och administrativa applikationer med en servicedesk på sex personer och ett litet team utvecklare som underhåller egna verktyg. Klinisk personal klagar på att rättningar i tidsbokningsverktyget tar månader, och utvecklarna säger att det mesta av tiden går åt till att vänta på den månatliga ändringsnämnden och på en lugn helg för driftsättning.

Avdelningschefen håller en halvdagsworkshop med de tolv principerna som checklista. Gruppen tittar på de sex senaste ändringarna i bokningsverktyget. Fem var små rättningar, och var och en väntade i genomsnitt fem veckor på ändringsnämnden. Gruppen ser att principerna 2 och 3 inte följs i praktiken, och att princip 4 också är svag eftersom den kliniska ansvariga för bokningsverktyget bara ser ändringar efter att de byggts.

Avdelningen kommer överens om ett försök. Rättningar som bara berör en skärmbild, har godkända automatiserade tester och kan återställas på några minuter ska behandlas som standardändringar och godkännas i förväg, med den kliniska ansvariga automatiskt underrättad. Ett veckomöte på tio minuter mellan den kliniska ansvariga, en utvecklare och en analytiker från servicedesken ska välja vad som ska rättas härnäst. Teamet lägger till en månatlig genomgång av hur ändringstyperna fungerar, vilket tjänar princip 12.

Efter tre månader når små rättningar användarna på ungefär en vecka. Servicedesken rapporterar färre upprepade samtal om kända fel. Ett problem återstår: två av veckomötena föll bort när den kliniska ansvariga var på avdelningarna, och ett beslut som behövde hennes godkännande väntade en vecka. Avdelningen kommer överens om att utse en ersättare. De upptäcker också att en del personal läste "lita på teamet" som tillstånd att hoppa över underrättelsesteget, så de gör underrättelsen automatisk i stället för att förlita sig på att människor skickar den.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam kan använda principerna som ett test för sitt eget arbete. Fråga om en funktion är liten nog att släppas snart, om den kan övervakas och återställas och om supportpersonalen känner till den. Principerna 3, 7 och 9 är de som oftast avgör om en release är en gåva eller en börda för dem som ska driva den.

### Tjänste- och driftteam

Driftteam kommer att känna igen flera principer som gamla sanningar: tala med varandra under en incident, håll en hållbar takt och håll saker enkla. Använd dem för att argumentera för tid att åtgärda återkommande problem, för jourscheman människor kan leva med och för tidigt deltagande i design. Var beredd att förklara vilka ITSM-kontroller som finns av goda skäl, så att samtalet handlar om syfte och inte om slagord.

### Ledning och styrning

Ledare bestämmer hur långt principerna kan följas. Att välkomna förändring innebär att acceptera att planer flyttar sig, och att lita på team innebär att acceptera att du inte godkänner varje beslut. Fråga vilka belägg du behöver för att vara trygg med det förtroendet, som servicenivårapporter, revisionsspår eller incidentgenomgångar, och se till att teamet kan ta fram dem utan tungt manuellt arbete.

### Kunder och användare

För kunder lovar principerna täta, användbara ändringar och inflytande över vad som kommer härnäst. De ber också om något i gengäld: daglig eller åtminstone regelbunden kontakt, snabba beslut och vilja att prova små releaser. Kunder som bara dyker upp i början och slutet av ett projekt får den långsammaste formen av fördelarna.

## Vanliga orsaker till misslyckande

- **Att behandla principerna som en regelbok.** Team bråkar om ordalydelse och missar avsikten. Använd i stället en princip för att inleda ett samtal om en verklig händelse och besluta vad som ska ändras.
- **Att läsa "välkomna förändring" som "acceptera allt".** Utan gränser destabiliseras en tjänst av varje förfrågan. Välkomna i stället förändring genom en definierad väg som snabbt kontrollerar risk, kostnad och värde.
- **Att släppa ofta utan kvalitet.** Täta releaser med svaga tester ger täta avbrott. Behandla i stället princip 9 som ett villkor för princip 3, och investera i tester och återställning innan ni ökar farten.
- **Att förväxla jämn takt med långsam takt.** Ett team som använder "hållbar" för att undvika hårt arbete förlorar förtroende. Kom i stället överens om hur en jämn, ambitiös takt ser ut och mät den över månader.
- **Att ersätta samtal ansikte mot ansikte med ett verktyg.** Chattkanaler och ärenden fylls av detaljer som ingen läser. Håll i stället ett samtal när en fråga är brådskande eller oklar, och dokumentera beslut efteråt.
- **Att mäta framsteg efter aktivitet.** Att räkna stängda ärenden eller släppta releaser belönar rörelse. Följ i stället resultat som användarna kan se, som återställd tjänst, antagna funktioner och färre upprepade incidenter.
- **Att hålla retrospektiv som inte ändrar något.** Teamet pratar och nästa cykel blir likadan. Kom i stället överens om en förändring vid varje retrospektiv och kontrollera den först vid nästa.
- **Att bortse från principernas tystnad om risk.** Team hoppar över säkerhet och efterlevnad eftersom principerna inte nämner dem. Lägg i stället till dem som uttryckliga begränsningar och diskutera hur de kan uppfyllas i små steg.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Leveransrytm (principerna 1–3) | Releaser är sällsynta och stora | Vissa team släpper i små steg | Team delar en kort releaserytm och en väg för sena ändringar | Releaseintervall och ledtid följs och granskas | Releaserytmer samordnas mellan tjänster och leverantörer |
| Samarbete (principerna 4–6) | Verksamhets- och tekniska medarbetare möts vid milstolpar | Vissa team möts dagligen med verksamhetsföreträdare | Varje tjänst har en namngiven ägare och regelbunden kontakt med sina användare | Gap i samarbetet hittas vid genomgångar och åtgärdas | Kunder och leverantörer deltar i planering och incidentgenomgångar |
| Hållbarhet och kvalitet (principerna 7–10) | Press hanteras med övertid; kvalitetsproblem tolereras | Vissa team följer jourbelastning och teknisk skuld | Tid för reparationer och ett rättvist jourschema är inbyggda i planeringen | Resultat, belastning och återkommande fel mäts och åtgärdas | Förenkling är rutin i hela organisationen |
| Lärande och självorganisering (principerna 11–12) | Genomgångar sker bara efter allvarliga fel | Vissa team håller regelbundna retrospektiv | Varje team granskar sitt arbete med fast rytm och noterar en förändring | Åtgärder från genomgångar följs till slut och resultaten kontrolleras | Förbättringar från ett team sprids till andra utan central styrning |

## Checklista

- [ ] Varje teammedlem har läst de tolv principerna på agilemanifesto.org.
- [ ] Vi har granskat en nyligen genomförd release eller incident mot minst tre principer.
- [ ] Vi känner till vårt releaseintervall och har listat vad som hindrar oss från att korta det.
- [ ] Ändringar med låg risk har en snabb godkännandeväg, och riskabla ändringar har en fullständigare.
- [ ] Varje tjänst har en namngiven ägare som regelbundet talar med sina användare.
- [ ] Incidenter för samman rätt personer i ett samtal, med beslut dokumenterade.
- [ ] Vi följer jourbelastningen och går igenom den minst en gång per kvartal.
- [ ] En synlig andel av varje cykel går till reparationer och teknisk skuld.
- [ ] Vi har avvecklat minst en rapport, ett steg eller en tjänst under det senaste kvartalet.
- [ ] Varje retrospektiv avslutas med en överenskommen förändring, en ägare och ett datum för kontroll.

## AI-prompter

**Syfte: granska en nyligen genomförd release eller incident mot de tolv principerna.**

```text
You are helping a team review a recent event against the twelve principles behind the Agile Manifesto.

The twelve principles, in short: (1) satisfy the customer through early and continuous delivery; (2) welcome changing requirements; (3) deliver frequently, preferring shorter timescales; (4) business people and developers work together daily; (5) build around motivated individuals and trust them; (6) face-to-face conversation; (7) working software is the primary measure of progress; (8) a sustainable, constant pace; (9) attention to technical excellence and good design; (10) simplicity, maximizing the work not done; (11) self-organizing teams; (12) regular reflection and adjustment.

Event: [paste a factual, blameless description of a release, incident, or delayed change, in the order things happened].

Pick the three principles most relevant to this event. For each, say in two or three sentences whether the team's behavior matched the principle, citing only details from the event text. Then suggest two questions for the team to discuss. Ask me up to three clarifying questions first if the event description is too thin. Mark assumptions, and list what you are unsure of.
```

**Syfte: ta reda på vad som bromsar små ändringar, med principerna 2 och 3.**

```text
I want to understand why small changes take a long time to reach our users. Here is the sequence of steps for one recent small change, with how long each step took: [paste the steps and durations; for example "request raised, 1 day; waiting for change board, 9 days"].

Our change process is described as: [paste a short description of the change approval process, including who approves what].

List the waits in order of length. For each wait, suggest what risk it may be protecting against and one lighter way to manage that risk. Do not claim that any standard or regulation requires a step unless I have pasted its text. Mark where you are guessing, and list what you are unsure of.
```

**Syfte: göra principerna till frågor för ett retrospektiv.**

```text
Create a 45-minute retrospective plan for a team of [number and type of people, e.g. "seven people who build and run an internal payroll service"]. The retrospective should use the twelve Agile Manifesto principles to look at the last [period, e.g. "four weeks"].

Context: [paste 3-5 sentences about what happened in the period, including any incident, release, or conflict].

Include a timed agenda, one activity that surfaces facts, one that groups them by principle, and a closing step where the team agrees exactly one change with an owner and a date to review. Keep it free of any specific tool. If information is missing, ask me clarifying questions first, and list what you are unsure of.
```

**Syfte: kontrollera en föreslagen process med avseende på enkelhet (princip 10).**

```text
Here is a process we use: [paste the steps, who does them, and the forms or approvals involved].

For each step, ask what purpose it serves, who benefits, and what would happen if it were removed. Then propose a shorter version that keeps the purposes that matter. Flag any step that exists because of an external requirement I have named: [list any laws, contracts, or standards you are certain apply, or write "none known"]. Do not invent requirements. List your assumptions and what you are unsure of.
```

## AI-färdigheter

- [agile-principles](../../../../skills/agile-principles/SKILL.md): använd för att kontrollera ett arbetssätt eller beslut i teamet mot principerna och för att samtala om vad var och en betyder i sitt sammanhang.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): använd för att hålla den regelbundna reflektion som princip 12 ber om och göra den till en verklig förändring.
- [kaizen](../../../../skills/kaizen/SKILL.md): använd för att planera små, kontinuerliga förbättringar efter en reflektion eller genomgång.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): använd för att planera täta, små releaser i linje med principerna 1 och 3.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): använd när du hjälper ett team att gå från att följa ritualer till att förstå principerna bakom dem.

## Viktiga källor

- **Principles behind the Agile Manifesto** (agilemanifesto.org): originaltexten för de tolv principerna; läs den i sin helhet.
- **Manifesto for Agile Software Development** (agilemanifesto.org): de fyra värderingar som principerna utvecklar.
- **History: The Agile Manifesto** (agilemanifesto.org): författarnas berättelse om hur gruppen möttes och vad den ville förändra.
- **Agile software development** (Wikipedia): en översikt med historia, arbetssätt och kritik, användbar för att hitta vidare läsning.

## Referenser

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
