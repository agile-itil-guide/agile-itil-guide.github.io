# Konfigurationsmanagement

**Das Konfigurationsmanagement hält ein genaues, nutzbares Bild der Teile eines Services und ihrer Beziehungen bereit, und seine moderne Form ist eine aus Code und Discovery aufgebaute Aufzeichnung, der man vertraut, weil das System sie selbst aktuell hält.**

## Warum das wichtig ist

Wenn etwas kaputtgeht, sind die ersten Fragen immer dieselben. Was ist diese Komponente? Womit ist sie verbunden? Was hat sich geändert? Wer verantwortet sie? Wenn die Antworten eine Stunde dauern, zieht sich ein Incident hin, der in Minuten hätte behoben werden können. Wenn eine Änderung geplant wird, entscheiden dieselben Fragen darüber, ob Sie das Risiko verstehen. Ein gutes Bild des Services und seiner Teile gehört zu den nützlichsten Dingen, die ein Betriebsteam haben kann.

Es gehört auch zu den schwierigsten, es wahr zu halten. Dokumente der Infrastruktur, einmal gezeichnet, sind nach Wochen veraltet. Datenbanken von Komponenten, von Hand gepflegt, sind auf Weisen falsch, die niemand sieht. Agile und Cloud-Arbeitsweisen machen das in einer Hinsicht schlimmer, mit vielen kleinen, sich schnell ändernden Teilen, und in anderer besser, weil sich Konfiguration als Code schreiben, in der Versionsverwaltung speichern und automatisch anwenden lässt.

Der Artikel der englischen Wikipedia zum Konfigurationsmanagement beschreibt es als Managementprozess zur Herstellung und Wahrung der Konsistenz zwischen den Eigenschaften eines Produkts und seinen Anforderungen, seinem Entwurf und seinen Betriebsinformationen über sein Leben, mit Wurzeln im US-Verteidigungsministerium der 1950er Jahre. Der Artikel zu Konfigurationsmanagement-Datenbanken beschreibt den ITIL-Begriff für den Speicher der Konfigurationselemente und ihrer Beziehungen. Der Artikel zu Infrastructure as Code beschreibt die Steuerung von Ressourcen über maschinenlesbare Definitionsdateien. Zusammen geben sie die traditionelle und die moderne Sicht, und dieses Thema verbindet sie.

## Kernkonzepte

### Konfigurationsmanagement im Allgemeinen

Laut Wikipedia wird Konfigurationsmanagement (KM) in Militärsystemen, im IT-Service-Management unter ITIL und im Bauingenieurwesen genutzt. Seine Geschichte beginnt im US-Verteidigungsministerium der 1950er Jahre als technische Disziplin für Hardware, wobei Militärstandards in den späten 1960er und 1970er Jahren sie zu einer eigenen Disziplin machten. Der Artikel nennt mehrere Standards, darunter ANSI/EIA-649, ISO 10007 (Ausgabe 2017) und IEEE 828-2012. Die Kerndisziplinen, die er aus Militärhandbüchern und dem EIA-Standard auflistet, sind:

| Disziplin | Was sie tut |
|---|---|
| **Planung und Management** | Ein Plan für Menschen, Schulung, Namenskonventionen, Audits und Lieferantenanforderungen |
| **Konfigurationsidentifikation** | Baselines festlegen und pflegen, die Architektur und Komponenten definieren; die verfolgten Produkte sind **Konfigurationselemente (Configuration Items, CIs)** |
| **Konfigurationssteuerung** | Änderungsanträge bewerten und genehmigen oder ablehnen |
| **Konfigurationsstatusbuchführung** | CI-Beschreibungen und Abweichungen von der Baseline festhalten und berichten |
| **Verifikation und Audit** | Unabhängige Prüfungen, dass das System zu seiner Dokumentation und seinen Anforderungen passt |

Eine **Baseline** ist ein vereinbarter Bezugspunkt; ist eine Eigenschaft einmal als Baseline festgelegt, durchlaufen Änderungen formale Steuerung, werden bewertet, genehmigt und dann neu als Baseline gesetzt. Der Artikel unterscheidet das Konfigurationsmanagement vom Asset-Management, das sich auf Finanzbuchhaltung und den Wert von IT-Assets konzentriert (siehe Thema 4.1 — IT-Asset-Management).

### Software-Konfigurationsmanagement

Der Artikel beschreibt das Software-Konfigurationsmanagement als Identifizieren von Softwareeigenschaften zu verschiedenen Zeitpunkten und Steuern von Änderungen, um Integrität und Rückverfolgbarkeit zu wahren, mit denselben vier Verfahren Identifikation, Steuerung, Statusbuchführung und Audits. Versionsverwaltungssysteme, Build-Werkzeuge und Release-Aufzeichnungen sind moderne Ausprägungen.

### Die Konfigurationsmanagement-Datenbank

Wikipedia beschreibt eine **Konfigurationsmanagement-Datenbank (CMDB)** als ITIL-Begriff für eine Datenbank, die Information über die Hardware- und Software-Assets einer Organisation, die CIs, und die Beziehungen zwischen ihnen speichert. Sie "stellt die autorisierte Konfiguration der bedeutenden Komponenten der IT-Umgebung dar". Wichtige Punkte aus dem Artikel:

- **CIs haben Attribute** wie Kennung, Namen, Beschreibungen, Verantwortung und Bedeutung, die in die Hunderte gehen können.
- **Beziehungen** verbinden üblicherweise ein Quell-CI mit einem Ziel-CI. Fortgeschrittenere Beziehungen fügen einen Beschreiber hinzu, etwa dass eine Datenbank Bestandteil einer Anwendung ist.
- **Föderation:** Umsetzungen föderieren Daten oft aus Quellen wie dem Asset-Management, sodass jede Quelle die Kontrolle über ihre Daten behält; der Artikel stellt das dem Kopieren von Daten in die CMDB gegenüber.
- **Verwendungen:** Auswirkungsanalyse, Ursachenanalyse, Change Management, Incident Management, Inventar und Builds.
- **CI-Typen:** Hardware, Software, Kommunikation und Netzwerke, Standort, Dokumentation und Menschen; reife Organisationen ergänzen Geschäftstypen wie Produkte und Lieferanten.
- **Herausforderungen:** Relevanz (Daten über den Lebenszyklus jedes CIs sammeln), Pflege (hohe Datenqualität halten, wofür mehrere Spezialrollen nötig sind) und Benutzbarkeit (CMDBs sind oft schlichte Datenbanken ohne Visualisierung, sodass eine weitere Anwendungsschicht nötig sein kann).

Der Artikel nennt automatische Erkennung von CIs und Änderungsverfolgung als Schlüsselfaktoren für den Erfolg. Er nennt kein Gründungsdatum, keine bestimmte ITIL-Version und keine Verbreitungsdaten und ist als belegbedürftig markiert. Er sagt auch, ITIL habe den Prozess in ITIL Version 3 in Service Asset and Configuration Management umbenannt (das stammt aus dem Artikel zum Konfigurationsmanagement).

### Infrastructure as Code

Der Artikel zu Infrastructure as Code beschreibt die Praktik, Rechenzentrumsressourcen über maschinenlesbare Definitionsdateien zu steuern und bereitzustellen, statt durch manuelle Einrichtung oder interaktive Werkzeuge, mit Definitionen in der Versionsverwaltung. Er unterscheidet:

- **Deklarative** Ansätze, die den gewünschten Endzustand beschreiben und das System die Schritte ermitteln lassen, und **imperative** Ansätze, die Befehle der Reihe nach vorgeben. Der Artikel sagt, IaC nutze häufiger deklarative Definitionen.
- **Push**-Methoden, bei denen ein steuerndes System Anweisungen an Server sendet, und **Pull**-Methoden, bei denen Server ihre eigenen Anweisungen abrufen.

Er nennt viele Werkzeuge von CFEngine (1993) bis Terraform, Ansible, Puppet, Chef, Pulumi und OpenTofu und bringt die Praktik mit DevOps in Verbindung, indem sie Entwickler in die Konfiguration einbezieht und den Betrieb früher einbindet. Seine Behauptungen zum Nutzen bei Kosten, Tempo und weniger menschlichen Fehlern sind als belegbedürftig markiert. Er zitiert einen Bericht von Unit 42 aus dem Jahr 2020, der etwa 200.000 potenzielle Schwachstellen in IaC-Vorlagen fand, eine Erinnerung daran, dass auch Code Fehler tragen kann. Der Artikel erwähnt weder Konfigurationsdrift noch Idempotenz.

### Deklarierte und entdeckte Konfiguration

Eine nützliche Sicht auf modernes Konfigurationsmanagement ist, dass es zwei Wahrheitsquellen gibt und der Wert im Vergleich beider liegt:

| Quelle | Was sie sagt | Stärke | Schwäche |
|---|---|---|---|
| **Deklariert** (Code, Definitionen in der Versionsverwaltung) | Was das System sein soll | Prüfbar, versioniert, wiederholbar | Muss nicht mit dem Laufenden übereinstimmen |
| **Entdeckt** (Scans, Cloud-APIs, Agenten) | Was jetzt existiert | Spiegelt die Wirklichkeit | Sagt nicht, was beabsichtigt ist oder warum |

Eine von beiden gespeiste CMDB kann **Drift** zeigen, den Unterschied zwischen beabsichtigtem und tatsächlichem Zustand. Die für diesen Leitfaden gelesenen Quellen nutzen das Wort nicht, aber es benennt das Problem, das die KM-Disziplinen Statusbuchführung und Audit auffangen sollen.

### Konfigurationsmanagement und Änderung

Konfigurationssteuerung und Change Enablement sind enge Partner (siehe Thema 3.4 — Change Enablement). Die KM-Disziplinen sagen, dass Änderungen an baselinierten Elementen bewertet und genehmigt werden. In einem pipelinebasierten Aufbau wird eine Änderung am Code, der die Infrastruktur definiert, wie anderer Code geprüft und getestet, und die Aufzeichnung der Pipeline zeigt, wer was wann geändert hat. Die CMDB oder ihr Äquivalent spiegelt dann das Ergebnis.

### Verwendungen im Service-Management

Die in den Konfigurationsdaten festgehaltenen Beziehungen beantworten Fragen in den anderen Praktiken:

- **Incidents:** Was hängt von dieser ausfallenden Komponente ab, und wer verantwortet sie (siehe Thema 3.2 — Incident Management)?
- **Probleme:** Welche Komponenten waren an wiederholten Incidents beteiligt (siehe Thema 3.3 — Problem Management)?
- **Änderungen:** Wie groß ist der Wirkungsradius dieser Änderung?
- **Kontinuität:** Was muss wiederhergestellt werden, und in welcher Reihenfolge (siehe Thema 3.12 — Service-Continuity-Management)?
- **Sicherheit:** Was ist exponiert, und was hat sich geändert?

### Grenzen der Quellen

Der Artikel zum Konfigurationsmanagement ist als möglicherweise überarbeitungsbedürftig markiert und sagt wenig zur praktischen Umsetzung. Der CMDB-Artikel hat keinen Abschnitt zur Kritik und wenige Belege. Die Erfahrung im Feld ist, dass CMDBs oft scheitern, weil sie zu viel, zu genau und zu lange halten wollen. Behandeln Sie das als praktische Erfahrung, die dieser Leitfaden anbietet, nicht als Befund der Quellen.

## Bewährte Praktiken

1. **Beginnen Sie bei den Fragen, die Sie beantworten müssen.** Listen Sie die Fragen auf, die Incident-Bearbeitende, Änderungsprüfende und Kontinuitätsplanende stellen, etwa "Was hängt davon ab?" und "Wer verantwortet es?" Halten Sie nur fest, was sie beantwortet.
2. **Definieren Sie einen kleinen Satz von Konfigurationselement-Typen.** Beginnen Sie mit Services, Anwendungen, Hosts oder Containern, Datenbanken und wichtigen externen Abhängigkeiten. Ergänzen Sie Typen, wenn eine Frage sie verlangt.
3. **Erfassen Sie Beziehungen, nicht nur Elemente.** Halten Sie fest, welche Elemente von welchen abhängen und welchen Service sie stützen. Beziehungen machen die Daten für die Auswirkungsanalyse nützlich.
4. **Benennen Sie für jedes Element eine verantwortliche Person.** Ein Element ohne Verantwortliche ist ein Risiko. Machen Sie die Verantwortung zum Teil dessen, wie Elemente angelegt werden.
5. **Halten Sie die beabsichtigte Konfiguration in der Versionsverwaltung.** Drücken Sie Infrastruktur und Konfiguration als Code aus, prüfen Sie sie wie anderen Code und lassen Sie die Pipeline sie anwenden. Das Repository ist dann eine Aufzeichnung von Absicht und Historie.
6. **Nutzen Sie Discovery, um die Wirklichkeit zu finden.** Scannen Sie Netzwerke und Cloud-Konten, um zu sehen, was existiert, und vergleichen Sie es mit der deklarierten Konfiguration. Untersuchen Sie Unterschiede (Drift), statt sie zu ignorieren.
7. **Föderieren Sie, statt zu kopieren, wo Sie können.** Lassen Sie jede Datenquelle (Asset-Register, Cloud-Konten, Deployment-Werkzeuge) ihre Fakten verantworten und verlinken Sie aus den Konfigurationsdaten darauf, wie es der CMDB-Artikel beschreibt.
8. **Automatisieren Sie Aktualisierungen.** Speisen Sie die Konfigurationsdaten aus der Pipeline und aus Discovery, damit sie sich ändern, wenn sich das System ändert. Manuelle Aktualisierungen bleiben zurück.
9. **Legen Sie fest, was zählt, als Baseline.** Halten Sie für kritische Services die genehmigte Konfiguration fest und wenden Sie auf Abweichungen formale Änderungssteuerung an. Für den Rest genügt leichtere Steuerung.
10. **Auditieren Sie regelmäßig.** Vergleichen Sie jedes Quartal die Daten für eine Stichprobe von Elementen mit der Wirklichkeit und beheben Sie den Prozess hinter jedem Unterschied. Das ist die Disziplin Verifikation und Audit in der Praxis.
11. **Machen Sie die Daten leicht nutzbar.** Bieten Sie Visualisierung und Suche für Bearbeitende und Planende, denn Daten, die sich nicht schnell lesen lassen, werden nicht genutzt.
12. **Behalten Sie die Sicherheit im Blick.** Behandeln Sie Konfigurationscode als sensibel, scannen Sie Vorlagen auf Schwächen und steuern Sie, wer die Baseline ändern darf. Die Zahl von Unit 42 im Artikel zu Infrastructure as Code erinnert an das Risiko.

## Fragen zur Diskussion im Team

**Wenn ein Incident auftritt, wie lange brauchen wir, um herauszufinden, was von der ausfallenden Komponente abhängt?**

Sehen Sie sich den letzten Incident und die auf diese Frage verwendete Zeit an. Fragen Sie, woher die Antwort kam: aus einem Diagramm, von einer Person, aus einer Suche. Die Moderation kann fragen, was am meisten Zeit gespart hätte. Oft ist es eine Liste von Abhängigkeiten und Verantwortlichen für die wichtigsten Services. Vereinbaren Sie, eine für einen Service zu erstellen.

**Wo ist unsere Infrastruktur definiert, und stimmt das mit dem überein, was läuft?**

Fragen Sie, ob die wichtigsten Umgebungen aus Code gebaut werden und wie oft jemand sie von Hand ändert. Suchen Sie nach Unterschieden. Wenn Sie es nicht wissen, planen Sie einen Vergleich für eine Umgebung. Besprechen Sie, wie sich manuelle Änderungen verhindern oder schnell erkennen lassen.

**Welche Elemente in unseren Konfigurationsaufzeichnungen haben keine Verantwortlichen oder wurden in letzter Zeit nicht bestätigt?**

Nehmen Sie eine Stichprobe und zählen Sie. Fragen Sie, warum sie in diesem Zustand sind: kein Prozess für Verantwortliche, keine Erinnerung, keine Folge. Besprechen Sie einen leichten Mechanismus, etwa eine jährliche Bestätigung oder ein bei der Anlage verlangtes Verantwortlichen-Tag. Wählen Sie einen.

**Welche Daten halten wir, die niemand nutzt?**

Listen Sie die Felder und Aufzeichnungsarten auf und fragen Sie, wer sie im letzten Quartal genutzt hat. Der CMDB-Artikel nennt die Pflege als Kernherausforderung, und ungenutzte Daten sind Kosten ohne Nutzen. Entfernen Sie, was niemand nutzt, oder hören Sie auf, es zu pflegen.

**Was müssten wir sehen, um eine Änderung an einem kritischen Service mit Zuversicht zu genehmigen?**

Fragen Sie die Prüfenden. Typische Antworten: was die Änderung berührt, was davon abhängt, was sie beim letzten Mal bewirkt hat. Fragen Sie, was davon die Konfigurationsdaten liefern können. Wählen Sie ein fehlendes Stück zum Ergänzen.

**Wer darf die Baseline unserer kritischen Services ändern, und woher wissen wir, wenn es geschieht?**

Fragen Sie nach der Liste und nach dem Nachweis von Änderungen. Besprechen Sie, ob Änderungen außerhalb der Pipeline erkannt werden. Vereinbaren Sie, wie Drift gefunden wird und wer handelt.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Steuerbehörde betreibt 120 Anwendungen und eine Mischung aus Servern vor Ort und Cloud-Services. Ein Team von sechs Betriebsingenieuren pflegt eine CMDB, die vor drei Jahren aus einer Tabelle geladen wurde. Bei einem schweren Incident am Einreichungsportal stellen die Ingenieure fest, dass die CMDB einen Datenbankserver aufführt, der ein Jahr zuvor ausgemustert wurde, und den Load Balancer auslässt, der tatsächlich ausfiel. Der Incident dauert drei Stunden länger in der Lösung, weil es so lange dauert herauszufinden, wovon das Portal abhängt.

Die Leitung des Betriebs und ein Ingenieur prüfen, welche Fragen die Bearbeitenden stellen. Sie begrenzen den Umfang der CMDB auf Services, Anwendungen, die wichtigsten Infrastrukturkomponenten dahinter und wichtige externe Abhängigkeiten und streichen Typen mit geringem Wert. Die Infrastruktur für das Einreichungsportal wird in Code in der Versionsverwaltung verlegt, und die Pipeline schreibt für jede bereitgestellte Komponente einen Eintrag in die CMDB. Ein Discovery-Scan von Netzwerk und Cloud-Konten läuft nachts, und ein Bericht listet Unterschiede zwischen deklarierten und entdeckten Daten auf. Jedes Element hat ein Feld für Verantwortliche, das der Bericht ebenfalls prüft. Aus den Daten wird eine einfache Abhängigkeitsansicht für das Einreichungsportal gebaut.

Ein Quartal später ist die Abhängigkeitsansicht des Portals genau genug, dass das Team des nächsten Incidents sie in den ersten zehn Minuten nutzt. Der nächtliche Unterschiedsbericht findet 14 nicht verwaltete Server, von denen die meisten ausgemustert sind oder von Verantwortlichen beansprucht werden. Probleme bleiben. Services außerhalb des Einreichungsportals stützen sich weiter auf die alten Daten, und ein Team macht weiter Handänderungen an einem Datenbankserver, die die Pipeline dann überschreibt, was einen kurzen Ausfall verursacht. Die Leitung des Betriebs weitet den Ansatz auf die nächsten drei Services aus, ergänzt eine Regel, dass Produktionsänderungen durch die Pipeline gehen, und bittet den Discovery-Bericht, manuelle Änderungen zu markieren.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams definieren Konfiguration durch Code. Legen Sie Infrastruktur und Einstellungen in die Versionsverwaltung, prüfen Sie sie und lassen Sie die Pipeline sie anwenden. Versehen Sie Ressourcen mit Tags für Verantwortliche und Service und beschreiben Sie Abhängigkeiten im Repository oder im Service-Eintrag.

### Service- und Betriebsteams

Betriebsteams nutzen und pflegen die Konfigurationsdaten. Halten Sie den Umfang klein, vergleichen Sie deklarierte und entdeckte Konfiguration und jagen Sie Drift. Speisen Sie, was Sie aus Incidents lernen, in die Typen und Beziehungen zurück, die Sie festhalten.

### Führung und Governance

Führungskräfte entscheiden, wie viel Aufwand Konfigurationsdaten verdienen. Fragen Sie, welche Entscheidungen sie stützen, etwa Auswirkungsanalyse und Kontinuitätsplanung, und urteilen Sie nach der Nutzung. Vermeiden Sie es, eine riesige Datenbank um ihrer selbst willen zu finanzieren. Unterstützen Sie die Pipeline-Kontrollen, die Aufzeichnungen wahr halten.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn Incidents schneller gelöst werden und Änderungen weniger kaputtmachen, was gute Konfigurationsdaten unterstützt. Sie sehen die Daten selten. Fragen Sie Anbieter, woher sie wissen, was eine Änderung betrifft, und wie sie die Ursache eines Ausfalls finden.

## Typische Fehlerbilder

- **Versuchen, alles zu erfassen.** Die Daten sind zu groß, um wahr gehalten zu werden. Beginnen Sie stattdessen bei den Fragen und den kritischen Services.
- **Manuelle Pflege.** Aufzeichnungen bleiben zurück. Speisen Sie Daten stattdessen aus der Pipeline und aus Discovery.
- **Keine Beziehungen.** Elemente sind aufgelistet, aber nicht verbunden. Erfassen Sie stattdessen Abhängigkeiten und den Service, den jedes Element stützt.
- **Keine Verantwortlichen.** Niemand bestätigt oder korrigiert Aufzeichnungen. Verlangen Sie stattdessen Verantwortliche und prüfen Sie regelmäßig.
- **Handänderungen außerhalb der Pipeline.** Wirklichkeit und Absicht driften auseinander. Leiten Sie Änderungen stattdessen durch die Pipeline und erkennen Sie Drift.
- **Unlesbare Daten.** Bearbeitende können die Datenbank nicht nutzen. Bieten Sie stattdessen Suche und Visualisierung.
- **Kopieren statt Föderieren.** Doppelte Daten veralten. Verlinken Sie stattdessen auf die Quelle, die die Fakten verantwortet.
- **Konfigurationscode als harmlos behandelt.** Vorlagen tragen Schwachstellen. Scannen und prüfen Sie sie stattdessen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Umfang und Beziehungen | Komponenten sind informell bekannt | Einige Services haben Komponentenlisten | Wichtige Services haben Elemente, Verantwortliche und Abhängigkeiten festgehalten | Abdeckung und Genauigkeit werden gemessen und Lücken geschlossen | Konfigurationsdaten überspannen Teams, Clouds und Lieferanten |
| Deklarierte Konfiguration | Systeme werden von Hand konfiguriert | Einige Umgebungen nutzen Code | Infrastruktur und Konfiguration wichtiger Services sind Code in der Versionsverwaltung | Änderungshistorie und Drift werden verfolgt | Konfigurationscode wird über Teams hinweg geteilt und wiederverwendet |
| Discovery und Verifikation | Die Wirklichkeit wird angenommen | Gelegentliche Scans laufen | Regelmäßige Discovery wird mit deklarierten Daten verglichen | Unterschiede und ihre Ursachen werden gemessen und verringert | Discovery und Verifikation sind in der Organisation automatisiert |
| Nutzung der Daten | Daten werden selten befragt | Bei einigen Incidents genutzt | Routinemäßig für Incidents, Änderungen und Kontinuitätsplanung genutzt | Nutzung und Nutzen werden gemessen und die Daten verbessert | Daten stützen Entscheidungen in der Organisation und mit Partnern |

## Checkliste

- [ ] Wir haben die Fragen aufgelistet, die unsere Bearbeitenden und Prüfenden mit Konfigurationsdaten beantworten müssen.
- [ ] Wir halten einen kleinen Satz von Elementtypen mit Verantwortlichen und Beziehungen fest.
- [ ] Infrastruktur und Konfiguration wichtiger Services liegen in der Versionsverwaltung.
- [ ] Produktionsänderungen an diesen Services gehen durch die Pipeline.
- [ ] Discovery-Ergebnisse werden nach Plan mit der deklarierten Konfiguration verglichen.
- [ ] Unterschiede (Drift) werden untersucht und behoben.
- [ ] Aufzeichnungen werden, wo möglich, automatisch aus der Pipeline und Discovery gespeist.
- [ ] Eine Stichprobe der Aufzeichnungen wird jedes Quartal gegen die Wirklichkeit geprüft.
- [ ] Die Daten lassen sich von Bearbeitenden leicht durchsuchen und visualisieren.
- [ ] Konfigurationscode wird geprüft und auf Schwächen gescannt.

## KI-Prompts

**Zweck: entscheiden, was festzuhalten ist, indem die zu beantwortenden Fragen aufgelistet werden.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Drift zwischen deklarierter und entdeckter Konfiguration zusammenfassen.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Zweck: eine Abhängigkeitsansicht für einen Service aufbauen.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein vierteljährliches Audit der Konfigurationsaufzeichnungen planen.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): nutzen Sie ihn, um zu planen, was festzuhalten ist, wie es wahr gehalten und wie es genutzt wird.
- [change-request](../../../../skills/change-request/SKILL.md): nutzen Sie ihn, um Änderungsaufzeichnungen zu schreiben, die auf die betroffenen Elemente verweisen.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um Konfigurationswissen in Schritte zu verwandeln, denen Bearbeitende folgen können.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): nutzen Sie ihn, um Services, Anwendungen und Infrastruktur in ein Architekturbild einzuordnen.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): nutzen Sie ihn, um Konfiguration und Entwurf im Lauf der Zeit sicher veränderbar zu halten.

## Wichtige Quellen

- **Configuration management** (Wikipedia): die Geschichte, Kerndisziplinen, Baselines und Standards des Konfigurationsmanagements.
- **Configuration management database** (Wikipedia): die Definition, Inhalte, Verwendungen und Herausforderungen einer CMDB.
- **Infrastructure as code** (Wikipedia): Ressourcen über maschinenlesbare Definitionen steuern, mit einer Werkzeugliste und Hinweisen zu Nutzen und Risiken.
- **ITIL** (Wikipedia): das Framework, in dem CMDB und Konfigurationsmanagement vorkommen.

## Referenzen

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
