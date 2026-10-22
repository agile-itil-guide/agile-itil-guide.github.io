# Konfigurationshantering

**Konfigurationshantering håller en korrekt, användbar bild av en tjänsts delar och hur de hänger ihop, och dess moderna form är ett register byggt från kod och upptäckt som man litar på därför att systemet självt håller det aktuellt.**

## Varför detta är viktigt

När något går sönder är de första frågorna alltid desamma. Vad är den här komponenten? Vad är den ansluten till? Vad ändrades? Vem äger den? Om svaren tar en timme att hitta drar en incident som kunde ha åtgärdats på minuter ut på tiden. När en ändring planeras avgör samma frågor om ni förstår risken. En god bild av tjänsten och dess delar är en av de mest användbara saker ett driftteam kan ha.

Den är också en av de svåraste att hålla sann. Dokument över infrastrukturen, ritade en gång, är föråldrade inom veckor. Databaser över komponenter, underhållna för hand, är fel på sätt som ingen kan se. Agila arbetssätt och molnarbetssätt gör detta sämre på ett sätt, med många små, snabbt föränderliga delar, och bättre på ett annat, eftersom konfiguration kan skrivas som kod, lagras i versionshantering och tillämpas automatiskt.

Den engelska Wikipedias artikel om konfigurationshantering beskriver det som en ledningsprocess för att upprätta och upprätthålla överensstämmelse mellan en produkts egenskaper och dess krav, design och driftinformation under dess liv, med rötter i det amerikanska försvarsdepartementet på 1950-talet. Artikeln om konfigurationsdatabaser beskriver ITIL-termen för lagret av konfigurationsobjekt och deras relationer. Artikeln om infrastruktur som kod beskriver att hantera resurser genom maskinläsbara definitionsfiler. Tillsammans ger de den traditionella och den moderna synen, och det här ämnet förbinder dem.

## Centrala begrepp

### Konfigurationshantering i allmänhet

Enligt Wikipedia används konfigurationshantering (configuration management, CM) i militära system, i IT-tjänstehantering under ITIL och i anläggningsteknik. Dess historia börjar med det amerikanska försvarsdepartementet på 1950-talet som en teknisk disciplin för hårdvara, där militära standarder i slutet av 1960-talet och på 1970-talet gjorde den till en egen disciplin. Artikeln nämner flera standarder, inklusive ANSI/EIA-649, ISO 10007 (2017 års utgåva) och IEEE 828-2012. De kärndiscipliner den listar, från militära handböcker och EIA-standarden, är:

| Disciplin | Vad den gör |
|---|---|
| **Planering och ledning** | En plan som täcker människor, utbildning, namnkonventioner, revisioner och leverantörskrav |
| **Konfigurationsidentifiering** | Att fastställa och upprätthålla baslinjer som definierar arkitektur och komponenter; de spårade produkterna är **konfigurationsobjekt (configuration items, CI)** |
| **Konfigurationskontroll** | Att värdera ändringsförfrågningar och godkänna eller avslå dem |
| **Konfigurationsstatusredovisning** | Att registrera och rapportera CI-beskrivningar och avvikelser från baslinjen |
| **Verifiering och revision** | Oberoende kontroller av att systemet stämmer med sin dokumentation och sina krav |

En **baslinje (baseline)** är en överenskommen referenspunkt; när ett attribut väl är baslinjerat går ändringar genom formell kontroll, värderas, godkänns och baslinjeras sedan om. Artikeln skiljer konfigurationshantering från hantering av tillgångar, som fokuserar på ekonomisk redovisning och värdet av IT-tillgångar (se Ämne 4.1 — Hantering av IT-tillgångar).

### Konfigurationshantering av programvara

Artikeln beskriver konfigurationshantering av programvara som att identifiera programvaruattribut vid olika tidpunkter och kontrollera ändringar för att upprätthålla riktighet och spårbarhet, med samma fyra förfaranden: identifiering, kontroll, statusredovisning och revisioner. Versionshanteringssystem, byggverktyg och releaseregister är moderna exempel.

### Konfigurationsdatabasen

Wikipedia beskriver en **konfigurationsdatabas (configuration management database, CMDB)** som en ITIL-term för en databas som lagrar information om en organisations maskin- och programvarutillgångar, CI, och relationerna mellan dem. Den "representerar den auktoriserade konfigurationen av de betydande komponenterna i IT-miljön". Nyckelpunkter från artikeln:

- **CI har attribut** som identifierare, namn, beskrivningar, ägarskap och betydelse, som kan uppgå till hundratals.
- **Relationer** förbinder vanligtvis ett käll-CI med ett mål-CI. Mer avancerade relationer lägger till en beskrivare, som att en databas är en komponent i en applikation.
- **Federation:** implementeringar federerar ofta data från källor som tillgångshantering, så att varje källa behåller kontrollen över sina data; artikeln kontrasterar detta mot att kopiera data in i CMDB.
- **Användningar:** konsekvensanalys, grundorsaksanalys, ändringshantering, incidenthantering, inventering och byggen.
- **CI-typer:** maskinvara, programvara, kommunikation och nät, plats, dokumentation och människor; mogna organisationer lägger till affärstyper som produkter och leverantörer.
- **Utmaningar:** relevans (att samla data över varje CI:s livscykel), underhåll (att hålla datakvaliteten hög, vilket kräver flera specialistroller) och användbarhet (CMDB är ofta vanliga databaser som saknar visualisering, så ett ytterligare applikationsskikt kan behövas).

Artikeln nämner automatisk upptäckt av CI och ändringsspårning som nyckelfaktorer för framgång. Den anger inget grundande datum, ingen särskild ITIL-version och inga användningsdata, och den är flaggad som i behov av fler källhänvisningar. Den säger också att ITIL döpte om processen till Service Asset and Configuration Management i ITIL version 3 (detta kommer från artikeln om konfigurationshantering).

### Infrastruktur som kod

Artikeln om infrastruktur som kod (infrastructure as code, IaC) beskriver arbetssättet att hantera och provisionera datacenterresurser genom maskinläsbara definitionsfiler, i stället för genom manuell uppsättning eller interaktiva verktyg, med definitioner förvarade i versionshantering. Den skiljer:

- **Deklarativa** angreppssätt, som beskriver önskat slutläge och låter systemet räkna ut stegen, och **imperativa** angreppssätt, som anger kommandon i ordning. Artikeln säger att IaC oftare använder deklarativa definitioner.
- **Push**-metoder, där ett styrande system skickar instruktioner till servrar, och **pull**-metoder, där servrar hämtar sina egna instruktioner.

Den nämner många verktyg från CFEngine (1993) till Terraform, Ansible, Puppet, Chef, Pulumi och OpenTofu, och relaterar arbetssättet till DevOps genom att involvera utvecklare i konfiguration och ta in driften tidigare. Dess påståenden om fördelar, för kostnad, hastighet och minskade mänskliga fel, är märkta som i behov av källhänvisningar. Den hänvisar till en rapport från 2020 av Unit 42 som fann ungefär 200 000 potentiella sårbarheter i IaC-mallar, en påminnelse om att kod kan bära fel också. Artikeln nämner inte konfigurationsdrift eller idempotens.

### Deklarerad och upptäckt konfiguration

Ett användbart sätt att tänka på modern konfigurationshantering är att det finns två sanningskällor, och att värdet ligger i att jämföra dem:

| Källa | Vad den säger | Styrka | Svaghet |
|---|---|---|---|
| **Deklarerad** (kod, definitioner i versionshantering) | Vad vi avser att systemet ska vara | Granskningsbar, versionshanterad, upprepbar | Stämmer kanske inte med det som körs |
| **Upptäckt** (skanningar, moln-API:er, agenter) | Vad som finns nu | Speglar verkligheten | Säger inte vad som är avsett eller varför |

En CMDB som matas av båda kan visa **drift**, skillnaden mellan avsett och faktiskt tillstånd. De källor som lästs för den här guiden använder inte ordet, men det namnger det problem som CM-disciplinerna statusredovisning och revision är avsedda att fånga.

### Konfigurationshantering och ändring

Konfigurationskontroll och ändringsmöjliggörande är nära partner (se Ämne 3.4 — Ändringsmöjliggörande). CM-disciplinerna säger att ändringar av baslinjerade objekt värderas och godkänns. I en pipelinebaserad uppsättning granskas och testas en ändring av den kod som definierar infrastrukturen som all annan kod, och pipelinens register visar vem som ändrade vad och när. CMDB eller dess motsvarighet återspeglar sedan resultatet.

### Användningar i tjänstehantering

De relationer som registreras i konfigurationsdata besvarar frågor i de andra arbetssätten:

- **Incidenter:** vad beror på den här fallerande komponenten, och vem äger den (se Ämne 3.2 — Incidenthantering)?
- **Problem:** vilka komponenter var inblandade i upprepade incidenter (se Ämne 3.3 — Problemhantering)?
- **Ändringar:** vad är sprängradien för den här ändringen?
- **Kontinuitet:** vad måste återställas, och i vilken ordning (se Ämne 3.12 — Hantering av tjänstekontinuitet)?
- **Säkerhet:** vad är exponerat, och vad har ändrats?

### Källornas gränser

Artikeln om konfigurationshantering är flaggad som möjligen i behov av omskrivning och säger lite om praktiskt genomförande. CMDB-artikeln har inget kritikavsnitt och få källhänvisningar. Erfarenheten på fältet är att CMDB ofta misslyckas genom att försöka hålla för mycket, för korrekt, för länge. Betrakta det som praktisk erfarenhet som den här guiden erbjuder, inte ett fynd från källorna.

## Bästa praxis

1. **Börja från de frågor ni behöver besvara.** Lista de frågor incidentutförare, ändringsgranskare och kontinuitetsplanerare ställer, som "vad beror på detta?" och "vem äger det?". Registrera bara det som besvarar dem.
2. **Definiera en liten uppsättning konfigurationsobjekttyper.** Börja med tjänster, applikationer, värdar eller containrar, databaser och viktiga externa beroenden. Lägg till typer när en fråga kräver det.
3. **Registrera relationer, inte bara objekt.** Fånga vilka objekt som beror på vilka och vilken tjänst de stöder. Relationer gör data användbara för konsekvensanalys.
4. **Utse en ägare för varje objekt.** Ett objekt utan ägare är en risk. Gör ägarskap till en del av hur objekt skapas.
5. **Håll avsedd konfiguration i versionshantering.** Uttryck infrastruktur och konfiguration som kod, granska den som annan kod och låt pipelinen tillämpa den. Arkivet är då ett register över avsikt och historia.
6. **Använd upptäckt för att hitta verkligheten.** Skanna nät och molnkonton för att se vad som finns och jämför med den deklarerade konfigurationen. Utred skillnader (drift) i stället för att ignorera dem.
7. **Federera i stället för att kopiera där ni kan.** Låt varje datakälla (tillgångsregister, molnkonton, driftsättningsverktyg) äga sina fakta och länka till dem från konfigurationsdata, som CMDB-artikeln beskriver.
8. **Automatisera uppdateringar.** Mata konfigurationsdata från pipelinen och från upptäckt så att de ändras när systemet ändras. Manuella uppdateringar halkar efter.
9. **Baslinjera det som betyder något.** För kritiska tjänster, registrera den godkända konfigurationen och tillämpa formell ändringskontroll på avvikelser från den. För resten räcker lättare kontroll.
10. **Granska regelbundet.** Jämför data med verkligheten för ett urval av objekt varje kvartal och åtgärda processen bakom varje skillnad. Detta är disciplinen verifiering och revision i praktiken.
11. **Gör data lätta att använda.** Ge sökning och visualisering för dem som svarar och planerar, eftersom data som inte kan läsas snabbt inte kommer att användas.
12. **Håll säkerheten i sikte.** Behandla konfigurationskod som känslig, skanna mallar efter svagheter och kontrollera vem som kan ändra baslinjen. Unit 42-siffran i artikeln om infrastruktur som kod är en påminnelse om risken.

## Frågor att diskutera med teamet

**När en incident inträffar, hur lång tid tar det för oss att ta reda på vad som beror på den fallerande komponenten?**

Titta på den senaste incidenten och tiden som gick åt till den här frågan. Fråga varifrån svaret kom: ett diagram, en person, en sökning. Facilitatorn kan fråga vad som hade sparat mest tid. Ofta är det en lista över beroenden och ägare för de viktigaste tjänsterna. Kom överens om att ta fram en för en tjänst.

**Var definieras vår infrastruktur, och stämmer det med det som körs?**

Fråga om de huvudsakliga miljöerna byggs från kod och hur ofta någon ändrar dem för hand. Leta efter skillnader. Om ni inte vet, planera en jämförelse för en miljö. Diskutera hur manuella ändringar kan förhindras eller upptäckas snabbt.

**Vilka objekt i våra konfigurationsregister saknar ägare eller har inte bekräftats på sistone?**

Ta ett urval och räkna. Fråga varför de är i det tillståndet: ingen process för ägare, ingen påminnelse, inga följder. Diskutera en lätt mekanism, som en årlig bekräftelse eller ett ägarmärke som krävs vid skapandet. Välj en.

**Vilka data för vi som ingen använder?**

Lista fälten och registertyperna och fråga vem som använde dem det senaste kvartalet. CMDB-artikeln nämner underhåll som en kärnutmaning, och oanvända data är en kostnad utan nytta. Ta bort eller sluta underhålla det som ingen använder.

**Vad skulle vi behöva se för att med tillförsikt godkänna en ändring av en kritisk tjänst?**

Fråga granskarna. Typiska svar: vad ändringen rör, vad som beror på den, vad den gjorde förra gången. Fråga vilka av dessa konfigurationsdata kan ge. Välj en saknad bit att lägga till.

**Vem får ändra baslinjen för våra kritiska tjänster, och hur vet vi när de gör det?**

Be om listan och om beläggen för ändringar. Diskutera om ändringar utanför pipelinen upptäcks. Kom överens om hur drift ska hittas och vem som agerar.

## I praktiken: ett agilt ITIL-exempel

En nationell skattemyndighet kör 120 applikationer och en blandning av servrar på plats och molntjänster. Ett team på sex driftingenjörer underhåller en CMDB som lästes in från ett kalkylblad för tre år sedan. Under en större incident på inlämningsportalen upptäcker ingenjörerna att CMDB listar en databasserver som avvecklades ett år tidigare och utelämnar den lastbalanserare som faktiskt fallerade. Incidenten tar tre timmar längre att lösa eftersom det tar så lång tid att räkna ut vad portalen beror på.

Driftchefen och en ingenjör går igenom vilka frågor de som svarar ställer. De snävar in CMDB:s omfattning till tjänster, applikationer, de huvudsakliga infrastrukturkomponenterna bakom dem och viktiga externa beroenden, och släpper typer med lågt värde. Infrastrukturen för inlämningsportalen flyttas in i kod i versionshantering, och pipelinen skriver ett register över varje driftsatt komponent till CMDB. En upptäcktsskanning av nätet och molnkontona körs varje natt, och en rapport listar skillnader mellan deklarerade och upptäckta data. Varje objekt har ett ägarfält, som rapporten också kontrollerar. En enkel beroendevy för inlämningsportalen byggs från data.

Ett kvartal senare är portalens beroendevy tillräckligt korrekt för att nästa incidentteam använder den inom de första tio minuterna. Den nattliga skillnadsrapporten finner 14 ohanterade servrar, varav de flesta är avvecklade eller får ägare som gör anspråk på dem. Problem återstår. Tjänster utanför inlämningsportalen förlitar sig fortfarande på de gamla data, och ett team fortsätter att göra handändringar på en databasserver som pipelinen sedan skriver över, vilket orsakar ett kort avbrott. Driftchefen utvidgar angreppssättet till de nästa tre tjänsterna, lägger till en regel att produktionsändringar går genom pipelinen och ber upptäcktsrapporten flagga manuella ändringar.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam definierar konfiguration genom kod. Lägg infrastruktur och inställningar i versionshantering, granska dem och låt pipelinen tillämpa dem. Märk resurser med ägare och tjänst och beskriv beroenden i arkivet eller tjänstens register.

### Tjänste- och driftteam

Driftteam använder och underhåller konfigurationsdata. Håll omfattningen liten, jämför deklarerad och upptäckt konfiguration och jaga drift. För tillbaka vad ni lär er av incidenter till de typer och relationer ni registrerar.

### Ledning och styrning

Ledare avgör hur mycket insats konfigurationsdata förtjänar. Fråga vilka beslut den stöder, som konsekvensanalys och kontinuitetsplanering, och bedöm efter användning. Undvik att finansiera en enorm databas för dess egen skull. Stöd de pipelinekontroller som håller register sanna.

### Kunder och användare

Kunder och användare har nytta när incidenter löses snabbare och ändringar förstör mindre, vilket god konfigurationsdata hjälper till med. De ser sällan datan. Fråga leverantörer hur de vet vad en ändring påverkar och hur de hittar orsaken till ett avbrott.

## Vanliga orsaker till misslyckande

- **Att försöka registrera allt.** Datan är för stor för att hållas sann. Börja i stället från frågorna och de kritiska tjänsterna.
- **Manuellt underhåll.** Register halkar efter. Mata i stället data från pipelinen och från upptäckt.
- **Inga relationer.** Objekt listas men förbinds inte. Fånga i stället beroenden och den tjänst varje objekt stöder.
- **Inga ägare.** Ingen bekräftar eller åtgärdar register. Kräv i stället en ägare och kontrollera regelbundet.
- **Handändringar utanför pipelinen.** Verklighet och avsikt glider isär. Dirigera i stället ändringar genom pipelinen och upptäck drift.
- **Oläsbar data.** De som svarar kan inte använda databasen. Ge i stället sökning och visualisering.
- **Kopiering i stället för federation.** Duplicerade data blir föråldrade. Länka i stället till den källa som äger faktan.
- **Konfigurationskod som behandlas som ofarlig.** Mallar bär sårbarheter. Skanna och granska dem i stället.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Omfattning och relationer | Komponenter är informellt kända | Vissa tjänster har komponentlistor | Nyckeltjänster har objekt, ägare och beroenden registrerade | Täckning och korrekthet mäts och gap stängs | Konfigurationsdata spänner över team, moln och leverantörer |
| Deklarerad konfiguration | System konfigureras för hand | Vissa miljöer använder kod | Infrastruktur och konfiguration för nyckeltjänster är kod i versionshantering | Ändringshistorik och drift följs | Konfigurationskod delas och återanvänds mellan team |
| Upptäckt och verifiering | Verkligheten antas | Enstaka skanningar körs | Regelbunden upptäckt jämförs med deklarerade data | Skillnader och deras orsaker mäts och minskas | Upptäckt och verifiering är automatiserade i hela organisationen |
| Användning av data | Data konsulteras sällan | Används i vissa incidenter | Används rutinmässigt för incidenter, ändringar och kontinuitetsplanering | Användning och nytta mäts och datan förbättras | Data stöder beslut i hela organisationen och med partner |

## Checklista

- [ ] Vi har listat de frågor våra incidentutförare och granskare behöver konfigurationsdata för att besvara.
- [ ] Vi registrerar en liten uppsättning objekttyper med ägare och relationer.
- [ ] Infrastruktur och konfiguration för nyckeltjänster finns i versionshantering.
- [ ] Produktionsändringar av dessa tjänster går genom pipelinen.
- [ ] Upptäcktsresultat jämförs med deklarerad konfiguration enligt schema.
- [ ] Skillnader (drift) utreds och åtgärdas.
- [ ] Register matas automatiskt från pipelinen och upptäckt där det är möjligt.
- [ ] Ett urval av register granskas mot verkligheten varje kvartal.
- [ ] Datan kan sökas och visualiseras lätt av dem som svarar.
- [ ] Konfigurationskod granskas och skannas efter svagheter.

## AI-prompter

**Syfte: avgöra vad som ska registreras genom att lista de frågor ni behöver besvara.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: sammanfatta drift mellan deklarerad och upptäckt konfiguration.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Syfte: bygga en beroendevy för en tjänst.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: planera en kvartalsvis granskning av konfigurationsregister.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [configuration-management](../../../../skills/configuration-management/SKILL.md): använd för att planera vad som ska registreras, hur det hålls sant och hur det används.
- [change-request](../../../../skills/change-request/SKILL.md): använd för att skriva ändringsregister som refererar till de berörda objekten.
- [runbook](../../../../skills/runbook/SKILL.md): använd för att göra konfigurationskunskap till steg som de som svarar kan följa.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): använd för att placera tjänster, applikationer och infrastruktur i en arkitektonisk bild.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): använd för att låta konfiguration och design förändras säkert över tid.

## Viktiga källor

- **Configuration management** (Wikipedia): historien, kärndisciplinerna, baslinjerna och standarderna inom konfigurationshantering.
- **Configuration management database** (Wikipedia): definitionen, innehållet, användningarna och utmaningarna för en CMDB.
- **Infrastructure as code** (Wikipedia): att hantera resurser genom maskinläsbara definitioner, med en lista över verktyg och noteringar om fördelar och risker.
- **ITIL** (Wikipedia): ramverket där CMDB och konfigurationshantering förekommer.

## Referenser

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
