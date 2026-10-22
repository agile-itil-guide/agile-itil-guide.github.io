# Change Enablement

**Change Enablement existiert, damit nützliche Änderungen sicher und schnell geschehen können, und der Befund der Forschung zur Softwarelieferung ist, dass Risiko durch kleine Änderungen, Peer-Review und automatisierte Prüfungen besser kontrolliert wird als dadurch, jede Änderung einem Gremium vorzulegen.**

## Warum das wichtig ist

Die Änderung ist der Ort, an dem Continuous Delivery und Service-Management am häufigsten kollidieren. Delivery-Teams wollen oft releasen, weil kleine häufige Änderungen leichter zu verstehen und rückgängig zu machen sind. Betrieb und Governance wollen Ausfälle vermeiden und Aufzeichnungen führen, weil frühere Änderungen Services kaputtgemacht haben. Beide haben recht. Der Streit geht meist darum, wie Risiko kontrolliert wird: durch Freigabe vor der Änderung oder durch die Qualität der Änderung und die Geschwindigkeit der Wiederherstellung.

Die Praktik heißt in ITIL 4 Change Enablement. Der neue Name ist eine Zweckerklärung. Ziel ist, nützliche Änderungen zu ermöglichen, nicht Änderungen zu verhindern. Ältere ITIL-Versionen nannten die Praktik Change Management und gaben ihr eine starke Rolle bei Freigaben und Terminplänen, was viele Teams als Schranke erlebten.

Dieses Thema nutzt die beste verfügbare Evidenz: die Anleitung des DORA-Forschungsprogramms zur Änderungsfreigabe und seine Kennzahlen der Softwarelieferung, gelesen auf den eigenen Seiten des Programms. Die Seiten von DORA berichten, dass schwergewichtige externe Freigabe mit schlechterer Lieferleistung verbunden ist. Sie geben auch keine Effektstärken oder statistischen Einzelheiten an und verweisen auf einen Bericht von 2019 für die zugrunde liegende Forschung, betrachten Sie die Anleitung daher als stark, aber nicht endgültig, und testen Sie sie in Ihrem eigenen Kontext. Das ITIL-Vokabular hier stammt aus weit verbreiteten Beschreibungen, die dieser Leitfaden nicht am Text des Framework-Eigners prüfen konnte (siehe Thema 2.2 — ITIL).

## Kernkonzepte

### Was Change Enablement tut

Eine **Änderung** ist das Hinzufügen, Verändern oder Entfernen von allem, was einen Service beeinflussen könnte. Change Enablement ist die Praktik, sicherzustellen, dass Änderungen bewertet, genehmigt und eingeplant werden, damit Risiko gesteuert wird und nützliche Änderungen voranschreiten. Die Praktik führt auch eine Aufzeichnung dessen, was sich geändert hat, was für die Incident-Bearbeitung entscheidend ist, denn viele Incidents beginnen mit einer jüngsten Änderung (siehe Thema 3.2 — Incident Management).

### Arten von Änderungen

ITIL 4 wird weithin so beschrieben, dass es drei Arten von Änderungen unterscheidet, jede mit einem anderen Weg:

| Art | Was sie ist | Typischer Weg |
|---|---|---|
| **Standard-Change** | Eine risikoarme, gut verstandene Änderung, die einem dokumentierten Verfahren folgt | Vorab genehmigt; erfasst, ohne Genehmigung im Einzelfall |
| **Normaler Change** | Eine Änderung, die Bewertung und Genehmigung braucht | Auf Risiko und Auswirkung bewertet, dann von der zuständigen Person oder Gruppe genehmigt |
| **Notfall-Change** | Eine Änderung, die dringend erfolgen muss, etwa um den Service wiederherzustellen | Beschleunigte Genehmigung, mit gründlicherer Prüfung danach |

Die Namen und genauen Definitionen sollten an den Veröffentlichungen des Eigners geprüft werden. Das Prinzip ist stabil: das Maß der Kontrolle dem Risiko anpassen.

### Änderungsbefugnis

Jede Art von Änderung braucht jemanden mit der Befugnis, sie zu genehmigen. In älterer Praxis war das oft ein Change Advisory Board (CAB). Die Seite von DORA schafft das CAB nicht ab; sie schlägt eine "strategische" Rolle vor: teamübergreifend koordinieren, Prozessverbesserung unterstützen und Abwägungsentscheidungen für das Geschäft treffen, etwa Time-to-Market gegen Risiko. Für Routineänderungen, sagt sie, werde die Freigabe am besten durch Peer-Review während der Entwicklung umgesetzt, gestützt durch Automatisierung.

### Was DORA zur Freigabe berichtet

Die Seite von DORA zur Straffung der Änderungsfreigabe sagt:

- Schwergewichtige externe Freigabe, etwa durch ein CAB oder die Unterschrift einer leitenden Führungskraft, ist mit schlechterer Lieferleistung verbunden.
- Die Seite berichtet keinen Beleg dafür, dass formalere externe Prüfung Änderungsfehlerraten senkt.
- Sie argumentiert, schwergewichtige Freigabe verlangsame die Lieferung, was zu größeren, selteneren Releases mit höherem Risiko führe, und sagt, ihre Daten hätten diese Hypothese gestützt.

Die Seite nennt Fallstricke: sich darauf zu verlassen, dass ein zentrales CAB Fehler fängt, denselben Freigabeprozess auf alle Änderungen ohne Rücksicht auf das Risiko anzuwenden, den Prozess nicht anhand von Kennzahlen zu verbessern und Prozess und Freigaben als Reaktion auf Instabilität in der Produktion hinzuzufügen, was laut ihr die Dinge tendenziell verschlimmert. "Es wurde kein Beleg gefunden" heißt, dass ein Beleg für den Nutzen nicht gefunden wurde; es beweist nicht, dass externe Prüfung keine Wirkung hat. Die Seite gibt keine Kriterien dafür, was als Änderung mit hohem Risiko gilt, keine Anleitung zu bestimmten Vorschriften und keinen Übergangsplan für regulierte Branchen.

### Die Alternative: Kontrolle in der Pipeline

DORA schlägt vor, die Funktionstrennung durch Peer-Review zu erfüllen, die in der Entwicklungsplattform erfasst wird, und kontinuierliches Testen, Continuous Integration und Monitoring zu nutzen, um schlechte Änderungen früh zu erkennen, zu verhindern und zu korrigieren. Sie schlägt außerdem vor, die Plattform als Produkt zu behandeln, das Entwicklern schnelles Feedback zu Sicherheit, Performance, Stabilität und Fehlern gibt, Änderungen mit hohem Risiko für zusätzliche Prüfung zu markieren und den normalen Änderungsprozess schnell genug zu machen, um Notfälle zu bewältigen. Die Kontrolle liegt in den Belegen, die die Pipeline erzeugt: wer geprüft hat, welche Tests bestanden wurden, was deployt wurde und wie es rückgängig gemacht werden kann.

### Änderungen messen

Die Seite von DORA zu den Kennzahlen der Softwarelieferleistung listet fünf Maße auf:

| Maß | Was es ist | Gruppe |
|---|---|---|
| Durchlaufzeit einer Änderung | Zeit von der Übernahme einer Änderung in die Versionsverwaltung bis zum Deployment in der Produktion | Durchsatz |
| Deployment-Häufigkeit | Wie oft Deployments stattfinden | Durchsatz |
| Wiederherstellungszeit nach fehlgeschlagenem Deployment | Wie lange die Wiederherstellung nach einem Deployment dauert, das fehlschlägt und sofortiges Eingreifen erfordert | Durchsatz |
| Änderungsfehlerrate | Der Anteil der Deployments, die sofortiges Eingreifen erfordern, etwa einen Rollback oder Hotfix | Instabilität |
| Deployment-Nacharbeitsrate | Der Anteil der Deployments, die ungeplant sind und aus einem Produktions-Incident resultieren | Instabilität |

Die Seite sagt, Geschwindigkeit und Stabilität seien keine Zielkonflikte: Die Maße korrelieren für die meisten Teams, und Spitzenteams sind bei allen fünf gut. Sie warnt davor, die Maße zu Zielen zu machen (Goodharts Gesetz), sich auf ein einziges Maß zu stützen, sehr verschiedene Anwendungen zu vergleichen und mit anderen Teams zu konkurrieren. Sie schlägt vor, dass Teams sich an ihrer eigenen früheren Leistung verbessern. Die Seite gibt weder Richtwerte noch Formeln, definieren Sie also jedes Maß für Ihren eigenen Kontext, bevor Sie es nutzen (siehe Thema 5.6 — Metriken und Messung).

### Aufzeichnungen und die Konfigurationssicht

Eine Änderungsaufzeichnung sollte sagen, was sich geändert hat, warum, wer genehmigt hat und wann es geschah, und idealerweise auf die betroffenen Services verweisen. Versionsverwaltung, Build- und Deployment-Werkzeuge können vieles davon automatisch erzeugen. Änderungen mit der Konfiguration von Services zu verknüpfen unterstützt Auswirkungsanalyse und Incident-Bearbeitung (siehe Thema 4.4 — Konfigurationsmanagement).

### Change und Release

Change Enablement entscheidet, ob eine Änderung fortschreiten darf. Release- und Deployment-Management bringt sie in die Produktion (siehe Thema 3.5 — Release- und Deployment-Management). Bei Continuous Delivery verschmelzen die beiden in der Praxis, mit in die Pipeline eingebetteten Freigaben.

## Bewährte Praktiken

1. **Klassifizieren Sie Änderungen nach Risiko.** Definieren Sie eine kurze Liste von Änderungsarten, mit Kriterien und Beispielen. Passen Sie den Weg dem Risiko an, damit Routineänderungen schnell sind und riskante Aufmerksamkeit erhalten.
2. **Genehmigen Sie risikoarme Änderungen vorab.** Vereinbaren Sie für Änderungen, die gut verstanden, getestet und umkehrbar sind, ein Standardverfahren und lassen Sie sie ohne Genehmigung im Einzelfall voranschreiten. Erfassen Sie sie automatisch.
3. **Machen Sie Peer-Review zur Standardfreigabe.** Verlangen Sie, dass eine zweite Person Änderungen vor dem Merge prüft, und halten Sie den Review in der Entwicklungsplattform fest. Das erfüllt für die meisten Änderungen die Funktionstrennung, wie die Seite von DORA beschreibt.
4. **Automatisieren Sie die Prüfungen.** Führen Sie bei jeder Änderung Tests, Sicherheitsscans und Richtlinienprüfungen aus und machen Sie die Ergebnisse zum Teil der Aufzeichnung. Eine Freigabe auf Basis von Belegen ist stärker als eine auf Basis eines Formulars.
5. **Halten Sie Änderungen klein.** Kleine Änderungen sind leichter zu prüfen, zu testen und rückgängig zu machen. Wenn sich eine Änderung riskant anfühlt, fragen Sie, ob sie sich aufteilen lässt.
6. **Machen Sie den Rollback einfach und geübt.** Wissen Sie für jede Änderungsart, wie man sie rückgängig macht, und üben Sie es. Die Fähigkeit, sich schnell zu erholen, verringert die Notwendigkeit, jeden Fehler vorherzusagen.
7. **Markieren Sie die Änderungen mit hohem Risiko.** Definieren Sie Signale, etwa Änderungen an Zahlungslogik oder gemeinsamer Infrastruktur, die zusätzliche Prüfung auslösen. Wenden Sie den schwereren Weg nur auf sie an.
8. **Geben Sie der Änderungsinstanz eine strategische Rolle.** Nutzen Sie ein zentrales Gremium, um über Teams hinweg zu koordinieren, Konflikte zu lösen und geschäftliche Abwägungen zu treffen. Nutzen Sie es nicht als Kontrollpunkt für jede Änderung.
9. **Bearbeiten Sie Notfälle auf dem normalen Weg.** Machen Sie den regulären Prozess schnell und verlässlich genug, dass Notfalländerungen ihm mit Review danach folgen. Häufig genutzte Notfallwege signalisieren, dass der normale Weg zu langsam ist.
10. **Fügen Sie nach einem Incident nicht standardmäßig Freigaben hinzu.** Die Seite von DORA sagt, Prozess als Reaktion auf Instabilität hinzuzufügen verschlimmere die Dinge tendenziell. Fragen Sie zuerst, ob die Abhilfe in besseren Tests, kleineren Änderungen oder schnellerer Wiederherstellung liegt.
11. **Messen Sie den Prozess.** Verfolgen Sie Durchlaufzeit, Wartezeit auf Freigabe, den Anteil der Änderungen, die ohne manuelle Freigabe durchlaufen, und die Änderungsfehlerrate. Nutzen Sie die Maße zur Verbesserung, nicht um Teams zu reihen.
12. **Erklären Sie den Prozess.** Die Seite von DORA merkt an, dass das klare Kommunizieren des bestehenden Prozesses und die Hilfe für Teams beim Zurechtfinden schon vor einer Änderung mit besserer Leistung verbunden ist. Veröffentlichen Sie eine einseitige Anleitung mit Beispielen.

## Fragen zur Diskussion im Team

**Welcher Anteil unserer Änderungen ist risikoarm und gut verstanden, und wie werden sie heute genehmigt?**

Nehmen Sie einen Monat Änderungen und sortieren Sie sie. Die meisten Teams stellen fest, dass die große Mehrheit Routine ist. Fragen Sie, wie lange Routineänderungen auf Genehmigung warten und was die genehmigende Person hinzufügt. Die Moderation kann fragen, ob jemand sich an eine Routineänderung erinnert, die durch die Genehmigung vor dem Scheitern bewahrt wurde. Nutzen Sie die Antwort, um einen ersten Kandidaten für die Vorabgenehmigung zu identifizieren.

**Was fängt unser Freigabeschritt tatsächlich?**

Listen Sie die letzten zehn Änderungen auf, die bei der Freigabe abgelehnt oder verzögert wurden, und warum. Vergleichen Sie mit den Problemen, die trotz Freigabe die Produktion erreichten. Wenn die Freigabe wenig fängt, fragen Sie, was dieselben Probleme früher fangen würde, etwa Tests oder Peer-Review. Denken Sie daran, dass die Seite von DORA keinen Beleg dafür berichtet, dass formalere externe Prüfung Änderungsfehlerraten senkt. Vereinbaren Sie eine Änderung zum Ausprobieren.

**Wie würden wir eine schlechte Änderung rückgängig machen, und wie schnell?**

Wählen Sie eine jüngste Änderung und beschreiben Sie den Rollback. Ist er unklar, ungetestet oder manuell, ist das das Risiko. Fragen Sie, wie lange er dauern würde und wer ihn durchführen würde. Vereinbaren Sie, in diesem Monat einen Rollback zu proben. Ein Team, das sich in Minuten erholen kann, kann mehr Veränderung akzeptieren.

**Welche unserer Änderungen brauchen zusätzliche Prüfung, und woran würden wir sie erkennen?**

Sammeln Sie Beispiele für Änderungen, die schwere Incidents verursachten. Suchen Sie Merkmale, die sie teilen: gemeinsame Infrastruktur, Sicherheitskontrollen, Datenmigrationen. Entwerfen Sie drei Signale, die eine Änderung als hochriskant markieren würden. Fragen Sie, wer markierte Änderungen prüfen sollte und wie schnell.

**Wann haben wir nach einem Incident eine Kontrolle hinzugefügt, und hat sie geholfen?**

Fragen Sie nach Beispielen. Listen Sie auf, was hinzugefügt wurde, welche Probleme es ansprach und ob das Problem wiederkehrte. Die Seite von DORA nennt das Hinzufügen von Freigaben als Reaktion auf Instabilität einen Fallstrick. Besprechen Sie, ob eine andere Reaktion, etwa bessere Tests oder kleinere Änderungen, funktioniert hätte. Halten Sie eine Erkenntnis fest.

**Welchen Nachweis würde ein Prüfer aus unserer Pipeline anstelle einer Unterschrift akzeptieren?**

Bitten Sie einen Prüfer oder eine Compliance-Kollegin dazu. Listen Sie die Nachweise auf, die die Pipeline bereits erzeugt: Reviews, Testergebnisse, Deployment-Aufzeichnungen. Fragen Sie, was fehlt. Viele Prüfer akzeptieren festgehaltenen Peer-Review und automatisierte Nachweise, wenn sie verlässlich sind. Vereinbaren Sie eine kurze Beschreibung der Kontrolle und eine Probezeit.

## In der Praxis: ein agiles ITIL-Beispiel

Die IT-Abteilung eines regionalen Krankenhauses betreibt ein klinisches Terminplanungssystem, das ein hauseigenes Team aus sieben Personen aktualisiert. Jede Änderung, vom Tippfehler bis zur Datenbankmigration, geht an ein wöchentliches Change Advisory Board. Kleine Korrekturen warten bis zu acht Tage. Klinikpersonal beklagt sich, und die Entwickler haben begonnen, Korrekturen zu größeren Releases zu bündeln, um die Warteschlange zu umgehen, was jedes Release riskanter macht.

Die IT-Leitung und die Vorsitzende des Boards prüfen ein Jahr Änderungen. Die meisten waren klein, zwei hatten Incidents verursacht, und keine davon war vom Board gefangen worden. Sie entwerfen einen Ansatz mit drei Spuren. Standard-Changes, etwa Text- und Konfigurationsänderungen innerhalb vereinbarter Grenzen, mit bestandenen automatisierten Tests und getestetem Rollback, werden vorab genehmigt und automatisch protokolliert. Normale Changes brauchen einen in der Entwicklungsplattform festgehaltenen Peer-Review und eine Prüfung gegen eine kurze Liste von Signalen für hohes Risiko, etwa Änderungen an der Verarbeitung von Patientendaten. Als hochriskant markierte Änderungen gehen an das Board, das zweimal pro Woche tagt. Notfall-Changes folgen dem normalen Weg mit einem Review nach der Umsetzung.

Nach vier Monaten gehen Standard-Changes innerhalb eines Tages live, und das Board sieht etwa ein Fünftel des früheren Volumens. Die Änderungsfehlerrate steigt nicht. Probleme bleiben. Zwei Entwickler wenden die Signale für hohes Risiko uneinheitlich an, und eine markierte Änderung erreichte das Board spät, und die interne Revision bittet um den Nachweis, dass Peer-Reviews keine Stempelaktionen sind. Das Team schreibt Beispiele für die Signale, ergänzt einen Stichproben-Review der Peer-Reviews durch einen erfahrenen Ingenieur und vereinbart mit der Revision, die Nachweise beim nächsten vierteljährlichen Treffen zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams tragen den Großteil der Kontrolle: Review, Tests, kleine Änderungen und Rollback. Bauen Sie diese in die Pipeline ein und machen Sie die Nachweise sichtbar. Halten Sie Änderungen klein und sagen Sie dem Betrieb, was kommt. Nutzen Sie den Änderungsprozess als Ort, Risikoinformation zu teilen, nicht nur um Erlaubnis zu bekommen.

### Service- und Betriebsteams

Betriebsteams wissen, welche Änderungen Services geschadet haben. Teilen Sie dieses Wissen als Signale für zusätzliche Prüfung und helfen Sie, Prüfungen zu bauen, die sie früh fangen. Unterstützen Sie leichtere Wege für Änderungen mit geringem Risiko und führen Sie die Aufzeichnungen, die die Incident-Bearbeitung beschleunigen.

### Führung und Governance

Führungskräfte entscheiden, wie viel Freigabe die Organisation verlangt. Die Anleitung von DORA legt nahe, Nachweise der Kontrolle zu verlangen und nicht Unterschriften für jede Änderung. Unterstützen Sie die Messung von Durchlaufzeit und Änderungsfehlerrate und vermeiden Sie, nach Incidents Prozess hinzuzufügen, ohne Ursachen zu prüfen. Vereinbaren Sie mit der Revision, welche Nachweise akzeptabel sind.

### Kunden und Nutzer

Kunden und Nutzende profitieren von häufigen kleinen Verbesserungen und weniger großen Störungen. Rechnen Sie damit, über Änderungen, die Sie betreffen, in einfacher Sprache und im Voraus informiert zu werden. Wenn Sie besondere Bedürfnisse haben, etwa Sperrzeiten, sagen Sie es dem Anbieter früh, damit sie eingeplant werden können.

## Typische Fehlerbilder

- **Ein Weg für jede Änderung.** Routineänderungen stauen sich hinter riskanten. Klassifizieren Sie stattdessen nach Risiko und geben Sie jeder Klasse ihren eigenen Weg.
- **Freigabe als einzige Kontrolle.** Eine Unterschrift steht für Qualität. Bauen Sie stattdessen Tests, Review und Rollback in die Pipeline ein.
- **Ein Board, das prüft, was es nicht beurteilen kann.** Mitglieder genehmigen Änderungen, die sie nicht verstehen. Schicken Sie Änderungen stattdessen zu Menschen mit dem Wissen und nutzen Sie das Board zur Koordination.
- **Bündeln, um die Warteschlange zu umgehen.** Teams kombinieren Änderungen, was jedes Release riskanter macht. Machen Sie die Warteschlange stattdessen kurz genug, dass kleine Änderungen der einfache Weg sind.
- **Nach jedem Incident Kontrollen hinzufügen.** Prozess wächst, und Tempo sinkt. Suchen Sie stattdessen die Ursache und beheben Sie sie mit Tests, kleineren Änderungen oder schnellerer Wiederherstellung.
- **Peer-Review als Stempelaktion.** Reviews sind formal, aber oberflächlich. Ziehen Sie stattdessen Stichproben, teilen Sie Beispiele guter Reviews und halten Sie Änderungen klein genug zum Prüfen.
- **Kein Rollback.** Änderungen lassen sich nicht rückgängig machen. Verlangen und proben Sie stattdessen für jede Änderungsart einen Rollback.
- **Die Maße manipulieren.** Teams zerteilen Änderungen oder verbergen Fehler, um gut dazustehen. Nutzen Sie stattdessen mehrere Maße, werten Sie sie gemeinsam aus und konzentrieren Sie sich auf Verbesserung im Zeitverlauf.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Klassifizierung und Wege | Alle Änderungen folgen einem Weg oder keinem | Einige Teams haben einen schnellen Weg für einfache Änderungen | Änderungsarten mit Kriterien und eigenen Wegen sind Standard | Anteil der Änderungen je Weg und Wartezeiten werden gemessen und abgestimmt | Wege werden teamübergreifend anhand gemeinsamer Belege angepasst |
| Freigabe und Nachweise | Freigabe erfolgt per Unterschrift oder wird nicht erfasst | Einige Änderungen werden per Peer-Review geprüft | Peer-Review und automatisierte Prüfungen werden für die meisten Änderungen erfasst | Review-Qualität und Nachweise werden stichprobenartig geprüft und verbessert | Nachweise fließen automatisch an Revision und Partner |
| Wiederherstellung | Rollback ist ad hoc | Einige Änderungen haben Rollback-Schritte | Rollback ist für jede Änderungsart definiert und geübt | Wiederherstellungszeit wird gemessen und verringert | Wiederherstellungspraktiken werden über Teams und Lieferanten geteilt und getestet |
| Messung und Verbesserung | Wenige Maße | Einige Teams verfolgen die Durchlaufzeit | Durchlaufzeit, Häufigkeit, Fehlerrate und Wiederherstellungszeit werden je Service verfolgt | Maße treiben geplante Verbesserungen an und werden nicht als Ziele genutzt | Teams lernen voneinander aus Maßen und verbessern sich über die Organisation hinweg |

## Checkliste

- [ ] Wir haben Änderungsarten mit Kriterien und Beispielen definiert.
- [ ] Risikoarme, gut verstandene Änderungen werden vorab genehmigt und automatisch erfasst.
- [ ] Peer-Review wird für normale Änderungen in der Entwicklungsplattform festgehalten.
- [ ] Automatisierte Tests und Prüfungen laufen bei jeder Änderung.
- [ ] Jede Änderungsart hat einen Rollback, der geprobt wurde.
- [ ] Wir haben Signale, die Änderungen mit hohem Risiko für zusätzliche Prüfung markieren.
- [ ] Jedes zentrale Board hat eine klare Rolle bei Koordination und Abwägungen.
- [ ] Wir verfolgen für jeden Service Durchlaufzeit, Deployment-Häufigkeit, Wiederherstellungszeit nach fehlgeschlagenem Deployment und Änderungsfehlerrate.
- [ ] Unsere Prüfer haben gesagt, welche Nachweise sie anstelle von Unterschriften akzeptieren.
- [ ] Wir haben eine einseitige Anleitung zum Änderungsprozess mit Beispielen.

## KI-Prompts

**Zweck: die Änderungen des letzten Monats nach Risiko und Freigabeweg klassifizieren.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Zweck: ein Standard-Change-Verfahren schreiben.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: die Diskussion mit einem Prüfer über die Nachweise vorbereiten, die unsere Pipeline erzeugt.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Zweck: einen Versuch mit leichterer Freigabe entwerfen.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [change-request](../../../../skills/change-request/SKILL.md): nutzen Sie ihn, um Änderungsaufzeichnungen zu entwerfen, die tragen, was Betrieb und Prüfer brauchen.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): nutzen Sie ihn, wenn eine Änderung organisatorisch ist und neben Systemen auch für Menschen geplant werden muss.
- [release-notes](../../../../skills/release-notes/SKILL.md): nutzen Sie ihn, um Nutzenden und dem Service Desk zu sagen, was eine Änderung bewirkt.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): nutzen Sie ihn, um umkehrbare Entscheidungen, die schnell getroffen werden können, von nicht umkehrbaren zu unterscheiden, die mehr Sorgfalt brauchen.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um die Risiken, die eine Änderung einführt, und ihre Kontrolle festzuhalten und zu überprüfen.

## Wichtige Quellen

- **Streamlining change approval** (DORA, dora.dev): die Anleitung des Forschungsprogramms zu Peer-Review, Automatisierung und der Rolle eines Change Boards.
- **DORA's software delivery performance metrics** (dora.dev): Definitionen und Warnungen zu Durchlaufzeit, Deployment-Häufigkeit, Wiederherstellungszeit, Änderungsfehlerrate und Nacharbeitsrate.
- **ITIL** (Wikipedia): Hintergrund zu ITIL-Versionen und zum Wechsel zu ITIL 4.
- **Continuous delivery** (Wikipedia): Hintergrund zu Praktiken, die kleine, häufige Änderungen sicher machen.

## Referenzen

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
