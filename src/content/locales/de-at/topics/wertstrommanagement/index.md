# Wertstrommanagement

**Das Wertstrommanagement betrachtet den ganzen Weg von der Anfrage zum Wert, misst, wo Arbeit wartet, und verbessert den Fluss über Teams hinweg, weil die größten Verzögerungen in einer Serviceorganisation meist zwischen Teams liegen, nicht in ihnen.**

## Warum das wichtig ist

Die meisten Teams messen ihre eigene Arbeit: geschlossene Tickets, fertiggestellte Stories, freigegebene Änderungen. Diese Zahlen können gut aussehen, während der Kunde wochenlang wartet. Der Grund ist, dass der größte Teil der verstrichenen Zeit einer typischen Anfrage mit Warten verbracht wird, in Warteschlangen, auf Genehmigungen, zwischen Teams. Ein Team, das seinen eigenen Schritt beschleunigt, ändert womöglich nichts für die Person, die gefragt hat.

Lean-Denken hat eine Methode, das zu sehen: die Wertstromkarte, die jeden Schritt vom Beginn eines Prozesses bis zum Kunden aufzeichnet und Zeit und Menge in jeder Stufe festhält. ITIL 4 hat seine eigene Vorstellung eines Wertstroms, einer Menge von Aktivitäten, die einen Service schaffen und liefern und Aktivitäten der Wertschöpfungskette in verschiedenen Reihenfolgen kombinieren (siehe Thema 2.6 — Die Service Value Chain). Beide passen zusammen. Die ITIL-Vorstellung sagt, was ein Strom ist, und die Lean-Methode zeigt, wie man einen misst und verbessert.

Wertstrommanagement geht über einen einmaligen Workshop zur Kartierung hinaus. Es bedeutet, den Arbeitsfluss laufend zu steuern, mit gemeinsamen Messgrößen, einer benannten verantwortlichen Person und regelmäßigen Reviews, die jedes Team im Strom einbeziehen. Die Fähigkeitenliste von DORA enthält die Sichtbarkeit der Arbeit im Wertstrom und Grenzen für laufende Arbeit, und ihre Anleitung zu Grenzen beschreibt, alle Arbeit sichtbar zu machen, auch die außerhalb des Teams. Dieses Thema stützt sich auf den Wikipedia-Artikel zur Wertstromkartierung, auf DORA und den Kanban Guide und nennt, wo die Quellen schweigen.

## Kernkonzepte

### Was ein Wertstrom ist

Ein **Wertstrom** ist die Abfolge von Schritten, durch die aus einer Anfrage gelieferter Wert wird. Der [Wikipedia-Artikel zur Wertstromkartierung](https://en.wikipedia.org/wiki/Value-stream_mapping) beschreibt die Methode als Lean-Management-Technik, die den Ist-Zustand analysiert und einen Soll-Zustand für die Ereignisse entwirft, die ein Produkt oder einen Service vom Beginn eines Prozesses zum Kunden führen. In der ITIL-Sicht ist ein Wertstrom eine bestimmte Menge von Aktivitäten, die einen bestimmten Service oder ein bestimmtes Produkt schaffen und an Kunden liefern (siehe Thema 2.6 — Die Service Value Chain).

Beispiele in einer Serviceorganisation: einen Incident von der Meldung bis zur Wiederherstellung bearbeiten, eine Änderung von der Idee bis zur Produktion liefern, einen neuen Kunden einarbeiten oder eine Zugangsanfrage erfüllen.

### Wertstromkartierung

Der Artikel sagt, die entstehende visuelle Karte zeige jeden kritischen Schritt und beziffere Zeit und Menge in jeder Stufe. Er beschreibt zwei Karten: eine **Ist-Karte**, aufgebaut durch Beobachten und Verfolgen des tatsächlichen Material- und Informationsflusses, und eine **Soll-Karte**, die den idealen Prozess nach Verbesserungen zeigt. Der Ist-Zustand muss zuerst aufgebaut werden. Der Artikel nennt als Quelle *Learning to See* von Mike Rother und John Shook (Lean Enterprise Institute, 1999). Er listet Softwareentwicklung, Produktentwicklung, Projektmanagement sowie administrative und Büroprozesse als Einsatzgebiete auf und erwähnt zwei softwarebezogene Ansätze von Ali und Kollegen: die Analyse von Entwicklungsartefakten und die Analyse des Informationsflusses.

Der Artikel definiert weder Durchlaufzeit noch Bearbeitungszeit noch den Anteil vollständig und richtig, listet keine Symbole auf und erörtert keine Kritik. Die DORA-Seite zur kontinuierlichen Lieferung verweist jedoch auf die Wertstromkartierung als Weg, Engpässe aufzudecken, indem verstrichene Zeit mit wertschöpfender Zeit verglichen und der Anteil vollständig und richtig (%C/A) gemessen wird. Die folgenden Begriffe sind der übliche Sprachgebrauch:

| Begriff | Bedeutung im üblichen Sprachgebrauch |
|---|---|
| **Durchlaufzeit** | Gesamte verstrichene Zeit vom Beginn einer Anfrage bis zur Lieferung |
| **Bearbeitungszeit** (oder Berührungszeit) | Zeit, in der jemand tatsächlich an der Anfrage arbeitet |
| **Wartezeit** | Zeit, in der die Anfrage zwischen Schritten ungenutzt liegt |
| **Anteil vollständig und richtig (%C/A)** | Anteil der an einem Schritt ankommenden Arbeit, der keine Korrektur oder fehlende Information braucht |
| **Flusseffizienz** | Bearbeitungszeit geteilt durch Durchlaufzeit, in Prozent |

Die Flusseffizienz ist ein einfaches Verhältnis, das für die Veranschaulichung in diesem Leitfaden berechnet wird, und die gelesenen Quellen definieren sie nicht.

### Flussmessgrößen

Der Kanban Guide nennt vier Messgrößen des Flusses (siehe Thema 1.5 — Kanban): **laufende Arbeit** (begonnene, aber nicht beendete Elemente), **Durchsatz** (je Zeitraum fertiggestellte Elemente), **Alter von Arbeitselementen** (Zeit seit dem Beginn eines unfertigen Elements) und **Zykluszeit** (Zeit von Beginn bis Ende bei einem abgeschlossenen Element). Diese wirken auf der Ebene des Arbeitsablaufs eines Teams. Das Wertstrommanagement wendet dieselben Ideen über Teams hinweg an: Messen Sie die verstrichene Zeit von der Anfrage bis zum Erhalt durch den Kunden, nicht ab dem Moment, in dem ein einzelnes Team sie aufnimmt.

Die Messgrößen der Softwarelieferung von DORA, etwa die Durchlaufzeit von Änderungen, betreffen einen Abschnitt des Stroms, vom Commit bis zur Produktion (siehe Thema 3.4 — Change Enablement). Der frühere Teil, von der Idee bis zum Commit, gehört ebenfalls zum Wertstrom und hat oft die längsten Wartezeiten.

### Grenzen für laufende Arbeit

Die DORA-Seite zu Grenzen für laufende Arbeit (WIP) beschreibt sie als Obergrenzen dafür, wie viele Elemente in jeder Stufe eines Arbeitsablaufs sein können. Sie sagt, die Forschung von DORA verbinde WIP-Grenzen nur in Kombination mit anderen Fähigkeiten, etwa visuellen Anzeigen und Rückkopplungsschleifen aus dem Monitoring, mit besserer Leistung der Softwarelieferung, und gibt keine Effektgrößen. Ihre Umsetzungshinweise umfassen, alle Arbeit sichtbar zu machen, auch die außerhalb des Teams, jede Grenze nach der Kapazität des Teams zu setzen, Grenzen fest zu halten und nicht anzuheben, wenn Menschen untätig sind, Arbeit nur zu ziehen, wenn ein Platz frei wird, die Durchlaufzeit und ihre Schwankung zu verfolgen, Übergaben zu verringern und Grenzen schrittweise zu senken, um den nächsten Engpass aufzudecken. Zu den genannten Fallstricken gehören, vor- und nachgelagerte Arbeit zu ignorieren, was zu lokaler Optimierung führt, und Grenzen zu hoch anzusetzen.

### Den ganzen Strom sehen

Der Fallstrick der "lokalen Optimierung" ist der zentrale. Ein Strom mit fünf Teams hat fünf Warteschlangen. Verdoppelt ein Team seine Geschwindigkeit, ändert sich die Durchlaufzeit des Stroms womöglich kaum, weil die anderen weiter warten. Das Wertstrommanagement sucht den **Engpass**, den Schritt, der das Ganze begrenzt, und verbessert zuerst ihn (siehe Thema 1.7 — Lean Softwareentwicklung zur Optimierung des Ganzen).

### Verantwortung und Governance

Ein Strom überquert Teams, braucht also jemanden, der für das Ganze verantwortlich ist. Eine Wertstrom-Verantwortliche (oder eine kleine Gruppe) hält die Karte, die Messgrößen und die Verbesserungsliste und beruft die Teams ein. Ohne Verantwortliche steht niemand für den Strom ein, und Verbesserungen bleiben innerhalb von Teamgrenzen. Das hängt mit Produkt- und Service-Verantwortung zusammen (siehe Thema 5.5 — Produkt- und Service-Verantwortung).

### Werkzeuge

Softwarewerkzeuge für das Wertstrommanagement sammeln Daten aus Ticketing, Quellcodeverwaltung und Pipelines, um den Fluss über die Werkzeugkette zu zeigen. Die für diesen Leitfaden gelesenen Quellen erörtern solche Werkzeuge nicht. Prüfen Sie bei einer Bewertung, welche Daten sie brauchen, wie genau sie sind und ob die Messgrößen eine Frage beantworten, die Sie haben. Eine grobe, von Hand mit den beteiligten Teams gezeichnete Karte ist ein guter Anfang und zeigt oft mehr als ein Dashboard.

### Grenzen

Der Wikipedia-Artikel erörtert keine Kritik, und die DORA-WIP-Seite gibt weder Effektgrößen noch Zielwerte. Praktische Warnungen, als Erfahrung angeboten, sind Kartierung, die nie zu Veränderung führt, Messgrößen, die zum Reihen von Teams genutzt werden, und Karten, die aus der Erinnerung von Führungskräften gezeichnet werden statt aus der Beobachtung echter Elemente.

## Bewährte Praktiken

1. **Wählen Sie einen Strom, der zählt.** Wählen Sie einen Fluss, der Nutzenden wichtig ist, etwa eine Änderung, die die Produktion erreicht, oder eine Zugangsanfrage. Ein enger, echter Strom lehrt mehr als ein breiter, abstrakter.
2. **Kartieren Sie anhand echter Elemente.** Verfolgen Sie mehrere jüngste Elemente von Anfang bis Ende und halten Sie die tatsächlichen Daten fest, nicht das Prozessdokument. Beobachtung schlägt Erinnerung, wie die Betonung des Artikels auf dem Beobachten und Verfolgen des echten Flusses nahelegt.
3. **Halten Sie Zeit und Warten in jedem Schritt fest.** Notieren Sie für jeden Schritt die Arbeitszeit und das Warten davor. Die Wartezeiten sind meist die Geschichte.
4. **Beziehen Sie alle im Strom ein.** Laden Sie Menschen aus jedem Team ein, das das Element berührt, einschließlich Genehmigenden und Lieferanten. Kartieren Sie gemeinsam, damit niemand vom Ergebnis überrascht wird.
5. **Berechnen Sie Durchlaufzeit, Bearbeitungszeit und Flusseffizienz.** Vergleichen Sie die verstrichene Zeit mit der Arbeitszeit und sehen Sie, wie viel Warten ist. Nutzen Sie die Zahlen, um Gespräche zu beginnen.
6. **Sehen Sie auf die Genauigkeit.** Fragen Sie, wie oft Arbeit unvollständig oder falsch an einem Schritt ankommt und Nacharbeit verlangt. Ein Schritt mit niedrigem Anteil vollständig und richtig verursacht Verzögerung weiter unten.
7. **Finden Sie den Engpass.** Bestimmen Sie den Schritt, der den ganzen Strom begrenzt, und verbessern Sie zuerst ihn. Andere Schritte zu verbessern bringt wenig.
8. **Zeichnen Sie den Soll-Zustand.** Entwerfen Sie mit den Teams einen besseren Strom, nicht einen idealen, und wählen Sie die ersten ein oder zwei Änderungen. Vereinbaren Sie Verantwortliche und Termine.
9. **Begrenzen Sie laufende Arbeit.** Begrenzen Sie, was jede Stufe hält, setzen Sie Grenzen nach Kapazität, behalten Sie sie bei, wenn Menschen untätig sind, und senken Sie sie schrittweise, wie die Anleitung von DORA beschreibt.
10. **Machen Sie die Arbeit sichtbar.** Zeigen Sie den Strom auf einem gemeinsamen Board oder einer Karte, die Arbeit außerhalb jedes einzelnen Teams einschließt. Aktualisieren Sie sie, wenn Elemente weiterwandern.
11. **Benennen Sie eine Strom-Verantwortliche.** Wählen Sie eine Person, die für die Leistung des Stroms einsteht, die Teams einberufen und Verbesserungen zu den Führungskräften tragen kann.
12. **Überprüfen Sie regelmäßig.** Halten Sie einen kurzen monatlichen Review von Durchlaufzeit, Wartezeiten und Verbesserungsliste. Zeichnen Sie die Karte nach bedeutenden Änderungen neu.

## Fragen zur Diskussion im Team

**Wenn wir eine Anfrage vom ersten Kontakt bis zum Erhalt durch den Kunden verfolgten, wie lange würde es dauern, und wie viel davon ist Arbeitszeit?**

Wählen Sie ein jüngstes Element und sammeln Sie die Daten. Bitten Sie Menschen, die Antwort zu schätzen, bevor sie hinsehen. Die Schätzung ist meist optimistisch. Berechnen Sie den Anteil der Arbeitszeit. Die Moderation kann fragen, wo die größte Wartezeit auftrat und wer sie verantwortete. Wählen Sie sie als erstes Ziel.

**Mit wem im Strom haben wir noch nie gesprochen?**

Listen Sie die Teams, Genehmigenden und Lieferanten auf, die ein Element berührt. Markieren Sie die, denen das Team nie begegnet ist. Fragen Sie, was man gewänne, wenn man sie zu einer Kartierungssitzung einlüde. Typische Antworten: Verständnis dafür, warum sie warten, oder was sie brauchen, um schneller zu arbeiten. Laden Sie eine Person ein.

**Was übergeben wir unvollständig, und was erhalten wir unvollständig?**

Fragen Sie nach Beispielen für Arbeit, die zur Nacharbeit zurückkam. Notieren Sie, welche Übergaben die meisten Rückläufe verursachen und was fehlt. Das ist die Idee des Anteils vollständig und richtig in einfachen Worten. Vereinbaren Sie eine kurze Checkliste für eine Übergabe.

**Wo liegt der Engpass in unserem Strom, und was geschieht, wenn wir etwas anderes beschleunigen?**

Besprechen Sie, welcher Schritt die längste Warteschlange hat. Fragen Sie, was mit der Ende-zu-Ende-Zeit geschähe, wenn ein anderer Schritt seine Geschwindigkeit verdoppelte. Es geht darum zu sehen, dass die Verbesserung eines Nicht-Engpasses wenig ändert. Entscheiden Sie, am Engpass zu arbeiten.

**An wie vielen Dingen arbeitet jedes Team gleichzeitig, und was geschähe, wenn wir das begrenzten?**

Zählen Sie die laufende Arbeit je Team. Besprechen Sie, was es bedeutete, mit dem Anfangen aufzuhören. Typische Befürchtungen: Etwas Wichtiges wird warten. Typische Vorteile: Dinge werden fertig. Vereinbaren Sie eine Probegrenze für ein Team und einen Weg, das Ergebnis zu beurteilen.

**Wer ist für diesen Strom als Ganzes verantwortlich?**

Bitten Sie das Team, die Person zu nennen. Gibt es niemanden, besprechen Sie, wer es sein könnte und welche Befugnis sie bräuchte. Die Moderation kann anmerken, dass teamübergreifende Verbesserungen ohne Verantwortliche selten geschehen. Schlagen Sie einen Namen vor und tragen Sie ihn zur zuständigen Führungskraft.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Umweltbehörde erteilt Industriebetreibern Genehmigungen. Antragstellende beklagen, eine typische Genehmigung dauere etwa vier Monate, und die zwölfköpfige Digitalgruppe der Behörde soll sie beschleunigen. Die Gruppe hatte bereits ein schnelleres Online-Antragsformular gebaut, doch die verstrichene Zeit hat sich kaum verändert.

Die Leitung der Gruppe beruft Menschen aus jedem Teil des Stroms ein: das Antragsteam, zwei technische Prüfende, einen Rechtsbeauftragten, das Gebührenbüro und das Team, das die Genehmigungsdokumente ausstellt. Sie kartieren sechs jüngste Genehmigungen vom Tag der Einreichung bis zum Tag, an dem die Genehmigung die Antragstellenden erreichte. Die Ergebnisse sind ernüchternd. Die Gesamtzeit betrug etwa 110 Tage und die Arbeitszeit etwa 12. Die längste Wartezeit lag in der Warteschlange der technischen Prüfung, wo Anträge im Durchschnitt 40 Tage warteten, bevor sie jemand öffnete, und etwa ein Drittel der Anträge kam mit fehlenden Angaben an, die erneut angefordert werden mussten. Das Gebührenbüro und das Dokumententeam fügten wegen Stapelverarbeitung je eine Woche Warten hinzu.

Die Gruppe vereinbart drei Änderungen. Das Online-Formular prüft vor der Einreichung auf die häufig fehlenden Angaben. Das technische Prüfteam setzt eine Grenze für laufende Arbeit und eine Regel, jeden Antrag binnen fünf Arbeitstagen zu öffnen, um die Vollständigkeit zu prüfen. Das Gebührenbüro und das Dokumententeam wechseln von wöchentlichen Stapeln zu täglicher Verarbeitung. Sie benennen die Leitung der Digitalservices als Strom-Verantwortliche und prüfen die Durchlaufzeit monatlich. Nach drei Monaten liegt die mittlere Durchlaufzeit bei etwa 70 Tagen, und der Anteil der wegen fehlender Angaben zurückgesandten Anträge sinkt. Einige Probleme bleiben. Das Prüfteam sagt, die Grenze mache es schwerer, große, komplexe Anträge zu bearbeiten, und der Rechtsbeauftragte ist ein einzelner Verzögerungspunkt, den niemand gezählt hatte. Die Strom-Verantwortliche bittet das Prüfteam, komplexe Fälle in eine eigene Spur zu trennen, und arbeitet mit dem Rechtsbüro an einer zweiten prüfenden Person.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sehen nur einen Teil des Stroms. Nehmen Sie an Kartierungssitzungen teil, teilen Sie Ihre Daten und sehen Sie, was geschieht, bevor Arbeit Sie erreicht und nachdem Sie releasen. Behandeln Sie die Durchlaufzeit des Stroms als gemeinsames Ziel, nicht nur Ihren eigenen Schritt.

### Service- und Betriebsteams

Betriebsteams halten oft die längsten Warteschlangen: Zugang, Genehmigungen, Umgebungen, Support. Seien Sie offen über Ihre Kapazität und Ihre Engpässe. Nutzen Sie die Karte, um vorgelagerte Teams um vollständige Eingaben zu bitten und Ihre Prioritäten zu erklären.

### Führung und Governance

Führungskräfte können teamübergreifende Engpässe beseitigen, die Teams nicht beseitigen können. Benennen Sie Strom-Verantwortliche, verlangen Sie die Ende-zu-Ende-Durchlaufzeit und reagieren Sie auf die Verbesserungen, die die Karte nahelegt. Vermeiden Sie, Stromgrößen zum Reihen von Teams zu nutzen, was ehrliche Daten entmutigt.

### Kunden und Nutzer

Kunden und Nutzende erleben den ganzen Strom. Sagen Sie dem Team, wo Verzögerungen schmerzen, geben Sie zu Beginn vollständige Angaben und nehmen Sie an einer Kartierungssitzung teil, wenn Sie eingeladen werden. Ihre Sicht darauf, wann die Anfrage wirklich beendet war, ist das wahre Ende des Stroms.

## Typische Fehlerbilder

- **Ein einzelnes Team optimieren.** Ein lokaler Gewinn ändert Ende zu Ende nichts. Finden und beheben Sie stattdessen den Engpass.
- **Aus der Erinnerung kartieren.** Die Karte spiegelt, was Führungskräfte glauben. Verfolgen Sie stattdessen echte Elemente mit echten Daten.
- **Fehlende Stimmen.** Lieferanten und Genehmigende sind nicht im Raum. Beziehen Sie stattdessen jedes Team im Strom ein.
- **Eine Karte und keine Änderung.** Das Poster hängt an der Wand. Vereinbaren Sie stattdessen ein oder zwei Änderungen mit Verantwortlichen, bevor die Sitzung endet.
- **Keine Verantwortliche.** Niemand steht für den Strom ein. Benennen Sie stattdessen eine Strom-Verantwortliche mit Befugnis zur Einberufung.
- **Messgrößen als Rangfolgen.** Teams verbergen Wartezeiten. Nutzen Sie Messgrößen stattdessen, um den Strom zu verstehen, und besprechen Sie sie offen.
- **Wandernde Grenzen.** WIP-Grenzen werden angehoben, sobald Menschen untätig sind. Halten Sie stattdessen Grenzen und beheben Sie Ursachen, wie DORA rät.
- **Werkzeug zuerst.** Ein Dashboard wird gekauft, bevor die Fragen bekannt sind. Beginnen Sie stattdessen mit einer handgezeichneten Karte und ergänzen Sie Werkzeuge bei Bedarf.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Den Strom sehen | Der Fluss wird nach Gefühl beurteilt | Einige Teams kartieren ihre eigenen Schritte | Wichtige Ströme werden Ende zu Ende aus echten Elementen mit allen Teams kartiert | Durchlaufzeit, Wartezeiten und Genauigkeit werden gemessen und überprüft | Ströme werden über Organisationen und Lieferanten hinweg kartiert und gemessen |
| Fluss verbessern | Teams beschleunigen ihre eigenen Schritte | Einige teamübergreifende Änderungen werden versucht | Eine engpassorientierte Verbesserungsliste je Strom mit Verantwortlichen | Verbesserungen sind an gemessene Durchlaufzeit gebunden und werden geprüft | Stromverbesserung ist Routine und wird über Ströme hinweg geteilt |
| Grenzen und Sichtbarkeit | Laufende Arbeit ist unbegrenzt und verborgen | Einige Teams nutzen Boards und Grenzen | Arbeit ist über Teams hinweg sichtbar, mit vereinbarten Grenzen | Grenzen werden anhand von Durchlaufzeitdaten justiert | Grenzen und Sichtbarkeit werden über Ströme koordiniert |
| Verantwortung und Governance | Niemand verantwortet den Strom | Informelle Koordinierende existieren | Jeder wichtige Strom hat eine benannte Verantwortliche und einen regelmäßigen Review | Verantwortliche stehen für gemessene Ergebnisse ein | Verantwortliche arbeiten über Ströme zusammen, um das Ganze zu optimieren |

## Checkliste

- [ ] Wir haben einen wichtigen Strom gewählt und aus echten Elementen kartiert.
- [ ] Die Karte zeigt Arbeitszeit und Wartezeit in jedem Schritt.
- [ ] Menschen aus jedem Team im Strom haben an der Kartierung teilgenommen.
- [ ] Wir kennen die Ende-zu-Ende-Durchlaufzeit und wie viel davon Warten ist.
- [ ] Wir haben den Engpass bestimmt und ein oder zwei Änderungen gewählt.
- [ ] Laufende Arbeit ist über Teams hinweg sichtbar, mit vereinbarten Grenzen an wichtigen Stufen.
- [ ] Eine benannte Person verantwortet den Strom.
- [ ] Ein kurzer regelmäßiger Review betrachtet Durchlaufzeit, Wartezeiten und Verbesserungsliste.
- [ ] Wir verfolgen, wie oft Arbeit bei einer Übergabe unvollständig ankommt.
- [ ] Stromgrößen werden nicht zum Reihen von Teams genutzt.

## KI-Prompts

**Zweck: Durchlaufzeit und Flusseffizienz aus echten Elementen berechnen.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Zweck: einen Workshop zur Wertstromkartierung planen.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: die Übergabequalität zwischen zwei Teams analysieren.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Zweck: einen Versuch mit Grenzen für laufende Arbeit entwerfen.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): nutzen Sie ihn, um einen Strom zu kartieren, Zeiten festzuhalten und den Engpass zu finden.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): nutzen Sie ihn, um zu untersuchen, wie Arbeit zwischen Rollen wandert und wo sie wartet.
- [kanban](../../../../skills/kanban/SKILL.md): nutzen Sie ihn, um Visualisierung und Grenzen für laufende Arbeit im Strom einzurichten.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um zu verstehen, was in den Strom fließt und in welcher Menge.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): nutzen Sie ihn, um zu entscheiden, welche Ströme und Vorhaben Investition verdienen.

## Wichtige Quellen

- **Value-stream mapping** (Wikipedia): die Definition von Ist- und Soll-Karten und ein Verweis auf *Learning to See*.
- **Work in process limits** (DORA, dora.dev): Anleitung zum Setzen und Halten von Grenzen und zum Vermeiden lokaler Optimierung.
- **The Kanban Guide** (kanbanguides.org): Definitionen der vier Flussmessgrößen.
- **Lean software development** (Wikipedia): die Verschwendungsarten und Prinzipien hinter dem Denken in Wertströmen.

## Referenzen

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
