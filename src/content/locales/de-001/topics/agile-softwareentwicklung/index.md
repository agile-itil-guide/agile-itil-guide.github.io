# Agile Softwareentwicklung

**Agile Softwareentwicklung ist eine Familie von Methoden für kontinuierliche Softwarelieferung, die in kleinen Schritten liefern und aus Feedback lernen, und die daraus entstandenen Praktiken, etwa automatisiertes Testen und Continuous Integration, sind das praktische Fundament, um sich verändernde Services sicher zu betreiben.**

## Warum das wichtig ist

Die meisten Teams, die einen IT-Service betreiben, bauen und ändern ihn auch. Die Art, wie Software gebaut wird, bestimmt, wie oft sich der Service ändert, wie riskant jede Änderung ist und wie sehr sich die Bereitschaftsteams auf das verlassen können, was sie bekommen. Ein Team, das in großen Chargen baut und selten übergibt, beschert dem Betrieb wenige große, furchteinflößende Releases. Ein Team, das in kleinen Schritten mit Tests und schnellem Feedback baut, kann ihm viele kleine, verstandene Releases geben.

Agile Softwareentwicklung ist die bekannteste Sammlung von Ideen für die zweite Arbeitsweise. Sie wird auch weithin missverstanden. Manche verwenden "agil" im Sinne von "keine Pläne und keine Dokumente", andere für jeden Prozess mit einem täglichen Meeting. Dieses Thema vermittelt ein klareres Bild: woher agile Methoden kommen, was sie gemeinsam haben, was sie nicht behaupten und welche Praktiken für ein Team am wichtigsten sind, das einen Service am Laufen halten muss.

Die Belege verlangen eine sorgfältige Lektüre. Der [Wikipedia-Artikel zur agilen Softwareentwicklung](https://en.wikipedia.org/wiki/Agile_software_development) sagt, die anekdotischen Belege für Agilität seien stark, die empirischen aber "begrenzt und nicht eindeutig", und verweist auf Umfragen wie die jährliche State-of-Agile-Umfrage, die Vorteile berichten, aber auf selbstberichteten Meinungen beruhen. Betrachten Sie agile Methoden als vielversprechende Ansätze, die Sie in Ihrem eigenen Umfeld testen.

## Kernkonzepte

### Was der Begriff umfasst

"Agile Softwareentwicklung" ist ein Oberbegriff. Der Wikipedia-Artikel beschreibt ihn als Ansätze, die aus den Werten und Prinzipien erwachsen sind, auf die sich 2001 siebzehn Praktiker geeinigt haben (siehe Thema 1.1 — Das Agile Manifest und Thema 1.2 — Agile Prinzipien). Ein großgeschriebenes "Agile" wird oft für die Praktiken verwendet, die aus dieser Haltung entstanden sind, ein kleingeschriebenes "agil" für die Eigenschaft, sich anpassen zu können. Die Unterscheidung ist nicht streng, und Sie werden beides hören.

Agile Methoden zielen auf kontinuierliche Softwarelieferung. Sie stützen sich auf fortlaufende Zusammenarbeit von Stakeholdern und Entwicklern, bauen Projekte um motivierte Individuen herum auf und verfolgen kontinuierliche Verbesserung durch Feedback, mit Aufmerksamkeit für Qualität. Sie unterscheiden sich darin, was sie betonen. Einige, etwa Extreme Programming, konzentrieren sich auf Engineering-Praktiken, andere, etwa Scrum und Kanban, darauf, wie Arbeit gesteuert wird.

### Eine kurze Geschichte

Der Wikipedia-Artikel führt iterative und inkrementelle Entwicklung bis 1957 zurück, evolutionäres Projektmanagement und adaptive Softwareentwicklung erscheinen Anfang der 1970er Jahre. In den 1990er Jahren entstand eine Gruppe leichtgewichtiger Methoden als Reaktion auf schwergewichtige, planorientierte Prozesse, oft als [Wasserfallmodell](https://en.wikipedia.org/wiki/Waterfall_model) bezeichnet. Der Artikel nennt Rapid Application Development (1991), den Unified Process und die Dynamic Systems Development Method, DSDM (1994), Scrum (1995), Crystal Clear und Extreme Programming (1996) sowie Feature-Driven Development (1997).

Im Februar 2001 trafen sich siebzehn Praktiker in Snowbird, Utah, und verfassten das Manifest. Spätere Erklärungen bauten darauf auf: die PM Declaration of Interdependence 2005, das Software Craftsmanship Manifesto 2009 und der *Guide to Agile Practices* der Agile Alliance 2011, der 2016 in *Agile Glossary* umbenannt wurde.

### Adaptive und prädiktive Ansätze

Der Artikel beschreibt ein Kontinuum zwischen prädiktiven und adaptiven Ansätzen. Eine prädiktive Methode plant den größten Teil der Arbeit im Detail, bevor sie beginnt, und funktioniert gut, wenn die Anforderungen stabil und gut verstanden sind. Eine adaptive Methode rechnet mit Veränderung und plant in kurzen Horizonten. Boehm und Turner, im Artikel zitiert, argumentieren, dass jede Seite ihr eigenes "Heimspielfeld" habe, das heißt, keiner der beiden Ansätze sei überall richtig.

Das ist für ein Serviceteam wichtig, weil seine Arbeit gemischt ist. Das Netzwerk eines Rechenzentrums zu ersetzen ist eher prädiktive Arbeit. Eine kundennahe App zu verbessern ist eher adaptive Arbeit. Wählen Sie den Ansatz je Art von Arbeit, nicht einmal für die ganze Organisation.

### Verbreitete Methoden

Der Artikel führt viele Methoden auf. Diejenigen, denen Sie am ehesten begegnen:

| Methode | Hauptakzent | Behandelt in |
|---|---|---|
| Scrum | Festgelegte Rollen, regelmäßige Ereignisse und ein fester Takt | Thema 1.4 — Lieferprognosen und Planungskennzahlen |
| Kanban | Arbeit sichtbar machen und begrenzen, wie viel in Bearbeitung ist | Thema 1.5 — Kanban |
| Extreme Programming (XP) | Engineering-Praktiken wie Pair Programming und testgetriebene Entwicklung | Thema 1.6 — Extreme Programming |
| Lean Softwareentwicklung | Lean-Ideen, etwa das Vermeiden von Verschwendung, auf Software anwenden | Thema 1.7 — Lean Softwareentwicklung |
| Feature-Driven Development, DSDM, Crystal und adaptive Softwareentwicklung | Weitere leichtgewichtige Methoden kontinuierlicher Softwarelieferung mit eigenen Rollen und Praktiken | Dieses Thema |
| Scrumban | Eine Mischung aus Scrum-Ereignissen und Kanban-Fluss | Thema 1.4 — Lieferprognosen und Planungskennzahlen und Thema 1.5 — Kanban |

Keine Methode ist "die" agile Methode. Der Artikel zitiert Ken Schwabers Ansicht, Teams gerieten in Schwierigkeiten, wenn sie nach einer perfekten Methodik suchen, obwohl sich das Unternehmen selbst ändern müsse, und Bas Vodde, Scrum liefere Grundlagen, die Teams vor Ort erweitern.

### Verbreitete Praktiken

Der Artikel listet Praktiken auf, die viele agile Teams nutzen. Eine Auswahl, mit dem jeweiligen Zweck:

- **User Stories und Backlogs:** Arbeit aus Sicht der Nutzenden beschreiben und eine priorisierte Liste dessen führen, was als Nächstes zu tun ist.
- **Tägliches Stand-up:** ein kurzes tägliches Meeting, oft etwa 15 Minuten, um Fortschritt und Hindernisse zu teilen.
- **Testgetriebene Entwicklung (TDD) und abnahmetestgetriebene Entwicklung (ATDD):** zuerst Tests schreiben, damit "fertig" vor Beginn der Arbeit definiert ist.
- **Continuous Integration (CI):** Änderungen häufig zusammenführen und automatisch bauen und testen. Der Artikel merkt an, dass Grady Booch den Begriff 1991 erstmals vorschlug.
- **Pair Programming und Refactoring:** zwei Personen teilen sich die Arbeit, um Qualität zu verbessern und Wissen zu verbreiten, und der Code wird fortlaufend verbessert, ohne zu ändern, was er tut.
- **Retrospektiven:** das Team reflektiert in regelmäßigen Abständen, wie es sich verbessern kann.

Für ein Serviceteam verdienen drei davon besondere Aufmerksamkeit. Automatisierte Tests und Continuous Integration machen häufige Änderungen sicher. Retrospektiven bieten einen festen Ort, um die Arbeitsweise des Teams zu verbessern. Backlogs liefern eine einzige, geordnete Liste, in der Service-Verbesserungen fair mit neuen Features konkurrieren.

### Erfahrung, Messung und Fallstricke

Der Artikel berichtet, dass Umfragen, darunter eine Umfrage von Shine Technologies 2002 bis 2003 und die State-of-Agile-Umfrage seit 2006, wahrgenommene Zugewinne bei Qualität, Produktivität und Zufriedenheit des Geschäfts feststellen. Er merkt ferner an, dass eine VersionOne-Umfrage unzureichende Schulung als meistgenannte Ursache gescheiterter Einführungen fand, und nennt Fallstricke wie die Besetzung der Product-Owner-Rolle mit einem Mitglied des Entwicklungsteams und fehlende Unterstützung durch Sponsoren.

Die Messung, "wie agil" ein Team ist, hat mehrere Selbsteinschätzungen hervorgebracht, etwa den Nokia-Test, und einen Index, der Projekte nach Dauer, Risiko, Neuheit, Aufwand und Interaktion bewertet. Seien Sie bei jedem solchen Wert vorsichtig. Eine Zahl ist ein Gesprächsanlass, und ein Team, das auf den Wert optimiert, kann den Sinn verlieren.

### Großmaßstäbliche, verteilte und regulierte Arbeit

Der Artikel sagt, dass das Skalieren über etwa 20 Entwickler hinaus oder über Standorte hinweg Herausforderungen mit sich bringt und dass mehrere Frameworks vorgeschlagen wurden, auch wenn die Ansichten darüber auseinandergehen, wie gut sie funktionieren (siehe Thema 1.8 — Agilität skalieren). Er berichtet ferner, dass regulierte Bereiche wie Medizinprodukte, Pharma, Finanzwesen, Kerntechnik, Automobil und Avionik zunächst als ungeeignet für Agilität galten und dass es inzwischen Anpassungen gibt. Die genannten Bedenken sind Qualitätssicherung, Sicherheit, Nachverfolgbarkeit sowie Verifikation und Validierung.

Das sind genau die Anliegen des Service-Managements. Wenn eine Aufsichtsbehörde oder ein Prüfer Nachweise verlangt, kann ein agiles Team sie aus den Werkzeugen liefern, die es ohnehin nutzt, etwa dem Verlauf der Versionsverwaltung, automatisierten Testergebnissen und Änderungsaufzeichnungen (siehe Thema 5.7 — Governance, Risiko und Compliance).

### Kritik, die man kennen sollte

Steven Rakitin bezeichnete Agilität 2001 in einem Brief an *IEEE Computer* als "einen weiteren Versuch, die Disziplin des Software Engineering zu untergraben" und las die Präferenz des Manifests für funktionierende Software als Lizenz, auf Dokumentation zu verzichten. Befürworter antworten, Dokumentation solle "gerade gut genug" sein, in der Formulierung von Scott Ambler. Serviceteams kennen beide Seiten: Zu wenig Dokumentation verlangsamt Übergaben und die Incident-Bearbeitung, und zu viel veraltet.

## Bewährte Praktiken

1. **Passen Sie die Methode an die Art der Arbeit an.** Nutzen Sie kontinuierliche Softwarelieferung und häufiges Feedback dort, wo sich Anforderungen ändern, und mehr Planung im Voraus dort, wo sie feststehen und die Kosten eines Fehlers hoch sind. Entscheiden Sie das für jede Art von Arbeit und überprüfen Sie es, wenn sich die Umstände ändern.
2. **Beginnen Sie mit der kleinsten nützlichen Charge.** Zerlegen Sie Arbeit in Stücke, die in Tagen gebaut, getestet und freigegeben werden können. Kleine Chargen geben schnelleres Feedback und machen eine fehlgeschlagene Änderung leichter verständlich und umkehrbar.
3. **Automatisieren Sie das Testen, bevor Sie Releases beschleunigen.** Häufige Releases ohne automatisierte Tests verlagern Risiko auf Ihre Nutzenden. Bauen Sie eine Suite, die bei jeder Änderung läuft und laut fehlschlägt, und behandeln Sie einen kaputten Build als erste Priorität des Teams.
4. **Integrieren Sie kontinuierlich.** Führen Sie Arbeit oft in einem gemeinsamen Branch zusammen und bauen Sie ihn automatisch. Langlebige Branches verbergen Konflikte, bis sie teuer zu beheben sind.
5. **Beziehen Sie den Betrieb in "fertig" ein.** Eine Story ist erst fertig, wenn sie überwacht, unterstützt und zurückgerollt werden kann. Nehmen Sie diese Prüfungen in Ihre Definition of Done auf und bitten Sie Betriebsmitarbeitende, sie mitzuschreiben (siehe Thema 3.5 — Release- und Deployment-Management).
6. **Führen Sie einen geordneten Backlog je Team.** Legen Sie Features, Fehler und Service-Verbesserungen in dieselbe priorisierte Liste, damit sie offen konkurrieren. Versteckte Nebenwarteschlangen sind der Ort, an dem betriebliche Arbeit unbemerkt verhungert.
7. **Schreiben Sie gerade genug Dokumentation.** Behalten Sie Dokumente, die Menschen nutzen, etwa Runbooks, Servicebeschreibungen und Architekturnotizen, und geben Sie jedem eine verantwortliche Person und ein Überprüfungsdatum. Löschen Sie den Rest. Das beantwortet Rakitins Bedenken, ohne zu schweren Dokumenten zurückzukehren.
8. **Halten Sie regelmäßig Retrospektiven ab und handeln Sie danach.** Wählen Sie aus jeder eine Änderung, mit verantwortlicher Person und Datum. Eine Retrospektive, die nur Diskussion hervorbringt, wird zum Ritual.
9. **Investieren Sie in Schulung und Sponsoring.** Die Umfragebelege im Wikipedia-Artikel verweisen auf Schulung und Unterstützung durch Sponsoren als häufige Schwachstellen. Planen Sie beides ein, bevor Sie Teams bitten, ihre Arbeitsweise zu ändern.
10. **Passen Sie an und sagen Sie, warum.** Passen Sie eine Methode an Ihren Kontext an und schreiben Sie auf, was Sie geändert haben und aus welchem Grund. Eine Praktik zu ändern, weil sie unbequem ist, ohne Begründung, ist der Weg, auf dem Teams sich von den Vorteilen entfernen.
11. **Messen Sie Ergebnisse, nicht Agilitätswerte.** Verfolgen Sie Dinge wie die Durchlaufzeit einer Änderung, wie oft Releases Incidents verursachen und wie schnell der Service wiederhergestellt wird (siehe Thema 5.6 — Metriken und Messung). Nutzen Sie Selbsteinschätzungen nur als Gesprächsanlass.
12. **Führen Sie Servicedaten in die Entwicklung zurück.** Speisen Sie wiederkehrende Incidents und Problem-Einträge in den Backlog ein, damit die Entwicklung vom Betrieb lernt (siehe Thema 3.3 — Problem Management).

## Fragen zur Diskussion im Team

**Welche agilen Praktiken nutzen wir tatsächlich, und für welche haben wir nur Namen?**

Listen Sie die Praktiken auf, von denen Sie glauben, dass Sie ihnen folgen: Stand-ups, Retrospektiven, Backlogs, automatisierte Tests. Fragen Sie bei jeder, wann sie zuletzt eine Entscheidung verändert hat. Praktiken, die niemand mit einer Entscheidung verbinden kann, sind Rituale. Die Moderation sollte nach Belegen fragen, ohne Schuld zu unterstellen. Wählen Sie anschließend ein Ritual zum Verbessern oder Streichen.

**Für welche unserer Arbeiten wäre ein eher prädiktiver Ansatz klüger, und warum?**

Der Wikipedia-Artikel berichtet, dass jeder Ansatz ein "Heimspielfeld" hat. Bitten Sie die Beteiligten, jüngste Arbeit in stabile und schnell veränderliche zu sortieren. Typisch stabile Arbeit sind Hardware-Erneuerungen, Umzüge von Rechenzentren und große Vertragsverlängerungen. Fragen Sie, was ein sorgfältigerer Plan in jedem Fall gebracht hätte. Ziel ist, nicht einen Stil auf alles anzuwenden.

**Wie schnell erfahren wir, dass etwas, das wir gebaut haben, nicht funktioniert, und was würde es schneller machen?**

Verfolgen Sie den Weg vom Schreiben einer Änderung bis zum Wissen, wie sie sich im Einsatz verhält. Zählen Sie die Stufen und die Wartezeiten: Review, Build, Test, Release, Monitoring. Fragen Sie, welcher Stufe das Team am wenigsten traut. Oft ist es ein manueller Test oder ein Release-Schritt, der von einer Person abhängt. Wählen Sie eine Stufe zum Verkürzen und vereinbaren Sie, woran Sie erkennen, dass sie kürzer wurde.

**Was müsste ein Prüfer oder eine Aufsichtsbehörde von uns sehen, und erzeugt unsere Arbeitsweise das bereits?**

Bitten Sie jemanden mit Audit- oder Sicherheitserfahrung dazu. Sammeln Sie die Nachweise, die Ihre Werkzeuge schon erzeugen: Änderungsverlauf, Testergebnisse, Freigaben. Listen Sie dann auf, was fehlt. Teams sind oft überrascht, dass häufige kleine Änderungen mit automatisierten Prüfungen bessere Nachweise liefern als seltene große. Halten Sie die Lücken für die Governance-Diskussion in Thema 5.7 — Governance, Risiko und Compliance fest.

**Wo hilft unsere Dokumentation Menschen, und wo existiert sie nur, weil uns gesagt wurde, sie zu schreiben?**

Fragen Sie, welche Dokumente im letzten Monat genutzt wurden. Ein Runbook, das genutzt und aktuell gehalten wird, zählt. Ein Entwurfsdokument, das seit dem Tag der Freigabe niemand gelesen hat, zählt nicht. Lassen Sie das Team entscheiden, was es behält, was es zusammenführt und was es löscht, und bestimmen Sie Verantwortliche. Das ist ein sicherer Weg, die Idee "gerade gut genug" anzuwenden.

**Was haben wir zuletzt an unserer Arbeitsweise geändert, weil wir etwas gelernt haben, und was ist die nächste Änderung?**

Fragen Sie nach der jüngsten konkreten Änderung aus einer Retrospektive und danach, ob sie gewirkt hat. Kann niemand eine nennen, erfüllt die Retrospektive ihre Aufgabe nicht. Suchen Sie den Grund: Die Maßnahmen sind vielleicht zu groß, haben keine Verantwortlichen oder konkurrieren mit der Lieferarbeit. Wählen Sie zum Schluss eine kleine Änderung für die nächsten zwei Wochen.

## In der Praxis: ein agiles ITIL-Beispiel

Ein mittelgroßer Online-Händler hat ein Entwicklungsteam aus zehn Personen, das sein Auftragsverwaltungssystem baut, und ein separates Betriebsteam aus sechs Personen, das es betreibt. Das Entwicklungsteam hat sich für Sprints und Releases im Zwei-Wochen-Takt entschieden. Das Betriebsteam erhält jedes Release mit einer kurzen Notiz und der Bitte, es in einem Fenster am Donnerstagabend zu deployen. Betriebsmitarbeitende beklagen, dass sie erst erfahren, was sich geändert hat, wenn etwas kaputtgeht, und Entwickler beklagen, dass ein Donnerstagsfenster zu spät ist, um etwas zu beheben, das im Test gefunden wurde.

In einer gemeinsamen Retrospektive zeichnen die beiden Teams ein jüngstes Release Schritt für Schritt nach. Sie stellen fest, dass die einzigen automatisierten Tests etwa die Hälfte des Bestellablaufs abdecken, dass niemand auf der Betriebsseite das Release vor der Donnerstagsnotiz gesehen hat und dass der Rollback-Schritt nie ausprobiert wurde. Sie vereinbaren drei Änderungen. Das Entwicklungsteam nimmt eine Monitoring-Prüfung und einen Rollback-Test in seine Definition of Done auf. Ein Betriebsingenieur nimmt an jedem Sprint-Review teil. Releases, die die vollständige automatisierte Suite bestehen, werden deployt, sobald sie fertig sind, nicht nur donnerstags.

In den nächsten zwei Monaten werden zwei der folgenden vier Releases mitten in der Woche deployt. Der Betriebsingenieur entdeckt in einem Sprint-Review eine fehlende Log-Meldung, was in einem späteren Incident eine Stunde Suche erspart. Nicht alles wird besser: Die automatisierte Suite überspringt weiterhin den Erstattungspfad, und ein Fehler in der Erstattung erreicht Kunden. Die Teams nehmen Erstattungstests in den nächsten Sprint auf und vereinbaren, die Testabdeckungslücken monatlich zu überprüfen. Der Betriebsingenieur sagt außerdem, dass die Teilnahme am Sprint-Review Zeit kostet, die der Bereitschaftsplan nicht vorsieht, und so verlagert die Betriebsleitung einige seiner anderen Aufgaben.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verantworten die Praktiken, die Änderung sicher machen: Tests, Continuous Integration, kleine Chargen und eine klare Definition of Done. Behandeln Sie den Betrieb als Kunden Ihrer Arbeit. Fragen Sie, was er braucht, um ein Release zu betreiben, und nehmen Sie es wie ein Feature in den Backlog auf.

### Service- und Betriebsteams

Betriebsmitarbeitende können agile Praktiken auf ihre eigene Arbeit anwenden: ein sichtbarer Backlog von Verbesserungen, kurze Feedbackzyklen zu Incidents und regelmäßige Retrospektiven. Bitten Sie darum, früh an Planungs- und Review-Sitzungen teilzunehmen. Bringen Sie Wissen darüber ein, wie Services ausfallen, denn das ist der nützlichste Beitrag, den ein Delivery-Team bekommen kann.

### Führung und Governance

Führungskräfte entscheiden, ob Teams die Zeit und Schulung bekommen, so zu arbeiten. Die Umfragebelege im Wikipedia-Artikel verweisen auf Schulung und Sponsoring als häufige Schwachstellen. Fragen Sie, welche Kontrollen Sie brauchen und wie ein Team sie mit seinen eigenen Werkzeugen erfüllen kann, statt einen parallelen Prozess aufzusetzen.

### Kunden und Nutzer

Kunden sehen den Nutzen agiler Methoden als sichtbare Verbesserung in gleichmäßigem Rhythmus, nicht als Zeremonie. Rechnen Sie damit, regelmäßig funktionierende Änderungen zu prüfen und gefragt zu werden, was am wichtigsten ist. Im Gegenzug braucht das Team zeitnahe Antworten und die Bereitschaft, kleine, unvollkommene Releases zu akzeptieren, die sich mit der Zeit verbessern.

## Typische Fehlerbilder

- **Rituale ohne Engineering-Praktiken übernehmen.** Tägliche Meetings und Boards erscheinen, aber es gibt keine automatisierten Tests, sodass Releases riskant bleiben. Investieren Sie stattdessen neben den Zeremonien in Tests, Integration und Release-Automatisierung.
- **Einen Änderungsprozess "agil" nennen, ohne Entscheidungsrechte zu ändern.** Teams warten weiter auf entfernte Freigaben. Verlagern Sie Entscheidungen stattdessen zu den Menschen mit dem Wissen und setzen Sie klare Grenzen.
- **Agilität als Ausrede für fehlende Dokumentation nutzen.** Übergaben und Incidents leiden. Behalten Sie stattdessen die kurzen Dokumente, die Menschen nutzen, und geben Sie jedem eine verantwortliche Person.
- **Schulung überspringen.** Der VersionOne-Befund im Wikipedia-Artikel nennt unzureichende Schulung als meistgenannte Ursache gescheiterter Einführungen. Schulen Sie stattdessen Teams und Führungskräfte vor und während der Veränderung.
- **Ein Mitglied des Entwicklungsteams in die Product-Owner-Rolle setzen.** Der Artikel nennt dies als Fallstrick. Wählen Sie stattdessen jemanden, der das Geschäft vertritt und Zeit zum Entscheiden hat.
- **Durch Kopieren eines Frameworks skalieren.** Ein großes Framework, das ohne Verständnis eingeführt wird, fügt Prozess hinzu und bremst Teams. Beginnen Sie stattdessen mit dem Problem, das Sie haben, und übernehmen Sie nur, was hilft (siehe Thema 1.8 — Agilität skalieren).
- **Einem Agilitätswert nachjagen.** Teams optimieren auf die Kennzahl. Verfolgen Sie stattdessen Ergebnisse wie Durchlaufzeit, Release-Fehler und Zeit bis zur Wiederherstellung des Services.
- **Entwicklung und Betrieb getrennt halten.** Das Delivery-Team liefert aus, und das Betriebsteam erbt. Holen Sie sie stattdessen in gemeinsame Planung, Reviews und das Lernen aus Incidents (siehe Thema 5.2 — DevOps).

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Kontinuierliche Softwarelieferung | Arbeit wird in großen Releases geliefert | Einige Teams liefern in kurzen Zyklen | Teams teilen einen gemeinsamen Liefertakt und eine Definition of Done | Durchlaufzeit und Release-Ergebnisse werden gemessen und überprüft | Release-Rhythmen werden über Teams und Lieferanten hinweg abgestimmt |
| Engineering-Praktiken | Tests und Builds sind überwiegend manuell | Einige Teams haben automatisierte Tests und Builds | Eine gemeinsame Pipeline führt bei jeder Änderung Tests aus | Testabdeckung und Fehlerraten werden verfolgt und Lücken behoben | Pipelines und Praktiken werden teamübergreifend anhand gemeinsamer Belege verbessert |
| Backlog und Priorisierung | Anfragen kommen per E-Mail und ad hoc | Teams führen eigene Backlogs | Jedes Team hat einen geordneten Backlog, der Servicearbeit einschließt | Backlog-Fluss und -Alter werden mit Stakeholdern überprüft | Prioritäten werden über Teams, Kunden und Lieferanten hinweg abgestimmt |
| Lernen und Anpassung | Reviews folgen nur auf schwere Ausfälle | Einige Teams halten Retrospektiven ab | Alle Teams halten regelmäßige Retrospektiven ab und halten Maßnahmen fest | Maßnahmen werden bis zum Abschluss verfolgt und Wirkungen geprüft | Erkenntnisse wandern ohne zentrale Steuerung zwischen Teams und in Richtlinien |

## Checkliste

- [ ] Das Team kann sagen, welche agile Methode oder Praktiken es nutzt und warum es sie gewählt hat.
- [ ] Arbeit ist in prädiktive und adaptive Arten sortiert, mit einem erklärten Ansatz für jede.
- [ ] Automatisierte Tests laufen bei jeder Änderung, und ein fehlschlagender Build stoppt die Linie.
- [ ] Unsere Definition of Done umfasst Monitoring, Support-Hinweise und einen getesteten Rollback.
- [ ] Jedes Team hat einen geordneten Backlog, der Service-Verbesserungen und Fehler einschließt.
- [ ] Runbooks und Servicebeschreibungen haben Verantwortliche und Überprüfungsdaten.
- [ ] Retrospektiven finden in regelmäßigem Rhythmus statt und enden jeweils mit einer Maßnahme mit verantwortlicher Person.
- [ ] Teams und Führungskräfte wurden in der Arbeitsweise geschult, die wir von ihnen verlangen.
- [ ] Wir wissen, welche Nachweise Prüfer brauchen und wie unsere Werkzeuge sie liefern.
- [ ] Ergebnismaße wie Durchlaufzeit und Zeit bis zur Wiederherstellung des Services werden regelmäßig überprüft.

## KI-Prompts

**Zweck: Ihre aktuellen Praktiken auf verbreitete agile Praktiken abbilden und Lücken finden.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Zweck: eine Definition of Done entwerfen, die den Betrieb einschließt.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Zweck: Nachweise für einen Prüfer aus Ihren agilen Werkzeugen vorbereiten.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Zweck: eine Retrospektive dazu planen, wie Ihr Team agile Praktiken übernimmt.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [scrum](../../../../skills/scrum/SKILL.md): nutzen Sie ihn, um Rollen, Ereignisse und Artefakte eines Scrum-Teams einzurichten oder zu überprüfen.
- [kanban](../../../../skills/kanban/SKILL.md): nutzen Sie ihn, um ein visuelles Board mit Begrenzung der laufenden Arbeit für ein Service- oder Betriebsteam zu entwerfen.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): nutzen Sie ihn, um Engineering-Praktiken wie testgetriebene Entwicklung und Continuous Integration zu überprüfen oder einzuführen.
- [user-story](../../../../skills/user-story/SKILL.md): nutzen Sie ihn, um User Stories mit Akzeptanzkriterien zu schreiben, die betriebliche Anforderungen einschließen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um eine Retrospektive durchzuführen, die mit einer Änderung mit verantwortlicher Person endet.

## Wichtige Quellen

- **Manifesto for Agile Software Development** und **Principles behind the Agile Manifesto** (agilemanifesto.org): die primäre Darstellung von Werten und Prinzipien.
- **Agile software development** (Wikipedia): ein breiter Überblick über Geschichte, Methoden, Praktiken, Einführung und Kritik mit vielen zitierten Quellen.
- **Agile Glossary** (Agile Alliance): Definitionen agiler Praktiken und Begriffe, gepflegt von der Gemeinschaft, die aus dem Manifest hervorging.

## Referenzen

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
