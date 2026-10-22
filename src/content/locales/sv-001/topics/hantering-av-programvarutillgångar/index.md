# Hantering av programvarutillgångar

**Hantering av programvarutillgångar ser till att en organisation köper den programvara den behöver, använder det den köper och följer de villkor den har godtagit, och för agila team betyder det nu att följa komponenter med öppen källkod och prenumerationer såväl som licensierade produkter.**

## Varför detta är viktigt

Programvara är en av de största och minst synliga kostnaderna inom IT. Licenser köps för människor som har slutat, prenumerationer förnyas obemärkt och produkter installeras på sätt som licensen inte tillåter. Var och en är en kostnad eller en risk. En leverantörsrevision kan förvandla en liten avvikelse till en stor faktura, och en ouppdaterad komponent i en bortglömd applikation kan öppna en dörr för en angripare.

Agila team förändrar bilden. Utvecklare drar in bibliotek med ett enda kommando, och moderna applikationer är till stor del hopsatta av tredjeparts- och öppen källkod-delar. Wikipedia-artikeln om programvarans leveranskedja rapporterar att öppen källkod fanns i 96 procent av de kommersiella kodbaser en leverantör analyserade 2024, med hänvisning till Synopsys. Team köper också molntjänster och prenumerationer med kort, utanför inköpsprocessen. Hantering av programvarutillgångar (software asset management, SAM) har därför vuxit från att räkna installationer av några stora produkter till ett arbetssätt som täcker vad som används, vad som är skyldigt och vad som är betrott.

[Wikipedia-artikeln om hantering av programvarutillgångar](https://en.wikipedia.org/wiki/Software_asset_management) beskriver SAM som ett affärsarbetssätt för att hantera och optimera inköp, driftsättning, underhåll, utnyttjande och avyttring av programvara, med målen att minska IT-kostnader, begränsa affärsmässig och juridisk risk och förbättra slutanvändares produktivitet. Den täcker inte molntjänster, SBOM eller mognadsmodeller, så det här ämnet lägger till artiklarna om programvarans leveranskedja och öppen källkod. Det här ämnet beskriver praxis och ger inga juridiska råd; licensvillkor skiljer sig, och rätt källa är licens- eller avtalstexten.

## Centrala begrepp

### Vad SAM är

Enligt Wikipedia är SAM en del av hantering av IT-tillgångar (se Ämne 4.1 — Hantering av IT-tillgångar). Den hänvisar till ITIL som beskriver det som omfattande effektiv hantering, kontroll och skydd av programvarutillgångar. Dess strategiska mål, så som artikeln listar dem, omfattar att minska kostnader för programvara och support genom volymavtal och omfördelning av oanvända licenser, att genomdriva säkerhetspolicyer och standarder för stationära, server- och mobila miljöer, att förbättra produktiviteten genom att driftsätta teknik snabbare och mer tillförlitligt, att begränsa hanteringsarbetet genom automatisering och att upprätta policyer för anskaffning, driftsättning, användning och avveckling.

### Licensefterlevnad

Artikeln beskriver SAM som att balansera antalet inköpta licenser mot antalet faktiskt förbrukade och att säkerställa att användningen stämmer med varje leverantörs licensvillkor. Den noterar att installationer är det vanligaste måttet på förbrukning, men viss programvara licensieras per användare, kapital, processorer eller processorkärnor. Organisationer kan minska ansvaret vid revisioner av leverantörer eller tredje parter som Business Software Alliance, säger artikeln, genom löpande programvaruinventeringar, inköpspolicyer och verktyg. Artikeln beskriver inte revisionsförfaranden. Poängen med övningen är att känna till er **rättighet (entitlement)** (vad ni får använda), er **förbrukning** (vad ni använder) och gapet mellan dem.

### De tre frågorna

Ett SAM-arbetssätt besvarar tre frågor för varje viktig produkt:

| Fråga | Vad den behöver |
|---|---|
| Vad har vi rätt till? | Avtal, licensvillkor, fakturor och inköpsbevis |
| Vad använder vi? | Inventerings- och användningsdata från upptäckt och mätning |
| Vad är gapet, och vad gör vi åt det? | Jämförelse, beslut om att köpa, omfördela eller ta bort |

Ett gap kan gå åt båda hållen: underlicensiering, som är en efterlevnadsrisk, och överlicensiering, som är slöseri.

### Standarder: ISO/IEC 19770

Artikeln listar delarna av ISO/IEC 19770-familjen: 19770-1:2017 (krav på system för hantering av IT-tillgångar, ett processramverk som kan införas i stegvisa nivåer), 19770-2:2015 (programvaruidentifieringsetiketter), 19770-3:2016 (ett rättighetshanteringsschema för licens-, avtals- och fakturauppgifter), 19770-4:2017 (data för mätning av resursutnyttjande) och 19770-5:2015 (översikt och ordförråd). Artikeln säger att standarden för programvaruidentifiering stöds av IBM, Microsoft och Adobe. Kontrollera standarderna för aktuella utgåvor och exakt innehåll.

### SAM-teknik och dess gränser

Artikeln listar verktyg för programvaruinventering, licenshantering, mätning, applikationskontroll, driftsättning, uppdateringshantering, förfrågningshantering och produktkatalogisering. Den ger också ett exempel på skala: mätregler i Microsofts System Center Configuration Manager fungerar bra för små miljöer men genererar ohanterliga datavolymer i företagsskala. Verktyg hjälper, men de behöver en tydlig fråga och en ägare.

### Öppen källkod

Wikipedia definierar öppen källkod (open-source software) som programvara vars källkod är offentligt tillgänglig och som användare får använda, studera, ändra och distribuera, vanligtvis under en öppen licens. Open Source Initiative upprätthåller den vanligaste definitionen, med tio kriterier och en lista över godkända licenser, men artikeln säger att OSI saknar rättslig auktoritet över termen. Den beskriver två licensfamiljer:

| Familj | Vad den kräver av mottagare | Namngivna exempel |
|---|---|---|
| **Tillåtande (permissive)** | Bevara upphovsrättsmeddelanden och inkludera licensen; ingen skyldighet att släppa egen kod under samma licens | BSD, MIT, Apache |
| **Copyleft** | Använd samma licens för åtminstone några delar av det ni distribuerar (stark copyleft gäller alla härledda verk; svag copyleft bara under vissa villkor) | GNU GPL (stark); MPL, EPL (svag) |

Båda familjerna, säger artikeln, kräver att upphovsrättsmeddelanden bevaras och att en kopia av licensen medföljer koden. Den hänvisar till *Jacobson v Katzer* (2008), där en domstol genomdrev villkoren i en öppen licens, inklusive angivande av upphov, med stöd av upphovsrätten. Den noterar att organisationer inrättar kontor för öppen källkod (open source program offices) för att hantera sina strategier. Villkor för öppen källkod är verkliga skyldigheter. Vilka som gäller beror på hur ni använder och distribuerar programvaran; fråga er juridiska funktion och läs licensen.

### Programvarans leveranskedja och SBOM

Artikeln om programvarans leveranskedja beskriver den som de komponenter, bibliotek, verktyg och processer som används för att utveckla, bygga och publicera en programvaruartefakt. Den nämner risker: angripare kan kompromettera en uppströmskomponent för att nå alla nedströmsanvändare, och hänvisar till exempel som Log4Shell 2021, SolarWinds-attacken 2020 och bakdörren i XZ Utils 2024. Den beskriver en **programvarumaterialförteckning (software bill of materials, SBOM)** som en förteckning över komponenterna i en programvaruartefakt, inklusive öppen källkod och proprietära delar, programvarans motsvarighet till en tillverkningsindustris materialförteckning. SBOM stöder sårbarhets- och licensanalys.

Artikeln redovisar gränser: kalkylblad kan inte automatiskt berikas med sårbarhetsdata och bör lagras i ett sökbart arkiv; policydrivna SBOM är sällsynta, där en studie fann att ungefär 0,56 procent av populära GitHub-arkiv innehöll dem; färre än hälften av testade projekt inkluderar SBOM i releaser och många är ofullständiga; och en studie av sex Java-SBOM-verktyg fann frekventa felaktigheter. Den noterar att enbart synlighet inte kan garantera riktighet. Den redovisar också att USA:s Executive Order 14028, undertecknad den 12 maj 2021, gav NIST och NTIA i uppdrag att utfärda vägledning om säkerhet i programvarans leveranskedja inklusive SBOM, och att NTIA:s miniminivåer delas upp i datafält, stöd för automatisering samt arbetssätt och processer. Artikeln nämner inte SBOM-format och beskriver inte Europeiska unionens Cyber Resilience Act. Regler om SBOM skiljer sig mellan länder och sektorer; fråga er efterlevnadsfunktion vad som gäller er.

### SaaS och molnprenumerationer

SAM-artikeln diskuterar inte programvara som tjänst (SaaS) eller moln. Praktisk erfarenhet visar att prenumerationsprogramvara skapar nya problem: inköp utanför upphandlingen, platser som ingen tar bort, överlappande verktyg och data som placeras hos leverantörer utan granskning (se Ämne 3.14 — Leverantörshantering och Ämne 4.5 — IT-ekonomistyrning och FinOps). SAM för prenumerationer fokuserar på att upptäcka vad som köps, vem som äger det, vem som använder det och när det förnyas.

### Källornas gränser

SAM-artikeln täcker inte revisionsförfaranden, kataloger över licenstyper eller mognadsmodeller, och dess huvudreferenser omfattar daterade poster från 2006 till 2009. Artikeln om programvarans leveranskedja redovisar siffror från undersökningar och studier av ojämn kvalitet. Använd källorna för att ramma in frågor och använd licenstexter och avtal för svar.

## Bästa praxis

1. **Börja med de produkter som betyder mest.** Välj de få största eller mest riskfyllda produkterna utifrån kostnad eller juridisk exponering och få rättighet, inventering och användning på det klara för dem först.
2. **Behåll bevis på rättighet.** Lagra avtal, fakturor och licensvillkor där de kan hittas och länka dem till produktposterna. Ni kan inte försvara en ståndpunkt i en revision utan bevis.
3. **Känn till licensmåttet.** Registrera för varje produkt hur den räknas: per användare, enhet, processor, kärna eller annat. Att räkna installationer när licensen är per kärna ger fel svar.
4. **Jämför rättighet med användning regelbundet.** Minst kvartalsvis för större produkter, jämför vad ni får använda med vad ni använder. Agera på gapet genom att köpa, omfördela eller ta bort.
5. **Återta oanvända licenser.** Använd användningsdata för att hitta licenser som ingen har använt under en definierad period och omfördela eller säg upp dem efter kontroll med ägaren.
6. **Kontrollera hur programvara kommer in.** Gör det enkelt att begära godkänd programvara och svårt att köpa utanför processen. Ta med prenumerationer och kortköp i utgiftsgranskningar.
7. **Behandla komponenter med öppen källkod som tillgångar.** För en förteckning över komponenterna med öppen källkod i era produkter, med licens och version. Kontrollera licenser mot hur ni använder och distribuerar programvaran, med juridisk rådgivning.
8. **Generera SBOM i bygget.** Ta automatiskt fram en programvarumaterialförteckning för varje bygge, lagra den på ett sökbart ställe och använd den för att svara på sårbarheter och besvara kundfrågor. Kontrollera SBOM mot bygget, eftersom verktyg kan vara felaktiga.
9. **Följ prenumerationer.** Registrera för var och en ägare, syfte, kostnad, antal platser, användare, förnyelsedatum och data som hålls. Granska före förnyelse.
10. **Länka programvara till tjänster.** Registrera vilka tjänster som använder vilken programvara och vilka versioner, så att en sårbarhet eller en licensförändring kan spåras till de berörda tjänsterna (se Ämne 4.4 — Konfigurationshantering).
11. **Förbered er lugnt för revisioner.** Håll register aktuella, utse en kontakt och känn till era rättigheter och skyldigheter enligt avtalet. Vänta inte på meddelandet för att börja organisera.
12. **Avveckla programvara ordentligt.** Ta bort den från system, avsluta licenser och prenumerationer och uppdatera register. Oanvänd programvara är en kostnad och en angreppsyta.

## Frågor att diskutera med teamet

**Vet vi för våra tre dyraste programvaruprodukter vad vi får använda och vad vi använder?**

Be om antalet licenser som innehas och antalet i bruk för var och en. Jämför. Vanliga utfall är överraskande: fler platser än användare, eller användare utöver platserna. Facilitatorn kan fråga var bevisen på rättighet förvaras. Planera att stämma av det största gapet.

**Vilken programvara har människor köpt eller installerat utan att tala om det för någon?**

Var ärliga och icke-dömande. Fråga om verktyg köpta med kort, gratisverktyg som används på jobbet och webbläsartillägg. Typiska skäl är snabbhet och oklar process. Diskutera vad som skulle göra den godkända vägen tillräckligt snabb. Kom överens om ett registreringssteg.

**Vilka komponenter med öppen källkod beror våra produkter på, och vilka är deras licenser?**

Fråga om någon kan ta fram en lista. Om inte, diskutera hur den kan genereras från bygget. Fråga sedan hur licenser kontrolleras. Kom ihåg att skyldigheterna skiljer sig mellan tillåtande licenser och copyleft-licenser. Planera med juridik för att granska högriskfallen.

**Om en allvarlig sårbarhet dök upp i ett vanligt bibliotek i morgon, hur lång tid skulle det ta att veta om vi använder det?**

Gå igenom stegen: vem som underrättas, hur ni söker, hur ni känner till versionen i varje tjänst. Svaret visar hur mycket SBOM och inventeringar skulle hjälpa. Kom överens om en första förbättring, som att generera en materialförteckning i pipelinen.

**Vilka prenumerationer förnyas nästa kvartal, och vem avgör om vi ska behålla dem?**

Lista förnyelserna. Fråga för var och en vem som äger den, hur många platser som är aktiva och vad som händer om den sägs upp. Ofta äger ingen beslutet. Tilldela ägare och lägg till ett granskningsdatum före varje förnyelse.

**Hur skulle vi svara på ett meddelande om leverantörsrevision?**

Fråga vem som skulle hantera det och vilka bevis de har. Diskutera om registren är fullständiga. Målet är en lugn plan, inte en rädsla för revisioner. Kom överens om en kontakt och en checklista.

## I praktiken: ett agilt ITIL-exempel

En nationell postverksamhet kör ungefär 60 interna applikationer och en kundvänd paketspårningsplattform byggd av ett team på femton. En leverantör meddelar IT-avdelningen om en licensrevision av en databasprodukt. ITAM-ansvarig finner att licensregister är utspridda över tre kalkylblad och att ingen kan säga hur många processorkärnor databasen nu körs på, eftersom virtuella maskiner har flyttats mellan värdar många gånger.

ITAM-ansvarig, en databasadministratör och inköpschefen sammanställer bevisen. De samlar avtalet, licensmåttet (per processorkärna), fakturorna och upptäcktsdata om var databasen körs. De finner att produkten körs på fler kärnor än vad som köpts i en miljö, och färre i en annan, där licenser är oanvända. Efter samtal med leverantören omfördelar de de oanvända licenserna, köper ett litet antal ytterligare och flyttar en icke-väsentlig miljö till ett gratisalternativ. Kostnaden ligger långt under vad ett revisionsfynd hade blivit, men är inte obetydlig.

Samtidigt blir plattformsteamet ombett av en stor kund om en lista över programvarukomponenterna i paketspårningsplattformen. Teamet inser att det inte kan ta fram någon. Det lägger till ett byggsteg som genererar en materialförteckning för varje release och lagrar den i ett arkiv. Det första resultatet inkluderar ett bibliotek med en licens som juridikenheten inte hade granskat, och de beslutar att ersätta det. Problem återstår. Teamets SBOM-verktyg missar komponenter i ett språk, och en separat forskargrupp fortsätter att köpa prenumerationer på ett avdelningskort. ITAM-ansvarig frågar verktygets leverantör om gapet och övertygar avdelningen att registrera sina prenumerationer.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam för in det mesta av programvaran i organisationen. Registrera de komponenter och prenumerationer ni lägger till, generera materialförteckningar i era byggen och fråga innan ni använder ett bibliotek med en obekant licens. Dela fynd med juridik och säkerhet.

### Tjänste- och driftteam

Driftteam driver inventering, uppdatering och mätning. Håll programvaruinventeringen länkad till tjänster, uppdatera snabbt när sårbarheter dyker upp och återta oanvända licenser. Hjälp inköp att förstå hur produkter verkligen används.

### Ledning och styrning

Ledare äger risken för bristande efterlevnad och utgifterna. Be om rättighet och förbrukning för de största produkterna, en bild av prenumerationer och en plan för risker med öppen källkod och leveranskedja. Stöd en inköpsväg som är tillräckligt snabb för att människor ska använda den.

### Kunder och användare

Kunder och användare har nytta när programvara är tillgänglig och säker. Begär det du behöver via rätt väg, lämna tillbaka det du inte längre använder och tala om för teamet om verktyg du har funnit användbara. Kunder till era produkter kan be om materialförteckningar; räkna med att bli tillfrågade.

## Vanliga orsaker till misslyckande

- **Att bara räkna installationer.** Licensmåttet är per kärna eller användare. Registrera i stället måttet och räkna rätt sak.
- **Förlorat bevis på rättighet.** Avtal och fakturor går inte att hitta. Lagra dem i stället med produktposten.
- **Hyllvärmare (shelfware).** Licenser köps och används inte. Jämför i stället rättighet med användning och återta.
- **Skuggköp.** Prenumerationer köpta med kort undgår processen. Gör i stället den godkända vägen snabb och granska utgifter för undantag.
- **Okända komponenter med öppen källkod.** Ingen kan lista dem. Generera i stället materialförteckningar automatiskt i byggen.
- **Att ignorera licensvillkor för öppen källkod.** Copyleft-skyldigheter missas. Kontrollera i stället licenser mot användning och distribution med juridisk rådgivning.
- **Att blint lita på verktyg.** Verktyg missar komponenter eller listar fel. Validera i stället resultat på ett urval och fråga leverantörer om gap.
- **Revisionspanik.** Register sammanställs efter meddelandet. Håll i stället register aktuella och utse en revisionskontakt.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Rättighet och användning | Register är utspridda; användning okänd | Större produkter har rättighetsregister | Rättighet och användning registreras för huvudprodukter och jämförs regelbundet | Gap och oanvända licenser mäts och åtgärdas | Rättighet och användning delas med ekonomi, inköp och leverantörer |
| Anskaffning och prenumerationer | Programvara köps av vem som helst | En godkänd väg finns för vissa inköp | Inköp och prenumerationer följer en väg med ägare och förnyelsedatum | Utgifter och platsanvändning granskas före förnyelse | Inköp, användning och avtal samordnas i hela organisationen |
| Öppen källkod och leveranskedja | Komponenter är okända | Vissa team listar bibliotek | Materialförteckningar genereras i byggen och licenser granskas | Sårbarhets- och licensfynd följs till stängning | Materialförteckningar delas med kunder och leverantörer efter behov |
| Revision och efterlevnad | Revisionsmeddelanden orsakar panik | En kontakt finns | Register hålls aktuella och en revisionsrutin finns | Efterlevnadsrisk mäts och granskas | Efterlevnadsarbetet samordnas mellan leverantörer och jurisdiktioner |

## Checklista

- [ ] För våra största programvaruprodukter känner vi till rättigheten, licensmåttet och användningen.
- [ ] Avtal, fakturor och licensvillkor lagras med produktposter.
- [ ] Rättighet och användning jämförs minst kvartalsvis för större produkter.
- [ ] Oanvända licenser återtas efter kontroll med ägare.
- [ ] Inköp och prenumerationer följer en väg, med ägare och förnyelsedatum registrerade.
- [ ] Vi genererar en materialförteckning i bygget för produkter vi levererar eller driver.
- [ ] Licenser för öppen källkod i våra komponenter granskas mot vår användning, med juridisk rådgivning.
- [ ] Vi kan hitta vilka tjänster som använder en given komponent eller produkt.
- [ ] En namngiven person hanterar meddelanden om leverantörsrevision.
- [ ] Avvecklad programvara tas bort från system och register.

## AI-prompter

**Syfte: jämföra rättighet och förbrukning för en produkt.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: granska en lista över komponenter med öppen källkod för licensfrågor.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Syfte: förbereda ett sårbarhetssvar med hjälp av en materialförteckning.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: bygga en prenumerationsgranskning för nästa kvartal.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## AI-färdigheter

- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att hantera avtal, förnyelser och relationer med programvaruleverantörer.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): använd för att förbereda en leverantörs- eller efterlevnadsrevision.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): använd för att prognostisera kostnader för programvara och prenumerationer.
- [risk-register](../../../../skills/risk-register/SKILL.md): använd för att registrera licens-, sårbarhets- och leveranskedjerisker.
- [security-testing](../../../../skills/security-testing/SKILL.md): använd för att kontrollera beroenden och byggen för kända svagheter.

## Viktiga källor

- **Software asset management** (Wikipedia): definitionen, målen, teknikerna och delarna av ISO/IEC 19770.
- **Software supply chain** (Wikipedia): risker, programvarumaterialförteckningen, användningssiffror och regulatorisk bakgrund.
- **Open-source software** (Wikipedia): definitionen, licensfamiljerna och noteringar om risker och skyldigheter.
- **ISO/IEC 19770** (International Organization for Standardization): själva standardfamiljen; läs de aktuella delarna för exakta krav.

## Referenser

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
