# Lieferprognosen und Planungskennzahlen

**Lieferprognosen und Planungskennzahlen erlauben einem Team, mit ehrlichen Bandbreiten zu sagen, wann Arbeit voraussichtlich fertig wird und wie viel es übernehmen kann, indem sie den kontinuierlichen Fluss fertiggestellter Arbeit und die Kapazität des Teams beobachten, und sie funktionieren für Serviceteams, wenn geplante und unterbrechungsgetriebene Arbeit gemeinsam gezählt werden.**

## Warum das wichtig ist

Agile Teams streben kontinuierliche Softwarelieferung an, und alle, die von dieser Lieferung abhängen, stellen dieselben Fragen: Wann wird das fertig, wie viel kann das Team übernehmen, und was passiert, wenn etwas Dringendes eintrifft? Ein Team, das diese Fragen nicht mit Belegen beantworten kann, greift auf Versprechen zurück, die es nicht halten kann, und die Menschen, die von ihm abhängen, lernen, jedem Termin zu misstrauen.

Ein Team, das Services betreibt, spürt das schärfer als die meisten. Geplante Verbesserungsarbeit, Service-Requests und Incidents teilen sich dieselben Menschen. Ein Plan, der den ungeplanten Teil ignoriert, scheitert in der ersten Woche, in der ein Incident eintrifft. Eine Prognose, die aus der eigenen Historie des Teams stammt und ihre Bandbreite nennt, übersteht den Kontakt mit der Wirklichkeit besser als ein Termin, der aus Hoffnung stammt.

Dieses Thema beschreibt, wie man aus dem Fluss fertiggestellter Arbeit prognostiziert, wie man um die Teamkapazität herum plant und welche Planungskennzahlen helfen oder in die Irre führen. Scrum, Sprints und Velocity sind eine Möglichkeit zu planen; ein kurzer Abschnitt gegen Ende behandelt sie für Teams, die sie nutzen. Die Maße hier bauen auf den Flussmaßen in Thema 1.5 — Kanban und der weiteren Messhilfe in Thema 5.6 — Metriken und Messung auf.

## Kernkonzepte

### Aus dem Fluss prognostizieren, nicht aus Versprechen

Eine Prognose ist eine Aussage über die Zukunft auf der Grundlage von Belegen aus der Vergangenheit, und sie trägt Unsicherheit. Der Kanban Guide definiert eine Service-Level-Erwartung (Service Level Expectation) als Prognose dafür, wie lange ein Arbeitselement brauchen sollte, um durch den Workflow zu fließen, auf Grundlage vergangener Zykluszeiten, und sagt, dass dies keine Vereinbarung ist. Diese Definition ist ein gutes Modell für jede Lieferprognose: Nutzen Sie echte Historie, sagen Sie, was sie abdeckt, und versprechen Sie nicht mehr, als Sie gemessen haben (siehe Thema 1.5 — Kanban).

Zwei Arten von Prognosen sind verbreitet:

- **Wie lange braucht ein Element?** Sehen Sie sich an, wie lange ähnliche fertige Elemente gebraucht haben, und nennen Sie eine Bandbreite oder eine Aussage wie "die meisten Elemente dieser Art sind innerhalb einer bestimmten Zahl von Tagen fertig".
- **Wie viel schaffen wir bis zu einem Datum, oder wann ist eine Menge von Elementen fertig?** Sehen Sie sich an, wie viele Elemente das Team üblicherweise in einem Zeitraum fertigstellt, und wenden Sie diese Bandbreite auf die verbleibende Arbeit an.

### Die Flussmaße hinter einer Prognose

Der Kanban Guide definiert vier Maße, und sie sind der Rohstoff von Lieferprognosen:

| Maß | Was es Ihnen sagt | Wie es in eine Prognose einfließt |
|---|---|---|
| **Zykluszeit** | Wie lange ein fertiges Element von Anfang bis Ende brauchte | Die Streuung jüngster Zykluszeiten ergibt eine Bandbreite dafür, wie lange ein neues Element brauchen wird |
| **Durchsatz** | Wie viele Elemente in einem Zeitraum fertiggestellt wurden | Die Bandbreite jüngsten Durchsatzes ergibt eine Bandbreite dafür, wie viel in einem künftigen Zeitraum fertig wird |
| **Laufende Arbeit (WIP)** | Wie viele Elemente begonnen, aber nicht fertig sind | Zu viel WIP verlängert Zykluszeiten und macht jede Prognose weniger verlässlich |
| **Alter des Arbeitselements** | Wie lange ein unfertiges Element bereits in Bearbeitung ist | Zeigt Elemente, die schon älter sind als die meisten fertigen, solange noch Zeit zum Handeln ist |

Der Guide merkt an, dass Teams diese Maße umbenennen und bei Bedarf weitere ergänzen können und dass Maße nur zählen, wenn sie beeinflussen, wie das Team arbeitet. Nutzen Sie Perzentile und Bandbreiten, nicht nur Durchschnitte, denn lange Ausläufer verstecken sich in Durchschnitten (siehe Thema 5.6 — Metriken und Messung).

### Eine einfache Prognosemethode

Ein Team kann ohne besondere Werkzeuge prognostizieren:

1. Sammeln Sie den Durchsatz der letzten acht bis zwölf Wochen oder ähnlicher Zeiträume aus echten fertigen Elementen.
2. Nehmen Sie den niedrigsten, einen typischen und den höchsten dieser Werte.
3. Teilen Sie die Zahl der verbleibenden Elemente durch jeden Wert, um eine Bandbreite von Zeiträumen bis zur Fertigstellung zu erhalten.
4. Nennen Sie die Bandbreite, die Daten, aus denen sie stammt, und was sie verändern würde, etwa neue Arbeit, einen Teamwechsel oder eine Abhängigkeit.

Das ist eine Faustregel, kein Standard. Sie setzt voraus, dass künftige Arbeit der vergangenen ähnelt und dass die Elemente im Großen und Ganzen ähnlich groß sind. Trifft das nicht zu, sagen Sie es und behandeln Sie die Bandbreite als breiter. Vergleichen Sie jede Prognose mit dem, was geschah, und passen Sie die Methode an, wie es Thema 3.11 — Verfügbarkeit, Kapazität und Performance für Bedarfsprognosen rät.

### Teamkapazität

Kapazität ist, wie viel Arbeit ein Team in einem Zeitraum aufnehmen kann. Für ein Delivery-Team ist sie nicht die Zahl der Personen mal die Tage im Zeitraum. Urlaub, Support-Aufgaben, Meetings und ungeplante Arbeit verringern alle, was für geplante Elemente zur Verfügung steht. Eine nützliche Kapazitätsaussage nennt Personen und verfügbare Tage und zieht dann einen Anteil für ungeplante Arbeit ab, der sich daran bemisst, was die letzten Zeiträume gezeigt haben.

Der Skill Capacity Planning und Thema 3.11 — Verfügbarkeit, Kapazität und Performance beschreiben Kapazität für Services und Infrastruktur. Dieselbe Logik gilt für ein Team: Planen Sie mit Bandbreiten, prüfen Sie am Geschehenen und überarbeiten Sie den Plan, wenn sich die Fakten ändern.

### Geplante und ungeplante Arbeit zusammen

Serviceteams erhalten Incidents, dringende Anfragen und Änderungen, die niemand eingeplant hat. Werden diese nicht gezählt, ist die Prognose für geplante Arbeit zu optimistisch. Geben Sie ungeplanter Arbeit eigene Elementtypen, zählen Sie, wie viele eintreffen und wie lange sie dauern, und halten Sie die Daten neben der geplanten Arbeit. Das gibt dem Product Owner oder Service Owner zugleich Belege dafür, welche wiederkehrenden Incidents Kapazität verbrauchen, was Entscheidungen zur Behebung der Ursachen stützt (siehe Thema 3.3 — Problem Management).

### Kontinuierlicher Lieferfluss und Release-Takt

Teams, die kontinuierlich liefern, geben kleine Änderungen frei, wenn sie fertig sind, statt auf das Ende eines Planungszeitraums zu warten. Das verkürzt die Zeit zwischen Fertigstellung und Auslieferung und macht Prognosen leichter überprüfbar: Jedes fertige Element ist ein Datenpunkt. Änderungen folgen weiterhin dem Ansatz der Organisation zum Change Enablement, und vorab genehmigte Standard-Changes helfen hier (siehe Thema 3.4 — Change Enablement und Thema 3.5 — Release- und Deployment-Management).

### Wenn Sie Scrum, Sprints und Velocity nutzen

Manche Teams planen in Zyklen fester Länge. Der Scrum Guide 2020 von Ken Schwaber und Jeff Sutherland definiert Scrum als leichtgewichtiges Framework für adaptive Lösungen komplexer Probleme. Seine Ereignisse finden innerhalb des Sprints statt, einer Zeitbox von höchstens einem Monat. Dieser Abschnitt behandelt das Minimum, das ein Team braucht, wenn es sie nutzt; lesen Sie den Guide selbst, bevor Sie die Arbeitsweise eines Teams ändern.

- **Sprint und Sprint Goal:** Der Sprint ist die Zeitbox, und das Sprint Goal ist das einzelne Ziel dafür. Ein Ziel, das jemand außerhalb des Teams verstehen kann, steuert Entscheidungen besser als eine Liste von Tickets.
- **Product Backlog, Product Owner und Scrum Master:** Das Product Backlog ist eine geordnete Liste dessen, was das Produkt braucht. Der Product Owner ist eine Person, die für dessen Reihenfolge verantwortlich ist, und der Scrum Master ist dafür verantwortlich, Scrum einzuführen und dem Team bei der Anwendung zu helfen.
- **Increment und Definition of Done:** Ein Increment ist ein nutzbarer, verifizierter Schritt hin zum Product Goal, und die Definition of Done ist der Qualitätsstandard, den Arbeit erfüllen muss, um zu zählen. Ein Serviceteam kann Monitoring, ein Runbook und einen getesteten Rollback darin aufnehmen.
- **Ereignisse:** Sprint Planning, Daily Scrum, Sprint Review und Sprint Retrospective. In der Retrospektive prüft das Team, wie es gearbeitet hat, und plant Verbesserungen (siehe Thema 6.1 — Team-Gespräche).
- **Velocity:** eine schätzungsbasierte Zahl, die manche Teams nutzen, um zu planen, wie viel Arbeit sie übernehmen. Nutzen Sie sie nur für die eigene Planung des Teams. Wird sie zum Ziel, blähen Teams Schätzungen auf; bevorzugen Sie daher Flussmaße, die fertige Elemente zählen, und Ergebnismaße.

Der Guide sagt, Scrum sei ein Framework, keine vollständige Methode. Es deckt weder Incident-Reaktion noch Service-Level noch den Änderungsprozess ab, und wer nur Teile nutzt, dessen Ergebnis ist nicht Scrum. Wenn Sie es anpassen, benennen Sie die Variante ehrlich. Eine Mischung aus Scrum-Ereignissen und Kanban-Fluss wird manchmal [Scrumban](https://en.wikipedia.org/wiki/Scrumban) genannt.

## Bewährte Praktiken

1. **Prognostizieren Sie aus Ihrer eigenen Historie.** Nutzen Sie die Zykluszeiten und den Durchsatz jüngster fertiger Elemente und nennen Sie den Zeitraum, den die Daten abdecken. Übernehmen Sie keine Zahlen von einem anderen Team.
2. **Geben Sie eine Bandbreite an, nicht ein einzelnes Datum.** Zeigen Sie einen niedrigen, einen typischen und einen hohen Fall und sagen Sie, was das Ergebnis verschieben würde. Ein Datum ohne Bandbreite verspricht eine Sicherheit, die Sie nicht haben.
3. **Zählen Sie ungeplante Arbeit.** Erfassen Sie Incidents, dringende Anfragen und Unterbrechungen als Arbeitselemente mit eigenen Typen. Messen Sie, wie viele eintreffen und wie lange sie dauern.
4. **Legen Sie die Kapazität aus Daten fest.** Listen Sie Personen und verfügbare Tage auf, ziehen Sie Urlaub und Support-Aufgaben ab und halten Sie anhand jüngster Zeiträume einen Anteil für ungeplante Arbeit zurück. Überprüfen Sie den Anteil regelmäßig.
5. **Begrenzen Sie laufende Arbeit.** Zu viel begonnene Arbeit verlängert Zykluszeiten und schwächt jede Prognose. Setzen Sie eine Grenze und überprüfen Sie sie, wenn sich die Daten ändern (siehe Thema 1.5 — Kanban).
6. **Beobachten Sie das Alter der Arbeitselemente täglich.** Das Alter zeigt Probleme bei unfertigen Elementen, solange noch Zeit zum Handeln ist. Prüfen Sie zuerst die ältesten Elemente.
7. **Nutzen Sie Perzentile und Verteilungen.** Sagen Sie, dass die meisten Elemente einer Art innerhalb einer Zahl von Tagen fertig werden, und zeigen Sie den langsamen Ausläufer. Durchschnitte verbergen ihn.
8. **Vergleichen Sie Prognosen mit den tatsächlichen Werten.** Halten Sie nach jedem Zeitraum fest, was prognostiziert wurde und was geschah. Passen Sie die Methode an, nicht nur die Zahl.
9. **Nutzen Sie Schätzungen zur Planung, nicht zur Beurteilung.** Wenn das Team Elemente schätzt, nutzen Sie die Zahlen für die eigene Planung und reihen Sie Personen oder Teams nicht danach (siehe Thema 5.6 — Metriken und Messung).
10. **Machen Sie Prognosen für die sichtbar, die von ihnen abhängen.** Teilen Sie die Bandbreite und die Annahmen mit Kunden und Stakeholdern und aktualisieren Sie sie, wenn sich die Fakten ändern.
11. **Holen Sie Verbesserungsarbeit in denselben Fluss.** Legen Sie Problembehebungen, Monitoring-Arbeit und Automatisierung neben Features, damit die Abwägungen sichtbar sind (siehe Thema 3.15 — Kontinuierliche Verbesserung).
12. **Wenn Sie Sprints und Velocity nutzen, halten Sie sie klein und ehrlich.** Vereinbaren Sie, welchen Teilen von Scrum Sie folgen, benennen Sie die Variante und testen Sie einen flussbasierten Ansatz, wenn Unterbrechungen überwiegen.

## Fragen zur Diskussion im Team

**Wie beantworten wir heute "Wann wird das fertig?", und worauf beruht die Antwort?**

Fragen Sie nach den letzten drei Antworten, die das Team gegeben hat, und danach, worauf jede beruhte. Vergleichen Sie sie mit dem, was geschah. Teams stellen oft fest, dass Termine aus Hoffnung oder aus der Meinung der dienstältesten Person stammten. Fragen Sie anschließend, welche Historie das Team stattdessen nutzen könnte.

**Welcher Anteil unserer Zeit geht in Arbeit, die niemand geplant hat, und wissen wir das aus Daten?**

Zählen Sie über die letzten Wochen geplante Elemente, dringende Anfragen und Incidents. Die Moderation kann fragen, ob der Anteil stabil ist oder saisonal schwankt und wer entscheidet, wann eine Unterbrechung gegenüber geplanter Arbeit gewinnt. Vereinbaren Sie, wie das künftig erfasst wird.

**Wie sehen unsere Zykluszeiten aus, und was würden wir sagen, wenn ein Kunde fragt, wie lange eine typische Anfrage dauert?**

Zeichnen oder listen Sie die Zykluszeiten der letzten fertigen Elemente. Fragen Sie, was die meisten brauchen, was die langsamsten brauchen und was die langsamen erklärt. Besprechen Sie, ob eine Service-Level-Erwartung auf Basis dieser Historie fair wäre und wer sie hören sollte.

**Welche unserer aktuellen Elemente sind bereits älter als die meisten fertigen Elemente?**

Sehen Sie sich die ältesten offenen Elemente an. Fragen Sie, warum jedes feststeckt, wer es freigeben kann und was das Team heute tun wird. Entscheiden Sie zum Schluss, wie oft das Team das Alter prüft.

**Wann hat sich eine Prognose von uns zuletzt als falsch erwiesen, und was haben wir danach geändert?**

Fragen Sie nach einem jüngsten Beispiel, der Prognose und dem Ergebnis. Suchen Sie, was die Prognose übersehen hat: ungeplante Arbeit, eine Abhängigkeit oder größere Elemente als erwartet. Vereinbaren Sie eine Änderung an der Methode und wie das Team sie überprüft.

**Wenn wir Sprints oder Velocity nutzen, was leisten sie für uns, und was würden wir verlieren, wenn wir sie aufgäben?**

Fragen Sie ehrlich, welches Problem jedes löst. Suchen Sie nach Belegen, etwa besserem Fokus oder klareren Zielen, und nach Schaden, etwa aufgeblähten Schätzungen oder ignorierten Unterbrechungen. Die Moderation sollte auf jede Änderung achten, die Feedbackschleifen beseitigt, denn das sind die nützlichen Teile. Vereinbaren Sie ein Experiment und wie die Ergebnisse verglichen werden.

## In der Praxis: ein agiles ITIL-Beispiel

Die IT-Abteilung eines regionalen Krankenhauses hat ein Team von sieben Personen, das die Anwendung zur Patiententerminierung betreut. Klinikleitungen bitten um Termine, und das Team hat sie genannt. Die meisten Termine werden verfehlt, weil laufend Incidents von den Stationen, Anfragen aus den Kliniken und Sicherheits-Patches eintreffen und das Team die meisten Tage damit verbringt.

Die Teamleitung beginnt, jedes Element, geplant oder nicht, mit Start- und Enddatum zu erfassen. Nach acht Wochen zeigen die Daten, dass etwa die Hälfte der Zeit des Teams in ungeplante Arbeit geht und dass die meisten geplanten Elemente in weniger als zwei Wochen fertig werden, mit einem langen Ausläufer von Elementen, die auf ein anderes Team warten. Das Team einigt sich auf drei Änderungen. Es nennt jede Prognose als Bandbreite, auf Basis jüngsten Durchsatzes und jüngster Zykluszeiten. Es hält die Hälfte seiner Kapazität für ungeplante Arbeit zurück und plant nur gegen den Rest. Es überprüft jeden Morgen die ältesten offenen Elemente.

In den nächsten zwei Monaten stimmen die Prognosen meistens, und die Klinikleitungen, die nun eine Bandbreite und ihre Annahmen sehen, planen darum herum. Der Service Owner, ein Betriebsleiter einer Klinik, sieht, welche wiederkehrenden Incidents Kapazität verbrauchen, und erhöht die Priorität einer Behebung eines wiederkehrenden Fehlers bei der Terminsynchronisation; der Fehler hört auf. Schwierigkeiten bleiben. Ein schwerer Incident verdrängt weiterhin einige Arbeit, und die Leitungen, denen die schnellen Antworten der alten Regelung gefielen, finden die Bandbreiten weniger befriedigend. Das Team vereinbart, ihnen jedes Mal zu sagen, was sich in der Prognose geändert hat, wenn sie sich verschiebt, und beim nächsten Review seinen Ansatz für die Verbesserungsarbeit mit einer Methode fester Zyklen zu vergleichen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams profitieren am meisten davon, mit ihren eigenen Flussdaten zu prognostizieren. Erfassen Sie Arbeit, wenn sie beginnt und endet, begrenzen Sie laufende Arbeit und geben Sie kleine Änderungen kontinuierlich frei. Teilen Sie die Bandbreite mit den Wartenden und nutzen Sie die Definition of Done, falls Sie eine haben, um die betriebliche Arbeit einzuschließen, die ein Release unterstützbar macht.

### Service- und Betriebsteams

Betriebsteams verantworten die ungeplante Arbeit, an der Prognosen scheitern. Erfassen Sie Incidents, Anfragen und Änderungen als Arbeitselemente und teilen Sie wiederkehrende Muster, damit sie die Reihenfolge der Arbeit beeinflussen. Nutzen Sie Zykluszeitdaten, um mit Kunden realistische Erwartungen zu setzen, und seien Sie ausdrücklich dazu, wie viel Kapazität in geplante Verbesserung geht.

### Führung und Governance

Führungskräfte erhalten aus Prognosebandbreiten und Flussmaßen ein ehrlicheres Bild als aus Statusberichten. Fragen Sie nach Bandbreiten mit ihren Annahmen, nach der Prognosegenauigkeit im Zeitverlauf und danach, was das Team aufgrund der Daten geändert hat. Vermeiden Sie Zielvorgaben für einzelne Zahlen, die Manipulation erzeugen, und akzeptieren Sie, dass sich eine Prognose verschiebt, wenn die Fakten es tun.

### Kunden und Nutzer

Kunden und Nutzer profitieren von klareren Erwartungen und weniger verfehlten Terminen. Fragen Sie das Team nach der erwarteten Zeit für Ihre Art von Anfrage und erwarten Sie, dass sie auf Historie beruht. Ist Ihre Anfrage dringend, rechnen Sie damit, nach dem Grund gefragt zu werden, denn sie vorzuziehen betrifft die Arbeit aller anderen.

## Typische Fehlerbilder

- **Termine aus Hoffnung versprechen.** Termine stammen aus Meinung und werden verfehlt. Prognostizieren Sie stattdessen aus jüngsten fertigen Elementen und zeigen Sie die Bandbreite.
- **Ungeplante Arbeit ignorieren.** Unterbrechungen zerstören den Plan in jedem Zeitraum. Zählen Sie sie stattdessen als Arbeitselemente und halten Sie Kapazität anhand von Daten zurück.
- **Prognosen mit einer einzigen Zahl.** Ein Datum verbirgt die Unsicherheit. Geben Sie stattdessen einen niedrigen, einen typischen und einen hohen Fall mit Annahmen an.
- **Nur Durchschnitte nutzen.** Der lange Ausläufer langsamer Elemente bleibt verborgen. Nutzen Sie stattdessen Perzentile und Verteilungen.
- **Zu viel beginnen.** Hohe laufende Arbeit verlängert jede Zykluszeit. Begrenzen Sie sie stattdessen und beenden Sie, bevor Sie beginnen.
- **Velocity oder Durchsatz als Leistungsziel nutzen.** Teams blähen Schätzungen auf oder zerteilen Elemente, um gut dazustehen. Nutzen Sie die Zahlen stattdessen zur Planung und beurteilen Sie Ergebnisse (siehe Thema 5.6 — Metriken und Messung).
- **Die Prognose nie prüfen.** Die Methode verbessert sich nie. Vergleichen Sie stattdessen jede Prognose mit dem, was geschah.
- **Feste Zyklen auf Arbeit anwenden, die nicht passt.** Eine Warteschlange unvorhersehbarer Anfragen, in feste Zeiträume gezwängt, erzeugt Frust. Testen Sie stattdessen einen flussbasierten Ansatz und vergleichen Sie die Ergebnisse.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Prognose | Termine stammen aus Meinung | Einige Teams nutzen vergangene Daten | Teams prognostizieren als Bandbreiten aus eigenen Flussdaten | Prognosegenauigkeit wird verfolgt und die Methode verbessert | Prognosen werden über Teams und Lieferanten hinweg abgestimmt |
| Flussmaße | Wenige Maße werden erhoben | Einige Teams erfassen Zykluszeit oder Durchsatz | Die vier Flussmaße werden einheitlich erhoben | Maße werden überprüft und genutzt, um Erwartungen zu setzen | Flussdaten werden über Teams hinweg geteilt und für gemeinsame Planung genutzt |
| Kapazität und ungeplante Arbeit | Unterbrechungen werden nicht gezählt | Einige Teams verfolgen ungeplante Arbeit | Kapazität für ungeplante Arbeit wird aus Daten festgelegt | Anteil und Ursachen ungeplanter Arbeit werden überprüft und verringert | Betriebs- und Delivery-Teams planen Kapazität gemeinsam |
| Nutzung von Schätzungen und festen Zyklen | Schätzungen werden genutzt, um Menschen zu beurteilen | Einige Teams nutzen Schätzungen für die eigene Planung | Teams vereinbaren, welche Praktiken sie nutzen, und benennen Varianten | Die Wirkungen der Praktiken werden an Fluss und Ergebnissen überprüft | Praktiken werden teamübergreifend aus gemeinsamem Lernen angepasst |

## Checkliste

- [ ] Prognosen stammen aus der eigenen Historie fertiger Elemente des Teams.
- [ ] Jede Prognose ist eine Bandbreite mit genannten Annahmen.
- [ ] Incidents, Anfragen und Verbesserungsarbeit werden alle als Arbeitselemente erfasst.
- [ ] Kapazität für ungeplante Arbeit wird aus Daten festgelegt und überprüft.
- [ ] Zykluszeit, Durchsatz, laufende Arbeit und Alter der Arbeitselemente werden verfolgt.
- [ ] Laufende Arbeit hat eine Grenze, die das Team überprüft.
- [ ] Die ältesten offenen Elemente werden regelmäßig überprüft.
- [ ] Prognosen werden nach jedem Zeitraum mit den tatsächlichen Werten verglichen.
- [ ] Schätzungen und Velocity sind, falls genutzt, keine Ziele.
- [ ] Jede Nutzung von Scrum, Sprints oder einer Variante ist aufgeschrieben und ehrlich benannt.

## KI-Prompts

**Zweck: eine Prognosebandbreite aus Ihren eigenen Durchsatzdaten aufbauen.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Zweck: Zykluszeiten analysieren und eine Service-Level-Erwartung vorschlagen.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Zweck: messen, wie viel Kapazität in ungeplante Arbeit geht.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Zweck: die ältesten offenen Elemente prüfen und das Lösen von Blockaden planen.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## KI-Skills

- [kanban](../../../../skills/kanban/SKILL.md): nutzen Sie ihn, um Flussmaße, Begrenzungen laufender Arbeit und eine Service-Level-Erwartung einzurichten.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um zu prüfen, ob die verfügbare Kapazität den prognostizierten Bedarf deckt und was bei einer Lücke zu tun ist.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): nutzen Sie ihn, um die künftige Last als Bandbreite aus vergangenen Daten und Geschäftsplänen abzuschätzen.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): nutzen Sie ihn, um eine Kennzahl zu wählen, ihren Manipulationsvektor und ihre Leitplanke zu benennen und eine Metrik-Charta auszufüllen.
- [scrum](../../../../skills/scrum/SKILL.md): nutzen Sie ihn, wenn das Team in Sprints plant, um Rollen, Ereignisse und Artefakte einzurichten oder zu überprüfen.

## Wichtige Quellen

- **The Kanban Guide** (kanbanguides.org): definiert die Flussmaße und die Service-Level-Erwartung als Prognose auf Basis vergangener Zykluszeiten.
- **The Scrum Guide** (Ken Schwaber und Jeff Sutherland, scrumguides.org): die maßgebliche, kurze Definition von Scrum, für Teams, die Sprints nutzen.
- **Kanban (development)** (Wikipedia): ein Überblick über die Flussmaße und das Pull-System von Kanban.
- **Scrum (software development)** (Wikipedia): ein Überblick über Geschichte, Rollen, Ereignisse und Kritik an Scrum.

## Referenzen

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
