# Release- und Deployment-Management

**Das Release- und Deployment-Management bringt Änderungen sicher in die Produktion, und das Ziel in einem agilen Umfeld ist, das Releasen so routinemäßig, automatisiert und umkehrbar zu machen, dass es kein Ereignis mehr ist.**

## Warum das wichtig ist

Viele Organisationen behandeln ein Release noch immer als großen, angespannten Anlass. Ein Termin wird festgelegt, ein Fenster gebucht, Leute bleiben lange, und der Erfolg wird daran gemessen, ob etwas kaputtging. Dieses Muster erzeugt genau das Risiko, das es fürchtet: Je mehr Änderungen in einem Release gebündelt sind, desto schwerer ist zu verstehen, was schiefging, und desto schmerzhafter ist ein Rollback.

Das Forschungsprogramm DORA beschreibt die Alternative. Seine Seite zu Continuous Delivery definiert die Praktik als "die Fähigkeit, Änderungen aller Art bei Bedarf schnell, sicher und nachhaltig freizugeben", und berichtet, dass ihre gute Umsetzung Lieferleistung und Verfügbarkeit verbessert und mit geringerem Burnout und höherer Arbeitszufriedenheit verbunden ist. Die Seite warnt auch, dass häufigeres Deployen ohne Änderung von Prozessen und Architektur tendenziell die Fehlerraten erhöht und Teams ausbrennt. Die Lehre lautet nicht "schneller releasen", sondern "die Fähigkeit aufbauen, sicher zu releasen, und dann oft releasen".

Googles Buch *Site Reliability Engineering* macht in seinem Kapitel zum Release Engineering aus der Praxis einen ähnlichen Punkt: Häufige Releases bedeuten weniger Änderungen zwischen Versionen, sodass Testen und Fehlersuche leichter werden. Dieses Thema stützt sich auf diese beiden Quellen, auf die anderen änderungsbezogenen Themen des Leitfadens und auf weit verbreitetes ITIL-Vokabular, das dieser Leitfaden nicht am Text des Framework-Eigners bestätigen konnte. Betrachten Sie die Quellen als stark, konkret und auf die beschriebenen Kontexte begrenzt.

## Kernkonzepte

### Release und Deployment

Die beiden Begriffe werden oft verwechselt. Eine verbreitete, im Service-Management weithin genutzte Unterscheidung lautet:

- Ein **Release** ist eine Version eines Services oder einer Komponente, die zur Nutzung bereitgestellt wird. Es ist eine Entscheidung darüber, was Nutzende bekommen.
- Ein **Deployment** ist der Vorgang, eine Version in eine Umgebung zu bringen, etwa in die Produktion.

Sie zu trennen ist wirkungsvoll. Sie können Code in die Produktion deployen, ohne ihn für Nutzende einzuschalten, und ihn später kontrolliert freigeben. Techniken wie Feature-Schalter beruhen auf dieser Trennung (siehe den Wikipedia-Artikel zu Feature Toggles).

### Continuous Delivery und Continuous Deployment

Die Seite von DORA definiert **Continuous Delivery** als die Fähigkeit, Änderungen aller Art bei Bedarf schnell, sicher und nachhaltig freizugeben. Sie unterscheidet sie von **Continuous Deployment**, was bedeutet, jede Änderung so bald wie möglich in die Produktion zu deployen. DORA sagt, Teams "können und sollten mit Continuous Delivery beginnen", auch wenn sie Continuous Deployment nie übernehmen. Die Entscheidung, ob freigegeben wird, bleibt eine geschäftliche Entscheidung; Continuous Delivery macht sie zu einer Wahl statt zu einem Projekt.

### Was die Forschung empfiehlt

Die Seite von DORA listet Praktiken auf, die Continuous Delivery unterstützen:

| Praktik | Was DORA sagt |
|---|---|
| **Testautomatisierung** | Umfassende, verlässliche automatisierte Testsuiten, überwiegend von Entwicklern erstellt und gepflegt |
| **Deployment-Automatisierung** | Deployments vollständig automatisiert, ohne manuellen Eingriff |
| **Trunk-basierte Entwicklung** | Weniger als drei aktive Branches, sehr kurzlebige Branches, seltene Code-Sperren |
| **Lose gekoppelte Teams und Architektur** | Teams können bei Bedarf testen und deployen, ohne sich mit anderen Services abzustimmen |
| **Weitere Praktiken** | Continuous Integration, kontinuierliches Testen, Versionsverwaltung für alle Produktionsartefakte, Verwaltung von Testdaten, Monitoring und Observability, proaktive Benachrichtigungen, Verwaltung von Datenbankänderungen, durchgängige Sicherheit |

Die Seite berichtet, dass Continuous Delivery mit höherer Qualität (weniger Zeit für Nacharbeit oder ungeplante Arbeit), geringerem Burnout und weniger Deployment-Schmerz verbunden ist. Sie sagt auch, Spitzenteams, die im Bericht 2021 Zuverlässigkeitsziele erreichten, hätten mit dreimal höherer Wahrscheinlichkeit eine lose gekoppelte Architektur gehabt als schwache Teams. Sie nennt keine Werkzeuge, Ziel-Deployment-Häufigkeiten oder Umsetzungszeitpläne und merkt an, dass Transformationen häufig einer "J-Kurve" folgen, mit einem Einbruch der Effizienz, wenn Automatisierung die Testanforderungen erhöht und technische Schulden sich anhäufen.

### Erkenntnisse aus der Praxis des Release Engineering

Das Kapitel des SRE-Buchs zum Release Engineering beschreibt den Ansatz einer großen Organisation:

- **Self-Service.** Teams führen ihre eigenen Release-Prozesse durch. Releases sind "wirklich automatisch" und brauchen Beteiligung von Ingenieuren nur, wenn Probleme auftreten.
- **Hohe Geschwindigkeit.** Häufige Releases bedeuten weniger Änderungen zwischen Versionen, was Testen und Fehlersuche leichter macht.
- **Hermetische Builds.** Builds hängen von bekannten Versionen von Werkzeugen und Bibliotheken ab, sodass dieselbe Revision identische Ergebnisse liefert.
- **Durchgesetzte Richtlinien.** Zugriffskontrollen steuern Freigaben, Release-Erstellung und Deployment. Fast alle Änderungen brauchen Code-Review, und jedes Release erzeugt einen Bericht der enthaltenen Änderungen.

Das Kapitel betont auch Konfiguration unter Versionskontrolle und Code-Review und legt nahe, dass Entwickler, Site Reliability Engineers und Release Engineers zusammenarbeiten, statt Ergebnisse "über den Zaun" zu werfen. Es sagt, Organisationen sollten Release-Richtlinien definieren, auch wenn sie sie noch nicht automatisieren oder durchsetzen können, und dass es billiger ist, gute Praktiken früh einzuführen, als sie nachzurüsten. Das Kapitel beschreibt Googles eigene Werkzeuge; Ihre Umgebung wird andere nutzen, übernehmen Sie also die Prinzipien und nicht die Produkte.

### Umgebungen und Beförderung

Ein Release durchläuft meist eine Reihe von Umgebungen, etwa Entwicklung, Test und Produktion. Jeder Schritt liefert Belege. Eine gängige Praxis, im Einklang mit der obigen Forschung, ist, einmal zu bauen und dasselbe Artefakt zu befördern, sodass das, was getestet wurde, das ist, was deployt wird. Die Betonung identischer Builds aus derselben Revision im SRE-Kapitel drückt dieselbe Idee aus.

### Ausrollen und Zurückrollen

Wie ein Release die Nutzenden erreicht, kann abgestuft sein. Das SRE-Kapitel beschreibt Rollouts, die dem Risiko angepasst sind, von stündlichen automatischen Pushes in der Entwicklung bis zu mehrtägigen Rollouts für sensible Infrastruktur, und erwähnt Canary-Releases, bei denen zuerst ein kleiner Anteil des Verkehrs die neue Version erhält. Rollback bedeutet, zur vorherigen Version zurückzukehren, und er sollte so geübt sein wie der Rollout. Teams, die schnell umkehren können, können sich häufiges Deployen leisten (siehe Thema 3.4 — Change Enablement).

### Release-Information für den Support

Support-Mitarbeitende und Nutzende müssen wissen, was sich ändert und was zu tun ist, wenn es schiefgeht. Eine Release-Notiz, eine Liste bekannter Probleme und eine benannte Kontaktperson sind das Minimum (siehe Thema 3.1 — Service Desk). Der Bericht des SRE-Kapitels über enthaltene Änderungen dient als Quelle.

### Maße

Die Seite von DORA schlägt vor, kurze Durchlaufzeiten für reguläre und Notfalländerungen zu messen, niedrige Änderungsfehlerraten, kurze Zeit bis zur Wiederherstellung des Services und Release-Häufigkeiten, die Prioritäten pünktlich liefern. Ihr übergeordnetes Ziel ist, dass niemand außerhalb der Geschäftszeiten arbeitet, um zu deployen. Zu Definitionen und Warnungen zu den Maßen siehe Thema 3.4 — Change Enablement und Thema 5.6 — Metriken und Messung.

## Bewährte Praktiken

1. **Trennen Sie Deployment von Release.** Deployen Sie Code in die Produktion in einem ruhenden Zustand und schalten Sie ihn für Nutzende ein, wenn er bereit ist, mit Feature-Schaltern oder gestuften Rollouts. Das verringert das Risiko eines Deployments und gibt dem Geschäft Kontrolle.
2. **Automatisieren Sie das Deployment.** Streben Sie keine manuellen Schritte an. Manuelle Schritte sind langsam, unterscheiden sich zwischen Personen und verursachen Incidents. Automatisieren Sie in kleinen Schritten, beginnend mit denen, die am häufigsten schiefgehen.
3. **Bauen Sie einmal, befördern Sie das Artefakt.** Erzeugen Sie ein Paket und führen Sie es durch die Umgebungen, damit das, was Sie getestet haben, das ist, was Sie betreiben. Halten Sie fest, welche Version wo ist.
4. **Machen Sie Builds reproduzierbar.** Fixieren Sie Versionen von Werkzeugen und Bibliotheken, damit dieselbe Revision dasselbe Ergebnis liefert. Das folgt dem Prinzip hermetischer Builds im SRE-Kapitel.
5. **Halten Sie Branches kurzlebig.** Die Trunk-basierte Anleitung von DORA lautet: weniger als drei aktive Branches und Branches, die innerhalb etwa eines Tages zusammengeführt werden. Lange Branches machen Releases zu Merge-Ereignissen.
6. **Testen Sie automatisch und halten Sie die Tests schnell und verlässlich.** Streben Sie Feedback in Minuten an. Eine instabile oder langsame Testsuite lässt Menschen sie umgehen.
7. **Releasen Sie in kleinen Chargen.** Kleinere Releases sind leichter zu prüfen, zu testen und rückgängig zu machen. Ist ein Release groß, fragen Sie, wie es sich aufteilen lässt.
8. **Rollen Sie in Stufen aus.** Beginnen Sie mit einem kleinen Anteil der Nutzenden oder Server, beobachten Sie die Signale und erweitern Sie. Legen Sie im Voraus fest, was Sie beobachten und wer den Rollout stoppen kann.
9. **Proben Sie den Rollback.** Wissen Sie, wie man zur letzten guten Version zurückkehrt, und üben Sie es. Ein Rollback, den Sie nie versucht haben, ist eine Hoffnung.
10. **Geben Sie dem Support vor dem Release, was er braucht.** Liefern Sie Release-Notizen, bekannte Probleme und eine Kontaktperson. Beziehen Sie Support-Mitarbeitende in die Abnahme von Änderungen ein, die Nutzende betreffen (siehe Thema 3.1 — Service Desk).
11. **Halten Sie Konfiguration in der Versionsverwaltung.** Behandeln Sie Konfigurationsänderungen wie Code, mit Review und Aufzeichnung. Wählen Sie, wo jede Art von Einstellung lebt, und warum.
12. **Streben Sie Deployment in den Arbeitszeiten an.** DORA nennt dies als übergeordnetes Ziel. Wenn Deployments späte Nächte brauchen, müssen Prozess oder Architektur verbessert werden.

## Fragen zur Diskussion im Team

**Wie lange dauert es und wie viele Schritte umfasst es, eine fertige Änderung in die Produktion zu bringen?**

Verfolgen Sie eine jüngste Änderung von "bereit" bis "live". Listen Sie jeden Schritt auf, wer ihn ausführt und wie lange er wartet. Unterscheiden Sie manuelle von automatisierten Schritten. Teams sind oft überrascht, wie viele Schritte manuell sind und wie viel zwischen ihnen gewartet wird. Die Moderation kann fragen, welcher Schritt die meisten Incidents verursacht hat. Wählen Sie einen zum Automatisieren.

**Was müsste wahr sein, damit wir in den Arbeitszeiten ohne Sorge releasen könnten?**

Fragen Sie, was das Team am Releasen fürchtet. Typische Antworten: kein getesteter Rollback, schwache Tests, unklare Auswirkung auf Nutzende. Jedes ist etwas, das zu bauen ist. Listen Sie sie auf und ordnen Sie sie. Fragen Sie, was der kleinste Schritt für das erste wäre. Das DORA-Ziel, dass niemand außerhalb der Geschäftszeiten zum Deployen arbeitet, ist ein nützliches Ziel zur Diskussion.

**Wo bündeln wir Änderungen, weil Releasen schmerzhaft ist, und was kostet uns das Bündeln?**

Sehen Sie sich den Inhalt jüngster Releases an. Zählen Sie die Änderungen in jedem. Fragen Sie, was geschah, als ein Bündel schiefging, und wie lange es dauerte, die Ursache zu finden. Besprechen Sie, was Releases einzelner Änderungen zum einfachen Weg machen würde. Vereinbaren Sie einen ersten Schritt, etwa eine risikoarme Änderung für sich allein zu releasen.

**Woher wissen wir, dass ein Release funktioniert, sobald es live ist?**

Fragen Sie, welche Signale das Team in der ersten Stunde beobachtet: Fehler, Performance, Nutzermeldungen. Lautet die Antwort "wir warten auf Beschwerden", besprechen Sie Monitoring, das ein Problem schnell zeigen würde. Fragen Sie, wer zusieht und was er täte. Vereinbaren Sie eine kurze Checkliste für nach dem Release.

**Was weiß unser Support-Team über ein Release, bevor es herausgeht?**

Fragen Sie den Service Desk, was er über das letzte Release erfuhr und wann. Vergleichen Sie mit dem, was er brauchte. Besprechen Sie eine einfache Übergabe, etwa eine Release-Notiz und eine benannte Kontaktperson. Beziehen Sie die Menschen, die die Fragen der Nutzenden beantworten, in die Planung riskanter Releases ein.

**Was hält uns davon ab, ohne Sperrzeit zu deployen, und was würde eine Sperrzeit kosten?**

Sperrzeiten sind rund um geschäftliche Spitzenzeiten verbreitet. Fragen Sie, wie lange sie dauern und was sie verzögern. Besprechen Sie, ob kleine, gut getestete Änderungen mit zusätzlichen Sicherungen währenddessen fortschreiten könnten. Die Seite von DORA warnt davor, dieselbe Freigabe auf alle Änderungen ohne Rücksicht auf Risiko oder Zeitpunkt anzuwenden, fragen Sie also, ob die Sperrzeit zu grob ist.

## In der Praxis: ein agiles ITIL-Beispiel

Eine Universität betreibt ein Online-Einschreibesystem für 30.000 Studierende. Das Entwicklungsteam aus acht Personen released einmal pro Semester, in einem Wochenendfenster vor Beginn der Einschreibung. Jedes Release bündelt Hunderte von Änderungen und braucht fünfzehn Personen, eine lange manuelle Checkliste und einen Rufplan. Das letzte Release scheiterte um 2 Uhr nachts am Sonntag, und das Team brauchte vierzehn Stunden, um herauszufinden, welche der Änderungen es verursacht hatte.

Die Teamleitung schlägt eine Änderung des Ansatzes vor. Erstens werden Deployments vollständig skriptgesteuert, beginnend mit den Schritten, die beim letzten Mal scheiterten. Zweitens ergänzt das Team automatisierte Tests für den Einschreibepfad, die bei jeder Änderung laufen und unter zehn Minuten dauern. Drittens werden neue Features ausgeschaltet deployt und nach Prüfungen durch einen Feature-Schalter aktiviert. Viertens wird ein Rollback-Schritt geschrieben und in einer Testumgebung geprobt. Das Studierendensekretariat stimmt einer Regel zu, dass in den drei Wochen der Hauptzeit der Einschreibung kein Release in die Produktion geht, es sei denn, es ist eine Korrektur eines für Nutzende sichtbaren Fehlers.

Innerhalb eines Semesters deployt das Team wöchentlich außerhalb der Hauptwochen, in den Arbeitszeiten, wobei die Release-Notizen am Vortag an den Helpdesk der Studierenden gehen. Einige Releases werden durch instabile Tests verlangsamt, und ein Feature-Schalter wurde versehentlich eingeschaltet gelassen und verursachte kurze Verwirrung. Die Transformation trifft auch die J-Kurve, die die Seite von DORA beschreibt: Zwei Monate lang verlangsamt die Arbeit an Tests und Skripten die Feature-Lieferung. Das Team macht weiter, behebt die instabilen Tests, fügt einen Checklistenschritt zum Entfernen von Schaltern hinzu und vereinbart mit dem Sekretariat, die Sperrregel im nächsten Jahr zu überprüfen. Die Einschreibespitzen des Semesters vergehen ohne Incident im Zusammenhang mit einem Release.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verantworten die Pipeline: Tests, Builds, Deployment-Skripte und Rollback. Investieren Sie in sie wie in ein Produkt mit Nutzenden. Releasen Sie klein, releasen Sie oft und behandeln Sie jedes Release als Beleg über die Pipeline. Beziehen Sie Support und Betrieb ein, wenn Änderungen sie betreffen.

### Service- und Betriebsteams

Betriebsteams profitieren von kleineren, vorhersehbareren Releases und können helfen, indem sie definieren, was wahr sein muss, bevor ein Release akzeptiert wird: Monitoring, Runbooks und Rollback. Wechseln Sie vom Torwächter zum Ermöglicher, indem Sie die Plattform und die Prüfungen bereitstellen, die Delivery-Teams nutzen. Achten Sie nach einem Release auf Signale.

### Führung und Governance

Führungskräfte entscheiden, ob Teams in die Pipeline investieren und die J-Kurve tolerieren können. Fragen Sie nach Durchlaufzeit, Änderungsfehlerrate und Wiederherstellungszeit. Widerstehen Sie dem pauschalen Einfrieren von Releases als Antwort auf Risiko und verlangen Sie stattdessen Belege, dass riskante Releases mehr Prüfung bekommen.

### Kunden und Nutzer

Kunden und Nutzende sehen häufige kleine Verbesserungen und weniger Störungen durch große Einzelereignisse. Rechnen Sie mit Vorankündigung von Änderungen, die Sie betreffen, und mit einem Weg, Probleme zu melden. Wenn Sie Spitzenzeiten haben, sagen Sie es dem Anbieter, damit er gestufte Rollouts darum herum planen kann.

## Typische Fehlerbilder

- **Big-Bang-Releases.** Hunderte Änderungen gehen zusammen hinaus. Releasen Sie stattdessen in kleinen Chargen und trennen Sie Deployment von Release.
- **Manuelles Deployment.** Schritte unterscheiden sich je nach Person und scheitern nachts. Automatisieren Sie stattdessen schrittweise, beginnend mit den riskantesten Schritten.
- **Häufiger releasen ohne Sicherungen.** Fehlerraten steigen und Menschen brennen aus, wie DORA warnt. Investieren Sie stattdessen zuerst in Tests, Rollback und Monitoring.
- **Unterschiedliche Artefakte in unterschiedlichen Umgebungen.** Was getestet wird, ist nicht das, was läuft. Bauen Sie stattdessen einmal und befördern Sie dasselbe Artefakt.
- **Langlebige Branches.** Merges werden zu Ereignissen. Halten Sie Branches stattdessen kurz und integrieren Sie kontinuierlich.
- **Ungeprobter Rollback.** Der erste Rollback geschieht während eines Ausfalls. Proben Sie ihn stattdessen regelmäßig.
- **Der Support erfährt es zuletzt.** Mitarbeitende erfahren von Änderungen durch Nutzende. Senden Sie stattdessen Release-Notizen und eine Kontaktperson vor dem Release.
- **Pauschale Sperrzeiten.** Dieselbe Sperrzeit gilt für alle Änderungen. Lassen Sie stattdessen risikoarme, gut getestete Änderungen mit zusätzlichen Prüfungen durch und behalten Sie die Sperrzeit für das, was riskant ist.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Deployment-Automatisierung | Deployments sind manuell und unterschiedlich | Einige Deployments sind skriptgesteuert | Deployments sind über eine gemeinsame Pipeline automatisiert | Deployment-Fehler und -Dauer werden verfolgt und verringert | Pipelines und Praktiken werden über Teams hinweg geteilt und verbessert |
| Release-Häufigkeit und -Größe | Releases sind selten und groß | Einige Teams releasen in kleineren Chargen | Teams releasen in kleinen Chargen in bekanntem Rhythmus | Häufigkeit, Durchlaufzeit und Größe werden gemessen und abgestimmt | Release-Rhythmen werden über Services und Lieferanten abgestimmt |
| Sicherheit (Tests, Rollout, Rollback) | Testen ist manuell; Rollback ist ungeprobt | Es gibt einige automatisierte Tests und Rollback-Schritte | Automatisierte Tests, gestufter Rollout und geprobter Rollback sind Standard | Änderungsfehlerrate und Wiederherstellungszeit werden verfolgt und verbessert | Sicherheitspraktiken werden über Teams hinweg geteilt und getestet |
| Bereitschaft des Supports | Der Support erfährt von Releases durch Nutzende | Einige Releases haben Notizen | Release-Notizen und Kontaktpersonen sind Standard | Feedback des Supports zu Releases wird gesammelt und danach gehandelt | Support, Delivery und Nutzende planen Releases gemeinsam |

## Checkliste

- [ ] Wir können den Unterschied zwischen Deployen und Releasen benennen und nutzen ihn.
- [ ] Deployments sind ohne manuelle Schritte automatisiert, oder die verbleibenden manuellen Schritte sind aufgelistet.
- [ ] Wir bauen einmal und befördern dasselbe Artefakt durch die Umgebungen.
- [ ] Automatisierte Tests laufen bei jeder Änderung und geben Feedback in Minuten.
- [ ] Branches sind kurzlebig und werden häufig in den Trunk zusammengeführt.
- [ ] Für jede Art von Release gibt es einen Rollback, der geprobt wurde.
- [ ] Rollouts sind gestuft, wo das Risiko es rechtfertigt, mit im Voraus festgelegten Signalen.
- [ ] Release-Notizen und bekannte Probleme erreichen den Service Desk vor einem Release.
- [ ] Konfiguration liegt in der Versionsverwaltung und wird geprüft.
- [ ] Wir verfolgen für jeden Service Durchlaufzeit, Änderungsfehlerrate und Wiederherstellungszeit.

## KI-Prompts

**Zweck: die Schritte von "bereit" bis "live" abbilden und finden, was zu automatisieren ist.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Zweck: eine Release-Notiz für den Service Desk und Nutzende schreiben.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Zweck: einen gestuften Rollout planen.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: ein Argument für die Investition in Release-Automatisierung vorbereiten.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [release-notes](../../../../skills/release-notes/SKILL.md): nutzen Sie ihn, um Nutzenden und dem Service Desk zu sagen, was ein Release ändert.
- [changelog](../../../../skills/changelog/SKILL.md): nutzen Sie ihn, um eine laufende Aufzeichnung der Änderungen nach Version zu führen.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): nutzen Sie ihn, um die automatisierten Tests zu bauen, die häufiges Releasen sicher machen.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): nutzen Sie ihn, um das Testen früher in die Pipeline zu verlagern, damit Probleme eher gefunden werden.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): nutzen Sie ihn, um kleine, häufige Releases und die Prüfungen darum zu planen.

## Wichtige Quellen

- **Continuous delivery** (DORA, dora.dev): Definition, empfohlene Praktiken, Befunde und Fallstricke des Forschungsprogramms.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): die Praxis einer Organisation mit Self-Service, reproduzierbaren Builds und durchgesetzter Release-Richtlinie.
- **Streamlining change approval** (DORA, dora.dev): Anleitung dazu, wie Freigabe in die Lieferung passt.
- **Continuous delivery** (Wikipedia): ein Überblick über die Praktik und ihre Geschichte.

## Referenzen

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
