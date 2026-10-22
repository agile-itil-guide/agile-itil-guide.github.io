# Produkt- och tjänsteägarskap

**Produkt- och tjänsteägarskap ger varje produkt eller tjänst en ansvarig person och ett team som bygger och driver den, så att beslut om värde, kvalitet och kostnad fattas av de människor som lever med resultaten.**

## Varför detta är viktigt

I många organisationer äger ingen en tjänst som helhet. Ett projekt bygger den, ett driftteam driver den, en leverantör levererar en del och en ekonomiavdelning betalar för den. När något går fel blir det fyra möten och inget beslut. När användare vill ha något förbättrat går begäran till en kö som tillhör ingen. Tjänsten förfaller mellan teamen.

Ägarskap tar upp detta direkt. Det kräver två saker: en person som ansvarar för produktens eller tjänstens värde, och ett team som har kompetensen och befogenheten att bygga den, driva den och förbättra den. Idén är gammal i vissa former och trendig i andra, och detaljerna skiljer sig mycket mellan organisationer. Att få det rätt är ett av de viktigaste villkoren för att allt annat i den här guiden ska fungera.

Två idéer ligger bakom ämnet. Den första är Scrum Guides produktägare, som ansvarar för att maximera produktens värde och för att ordna dess backlogg, och som är en person och inte en kommitté (se Ämne 1.4 — Leveransprognoser och planeringsmått). Den andra är slagordet "you build it, you run it" (ni bygger det, ni driver det), förknippat med Amazons teknikchef Werner Vogels i en intervju publicerad i ACM Queue 2006, som den här guiden inte kunde läsa direkt (sidan gav ett åtkomstfel) och känner till från sekundära beskrivningar. Så som dessa beskrivningar redovisar det ställde Vogels den gamla modellen, där utvecklare kastar programvara över en mur till driften, mot en där utvecklare förblir i daglig kontakt med driften av sin programvara och med kunden. [Wikipedia-artikeln om produktledning](https://en.wikipedia.org/wiki/Product_management) ger en allmän beskrivning av disciplinen men säger ingenting om den agila produktägarrollen eller om tjänsteägarskap, så det här ämnet gör kopplingsarbetet och säger det.

## Centrala begrepp

### Produkt, tjänst, projekt

| Term | Betydelse, i vanligt språkbruk | Tidshorisont |
|---|---|---|
| **Projekt** | En tillfällig insats med definierad omfattning, start och slut | Slutar när omfattningen är levererad |
| **Produkt** | Något som erbjuds kunder eller användare och som utvecklas och förbättras över tid | Fortsätter så länge den skapar värde |
| **Tjänst** | Ett sätt att leverera värde till andra utan att de äger kostnaderna och riskerna (se Ämne 2.1 — IT-tjänstehantering) | Fortsätter så länge den erbjuds |

En digital produkt är ofta också en tjänst: användare är beroende av att den fungerar väl. Skillnaden mellan produkt och tjänst betyder mindre än steget från projekt till fortlöpande ansvar, som Ämne 1.9 — Agil ledning beskriver.

### Produktledning

Wikipedia-artikeln beskriver produktledning som affärsprocessen att planera, utveckla, lansera och hantera en produkt eller tjänst, så att produkter möter målmarknadens behov och stöder affärsstrategin genom produktens livscykel. Den listar produktchefers ansvar: att hantera produktlinjen dag för dag, att äga affärscaset och leveransen till marknaden, att analysera kundundersökningar och konkurrens, att dokumentera krav, att sätta strategi och skapa färdplanen och att samordna med design, utveckling, marknadsföring, försäljning, support och juridik. Den för begreppet tillbaka till ett PM från 1931 av Procter & Gambles ordförande Neil H. McElroy som bad om "Brand Men" för att hantera produkter. Den säger att produktchefer ofta mäts på resultatansvar.

Artikeln kopplar inte produktledning till den agila produktägaren, så länken är den här guidens läsning: en produktägare ansvarar för produktens värde och ordnar dess backlogg, och i många organisationer utför en produktchef den vidare affärsrollen. I små team kan en person göra båda.

### Produktägaren och tjänsteägaren

| Roll | Ansvarar för | Typiska frågor |
|---|---|---|
| **Produktägare** (Scrum) | Att maximera produktens värde; att ordna produktbackloggen | Vad ska vi bygga eller förbättra härnäst, och varför? |
| **Produktchef** | Affärscaset, strategin och färdplanen för en produkt | Är detta rätt produkt, för rätt marknad? |
| **Tjänsteägare** (ITSM-bruk) | En tjänsts prestanda och förbättring under dess liv | Möter tjänsten användarnas behov, till en acceptabel kostnad och risk? |

Rollerna överlappar. För en intern IT-tjänst kan en person vara både produktägare och tjänsteägare. Scrum Guide betonar att produktägaren är en person, inte en kommitté, så att beslut om ordning har en tydlig ägare. Vilken titel det än är, är testet om en namngiven person kan göra avvägningar mellan nya funktioner, tillförlitlighet och kostnad.

### "You build it, you run it"

Så som beskrivet i sekundära sammanfattningar av Vogels intervju från 2006 uttrycker frasen en modell där teamet som bygger en tjänst också driver den, och därmed förblir i daglig kontakt med användare och med följderna av sin design. Intervjun gjordes av Jim Gray och publicerades i ACM Queue 2006; Amazons egen blogg noterade intervjun när den dök upp. Den här guiden har inte läst originalet, så den citerar det inte. Modellen har kostnader såväl som fördelar:

| Fördel | Kostnad eller risk |
|---|---|
| Byggare känner smärtan av dålig driftbarhet och åtgärdar den | Byggare bär jourbelastning och kan bli utbrända |
| Kortare återkoppling från användare och incidenter | Kompetens inom drift, säkerhet och efterlevnad måste finnas i teamet |
| Ingen överlämning som förlorar kunskap | Standarder över team behöver andra mekanismer |
| Tydligt ansvar | Små team kan finna hela belastningen för tung |

Site reliability engineering och DevOps erbjuder sätt att stödja sådana team (se Ämne 5.2 — DevOps och Ämne 5.3 — Site reliability engineering). Plattformsteam kan tillhandahålla gemensamma verktyg så att varje produktteam inte behöver bygga om dem.

### Team som äger

Ägarskap kräver ett team med kompetensen att leverera och driva, och befogenheten att agera. Scrum beskriver ett litet tvärfunktionellt, självstyrande team som inte beror på andra för hela sitt arbete. I praktiken beror produktteam också på gemensamma plattformar, säkerhet och datatjänster. Att hantera dessa beroenden är en del av ägarskapet (se Ämne 1.8 — Skala agilt).

### Finansiering och mål

Ägarskap kräver stabil finansiering och tydliga mål. Ett team som finansieras projekt för projekt upplöses när projektet slutar, och en tjänsteägare har inget team. Ett stående team finansierat för en produkt eller tjänst, med mål som förändras när det lär sig, är det vanliga svaret (se Ämne 1.9 — Agil ledning). Mål bör handla om resultat för användare och verksamheten och bör sättas tillsammans med ägaren.

### Ägarskap inom tjänstehantering

ITIL-arbetssätt behöver ägare: varje tjänst har en ägare, varje arbetssätt har en ägare och varje större process har en ägare (se Ämne 5.1 — Agil tjänstehantering). Tjänsteägaren innehar servicenivån, katalogposten, förbättringslistan och relationen med kunder (se Ämne 3.7 — Hantering av servicenivåer och Ämne 3.8 — Hantering av tjänstekatalog).

### Gränser och varningar

De källor som lästs för den här guiden ger inget belägg för hur väl ägarskapsmodeller fungerar, och Wikipedia-artikeln om produktledning listar ingen kritik. Praktiska varningar som erbjuds ur erfarenhet omfattar ägare med titel men utan befogenhet, ägare som är överbelastade med flera produkter, "you build it, you run it" utan stöd som leder till utmattning, och ägarskap som stannar vid teamgränsen medan värdeströmmen korsar den (se Ämne 5.4 — Värdeströmshantering).

## Bästa praxis

1. **Utse en ansvarig person för varje produkt eller tjänst.** Skriv namnet i tjänstekatalogen (ITIL skriver "service catalogue"). Se till att de har befogenhet över prioriteringar och ett ord med i finansieringen.
2. **Definiera vad ägaren beslutar.** Ange vilka beslut ägaren fattar ensam, vilka tillsammans med teamet och vilka som behöver eskaleras. Utan detta är ägarskap en titel.
3. **Ge ägaren tid.** Gör inte någon till ägare av flera stora produkter, eller till ägare med ett fullt leveransjobb också. Ägarskap är verkligt arbete.
4. **Finansiera teamet under tjänstens hela liv.** Undvik att upplösa team när projekt slutar. Se över finansieringen i en regelbunden cykel mot resultat.
5. **Sätt resultatmål med ägaren.** Beskriv vad som ska bli bättre för användare och verksamheten, med några få mått som teamet själv kan ta fram (se Ämne 5.6 — Mått och mätning).
6. **Lägg byggande och drift i ett team där ni kan.** Ta med kompetensen för utveckling, drift och support och ge teamet åtkomst till produktionsdata och verktyg inom säkra gränser. Där ni inte kan, skapa starka arbetsöverenskommelser.
7. **Stöd teamet med en plattform.** Tillhandahåll gemensamma verktyg för driftsättning, övervakning och säkerhet så att varje team inte bygger sina egna. Behandla plattformen som en produkt med användare.
8. **Dela jourbelastningen rättvist.** Begränsa nattliga samtal, justera larm och bevaka utbrändhet. "You build it, you run it" fallerar när de som driver den är utmattade.
9. **Ha en backlogg per produkt.** Ta med funktioner, defekter, driftarbete och förbättringsposter i en ordnad lista, så att ägaren kan väga dem mot varandra.
10. **Förbind ägare med varandra.** Håll regelbundna samtal mellan ägare av beroende produkter och tjänster, för att lösa konflikter och samordna planer.
11. **Granska ägarskap årligen.** Kontrollera att varje tjänst fortfarande har en aktiv ägare, ett team och en backlogg, och att rollerna fortfarande passar.
12. **Ta hänsyn till små team.** Där ett team äger många små tjänster, gruppera dem förnuftigt och använd lätta arbetssätt. Tillämpa inte en tung modell på en liten tjänst.

## Frågor att diskutera med teamet

**Vem ansvarar för var och en av våra tjänster, och skulle de själva säga det?**

Lista de huvudsakliga tjänsterna och utse ägaren. Fråga sedan varje namngiven person om de skulle kalla sig ägare. Gap mellan listan och svaren avslöjar hur mycket ägarskap som är nominellt. Facilitatorn kan fråga vilken tjänst som saknar ägare och vad det har kostat.

**Vad kan vår ägare besluta i dag utan att fråga någon?**

Be om exempel: prioriteringar, utgifter, en release, ett kundåtagande. Om de flesta beslut kräver godkännande från andra, diskutera vilka som bör delegeras och under vilka gränser. Kom överens om ett beslut att flytta.

**När något går fel i produktion, vem väcks, och har de medlen att åtgärda det?**

Fråga vem som har jour och vad de kan ändra. Om det inte är byggarna, fråga varför. Diskutera hur återkopplingen från incidenter når de människor som utformar tjänsten. Kom överens om en väg att förkorta.

**Hur finansierar vi den här tjänsten, och vad händer när ett projekt slutar?**

Följ finansieringen för en huvudtjänst. Fråga vem som kan spendera på förbättringar och vem som beslutar att stoppa. Om teamet upplöses efter ett projekt, diskutera kostnaden för förlorad kunskap. Föreslå en prövning av stående finansiering för en tjänst.

**Vilken kompetens saknar vi för att bygga och driva vår tjänst, och hur kunde vi få den?**

Lista den kompetens arbetet behöver: utveckling, drift, säkerhet, data, support. Markera gap. Diskutera parning, utbildning, att låna en specialist eller en gemensam plattform. Välj ett gap att täppa till.

**Hur många ägare ber vi en person att vara?**

Räkna de produkter och tjänster varje ägare ansvarar för. Överbelastade ägare kan inte fatta bra beslut. Diskutera att dela upp, delegera eller avveckla tjänster. Kom överens om ett maximum och en plan för en ägare som ligger över det.

## I praktiken: ett agilt ITIL-exempel

En nationell arbetsförmedling driver en nätbaserad tjänst för jobbmatchning som används av arbetssökande och arbetsgivare. Tjänsten byggdes av ett projektteam, överlämnades till en driftgrupp och finansieras nu som en serie små projekt. Chefen för digitala tjänster finner att ingen kan säga vem som äger den: den ursprungliga projektsponsorn har gått i pension, driften hanterar incidenter och en policyenhet begär ändringar via en kö som tar månader. Arbetsgivare klagar på ett registreringsformulär som inte har ändrats på tre år.

Chefen utser en tjänsteägare från arbetsgivarkontakten, en person som förstår både arbetsgivare och tjänsten, och ger henne ett ord med i backloggen och en andel av budgeten. Ett stående team på åtta, med utvecklare, en driftingenjör, en testare och en designer, bildas av de människor som redan arbetade med tjänsten. Teamet går med i jourschemat, med en gräns för nattliga samtal, och använder en gemensam plattform för driftsättning och övervakning som underhålls av ett centralt team. Policyenhetens önskemål läggs i den enda backloggen, där ägaren rangordnar dem mot förbättringar och rättningar. Teamet och ägaren kommer överens om tre resultatmål för året med några få mått: andelen arbetsgivarregistreringar som slutförs, tiden arbetssökande tar på sig att hitta en matchning och antalet upprepade incidenter.

Efter åtta månader har registreringsformuläret byggts om, slutförandegraden förbättrats och upprepade incidenter minskat. Ägaren kan svara på arbetsgivares frågor om vad som planeras. Vissa svårigheter återstår. Ägaren ansvarar också för en annan liten tjänst och är överansträngd, policyenheten ogillar att behöva konkurrera om platser i backloggen och jouringenjörerna säger att den gemensamma plattformen saknar ett verktyg de behöver. Chefen för digitala tjänster minskar ägarens andra uppgifter, ber policyenheten och ägaren att sätta upp ett månatligt planeringsmöte och lägger plattformsönskemålet i det centrala teamets backlogg.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam bör arbeta med en tydlig ägare och ta på sig driften av det de bygger. Ge ägaren belägg från användare, incidenter och kostnader och var ärliga om avvägningar. Be om de verktyg och det stöd ni behöver för att bära jour rättvist.

### Tjänste- och driftteam

Driftteam stöder produktteam med expertis, plattformar och gemensamma standarder. Där de driver tjänster åt andra, utse ägare och kom överens om servicenivåer. Motstå att lämna över varje driftproblem till en central grupp som inte äger något.

### Ledning och styrning

Ledare skapar ägarskap genom att utse ägare, ge dem befogenhet och tid och finansiera stående team. Be ägare om resultat och belägg, och avstå från att åsidosätta deras prioriteringar utan diskussion. Bevaka ägare som har titeln men inte makten.

### Kunder och användare

Kunder och användare har nytta när de vet vem som svarar för en tjänst och kan nå dem. Tala om för ägaren vad som är viktigast och vad som gör ont. Räkna med tydlig information om vad som planeras och ett ord med i hur prioriteringar sätts.

## Vanliga orsaker till misslyckande

- **Titel utan befogenhet.** En ägare kan inte besluta något. Ange i stället vad ägaren beslutar och stå bakom det.
- **Ägarskap genom kommitté.** Ingen ansvarar. Utse i stället en person för varje produkt eller tjänst.
- **Överbelastade ägare.** En person äger för många produkter. Begränsa i stället antalet och delegera.
- **Att upplösa team efter projekt.** Kunskap försvinner. Finansiera i stället stående team för fortlöpande tjänster.
- **"You build it, you run it" utan stöd.** Team bränns ut. Ge i stället en plattform, delad jour och justerade larm.
- **Ägarskap som stannar vid teamet.** Värdeströmmen korsar team. Förbind i stället ägare av beroende tjänster.
- **Flera backloggar.** Funktioner, defekter och drift konkurrerar i dolda köer. Håll i stället en ordnad backlogg per produkt.
- **Att kopiera en modell utan sammanhang.** Ett mönster från ett stort företag tillämpas på en liten tjänst. Anpassa i stället modellen efter storlek och risk.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Ansvar | Tjänster har ingen tydlig ägare | Vissa tjänster har informella ägare | Varje tjänst har en namngiven ägare med definierade beslutsrätter och tid | Ägarnas effektivitet och resultat granskas | Ägare samordnar mellan beroende tjänster och med kunder |
| Team och kompetens | Bygge och drift är separata team | Vissa team delar jour | Stående team äger bygge och drift med den kompetens de behöver | Kompetensgap och belastning mäts och åtgärdas | Kompetens och plattformar delas mellan team och leverantörer |
| Finansiering och mål | Finansiering sker per projekt | Vissa stående team finns | Tjänster har stående finansiering och resultatmål | Finansiering följer uppmätta resultat | Finansiering och mål samordnas mellan tjänster och med kunder |
| Backlogg och prioriteringar | Prioriteringar kommer från många köer | Vissa ägare för en lista | En ordnad backlogg per produkt omfattar alla slags arbete | Backloggens flöde och prioriteringar granskas med intressenter | Prioriteringar samordnas mellan ägare och med kunder |

## Checklista

- [ ] Varje produkt eller tjänst har en namngiven, ansvarig ägare, listad i tjänstekatalogen.
- [ ] Vad varje ägare beslutar ensam, tillsammans med teamet och genom eskalering är nedskrivet.
- [ ] Ägare har tid för rollen och ett hanterbart antal tjänster.
- [ ] Ett stående team är finansierat för varje fortlöpande tjänst.
- [ ] Varje tjänst har resultatmål med några få mått.
- [ ] Teamet som bygger en tjänst har kompetensen och åtkomsten att driva den, eller har tydliga arbetsöverenskommelser med dem som gör det.
- [ ] Jourbelastningen delas rättvist med gränser och justerade larm.
- [ ] En gemensam plattform stöder team med driftsättning, övervakning och säkerhet.
- [ ] Varje produkt har en ordnad backlogg som täcker funktioner, defekter, drift och förbättring.
- [ ] Ägarskap granskas minst en gång om året.

## AI-prompter

**Syfte: utarbeta beslutsrätter för en produkt- eller tjänsteägare.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: hitta tjänster utan tydlig ägare.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Syfte: planera en jourmodell för ett team som bygger och driver.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Syfte: förbereda ett argument för stående finansiering av en tjänst.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## AI-färdigheter

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att klargöra vem som äger, supportar och konsulteras för varje produkt eller tjänst.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): använd för att beskriva riktning och planer på kort sikt för en produkt eller tjänst.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): använd för att sätta ett teams syfte, resultat och gränser i början.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): använd för att hjälpa en ägare att ordna backloggen efter värde och kostnad.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): använd för att validera vad en produkt eller tjänst bör göra härnäst innan den byggs.

## Viktiga källor

- **The Scrum Guide** (Ken Schwaber och Jeff Sutherland, scrumguides.org): definitionen av produktägarens ansvar och det tvärfunktionella, självstyrande teamet.
- **Product management** (Wikipedia): en allmän beskrivning av disciplinen, dess ansvar och dess historia.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): intervjun där "you build it, you run it" beskrivs; läs originalet för den exakta ordalydelsen.
- **Site Reliability Engineering** (Google, sre.google): ett sätt att stödja team som driver det de bygger.

## Referenser

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
