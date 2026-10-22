# Styrning, risk och efterlevnad

**Styrning, risk och efterlevnad sätter riktning, gränser och belägg för en organisations arbete, och i en agil organisation fungerar det bäst som skyddsräcken inbyggda i hur team levererar, inte som grindar placerade i slutet.**

## Varför detta är viktigt

Varje organisation som tillhandahåller tjänster är ansvarig inför någon: kunder, en styrelse, en tillsynsmyndighet, allmänheten. Det ansvaret tar några välbekanta former. Det måste finnas tydlig riktning och beslutsrätter (styrning). Det måste finnas en ärlig bild av vad som kan gå fel och vad som görs åt det (risk). Och det måste finnas belägg för att organisationen följer de lagar, avtal och policyer som gäller den (efterlevnad).

Agila team och styrningsfunktioner möts ofta i ett tillstånd av ömsesidig misstänksamhet. Team ser godkännandenämnder, långa formulär och regler vars skäl de inte kan se. Styrnings- och revisionspersonal ser team som snabbt ändrar produktion och lämnar få spår. Båda sidor har en poäng. Vägen igenom är inte att någon vinner, utan att utforma styrning som är förenlig med täta ändringar: tydliga gränser, riskbaserade kontroller och belägg som produceras av arbetet självt.

[Wikipedia-artikeln om styrning, riskhantering och efterlevnad](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) beskriver GRC som ett helhetsgrepp om styrning, riskhantering och regelefterlevnad, utvecklat på 2000-talet för att hantera alltmer komplexa finansiella efterlevnadskrav. Den nämner ingen kritik och inga IT-specifika ramverk. Det här ämnet kombinerar den med artiklarna om riskhantering och regelefterlevnad, med de tidigare ämnena om ändring, säkerhet och kontinuitet och med DORA:s vägledning om godkännande. Det ger inga juridiska råd; de regler som gäller er beror på ert land, er sektor och era avtal, och rätt källa är regelns text.

## Centrala begrepp

### Styrning

GRC-artikeln beskriver bolagsstyrning som de processer styrelsen sätter som formar struktur och tilldelar roller. Inom IT handlar styrning om vem som beslutar vad, på vilken grund och hur beslut kontrolleras. COBIT, som Wikipedia beskriver som ett ISACA-ramverk för IT-ledning och -styrning, är en referens (se Ämne 2.7 — Ramverk och standarder för ITSM). ITIL:s tjänstevärdessystem omfattar styrning som en komponent (se Ämne 2.3 — Tjänstevärdessystemet i ITIL).

God styrning i en agil organisation är uttrycklig om:

- **Riktning:** mål och prioriteringar, och vem som sätter dem.
- **Gränser:** vad team får besluta ensamma och vad som behöver eskaleras (se Ämne 1.9 — Agil ledning).
- **Ansvar:** vem som svarar för varje tjänst (se Ämne 5.5 — Produkt- och tjänsteägarskap).
- **Belägg:** hur organisationen vet att dess riktning och gränser följs.

### Riskhantering

Wikipedia beskriver riskhantering som identifiering, värdering och prioritering av risker, följt av att minimera, övervaka och kontrollera deras konsekvens eller sannolikhet. Artikeln nämner fyra behandlingsalternativ:

| Alternativ | Betydelse | Exempel |
|---|---|---|
| **Undvikande** | Gör inte den riskfyllda aktiviteten (vilket också avstår från potentiella vinster) | Besluta att inte lagra vissa data |
| **Minskning** | Sänk allvarlighet eller sannolikhet | Automatiserade tester, stegvisa utrullningar, extra övervakning |
| **Delning** | Överför bördan eller nyttan, till exempel genom försäkring eller outsourcing; artikeln noterar att "risköverföring" ofta är en missvisande term, eftersom den ursprungliga parten vanligtvis behåller det juridiska ansvaret | Försäkring, anlita en leverantör |
| **Behållande** | Acceptera förlusten, vanligtvis för små eller oförsäkringsbara risker | Ett beslut att leva med en mindre risk |

Artikeln behandlar också möjligheter, positiva osäkra händelser, med parallella strategier. Den noterar att riskbedömning väger allvarlighet och sannolikhet, och att frekvensdata ofta är knappa, särskilt för katastrofala händelser. Den hänvisar till kritik: Douglas Hubbard (2009) anförs som att säga att vissa standarder visar ingen mätbar förbättring av risk, fastän tilliten till beslut tycks öka; senare forskning antyder att ekonomiska fördelar beror mer på hur ofta och med vilken metod risker bedöms än på vilken formel som används; och Benoit Mandelbrots skillnad mellan "mild" och "vild" risk, där en vanlig felbedömning är att underskatta vildheten. Artikeln hänvisar till ISO 31000, "Risk management: Guidelines", och är själv flaggad som i behov av fler källhänvisningar.

### Riskregistret

Ett **riskregister** är ett register över identifierade risker, med en beskrivning, en bedömning, en ägare, den valda behandlingen och status. Artikelutdraget som lästs för den här guiden nämner det inte, så detta är vanlig praxis. Håll det kort, ägt och granskat. Risker för tjänster omfattar säkerhet, tillgänglighet, leverantörsfel, beroende av nyckelpersoner och efterlevnad (se Ämne 3.13 — Informationssäkerhetshantering, Ämne 3.12 — Hantering av tjänstekontinuitet och Ämne 3.14 — Leverantörshantering).

### Efterlevnad

Wikipedia-artikeln om regelefterlevnad beskriver det som det mål organisationer strävar efter att uppnå genom att vara medvetna om och följa relevanta lagar, policyer och förordningar, och noterar att organisationer i allt högre grad kombinerar kontroller i gemensamma ramverk för att minska dubbelarbete. Den säger att definitionen av en effektiv efterlevnadsplan har varit svårfångad, och nämner standarder som ISO 37301 och ISO 19600. Den nämner regimer inklusive Sarbanes–Oxley Act (2002), HIPAA, GDPR, PCI-DSS, Gramm–Leach–Bliley Act och andra. Den redovisar kritik: psykologisk forskning som artikeln anför hävdar att belöningar eller böter kan försvaga inre motivation och undergräva efterlevnad, förespråkare för personlig integritet ifrågasätter krav på datalagring, tillsyn skiljer sig mellan jurisdiktioner och snabbt föränderliga krav är svåra att följa.

En praktisk poäng: efterlevnad är inte en enda sak. Varje regim har sin egen omfattning och sina egna krav. Ta reda på vilka som gäller vilka av era tjänster från er juridiska funktion eller efterlevnadsfunktion, och skaffa texten.

### GRC som en bild

GRC-artikeln säger att GRC täcker tre relaterade aspekter: bolagsstyrning, företagsövergripande riskhantering och efterlevnad, och nämner varianter som finansiell, juridisk och operativ GRC. Den tillskriver termen Scott Mitchells uppsats från 2007 och Open Compliance and Ethics Group, och noterar att programvara för GRC har funnits sedan 2002 och att vissa företag började använda AI-verktyg för GRC 2025. Fördelen med den kombinerade bilden är att de tre är förbundna: styrning sätter vad som betyder något, riskhantering finner vad som hotar det och efterlevnad visar vad som görs.

### Skyddsräcken, inte grindar

En **grind (gate)** är en kontrollpunkt, vanligtvis manuell, där arbete väntar på godkännande. Ett **skyddsräcke (guardrail)** är en gräns inbyggd i vägen som hindrar arbete från att hamna fel utan att stoppa det. Exempel: automatiserade tester som måste passera, policykontroller i pipelinen som blockerar osäkra konfigurationer, budgetar med larm och rollbaserad åtkomst. DORA:s vägledning om ändringsgodkännande säger att godkännande bäst uppnås genom kollegagranskning och automatisering, att tungt externt godkännande förknippas med sämre leveransprestanda och att lägga till godkännanden som svar på instabilitet tenderar att göra saker värre (se Ämne 3.4 — Ändringsmöjliggörande). Skyddsräcken tillämpar samma idé över styrningen: kontrollen finns i systemet och producerar sina egna belägg.

### Belägg som biprodukt

Revisorer behöver belägg för att kontroller fungerar. En pipeline som registrerar vem som granskade, vad som testades och vad som driftsattes ger belägg för varje ändring. En tjänstekatalog (ITIL skriver "service catalogue") med ägare ger belägg för ansvar. Efteranalyser ger belägg för lärande. Detta är mycket starkare än ett kvartalsdokument skrivet för en revision. Diskutera tidigt med revisorer vad de godtar (se Ämne 5.1 — Agil tjänstehantering).

### Reglerade miljöer

Wikipedia-artikeln om agil programvaruutveckling redovisar att reglerade områden som medicintekniska produkter, läkemedel, finans, kärnkraft, fordon och flygelektronik först ansågs olämpliga för agilt, och att anpassningar nu finns, med hänsyn till kvalitetssäkring, säkerhet, spårbarhet samt verifiering och validering (se Ämne 1.3 — Agil programvaruutveckling). Mönstret som fungerar är vanligtvis att behålla de krävda kontrollerna, automatisera deras belägg och göra dem till en del av definitionen av klart, snarare än att ta bort dem.

### Källornas gränser

GRC-artikeln nämner inga ramverk eller någon kritik och lästes för den här guiden i kort form. Artikeln om riskhantering lästes bara delvis och är flaggad som i behov av källhänvisningar. Efterlevnadsartikeln ger inga kostnader och inga revisionsförfaranden. Använd dessa som kartor och gå till primärkällorna för detaljer.

## Bästa praxis

1. **Skriv ned beslutsrätter.** Ange för varje team eller tjänst vad det får besluta ensamt, vad som kräver samråd och vad som behöver godkännande. Publicera det och gå igenom det med teamen.
2. **Sätt riktning och gränser, inte detaljerade instruktioner.** Ange resultaten, budgetarna, riskgränserna och de icke förhandlingsbara reglerna. Låt team avgöra hur de arbetar inom dem.
3. **För ett kort riskregister.** Lista för varje viktig tjänst de främsta riskerna med en ägare, en behandling och ett granskningsdatum. Granska det vid ett regelbundet möte och släpp risker som har försvunnit.
4. **Välj behandlingen med avsikt.** Avgör för varje risk om den ska undvikas, minskas, delas eller behållas, och registrera vem som fattade beslutet. Kom ihåg att dela en risk inte tar bort ert eget ansvar.
5. **Bedöm ofta, med enkla metoder.** Artikeln redovisar att fördelarna beror mer på frekvens och metod än på formeln. Granska risker regelbundet med en metod teamet förstår.
6. **Känn till vilka regler som gäller vilka tjänster.** Be er juridiska funktion eller efterlevnadsfunktion om en lista över de regimer som gäller, med källtexten. Registrera den för varje tjänst.
7. **Bygg in skyddsräcken i pipelinen.** Automatisera tester, säkerhetsskanningar, policykontroller och åtkomstgränser så att osäkert arbete stoppas tidigt. Behandla kontrollerna som kod med ägare.
8. **Fånga belägg som biprodukt.** Se till att verktygen registrerar granskningar, godkännanden, testresultat, driftsättningar och incidenter. Kom överens med revisorer om vad de godtar.
9. **Kartlägg kontroller en gång.** Om ni måste möta flera ramverk, beskriv era kontroller en gång och koppla dem till varje krav, som efterlevnadsartikeln säger att organisationer i allt högre grad gör.
10. **Använd riskbaserade vägar för ändring.** Gör lågriskändringar snabba, flagga högriskändringar för granskning och behåll ett centralt organ för samordning och avvägningar (se Ämne 3.4 — Ändringsmöjliggörande).
11. **Ta med styrning i retrospektiv.** Fråga periodvis vilka kontroller som hjälpte och vilka som bara tillförde försening. Ta bort eller utforma om de senare, tillsammans med ägaren och revisorn.
12. **Planera för förändring i reglerna.** Utse någon som följer ändringar i lagar, standarder och avtal och rapporterar vad som betyder något för era tjänster.

## Frågor att diskutera med teamet

**Vilka godkännanden behöver vi få, och vad skyddar var och en mot?**

Lista godkännandena vid en typisk ändring eller ett typiskt inköp. Fråga för var och en vilken risk den tar upp och om den någonsin har avslagit något. Godkännanden som inte skyddar mot något är kandidater för borttagning. Godkännanden som skyddar mot en verklig risk kan kanske mötas på ett lättare sätt. Facilitatorn kan fråga vilka belägg godkännaren skulle godta i stället för en underskrift.

**Vilka är de fem främsta riskerna för vår huvudtjänst, och vem äger var och en?**

Be människor lista risker var för sig och jämför sedan. Skillnaderna visar vad teamet ser. Kontrollera att var och en har en ägare och en behandling. Diskutera vilka som accepteras som standard, inte genom beslut.

**Vilka regler gäller oss, och var finns texten?**

Be om listan över lagar, standarder och avtal som gäller. Om ingen kan säga, ta reda på vem som kan. Kontrollera att ingenjörerna vet vad var och en kräver av dem. Kom överens om ett sätt att hålla listan aktuell.

**Vilka belägg producerar våra verktyg redan som en revisor kunde använda?**

Lista registren: granskningar, testresultat, driftsättningshistorik, incidentgranskningar. Fråga vad en revisor har bett om nyligen och om verktygen kunde leverera det. Identifiera ett register att automatisera. Bjud in en revisor att titta.

**Var har vi lagt till en kontroll efter ett problem, och hjälpte den?**

Be om exempel. Jämför med DORA:s varning att lägga till godkännanden som svar på instabilitet tenderar att göra saker värre. Fråga om ett annat svar, som bättre tester eller mindre ändringar, hade fungerat. Registrera en lärdom.

**Hur skulle ett skyddsräcke se ut för något vi nu har en grind för?**

Välj en grind. Fråga vad grinden är avsedd att förhindra och hur det kunde förhindras automatiskt. Till exempel en policykontroll som blockerar en riskfylld konfiguration. Kom överens om en prövning med grindens ägare.

## I praktiken: ett agilt ITIL-exempel

En nationell pensionsfond driver en nätbaserad förmånskalkylator och en betalningstjänst. Den är reglerad, revideras årligen och omfattas av strikta regler om datahantering. Fondens styrningskontor kräver att varje produktionsändring granskas av en ändringsnämnd som sammanträder varje vecka, och att varje projekt slutför en riskbedömning på 30 sidor före release. Utvecklare släpper sällan och i stora satser. En nylig release orsakade en felaktig beräkning för en liten grupp medlemmar, och nämndens svar var att lägga till ännu ett godkännande.

Riskchefen och teknikchefen beslutar att pröva ett annat sätt. De börjar med en lista över de regimer som gäller kalkylatorn och betalningstjänsten, skaffad från fondens juridikenhet med texten för var och en, och kopplar fondens kontroller till dem en gång. Ändringsnämndens roll förändras: rutinmässiga, väl testade ändringar med automatiserade tester och kollegagranskning går vidare utan den, högriskändringar (de som rör beräkningsregler eller betalningar) flaggas av en kort lista med signaler och granskas av en riskspecialist inom två dagar, och nämnden sammanträder för att samordna och hantera undantag. Pipelinen registrerar vem som granskade och vilka tester som passerade, och en policykontroll blockerar releaser som misslyckas i beräkningstestsviten. Riskbedömningen ersätts av en registerpost på en sida per tjänst, granskad månadsvis.

En internrevisor ser pipelinens register och riskregistret och ber om ett urval granskningar för att testa om kollegagranskningen är genuin; teknikchefen ordnar en kvartalsvis stickprovskontroll av en senior ingenjör. Efter sex månader släpps det varje vecka, andelen misslyckade ändringar är lägre och revisionen finner beläggen tillräckliga. Vissa svårigheter återstår. Två team tillämpar högrisksignalerna inkonsekvent, en tillsynsmyndighets vägledning kräver ett uttryckligt godkännande för vissa beräkningsändringar som den nya vägen inte fångar och registerposterna skrivs med liten omsorg i vissa team. Riskchefen lägger till godkännandesteget för dessa ändringar, utfärdar exempel på signalerna och ber teamen ta med en registerpost till en månatlig granskning.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam genomför kontroller genom sina pipelines och arbetssätt. Lär er vilka regler som gäller er tjänst och varför, erbjud sätt att producera belägg automatiskt och ta in risk i planeringen. Behandla skyddsräcken som en del av produkten.

### Tjänste- och driftteam

Driftteam äger många kontroller: åtkomst, övervakning, kontinuitet och register. Håll belägg i verktyg, tala om för styrningen vad som fungerar i praktiken och hjälp till att utforma om grindar som bara tillför försening. Delta i riskgranskningar med verkliga incidentdata.

### Ledning och styrning

Ledare sätter riktning, gränser och ansvar och avgör vilka risker som ska accepteras. Be om riskbilder i enkla ord och om belägg, inte om dokumentmängd. Var villiga att ersätta en grind med ett skyddsräcke när syftet kan mötas. Håll nämndens roll fokuserad på samordning och verkliga avvägningar.

### Kunder och användare

Kunder och användare förlitar sig på att organisationen hanterar deras data och pengar ordentligt. Fråga leverantörer vilka standarder och regler de följer och hur de visar det. Räkna med ärlig information efter ett fel. Om du har särskilda krav, som en tillsynsmyndighets regel, tala om det för leverantören tidigt.

## Vanliga orsaker till misslyckande

- **Styrning som slutgrind.** Granskningar kommer i slutet och bromsar allt. Bygg i stället in skyddsräcken i arbetet och granska efter risk.
- **Dokument som belägg.** Rapporter skrivs för revisorn. Ta i stället fram belägg från de verktyg som används i arbetet.
- **En väg för all ändring.** Rutinändringar väntar med riskabla. Klassificera i stället efter risk.
- **Ett riskregister som ingen läser.** Det blir en lång lista. Håll det i stället kort, ägt och granskat.
- **Att behandla risköverföring som riskborttagning.** Försäkring eller outsourcing antas avsluta ansvar. Kom i stället ihåg att den ursprungliga parten vanligtvis behåller ansvaret.
- **Okända regler.** Team vet inte vilka lagar och standarder som gäller. Skaffa i stället listan och texten från juridik eller efterlevnad.
- **Kontroll tillagd efter varje incident.** Processen växer och farten faller. Leta i stället efter orsaken och åtgärda den med tester, mindre ändringar eller snabbare återhämtning.
- **Efterlevnad som straff.** Böter och rädsla dominerar. Förklara i stället reglernas syfte och gör den säkra vägen till den enkla.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Styrning och beslutsrätter | Beslut följer vana och hierarki | Vissa team har skrivna gränser | Beslutsrätter, gränser och ägare är skrivna och delade | Styrningens effektivitet granskas mot resultat | Styrning samordnas mellan team, leverantörer och partner |
| Riskhantering | Risker diskuteras informellt | Vissa tjänster har risklistor | Korta ägda riskregister med behandlingar granskas regelbundet | Riskmått och händelser informerar bedömning och behandling | Riskbilder delas och konsolideras i hela organisationen |
| Efterlevnad och belägg | Belägg sammanställs för revisioner | Visst belägg produceras av verktyg | Tillämpliga regler är listade; kontroller kartläggs en gång; belägg kommer från verktyg | Kontrollernas funktion och beläggens kvalitet mäts | Belägg delas fortlöpande med revisorer och partner |
| Skyddsräcken och ändringsvägar | Kontroller är manuella grindar | Vissa automatiserade kontroller finns | Riskbaserade vägar och skyddsräcken i pipelinen är standard | Skyddsräckenas effektivitet och felaktiga blockeringar följs och justeras | Skyddsräcken delas och förbättras mellan team |

## Checklista

- [ ] Beslutsrätter och gränser är skrivna för varje team eller tjänst.
- [ ] Varje viktig tjänst har ett kort riskregister med ägare, behandlingar och granskningsdatum.
- [ ] Vi har en lista över de lagar, standarder och avtal som gäller varje tjänst, med källtext.
- [ ] Våra kontroller är beskrivna en gång och kopplade till varje krav.
- [ ] Pipelinen registrerar granskningar, tester och driftsättningar som belägg.
- [ ] Revisorer har sagt vilka belägg de godtar i stället för underskrifter.
- [ ] Rutinmässiga och riskabla ändringar följer olika vägar med tydliga kriterier.
- [ ] Varje godkännande har ett angivet syfte, och godkännanden som aldrig avslår granskas.
- [ ] Kontroller som lagts till efter incidenter granskas för sin effekt.
- [ ] Någon följer ändringar i tillämpliga regler och rapporterar dem.

## AI-prompter

**Syfte: göra en godkännandekedja till alternativ med skyddsräcken.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: utarbeta en riskregisterpost.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: lista de belägg era verktyg redan producerar för en kontroll.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: förbereda ett styrningssamtal mellan leveransteam och revision.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera och granska risker, behandlingar och ägare.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): använd för att föra en lättviktig logg över risker, åtgärder, frågor och beslut.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): använd för att välja tidiga varningsmått för risker.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): använd för att förbereda revisioner och organisera belägg.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att göra beslutsrätter och ansvar uttryckliga.

## Viktiga källor

- **Governance, risk management, and compliance** (Wikipedia): en kort översikt av GRC, dess komponenter och dess historia.
- **Risk management** (Wikipedia): definitionen, behandlingsalternativen och förbehåll om riskbedömning.
- **Regulatory compliance** (Wikipedia): definitionen, namngivna regimer och kritik.
- **Streamlining change approval** (DORA, dora.dev): forskningsbaserad vägledning om att ersätta tungt godkännande med kollegagranskning och automatisering.

## Referenser

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
