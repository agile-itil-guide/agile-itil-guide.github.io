# Agilität skalieren

**Agilität zu skalieren heißt, viele Teams, Services und Lieferanten zu koordinieren, ohne die kurzen Feedbackschleifen zu verlieren, die Agilität wirksam gemacht haben, und das Hauptrisiko besteht darin, Prozessschichten hinzuzufügen, bevor man weiß, welches Problem man löst.**

## Warum das wichtig ist

Ein einzelnes agiles Team von bis zu zehn Personen kann jeden Tag miteinander sprechen. Ein echter Service umfasst meist mehr: mehrere Delivery-Teams, eine Betriebsgruppe, einen Service Desk, Sicherheit, ein Netzwerkteam und Lieferanten. Wenn die Arbeit vieler Gruppen zusammenpassen muss, genügt das tägliche Gespräch eines Teams nicht, und neue Probleme tauchen auf. Prioritäten kollidieren, Abhängigkeiten bremsen Arbeit, und jedes Team verbessert seinen eigenen Teil, ohne dass sich der Service als Ganzes verbessert.

Mehrere Frameworks behaupten, das zu lösen. Sie unterscheiden sich in Größe, Kosten und Philosophie und ziehen starke Meinungen an. Manche Organisationen führen ein großes Framework als Programm ein und verbringen Jahre mit dem Rollout. Andere skalieren, indem sie Hindernisse beseitigen und einen kleinen Satz von Regeln beibehalten. Die ehrliche Position, gestützt durch den [Wikipedia-Artikel zur agilen Softwareentwicklung](https://en.wikipedia.org/wiki/Agile_software_development), lautet, dass die Meinungen über die Wirksamkeit von Skalierungs-Frameworks auseinandergehen und die Belege begrenzt sind.

Für Menschen im IT-Service-Management (ITSM) ist Skalierung wichtig, weil ITIL bereits im großen Maßstab arbeitet. Es beschreibt ein Service Value System, das viele Praktiken und Parteien verbindet (siehe Thema 2.3 — Das ITIL Service Value System). Die Frage, bei der dieses Thema hilft, lautet, wie man beides verbindet: wie man viele agile Teams koordiniert und dabei die Service-Management-Praktiken behält, die Nutzende schützen, ohne über der ersten Bürokratie eine zweite Schicht zu errichten.

## Kernkonzepte

### Warum ein Team etwas anderes ist als viele

Der Wikipedia-Artikel zur agilen Softwareentwicklung berichtet, dass Skalierung Herausforderungen mit sich bringt, wenn ein Projekt mehr als etwa 20 Entwickler umfasst oder Teams über Standorte verteilt sind. Für diese Fälle gibt es Strategien und Frameworks, doch der Artikel merkt an, dass die Ansichten darüber auseinandergehen, ob sie zur Definition von agil passen.

Drei Probleme kehren wieder, wenn man Teams hinzufügt:

- **Ausrichtung:** Teams brauchen eine gemeinsame Richtung und konsistente Prioritäten, sonst optimieren sie Verschiedenes.
- **Abhängigkeiten:** Arbeit in einem Team wartet auf ein anderes, und die Wartezeiten vervielfachen sich, wenn die Zahl der Teams wächst.
- **Integration:** Die Ergebnisse vieler Teams müssen zu etwas zusammenkommen, das als Service funktioniert, und je später Sie das testen, desto teurer sind die Überraschungen.

### Vier bekannte Ansätze

Die folgende Tabelle fasst vier benannte Ansätze zusammen. Die Zusammenfassungen stützen sich auf die Wikipedia-Artikel und die eigenen Seiten der Framework-Eigner, wie sie für diesen Leitfaden gelesen wurden; prüfen Sie aktuelle Versionen an den Quellen, bevor Sie sich auf Einzelheiten verlassen.

| Ansatz | Urheber oder Eigner | Grundidee | Größe und Form |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Erstmals in Dean Leffingwells Buch *Scaling Software Agility* von 2007 beschrieben; Materialien von Scaled Agile, Inc. veröffentlicht | Ein Satz von Organisations- und Workflow-Mustern, die auf Agilität, Lean Product Development und Systemdenken zurückgreifen | Konfigurationen von Team- und Programmebene (Agile Release Trains) bis zu großen Lösungen und Portfolios |
| **Large-Scale Scrum (LeSS)** | Craig Larman und Bas Vodde | Scrum selbst skalieren: ein Product Owner und ein Product Backlog für ein Produkt, viele funktionsübergreifende Feature-Teams, mit möglichst wenigen zusätzlichen Rollen und Artefakten | LeSS für etwa zwei bis acht Teams; LeSS Huge für mehr, mit Requirement Areas aus jeweils mehreren Teams |
| **Disciplined Agile (DA)** | Scott Ambler und Mark Lines; im August 2019 vom Project Management Institute (PMI) übernommen | Ein Werkzeugkasten aus Prozesszielen und Optionen, der einem Team hilft, seine eigene Arbeitsweise im Kontext zu wählen | Hybrid und kontextabhängig, mit mehreren Lebenszyklen und einer Schicht für das Unternehmen |
| **Scrum@Scale und andere** | Im Wikipedia-Artikel neben SAFe genannt | Weitere Frameworks zur Koordination mehrerer Scrum-Teams | Siehe die Seiten der Eigner |

### SAFe im Detail

Der Wikipedia-Artikel sagt, SAFe sei 2007 erstmals förmlich beschrieben worden, mit einem ersten Release 2011 und Version 6.0 im März 2023. Für Version 5.1 nennt er vier Konfigurationen: Essential SAFe (Team- und Programmebene), Large Solution SAFe, Portfolio SAFe und Full SAFe. Der Artikel listet außerdem zehn Prinzipien auf, darunter eine wirtschaftliche Sichtweise und die Anwendung von Systemdenken.

SAFe hat offene Kritik auf sich gezogen, die der Artikel verzeichnet. Thoughtworks argumentierte, Kontrolle von oben nach unten erzeuge Verschwendung, Ken Schwaber kritisierte es 2013 in einem Beitrag, und Jeff Gothelf argumentierte 2021, SAFe sei nicht agil. Kritiker nennen es hierarchisch und unflexibel und sagen, es könne einer Organisation den Anschein von Agilität geben und dabei alte Prozesse behalten. Befürworter schätzen sein gemeinsames Vokabular und seine Struktur für große Organisationen. Lesen Sie beide Seiten, bevor Sie entscheiden.

### LeSS: durch Weglassen skalieren

Larman und Vodde beschreiben LeSS als Scrum, angewendet auf viele Teams, die an einem Produkt arbeiten. Es fügt Scrum keine Schicht hinzu. Laut der eigenen Einführung des Frameworks verwaltet ein Product Owner ein Product Backlog, und die Teams erzeugen in einem gemeinsamen Sprint ein auslieferbares Produkt. LeSS vertritt die Idee "mehr mit weniger": weniger Rollen, Artefakte und Regeln erzeugen verantwortlichere Teams. Zur zugrunde liegenden Methode siehe Thema 1.4 — Lieferprognosen und Planungskennzahlen.

### Disciplined Agile: Ihre Arbeitsweise wählen

Der Wikipedia-Artikel zu Disciplined Agile Delivery beschreibt einen menschenzentrierten, hybriden Werkzeugkasten, der den gesamten Lieferlebenszyklus abdeckt. Er unterstützt sechs Lebenszyklen und beschreibt 21 Prozessziele. Der Ansatz ist, Teams zu helfen, Praktiken zu wählen, die zu ihrer Situation passen, statt ein Framework vorzuschreiben. Der Artikel trägt einen Pflegehinweis, dass er sich zu sehr auf Quellen stützen könnte, die dem Gegenstand nahestehen.

### Scrum of Scrums und einfache Koordination

Bevor Sie ein Framework einführen, erwägen Sie die einfachsten Werkzeuge. Ein "Scrum of Scrums" bringt Vertreter mehrerer Teams zusammen, um Fortschritt zu teilen und Abhängigkeiten zu lösen. Gemeinsame Quartalsplanung, ein gemeinsamer Backlog für ein Produkt und ein regelmäßiges Treffen der Teamleitungen sind weitere leichte Optionen. Viele Organisationen skalieren damit gut genug.

### Skalierung in einer Serviceorganisation

In einer IT-Organisation lassen sich Teams auf mehrere Arten organisieren, und die Wahl beeinflusst, wie gut Agilität skaliert:

| Organisation | Wie Teams organisiert sind | Wirkung auf die Skalierung |
|---|---|---|
| **Nach Komponente** | Ein Team je technischer Schicht oder System | Features brauchen mehrere Teams, daher gibt es viele Abhängigkeiten |
| **Nach Feature oder Produkt** | Funktionsübergreifende Teams, die einen kundennahen Ausschnitt verantworten | Weniger Abhängigkeiten; braucht gemeinsame Standards für Plattformen |
| **Nach Service** | Ein Team je Service, das Bau und Betrieb verantwortet | Nah am Service-Management; braucht einen Umgang mit gemeinsamen Plattformen |
| **Plattform plus Strom** | Teams, die eine Plattform bereitstellen, und Teams, die sie nutzen | Braucht klare Service-Vereinbarungen zwischen ihnen |

Kein Muster ist für alle das beste. Der Wechsel von Komponententeams zu Teams, die um Produkte oder Services organisiert sind, ist ein verbreiteter Schritt, und er ist schwierig, weil er ändert, wer an wen berichtet.

### Was Forschung und Kritik sagen

Der Artikel zur agilen Softwareentwicklung hält fest, dass die empirischen Belege für agile Methoden im Allgemeinen begrenzt und nicht eindeutig sind. Für Skalierungs-Frameworks bieten die herangezogenen Quellen überwiegend Meinungen und Herstellermaterial. Behandeln Sie jede Behauptung gemessener Verbesserung mit Vorsicht, fragen Sie nach den Belegen dahinter und testen Sie jedes Framework zuerst an einem kleinen Teil Ihrer Organisation.

## Bewährte Praktiken

1. **Beginnen Sie beim Problem, nicht beim Framework.** Benennen Sie, was schiefläuft: langsame Abhängigkeiten, kollidierende Prioritäten, späte Integration. Wählen Sie den leichtesten Ansatz, der es angeht, und übernehmen Sie mehr nur, wenn er nicht genügt.
2. **Probieren Sie zuerst die einfachste Koordination.** Gemeinsame Planung, ein Scrum of Scrums und ein gemeinsamer Backlog je Produkt lösen viele Probleme zu geringen Kosten. Fügen Sie Struktur erst hinzu, wenn sie nicht mehr ausreichen.
3. **Organisieren Sie Teams um Wert.** Bevorzugen Sie Teams, die ein Produkt oder einen Service durchgängig verantworten, mit den Fähigkeiten, es zu bauen und zu betreiben. Das verringert Übergaben und Abhängigkeiten und passt dazu, wie ITIL über Services denkt (siehe Thema 2.6 — Die Service Value Chain).
4. **Führen Sie eine geordnete Liste je Produkt.** Ein Product Backlog mit einer verantwortlichen Person, wie LeSS es empfiehlt, beseitigt viel Konflikt zwischen Teams. Wo das nicht möglich ist, machen Sie die Rangfolge der Prioritäten über Teams hinweg sichtbar.
5. **Planen Sie in regelmäßigem Rhythmus gemeinsam.** Bringen Sie Teams und wichtige Stakeholder alle paar Monate zusammen, um Ziele, Abhängigkeiten und Risiken abzustimmen. Halten Sie das Ereignis kurz und belegbasiert und vermeiden Sie, es zu einer Verhandlung über detaillierte Pläne werden zu lassen.
6. **Integrieren Sie kontinuierlich.** Testen Sie die Ergebnisse aller Teams so oft wie möglich zusammen, idealerweise täglich. Späte Integration ist der häufigste Grund, warum große Programme ihre Sponsoren überraschen (siehe Thema 1.6 — Extreme Programming).
7. **Machen Sie Abhängigkeiten sichtbar und verringern Sie sie.** Listen Sie auf, welche Teams auf welche warten, und zählen Sie die Wartezeiten. Verringern Sie sie, indem Sie Teamgrenzen ändern, Fähigkeiten teilen oder gemeinsame Plattformen mit klaren Schnittstellen bauen.
8. **Definieren Sie Service-Vereinbarungen zwischen Teams.** Wo ein Team einem anderen eine Plattform oder einen Service bereitstellt, vereinbaren Sie, was erwartet wird: Verfügbarkeit, Reaktion, Supportzeiten und wie Änderungen angefragt werden (siehe Thema 3.7 — Service-Level-Management).
9. **Passen Sie an und schreiben Sie auf, was Sie geändert haben.** Welches Framework Sie auch übernehmen, halten Sie fest, welchen Teilen Sie folgen, welche Sie auslassen und warum. Ehrliche Bezeichnungen verhindern, dass ein Hybrid an einem Framework gemessen wird, dem er nie folgen wollte.
10. **Pilotieren Sie, bevor Sie ausrollen.** Probieren Sie den Ansatz mit wenigen Teams aus, messen Sie die Ergebnisse, die Ihnen wichtig sind, und lernen Sie. Dehnen Sie ihn erst aus, wenn der Pilot einen Nutzen zeigt, den Sie beschreiben können.
11. **Halten Sie Governance leicht und ergebnisorientiert.** Fragen Sie nach Belegen wie Lieferfluss, Incident-Trends und Nutzerfeedback und nicht nach Statusberichten, die jedes Team in einem anderen Format schreibt (siehe Thema 5.7 — Governance, Risiko und Compliance).
12. **Überprüfen Sie die Struktur regelmäßig.** Halten Sie ein- oder zweimal im Jahr einen Review ab und fragen Sie, ob Teamgrenzen, Rollen und Zeremonien der Arbeit noch dienen. Strukturen, die für 30 Personen richtig waren, können für 300 falsch sein.

## Fragen zur Diskussion im Team

**Welches Problem erwarten wir von der Skalierung zu lösen, und woran erkennen wir, dass es gelöst ist?**

Bitten Sie die Beteiligten, den Schmerz zu benennen: späte Integration, kollidierende Prioritäten, lange Wartezeiten auf andere Teams. Schreiben Sie jeden mit einem jüngsten Beispiel auf. Ein Framework, das ohne erklärtes Problem gewählt wird, ist eine Lösung auf der Suche nach einem Problem. Die Moderation kann fragen, was die einfachste mögliche Abhilfe für jedes Problem wäre und welcher Beleg zeigen würde, dass sie gewirkt hat.

**Auf welche anderen Teams warten wir am meisten, und wie lange?**

Zeichnen Sie die Abhängigkeiten an einer Wand auf und ergänzen Sie die typische Wartezeit jeweils. Teams, die sich für unabhängig hielten, sind oft überrascht. Fragen Sie, welche Abhängigkeiten echt sind und welche aus historischen Teamgrenzen stammen. Wählen Sie eine Abhängigkeit zum Beseitigen, entweder durch eine andere Organisation der Teams oder durch das Teilen von Fähigkeiten.

**Wer entscheidet über die Reihenfolge der Arbeit über unsere Teams hinweg, und wie finden wir das heraus?**

Verfolgen Sie einen jüngsten Prioritätskonflikt vom Anfang bis zur Lösung. Achten Sie auf Eskalationen, Meetings und informelle Absprachen. Fragen Sie, ob eine einzelne verantwortliche Person, wie in LeSS, die Entscheidung treffen könnte. Überlegen Sie, was dabei verloren oder gewonnen würde. Ein gutes Ergebnis ist ein klarer Weg zur Entscheidung von Konflikten, auch wenn es keine neue Rolle ist.

**Was würde uns ein Framework wie SAFe, LeSS oder Disciplined Agile geben, das wir nicht günstiger bekommen können?**

Bitten Sie jemanden, der über jedes gelesen hat, es in wenigen Sätzen zu erklären, und fragen Sie nach der stärksten Kritik. Der Wikipedia-Artikel zu SAFe listet mehrere auf, und die Seiten der Framework-Eigner listen Vorteile. Die Moderation sollte die Diskussion praktisch halten: Was würden wir am Montag tun, wenn wir es übernähmen, und wer müsste was ändern? Entscheiden Sie, was Sie ausprobieren, wenn überhaupt, und was Sie so lassen.

**Wie testen wir, dass die Arbeit aller unserer Teams zusammenpasst, und wie oft?**

Zählen Sie die Tage zwischen einer Änderung eines Teams und ihrem ersten Test mit den Änderungen aller anderen. Längere Abstände bedeuten größere Überraschungen. Fragen Sie, was tägliche Integration verhindert, etwa Umgebungen, Testdaten oder Zuständigkeiten. Wählen Sie ein Hindernis zum Beseitigen.

**Welche unserer Kontrollen gelten für jedes Team gleichermaßen, und welche sollten vom Risiko abhängen?**

Listen Sie Standardkontrollen auf, etwa Reviews, Freigaben und Berichtswesen. Fragen Sie, welche davon für Arbeit mit geringem Risiko angepasst werden. Einheitliche Kontrollen sind leicht zu verwalten und für alle langsam. Risikoabhängige Kontrollen brauchen klare Kriterien. Wählen Sie eine Kontrolle zur Überprüfung.

## In der Praxis: ein agiles ITIL-Beispiel

Die IT-Gruppe einer großen Retailbank hat 14 Delivery-Teams und eine zentrale Betriebsgruppe. Jedes Team hat Scrum übernommen, doch die Kunden der Bank sehen wenig Verbesserung. Releases der Mobile-Banking-App brauchen Änderungen von fünf Teams, und jedes Release wird von einem Programmbüro koordiniert, das Abhängigkeiten in einer Tabelle verfolgt. Ein jüngstes Release verzögerte sich um drei Wochen, weil zwei Teams im letzten Moment entdeckten, dass ihre Änderungen nicht kompatibel waren.

Ein Architekt und die Leitung des Betriebs führen eine Studie über sechs Monate Releases durch. Sie stellen fest, dass die meisten Verzögerungen aus später Integration und aus unklaren Prioritäten zwischen den Teams stammen, die sich einen Backlog mobiler Features teilen. Sie erwägen, ein großes Framework zu übernehmen, entscheiden sich aber, klein anzufangen. Sie schaffen einen einzigen Backlog für die Mobile-App mit einer verantwortlichen Product Ownerin und führen die Planung der fünf Teams in einer gemeinsamen Sitzung alle sechs Wochen zusammen. Sie richten eine gemeinsame Pipeline ein, die die Änderungen aller Teams jede Nacht zusammen baut und testet, und sie nehmen die Betriebsgruppe in die gemeinsame Planungssitzung auf.

Nach zwei Quartalen sinkt die Zahl der Inkompatibilitäten im letzten Moment, und Releases kommen alle zwei Wochen. Einige Probleme bleiben. Die Product Ownerin hat Mühe mit der Menge der Anfragen und verbringt die meiste Zeit mit Schlichtung, und zwei Teams hängen weiterhin von einem zentralen Datenbankteam mit langer Warteschlange ab. Die Bank vereinbart, die Warteschlange des Datenbankteams in der gemeinsamen Planung sichtbar zu machen und einen Self-Service-Weg für häufige Datenbankänderungen auszuprobieren. Sie beschließt außerdem, jede Framework-Entscheidung zu verschieben, bis ein zweiter Produktbereich denselben Ansatz erprobt hat.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams tragen den Großteil der Last der Skalierung: gemeinsame Planung, gemeinsame Pipelines und Vereinbarungen mit Nachbarn. Arbeiten Sie daran, Abhängigkeiten an der Quelle zu verringern, indem Sie die Fähigkeiten des nächsten Teams erlernen oder Schnittstellen bauen, die keine Abstimmung erfordern. Nehmen Sie an Planungsereignissen mit echten Informationen über Fortschritt und Risiko teil.

### Service- und Betriebsteams

Betriebsmitarbeitende sollten von Anfang an Teil der Planung sein, denn viele teamübergreifende Abhängigkeiten sind betrieblich: Umgebungen, Zugang, Monitoring und Support. Bringen Sie Servicedaten in die Planungssitzung ein und vereinbaren Sie Service-Level mit den Teams, die von Ihnen abhängen. Setzen Sie sich für Plattformen ein, die Delivery-Teams Self-Service bieten.

### Führung und Governance

Führungskräfte prägen die Struktur, die entscheidet, wie gut Skalierung funktioniert. Widerstehen Sie der Versuchung, ein Framework zu kaufen, um sich nicht entscheiden zu müssen, was die Organisation sein will. Verlangen Sie eine klare Darstellung des Problems, einen Piloten und Belege. Halten Sie das Berichtswesen leicht und akzeptieren Sie, dass Strukturänderungen für Führungskräfte unbequem sein können.

### Kunden und Nutzer

Kunden sollten einen stimmigen Service sehen und nicht die Nahtstellen zwischen Teams. Rechnen Sie mit einer Anlaufstelle für ein Produkt und einem klaren Weg für Anfragen. Sagen Sie der Product Ownerin, was am wichtigsten ist, und erwarten Sie, dass die Antwort Abwägungen zwischen konkurrierenden Ansprüchen enthält.

## Typische Fehlerbilder

- **Ein Framework kaufen, um einer Entscheidung auszuweichen.** Eine Organisation übernimmt ein Framework in der Hoffnung, es löse Meinungsverschiedenheiten über Prioritäten. Entscheiden Sie stattdessen, wer die Hoheit über Prioritäten hat, und sehen Sie dann, welches Framework, falls überhaupt, hilft.
- **Ein Diagramm kopieren.** Rollen und Meetings werden ohne Verständnis der Gründe hinzugefügt. Übernehmen Sie stattdessen nur die Elemente, die ein benanntes Problem angehen.
- **Schichten hinzufügen.** Koordinatoren, Programmbüros und Gremien vermehren sich, während Teams Autonomie verlieren. Beseitigen Sie stattdessen Abhängigkeiten, damit weniger zu koordinieren ist.
- **Späte Integration.** Teams integrieren am Ende eines langen Zyklus. Integrieren und testen Sie stattdessen alle Änderungen täglich zusammen.
- **Einheitliche Kontrollen.** Jedes Team folgt demselben schweren Prozess, egal wie hoch das Risiko ist. Richten Sie Kontrollen stattdessen am Risiko aus und machen Sie Wege mit geringem Risiko schnell.
- **Den Betrieb ignorieren.** Die Planung bezieht Entwickler und Produktverantwortliche ein, aber keine Betriebsmitarbeitenden. Beziehen Sie den Betrieb stattdessen in die gemeinsame Planung ein und teilen Sie Servicedaten.
- **Einen Hybrid am Framework messen.** Kritiker sagen, es sei nicht das Framework, Befürworter sagen, doch. Geben Sie Ihrem Ansatz stattdessen einen eigenen Namen und beschreiben Sie ihn.
- **Die Struktur nie überdenken.** Grenzen, die bei 30 Personen gezogen wurden, bestehen bei 300 fort. Überprüfen Sie Team- und Rollenstruktur stattdessen mindestens jährlich.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Ausrichtung und Prioritäten | Jedes Team setzt seine eigenen Prioritäten | Einige Teams teilen einen Backlog oder treffen sich zur Abstimmung | Produkte haben einen geordneten Backlog und gemeinsame Planung in regelmäßigem Rhythmus | Die Ausrichtung wird an Ergebnissen geprüft und Abhängigkeiten werden gemessen | Prioritäten werden über Teams, Kunden und Lieferanten hinweg laufend angepasst |
| Abhängigkeiten | Wartezeiten auf andere Teams sind ungesteuert | Einige Teams listen ihre Abhängigkeiten auf | Abhängigkeiten sind sichtbar und es gibt Vereinbarungen zwischen Teams | Wartezeiten für Abhängigkeiten werden gemessen und verringert | Teamgrenzen werden anhand von Belegen neu gezogen, um Abhängigkeiten zu beseitigen |
| Integration | Integration geschieht am Ende | Einige Teams integrieren häufiger | Gemeinsame Pipelines integrieren und testen die Änderungen aller häufig | Integrationsfehler und ihre Ursachen werden verfolgt und behoben | Integrationsumgebungen und Tests werden über Teams hinweg geteilt und verbessert |
| Governance und Struktur | Kontrollen sind einheitlich und langsam | Es gibt einige Wege mit geringem Risiko | Kontrollen variieren nach Risiko mit klaren Kriterien | Ergebnisse und Wirksamkeit der Kontrollen werden überprüft | Struktur und Kontrollen werden in der gesamten Organisation routinemäßig überprüft und angepasst |

## Checkliste

- [ ] Wir können in einem Satz das Problem nennen, das die Skalierung lösen soll.
- [ ] Wir haben die Abhängigkeiten zwischen unseren Teams abgebildet und kennen die typische Wartezeit je Abhängigkeit.
- [ ] Jedes Produkt hat einen geordneten Backlog mit einer verantwortlichen Person.
- [ ] Teams und wichtige Stakeholder planen in regelmäßigem Rhythmus gemeinsam.
- [ ] Die Ergebnisse aller Teams werden mindestens täglich zusammen gebaut und getestet.
- [ ] Teams, die anderen Plattformen oder Services bereitstellen, haben schriftliche Service-Vereinbarungen.
- [ ] Betriebsmitarbeitende nehmen an der teamübergreifenden Planung teil.
- [ ] Kontrollen variieren mit dem Risiko, und der Weg mit geringem Risiko ist schnell.
- [ ] Jedes Framework, das wir übernehmen, wurde zuerst im Kleinen pilotiert.
- [ ] Wir haben aufgeschrieben, welchen Teilen eines Frameworks wir folgen und welchen nicht.
- [ ] Die Struktur von Teams und Rollen wird mindestens einmal im Jahr überprüft.

## KI-Prompts

**Zweck: Abhängigkeiten zwischen Teams aus der Beschreibung jüngster Arbeit abbilden.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Zweck: Skalierungsoptionen mit einem erklärten Problem vergleichen.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine gemeinsame Planungssitzung für mehrere Teams planen.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine Vereinbarung zwischen einem Plattformteam und den nutzenden Teams schreiben.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): nutzen Sie ihn, um die Rollen, Ereignisse und Ebenen von SAFe zu verstehen und zu beurteilen, welche Teile Sie brauchen.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): nutzen Sie ihn, um Scrum auf mehrere Teams anzuwenden, die an einem Produkt arbeiten.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): nutzen Sie ihn, um Praktiken nach Prozessziel für Ihren Kontext zu wählen.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): nutzen Sie ihn als leichten Weg, einige Teams zu koordinieren, bevor Sie ein Framework übernehmen.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): nutzen Sie ihn, um zu entscheiden, wie eine Anzahl von Produkten und Vorhaben ausgewählt und finanziert wird.

## Wichtige Quellen

- **Scaled agile framework** (Wikipedia): ein Überblick über Geschichte, Konfigurationen und Kritik an SAFe, mit Belegen.
- **Introduction to LeSS** (less.works): die kurze Beschreibung von Large-Scale Scrum und seiner Idee "mehr mit weniger" durch die Urheber.
- **Disciplined agile delivery** (Wikipedia): eine Zusammenfassung des Werkzeugkastens, seiner Lebenszyklen und Ziele.
- **Agile software development** (Wikipedia): der Abschnitt zu großmaßstäblicher, Offshore- und verteilter Arbeit und die Diskussion widersprüchlicher Ansichten zu Skalierungs-Frameworks.

## Referenzen

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
