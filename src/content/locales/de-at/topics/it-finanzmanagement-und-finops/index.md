# IT-Finanzmanagement und FinOps

**Das IT-Finanzmanagement zeigt, was Services kosten und welchen Wert sie zurückgeben, und FinOps ist die kulturelle Praktik, Ingenieure, Finanzen und Fachbereiche zusammenzubringen, damit die Technologieausgaben, besonders in der Cloud, verstanden und gesteuert werden, während sie anfallen.**

## Warum das wichtig ist

Geld entscheidet, welche Services es gibt, wie gut sie besetzt sind und wie lange sie bestehen. Jahrelang bedeutete IT-Finanzen ein Jahresbudget, eine Tabelle zur Kostenverteilung und gelegentlichen Streit darüber, wer das Netzwerk bezahlt. Cloud Computing hat das geändert. Ressourcen können von jeder Person mit den richtigen Berechtigungen in Sekunden erzeugt werden, und die Abrechnung folgt der Nutzung. Ein einziger falsch konfigurierter Job kann der Monatsrechnung Tausende hinzufügen, bevor es jemand bemerkt, und eine überlegte Änderung kann ebenso viel sparen.

Für agile Teams ist der Wandel zweischneidig. Sie gewinnen die Freiheit, zu experimentieren und zu skalieren, ohne auf Hardware zu warten. Sie übernehmen auch eine Verantwortung, die früher bei Finanzen und Einkauf lag: zu wissen, was ihre Entscheidungen kosten. Zugleich stehen Finanzbeschäftigte, die in Jahreszyklen planen, einer täglich schwankenden Nutzung gegenüber. Keine Seite kann die Kosten allein gut steuern.

Die englische Wikipedia hat an der geprüften Adresse keinen Artikel mit dem Titel "FinOps". Die eigene Website der FinOps Foundation definiert FinOps als operatives Framework und kulturelle Praktik, die den Geschäftswert von Technologie maximiert und finanzielle Verantwortlichkeit durch Zusammenarbeit zwischen Technik, Finanzen und Fachbereichen schafft. Der Wikipedia-Artikel zu Cloud Computing beschreibt Preismodelle und Kostenkontrolle und trägt einen Pflegehinweis, dass Teile unbelegt sein können. Das finanzielle Vokabular von ITIL hier, etwa Budgetierung, Buchhaltung und Verrechnung, stammt aus weit veröffentlichten Beschreibungen, die dieser Leitfaden nicht am Text des Rahmenwerk-Eigners prüfen konnte.

## Kernkonzepte

### IT-Finanzmanagement

IT-Finanzmanagement (in ITIL "Finanzmanagement für IT-Services") wird weithin als Praktik beschrieben, das Geld eines IT-Service-Providers zu steuern: Budgets planen, Kosten verbuchen und, wo relevant, Services verrechnen. Sein Ziel ist, Entscheidungstragenden die Information zu geben, Kosten gegen Wert abzuwägen. Die für diesen Leitfaden gelesenen Quellen definieren die Praktik nicht, daher sind diese Beschreibungen allgemeiner Sprachgebrauch, als solcher angeboten.

| Tätigkeit | Frage, die sie beantwortet |
|---|---|
| **Budgetierung und Planung** | Wie viel werden wir im kommenden Zeitraum wofür ausgeben? |
| **Kostenrechnung** | Was kostet jeder Service in der Erbringung? |
| **Verrechnung oder Umlage** | Wer zahlt, und wie? |
| **Wert- und Investitionsanalyse** | Ist ein Service oder eine Änderung ihre Kosten wert? |

### Showback und Chargeback

Zwei Arrangements zur Kostenteilung sind weit verbreitet. Beim **Showback** wird den Verbrauchenden gezeigt, was sie nutzen und was es kostet, aber es wird nicht in Rechnung gestellt. Beim **Chargeback** wird ihnen in Rechnung gestellt oder die Kosten werden auf ihr Budget verschoben. Showback schafft Bewusstsein mit wenig Reibung; Chargeback schafft Verantwortlichkeit und kann Streit über Umlageregeln auslösen. Wählen Sie, indem Sie fragen, welches Verhalten Sie wollen und ob die Daten gut genug sind, um sie zu vertreten.

### Cloud und das Pay-as-you-go-Modell

Wikipedia sagt, Cloud Computing könne die anfänglichen Investitionsausgaben senken, indem es zu einem Betriebsausgabenmodell wechselt, in dem Kosten mit der Nutzung skalieren, und dass Infrastructure as a Service nach Versorgerprinzip abgerechnet wird. Es beschreibt Software as a Service als typischerweise monatliche oder jährliche Pauschale je Nutzer oder nutzungsabhängig. Seine Liste von Bedenken zur Kostenkontrolle umfasst ungenutzte Ressourcen, ineffiziente Konfigurationen und versteckte Kosten. Er merkt an, dass Anbieter Kostenwerkzeuge bereitstellen, und nennt FinOps als Framework zur Standardisierung finanzieller Cloud-Abläufe.

Der Artikel berichtet Umfrageergebnisse: Eine Gartner-Umfrage unter 200 IT-Führungskräften fand, dass 69 Prozent 2023 Budgetüberschreitungen in der Cloud erlebten, während die anderen Prognose, Ausgabenüberwachung und Optimierung dafür verantwortlich machten; und der Bericht von Flexera 2024 nannte die Steuerung der Cloud-Ausgaben als größte Herausforderung und berichtete, die Ausgaben für öffentliche Clouds hätten die Budgets im Durchschnitt um 15 Prozent überschritten. Der Artikel trägt einen Hinweis zu unbelegtem Text, prüfen Sie diese Zahlen also an den Originalberichten, bevor Sie sie zitieren.

### Was FinOps ist

Die Website der FinOps Foundation definiert FinOps als "ein operatives Framework und eine kulturelle Praktik", die "den Geschäftswert von Technologie maximiert" und "finanzielle Verantwortlichkeit durch Zusammenarbeit zwischen Technik, Finanzen und Fachbereichen schafft". Sie sagt, der Name verbinde "Finance" und "DevOps", und der Fokus reiche über die Cloud hinaus zu Software as a Service, Lizenzierung, Rechenzentren und mehr. Wichtige Punkte von der Website:

- **Es ist ein Mannschaftssport.** Die Website nennt diese Gruppen: Führungskräfte, Ingenieure, FinOps-Praktizierende, Betrieb sowie Finanzen und Einkauf, und sagt, FinOps verändere, wie unterschiedliche Teams zusammenarbeiten. Ein einzelnes Team kann es nicht allein.
- **Es nutzt einen Reifegradansatz**, beschrieben als "Crawl, Walk, Run" (Krabbeln, Gehen, Laufen).
- **Die Foundation** wird als Projekt unter LF Projects beschrieben, einer Reihe der Linux Foundation, und unterstützt eine quelloffene technische Spezifikation namens FOCUS (die FinOps Open Cost and Usage Specification). Sie bietet auch Schulung und Zertifizierung an.

Die für diesen Leitfaden gelesene Seite listet weder die Prinzipien noch die Phasen auf, daher nennt dieses Thema sie nicht. Sehen Sie sich die Seiten der Foundation zu Prinzipien und Phasen direkt an.

### Kostendaten und Tagging

Wie auch immer die Praktik heißt, sie hängt davon ab, Kosten zuordnen zu können. Das braucht zweierlei: Tags oder Labels an Ressourcen, die sagen, wer sie verantwortet und welchen Service sie stützen (siehe Thema 4.1 — IT-Asset-Management), und Abrechnungsdaten, die sich nach diesen Tags gruppieren lassen. FOCUS existiert, um das Format von Kosten- und Nutzungsdaten über Anbieter hinweg zu standardisieren. Kosten ohne Tag sind Kosten ohne Verantwortliche.

### Stückkosten und Wert

Eine Gesamtrechnung sagt wenig. Teilen Sie die Kosten durch etwas, das für das Geschäft etwas bedeutet: je Transaktion, je Nutzer, je Service, je Umgebung. Steigende Gesamtkosten bei fallenden Stückkosten können gesundes Wachstum sein. Fallende Gesamtkosten bei steigenden Stückkosten können ein Problem anzeigen. Stückkosten verbinden Finanzen mit Service-Levels und Wert (siehe Thema 3.7 — Service-Level-Management).

### Kosten, Verlässlichkeit und Tempo

Geld kauft Verlässlichkeit und Tempo, und jede zusätzliche Stufe hat einen Preis (siehe Thema 3.11 — Verfügbarkeit, Kapazität und Performance). Ein Team, das Kosten achtlos senkt, kann die Widerstandsfähigkeit verringern. Ein Team, das nie auf die Kosten schaut, kann überdimensionieren. FinOps-Gespräche sind ein Ort, diesen Zielkonflikt auszusprechen, wobei Ingenieure Optionen beschreiben und Finanzen und Fachbereich sie abwägen.

### Governance und Risiko

Finanzielle Kontrollen umfassen Budgets und Warnungen, Genehmigung für große Verpflichtungen, Grenzen dafür, wer teure Ressourcen erzeugen darf, und regelmäßige Überprüfungen. Verpflichtungen gegenüber Anbietern, etwa langfristige Kaufvereinbarungen, können die Kosten senken und Risiko hinzufügen, wenn die Nutzung sinkt. Das sind Entscheidungen für Finanzen, Einkauf und Technik gemeinsam (siehe Thema 5.7 — Governance, Risiko und Compliance und Thema 3.14 — Lieferantenmanagement).

### Grenzen der Quellen

Die Seite der FinOps Foundation ist eine Zusammenfassung der Organisation, die die Praktik fördert, und gibt weder ein Gründungsdatum noch Mitgliederzahlen noch Belege für Ergebnisse. Der Artikel zu Cloud Computing ist wegen unbelegten Texts markiert und nennt weder Preismechanik noch Egress-Gebühren noch Einzelheiten einer FinOps-Praxis. Dieses Thema sollte als Einführung behandelt werden; lesen Sie die Materialien der Foundation und die Dokumentation Ihres Anbieters für Einzelheiten.

## Bewährte Praktiken

1. **Machen Sie Kosten für die sichtbar, die sie verursachen.** Zeigen Sie jedem Team mindestens monatlich die Kosten der Services, die es verantwortet, in einer verständlichen Form. Menschen steuern, was sie sehen können.
2. **Versehen Sie alles, was Geld kostet, mit Tags.** Verlangen Sie Tags für Verantwortliche, Service und Umgebung bei Cloud-Ressourcen und berichten Sie über Ausgaben ohne Tags. Beheben Sie das, bevor Sie irgendetwas anderes optimieren.
3. **Beginnen Sie mit Showback.** Zeigen Sie Teams ihre Kosten, bevor Sie sie verrechnen. Wechseln Sie erst zu Chargeback, wenn man den Daten traut und der Nutzen klar ist.
4. **Nutzen Sie Stückkosten.** Drücken Sie Kosten je Transaktion, Nutzer oder Service aus, ebenso wie insgesamt. Prüfen Sie den Verlauf zusammen mit Nachfrage und Qualität.
5. **Setzen Sie Budgets und Warnungen.** Vereinbaren Sie Budgets nach Service oder Team und setzen Sie Warnungen weit vor der Grenze. Besprechen Sie Warnungen mit den Verantwortlichen, nicht nur mit den Finanzen.
6. **Bringen Sie Finanzen und Technik in ein Gespräch.** Halten Sie einen regelmäßigen Review, in dem Ingenieure erklären, was die Kosten treibt, und Finanzen die Beschränkungen erklären. Beziehen Sie eine Fachverantwortliche ein, die den Wert beurteilen kann.
7. **Suchen Sie zuerst nach Verschwendung.** Finden Sie ungenutzte oder überdimensionierte Ressourcen, leerlaufende Umgebungen und vergessene Abonnements. Diese Einsparungen tragen wenig Risiko (siehe Thema 4.2 — Software-Asset-Management zu Abonnements).
8. **Wägen Sie Einsparungen gegen Verlässlichkeit ab.** Fragen Sie vor dem Kürzen, was die Änderung für Verfügbarkeit, Leistung und Wiederherstellung bedeutet. Halten Sie den Zielkonflikt fest.
9. **Planen Sie Verpflichtungen sorgfältig.** Kaufverpflichtungen gegenüber Anbietern können die Kosten senken, binden aber Ausgaben. Gründen Sie sie auf stabile Nutzung und überprüfen Sie sie regelmäßig.
10. **Geben Sie Teams Befugnis und Grenzen.** Lassen Sie Teams Kostenentscheidungen innerhalb vereinbarter Grenzen treffen und verlangen Sie Genehmigung für Entscheidungen darüber. Autonomie mit Sichtbarkeit wirkt besser als zentrale Kontrolle allein.
11. **Beziehen Sie Kosten in Entwurf und Definition of Done ein.** Fragen Sie in Entwurfsreviews, was ein Feature im Betrieb kosten wird, und prüfen Sie nach dem Release.
12. **Lernen und teilen Sie.** Veröffentlichen Sie kurze Notizen dazu, was Geld gespart hat und was nach hinten losging. Nutzen Sie einen Reifegradansatz wie "Crawl, Walk, Run", um die Praktik wachsen zu lassen.

## Fragen zur Diskussion im Team

**Wissen wir, was unser Hauptservice im Betrieb kostet, und wer diese Zahl verantwortet?**

Fragen Sie nach den Monatskosten des größten Services und wie sie berechnet werden. Oft kann niemand antworten, oder die Antwort kommt aus verschiedenen Quellen. Die Moderation kann fragen, was nötig wäre, um die Zahl verlässlich zu erzeugen, etwa Tags und ein Bericht. Wählen Sie einen Service zum Beginnen.

**Welchen Anteil unserer Cloud-Ausgaben können wir einer benannten verantwortlichen Person zuordnen?**

Fragen Sie nach dem Anteil ohne Tags. Ein großer Anteil heißt, dass sich Kosten nicht steuern lassen. Besprechen Sie, warum Ressourcen keine Tags haben: keine Regel, kein Werkzeug oder kein Anreiz. Vereinbaren Sie eine Tagging-Regel und ein Datum für einen ersten Bericht.

**Wann haben wir zuletzt eine Kostenüberraschung gefunden, und wie haben wir es erfahren?**

Sammeln Sie Beispiele: eine vergessene Umgebung, ein außer Kontrolle geratener Job, ein Abonnement, das sich verlängert hat. Fragen Sie, wie lange es bis zur Entdeckung lief. Besprechen Sie Warnungen und Reviews, die es gefangen hätten. Wählen Sie eine Warnung zum Ergänzen.

**Was würden wir kürzen, wenn das Budget um zehn Prozent sänke, und was würden wir verlieren?**

Bitten Sie das Team, Optionen vorzuschlagen und die Folgen zu nennen, auch für die Verlässlichkeit. Diese Frage macht Zielkonflikte explizit. Behandeln Sie die Antworten nicht als Plan; nutzen Sie sie, um ein Gespräch mit Finanzen und Fachbereich über Wert zu beginnen.

**Welche Entscheidungen über Ausgaben treffen Ingenieure heute, und welche sollten sie treffen?**

Listen Sie die Kostenentscheidungen auf, die Teams treffen: Größen, Umgebungen, Werkzeuge, Käufe. Fragen Sie, welche Information sie nutzen. Besprechen Sie, welche Grenzen angemessen wären. Vereinbaren Sie eine Entscheidung, die mit Grenzen übergeben wird.

**Wie sprechen Finanzen und Technik miteinander, und wann?**

Fragen Sie beide Gruppen. Typische Antworten: zur Budgetzeit oder wenn etwas schiefgeht. Besprechen Sie einen regelmäßigen gemeinsamen Review. Die Seite der FinOps Foundation nennt die Zusammenarbeit von Ingenieuren, Finanzen und Fachbereichen als Herz der Praktik. Vereinbaren Sie, wer den ersten organisiert.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationaler Bibliotheksdienst hat seinen digitalen Katalog, die Suche und die öffentlichen Archive über drei Jahre zu einem Cloud-Anbieter verlegt. Die IT-Leitung wird von der Finanzabteilung gefragt, warum sich die monatliche Cloud-Rechnung seit dem Umzug verdreifacht hat und warum sie schwer zu erklären ist. Ein Team von zehn betreibt die Plattform, und jedes von fünf Projektteams hat sein eigenes Cloud-Konto.

Die IT-Leitung und ein Finanzanalyst beginnen damit, nach Kostendaten gruppiert nach Service zu fragen. Die meisten Ressourcen haben keine Tags, sodass sich nur ein Drittel der Kosten zuordnen lässt. Sie vereinbaren mit den fünf Teams eine Tagging-Regel und lassen wöchentlich einen Bericht laufen, der die Ausgaben ohne Tags je Konto auflistet. In sechs Wochen sinkt der Anteil ohne Tags auf unter ein Zehntel. Der Analyst richtet dann für jedes Team einen monatlichen Showback-Bericht ein, der die Kosten nach Service und die Kosten je tausend Suchanfragen für den Suchservice zeigt. Im ersten Review entdecken die Ingenieure eine Entwicklungsumgebung, die ein Jahr lang in Produktionsgröße lief, und einen Datenverarbeitungsjob, der ein Archiv öfter durchsucht als nötig. Beides wird korrigiert. Ein monatliches Treffen mit der Leitung der Sammlungen der Bibliothek lässt die Ingenieure erklären, was die Kosten treibt, etwa das große Volumen gescannter Bilder, und lässt die Leitung entscheiden, welche Sammlungen zuerst digitalisiert werden.

Nach zwei Quartalen sinken die Stückkosten und die Rechnung ist vorhersagbar. Nicht alles läuft glatt. Eine Kostensenkung am Suchindex verringert das Tempo zu Spitzenzeiten, und Nutzende beschweren sich, bis das Team die Kapazität wiederherstellt. Die Finanzabteilung will außerdem eine einjährige Verpflichtung beim Anbieter eingehen, während die Ingenieure nicht sicher sind, dass die Nutzung stabil bleibt, da eine Migration geplant ist. Sie einigen sich, sich nur für den stabilen Teil der Nutzung zu verpflichten und die Verpflichtung zu überprüfen, wenn der Migrationsplan klar ist.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams treffen die meisten Kostenentscheidungen durch Entwurf und Konfiguration. Versehen Sie, was Sie erzeugen, mit Tags, beobachten Sie Ihre Kosten und fragen Sie, was ein Feature im Betrieb kosten wird. Erklären Sie Finanzen und Fachbereich die Kostentreiber in einfachen Worten.

### Service- und Betriebsteams

Betriebsteams sehen Auslastung und Verschwendung. Teilen Sie Daten zu leerlaufenden und überdimensionierten Ressourcen, helfen Sie, sinnvolle Warnungen zu setzen, und stellen Sie sicher, dass Kosteneinsparungen die Widerstandsfähigkeit nicht untergraben. Halten Sie die Verbindung zwischen Kosten, Kapazität und Service-Levels sichtbar.

### Führung und Governance

Führungskräfte und Finanzen setzen Budgets, Regeln und Verantwortlichkeit. Verlangen Sie Stückkosten und Verläufe, unterstützen Sie ein Showback- oder Chargeback-Modell, dem Menschen vertrauen, und treffen Sie Entscheidungen zu Verpflichtungen gemeinsam mit Ingenieuren. Vermeiden Sie Kürzungen, die die Verlässlichkeit schädigen, ohne den Zielkonflikt zu besprechen.

### Kunden und Nutzer

Kunden und Nutzende zahlen direkt oder indirekt für Services. Fragen Sie Anbieter, was den Preis der Services treibt, die Sie nutzen, und sagen Sie ihnen, welcher Wert am meisten zählt. Wird Ihnen weiterverrechnet, erwarten Sie klare Erklärungen und eine Möglichkeit, die Zahlen zu hinterfragen.

## Typische Fehlerbilder

- **Kosten ohne Tags.** Niemand verantwortet die Rechnung. Verlangen Sie stattdessen Tags und berichten Sie über die Lücke.
- **Finanzen und Technik in getrennten Räumen.** Jede Seite handelt auf Teilinformation. Halten Sie stattdessen einen regelmäßigen gemeinsamen Review mit einer Fachverantwortlichen.
- **Chargeback, bevor den Daten getraut wird.** Streit verschlingt Zeit. Beginnen Sie stattdessen mit Showback und verbessern Sie die Daten.
- **Summen ohne Stückkosten.** Wachstum sieht aus wie Verschwendung oder umgekehrt. Verfolgen Sie stattdessen Kosten je Transaktion, Nutzer oder Service.
- **Kosten auf Kosten der Widerstandsfähigkeit senken.** Einsparungen verursachen Ausfälle. Nennen Sie stattdessen den Zielkonflikt und beziehen Sie die Service-Verantwortliche ein.
- **Überverpflichtung.** Langfristige Käufe binden Ausgaben, die die Nutzung nicht tragen kann. Verpflichten Sie sich stattdessen nur für stabile Nutzung und überprüfen Sie.
- **Nur zentrale Kontrolle.** Teams warten auf Genehmigung und umgehen den Prozess. Geben Sie stattdessen Teams Befugnis innerhalb von Grenzen, mit Sichtbarkeit.
- **Umfragezahlen als Tatsache zitieren.** Zahlen aus Herstellerumfragen treiben Entscheidungen. Prüfen Sie stattdessen Originalquellen und nutzen Sie Ihre eigenen Daten.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Sichtbarkeit und Zuordnung | Kosten werden nur als Gesamtrechnung gesehen | Einige Teams sehen ihre Kosten | Die meisten Ausgaben haben Tags und sind Services und Verantwortlichen zugeordnet | Stückkosten und Verläufe werden gegen Nachfrage und Qualität geprüft | Kostendaten werden in einem gemeinsamen Format über Teams, Lieferanten und Finanzen geteilt |
| Governance und Budgets | Budgets sind jährlich und fest | Einige Budgets und Warnungen existieren | Budgets, Warnungen und Genehmigungsgrenzen sind Standard | Abweichungen werden untersucht und Regeln angepasst | Budgetregeln sind in der Organisation und mit Partnern abgestimmt |
| Zusammenarbeit | Finanzen und Technik treffen sich zur Budgetzeit | Einige gemeinsame Gespräche | Ein regelmäßiger gemeinsamer Review mit einer Fachverantwortlichen | Entscheidungen und Ergebnisse werden verfolgt und verbessert | Finanzen, Technik, Fachbereich und Lieferanten teilen Ziele und Daten |
| Optimierung | Einsparungen kommen aus Krisen | Etwas Verschwendung wird gefunden | Verschwendung, Dimensionierung und Verpflichtungen werden regelmäßig geprüft | Einsparungen werden gegen Risiken für die Verlässlichkeit gemessen | Optimierung ist Routine, geteilt und mit Servicezielen ausbalanciert |

## Checkliste

- [ ] Wir können die Monatskosten jedes wichtigen Services und seine verantwortliche Person nennen.
- [ ] Cloud-Ressourcen tragen Tags für Verantwortliche, Service und Umgebung, und Ausgaben ohne Tags werden wöchentlich oder monatlich berichtet.
- [ ] Teams erhalten einen regelmäßigen Kostenbericht für die Services, die sie verantworten (Showback).
- [ ] Wir verfolgen für jeden wichtigen Service mindestens eine Stückkostengröße.
- [ ] Budgets und Warnungen existieren mit Verantwortlichen, und Warnungen lösen weit vor den Grenzen aus.
- [ ] Finanzen, Technik und eine Fachverantwortliche treffen sich regelmäßig zu Kosten und Wert.
- [ ] Wir prüfen ungenutzte und überdimensionierte Ressourcen und Abonnements mindestens vierteljährlich.
- [ ] Kostensenkungen werden auf Auswirkungen auf Verlässlichkeit und Leistung geprüft.
- [ ] Kaufverpflichtungen beruhen auf stabiler Nutzung und werden überprüft.
- [ ] Wir haben Zahlen aus Herstellerumfragen an Originalquellen geprüft, bevor wir sie nutzen.

## KI-Prompts

**Zweck: einen Kostenbericht auf Ausgaben ohne Verantwortliche und ungewöhnliche Ausgaben analysieren.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Zweck: eine Stückkostengröße für einen Service definieren.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen gemeinsamen Review von Technik und Finanzen vorbereiten.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: einen Kostensenkungsvorschlag gegen die Verlässlichkeit abwägen.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): nutzen Sie ihn, um IT- und Cloud-Ausgaben zu prognostizieren und Abweichungen zu erklären.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): nutzen Sie ihn, um die künftige Last zu schätzen, damit Kostenprognosen die Nachfrage widerspiegeln.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um den Ressourcenbedarf mit Kosten und Service-Levels zu verknüpfen.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Anbieterverträge und Verpflichtungen zu steuern.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): nutzen Sie ihn, um Services und Vorhaben nach Wert und Kosten auszuwählen und zu finanzieren.

## Wichtige Quellen

- **What is FinOps?** (FinOps Foundation, finops.org): die eigene Definition der Foundation und die Beschreibung der Zusammenarbeit von Technik, Finanzen und Fachbereichen.
- **Cloud computing** (Wikipedia): Hintergrund zu Preismodellen, Kostenkontrolle und geteilter Verantwortung, mit einem Hinweis auf unbelegten Text.
- **Total cost of ownership** (Wikipedia): Hintergrund dazu, alle Kosten eines Assets oder Services über sein Leben zu zählen.
- **Software as a service** (Wikipedia): Hintergrund zur Abonnement-Preisgestaltung.

## Referenzen

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
