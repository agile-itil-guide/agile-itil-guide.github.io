# DevOps

**DevOps ist das Bemühen, Entwicklung und Betrieb in einem Arbeitsfluss mit geteilter Verantwortung, Automatisierung und schnellem Feedback zusammenzubringen, und es ergänzt das Service-Management, indem es die Kontrollen, die ITIL am Herzen liegen, in die Pipeline legt.**

## Warum das wichtig ist

DevOps ist der Name, den die meisten Organisationen dem Treffpunkt von kontinuierlicher Lieferung und IT-Betrieb geben. Es erwuchs aus einer Frustration: Entwickler wurden für Veränderung belohnt und Betriebsleute für Stabilität, sodass die beiden Gruppen in entgegengesetzte Richtungen zogen und die Übergabe zwischen ihnen der Ort war, an dem Tempo und Qualität verloren gingen. DevOps bittet beide, gemeinsam Verantwortung für den ganzen Weg von der Idee zum laufenden Service zu übernehmen.

Für Menschen im ITSM kann DevOps entweder bedrohlich oder überflüssig wirken. Bedrohlich, weil es die Prozesse zu verwerfen scheint, die der Betrieb nach harter Erfahrung aufgebaut hat. Überflüssig, weil vieles, was es empfiehlt, etwa Incident-Reviews, Automatisierung und kontinuierliche Verbesserung, schon in ITIL steht. Keine der Sichten stimmt ganz. Der Wikipedia-Artikel zu DevOps stellt DevOps dem gegenüber, was er das "von oben nach unten" gerichtete und starre Framework von ITIL aus den 1990er Jahren nennt, was für ältere Versionen stimmt; ITIL 4 wurde geschrieben, um sich an Agile, DevOps und Lean auszurichten (siehe Thema 2.2 — ITIL).

Die Definition von DevOps ist umstritten, und der Wikipedia-Artikel sagt das. Dieses Thema nutzt den Artikel, die Forschungsseiten von DORA und Gene Kims Darstellung der "Three Ways" und benennt, was gesichert ist, was debattiert wird und was dieser Leitfaden nicht prüfen konnte.

## Kernkonzepte

### Was DevOps ist

Der [Wikipedia-Artikel zu DevOps](https://en.wikipedia.org/wiki/DevOps) beschreibt es als Integration und Automatisierung von Softwareentwicklung und IT-Betrieb, die die Entwicklungszeit verkürzen und den Entwicklungslebenszyklus verbessern kann. Er zitiert die Wissenschaftler Len Bass, Ingo Weber und Liming Zhu, die es als Satz von Praktiken beschreiben, die darauf zielen, die Zeit zwischen dem Einchecken einer Änderung in ein System und ihrer normalen Platzierung in der Produktion zu verringern. Der Artikel merkt an, dass der Begriff in mehreren Zusammenhängen verwendet wird und seine Definition debattiert wird und dass akademische Studien von 2015 bis 2017 keinen Konsens über seine Merkmale fanden.

Der Artikel berichtet, dass Vorschläge, Entwicklungsmethoden mit Bereitstellung und Betrieb zu verbinden, bis in die späten 1980er und frühen 1990er Jahre zurückreichen und dass die erste DevOps-Days-Konferenz 2009 in Gent, Belgien, stattfand, gegründet von Patrick Debois. Er kennzeichnet DevOps allgemein durch drei Prinzipien: geteilte Verantwortung, Automatisierung des Arbeitsablaufs und schnelles Feedback, und merkt an, dass diese Kennzeichnung selbst debattiert wird.

### Die Three Ways

Gene Kim, Autor von *The Phoenix Project* und *The DevOps Handbook*, beschreibt drei Prinzipien, aus denen sich seiner Argumentation nach DevOps-Muster ableiten lassen. Wie in Kims eigenem Beitrag auf der Website von IT Revolution und in Sekundärzusammenfassungen dargestellt:

| Weg | Idee | Beispiele |
|---|---|---|
| **Der Erste Weg: Fluss** | Die Leistung des Gesamtsystems betrachten, nicht eines einzelnen Silos; Arbeit von der Idee zum Wert beschleunigen | Bekannte Fehler nicht nach unten weiterreichen; lokale Optimierung nicht das Ganze verschlechtern lassen; stets den Fluss zu erhöhen suchen |
| **Der Zweite Weg: Feedback** | Die Signale verkürzen und verstärken, die von späteren Stufen zu früheren zurückfließen | Telemetrie, schnell scheiternde Pipelines, Kundenfeedback |
| **Der Dritte Weg: kontinuierliches Lernen und Experimentieren** | Eine Kultur aufbauen, die kleine, bewusste Risiken eingeht und daraus lernt | Zeit für Lernen reservieren, lokale Entdeckungen in globale Verbesserungen verwandeln |

Diese entsprechen den eigenen Themen dieses Leitfadens: Fluss (siehe Thema 1.5 — Kanban und Thema 1.7 — Lean Softwareentwicklung), Feedback (siehe Thema 3.10 — Monitoring und Event Management) und Lernen (siehe Thema 1.10 — Agiles Lernen). Eine Anmerkung zur Terminologie: Kims Beitrag bezeichnet den Zweiten Weg als "Rückkopplungsschleifen verstärken", und das Handbook nennt ihn "Feedback".

### Praktiken

Laut Wikipedia sind kontinuierliche Integration und kontinuierliche Lieferung neben der Automatisierung entscheidend für den Erfolg von DevOps. Der Artikel erwähnt Versionsverwaltung, virtuelle Maschinen, Containerisierung und Datenbank-DevOps, das Versionsverwaltung, automatisierte Tests und CI/CD auf Schema- und Datenänderungen anwendet. Er beschreibt GitOps als Verwaltung der Deployment-Konfiguration in der Versionsverwaltung und DevSecOps als Integration von Sicherheit in die Lieferung durch "Shift-left"-Tests, einschließlich statischer und dynamischer Analyse. Die Liste der Fähigkeiten von DORA umfasst kontinuierliche Lieferung, kontinuierliche Integration, Deployment-Automatisierung, Testautomatisierung, Trunk-basierte Entwicklung, Versionsverwaltung, Datenbank-Änderungsmanagement, Monitoring und Observability, durchgängige Sicherheit, Arbeit in kleinen Batches und Grenzen für laufende Arbeit (siehe Thema 3.5 — Release- und Deployment-Management).

### Kultur

Die für diesen Leitfaden gelesene Fähigkeitenliste von DORA enthält kulturelle Posten: generative Organisationskultur, Lernkultur, transformationale Führung, Arbeitszufriedenheit, Wohlbefinden und Team-Experimentieren. Die Seite, die sie auflistet, erklärt sie nicht und reiht sie nicht. Eine andere DORA-Seite sagt, ihre Metriken sagten die Leistung der Organisation und das Wohlbefinden der Teammitglieder voraus, und warnt vor isolierter Verantwortung, indem sie geteilte Verantwortung über Entwicklungs-, Betriebs- und Release-Teams hinweg empfiehlt. Das stimmt mit dem Dritten Weg überein: Bei DevOps geht es ebenso sehr darum, wie Menschen zusammenarbeiten, wie um Werkzeuge.

Die verbreitete Eselsbrücke **CALMS** (Culture, Automation, Lean, Measurement, Sharing, also Kultur, Automatisierung, Lean, Messung, Teilen) wird oft zur Zusammenfassung von DevOps genutzt. Der Wikipedia-Artikel zu DevOps erwähnt sie nicht, und dieser Leitfaden hat ihren Ursprung nicht geprüft, sie wird also nur genannt, weil Lesende ihr begegnen werden.

### DevOps und Agile

Der Artikel sagt, automatisiertes Bauen und Testen, kontinuierliche Integration und kontinuierliche Lieferung stammten aus der agilen Welt, und dass Scrums Auslassung von Engineering-Praktiken dazu führte, dass sich Automatisierungsarbeit in DevOps abspaltete. Das passt zu Thema 1.4 — Lieferprognosen und Planungskennzahlen, das anmerkt, dass Scrum nicht sagt, wie man Software baut, testet, bereitstellt oder betreibt. Extreme Programming enthält bereits viele der Engineering-Praktiken (siehe Thema 1.6 — Extreme Programming). DevOps erweitert das agile Anliegen über den Zeitpunkt des Releases hinaus.

### DevOps und ITIL

Der Artikel stellt DevOps dem "von oben nach unten" gerichteten und starren Framework von ITIL aus den 1990er Jahren gegenüber und erörtert ITSM nicht weiter. Ein faireres Bild für heute:

| | Betont tendenziell | Risiko bei alleiniger Nutzung |
|---|---|---|
| **DevOps** | Fluss, Automatisierung, geteilte Verantwortung, schnelles Feedback | Aufzeichnungen, Kontrollen und die weitere Service-Sicht zu vernachlässigen |
| **ITIL 4** | Wert, Praktiken, Governance, ein breites Spektrum von Service-Praktiken | Praktiken als schwerfälligen Prozess zu behandeln |

Das eigene Zertifizierungsschema von ITIL 4 enthält ein Spezialmodul namens High Velocity IT (HVIT) im Pfad Managing Professional, wie der Wikipedia-Artikel zu ITIL auflistet. Das zeigt, dass der Eigner schnelle, digitale Arbeit als eigenes Thema behandelt. Eine praktische Kombination: Nutzen Sie DevOps-Praktiken, um die ITIL-Praktiken in der Pipeline umzusetzen, etwa Änderungen automatisch zu erfassen, Tests als Risikokontrolle laufen zu lassen und Monitoring als Event-Praktik zu nutzen (siehe Thema 3.4 — Change Enablement und Thema 5.1 — Agiles Service-Management).

### DevOps und Site Reliability Engineering

Der Wikipedia-Artikel sagt, Google habe 2003 das Site Reliability Engineering entwickelt und einige seiner ursprünglichen Autoren sähen SRE als Umsetzung von DevOps. Der SRE-Artikel nennt es eine spezifische Umsetzung von DevOps, enger, weil es sich auf den Bau verlässlicher Systeme konzentriert (siehe Thema 5.3 — Site Reliability Engineering).

### Messgrößen

Die Messgrößen für die Leistung der Softwarelieferung von DORA geben ein gemeinsames Vokabular: Durchlaufzeit von Änderungen, Deployment-Häufigkeit, Wiederherstellungszeit nach fehlgeschlagenem Deployment, Änderungsfehlerquote und Deployment-Nacharbeitsquote (siehe Thema 3.4 — Change Enablement und Thema 5.6 — Metriken und Messung). Der Wikipedia-Artikel berichtet, dass die Metriken 2016 veröffentlicht wurden, dass die Wiederherstellungsgröße im Bericht 2023 umbenannt wurde, dass 2024 eine Nacharbeitsgröße hinzukam und dass DORA 2025 Leistungsstufen durch sieben Team-Archetypen ersetzte. Er hält auch fest, dass einige Fachleute die Methodik und die Metriken der DORA-Forschung kritisierten. Behandeln Sie die Messgrößen als nützliche Fragen und nicht als Punktzahlen.

### Kritik und Grenzen

Über das Fehlen einer festen Definition hinaus berichtet der Artikel Kritik an der DORA-Methodik. Gängige praktische Kritikpunkte, hier als Praxiserfahrung und nicht als Quellenbefund angeboten, sind unter anderem "DevOps" als Berufsbezeichnung für die alte Betriebsrolle, Werkzeuge ohne Kulturwandel und Compliance, die im Streben nach Tempo vernachlässigt wird. Der Artikel gibt keine Verbreitungsstatistiken.

## Bewährte Praktiken

1. **Einigen Sie sich, was Sie mit DevOps meinen.** Schreiben Sie eine kurze Aussage, was es für Ihre Teams bedeutet, etwa geteilte Verantwortung für einen Service, automatisierte Lieferung und schnelles Feedback. Eine gemeinsame Definition verhindert Streit um Etiketten.
2. **Teilen Sie die Verantwortung für den Service.** Machen Sie die Menschen, die einen Service bauen, dafür verantwortlich, wie er läuft, und geben Sie ihnen die Mittel: Bereitschaft, Monitoring und Zugang. Unterstützen Sie sie mit Betriebsexpertise.
3. **Automatisieren Sie den Weg in die Produktion.** Bauen Sie eine Pipeline, die jede Änderung baut, testet und bereitstellt. Halten Sie fest, was sie getan hat. Behandeln Sie die Pipeline als Produkt mit Nutzenden.
4. **Arbeiten Sie in kleinen Batches.** Geben Sie kleine Änderungen oft frei. Das verringert das Risiko und beschleunigt das Feedback, wie die Fähigkeitenliste von DORA nahelegt.
5. **Verkürzen Sie die Rückkopplungsschleifen.** Machen Sie Testergebnisse, Monitoring und Nutzerfeedback dem Team binnen Minuten oder Stunden sichtbar. Folgen Sie dem Zweiten Weg: verstärken Sie die zurückfließenden Signale.
6. **Betrachten Sie den ganzen Fluss.** Zeichnen Sie den Weg von der Idee zum laufenden Service auf und finden Sie die längsten Wartezeiten, auch solche außerhalb des Entwicklungsteams. Folgen Sie dem Ersten Weg: optimieren Sie kein Silo auf Kosten des Ganzen (siehe Thema 5.4 — Wertstrommanagement).
7. **Bauen Sie Sicherheit und Compliance ein.** Legen Sie automatisierte Sicherheits- und Richtlinienprüfungen in die Pipeline und halten Sie Belege als Nebenprodukt fest (siehe Thema 3.13 — Informationssicherheitsmanagement und Thema 5.7 — Governance, Risiko und Compliance).
8. **Behandeln Sie Kultur als erstrangiges Anliegen.** Investieren Sie in Lernen, schuldzuweisungsfreie Reviews, psychologische Sicherheit und gemeinsame Ziele. Die Fähigkeitenliste von DORA enthält Kultur aus gutem Grund neben technischen Posten.
9. **Schaffen Sie Zeit zum Lernen und Experimentieren.** Reservieren Sie Zeit und sichere Orte für Experimente und teilen Sie Erkenntnisse. Folgen Sie dem Dritten Weg.
10. **Nutzen Sie ITIL-Praktiken, wo sie helfen.** Behalten Sie Incident-, Problem-, Änderungs- und Wissenspraktiken bei, umgesetzt durch Automatisierung und leichte Aufzeichnungen. Entfernen Sie Schritte, die ihrem Zweck nicht dienen.
11. **Messen Sie mit Sorgfalt.** Verfolgen Sie Messgrößen im Stil von DORA je Service, verbessern Sie sich gegenüber Ihrer eigenen Vergangenheit und vermeiden Sie, sie als Ziele zu setzen (siehe Thema 5.6 — Metriken und Messung).
12. **Meiden Sie die Titelfalle.** Schaffen Sie kein eigenes "DevOps-Team", das zum neuen Silo zwischen Entwicklung und Betrieb wird. Verbreiten Sie die Praktiken über Teams und nutzen Sie Plattform- oder Befähigungsteams als Hilfe.

## Fragen zur Diskussion im Team

**Was bedeutet DevOps hier, und wo haben wir das Wort zuerst gehört?**

Bitten Sie jede Person um eine Ein-Satz-Definition. Vergleichen Sie. Der Wikipedia-Artikel sagt, die Definition sei umstritten, Unterschiede sind also zu erwarten. Schreiben Sie eine gemeinsame, konkrete Aussage: wer was verantwortet, was automatisiert ist, welches Feedback es gibt. Die Moderation kann fragen, was sich bisher durch das Wort geändert hat.

**Wo wartet eine Änderung zwischen "bereit" und "live", und wer verantwortet das Warten?**

Verfolgen Sie eine jüngste Änderung und listen Sie die Wartezeiten auf: Reviews, Genehmigungen, Umgebungen, Release-Fenster. Markieren Sie jene außerhalb des Teams. Fragen Sie, welche Wartezeiten vor echten Risiken schützen und welche Gewohnheit sind. Wählen Sie eine zum Verkürzen, gemeinsam mit ihrer verantwortlichen Person.

**Wenn in der Produktion etwas kaputtgeht, wer hat Bereitschaft, und hat diese Person die Mittel, es zu beheben?**

Fragen Sie, wer alarmiert wird und was diese Person allein tun kann. Haben die Bauenden keine Bereitschaft, fragen Sie, warum. Können Betriebsleute den Code nicht ändern, fragen Sie, was sie tun. Besprechen Sie, wie geteilte Verantwortung hier aussähe und welche Unterstützung nötig wäre.

**Welches Feedback bekommen wir nach einem Release, und wie schnell?**

Listen Sie die Signale auf: Tests, Monitoring, Support-Tickets, Nutzerkommentare. Fragen Sie, wie lange jedes braucht, um das Team zu erreichen. Typische Antworten: Tests in Minuten, Tickets in Tagen. Wählen Sie ein Signal zum Beschleunigen.

**Wie sicher ist es, etwas auszuprobieren und zu scheitern?**

Fragen Sie nach einem jüngsten Beispiel eines gescheiterten Experiments und was mit den Beteiligten geschah. Der Dritte Weg hängt davon ab, aus kleinen Fehlschlägen zu lernen. Besprechen Sie, was Experimente sicherer machen würde, etwa Grenzen, Rollbacks und schuldzuweisungsfreie Reviews.

**Wie erscheinen unsere ITIL-Praktiken in der Pipeline, und wo nicht?**

Nehmen Sie Änderungs-, Incident- und Wissenspraktiken und fragen Sie, wo jede in der Automatisierung auftaucht. Lücken deuten auf manuelle Arbeit oder auf Kontrollen ohne Beleg. Vereinbaren Sie eine Praktik, die in die Pipeline verlegt wird.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationaler Postdienst hat eine Entwicklungsgruppe von 40 und eine Betriebsgruppe von 25 Personen. Die Entwickler veröffentlichen jedes Quartal eine große Version und übergeben ein Paket und ein langes Dokument an den Betrieb, der es über ein Wochenende bereitstellt. Der Betrieb beklagt, die Entwickler verstünden die Produktion nicht, und die Entwickler beklagen, der Betrieb sei nicht erreichbar, wenn ein Fehler eine schnelle Korrektur braucht. Ein jüngstes Release dauerte 19 Stunden, legte die Paketverfolgungsseite lahm und führte zu einem Tag gegenseitiger Schuldzuweisung.

Ein neuer Leiter der Plattform schlägt einen Versuch mit einem Produktteam vor, dem Paketverfolgungsservice. Vier Entwickler und zwei Betriebsingenieure bilden ein einziges Team, das den Service durchgängig verantwortet. Die Entwickler treten dem Bereitschaftsplan bei, unterstützt von den Betriebsingenieuren. Das Team baut eine Pipeline, die jede zusammengeführte Änderung baut, testet und in eine Staging-Umgebung bereitstellt und mit einem Genehmigungsschritt in die Produktion bringt, den die Service-Verantwortliche erteilt. Änderungsaufzeichnungen werden von der Pipeline erzeugt. Monitoring wird ergänzt, Alarme gehen an das ganze Team, und jeder Produktions-Incident erhält einen kurzen schuldzuweisungsfreien Review. Das Team vereinbart, mindestens wöchentlich zu releasen, und der Leiter der Plattform bittet es, Durchlaufzeit, Deployment-Häufigkeit, Änderungsfehlerquote und Wiederherstellungszeit zu verfolgen.

Nach vier Monaten released das Team zweimal pro Woche, die mittlere Zeit vom Merge bis zur Produktion liegt unter einem Tag, und der letzte Incident wurde in weniger als einer Stunde von dem Entwickler behoben, der die Änderung geschrieben hatte. Nicht alles funktioniert. Die Betriebsingenieure finden die Alarme der Entwickler verrauscht, und die Entwickler ärgern sich über nächtliche Bereitschaft. Ein Nachbarteam, das von der Paketverfolgung abhängt, wurde über den neuen Rhythmus nicht informiert und von einer Änderung überrascht. Der Leiter der Plattform schafft dem Team Zeit, Alarme zu justieren, ergänzt einen Bereitschaftsplan mit einer Grenze für nächtliche Einsätze und organisiert ein monatliches Treffen mit abhängigen Teams. Die interne Revision bittet darum, die Belege für Genehmigungen zu sehen, und der Leiter der Plattform zeigt die Pipeline-Aufzeichnungen und die Incident-Reviews.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams übernehmen betriebliche Verantwortung: Monitoring, Bereitschaft und Lernen aus Incidents. Bauen Sie die Pipeline und das Feedback, das Sie brauchen, und bitten Sie um Betriebsexpertise, statt zu übergeben. Halten Sie Änderungen klein und sichtbar.

### Service- und Betriebsteams

Betriebsteams bringen Wissen darüber ein, wie Services ausfallen und welche Kontrollen zählen. Helfen Sie, die Plattform und die Prüfungen zu bauen, teilen Sie die Bereitschaft und lehren Sie. Vermeiden Sie, ein Tor zu sein; werden Sie zur Befähigerin, die den sicheren Weg zum leichten Weg macht.

### Führung und Governance

Führungskräfte schaffen die Bedingungen: gemeinsame Ziele über Entwicklung und Betrieb hinweg, Zeit für Automatisierung, eine Kultur, die aus Fehlern lernt, und Vertrauen in Belege aus der Pipeline. Vermeiden Sie, Teams umzubenennen, ohne Anreize zu ändern, und verlangen Sie Ergebnisse, nicht die Einführung von DevOps.

### Kunden und Nutzer

Kunden und Nutzende sehen in DevOps schnellere Verbesserung und schnellere Wiederherstellung. Erwarten Sie häufige kleine Änderungen und klare Kommunikation darüber. Geben Sie schnell Feedback, denn das Team ist darauf eingerichtet, es zu nutzen.

## Typische Fehlerbilder

- **Ein DevOps-Team als neues Silo.** Entwicklung und Betrieb sprechen weiterhin nicht miteinander. Verbreiten Sie stattdessen Praktiken über Teams und nutzen Sie Plattformteams zur Befähigung.
- **Werkzeuge ohne Kultur.** Eine Pipeline wird gebaut, und sonst ändert sich nichts. Ändern Sie stattdessen Verantwortung, Anreize und Feedback gemeinsam.
- **Tempo ohne Sicherheit.** Releases beschleunigen sich und Ausfälle steigen. Investieren Sie stattdessen vor dem Tempo in Tests, Monitoring und Rollback.
- **ITIL ganz fallen lassen.** Aufzeichnungen und Kontrollen verschwinden. Behalten Sie stattdessen die Praktiken bei und setzen Sie sie in der Pipeline um.
- **Entwickler in Bereitschaft ohne Unterstützung.** Burnout folgt. Teilen Sie stattdessen den Plan, justieren Sie Alarme und begrenzen Sie nächtliche Einsätze.
- **Metriken als Ziele.** Teams manipulieren Deployment-Zahlen. Nutzen Sie stattdessen mehrere Messgrößen und vergleichen Sie mit Ihrer eigenen Historie.
- **Abhängige Teams ignorieren.** Änderungen überraschen Nachbarn. Kommunizieren Sie stattdessen Rhythmus und Änderungen an Teams, die von Ihrem abhängen.
- **Das Wort zum Ziel machen.** Etiketten ersetzen Ergebnisse. Fragen Sie stattdessen, wie besserer Fluss, besseres Feedback und besseres Lernen für Ihre Nutzenden aussehen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Geteilte Verantwortung | Entwicklung und Betrieb übergeben beim Release | Einige Teams teilen die Bereitschaft | Teams verantworten ihre Services durchgängig mit Unterstützung | Wirkungen der Verantwortung auf Qualität und Last werden gemessen | Verantwortungsmodelle werden über Teams, Plattformen und Lieferanten koordiniert |
| Automatisierung und Fluss | Lieferung ist manuell und in Batches | Einige Pipelines existieren | Eine gemeinsame Pipeline baut, testet, stellt bereit und erfasst Änderungen | Durchlaufzeit, Häufigkeit, Fehler und Wiederherstellung werden gemessen und justiert | Pipelines und Fluss werden über Teams und Wertströme optimiert |
| Feedback | Feedback kommt nach Problemen von Nutzenden | Einige Teams überwachen Releases | Tests, Monitoring und Nutzerfeedback erreichen Teams binnen Minuten oder Stunden | Feedbackgeschwindigkeit und -qualität werden gemessen und verbessert | Rückkopplungsschleifen überspannen Teams, Lieferanten und Kunden |
| Kultur und Lernen | Auf Fehler folgt Schuldzuweisung | Einige schuldzuweisungsfreie Reviews | Schuldzuweisungsfreie Reviews, Experimente und Lernzeit sind Routine | Lernmaßnahmen werden verfolgt und Ergebnisse geprüft | Lernen verbreitet sich laufend in der Organisation |

## Checkliste

- [ ] Wir haben eine gemeinsame schriftliche Definition dessen, was DevOps für uns bedeutet.
- [ ] Teams, die einen Service bauen, teilen die Verantwortung für seinen Betrieb.
- [ ] Eine Pipeline baut, testet und stellt Änderungen bereit und hält fest, was sie getan hat.
- [ ] Änderungen werden oft in kleinen Batches freigegeben.
- [ ] Test-, Monitoring- und Nutzerfeedback erreichen das Team schnell.
- [ ] Sicherheits- und Richtlinienprüfungen laufen in der Pipeline.
- [ ] Die Bereitschaft wird geteilt, mit Grenzen für nächtliche Einsätze und justierten Alarmen.
- [ ] Incident-Reviews sind schuldzuweisungsfrei und erzeugen Maßnahmen mit Verantwortlichen.
- [ ] Wir verfolgen für jeden Service Durchlaufzeit, Deployment-Häufigkeit, Änderungsfehlerquote und Wiederherstellungszeit.
- [ ] Abhängige Teams werden über unseren Release-Rhythmus und größere Änderungen informiert.

## KI-Prompts

**Zweck: die Wartezeiten zwischen "bereit" und "live" aufzeichnen.**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: prüfen, wo ITIL-Praktiken in Ihrer Pipeline erscheinen.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Piloten geteilter Verantwortung mit einem Team planen.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: einen schuldzuweisungsfreien Incident-Review für ein gemischtes Team entwerfen.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): nutzen Sie ihn, um kleine, häufige Releases und die Prüfungen darum zu planen.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): nutzen Sie ihn, um die automatisierten Tests zu bauen, von denen eine Pipeline abhängt.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): nutzen Sie ihn, um Test- und Sicherheitsprüfungen früher in die Pipeline zu verlegen.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): nutzen Sie ihn, um geteilte Bereitschaft mit fairen Grenzen zu entwerfen.
- [postmortem](../../../../skills/postmortem/SKILL.md): nutzen Sie ihn, um schuldzuweisungsfreie Reviews durchzuführen, die den Dritten Weg speisen.

## Wichtige Quellen

- **DevOps** (Wikipedia): ein Überblick über Definitionen, Praktiken, Beziehungen zu Agile, SRE und DevSecOps sowie DORA-Metriken, mit vermerkten Debatten.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): die Quelle für Fluss, Feedback und kontinuierliches Lernen.
- **DORA capabilities and metrics** (dora.dev): die Fähigkeitenliste des Forschungsprogramms und seine Messgrößen der Softwarelieferung.
- **The DevOps Handbook** und **The Phoenix Project** (Gene Kim und Mitautoren): die Bücher, die die Three Ways im Einzelnen entwickeln.

## Referenzen

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
