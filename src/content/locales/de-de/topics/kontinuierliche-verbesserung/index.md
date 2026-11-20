# Kontinuierliche Verbesserung

**Kontinuierliche Verbesserung ist die Gewohnheit, Services und Arbeitsweisen immer wieder ein wenig besser zu machen, und sie wird nur real, wenn Verbesserungsarbeit sichtbar, verantwortet, eingeplant und überprüft wird wie jede andere Arbeit.**

## Warum das wichtig ist

Jede Praktik in diesem Leitfaden endet am selben Punkt: aus dem Geschehenen lernen und etwas ändern. Incidents führen zu Problemen, Probleme führen zu Behebungen, Retrospektiven führen zu Experimenten, und Reviews von Service-Leveln führen zu neuen Zielen. Kontinuierliche Verbesserung ist die Praktik, die sie verbindet und in Bewegung hält. Ohne sie erzeugt jede Praktik Einsichten, auf die niemand reagiert.

In vielen Organisationen wird Verbesserung als Erstes zusammengedrückt. Lieferdruck füllt jeden Tag, und Verbesserungsideen sammeln sich in einem Dokument, das niemand öffnet. Agile Teams haben einen Vorsprung, da Retrospektiven eingebaut sind, doch Retrospektiven, die keine Veränderung bewirken, sind häufig. Der Test einer Praxis der kontinuierlichen Verbesserung ist einfach: Können Sie drei Dinge nennen, die in diesem Quartal ihretwegen besser sind?

Der [Wikipedia-Artikel zum kontinuierlichen Verbesserungsprozess](https://en.wikipedia.org/wiki/Continual_improvement_process) beschreibt ihn als fortlaufendes Bemühen, Produkte, Services oder Prozesse zu verbessern, ob schrittweise oder als Durchbruch, mit Feedback, Effizienz und Entwicklung in kleinen Schritten als Kernmerkmalen. Der [Artikel zu PDCA](https://en.wikipedia.org/wiki/PDCA) beschreibt den Plan-Do-Check-Act-Zyklus hinter vielen Verbesserungsmethoden. Beide sind allgemein. ITIL behandelt kontinuierliche Verbesserung als Komponente des Service Value System (siehe Thema 2.3 — Das ITIL Service Value System) und als Praktik, doch der Text des Framework-Eigners stand für diesen Leitfaden nicht zur Verfügung, daher beschreibt dieses Thema das Verbesserungsmodell von ITIL nicht im Einzelnen.

## Kernkonzepte

### Was es ist

Laut Wikipedia ist ein kontinuierlicher Verbesserungsprozess (KVP, englisch CIP), auch Continuous Improvement genannt, ein fortlaufendes Bemühen, Produkte, Services oder Prozesse zu verbessern. Der Artikel beschreibt ihn als Metaprozess für Managementsysteme wie Qualitäts-, Projekt- und Programmmanagement, mit drei Kernmerkmalen: Feedback, Effizienz und Entwicklung in kleinen, schrittweisen Schritten. Er nennt W. Edwards Deming als Pionier, der KVP als Teil eines Systems sah, das Prozess und Kundenfeedback an den Organisationszielen bewertet.

### Continual oder Continuous

Der Artikel merkt einen terminologischen Punkt an: Ende der 1990er Jahre änderten die Entwickler von ISO 9001:2000 "continuous" in "continual", angeblich weil das Komitee schrittweise Verbesserung bevorzugte und meinte, "continuous" könne minütliche Veränderung nahelegen. ITIL nutzt "continual". In der Praxis werden die Begriffe austauschbar verwendet. Wichtig ist regelmäßige, wiederholte Verbesserung.

### Kaizen

**Kaizen** ist ein japanischer Begriff, der ungefähr "Wandel zum Guten" bedeutet. Laut dem Artikel machte Masaaki Imais Buch *Kaizen: The Key to Japan's Competitive Success* von 1986 ihn bekannt, und zu seinen Merkmalen gehören viele kleine Änderungen, Ideen von vorhandenen Beschäftigten, geringe Kosten und Eigenverantwortung der Beschäftigten. Das passt zu agilen Teams, in denen die Menschen, die die Arbeit tun, am besten sehen, was zu verbessern ist (siehe Thema 1.7 — Lean Softwareentwicklung).

### Der PDCA-Zyklus

PDCA (Plan, Do, Check, Act: planen, tun, prüfen, handeln) ist, in den Worten von Wikipedia, eine iterative Methode zur Steuerung und fortlaufenden Verbesserung von Prozessen und Produkten. Er wird auch Shewhart-Zyklus genannt, nach Walter Shewhart bei den Bell Telephone Laboratories in den 1920er Jahren; W. Edwards Deming änderte ihn in den 1940er Jahren und wandte ihn in den 1950er Jahren in Japan auf das Management an. Die Schritte:

| Schritt | Was Sie tun |
|---|---|
| **Plan** | Ziele und die Prozesse festlegen, die nötig sind, um die gewünschten Ergebnisse zu liefern |
| **Do** | Den Plan ausführen, vorzugsweise im kleinen Maßstab |
| **Check** | Die gesammelten Daten mit den erwarteten Ergebnissen vergleichen und nach Trends suchen |
| **Act** | Grundursachen von Problemen untersuchen, den Prozess anpassen und den nächsten Zyklus beginnen |

Der Artikel verknüpft PDCA mit der wissenschaftlichen Methode und ihrem Muster aus Hypothese, Experiment und Auswertung. Eine Variante, PDSA, ersetzt "check" durch "study", was Deming bevorzugte. Der Artikel sagt, Iteration sei zentral: Jeder Zyklus verfeinert Wissen. Teams, die eine Änderung ein "Experiment" mit erklärter Erwartung und einer Prüfung nennen, nutzen dieses Muster.

### Woher Verbesserung kommt

Verbesserungsideen kommen in einer Serviceorganisation aus vielen Quellen:

| Quelle | Beispiel | Wo es behandelt wird |
|---|---|---|
| Incidents und Postmortems | Ein Fehler zeigt einen fehlenden Alarm | Thema 3.2 — Incident Management |
| Problemuntersuchung | Wiederholte Ausfälle zeigen einen Entwurfsfehler | Thema 3.3 — Problem Management |
| Themen des Service Desk | Dieselbe Frage kommt wöchentlich | Thema 3.1 — Service Desk |
| Retrospektiven | Das Team findet seine Übergabe langsam | Thema 1.4 — Lieferprognosen und Planungskennzahlen |
| Flussdaten | Eine Warteschlange wächst an einem Schritt | Thema 1.5 — Kanban |
| Kundenfeedback | Nutzende finden ein Formular verwirrend | Thema 3.6 — Service-Request-Management |
| Service-Level-Reviews | Ein Ziel wird wiederholt verfehlt | Thema 3.7 — Service-Level-Management |
| Audits und Risikoreviews | Eine Kontrolle erweist sich als schwach | Thema 5.7 — Governance, Risiko und Compliance |

Die Praxis der kontinuierlichen Verbesserung sammelt diese in einer sichtbaren Liste, wählt, was getan wird, und prüft die Ergebnisse.

### Verbesserung als Arbeit

Die zentrale Disziplin ist, Verbesserung als Arbeit zu behandeln: Posten in einem Backlog mit Verantwortlichen, erwartetem Nutzen und Terminen. Ohne das hängt Verbesserung von Begeisterung und freier Zeit ab. Das bedeutet auch, den Zielkonflikt mit Lieferarbeit offen zu treffen, damit Kapazität bewusst geschützt wird. Eine verbreitete Regelung ist, einen Anteil jedes Zyklus für Verbesserung zu reservieren oder kurze Verbesserungszyklen neben der Lieferung laufen zu lassen.

### Verbesserung messen

Um zu wissen, dass sich etwas verbessert hat, brauchen Sie ein Vorher und Nachher. Wählen Sie ein Maß, das mit der Änderung zusammenhängt, etwa Zeit bis zur Wiederherstellung des Services, wiederholte Incidents oder Wartezeit, und betrachten Sie es vorher und nachher. Vermeiden Sie Maße, die sich leicht bewegen lassen, ohne etwas zu verbessern. Nutzen Sie mehrere und besprechen Sie, was die Zahlen bedeuten (siehe Thema 5.6 — Metriken und Messung). Die herangezogenen Artikel geben keine Belege zur Wirksamkeit von Verbesserungsprogrammen, die eigenen Ergebnisse der Teams sind also der Beleg.

### Methoden

Viele Methoden unterstützen Verbesserung: Ursachenanalyse, Six Sigma und DMAIC zur datengestützten Verringerung von Fehlern, Wertstromanalyse und Kaizen-Events. Der Wikipedia-Artikel zur kontinuierlichen Verbesserung erwähnt Six Sigma, DMAIC oder das ITIL-Verbesserungsmodell nicht, daher schreibt dieser Leitfaden sie ihm nicht zu. Wählen Sie Methoden passend zur Größe des Problems: eine Retrospektiven-Maßnahme für eine kleine Reibung, ein datengestütztes Projekt für einen hartnäckigen Fehler.

### Grenzen

Der Artikel verzeichnet keine Kritik an kontinuierlicher Verbesserung, und einige seiner Quellen sind schwach oder veraltet. Praktische Risiken sind wohlbekannt: Verbesserungsmüdigkeit, wenn zu viele Änderungen eintreffen, Verbesserungstheater, bei dem Listen wachsen und sich nichts ändert, und lokale Optimierung, bei der ein Team seinen Teil verbessert und das Ganze verschlechtert. Schützen Sie sich mit einer kurzen, sichtbaren Liste und einer regelmäßigen Prüfung der Ergebnisse.

## Bewährte Praktiken

1. **Führen Sie eine sichtbare Verbesserungsliste.** Sammeln Sie Ideen aus Incidents, Retrospektiven, Feedback und Reviews an einem Ort. Geben Sie jedem Posten eine verantwortliche Person, das Problem, das er angeht, und den erwarteten Nutzen.
2. **Behandeln Sie Verbesserungsposten als Arbeit.** Legen Sie sie neben Lieferposten in den Backlog und entscheiden Sie in der Planung, wie viel Kapazität sie bekommen. Schützen Sie diesen Anteil, wenn der Druck steigt.
3. **Wählen Sie wenige und beenden Sie sie.** Arbeiten Sie jeweils an den ein bis drei wertvollsten Posten. Eine lange Liste begonnener Posten ist ein Zeichen für Verbesserungstheater.
4. **Nutzen Sie den Zyklus.** Nennen Sie für jede Änderung den Plan und das erwartete Ergebnis, nehmen Sie die Änderung im kleinen Maßstab vor, prüfen Sie die Daten und entscheiden Sie, ob Sie sie übernehmen, anpassen oder fallen lassen. Schreiben Sie die Entscheidung auf.
5. **Definieren Sie Erfolg, bevor Sie beginnen.** Wählen Sie das Maß und was Sie zu sehen erwarten, vor der Änderung. Das verhindert, jedes Ergebnis hinterher als Erfolg zu erklären.
6. **Beginnen Sie klein und lokal.** Lassen Sie Teams ihre eigene Arbeit innerhalb klarer Grenzen verbessern, ohne auf Erlaubnis zu warten. Reservieren Sie größere Programme für Probleme, die Teams überschreiten.
7. **Teilen Sie, was Sie lernen.** Veröffentlichen Sie kurze Notizen dazu, was sich geändert hat und was geschah, auch Fehlschläge. Andere Teams können es wiederverwenden oder vermeiden.
8. **Schauen Sie auf das Gesamtsystem.** Fragen Sie vor der Übernahme einer Verbesserung, wen sie betrifft. Ein lokaler Gewinn, der einem anderen Team Arbeit hinzufügt, ist insgesamt keine Verbesserung (siehe Thema 2.4 — Die Leitprinzipien von ITIL zum ganzheitlichen Denken).
9. **Überprüfen Sie die Liste regelmäßig.** Sehen Sie sich die Liste einmal im Monat mit dem Team und der verantwortlichen Person des Services an: was erledigt ist, was feststeckt, was fallen gelassen werden sollte. Entfernen Sie Posten, die ihren Sinn verloren haben.
10. **Feiern Sie Ergebnisse, nicht Aktivität.** Würdigen Sie Verbesserungen, die es für Nutzende oder Personal besser gemacht haben, mit Belegen. Belohnen Sie nicht die Zahl von Ideen oder Meetings.
11. **Passen Sie die Methode dem Problem an.** Nutzen Sie schnelle Experimente für kleine Probleme, datenbasierte Methoden für hartnäckige Fehler und holen Sie bei komplexen Spezialhilfe.
12. **Beziehen Sie Nutzende und Lieferanten ein.** Fragen Sie sie, was zu verbessern ist, und laden Sie sie ein, Ergebnisse zu prüfen, wo sie betroffen sind (siehe Thema 3.14 — Lieferantenmanagement).

## Fragen zur Diskussion im Team

**Was ist im letzten Quartal besser geworden, weil wir etwas zu ändern beschlossen haben?**

Fragen Sie nach konkreten Beispielen mit Belegen. Wenn Menschen Mühe haben, ist das der Befund. Gibt es Beispiele, fragen Sie, was sie wirksam machte: eine verantwortliche Person, Zeit, ein klares Maß. Vergleichen Sie mit Verbesserungen, die ins Stocken gerieten. Die Moderation kann fragen, welches Muster in Ihrem Team häufiger ist.

**Wohin gehen unsere Verbesserungsideen?**

Verfolgen Sie mehrere jüngste Ideen: aus einem Incident-Review, einer Retrospektive, einem Kundenkommentar. Finden Sie heraus, wo jede gelandet ist. Oft sind sie über Dokumente und Tickets verstreut. Besprechen Sie eine einzige Liste, wer sie pflegt und wie sie überprüft wird. Erstellen Sie die erste Fassung in der Sitzung.

**Wie viel unserer Kapazität geht in Verbesserung, und wer hat das entschieden?**

Sehen Sie sich die letzten Zyklen an und schätzen Sie den Anteil. Oft ist er weit kleiner, als Menschen glauben, und niemand hat ihn gewählt. Fragen Sie, was Team und Führungskräfte meinen, dass er sein sollte. Vereinbaren Sie einen Anfangsanteil und einen Weg, ihn zu schützen.

**Welche unserer Änderungen haben wir hinterher geprüft?**

Fragen Sie nach den letzten drei Änderungen und welcher Beleg zeigte, dass sie funktionierten. Viele wurden nie geprüft. Besprechen Sie eine einfache Gewohnheit: Sagen Sie vor der Änderung, was Sie zu sehen erwarten und wann Sie nachsehen. Wählen Sie eine aktuelle Änderung, auf die Sie sie anwenden.

**Welche Verbesserung hat uns geholfen und jemand anderem geschadet?**

Sammeln Sie Beispiele lokaler Verbesserungen, die ein Problem anderswohin verschoben. Sie stammen oft aus Änderungen an Übergaben oder Freigaben. Besprechen Sie, wie man Betroffene früher fragt. Ziel ist eine einfache Frage, die vor einer Änderung gestellt wird.

**Was ist der älteste Posten auf unserer Verbesserungsliste, und warum ist er noch da?**

Wählen Sie den ältesten Posten und verfolgen Sie seine Geschichte. Gründe sind keine verantwortliche Person, keine Zeit, Uneinigkeit oder von Ereignissen überholt. Entscheiden Sie, ihn umzusetzen, einzuplanen oder offen fallen zu lassen. Einen Posten bewusst fallen zu lassen ist ein Zeichen einer gesunden Liste.

## In der Praxis: ein agiles ITIL-Beispiel

Ein regionaler Wasserversorger hat eine Plattform für Kundenabrechnung und Zählerablesung, die ein Team aus elf Personen betreibt. Retrospektiven finden alle zwei Wochen statt und erzeugen Listen von Maßnahmen, aber wenige werden abgeschlossen. Incidents werden ausgewertet, und Maßnahmen aus diesen Reviews werden in einem getrennten System abgelegt. Die Aufsichtsbehörde des Versorgers hat um einen Nachweis gebeten, wie der Versorger aus Serviceausfällen lernt.

Die verantwortliche Person des Services und die Teamleitung beschließen, Verbesserung sichtbar zu machen. Sie legen eine einzige Verbesserungsliste an, die Maßnahmen aus Retrospektiven, Incident-Reviews und Kundenfeedback sammelt. Jeder Posten hat eine verantwortliche Person, eine Beschreibung des Problems, den erwarteten Nutzen und ein Maß. Sie reservieren 15 Prozent jedes Zwei-Wochen-Zyklus für Verbesserungsposten und begrenzen die Zahl der laufenden auf drei. Für jeden folgen sie Plan, Do, Check und Act: Sie schreiben auf, was sie zu sehen erwarten, probieren die Änderung an einer Teilmenge, sehen sich die Zahlen nach einem festgelegten Zeitraum an und halten die Entscheidung fest. Ein monatlicher Review mit der verantwortlichen Person des Services und einer Vertretung des Kundenservice betrachtet, was getan und was gelernt wurde.

Nach sechs Monaten hat das Team neun Posten abgeschlossen, darunter eine Behebung eines wiederholten Fehlers beim Import von Zählerdaten, die wiederholte Incidents dieser Ursache auf nahezu null senkte, und eine klarere Erläuterung der Rechnung, die Anrufe zum Thema verringerte. Es hat außerdem einen Nachweis für die Aufsichtsbehörde in Form der Liste und der Prüfungen. Einige Schwierigkeiten bleiben. Zwei Posten wurden ohne Prüfung abgeschlossen, weil der Zyklus weiterzog, und eine Verbesserung am Importprozess machte die Arbeit eines nachgelagerten Berichtsteams langsamer, was erst einen Monat später ans Licht kam. Das Team ergänzt die Vorlage der Liste um die Frage "wer ist noch betroffen" und für jede Prüfung um eine Kalendererinnerung.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verantworten einen großen Teil der Verbesserungsliste. Bringen Sie Ideen aus Retrospektiven und Incidents an einen Ort, beenden Sie, was Sie beginnen, und prüfen Sie Ergebnisse. Seien Sie bereit, Kapazität für Verbesserung aufzuwenden und nicht nur für neue Features.

### Service- und Betriebsteams

Betriebsteams sehen die Reibung zuerst. Speisen Sie Incident-Themen, Kontakte des Desk und Flussdaten in die Liste ein und wirken Sie an der Prüfung der Ergebnisse mit. Begründen Sie Verbesserungen, die Toil und wiederholte Incidents verringern.

### Führung und Governance

Führungskräfte schützen die Kapazität für Verbesserung und fragen nach Ergebnissen. Fragen Sie, was sich verbessert hat und wie es geprüft wurde, nicht wie viele Ideen es gibt. Beseitigen Sie Hindernisse, die Teams nennen, und zeigen Sie, dass Sie es getan haben. Unterstützen Sie Verbesserungen, die Teamgrenzen überschreiten.

### Kunden und Nutzer

Kunden und Nutzende liefern einige der besten Ideen. Sagen Sie dem Team, was Sie ärgert, und bitten Sie darum zu hören, was sich daraufhin geändert hat. Nehmen Sie an Reviews teil, in denen es um Ihren Service geht. Ihr Feedback dazu, ob eine Änderung geholfen hat, ist die direkteste Prüfung, die es gibt.

## Typische Fehlerbilder

- **Ideen ohne Verantwortliche.** Die Liste wächst, und nichts wird getan. Verlangen Sie stattdessen für jeden Posten eine verantwortliche Person und einen erwarteten Nutzen.
- **Verbesserung als freie Zeit.** Die Lieferung verdrängt sie. Reservieren Sie stattdessen Kapazität und schützen Sie sie.
- **Zu viele auf einmal.** Alles wird begonnen, wenig beendet. Begrenzen Sie stattdessen die laufende Arbeit für Verbesserungsposten.
- **Keine Prüfung.** Änderungen werden übernommen, weil sie geplant waren. Nennen Sie stattdessen das erwartete Ergebnis im Voraus und sehen Sie sich die Daten an.
- **Lokale Optimierung.** Ein Team verbessert sich, ein anderes leidet. Fragen Sie stattdessen vorher und nachher, wer sonst betroffen ist.
- **Verbesserungstheater.** Workshops und Poster ersetzen Ergebnisse. Zählen Sie stattdessen abgeschlossene und verifizierte Verbesserungen.
- **Maße, die sich manipulieren lassen.** Die Zahl bewegt sich, und nichts verbessert sich. Nutzen Sie stattdessen mehrere Maße und sehen Sie auf die zugrunde liegende Arbeit.
- **Das Teilen vergessen.** Erkenntnisse bleiben beim Team. Veröffentlichen Sie stattdessen kurze Notizen und laden Sie andere ein, sie wiederzuverwenden.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Sammeln und priorisieren | Ideen sind verstreut und nicht priorisiert | Einige Teams führen Listen | Eine sichtbare Liste je Team mit Verantwortlichen und erwartetem Nutzen | Prioritäten nutzen Daten zu Wirkung und Aufwand | Verbesserungslisten sind über Teams und mit Kunden abgestimmt |
| Kapazität und Fluss | Verbesserung geschieht in freier Zeit | Etwas Kapazität ist reserviert | Ein geschützter Kapazitätsanteil und Grenzen für laufende Arbeit | Kapazität und Durchsatz der Verbesserung werden überprüft | Kapazität wird für übergreifende Verbesserungen über Teams geteilt |
| Ergebnisse prüfen | Ergebnisse werden nicht geprüft | Einige Änderungen werden überprüft | Jede Änderung hat eine erklärte Erwartung und eine Prüfung | Ergebnisse werden gemessen und mit Entscheidungen verknüpft | Belege werden über Teams hinweg geteilt und zur Steuerung der Organisation genutzt |
| Lernen und Verbreitung | Erkenntnisse bleiben lokal | Einige Notizen werden geteilt | Erkenntnisse werden veröffentlicht und überprüft | Die Wiederverwendung von Verbesserungen wird verfolgt | Verbesserungen breiten sich routinemäßig über Teams und Lieferanten aus |

## Checkliste

- [ ] Wir haben eine sichtbare Verbesserungsliste mit Verantwortlichen und erwartetem Nutzen.
- [ ] Ideen aus Retrospektiven, Incident-Reviews, Themen des Desk und Feedback speisen sie alle.
- [ ] Ein geschützter Anteil jedes Zyklus geht in Verbesserungsposten.
- [ ] Wir begrenzen die Zahl laufender Verbesserungsposten.
- [ ] Jede Änderung nennt ein erwartetes Ergebnis und einen Zeitpunkt für die Prüfung.
- [ ] Wir prüfen Ergebnisse und halten die Entscheidung zum Übernehmen, Anpassen oder Fallenlassen fest.
- [ ] Wir fragen vor einer Änderung, wer sonst betroffen ist.
- [ ] Die Liste wird mindestens monatlich überprüft.
- [ ] Wir teilen kurze Notizen dazu, was sich geändert hat und was wir gelernt haben.
- [ ] Wir können drei Dinge nennen, die in diesem Quartal durch Verbesserungsarbeit besser sind.

## KI-Prompts

**Zweck: Verbesserungsideen zu einer einzigen priorisierten Liste zusammenführen.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Zweck: eine Verbesserungsidee in ein kleines Experiment verwandeln.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: den Stand einer Verbesserungsliste überprüfen.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Zweck: prüfen, ob eine Verbesserung gewirkt hat.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## KI-Skills

- [kaizen](../../../../skills/kaizen/SKILL.md): nutzen Sie ihn, um kleine, kontinuierliche Verbesserungen zu planen und zu überprüfen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um Retrospektiven durchzuführen, die Maßnahmen mit Verantwortlichen erzeugen.
- [dmaic](../../../../skills/dmaic/SKILL.md): nutzen Sie ihn für datengestützte Verbesserung hartnäckiger Fehler, durch Define, Measure, Analyze, Improve und Control.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): nutzen Sie ihn, wenn Schwankung und Fehler das Hauptproblem sind und Sie einen statistischen Ansatz brauchen.
- [futurespective](../../../../skills/futurespective/SKILL.md): nutzen Sie ihn, um gemeinsam vorauszuschauen und Verbesserungen für den nächsten Zeitraum zu vereinbaren.

## Wichtige Quellen

- **Continual improvement process** (Wikipedia): die Definition, Kaizen, PDCA und die Terminologie continual gegenüber continuous.
- **PDCA** (Wikipedia): der Plan-Do-Check-Act-Zyklus, seine Ursprünge und Varianten wie PDSA.
- **Kaizen** (Wikipedia): Hintergrund zu kleiner, kontinuierlicher Verbesserung und ihren Ursprüngen in der japanischen Industrie.
- **Lean software development** (Wikipedia): die Lean-Ideen hinter kontinuierlicher Verbesserung in der Softwarearbeit.

## Referenzen

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
