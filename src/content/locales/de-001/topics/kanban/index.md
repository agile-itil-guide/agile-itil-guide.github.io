# Kanban

**Kanban steuert Arbeit als Fluss: Es macht den Workflow sichtbar, begrenzt, wie viel in Bearbeitung ist, und nutzt Flussmaße zur Verbesserung, was zu Serviceteams passt, deren Arbeit kontinuierlich eintrifft und sich nicht in festen Zyklen planen lässt.**

## Warum das wichtig ist

Ein Service Desk, ein Betriebsteam und ein Plattformteam haben eines gemeinsam: Die Arbeit kommt, wann sie kommt. Incidents, Anfragen und kleine Änderungen treffen als Strom ein, und das Team kann einen Monat davon nicht im Voraus planen. Frameworks, die um feste Zyklen herum gebaut sind, etwa Scrum, passen nur mit Anpassungen zu dieser Arbeit (siehe Thema 1.4 — Lieferprognosen und Planungskennzahlen). Kanban wurde für den Fluss entworfen und passt deshalb natürlicher.

Kanban spricht auch die Sprache des Service-Managements. Es fragt, wie lange Arbeit dauert, wie viel wartet und welcher Schritt der Engpass ist, und das sind die Fragen hinter Service-Level, Warteschlangenmanagement und Kapazitätsplanung. Ein Team, das Alter und Zykluszeit seiner Arbeit verfolgt, kann mit Daten statt mit Eindrücken über Service-Level sprechen.

Kanban ist einfach zu beginnen und überraschend leicht schlecht zu machen. Ein Board mit Spalten ist kein Kanban, wenn nichts die laufende Arbeit begrenzt und niemand die Maße nutzt. Dieses Thema erklärt, was der Kanban Guide von einem Team verlangt, woher die Methode kommt und wie man sie auf Servicearbeit anwendet.

## Kernkonzepte

### Was Kanban ist

Der [Kanban Guide](https://kanbanguides.org/english/), dessen aktuelle Version auf Mai 2025 datiert ist und der John Coleman und Daniel Vacanti unter seinen Autoren nennt, definiert Kanban als Strategie zur Optimierung des Wertflusses durch einen Prozess. Er beschreibt Fluss als die Bewegung potenziellen Werts durch ein System. Ziel ist ein Gleichgewicht aus drei Dingen: Wirksamkeit (liefern, was Stakeholder wollen, wann sie es wollen), Effizienz (Ressourcen gut nutzen) und Vorhersagbarkeit (Lieferung mit akzeptabler Unsicherheit prognostizieren). Der Guide sagt, er gelte für Wissensarbeit in jeder Branche.

Das Wort "Kanban" ist japanisch und bedeutet Schild oder Anzeigetafel. Der [Wikipedia-Artikel zu Kanban in der Entwicklung](https://en.wikipedia.org/wiki/Kanban_(development)) sagt, die Methode stamme aus der Lean-Produktion und dem [Toyota-Produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System), mit einem Just-in-time-System, das Ende der 1940er Jahre bei Toyota begann. David J. Andersons Buch von 2010 führt die Softwareversion auf ein Projekt bei Microsoft 2004 und ein Projekt bei Corbis 2006 bis 2007 zurück.

### Die drei Praktiken

Der Kanban Guide nennt drei Praktiken. Ein Team, das alle drei umsetzt und die unten genannten Maße nutzt, praktiziert Kanban im Sinne des Guides.

| Praktik | Was das Team tut | Ein Hinweis für Serviceteams |
|---|---|---|
| **Den Workflow definieren und visualisieren** | Eine Definition of Workflow (DoW) vereinbaren: was ein Arbeitselement ist, wo es beginnt und endet, die Zustände dazwischen, wie laufende Arbeit begrenzt wird, die Regeln für das Weiterschieben von Arbeit und eine Service-Level-Erwartung (SLE). Auf einem Board zeigen. | Die DoW für einen Service Desk könnte Incident-, Anfrage- und Change-Elemente definieren, mit jeweils eigenen Zuständen und Regeln |
| **Elemente im Workflow aktiv steuern** | Die Zahl der Elemente in Bearbeitung kontrollieren, auf alternde Elemente achten und festgefahrene Elemente freimachen. | Eine Grenze offener Incidents je Ingenieur zwingt das Team, Arbeit abzuschließen oder zu übergeben, bevor es mehr beginnt |
| **Den Workflow verbessern** | Die DoW im Zeitverlauf ändern, um Wirksamkeit, Effizienz und Vorhersagbarkeit zu verbessern, in festen Abständen oder bei Bedarf. | Eine Überprüfung der DoW nach einem schweren Incident kann Regeln, Grenzen oder Zustände ändern |

Der Guide schreibt weder ein Board-Layout noch irgendwelche Meetings vor. Teams steht es frei, Praktiken hinzuzufügen, solange die Kernpraktiken, die Maße und das Ziel der Wertoptimierung erhalten bleiben.

### Grenzen für laufende Arbeit und Pull

Die Kontrolle der laufenden Arbeit (WIP) erzeugt, was der Guide ein Pull-System nennt: Neue Arbeit beginnt nur, wenn Kapazität dafür da ist. Der Wikipedia-Artikel nennt das Beispiel eines Schritts "Deployment" mit einer Grenze von fünf. Ist der Schritt voll, kann nichts mehr hinein, bis etwas fertig wird, sodass ein Stau sichtbar wird und Menschen helfen können, ihn aufzulösen. Ohne Grenzen ist ein Board nur ein Bild des Durcheinanders.

### Vier Flussmaße

Der Guide listet vier Maße auf, die ein Team mit Kanban verfolgt:

- **Laufende Arbeit (WIP):** die Zahl der begonnenen, aber nicht fertigen Elemente.
- **Durchsatz:** die Zahl der in einem Zeitraum fertiggestellten Elemente.
- **Alter des Arbeitselements:** wie lange ein unfertiges Element in Bearbeitung ist.
- **Zykluszeit:** wie lange ein fertiges Element von Anfang bis Ende brauchte.

Der Guide sagt, Teams dürften diese umbenennen und sollten bei Bedarf weitere Maße ergänzen, und Maße zählten nur, wenn sie die drei Praktiken beeinflussen. Eine Service-Level-Erwartung ist eine Prognose dafür, wie lange ein Element brauchen sollte, auf Basis vergangener Zykluszeiten. Sie ist kein Versprechen und unterscheidet sich von einem mit einem Kunden ausgehandelten Service-Level-Agreement (SLA). Siehe Thema 3.7 — Service-Level-Management.

### Die weitere Kanban-Literatur

Andere Autoren haben die Methode breiter beschrieben. Der Wikipedia-Artikel nennt Don Reinertsens Arbeit zum Fluss, Jim Bensons und Tonianne DeMaria Barrys *Personal Kanban*, Mike Burrows' *Kanban From the Inside* und Corey Ladas' *Scrumban*, das Kanban als Weg zur Verbesserung von Scrum vorschlug. Einige dieser Quellen listen Praktiken über die drei im Guide hinaus auf, etwa Regeln explizit zu machen, Feedbackschleifen einzuführen und gemeinsam zu verbessern. Betrachten Sie diese als nützliche Ergänzungen, nicht als Anforderungen des Guides.

Der Wikipedia-Artikel trägt einen Hinweis, dass ein wichtiger Mitwirkender eine enge Verbindung zum Thema haben könnte, prüfen Sie seine Aussagen also an den Primärquellen.

### Was Kanban nicht sagt

Kanban ist kein Projektplan, kein Satz von Rollen und kein Release-Prozess. Es sagt Ihnen nicht, wie Sie einen Service entwerfen oder einen Incident bearbeiten. Es gibt Ihnen eine Möglichkeit, Fluss zu sehen und zu steuern, und verlässt sich darauf, dass Sie den Inhalt Ihrer Arbeit mitbringen. Das ist auch seine Stärke: Sie können mit dem Prozess beginnen, den Sie haben, und ihn in kleinen Schritten verbessern (siehe Thema 3.15 — Kontinuierliche Verbesserung).

## Bewährte Praktiken

1. **Beginnen Sie mit dem, was Sie jetzt tun.** Zeichnen Sie den echten Workflow, mit den Zuständen, die Arbeit tatsächlich durchläuft, einschließlich der Wartezeiten. Zeichnen Sie nicht den Prozess, den Sie gern hätten. Sie können nur verbessern, was Sie sehen.
2. **Definieren Sie, was ein Arbeitselement ist.** Entscheiden Sie, ob Incidents, Anfragen und Änderungen ein Elementtyp oder mehrere sind, und geben Sie jedem einen klaren Anfang und ein klares Ende. Gemischte Definitionen machen Maße bedeutungslos.
3. **Setzen Sie WIP-Grenzen und halten Sie sie ein.** Beginnen Sie mit einer Grenze, die sich etwas zu eng anfühlt, etwa ein oder zwei Elemente je Person, und passen Sie sie nach Erfahrung an. Eine Grenze, die ständig gebrochen wird, liefert keine Information, besprechen Sie also jede Überschreitung.
4. **Machen Sie Regeln explizit.** Schreiben Sie auf das Board, wann ein Element in den nächsten Zustand wechseln darf, wer es ziehen darf und was als blockiert gilt. Sichtbare Regeln verringern Streit und erleichtern die Einarbeitung.
5. **Beobachten Sie das Alter der Arbeitselemente, nicht nur die Zykluszeit.** Die Zykluszeit ist erst bekannt, wenn ein Element fertig ist, während das Alter Probleme zeigt, solange noch Zeit zum Handeln ist. Prüfen Sie die ältesten Elemente jeden Tag.
6. **Nutzen Sie eine Service-Level-Erwartung auf Basis der Historie.** Nehmen Sie die Zykluszeiten jüngster fertiger Elemente und stellen Sie zum Beispiel fest, dass die meisten Elemente einer Art innerhalb einer bestimmten Zahl von Tagen fertig werden. Überarbeiten Sie sie, wenn sich die Daten ändern. Versprechen Sie Kunden keine Zahl, die Sie nicht gemessen haben.
7. **Behandeln Sie beschleunigte Arbeit als ausdrückliche Ausnahme.** Dringende Incidents werden die Warteschlange überspringen. Definieren Sie eine Regel, etwa eine Spur mit eigener Grenze, damit Ausnahmen sichtbar sind und den Fluss nicht stillschweigend zerstören (siehe Thema 3.2 — Incident Management).
8. **Suchen Sie den Engpass und helfen Sie ihm.** Wenn ein Zustand immer voll ist, fragen Sie, ob er mehr Kapazität, eine geänderte Regel oder einen anderen vorgelagerten Fluss braucht. Menschen zum Engpass zu bringen schlägt meist, mehr Arbeit hineinzudrücken.
9. **Halten Sie Reviews in regelmäßigem Rhythmus ab.** Der Guide erlaubt Verbesserung in festen Abständen oder bei Bedarf. Ein kurzer wöchentlicher Review der Maße und ein monatlicher Blick auf die DoW funktionieren für viele Teams.
10. **Verbinden Sie das Board mit dem Rest der Organisation.** Machen Sie das Board für Kunden und Nachbarteams sichtbar. Vereinbaren Sie, wie Elemente zwischen Boards wechseln, etwa vom Service Desk zu einem Entwicklungsteam.
11. **Nutzen Sie Maße zum Lernen.** Nutzen Sie die Zahlen, um Fragen zu stellen, nicht um Menschen zu reihen. Wenn Flussdaten zum Ziel werden, manipulieren Teams sie (siehe Thema 5.6 — Metriken und Messung).
12. **Kombinieren Sie mit anderen Frameworks bewusst.** Wenn das Team Scrum-Ereignisse für die Planung und Kanban für den Fluss nutzt, sagen Sie, wofür jedes da ist, und prüfen Sie, ob die Kombination Verwirrung verringert (siehe Thema 1.8 — Agilität skalieren zur Koordination mehrerer Teams).

## Fragen zur Diskussion im Team

**Wenn wir unseren echten Workflow zeichneten, einschließlich der Wartezeiten, wie sähe er aus?**

Bitten Sie jede Person, den Weg eines jüngsten Elements zu zeichnen, und legen Sie die Zeichnungen dann an einer Wand zusammen. Unterschiede zwischen den Zeichnungen zeigen versteckte Schritte und informelle Übergaben. Rechnen Sie mit Überraschungen: Freigaben, die niemand erwähnt hat, Elemente, die auf ein anderes Team warten, und Nacharbeitsschleifen. Markieren Sie anschließend die drei längsten Wartezeiten.

**Wie viel Arbeit ist bei jedem von uns gerade in Bearbeitung, und wie viel davon wartet?**

Zählen Sie die offenen Elemente je Person und markieren Sie, welche blockiert oder untätig sind. Viele Teams stellen fest, dass die meisten Elemente warten und nur wenige bearbeitet werden. Fragen Sie, was jede Person tut, wenn sie blockiert ist, und ob das Beginnen eines neuen Elements die übliche Antwort ist. Ziel ist, darüber zu sprechen, warum Beginnen belohnt wird und Beenden nicht.

**Was ist das älteste Element auf unserem Board, und warum ist es noch da?**

Wählen Sie die drei ältesten Elemente und verfolgen Sie, was geschah. Häufige Antworten sind ein unklarer Verantwortlicher, eine Abhängigkeit von einem anderen Team oder ein Element, das niemand abbrechen will. Fragen Sie, ob das Element fertiggestellt, abgebrochen oder eskaliert werden sollte. Die Moderation kann fragen, welche Regel das Element früher aufgefangen hätte.

**Was versprechen wir unseren Kunden dazu, wie lange Dinge dauern, und was sagen unsere eigenen Zahlen?**

Vergleichen Sie die vereinbarten Service-Level mit den tatsächlichen Zykluszeiten fertiger Elemente. Haben Sie keine Daten, sammeln Sie zuerst einen Monat lang welche. Besprechen Sie jede Lücke offen. Fragen Sie, ob sich das Ziel ändern sollte oder die Arbeitsweise. Denken Sie daran, dass eine Service-Level-Erwartung auf Datenbasis eine Prognose ist, ein SLA dagegen eine Vereinbarung.

**Wenn dringende Arbeit eintrifft, was passiert mit allem anderen?**

Gehen Sie den letzten dringenden Incident durch und sehen Sie, welche Elemente stillstanden. Fragen Sie, ob das Team eine Regel für dringende Arbeit hat und ob jemand weiß, wie viele dringende Elemente es pro Monat bearbeitet. Teams entdecken oft, dass dringende Arbeit Routine und nicht die Ausnahme ist und die Regel das widerspiegeln muss. Vereinbaren Sie anschließend eine Grenze für beschleunigte Elemente.

**Welchen unserer Maße würden wir genug trauen, um eine Entscheidung darauf zu stützen, und welche würden wir ignorieren?**

Bitten Sie die Beteiligten, die verfügbaren Maße danach zu ordnen, wie sehr sie ihnen trauen, und warum. Misstrauen kommt oft aus uneinheitlichen Elementdefinitionen oder aus Lücken in den Daten. Machen Sie daraus keinen Streit über Personen; konzentrieren Sie sich auf die Datenqualität. Wählen Sie zum Schluss ein Maß, das im nächsten Monat verbessert wird.

## In der Praxis: ein agiles ITIL-Beispiel

Der IT-Service-Desk einer Universität hat acht Analysten, die Incidents und Anfragen von Studierenden und Mitarbeitenden bearbeiten. Das Team hat ein Ticket-Werkzeug mit Warteschlangen, aber ohne Grenzen, und jede Analystin und jeder Analyst hat zwischen 20 und 40 offene Tickets. Kunden beklagen, dass Tickets zu verschwinden scheinen, und die Leitung des Service Desk kann nicht sagen, wie lange eine typische Anfrage dauert.

Die Leitung und die Analysten bauen ein Board, das das Werkzeug spiegelt: neu, triagiert, in Bearbeitung, wartet auf den Kunden, wartet auf ein anderes Team und gelöst. Sie vereinbaren eine Grenze von acht aktiven Elementen je Analyst und eine Regel, dass Tickets, die auf andere warten, die Person nennen müssen, die für den nächsten Schritt verantwortlich ist. Sie richten eine Spur für dringende Incidents mit einer Grenze von zwei ein. Einen Monat lang erheben sie nur Daten zu Zykluszeit und Alter.

Nach dem Monat zeigen die Daten, dass die meisten Anfragen in wenigen Tagen gelöst werden, ein langer Ausläufer aber Wochen wartet, meist "wartet auf ein anderes Team". Das Team legt aus den Daten eine Service-Level-Erwartung fest und beginnt einen täglichen Review der ältesten Elemente. Mehrere lange wartende Tickets werden in der ersten Woche geschlossen oder eskaliert. Ein Problem bleibt: Das Netzwerkteam, das viele der wartenden Tickets besitzt, hat kein eigenes Board, und der Service Desk kann seine Warteschlange nicht sehen. Die Leitung des Service Desk richtet ein wöchentliches Gespräch mit der Leitung des Netzwerkteams ein, und die beiden Teams beginnen zu besprechen, eine gemeinsame Sicht auf die Elemente zu teilen, die zwischen ihnen wechseln.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams können Kanban nutzen, um zu sehen, wo Arbeit zwischen Design, Bau, Test und Release wartet. Grenzen für laufende Arbeit verringern die Zahl halbfertiger Änderungen, und Flussdaten können zeigen, wo ein Release-Prozess Aufmerksamkeit braucht. Behandeln Sie Anfragen aus dem Betrieb als Elemente im selben Fluss, mit eigener Regel.

### Service- und Betriebsteams

Betriebsteams sind die natürliche Heimat von Kanban. Visualisieren Sie Incidents, Anfragen und Änderungen in eigenen Zuständen, setzen Sie Grenzen und beobachten Sie das Altern. Nutzen Sie Zykluszeitdaten, um mit Kunden realistische Erwartungen zu setzen, und nutzen Sie blockierte und wartende Zustände, um Gespräche mit anderen Teams anzustoßen.

### Führung und Governance

Führungskräfte profitieren von Flussmaßen als ehrlicherem Bild als Statusberichte. Fragen Sie nach Zykluszeit, Durchsatz und Alter je Art von Arbeit und danach, was das Team aufgrund der Zahlen geändert hat. Vermeiden Sie Zielvorgaben für einzelne Zahlen, die Manipulation erzeugen. Unterstützen Sie Grenzen für laufende Arbeit, auch wenn Stakeholder mehr begonnen sehen wollen.

### Kunden und Nutzer

Kunden gewinnen durch klarere Prognosen und weniger verlorene Anfragen. Fragen Sie das Team nach der Service-Level-Erwartung für Ihre Art von Anfrage und erwarten Sie, dass sie auf Historie beruht. Ist Ihre Anfrage dringend, rechnen Sie damit, nach dem Grund gefragt zu werden, denn das Team muss den Fluss anderer schützen.

## Typische Fehlerbilder

- **Ein Board ohne Grenzen.** Das Board zeigt das Durcheinander, verringert es aber nicht. Setzen Sie stattdessen Grenzen für laufende Arbeit und setzen Sie sie durch, und prüfen Sie jede Überschreitung.
- **Gemischte Elementdefinitionen.** Incidents, Projekte und Aufgaben teilen sich einen Spaltensatz, und die Maße bedeuten nichts. Definieren Sie stattdessen Elementtypen mit getrennten Zuständen und Regeln.
- **Das Altern ignorieren.** Alte Elemente liegen unbemerkt, bis sich ein Kunde beschwert. Prüfen Sie stattdessen die ältesten Elemente jeden Tag und entscheiden Sie über jedes.
- **Maße zu Zielen machen.** Teams zerteilen oder schließen Elemente, um Zahlen zu verbessern. Nutzen Sie die Maße stattdessen, um Fragen zu stellen, und besprechen Sie sie mit dem Team.
- **Versteckte Beschleunigungsspuren.** Dringende Arbeit umgeht Grenzen spurlos. Geben Sie dringender Arbeit stattdessen eine sichtbare Spur, eine Grenze und eine Regel.
- **Ein Board-Layout kopieren.** Ein Team übernimmt die Spalten eines anderen Teams, ohne den eigenen Fluss zu verstehen. Bilden Sie stattdessen zuerst den echten Workflow ab.
- **Kanban als Berichtswerkzeug behandeln.** Führungskräfte nutzen das Board, um Menschen zu beobachten und nicht, um den Fluss zu verbessern. Nutzen Sie es stattdessen als Werkzeug des Teams, um zu entscheiden, was als Nächstes zu tun ist.
- **Den Workflow nie verbessern.** Das Board bleibt jahrelang gleich. Halten Sie stattdessen regelmäßige Reviews der Definition of Workflow ab und ändern Sie sie, wenn die Daten es verlangen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Den Workflow visualisieren | Arbeit lebt in einzelnen Posteingängen und Köpfen | Einige Teams haben Boards, die ihre Zustände zeigen | Teams teilen eine Definition of Workflow mit Elementtypen und Regeln | Das Board wird anhand dessen überprüft und korrigiert, was tatsächlich geschieht | Boards über Teams hinweg zeigen teamübergreifende Elemente und Übergaben |
| Laufende Arbeit begrenzen | Keine Grenzen; Menschen beginnen mehr, als sie beenden | Einige Teams setzen informelle Grenzen | Grenzen sind gesetzt und Überschreitungen werden besprochen | Grenzen werden anhand von Flussdaten angepasst | Grenzen und Kapazität werden über Teams und Lieferanten hinweg ausbalanciert |
| Flussmaße | Wenige Maße werden erhoben | Einige Teams erfassen Zykluszeit oder Durchsatz | Die vier Maße werden einheitlich erhoben | Maße werden überprüft und genutzt, um Service-Level-Erwartungen zu setzen | Flussdaten werden über Teams hinweg geteilt und genutzt, um Kapazität gemeinsam zu planen |
| Verbesserung | Änderungen folgen Krisen | Teams passen das Board gelegentlich an | Teams überprüfen den Workflow in regelmäßigem Rhythmus | Änderungen sind mit Maßen verknüpft und Ergebnisse werden geprüft | Verbesserungen breiten sich ohne zentrale Steuerung zwischen Teams aus |

## Checkliste

- [ ] Wir haben unseren echten Workflow gezeichnet, einschließlich Wartezeiten und Übergaben.
- [ ] Unsere Arbeitselemente sind definiert, mit klarem Anfang und Ende für jeden Typ.
- [ ] Grenzen für laufende Arbeit existieren und jede Überschreitung wird besprochen.
- [ ] Regeln für das Weiterschieben und Blockieren von Elementen stehen auf oder neben dem Board.
- [ ] Wir verfolgen Zykluszeit, Durchsatz, laufende Arbeit und Alter der Arbeitselemente.
- [ ] Wir prüfen die ältesten Elemente täglich oder zumindest wöchentlich.
- [ ] Wir haben eine Service-Level-Erwartung auf Basis unserer eigenen Historie.
- [ ] Dringende Arbeit hat eine eigene sichtbare Spur, Grenze und Regel.
- [ ] Die Definition of Workflow wird in regelmäßigem Rhythmus überprüft.
- [ ] Nachbarteams und Kunden können die Elemente sehen, die sie betreffen.

## KI-Prompts

**Zweck: Ihren echten Workflow beschreiben und finden, wo Arbeit wartet.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Zweck: eine Definition of Workflow für ein Team entwerfen.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Zweck: Flussdaten aus Ihrem Ticketsystem analysieren.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Zweck: einen Review des Boards mit dem Team planen.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## KI-Skills

- [kanban](../../../../skills/kanban/SKILL.md): nutzen Sie ihn, um ein Board, Grenzen für laufende Arbeit und Regeln für ein Service- oder Betriebsteam zu entwerfen oder zu überprüfen.
- [scrumban](../../../../skills/scrumban/SKILL.md): nutzen Sie ihn, wenn ein Team die Planungsereignisse von Scrum zusammen mit dem Flussmanagement von Kanban wünscht.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): nutzen Sie ihn, um abzubilden, wie Arbeit zwischen Teams wandert und wo sie wartet, bevor Sie das Board entwerfen.
- [kaizen](../../../../skills/kaizen/SKILL.md): nutzen Sie ihn, um nach einem Fluss-Review kleine Verbesserungen am Workflow zu planen.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um zu verstehen, welche Arten von Arbeit in welchem Umfang eintreffen, bevor Sie Grenzen und Kapazität festlegen.

## Wichtige Quellen

- **The Kanban Guide** (John Coleman und Daniel Vacanti und andere, kanbanguides.org): die knappe, maßgebliche Definition der drei Praktiken und vier Maße.
- **Kanban (development)** (Wikipedia): ein Überblick über Geschichte und weitere Praktiken, mit Belegen zu den wichtigsten Büchern.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): der Bericht darüber, wie Kanban auf Softwarearbeit angewendet wurde.
- **Toyota Production System** (Wikipedia): Hintergrund zu den Lean-Produktions-Ursprüngen von Kanban.

## Referenzen

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
