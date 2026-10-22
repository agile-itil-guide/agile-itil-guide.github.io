# Hantering av tjänstekatalog

**En tjänstekatalog (ITIL skriver "service catalogue") är en kurerad lista över vad en organisation erbjuder, med en ägare och en enkel beskrivning för varje tjänst, och dess värde beror på om användare finner den användbar och ägarna håller den sann.**

## Varför detta är viktigt

Fråga en användare vad IT erbjuder och du får ofta ett vagt svar. Fråga IT-teamet och du får en lista över system. De två listorna stämmer sällan, och gapet orsakar missförstånd: användare ber om saker som inte finns, team supportar tjänster ingen använder och ingen kan säga vem som ansvarar för vad. En tjänstekatalog täpper till gapet genom att ange, på ett ställe och i enkla ord, vad som erbjuds och vem som står bakom det.

För agila team är katalogen också ett sätt att göra ägarskap synligt. Ett team som bygger och driver en tjänst bör kunna säga: "det här erbjuder vi, det här är vem du frågar, det här kan du förvänta dig." Utan det hamnar förfrågningar på fel ställe, incidenter studsar mellan team och nya medarbetare kan inte hitta hjälp.

[Wikipedia-artikeln om tjänstekataloger](https://en.wikipedia.org/wiki/Service_catalog) beskriver en tjänstekatalog som en organiserad och kurerad samling av affärs- och informationsteknologitjänster inom ett företag, som fungerar som ett kunskapshanteringsverktyg som utser sakkunniga för varje listad tjänst. Den noterar att ITIL:s Service Design-volym definierar en IT-tjänstekatalog som en uttömmande lista över enbart IT-tjänster och den enda del av tjänsteportföljen som publiceras till kunder, utan att ange ITIL-utgåvan. Det här ämnet bygger på den beskrivningen, och på guidens andra ämnen, och håller katalogen praktisk och lätt.

## Centrala begrepp

### Vad som finns i en katalog

Enligt Wikipedia innehåller varje post i en tjänstekatalog vanligtvis en namngiven ägare, en beskrivning, en kategori, relaterade förfrågningstyper, stödjande tjänster, rättigheter, kostnader, hur tjänsten begärs och uppfylls och eskaleringskontakter. Vanliga kategorier omfattar IT, drift och uppfyllande. Ni behöver inte alla dessa för varje tjänst. En bra katalog börjar med de få som användare och supportpersonal faktiskt behöver.

| Fält | Varför det hjälper | Vem som använder det |
|---|---|---|
| **Namn och beskrivning i enkla ord** | Användare känner igen vad som erbjuds | Användare, servicedesk |
| **Ägare** | Någon svarar för tjänsten | Alla |
| **Vem som kan använda den (rättighet)** | Undviker bortkastade förfrågningar | Användare, servicedesk |
| **Hur man begär eller får hjälp** | För användare till rätt ställe | Användare, servicedesk |
| **Vad den beror på (stödjande tjänster)** | Visar vad mer som måste fungera | Drift, leveransteam |
| **Kostnad, om den debiteras** | Stöder beslut och budgetar | Kunder, ekonomi |
| **Servicenivå eller förväntan** | Sätter förväntningar | Användare, kunder (se Ämne 3.7 — Hantering av servicenivåer) |
| **Eskaleringskontakt** | Påskyndar hjälp under problem | Servicedesk, drift |

### Katalog och portfölj

Wikipedia-artikeln placerar IT-tjänstekatalogen som en delmängd av den bredare företagskatalogen. I ITIL-ordförråd är tjänsteportföljen hela uppsättningen tjänster, inklusive de under utveckling och de som avvecklas, och katalogen är den del som publiceras till kunder. Källorna som lästs här definierar inte portföljen i detalj: artikeln om hantering av tjänsteportfölj omdirigerar till IT-portföljhantering, som bara säger att ITIL v3 kräver ett arbetssätt för hantering av tjänsteportfölj som verkar funktionellt likvärdigt med IT-portföljhantering. Behandla portföljidén så här: katalogen är vad ni erbjuder nu, och portföljen är också vad ni bygger och avvecklar (se Ämne 5.7 — Styrning, risk och efterlevnad för portföljval).

### Företags- och IT-kataloger

En företagstjänstekatalog täcker tjänster från flera funktioner, som personal, fastighetsdrift och IT. En IT-tjänstekatalog är en delmängd. Artikeln nämner fördelar med en katalog: att centralisera tjänster över distribuerade företag, att identifiera tjänstegap och redundanser, att följa resursfördelning och att mäta tjänsteefterfrågan, utbud, godkännandetider, leveranstider och ekonomi. För molntjänster nämner den självprovisionering och standardiserade definitioner som underlättar kapacitetsplanering och inköpsprognoser. Dessa är påståenden från artikeln, baserade på dess angivna källor.

### Affärsvy och teknisk vy

Många organisationer skiljer det kunder ser från det leverantören behöver internt. Källorna som lästs här gör inte den skillnaden, så betrakta detta som vanlig praxis. **Kundvyn** listar tjänster med användarens termer ("E-post och kalender"). **Den tekniska vyn** listar komponenter och team bakom dem ("Postservrar, skräppostfilter, katalogtjänst"). Kundvyn hjälper användare att välja. Den tekniska vyn hjälper driften att förstå beroenden (se Ämne 4.4 — Konfigurationshantering). Håll de två länkade men åtskilda, så att användare inte konfronteras med komponentnamn.

### Katalogen som kunskapsverktyg

Wikipedia-artikeln betonar att katalogen utser sakkunniga för varje tjänst. Det gör den till en karta över vem som kan vad. En katalog som hålls aktuell hjälper servicedesken att dirigera kontakter, hjälper nya medarbetare att hitta hjälp och hjälper incidentutförare att nå rätt person (se Ämne 3.9 — Kunskapshantering).

### Katalog och förfrågningar

Katalogen inkluderar vanligtvis de förfrågningar användare kan göra för varje tjänst, som "begär åtkomst" eller "rapportera ett fel". En förfrågningsmodell beskriver hur var och en uppfylls (se Ämne 3.6 — Hantering av serviceförfrågningar). Inte varje tjänst behöver förfrågningar, och inte varje förfrågan behöver en katalogpost, men frekventa förfrågningar bör vara lätta att hitta.

### Att hålla den sann

En katalog blir snabbt föråldrad om ingen äger den. Tjänster förändras, team omorganiseras och beskrivningar glider ifrån verkligheten. Den mest användbara disciplinen är en granskningscykel: varje ägare bekräftar sina poster enligt schema, och oanvända tjänster avvecklas. Wikipedia-artikeln diskuterar inte kritik eller gränser, men praktisk erfarenhet är samstämmig: en katalog som är fel är sämre än ingen katalog, eftersom den skickar människor till fel ställe med tillförsikt.

### Kataloger och agila team

Agila team motsätter sig ofta tunga kataloger eftersom de väntar sig byråkrati. En lätt katalog är förenlig med agila arbetssätt. Den kan vara ett gemensamt dokument eller en sida, underhållen av ägarna själva, med några få fält per tjänst. Testet är användning: konsulterar användare och deskken den faktiskt?

## Bästa praxis

1. **Lista tjänster med användarnas ord.** Börja med att fråga användare och servicedesken vad de skulle kalla varje sak. Namnge tjänster efter vad användare gör ("Gå med i ett videomöte") och inte efter teknik ("Konferensplattform").
2. **Ge varje tjänst en namngiven ägare.** En person bör svara för varje tjänst. Där en tjänst har flera delar, utse en ägare för helheten och lista bidragsgivarna.
3. **Börja smått.** Börja med de 10 till 20 tjänster som användare oftast frågar om. Lägg till fler när ni lär er vad som är användbart. En kort, korrekt lista är bättre än en lång, föråldrad.
4. **Ta bara med vad människor använder.** För varje fält, fråga vem som använder det och till vad. Ta bort fält som ingen använder. Lägg till ett fält först när någon behöver det.
5. **Länka till förfrågningar och hjälp.** För varje tjänst, visa hur man ber om något, rapporterar ett fel och hittar hjälp. Länka till kunskapsbasen (se Ämne 3.9 — Kunskapshantering).
6. **Visa tjänsteförväntningar.** Ange vad användare kan förvänta sig, som supporttider och typiskt svar, i enkla ord. Länka till det formella avtalet där det finns ett.
7. **Registrera beroenden.** För varje tjänst, notera de huvudsakliga tjänster och leverantörer den förlitar sig på. Det hjälper incidentsvar och ändringsplanering.
8. **Skilj kundvyn från den tekniska vyn.** Håll användarvända beskrivningar fria från jargong. Länka dem till tekniska register där sådana finns.
9. **Granska enligt schema.** Be varje ägare bekräfta sina poster minst två gånger om året och avveckla tjänster ingen använder. Visa datumet för senaste granskning på varje post.
10. **Gör den lätt att hitta och använda.** Lägg katalogen där användare redan tittar, som intranätet eller portalen. Pröva sökning med verkliga frågor.
11. **Använd katalogen för att hitta gap och överlappningar.** Leta efter tjänster ingen äger, tjänster som duplicerar varandra och förfrågningar utan matchande tjänst. För fynden till planeringen (se Ämne 5.5 — Produkt- och tjänsteägarskap).
12. **Behandla katalogändringar som tjänsteändringar.** När ni lägger till, ändrar eller avvecklar en tjänst, tillkännage det för deskken och berörda användare, som ni skulle göra med en release.

## Frågor att diskutera med teamet

**Om en ny kollega frågade vad vi erbjuder, vad skulle vi svara, och skulle vi alla säga samma sak?**

Be varje person lista tjänsterna på två minuter och jämför sedan. Skillnader visar hur luddiga gränserna är. Facilitatorn kan fråga vilka objekt användare inte skulle känna igen. Använd den kombinerade listan som ett utkast till katalog och markera objekt där det finns oenighet.

**Vilka tjänster saknar tydlig ägare?**

Gå igenom listan och markera de där ingen kan säga vem som svarar för tjänsten. Tjänster utan ägare orsakar ofta de längsta förseningarna i incidenter och förfrågningar. Fråga vad som hindrar en person från att ta ägarskap: tid, befogenhet eller oklara gränser. Kom överens om en ägare eller ett beslut att avveckla för var och en.

**Vad ber användare om som vi inte listar, och vad listar vi som ingen ber om?**

Jämför förfrågningsdata med listan. Förfrågningar utan matchande tjänst avslöjar gap; listade tjänster utan förfrågningar avslöjar kandidater för avveckling. Var försiktig: vissa tjänster används tyst. Fråga användare innan ni tar bort. Välj ett gap och en kandidat att undersöka.

**Vad skulle en användare behöva se för att välja rätt tjänst utan att ringa oss?**

Ta ett vanligt val, som vilket verktyg som ska användas för att dela filer. Fråga vilken information som skulle hjälpa: en kort beskrivning, vem den är till för, en jämförelse. Utarbeta en post på ett stycke och pröva den med två användare. Målet är en katalog som avleder samtal genom att vara tydlig.

**Hur får vi veta när en tjänst har förändrats och katalogen är föråldrad?**

Fråga när den senaste granskningen ägde rum och vem som gjorde den. Diskutera utlösare, som en omorganisation eller en större release, och en regelbunden cykel. Ett synligt datum för "senast granskad" på varje post hjälper. Kom överens om det första granskningsdatumet och vem som ansvarar.

**Vad är vi beroende av som inte finns i katalogen?**

Lista plattformarna och leverantörerna bakom era tjänster. Fråga vilka som är listade och vem som äger dem. Beroenden utan ägare är risker. Välj ett att lägga till i den tekniska vyn.

## I praktiken: ett agilt ITIL-exempel

En regional förvaltning har 120 anställda på sin IT-avdelning som betjänar 2 500 anställda i förvaltningen och flera publika tjänster. Personal klagar på att de inte vet vem de ska fråga om hjälp, och servicedesken ägnar mycket av sin tid åt att omdirigera samtal. Förvaltningen byggde en gång en tjänstekatalog med 300 poster, men den används sällan och är mestadels föråldrad.

Chefen för tjänsteleverans beslutar att börja om, smått. Hon ber servicedesken om de 30 vanligaste skälen människor kontaktar dem och grupperar dem i 15 tjänster med användarnas ord: "E-post och kalender", "Filer och delning", "Laptops och enheter", "Förvaltningens webbplats", "Ekonomisystemet" och så vidare. För var och en skriver en namngiven ägare fyra saker: en beskrivning på två meningar, vem den är till för, hur man får hjälp och vad man kan förvänta sig. Beroenden registreras i en separat teknisk lista för driften. Katalogen är en enda webbsida på förvaltningens intranät, och varje post visar datumet då den senast bekräftades av sin ägare.

Efter tre månader minskar samtal till deskken om vem man ska fråga, och ägarna märker gap: ingen ägde bokningssystemet för mötesrum, och två tjänster överlappade. Dessa tilldelas och slås ihop. Problem återstår. Tre ägare har inte bekräftat sina poster, och viss personal ringer fortfarande deskken av vana. Chefen för tjänsteleverans sätter upp en påminnelsecykel och ordnar så att deskken hänvisar uppringare till katalogen medan den hanterar deras förfrågan. Hon finner också att vissa poster är skrivna på tekniskt språk och ber en kommunikatör granska dem.

## Fyra perspektiv

### Produkt- och leveransteam

Leveransteam bör anges som ägare av de tjänster de bygger och driver, och bör hålla sina poster aktuella. När ni lanserar eller avvecklar en tjänst, uppdatera katalogen och tala om för servicedesken. Använd katalogen för att hitta vem ni ska tala med om ett beroende.

### Tjänste- och driftteam

Drift och servicedesken är de tyngsta användarna. Tala om för ägare vad som är fel eller saknas i poster och använd katalogen för dirigering och eskalering. Håll den tekniska vyn länkad till kundvyn, så att incidentutförare kan se vad som beror på vad.

### Ledning och styrning

Ledare kan använda katalogen för att se vad organisationen erbjuder, vad som överlappar och vad som är föräldralöst. Be om att gap och dubbletter åtgärdas och att ägare utses. Kräv inte varje fält för varje tjänst; be om det som stöder beslut.

### Kunder och användare

Kunder och användare får en tydlig bild av vad de kan be om och vad de kan förvänta sig. Använd katalogen för att hitta rätt tjänst och tala om för ägarna när en post är fel eller oklar. Om du inte hittar vad du behöver, säg det, eftersom det är belägg för ett gap.

## Vanliga orsaker till misslyckande

- **För stor, för tidigt.** Hundratals poster skapas och underhålls inte. Börja i stället med de mest använda tjänsterna och växa.
- **Skriven på leverantörens språk.** Användare hittar inte vad de behöver. Namnge i stället tjänster efter vad användare gör och pröva med användare.
- **Inga ägare.** Ingen håller poster sanna. Utse i stället en ägare för varje post och visa granskningsdatum.
- **En katalog som ingen använder.** Den ligger på en webbplats som användare inte besöker. Placera den i stället där människor redan tittar och låt deskken hänvisa till den.
- **Att blanda kund- och teknikvyer.** Användare möter komponentnamn. Håll i stället en tydlig kundvy och länka en teknisk för driften.
- **Ingen avveckling.** Döda tjänster förblir listade. Granska i stället användningen och avveckla det ingen behöver.
- **Att behandla den som ett engångsprojekt.** Katalogen blir föråldrad efter lanseringen. Sätt i stället en granskningscykel och gör den till en del av ändringar.
- **För många obligatoriska fält.** Ägare fyller i fält för att tillfredsställa mallen. Kräv i stället bara det någon använder.

## Mognadsmodell

| Dimension | Påbörja | Utveckla | Standardisera | Hantera | Orkestrera |
|---|---|---|---|---|---|
| Täckning och tydlighet | Tjänster är informellt kända | En lista över vissa tjänster finns | En katalog över huvudtjänster med användarnas ord och ägare | Användning och gap mäts och katalogen justeras | Katalogen spänner över funktioner och partner och formas med användare |
| Ägarskap och aktualitet | Ingen äger listan | Vissa ägare bekräftar poster ibland | Varje post har en ägare och ett granskningsdatum | Försenade granskningar följs och löses | Ägarskap och granskning är rutin i hela organisationen |
| Koppling till förfrågningar och hjälp | Förfrågningar går via e-post eller telefon | Vissa poster länkar till formulär eller hjälp | Poster länkar till förfrågningar, kunskap och supportvägar | Klickfrekvens och avledning mäts | Förfrågningar, kunskap och support är integrerade över funktioner |
| Beroenden och beslut | Beroenden är tyst kunskap | Vissa beroenden är listade | Beroenden registreras och används i incident- och ändringsarbete | Beroendedata stöder planering och riskgranskning | Beroenden delas med leverantörer och används för att planera gemensamt |

## Checklista

- [ ] Vi har en lista över tjänster med användarnas ord, med början i de mest använda.
- [ ] Varje tjänst har en namngiven ägare.
- [ ] Varje post säger vem den är till för, hur man får hjälp och vad man kan förvänta sig.
- [ ] Katalogen finns där användare och servicedesken redan tittar.
- [ ] Poster visar datumet de senast bekräftades.
- [ ] Ägare granskar sina poster minst två gånger om året.
- [ ] Huvudberoenden registreras i en teknisk vy.
- [ ] Oanvända tjänster granskas för avveckling.
- [ ] Att lägga till, ändra eller avveckla en tjänst tillkännages för deskken och användare.
- [ ] Vi har prövat katalogen med verkliga användarfrågor.

## AI-prompter

**Syfte: göra kontaktdata till ett utkast till lista över tjänster med användarnas ord.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Syfte: skriva en tydlig katalogpost.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Syfte: granska en katalog för gap, överlappningar och föräldralösa poster.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Syfte: planera en granskning av katalogen med ägare.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## AI-färdigheter

- [service-catalog](../../../../skills/service-catalog/SKILL.md): använd för att utarbeta poster och strukturera en tjänstekatalog.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): använd för att förstå vem som använder varje tjänst och vad de behöver.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): använd för att hitta vilka förfrågningar och tjänster som används mest.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): använd för att registrera vem som äger, supportar och konsulteras om varje tjänst.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): använd för att planera hur tjänster ska läggas till, ändras eller avvecklas över tid.

## Viktiga källor

- **Service catalog** (Wikipedia): en kort beskrivning av innehåll, fördelar och ITIL:s definition av en IT-tjänstekatalog.
- **IT portfolio management** (Wikipedia): bakgrund om portföljbegrepp, inklusive noteringen att ITIL v3:s hantering av tjänsteportfölj verkar funktionellt likvärdig.
- **ITIL** (Wikipedia): sammanhang om ITIL-versioner och varifrån katalog- och portföljidéer kommer.
- **Knowledge management** (Wikipedia): bakgrund om hur kataloger fungerar som kunskapsverktyg.

## Referenser

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
