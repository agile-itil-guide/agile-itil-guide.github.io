# Informationssicherheitsmanagement

**Das Informationssicherheitsmanagement schützt die Vertraulichkeit, Integrität und Verfügbarkeit von Informationen durch risikobasierte Kontrollen, und in einer agilen Organisation wirken die Kontrollen am besten, wenn sie in die Delivery-Pipeline und die täglichen Gewohnheiten der Teams eingebaut sind, statt als Schranke am Ende hinzugefügt zu werden.**

## Warum das wichtig ist

Jeder Service hält Information, die jemandem wichtig ist: Kundendaten, Zahlungsaufzeichnungen, Gesundheitsdaten, interne Pläne. Ein Sicherheitsversagen schadet den Menschen, die die Information beschreibt, beschädigt den Ruf der Organisation und kann rechtliche und finanzielle Strafen nach sich ziehen. Service-Management-Teams sind oft die, die das Versagen zuerst als Incident sehen, und die, die danach den Normalbetrieb wiederherstellen müssen.

Sicherheit und Continuous Delivery werden oft als Gegensätze dargestellt: Sicherheit sagt, langsamer, Delivery sagt, schneller. Diese Sicht ist nicht hilfreich. Sicherheit, die erst am Ende eines Releases ankommt, erzeugt späte Überraschungen und überhastete Ausnahmen. Sicherheit, die in die Arbeit eingebaut ist, mit Prüfungen, die automatisch laufen, und früh besprochenen Risiken, schützt den Service, ohne ihn auszubremsen. Dasselbe gilt für das Service-Management: Die Praktiken, die Änderung sicher machen, machen auch Sicherheitsänderungen sicher.

Dieses Thema nutzt den [Wikipedia-Artikel zur Informationssicherheit](https://en.wikipedia.org/wiki/Information_security) und den [Artikel zu ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) als Hauptquellen. Beide sind allgemein. Der erste ist ein langer Artikel, und dieser Leitfaden las nur die ersten 100.000 seiner etwa 243.000 Zeichen. Dieses Thema gibt keine Rechtsberatung; Gesetze, Vorschriften und vertragliche Pflichten unterscheiden sich nach Land und Branche, und die richtige Quelle ist der Text der Regel, die für Sie gilt.

## Kernkonzepte

### Was Informationssicherheit ist

Wikipedia definiert Informationssicherheit als den Schutz von Information durch Minderung von Informationsrisiken, mit dem Ziel, unbefugten Zugriff, Nutzung, Offenlegung, Unterbrechung, Löschung, Verfälschung, Veränderung oder Entwertung von Information zu verhindern oder zu verringern und die Auswirkung von Incidents zu verringern. Sie gilt für elektronische, physische und immaterielle Information und ist Teil des Informationsrisikomanagements.

### Das CIA-Dreieck

Die Kernziele sind **Vertraulichkeit (Confidentiality)**, **Integrität (Integrity)** und **Verfügbarkeit (Availability)**, abgewogen gegen die Effizienz der Richtlinien und die Produktivität der Organisation. Der Artikel beschreibt sie so:

| Ziel | Bedeutung | Beispiel in einem Service |
|---|---|---|
| **Vertraulichkeit** | Information ist vor unbefugter Offenlegung geschützt | Nur befugtes Personal kann Patientenakten sehen |
| **Integrität** | Information ist richtig und vollständig und kann nicht unbefugt oder unbemerkt verändert werden | Ein Zahlungsbetrag kann nicht spurlos geändert werden |
| **Verfügbarkeit** | Information ist zugänglich, wenn sie gebraucht wird | Der Service bleibt oben und widersteht Denial-of-Service-Angriffen |

Der Artikel merkt an, dass sich Vertraulichkeit von Privatsphäre unterscheidet, die er einen breiteren Begriff nennt. Er merkt auch an, dass Organisationen Ziele wie Authentizität, Rechenschaftspflicht, Nichtabstreitbarkeit und Verlässlichkeit hinzufügen können und dass der Parkerian Hexad, ein erweitertes Modell, umstrittene Vorzüge hat. Verfügbarkeit knüpft direkt an das Service-Management an (siehe Thema 3.11 — Verfügbarkeit, Kapazität und Performance).

### Risikomanagement

Der Artikel beschreibt Risiko als Wahrscheinlichkeit eines Schadens an einem Informations-Asset. **Schwachstellen** sind Schwächen, **Bedrohungen** sind mögliche Schadensursachen, und **Auswirkung** ist der daraus folgende Verlust. Risikomanagement ist ein fortlaufender, iterativer Prozess, in dem das Management ein Risiko akzeptieren, mindern, übertragen (etwa durch Versicherung) oder vermeiden kann. Was übrig bleibt, heißt **Restrisiko**. Der Artikel listet sechs Schritte auf: Assets identifizieren, Bedrohungen bewerten, Schwachstellen bewerten, Auswirkung berechnen, Kontrollen auswählen und umsetzen und diese Kontrollen bewerten.

### Kontrollen und Verteidigung in der Tiefe

Kontrollen schützen Vertraulichkeit, Integrität oder Verfügbarkeit. Der Artikel beschreibt die **Verteidigung in der Tiefe (Defense in Depth)**, die Schichtung einander überlappender Kontrollen, wobei die Kontrollarten als administrativ (Richtlinien, Verfahren), logisch (technische Maßnahmen wie Zugriffskontrolle und Verschlüsselung) und physisch (Schlösser, Einrichtungen) beschrieben werden. Keine einzelne Kontrolle genügt; Schichten decken die Ausfälle der anderen ab.

### Sicherheitsvorfälle

Der Artikel beschreibt das Management von Computersicherheitsvorfällen als Überwachung, Erkennung und Reaktion auf Sicherheitsereignisse, mit Incident-Response-Plänen, die bei erkannten Verletzungen aktiviert werden, typischerweise durch ein Incident-Response-Team ausgeführt. Sicherheitsvorfälle sind eine Art Incident und profitieren von denselben Rollen, derselben Kommunikation und schuldzuweisungsfreiem Lernen (siehe Thema 3.2 — Incident Management), dazu spezifische Schritte wie das Sichern von Beweisen und die Benachrichtigung von Aufsichtsbehörden oder Betroffenen, wo verlangt.

### ISO/IEC 27001 und 27002

Laut Wikipedia legt **ISO/IEC 27001** Anforderungen an die Einrichtung, Umsetzung, Aufrechterhaltung und kontinuierliche Verbesserung eines Informationssicherheits-Managementsystems (ISMS) fest, einschließlich der Bewertung und Behandlung von Informationssicherheitsrisiken. Seine Anforderungen sind generisch und für Organisationen jeder Art, Größe oder Natur gedacht. Die erste Ausgabe erschien im Oktober 2005 aus dem britischen Standard BS 7799-2, die zweite 2013 und die dritte im Oktober 2022, abgestimmt auf ISO/IEC 27002:2022; eine Änderung im Februar 2024 ergänzte eine Berücksichtigung des Klimawandels.

Wichtige Fakten aus dem Artikel:

- Die ISMS-Anforderungen stehen in den Abschnitten 4 bis 10: Kontext, Führung, Planung, Unterstützung, Betrieb, Leistungsbewertung und Verbesserung.
- Der Anhang A der Ausgabe 2022 hat 93 Referenzkontrollen in vier Themen: organisatorisch, personenbezogen, physisch und technologisch. Die Ausgabe 2013 listete 114. Anhang A ist ein Referenzsatz und keine verbindliche Checkliste: Organisationen erstellen eine **Erklärung zur Anwendbarkeit (Statement of Applicability)**, die begründet, welche Kontrollen sie einschließen und ausschließen.
- Zertifizierung ist freiwillig, sofern nicht ein Gesetz, ein Vertrag oder ein Schema sie verlangt. ISO zertifiziert keine Organisationen; unabhängige Zertifizierungsstellen tun es, in Stufen, gefolgt von Überwachungsaudits und Rezertifizierung im Dreijahreszyklus. Ein Zertifikat gilt nur innerhalb seines erklärten Geltungsbereichs.
- **ISO/IEC 27002** gibt Anleitung zu den Kontrollen des Anhangs A. Es ist Anleitung, und man kann nicht dagegen zertifiziert werden.

Der Artikel merkt an, dass eine Literaturübersicht von 2021 wenige empirische Studien zu den Ergebnissen von Zertifizierungen fand. Ein Zertifikat zeigt, dass ein Managementsystem existiert; es ist kein Beweis, dass ein bestimmter Verstoß nicht geschehen kann.

### Andere Frameworks und Gesetze

Der Artikel zur Informationssicherheit nennt viele weitere Standards und Schemata, etwa das NIST Cybersecurity Framework, Cyber Essentials im Vereinigten Königreich, die Essential Eight in Australien und den Standard der Zahlungskartenbranche. Er listet auch Gesetze auf, darunter den Computer Misuse Act (1990) und den Data Protection Act (1998) des Vereinigten Königreichs sowie HIPAA (1996), den Gramm-Leach-Bliley Act (1999) und den Sarbanes-Oxley Act (2002) der Vereinigten Staaten. Die Liste zeigt, wie vielfältig die Regeln sind. Welche für Sie gelten, hängt davon ab, wo Sie tätig sind, von der Branche und von den Daten, die Sie halten; fragen Sie Ihre Rechts- oder Compliance-Funktion (siehe Thema 5.7 — Governance, Risiko und Compliance).

### Sicherheit in der Delivery-Pipeline

Praktiken, die zu Continuous Delivery passen, umfassen:

- **Frühe Bedrohungsdiskussion:** In der Planung fragen, was bei einem Feature schiefgehen könnte und wer es missbrauchen wollen würde.
- **Automatisierte Prüfungen:** Code, Abhängigkeiten und Konfiguration bei jeder Änderung scannen, mit für das Team sichtbaren Ergebnissen (siehe Thema 3.4 — Change Enablement).
- **Geringste Privilegien (Least Privilege):** Menschen und Systemen nur den Zugang geben, den sie brauchen.
- **Verwaltung von Geheimnissen:** Zugangsdaten aus dem Code heraushalten und rotieren.
- **Sicherheitstests:** Penetrationstests und automatisierte Tests als Teil des Zyklus (siehe den Skill zu Sicherheitstests unten).
- **Logging und Monitoring:** verdächtige Aktivität erkennen (siehe Thema 3.10 — Monitoring und Event Management).

Die Anleitung von DORA, an anderer Stelle in diesem Leitfaden zitiert, nennt durchgängige Sicherheit unter den Praktiken, die Continuous Delivery unterstützen (siehe Thema 3.5 — Release- und Deployment-Management).

### Kultur und Menschen

Der Artikel zur Informationssicherheit erwähnt Forschung zur Sicherheitskultur, darunter sieben Kulturdimensionen, die Roer und Petric (2017) identifizierten. Welches Modell auch immer, der Punkt ist, dass viele Verstöße bei Menschen beginnen: einer Phishing-Nachricht, einem Fehler, einer Abkürzung unter Druck. Schulung, klare Meldewege und eine schuldzuweisungsfreie Haltung gegenüber ehrlichen Fehlern verbessern die Sicherheit mehr als Schuldzuweisung.

### Grenzen der Quellen

Der Wikipedia-Artikel nennt keine konkrete Kritik am CIA-Dreieck und wurde nur teilweise gelesen. Der Artikel zu ISO/IEC 27001 erörtert weder die Beziehung zu ISO/IEC 20000 noch zum Plan-Do-Check-Act-Zyklus. Dieses Thema gibt keine technischen Anweisungen; nutzen Sie Spezialanleitung für Ihre Plattformen und den Text der Standards, wenn Sie Konformität behaupten müssen.

## Bewährte Praktiken

1. **Wissen Sie, welche Information Sie halten und wo.** Erstellen Sie eine Liste der wichtigsten Informationsarten, wer jede verantwortet, wo sie gespeichert ist und wie sensibel sie ist. Sie können nicht schützen, was Sie nicht identifiziert haben.
2. **Führen Sie Risikobewertungen in einfacher Sprache durch.** Fragen Sie für jeden wichtigen Service, was bei Vertraulichkeit, Integrität und Verfügbarkeit schiefgehen könnte, wie wahrscheinlich und wie schlimm. Halten Sie Entscheidungen fest, jedes Risiko zu akzeptieren, zu mindern, zu übertragen oder zu vermeiden (siehe Thema 5.7 — Governance, Risiko und Compliance).
3. **Schichten Sie Ihre Kontrollen.** Kombinieren Sie Richtlinien, technische Kontrollen und physische Kontrollen, sodass ein Ausfall nicht genügt. Prüfen Sie, welche Schichten Ihre sensibelste Information schützen.
4. **Bauen Sie Prüfungen in die Pipeline ein.** Führen Sie bei jeder Änderung automatisierte Sicherheitsprüfungen an Code, Abhängigkeiten und Konfiguration durch und machen Sie fehlschlagende Prüfungen sichtbar. Beheben Sie Probleme an der Stelle der Änderung.
5. **Vergeben Sie standardmäßig geringste Privilegien.** Gewähren Sie Zugang nach Rolle und Bedarf, überprüfen Sie ihn regelmäßig und entziehen Sie ihn umgehend, wenn Menschen gehen oder Rollen wechseln (siehe Thema 3.6 — Service-Request-Management).
6. **Verwalten Sie Geheimnisse richtig.** Halten Sie Zugangsdaten aus dem Quellcode heraus, speichern Sie sie in einem verwalteten Tresor und rotieren Sie sie. Testen Sie, dass Sie sie nach einem Incident schnell rotieren können.
7. **Behandeln Sie Sicherheitsvorfälle als Incidents.** Nutzen Sie dieselben Rollen, dieselbe Kommunikation und denselben Review wie bei anderen Incidents und ergänzen Sie Schritte für Beweise, Eindämmung und Benachrichtigung. Üben Sie den Plan.
8. **Kennen Sie Ihre Benachrichtigungspflichten.** Finden Sie bei Ihrer Rechts- oder Compliance-Funktion heraus, welche Gesetze oder Verträge Sie verpflichten, nach einem Verstoß Behörden oder Betroffene zu benachrichtigen, und wie schnell. Schreiben Sie es in den Incident-Plan und zitieren Sie den Quelltext.
9. **Beziehen Sie Lieferanten ein.** Fragen Sie kritische Lieferanten, wie sie Ihre Information schützen, und legen Sie Erwartungen in Verträgen fest (siehe Thema 3.14 — Lieferantenmanagement).
10. **Schulen Sie und sprechen Sie miteinander.** Bieten Sie kurze, regelmäßige Schulung anhand echter Beispiele und machen Sie es leicht, einen Fehler oder eine verdächtige Nachricht ohne Schuldzuweisung zu melden.
11. **Nutzen Sie Standards als Quelle von Struktur.** Wenn Sie ISO/IEC 27001 übernehmen, behandeln Sie Anhang A als Referenzsatz, schreiben Sie eine begründete Erklärung zur Anwendbarkeit und halten Sie das ISMS schlank. Zertifizierung ist freiwillig, sofern sie nicht verlangt wird.
12. **Lernen Sie aus Beinahe-Vorfällen.** Prüfen Sie Beinahe-Vorfälle und Ereignisse geringen Schweregrads auf Muster und speisen Sie sie in Backlog und Risikoregister ein.

## Fragen zur Diskussion im Team

**Welche Information halten wir, die Menschen schaden würde, wenn sie abflösse, und wo ist sie?**

Bitten Sie jede Person, die sensibelsten Daten zu nennen, die sie bearbeitet, und wo sie liegen. Vergleichen Sie. Überraschungen sind häufig: Kopien in Testumgebungen, Exporte in gemeinsamen Ordnern, Logs mit personenbezogenen Daten. Die Moderation kann fragen, welche Kopie am schlechtesten geschützt ist. Wählen Sie eine zum Verringern oder besseren Schützen.

**Wann haben wir zuletzt entschieden, ein Sicherheitsrisiko zu akzeptieren, und wer hat entschieden?**

Fragen Sie nach einem Beispiel. Akzeptierte Risiken entstehen oft stillschweigend, durch Verzögerung. Besprechen Sie, wer entscheiden sollte, welche Information er braucht und wo es festgehalten wird. Die Liste der Arten, mit Risiko umzugehen (akzeptieren, mindern, übertragen, vermeiden), ist ein nützlicher Rahmen. Vereinbaren Sie einen einfachen Ort, um die nächste Entscheidung festzuhalten.

**Welche Sicherheitsprüfungen laufen bei jeder Änderung automatisch, und was ignorieren wir?**

Listen Sie die Prüfungen in der Pipeline und die Ergebnisse auf. Fragen Sie, welche Befunde routinemäßig ignoriert werden und warum. Ignorierte Befunde bedeuten meist Rauschen, fehlende Verantwortung oder fehlende Zeit. Entscheiden Sie, welche zu beheben sind, welche mit Begründung unterdrückt werden und wer die Liste verantwortet.

**Wer hat Zugang zu was, und wann haben wir das zuletzt überprüft?**

Wählen Sie ein sensibles System und listen Sie auf, wer es erreichen kann. Vergleichen Sie mit denen, die es brauchen. Oft hat sich Zugang angesammelt. Fragen Sie, wie schnell Zugang entzogen wird, wenn jemand geht. Vereinbaren Sie einen Überprüfungstermin und eine verantwortliche Person.

**Was würden wir in der ersten Stunde eines vermuteten Verstoßes tun?**

Gehen Sie die Schritte durch: wer informiert wird, was gesichert wird, was abgeschaltet wird, wer mit wem spricht. Lücken tauchen meist bei Befugnis und Beweisen auf. Fragen Sie, wo der Plan liegt und wann er zuletzt genutzt wurde. Planen Sie eine Planspielübung.

**Welche Regeln zu Sicherheit oder Datenschutz gelten für uns, und woher wissen wir das?**

Fragen Sie, wer dafür verantwortlich ist, es zu wissen. Lautet die Antwort "die Rechtsabteilung" oder "niemand", fragen Sie, wie die Entwicklung von den Anforderungen erfährt. Regeln unterscheiden sich nach Land und Branche, listen Sie also die Orte auf, an denen Sie tätig sind. Vereinbaren Sie, die Rechts- oder Compliance-Funktion um eine kurze Liste mit Quelltext zu bitten.

## In der Praxis: ein agiles ITIL-Beispiel

Der Hochleistungsrechner-Service einer Universität hält Datensätze aus medizinischen Studien und gibt Forschenden Zugang zu Analyseservern. Ein Team aus acht Personen betreibt ihn. Nach einem Vorfall, bei dem ein Forscher einen ungeschützten Datensatz in einen privaten Cloud-Ordner kopierte, verlangt der Sicherheitsbeauftragte der Universität, dass jede Änderung und jede Zugangsanfrage eine dreiwöchige Sicherheitsprüfung durchläuft. Forschende wenden ein, das mache den Service unbrauchbar.

Die Service-Leitung schlägt einen anderen Ansatz vor und trifft den Sicherheitsbeauftragten und zwei Forschende. Sie listen die gehaltene Information auf und gruppieren Datensätze als öffentlich, intern und sensibel. Für sensible Daten vereinbaren sie strengere Kontrollen: Zugang nach benannter Rolle und Projekt, keine Kopien außerhalb des Services und Protokollierung von Datenexporten. Für andere Daten gelten leichtere Regeln. Das Team fügt der Delivery-Pipeline automatisierte Prüfungen auf falsch konfigurierten Speicher und auf Geheimnisse im Code hinzu, und der Sicherheitsbeauftragte prüft die Ergebnisse wöchentlich, statt jede Änderung zu prüfen. Zugangsanfragen für sensible Datensätze folgen einem Anfragemodell mit Genehmigung durch die Datenverantwortliche des Projekts und einem Ablaufdatum. Für die Forschenden wird eine kurze Schulung anhand des früheren Vorfalls durchgeführt.

Sechs Monate später wurden keine weiteren Kopien außerhalb des Services gefunden, und Zugangsüberprüfungen dauern jedes Quartal einen Nachmittag. Einige Schwierigkeiten bleiben. Eine Gruppe von Forschenden nutzt ein Werkzeug, das Daten auf eine Weise exportiert, die die Protokollierung nicht erfasst, und die automatisierten Prüfungen erzeugen Fehlalarme, die das Team zu ignorieren begonnen hat. Sie vereinbaren mit dem Sicherheitsbeauftragten, das Werkzeug in den Protokollierungsumfang aufzunehmen, die Prüfungen abzustimmen und Alarme monatlich zu überprüfen. Sie bitten außerdem die Rechtsabteilung um eine schriftliche Darstellung der Benachrichtigungspflichten, die für die sensiblen Datensätze gelten, damit der Incident-Plan die Quelle zitieren kann.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams machen Sicherheit in Code und Konfiguration real. Besprechen Sie Bedrohungen früh, halten Sie Geheimnisse aus dem Code heraus, reagieren Sie auf automatisierte Befunde und vermeiden Sie, sensible Daten in Tests zu teilen. Sagen Sie Sicherheit und Betrieb, welche Änderungen die Angriffsfläche verändern.

### Service- und Betriebsteams

Betriebsteams betreiben die Kontrollen: Zugang, Monitoring, Patching und Backups. Behandeln Sie Sicherheitsereignisse als Incidents, sichern Sie Beweise und nehmen Sie an Übungen teil. Speisen Sie Incident-Muster zurück an die Delivery-Teams und ins Risikoregister.

### Führung und Governance

Führungskräfte verantworten Risikoentscheidungen und die Kultur darum herum. Verlangen Sie Risikozusammenfassungen in einfacher Sprache, unterstützen Sie Zeit für Schulung und Übungen und stellen Sie sicher, dass jemand für jede Entscheidung, ein Risiko zu akzeptieren, verantwortlich ist. Verlangen Sie Zertifizierung nicht als Etikett ohne Grund.

### Kunden und Nutzer

Kunden und Nutzende vertrauen dem Service ihre Information an. Nutzen Sie starke Authentifizierung, wo angeboten, melden Sie verdächtige Nachrichten und fragen Sie Anbieter, wie sie Ihre Daten schützen und wie sie Sie über einen Verstoß informieren würden. Erwarten Sie Ehrlichkeit und Tempo, wenn etwas schiefgeht.

## Typische Fehlerbilder

- **Sicherheit als letzte Schranke.** Reviews kommen am Ende und verzögern Releases. Besprechen Sie stattdessen Bedrohungen früh und automatisieren Sie Prüfungen in der Pipeline.
- **Compliance als Ziel.** Ein Zertifikat verbirgt schwache Praxis. Nutzen Sie Standards stattdessen für Struktur und messen Sie echten Schutz.
- **Unverfolgte Daten.** Kopien verbreiten sich auf Testsysteme und privaten Speicher. Wissen Sie stattdessen, wo sensible Daten liegen, und begrenzen Sie Kopien.
- **Übermäßiger Zugang.** Rechte sammeln sich an und werden nie entzogen. Überprüfen Sie Zugang stattdessen regelmäßig und lassen Sie ihn ablaufen.
- **Geheimnisse im Code.** Zugangsdaten liegen in Repositories. Nutzen Sie stattdessen einen Tresor und rotieren Sie Geheimnisse.
- **Kein getesteter Incident-Plan.** Die erste Nutzung ist ein echter Verstoß. Üben Sie den Plan stattdessen und schreiben Sie Benachrichtigungspflichten auf.
- **Schuldzuweisung für Fehler.** Menschen verbergen Fehler. Machen Sie das Melden stattdessen leicht und antworten Sie mit Lernen.
- **Lieferanten ignorieren.** Dritte halten Daten ohne klare Schutzmaßnahmen. Fragen Sie, vereinbaren Sie vertraglich und überprüfen Sie stattdessen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Information und Risiko | Sensible Daten sind nicht aufgelistet; Risiken sind implizit | Einige Services halten Datenarten und Risiken fest | Daten und Risiken sind je Service mit Verantwortlichen und Entscheidungen festgehalten | Risiken werden an Incidents und Metriken überprüft | Risikosichten werden mit Kunden und Lieferanten geteilt und abgestimmt |
| Kontrollen in der Lieferung | Sicherheitsreview geschieht am Ende, wenn überhaupt | Einige Teams führen Sicherheitsscans durch | Sicherheitsprüfungen sind in einer gemeinsamen Pipeline automatisiert, mit Verantwortlichen für Befunde | Befunde, Behebungen und Durchrutscher werden gemessen und überprüft | Kontrollen werden teamübergreifend anhand gemeinsamer Belege verbessert |
| Zugang und Geheimnisse | Zugang wird ad hoc gewährt; Geheimnisse im Code | Es gibt einige Überprüfungen und Tresore | Rollenbasierter Zugang mit Ablauf und verwaltete Geheimnisse sind Standard | Zugangsüberprüfungen und Rotation werden gemessen | Zugangs- und Geheimnispraktiken werden mit Partnern abgestimmt |
| Incident-Reaktion und Kultur | Sicherheitsvorfälle werden improvisiert | Es gibt einige Pläne | Sicherheitsvorfälle folgen dem Incident-Prozess mit definierten Zusatzschritten und werden geübt | Erkennungs- und Reaktionszeiten werden gemessen und Erkenntnisse geteilt | Reaktion wird mit Lieferanten, Kunden und Behörden koordiniert |

## Checkliste

- [ ] Wir haben die wichtigsten Informationsarten, ihre Verantwortlichen, Orte und Sensibilität aufgelistet.
- [ ] Risiken für Vertraulichkeit, Integrität und Verfügbarkeit sind für wichtige Services bewertet, und Entscheidungen sind festgehalten.
- [ ] Automatisierte Sicherheitsprüfungen laufen bei jeder Änderung, und Befunde haben Verantwortliche.
- [ ] Zugang erfolgt nach Rolle und Bedarf, wird regelmäßig überprüft und entzogen, wenn er nicht mehr gebraucht wird.
- [ ] Geheimnisse liegen in einem verwalteten Tresor und können schnell rotiert werden.
- [ ] Ein Plan für Sicherheitsvorfälle existiert, wurde geübt und enthält Benachrichtigungspflichten mit Quelltext.
- [ ] Lieferanten, die unsere Information halten, wurden nach ihren Schutzmaßnahmen gefragt.
- [ ] Mitarbeitende erhalten kurze, regelmäßige Schulung und können Fehler ohne Schuldzuweisung melden.
- [ ] Wenn wir ISO/IEC 27001 nutzen, haben wir eine begründete Erklärung zur Anwendbarkeit und ein schlankes ISMS.
- [ ] Beinahe-Vorfälle werden auf Muster geprüft.

## KI-Prompts

**Zweck: Ihre Information inventarisieren und nach Sensibilität ordnen.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine kurze Bedrohungsdiskussion für ein neues Feature durchführen.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: automatisierte Sicherheitsbefunde auf Rauschen und Priorität prüfen.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Zweck: eine Übung zu einem Sicherheitsvorfall vorbereiten.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [security-testing](../../../../skills/security-testing/SKILL.md): nutzen Sie ihn, um Sicherheitstests als Teil des Lieferzyklus zu planen.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um Sicherheitsrisiken, Entscheidungen und Verantwortliche festzuhalten.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): nutzen Sie ihn, um Frühwarnmaße für Sicherheitsrisiken zu wählen.
- [data-governance](../../../../skills/data-governance/SKILL.md): nutzen Sie ihn, um zu definieren, wer Daten verantwortet und wie sie genutzt und geteilt werden dürfen.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): nutzen Sie ihn, um Fragen an Rechts- oder Compliance-Personal zu Datenschutzpflichten vorzubereiten.

## Wichtige Quellen

- **Information security** (Wikipedia): das CIA-Dreieck, Risikomanagement, Kontrollen und Incident-Reaktion, mit einer langen Liste verwandter Standards und Gesetze.
- **ISO/IEC 27001** (Wikipedia und der Standard selbst von ISO): die Anforderungen an ein Informationssicherheits-Managementsystem, mit den Kontrollen des Anhangs A und dem Zertifizierungsprozess.
- **Computer security incident management** (Wikipedia): Hintergrund zur Reaktion auf Sicherheitsereignisse.
- **Defense in depth** (Wikipedia): Hintergrund zu geschichteten Kontrollen.

## Referenzen

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
