# Hantering av IT-tillgångar

**Hantering av IT-tillgångar håller reda på den maskinvara, programvara och de relaterade resurser en organisation äger eller betalar för, från inköp till avyttring, så att beslut om kostnad, risk och support bygger på fakta i stället för gissningar.**

## Varför detta är viktigt

Fråga de flesta organisationer hur många laptops, servrar, molnkonton och programlicenser de har, och det första svaret är en gissning. Det andra, efter en efterforskning, är ofta ett annat. Det gapet har kostnader. Licenser köps som ingen använder, eller används utan att köpas. Gammal maskinvara blir kvar i nätet utan uppdateringar. Medarbetare som slutar behåller åtkomst till system som ingen kom ihåg att ta bort. En servicedesk kan inte supporta utrustning den inte vet finns.

Hantering av IT-tillgångar (IT asset management, ITAM) är arbetssättet att täppa till det gapet. Det hänger nära ihop med tjänstehantering: tjänster körs på tillgångar, incidenter och ändringar rör tillgångar, och en tjänsts kostnad är till stor del kostnaden för dess tillgångar. För agila team har arbetssättet en särskild vändning. Tillgångar omfattar nu molnresurser som skapas av ett skript på sekunder och förstörs minuter senare, containeravbildningar, öppen källkod-bibliotek och prenumerationer köpta med kort. Den gamla modellen med ett kalkylblad över inköpt utrustning fångar dem inte.

Den engelska Wikipedias artikel med titeln "IT asset management" omdirigerar för närvarande till artikeln om datacenterhantering, där ITAM finns som ett avsnitt. Det avsnittet beskriver ITAM som affärsarbetssätt som förenar ekonomiska, avtalsmässiga och inventeringsfunktioner för att stödja livscykelhantering och strategiska IT-beslut, och det är kort. Det här ämnet använder det för definitionen, lägger till detaljerna från artiklarna om hantering av programvarutillgångar och konfigurationsdatabaser och placerar arbetssättet i den agila miljön. Där det går utöver källorna säger det så.

## Centrala begrepp

### Vad det är

Enligt Wikipedia-avsnittet om hantering av datacentertillgångar, med hänvisning till Gartner, är ITAM en uppsättning affärsarbetssätt som förenar ekonomiska, avtalsmässiga och inventeringsfunktioner för att stödja livscykelhantering och strategiska IT-beslut. Tillgångar omfattar programvara och maskinvara i verksamhetsmiljön. Arbetssättet kallas också lagerhantering (inventory management). Artikeln noterar att arbetssättet använder automatiserad upptäckt så att inventeringen kan jämföras med licensrättigheter, och att fullständig hantering behöver ett arkiv för flera typer av information, integrerat med system för försörjningskedja, helpdesk, inköp, personal och ITSM.

### Vad som räknas som tillgång

En användbar arbetslista för en tjänsteorganisation:

| Tillgångstyp | Exempel | Behandlas i |
|---|---|---|
| **Maskinvara** | Laptops, servrar, nätverksenheter, telefoner, lagring | Ämne 4.3 — Hantering av hårdvarutillgångar |
| **Programvara** | Licensierade applikationer, operativsystem, komponenter med öppen källkod, prenumerationer | Ämne 4.2 — Hantering av programvarutillgångar |
| **Moln- och tjänsteresurser** | Virtuella maskiner, containrar, lagringsbehållare, SaaS-konton | Ämne 4.2 — Hantering av programvarutillgångar och Ämne 4.5 — IT-ekonomistyrning och FinOps |
| **Data och information** | Datamängder, register, säkerhetskopior | Ämne 3.13 — Informationssäkerhetshantering |
| **Avtal och rättigheter** | Licenser, supportavtal, garantier | Ämne 4.2 — Hantering av programvarutillgångar och Ämne 3.14 — Leverantörshantering |
| **Människor och kompetenser** | Personal och förmågor (ingår vanligtvis inte i tillgångsregistret, men är en del av tjänsten) | Ämne 2.5 — Fyra dimensioner av tjänstehantering |

Tabellen är den här guidens arbetslista, inte en klassificering från en källa.

### Livscykel

Wikipedia-avsnittet beskriver hantering av maskinvarutillgångar som att täcka fysiska dator- och nätverkskomponenter från anskaffning till avyttring, med listade arbetssätt för förfrågan och godkännande, inköp, livscykelhantering, omplacering och avyttring, och säger att fånga ekonomisk information om maskinvarans livscykel är en nyckelkomponent. Den ger ingen formell stegmodell. En vanlig praktisk sekvens, allmänt använd och erbjuden här som sådan, är:

1. **Planera och begär:** avgör vad som behövs och få godkännande.
2. **Anskaffa:** köp eller bygg, och registrera inköpet.
3. **Driftsätt:** ta i bruk och länka till användaren eller tjänsten.
4. **Driv och underhåll:** uppdatera, supporta, flytta och följ ändringar.
5. **Avveckla och avyttra:** ta ur drift, radera data och avyttra säkert.

Fråga vid varje steg vem som ansvarar och vilket register som förs.

### Inventering, upptäckt och register

Ett tillgångsregister är bara användbart om det stämmer. Artikeln noterar att automatiserad upptäckt stöder jämförelse av inventering med rättigheter. Upptäcktsverktyg skannar nät och molnkonton för att hitta vad som finns, och registret anger vad organisationen avser att äga och betala för. Skillnader mellan de två är fynd: okända enheter, oanvända licenser, ogodkända prenumerationer.

### Förhållande till ITSM och CMDB

Wikipedia-avsnittet säger att ITAM integreras med ITSM men kopplar det inte till ITIL-processer i detalj. ITIL-beskrivningar skiljer vanligtvis hantering av tillgångar, som rör ägande, kostnad och avtal, från konfigurationshantering, som rör relationer mellan komponenter. En **konfigurationsdatabas (configuration management database, CMDB)** är enligt Wikipedia en ITIL-term för en databas som lagrar information om maskin- och programvarutillgångar, kallade konfigurationsobjekt, och relationerna mellan dem (se Ämne 4.4 — Konfigurationshantering). Tillgångsposter och konfigurationsposter överlappar; många organisationer federerar data så att varje källa behåller kontrollen över sina egna.

### Standarder

Wikipedia-avsnittet nämner ISO/IEC 19770 som standardfamiljen för hantering av programvarutillgångar utan att beskriva dess delar. Artikeln om hantering av programvarutillgångar listar delarna: 19770-1:2017 om krav på system för hantering av IT-tillgångar, ett processramverk som kan införas i stegvisa nivåer; 19770-2:2015 om programvaruidentifieringsetiketter; 19770-3:2016 om rättighetshantering; 19770-4:2017 om mätning av resursutnyttjande; och 19770-5:2015 om översikt och ordförråd. Kontrollera standarderna själva för exakt ordalydelse och aktuella utgåvor.

### Fördelar och gränser

Wikipedia-avsnittet listar inga fördelar och ingen kritik, och det nämner inga verktyg. Praktiska fördelar hävdas allmänt, som lägre licenskostnad, minskad säkerhetsrisk och bättre support, men den här guiden har inget uppmätt belägg för dem i de källor som lästs. Behandla påståenden om besparingar med försiktighet, be dem som gör påståendena om deras belägg och mät era egna.

### ITAM i en agil miljö och molnmiljö

Arbetssätt från tidigare decennier förutsätter att tillgångar köps, levereras och installeras av IT. I dag:

- **Team skapar resurser själva,** i molnkonsoler eller genom kod. Registret måste få veta om dem från molnkontot, inte från en inköpsorder.
- **Tillgångar är kortlivade.** En container kan finnas en timme. Följ tjänsten och kontot, inte varje instans.
- **Prenumerationer ersätter licenser.** Programvara betalas månadsvis med någons kort, och ägarskapet är oklart.
- **Komponenter med öppen källkod** kommer in genom koden, utanför inköpssystemet (se Ämne 4.2 — Hantering av programvarutillgångar).

Dessa förändringar driver ITAM mot automatisering, märkning och delat ansvar mellan IT och de team som använder tillgångarna.

## Bästa praxis

1. **Börja med det som betyder mest.** Välj de tillgångar med högst kostnad eller risk först: dyra licenser, internetvända servrar, enheter med känsliga data. Ett fullständigt register kan komma senare.
2. **Definiera vad en tillgång är för era syften.** Skriv en kort lista över de tillgångstyper ni ska följa och de fakta ni behöver för var och en: ägare, plats eller konto, kostnad, avtal och status. Undvik fält som ingen kommer att använda.
3. **Utse en ägare för varje tillgång.** En person eller ett team bör svara för varje tillgång eller grupp av tillgångar. Tillgångar utan ägare är där slöseri och risk samlas.
4. **Använd upptäckt för att hitta vad som finns.** Skanna nät, molnkonton och slutpunkter och jämför med registret. Behandla skillnaderna som poster att utreda.
5. **Märk molnresurser.** Kräv märken (tags) för ägare, tjänst och miljö på resurser som skapas i molnkonton och rapportera om omärkta. Märken låter registret följa snabbrörliga tillgångar.
6. **Koppla inköp till registret.** Se till att nya inköp, inklusive prenumerationer och kortköp, skapar eller uppdaterar en post. Granska utgifter för sådant som inte gjorde det.
7. **Länka tillgångar till tjänster.** Registrera vilken tjänst varje tillgång stöder. Det låter er räkna ut konsekvensen av en incident, en ändring eller en avveckling (se Ämne 4.4 — Konfigurationshantering).
8. **Följ den ekonomiska sidan.** Registrera kostnad, avtalsvillkor, förnyelsedatum och avskrivning där det är relevant. Att fånga ekonomisk information över livscykeln är en nyckelkomponent i maskinvaruhantering, som Wikipedia-avsnittet säger.
9. **Hantera livets slut.** Planera avveckling från början: radering av data, återlämning och avyttring. Ta bort åtkomst och licenser samtidigt.
10. **Granska regelbundet.** Minst två gånger om året, kontrollera registret mot verkligheten för de viktigaste tillgångsklasserna. Åtgärda den process som orsakade en skillnad.
11. **Dela data.** Gör tillgångsdata tillgängliga för servicedesken, säkerhet, ekonomi och team, i en form de kan använda. Data som bara tillgångsansvarig ser är värda lite.
12. **Mät arbetssättet.** Följ hur fullständigt och korrekt registret är, hur lång tid det tar att hitta en tillgång och kostnaden för oanvända poster. Använd dessa för att förbättra, inte för att rangordna människor.

## Frågor att diskutera med teamet

**Om någon frågade hur många av varje slags tillgång vi har, hur säkra skulle vi vara?**

Be varje person uppskatta antalet laptops, servrar, molnkonton och prenumerationer och jämför sedan med registret. Skillnader visar hur mycket som är okänt. Facilitatorn kan fråga vilken kategori människor litar minst på. Välj en att stämma av först.

**Vem äger var och en av våra tillgångar, och vad händer när den personen slutar?**

Ta ett urval tillgångar och titta på ägarfältet. Räkna dem utan ägare eller med en avgången ägare. Fråga vilken process som bör uppdatera ägare när människor flyttar. Kom överens om en utlösare, som avgångsprocessen.

**Vad betalar vi för som ingen använder?**

Titta på licenser, prenumerationer och molnresurser och fråga vilka som saknar nylig användning. Var beredda på överraskningar. Fråga vem som kan godkänna att något sägs upp. Välj de tre största och kontrollera var och en.

**Hur får vi veta om en ny molnresurs eller prenumeration?**

Följ den senaste. Ofta är svaret "på fakturan" eller "när det gick sönder". Diskutera hur inköp, märkning och upptäckt kunde fånga den tidigare. Kom överens om en kontroll, som obligatoriska märken eller en månatlig rapport över omärkta poster.

**Vad händer med en laptop eller server vid slutet av dess liv?**

Gå igenom stegen: vem som beslutar, hur data tas bort, vad registret säger. Gap uppstår ofta kring dataradering och register. Be om belägg för att en nylig avyttring gjordes korrekt. Planera en kort checklista.

**Vilka tillgångsdata behöver andra team som vi inte ger dem?**

Fråga servicedesken, säkerhet och ekonomi vad de skulle vilja se. Typiska önskemål omfattar ägare, tjänst och kostnad. Diskutera hur det delas och vem som håller det aktuellt. Välj en rapport att ta fram.

## I praktiken: ett agilt ITIL-exempel

En nationell statistikmyndighet har 1 800 anställda och kör sin undersökningsbearbetning i en blandning av ett datacenter på plats och ett offentligt molnkonto. Ekonomienheten märker att molnfakturan har vuxit med en tredjedel på ett år, och en säkerhetsrevision finner tre servrar i datacentret som ingen kan identifiera. ITAM-funktionen är två personer med ett kalkylblad.

IT-chefen sätter ett måttligt mål: känna till de viktigaste tillgångarna, vem som äger dem och vad de kostar, med början i molnet. En ny regel kräver märken för ägare, tjänst och miljö på varje molnresurs. En veckorapport listar omärkta resurser, och teamen har två veckor på sig att göra anspråk på dem eller ta bort dem. I datacentret kör de två ITAM-medarbetarna en upptäcktsskanning och jämför den med kalkylbladet, och finner 40 enheter som inte finns i listan. De spårar ägare för de flesta. Inköp går med på att varje ny programprenumeration rapporteras till ITAM inom en vecka.

Efter ett kvartal sjunker andelen omärkta molnresurser från ungefär en tredjedel till en handfull, och ekonomienheten kan hänföra molnfakturan till tjänster. Några oanvända resurser stängs ned, och två servrar avvecklas. Problem återstår. En forskargrupp köper verktyg på ett avdelningskort och rapporterar dem inte, och veckorapporten läses av bara ett fåtal team. ITAM-medarbetarna talar med forskargruppen om ett enkelt registreringsformulär och ber ekonomichefen lägga till prenumerationer i den månatliga granskningen. De beslutar också att registret ska täcka molntjänster per konto och tjänst, inte varje kortlivad instans.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam skapar många tillgångar. Märk det ni skapar, registrera de prenumerationer och bibliotek ni lägger till och avveckla det ni inte längre behöver. Behandla registret som en tjänst ni bidrar till och har nytta av.

### Tjänste- och driftteam

Driftteam är beroende av registret för support, uppdatering och incidentsvar. Håll det korrekt genom att uppdatera det vid driftsättning, ändring och avveckling. Använd upptäckt för att hitta vad som saknas och rapportera skillnader till ägare.

### Ledning och styrning

Ledare och ekonomi använder tillgångsdata för beslut om utgifter, risk och förnyelser. Be om några få pålitliga tal, som utgifter per tjänst och andelen tillgångar med ägare, i stället för ett perfekt register. Stöd de små kontroller, som märken och inköpsrapportering, som håller det sant.

### Kunder och användare

Användare har nytta när deras utrustning och åtkomst hanteras väl: fungerande enheter, snabba ersättningar och inga överraskande avgifter. Tala om för servicedesken om utrustning du lägger till eller inte längre behöver, och räkna med att bli ombedd att bekräfta vad du innehar.

## Vanliga orsaker till misslyckande

- **Ett register ingen litar på.** Det är föråldrat och ignoreras. Snäva i stället in omfattningen, använd upptäckt och uppdatera vid varje livscykelhändelse.
- **Inga ägare.** Tillgångar tillhör ingen. Kräv i stället en ägare för varje tillgång eller grupp.
- **Att följa allt.** Ansträngningen begraver värdet. Börja i stället med det som är kostsamt eller riskabelt och växa.
- **Att ignorera molnet och prenumerationer.** Registret täcker bara inköpt maskinvara. Märk i stället molnresurser och fånga prenumerationer.
- **Inköp utanför processen.** Kortköp kringgår registret. Koppla i stället inköps- och utgiftsrapporter till ITAM.
- **Ingen process för livets slut.** Gamla enheter behåller data och åtkomst. Planera i stället avveckling, radering och avyttring.
- **Data som hålls från andra.** Bara ITAM ser registret. Dela det i stället med servicedesken, säkerhet och ekonomi.
- **Att räkna utan att agera.** Rapporter visar oanvända tillgångar och inget sägs upp. Tilldela i stället ägare att agera på fynd.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Inventering och upptäckt | Tillgångar listas i kalkylblad eller inte alls | Vissa tillgångsklasser inventeras | Upptäckt och ett register täcker de huvudsakliga tillgångsklasserna och stäms av regelbundet | Fullständighet och korrekthet mäts och gap åtgärdas | Inventering spänner över lokal drift, moln och leverantörer med delade data |
| Ägarskap och ansvar | Få tillgångar har ägare | Ägare är namngivna för vissa tillgångar | Varje tillgång eller grupp har en ägare, som hålls aktuell genom process | Ägarskapsgap följs och löses | Ägare över team och leverantörer arbetar efter gemensamma regler |
| Livscykel och ekonomisk kontroll | Inköp och avyttring är informella | Vissa tillgångar har kostnads- och avtalsdata | Livscykelsteg och ekonomiska data registreras för huvudtillgångar | Kostnad, förnyelser och utnyttjande granskas och åtgärdas | Ekonomiska data och livscykeldata länkas till tjänster och delas med ekonomi |
| Användning av data | Data används av få | Servicedesken använder ibland registret | Desk, säkerhet och ekonomi använder rutinmässigt tillgångsdata | Datakvalitet och användning mäts och förbättras | Data matar beslut i hela organisationen och med partner |

## Checklista

- [ ] Vi har en kort lista över tillgångstyper och de fakta vi registrerar för var och en.
- [ ] Varje följd tillgång eller grupp har en namngiven ägare.
- [ ] Upptäcktsresultat jämförs med registret enligt ett regelbundet schema.
- [ ] Molnresurser bär märken för ägare, tjänst och miljö, och omärkta rapporteras.
- [ ] Nya inköp, inklusive prenumerationer, skapar eller uppdaterar en post.
- [ ] Tillgångar är länkade till de tjänster de stöder.
- [ ] Kostnads-, avtals- och förnyelsedata registreras för huvudtillgångarna.
- [ ] Avveckling omfattar borttagning av data, borttagning av åtkomst och ett register.
- [ ] Registret stäms av mot verkligheten minst två gånger om året för de huvudsakliga tillgångsklasserna.
- [ ] Servicedesken, säkerhet och ekonomi kan se de data de behöver.

## AI-prompter

**Syfte: stämma av upptäcktsresultat mot registret.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Syfte: utarbeta en kort märkningsstandard för molnresurser.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera en avvecklingschecklista för en enhet eller server.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: hitta kandidater för besparingar utifrån användningsdata.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## AI-färdigheter

- [configuration-management](../../../../skills/configuration-management/SKILL.md): använd för att planera hur tillgångar och deras relationer registreras och hålls sanna.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): använd för att hantera avtal och förnyelser som ligger bakom tillgångar.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): använd för att prognostisera kostnaden för tillgångar och prenumerationer.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att klargöra vem som äger, supportar och godkänner varje tillgångsklass.
- [data-governance](../../../../skills/data-governance/SKILL.md): använd för att avgöra vem som äger data som finns på tillgångar och hur de avvecklas.

## Viktiga källor

- **IT asset management** (Wikipedia, för närvarande inom artikeln om datacenterhantering): en kort definition och en beskrivning av hantering av maskinvarutillgångar.
- **Software asset management** (Wikipedia): definitionen, målen, teknikerna och delarna av ISO/IEC 19770.
- **Configuration management database** (Wikipedia): ITIL-termen för lagret av konfigurationsobjekt och relationer.
- **ITIL** (Wikipedia): ramverket som behandlar ITAM tillsammans med tjänstehantering.

## Referenser

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
