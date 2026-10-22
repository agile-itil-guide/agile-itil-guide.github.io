# Problem Management

**Das Problem Management findet und beseitigt die Ursachen hinter wiederkehrenden Incidents, und seine agile Form ist ein stetiger Strom kleiner, belegbasierter Behebungen im Backlog statt gelegentlicher großer Untersuchungen.**

## Warum das wichtig ist

Ein Team, das Incidents gut bearbeitet, aber nie ihre Ursachen beseitigt, läuft im Laufrad. Jeder Ausfall wird repariert, derselbe Fehler kehrt wieder, und die Bereitschaftsingenieure werden müde. Das Problem Management ist die Praktik, die aus dem Laufrad aussteigt: Sie fragt, warum der Incident geschah, ob er wieder geschehen wird und was ihn stoppen würde.

Agile Teams sind dafür gut aufgestellt. Sie haben einen Backlog, in dem eine Behebung mit einem Feature konkurrieren kann, sie arbeiten in kurzen Zyklen, die kleine Behebungen billig machen, und sie halten Retrospektiven ab, in denen Muster auffallen können. Was ihnen oft fehlt, ist die Gewohnheit, Incidents miteinander zu verknüpfen, und die Disziplin, Ursachen ordentlich zu suchen. Das Problem Management liefert beides.

Der [Wikipedia-Artikel zur Ursachenanalyse (Root Cause Analysis)](https://en.wikipedia.org/wiki/Root_cause_analysis) ist die Hauptquelle für dieses Thema, denn die englische Wikipedia hat unter der geprüften Adresse keinen Artikel namens "Problem management". Dieser Artikel beschreibt die Ursachenanalyse (RCA) als Problemlösungsmethode, die im IT-Betrieb und in anderen Bereichen genutzt wird, und trägt Pflegehinweise für fehlende Belege. Das hier verwendete ITIL-Vokabular, etwa Known Error und Workaround, stammt aus weit verbreiteten Beschreibungen der Praktik, die dieser Leitfaden nicht am Text des Framework-Eigners bestätigen konnte. Lesen Sie die aktuellen Veröffentlichungen des Eigners, wenn genaue Definitionen zählen (siehe Thema 2.2 — ITIL).

## Kernkonzepte

### Incident, Problem, Known Error

Drei Begriffe werden zusammen verwendet, und die Unterschiede sind wichtig:

| Begriff | Bedeutung, wie im ITSM weit verbreitet | Beispiel |
|---|---|---|
| **Incident** | Eine ungeplante Unterbrechung eines Services oder Minderung seiner Qualität | Die Buchungsseite ist zwanzig Minuten ausgefallen |
| **Problem** | Die zugrunde liegende Ursache oder vermutete Ursache eines oder mehrerer Incidents | Ein Speicherleck im Buchungsservice |
| **Known Error** | Ein Problem, dessen Ursache identifiziert wurde, meist mit einem festgehaltenen Workaround | Ein Speicherleck ist verstanden; den Service jede Nacht neu zu starten verhindert Ausfälle, bis es behoben ist |

Ein **Workaround** ist eine Möglichkeit, die Auswirkung eines Incidents oder Problems zu verringern oder zu vermeiden, ohne seine Ursache zu beseitigen. Beim Problem Management geht es darum, die Ursache zu beseitigen, beim Incident Management darum, den Service wiederherzustellen (siehe Thema 3.2 — Incident Management).

### Reaktiv und proaktiv

Der Artikel zur Ursachenanalyse unterscheidet in allgemeinen Begriffen reaktive und proaktive Ansätze. Reaktive Arbeit behandelt Symptome schnell. Proaktive Arbeit zielt darauf, Probleme zu verhindern, und stellt diagnostische Genauigkeit vor Geschwindigkeit. In der ITSM-Praxis gibt es beides: Reaktives Problem Management untersucht Probleme nach Incidents, und proaktives Problem Management sucht nach Mustern und Schwächen, bevor sie Incidents verursachen.

### Was eine Grundursache ist

Der Artikel definiert eine Grundursache mit einem praktischen Test: Ein Faktor ist die Grundursache eines Problems, wenn seine Beseitigung verhindert, dass das Problem wiederkehrt. Er unterscheidet eine Grundursache von anderen ursächlichen Faktoren. Das ist eine nützliche Regel. Wenn Sie einen Faktor beseitigen und das Problem trotzdem wiederkehren kann, haben Sie einen Beitragenden gefunden, nicht die Grundursache.

Der Artikel warnt auch vor Grenzen. Er sagt, fehlende Monitoring-Daten, sehr hohe Ereignisvolumina, mehrere Grundursachen und Untersuchende, die bei einer oberflächlichen Ursache stehenbleiben, erschwerten die Analyse. In der IT, merkt er an, fehlten der RCA oft Fehlerbäume oder Entwurfsspezifikationen, sodass "es gibt keine Grundursache" zu einem verbreiteten Spruch geworden sei. Rechnen Sie bei komplexen Systemen mit mehreren beitragenden Ursachen und nicht mit einem einzigen Schuldigen.

### Prinzipien der Ursachenanalyse

Der Artikel listet allgemeine Schritte auf:

1. Das Problem klar beschreiben.
2. Eine Zeitleiste vom Normalbetrieb bis zum Ausfall aufbauen.
3. Die Grundursache von anderen ursächlichen Faktoren trennen.
4. Einen Kausalgraphen zeichnen, der die Grundursache mit dem Problem verbindet.

Er ergänzt, dass Untersuchende auf Abwehrmaßnahmen schauen sollten, die versagten oder fehlten (Barrierenanalyse), Verzerrung in den Untersuchungsrichtungen vermeiden, Korrekturmaßnahmen festlegen und überprüfen sollten, ob diese Maßnahmen wirksam waren.

### Methoden

Der Artikel sagt, laut ISO/IEC 31010 könne die RCA Five Whys, die Fehlermöglichkeits- und Einflussanalyse (FMEA), die Fehlerbaumanalyse, Ishikawa-Diagramme (Fischgräten) und die Pareto-Analyse nutzen. Er schreibt Kaoru Ishikawa das nach ihm benannte Ursache-Wirkungs-Diagramm zu. Er nennt Fischgräten- und Five-Whys-Methoden außerdem "nicht streng genug", eine Meinung, die er nicht mit einer Quelle stützt. Eine praktische Lesart: Einfache Methoden sind gute Ausgangspunkte für Teamdiskussionen, und komplexe oder hochriskante Ausfälle brauchen möglicherweise strengere.

| Methode | Was sie tut | Wann sie hilft |
|---|---|---|
| **Five Whys** | Fragt wiederholt "warum", um sich von einem Symptom in Richtung einer Ursache zu bewegen | Schnelle Diskussion auf Teamebene bei einfachen Ursachenketten |
| **Ishikawa-Diagramm (Fischgräten)** | Gruppiert mögliche Ursachen nach Kategorie | Brainstorming vieler möglicher Ursachen |
| **Pareto-Analyse** | Ordnet Ursachen nach Häufigkeit oder Auswirkung | Wählen, welches wiederkehrende Problem zuerst angegangen wird |
| **Fehlerbaumanalyse** | Bildet Kombinationen von Ausfällen ab, die zu einem Ergebnis führen | Sicherheitskritische oder komplexe Ausfälle |
| **FMEA** | Schaut voraus, wie Teile ausfallen könnten und welche Wirkung das hätte | Proaktiver Entwurfsreview |

### Wirksame Korrekturmaßnahmen

Der Artikel sagt, Korrekturmaßnahmen, die lediglich Papierkram oder Schulung hinzufügen, seien weniger wirksam. In der Praxis legt das nahe, Maßnahmen zu bevorzugen, die das System verändern: eine Prüfung automatisieren, eine Fehlerart beseitigen, eine Sicherung hinzufügen, das Monitoring verbessern. Eine Maßnahme wie "Ingenieure erinnern, vorsichtig zu sein" ist schwach.

### Das Prinzip der Schuldzuweisungsfreiheit

Die Problemuntersuchung teilt das Prinzip der Schuldzuweisungsfreiheit, das für Postmortems im SRE-Buch von Google beschrieben wird: beitragende Ursachen benennen, ohne Einzelne zu beschuldigen, denn Menschen kann man schulen und Systeme kann man reparieren (siehe Thema 3.2 — Incident Management). Eine Untersuchung, die "menschliches Versagen" findet und aufhört, hat meist zu früh aufgehört. Fragen Sie, was den Fehler möglich machte und was ihn erschweren würde.

### Problem Management im agilen Fluss

Ein praktischer agiler Ansatz sieht so aus:

- Incidents und Postmortems erzeugen Kandidaten für Probleme.
- Ein kurzer, regelmäßiger Review gruppiert wiederholte Incidents und ordnet Probleme nach Auswirkung und Häufigkeit.
- Ausgewählte Probleme gelangen als gewöhnliche Posten in den Backlog, mit verantwortlicher Person, Hypothese und Zeitlimit für die Untersuchung.
- Workarounds werden als Known Errors festgehalten, damit Service Desk und Bereitschaftsingenieure sie nutzen können (siehe Thema 3.9 — Wissensmanagement).
- Behebungen sind klein und getestet, werden auf normalem Weg freigegeben und danach geprüft, ob die Incidents aufgehört haben.

## Bewährte Praktiken

1. **Verknüpfen Sie Incidents mit Problemen.** Halten Sie fest, welche Incidents dieselbe Ursache zu haben scheinen. Ohne Verknüpfungen sehen Sie das Muster nicht, und ohne das Muster können Sie nicht für eine Behebung argumentieren.
2. **Prüfen Sie Incidents nach Plan auf Muster.** Gruppieren Sie einmal im Monat jüngste Incidents nach Service und wahrscheinlicher Ursache und wählen Sie die obersten. Denken Sie mit Pareto: Wenige Ursachen erklären meist einen großen Teil des Schmerzes.
3. **Behandeln Sie Probleme als Backlog-Posten.** Geben Sie jedem ausgewählten Problem eine verantwortliche Person, eine Beschreibung und eine Zeitbox für die Untersuchung und lassen Sie es mit anderer Arbeit konkurrieren. Eine getrennte Warteschlange von "Problemen", die niemand einplant, ist ein Friedhof.
4. **Beginnen Sie mit einer klaren Problembeschreibung.** Schreiben Sie auf, was geschieht, wo, wie oft und mit welcher Auswirkung, anhand von Fakten. Vage Beschreibungen führen zu vagen Behebungen.
5. **Bauen Sie eine Zeitleiste auf.** Sammeln Sie Logs, Änderungen und Ereignisse vom Normalbetrieb bis zum Ausfall. Der Artikel führt die Zeitleiste als Kernschritt auf, und viele Überraschungen stammen aus Änderungen, die niemand verknüpft hatte.
6. **Fragen Sie nach der Ursache, deren Beseitigung die Wiederkehr verhindert.** Nutzen Sie den Test des Artikels. Wenn das Team eine Ursache vorschlägt, fragen Sie, ob ihre Beseitigung die Wiederkehr des Problems stoppen würde.
7. **Rechnen Sie mit mehr als einer Ursache.** Suchen Sie beitragende Faktoren in Entwurf, Monitoring, Prozess und Wissen der Menschen. Bleiben Sie nicht bei der ersten plausiblen stehen.
8. **Wählen Sie Methoden passend zum Problem.** Nutzen Sie Five Whys oder Fischgräten für schnelle Teamdiskussion und strengere Werkzeuge für ernste oder komplexe Ausfälle.
9. **Bevorzugen Sie Maßnahmen, die das System ändern.** Ziehen Sie Automatisierung, Sicherungen und besseres Monitoring Erinnerungen und Schulung vor. Halten Sie die erwartete Wirkung fest, damit Sie sie prüfen können.
10. **Halten Sie Workarounds als Known Errors fest.** Schreiben Sie auf, wie das Symptom aussieht, den Workaround und wer die Behebung verantwortet. Teilen Sie den Eintrag mit Service Desk und Bereitschaftspersonal.
11. **Prüfen Sie, dass die Behebung gewirkt hat.** Beobachten Sie nach einer Behebung für einen vereinbarten Zeitraum auf Wiederkehr und berichten Sie das Ergebnis. Eine Behebung, die nie geprüft wird, ist eine Hoffnung.
12. **Teilen Sie, was Sie finden.** Veröffentlichen Sie kurze Zusammenfassungen von Problemen und Behebungen, damit andere Teams ähnliche Muster erkennen können.

## Fragen zur Diskussion im Team

**Welcher Incident kehrt immer wieder, und was halten wir für die Ursache?**

Bitten Sie die Beteiligten, den Incident zu nennen, der sie am meisten ermüdet. Vergleichen Sie die Antworten. Fragen Sie dann, was jede Person für die Ursache hält und woher sie das weiß. Die Annahmen gehen oft auseinander, was zeigt, wie wenig gemeinsame Belege es gibt. Die Moderation kann fragen, welche Daten es entscheiden würden. Wählen Sie einen zur Untersuchung mit Zeitbox.

**Woher wissen wir, ob zwei Incidents dieselbe Ursache haben?**

Sehen Sie sich an, wie Incidents erfasst werden, und fragen Sie, ob jemand verwandte Incidents schnell finden könnte. Typische Antworten sind Freitext, Gedächtnis oder Glück. Fragen Sie, welche kleine Änderung an den Aufzeichnungen helfen würde, etwa ein Feld für Service und wahrscheinliche Ursache. Vereinbaren Sie eine.

**Was tun wir, wenn wir in einem Review "menschliches Versagen" finden?**

Fragen Sie nach einem jüngsten Beispiel. Die Frage ist, ob der Review dort aufhörte. Besprechen Sie, was im System den Fehler möglich machte: unklare Anweisungen, ein verwirrendes Werkzeug, Zeitdruck. Vergleichen Sie mit der Idee, dass man Menschen nicht reparieren kann, wohl aber Systeme. Vereinbaren Sie eine Frage, die jedes Mal gestellt wird, etwa "Was hat das leicht gemacht?"

**Welche Maßnahmen aus vergangenen Reviews haben das System tatsächlich geändert, und welche haben nur eine Erinnerung hinzugefügt?**

Listen Sie die Maßnahmen der letzten fünf Reviews auf und markieren Sie jede als Systemänderung oder Erinnerung. Der Artikel sagt, Erinnerungen und Papierkram seien weniger wirksam. Fragen Sie, warum Erinnerungen so häufig sind: Sie sind schnell, billig und fühlen sich wie Handeln an. Wählen Sie eine Erinnerung, die durch eine stärkere Behebung ersetzt wird.

**Wo haben wir Workarounds, die niemand aufgeschrieben hat?**

Fragen Sie Bereitschaftsingenieure und Desk-Analysten, welche Tricks sie nutzen. Jeder nicht aufgeschriebene Workaround ist ein Risiko. Halten Sie sie als Known Errors mit Symptom, Workaround und Verantwortlichen fest. Die Moderation kann fragen, wer von jedem Eintrag profitiert. Erstellen Sie diese Woche eine kurze Liste.

**Woran würden wir erkennen, dass eine Behebung gewirkt hat?**

Wählen Sie eine jüngste Behebung und fragen Sie, welcher Beleg es zeigte. Lautet die Antwort "keine Beschwerden mehr", fragen Sie, wie lange Sie gewartet und was Sie gemessen haben. Besprechen Sie eine einfache Prüfung: das konkrete Symptom für einen festgelegten Zeitraum beobachten. Vereinbaren Sie, die Prüfung bei jeder Behebung festzuhalten.

## In der Praxis: ein agiles ITIL-Beispiel

Ein mittelgroßes Logistikunternehmen betreibt einen Routenplanungsservice, den seine Fahrer und Disponenten nutzen. Das Plattformteam aus neun Personen bearbeitet etwa alle zwei Wochen denselben Incident: Routenberechnungen laufen morgens zehn bis fünfzehn Minuten in ein Zeitlimit und erholen sich dann. Jedes Mal startet die Bereitschaftsingenieurin einen Worker-Prozess neu, und der Incident wird geschlossen. Disponenten beklagen, man könne sich bei der Morgenplanung nicht darauf verlassen.

Die Teamleitung beginnt einen monatlichen Review der Incidents, gruppiert nach Service und wahrscheinlicher Ursache. Die Zeitlimit-Überschreitungen am Morgen führen die Liste an. Sie schreibt aus den Incident-Aufzeichnungen eine Problembeschreibung: Zeitlimits treten werktags zwischen 7:00 und 7:30 Uhr auf, dauern zehn bis fünfzehn Minuten und betreffen alle Disponenten. Das Team baut eine Zeitleiste, die einen geplanten Datenimport um 7:00 Uhr und eine jüngste Änderung enthält, die den Umfang des Imports erhöhte. Eine Five-Whys-Diskussion legt nahe, dass der Import die Datenbank sättigt. Sie versuchen die naheliegende Behebung, mehr Kapazität, doch die Incidents gehen mit geringerer Rate weiter, sodass sie schließen, Kapazität sei ein Beitragender und nicht die Grundursache gewesen.

Ein zweiter Blick stellt fest, dass der Import eine Tabelle sperrt, die auch die Routenberechnungen lesen. Das Team verlegt den Import auf ein separates Replikat und fügt einen Alarm für Sperrwartezeiten hinzu. Sie halten den Neustart mit Symptom und Workaround als Known Error fest, bis die Behebung live ist, und vereinbaren, sechs Wochen auf das Symptom zu achten. Die Incidents hören auf. Einige Probleme bleiben: Ein weiterer Import eines Partners läuft weiterhin zur Spitzenzeit, und das Team hat den Partner noch nicht überzeugt, seinen Zeitplan zu ändern. Sie setzen den Zeitplan des Partners auf die nächste Planungsagenda und behalten den Sperralarm bei.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams haben das Wissen, Ursachen zu beheben. Nehmen Sie die wichtigsten Probleme in Ihren Backlog auf und behandeln Sie sie als Arbeit, die Vertrauen verdient. Fügen Sie Monitoring und Tests hinzu, die die Ursache enthüllt hätten, und schreiben Sie den Known Error in einer Sprache, die der Desk nutzen kann.

### Service- und Betriebsteams

Betriebsteams sehen die Incidents und führen die Aufzeichnungen. Verknüpfen Sie Incidents, halten Sie den monatlichen Review ab und halten Sie Workarounds als Known Errors fest. Geben Sie die Belege in einer Form an Delivery-Teams weiter, die das Argument stützt, mit Häufigkeit, Auswirkung und Zeitleiste.

### Führung und Governance

Führungskräfte entscheiden, ob die Behebung von Problemen Zeit bekommt. Fragen Sie nach den wichtigsten wiederkehrenden Problemen und was dagegen getan wird. Widerstehen Sie dem Zählen geschlossener Incidents als Erfolgsmaß, denn es belohnt Reparatur. Unterstützen Sie Behebungen, die Aufwand kosten, aber Schmerz beseitigen.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn wiederholte Ausfälle aufhören. Melden Sie wiederkehrende Probleme mit Daten und Auswirkungen, denn Muster helfen dem Team. Fragen Sie Anbieter, was sie gegen die Ursachen wiederholter Ausfälle getan haben, und erwarten Sie eine Antwort jenseits von "wir haben es neu gestartet".

## Typische Fehlerbilder

- **Reparatur ohne Beseitigung.** Incidents werden geschlossen und kehren wieder. Verknüpfen Sie Wiederholungen stattdessen mit einem Problem und beheben Sie die Ursache.
- **Eine Problem-Warteschlange, die niemand einplant.** Probleme warten ewig. Legen Sie ausgewählte Probleme stattdessen mit Verantwortlichen und Zeitboxen in den Backlog.
- **Bei menschlichem Versagen stehenbleiben.** Der Review endet mit jemandem, dem man die Schuld gibt. Fragen Sie stattdessen, was den Fehler möglich machte, und beheben Sie das System.
- **Schwache Maßnahmen.** Erinnerungen und Schulung ersetzen Systemänderungen. Bevorzugen Sie stattdessen Automatisierung, Sicherungen und besseres Monitoring.
- **Nach einer einzigen Grundursache suchen.** Das Team besteht auf einem einzigen Schuldigen. Akzeptieren Sie stattdessen mehrere beitragende Ursachen und gehen Sie die wirksamsten an.
- **Keine Prüfung, dass die Behebung gewirkt hat.** Das Problem wird beim Release geschlossen. Legen Sie stattdessen einen Weg fest zu sehen, ob das Symptom wiederkehrt.
- **Nicht aufgeschriebene Workarounds.** Wissen lebt bei Einzelnen. Halten Sie stattdessen Known Errors fest und teilen Sie sie.
- **Methodenverehrung.** Teams streiten über Techniken. Wählen Sie stattdessen Methoden passend zum Problem und verwenden Sie die Mühe auf Belege.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Verknüpfen und priorisieren | Incidents werden nicht verknüpft | Einige Teams notieren Wiederholungen | Incidents werden mit Problemen verknüpft und nach Plan auf Muster überprüft | Probleme werden nach gemessener Auswirkung und Häufigkeit geordnet | Problemprioritäten werden über Teams und Lieferanten geteilt |
| Untersuchung | Untersuchung ist informell | Einige Teams nutzen einfache Methoden | Ein schriftlicher Ansatz mit Zeitleisten und Belegen wird genutzt | Qualität und Dauer der Untersuchung werden überprüft | Untersuchungen überspannen Teams und Lieferanten mit gemeinsamen Daten |
| Korrekturmaßnahme | Behebungen sind ad hoc oder Erinnerungen | Einige Behebungen ändern das System | Maßnahmen werden nach Wirkung gewählt, mit Verantwortlichen und Terminen | Wirkungen werden geprüft und Wiederkehr wird gemessen | Behebungen breiten sich auf ähnliche Systeme in der Organisation aus |
| Known Errors und Wissen | Workarounds sind nicht aufgeschrieben | Einige werden von Einzelnen festgehalten | Known Errors werden festgehalten und mit Desk und Bereitschaft geteilt | Nutzung und Genauigkeit von Known Errors werden verfolgt | Known Errors werden mit Nutzenden, Lieferanten und Partnern geteilt |

## Checkliste

- [ ] Incidents, die eine Ursache zu teilen scheinen, sind verknüpft.
- [ ] Ein regelmäßiger Review gruppiert Incidents und wählt die wichtigsten wiederkehrenden Probleme.
- [ ] Ausgewählte Probleme liegen mit Verantwortlichen und Zeitboxen im Backlog.
- [ ] Jedes Problem hat eine schriftliche Beschreibung mit Fakten.
- [ ] Für jede Untersuchung wird eine Zeitleiste aufgebaut.
- [ ] Reviews fragen, was im System menschliches Versagen zuließ.
- [ ] Maßnahmen bevorzugen Systemänderungen gegenüber Erinnerungen, mit festgehaltener erwarteter Wirkung.
- [ ] Workarounds werden als Known Errors festgehalten und mit Desk und Bereitschaftspersonal geteilt.
- [ ] Jede Behebung hat eine Prüfung auf Wiederkehr über einen vereinbarten Zeitraum.
- [ ] Zusammenfassungen von Problemen und Behebungen werden mit anderen Teams geteilt.

## KI-Prompts

**Zweck: wiederholte Incidents und Kandidaten für Probleme in Ihren Aufzeichnungen finden.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Zweck: aus Belegen eine klare Problembeschreibung schreiben.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Zweck: eine Five-Whys-Sitzung vorbereiten und die Gedankenkette festhalten.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: bewerten, ob vorgeschlagene Korrekturmaßnahmen das System ändern.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## KI-Skills

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): nutzen Sie ihn, um eine Untersuchung von einer klaren Problembeschreibung zu einer geprüften Ursache zu führen.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): nutzen Sie ihn, um mit einem Team mögliche Ursachen nach Kategorie zu sammeln.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): nutzen Sie ihn, um darzustellen, wie Ursachen und Wirkungen bei einem komplizierten Ausfall zusammenhängen.
- [postmortem](../../../../skills/postmortem/SKILL.md): nutzen Sie ihn, um den Review durchzuführen, der Kandidaten für Probleme identifiziert.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): nutzen Sie ihn, wenn Sie datenbasierte Methoden zur Analyse von Schwankung oder wiederkehrenden Fehlern brauchen.

## Wichtige Quellen

- **Root cause analysis** (Wikipedia): ein allgemeiner Überblick über Methode, Prinzipien und Grenzen, mit ISO/IEC 31010 für die Methoden.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): der schuldzuweisungsfreie Ansatz, aus Ausfällen zu lernen.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): wie die Incident-Bearbeitung die spätere Analyse speist.
- **Ishikawa diagram** und **Five whys** (Wikipedia): Hintergrund zu zwei verbreiteten einfachen Methoden.

## Referenzen

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
