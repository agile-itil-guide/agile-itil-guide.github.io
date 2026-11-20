# Produkt- und Service-Verantwortung

**Produkt- und Service-Verantwortung gibt jedem Produkt oder Service eine verantwortliche Person und ein Team, das es baut und betreibt, damit Entscheidungen über Wert, Qualität und Kosten von den Menschen getroffen werden, die mit den Ergebnissen leben.**

## Warum das wichtig ist

In vielen Organisationen verantwortet niemand einen Service als Ganzes. Ein Projekt baut ihn, ein Betriebsteam betreibt ihn, ein Lieferant steuert einen Teil bei, und eine Finanzabteilung bezahlt ihn. Wenn etwas schiefgeht, gibt es vier Besprechungen und keine Entscheidung. Wenn Nutzende etwas verbessert haben möchten, geht die Anfrage in eine Warteschlange, die niemandem gehört. Der Service verfällt zwischen den Teams.

Verantwortung geht das direkt an. Sie verlangt zweierlei: eine Person, die für den Wert des Produkts oder Services einsteht, und ein Team, das die Fähigkeiten und die Befugnis hat, es zu bauen, zu betreiben und zu verbessern. Die Idee ist in manchen Formen alt und in anderen modisch, und die Einzelheiten unterscheiden sich zwischen Organisationen stark. Sie richtig zu machen ist eine der wichtigsten Bedingungen dafür, dass alles andere in diesem Leitfaden funktioniert.

Zwei Ideen stehen hinter dem Thema. Die erste ist der Product Owner des Scrum Guide, der dafür einsteht, den Wert des Produkts zu maximieren und sein Backlog zu ordnen, und der eine Person ist und kein Ausschuss (siehe Thema 1.4 — Lieferprognosen und Planungskennzahlen). Die zweite ist der Slogan "you build it, you run it" (sinngemäß: Wer es baut, betreibt es), der mit dem Technikchef von Amazon, Werner Vogels, in einem 2006 in ACM Queue veröffentlichten Interview verbunden wird, das dieser Leitfaden nicht direkt lesen konnte (die Seite lieferte einen Zugriffsfehler) und aus Sekundärbeschreibungen kennt. Wie diese Beschreibungen es wiedergeben, stellte Vogels das alte Modell, in dem Entwickler Software über eine Mauer zum Betrieb werfen, einem Modell gegenüber, in dem Entwickler im täglichen Kontakt mit dem Betrieb ihrer Software und mit dem Kunden bleiben. Der [Wikipedia-Artikel zum Produktmanagement](https://en.wikipedia.org/wiki/Product_management) gibt eine allgemeine Beschreibung der Disziplin, sagt aber nichts über die agile Rolle des Product Owners oder über Service-Verantwortung, daher leistet dieses Thema die Verbindungsarbeit und sagt das.

## Kernkonzepte

### Produkt, Service, Projekt

| Begriff | Bedeutung im üblichen Sprachgebrauch | Zeithorizont |
|---|---|---|
| **Projekt** | Ein befristetes Vorhaben mit festgelegtem Umfang, Anfang und Ende | Endet, wenn der Umfang geliefert ist |
| **Produkt** | Etwas, das Kunden oder Nutzenden angeboten und über die Zeit entwickelt und verbessert wird | Besteht fort, solange es Wert schafft |
| **Service** | Eine Art, anderen Wert zu liefern, ohne dass diese die Kosten und Risiken tragen (siehe Thema 2.1 — IT-Service-Management) | Besteht fort, solange er angeboten wird |

Ein digitales Produkt ist oft auch ein Service: Nutzende sind darauf angewiesen, dass es gut läuft. Die Unterscheidung zwischen Produkt und Service zählt weniger als der Wechsel vom Projekt zu fortdauernder Verantwortung, wie Thema 1.9 — Agiles Management beschreibt.

### Produktmanagement

Der Wikipedia-Artikel beschreibt Produktmanagement als Geschäftsprozess des Planens, Entwickelns, Einführens und Steuerns eines Produkts oder Services, der sicherstellt, dass Produkte den Bedürfnissen des Zielmarkts entsprechen und die Geschäftsstrategie über den Produktlebenszyklus stützen. Er listet Aufgaben von Produktmanagern auf: die Produktlinie im Tagesgeschäft führen, den Business Case und die Markteinführung verantworten, Kundenforschung und Wettbewerb analysieren, Anforderungen dokumentieren, Strategie festlegen und die Roadmap erstellen und sich mit Design, Entwicklung, Marketing, Vertrieb, Support und Recht abstimmen. Er führt das Konzept auf ein Memo von 1931 des Präsidenten von Procter & Gamble, Neil H. McElroy, zurück, das "Brand Men" zur Führung von Produkten verlangte. Er sagt, Produktmanager würden oft an der Gewinn-und-Verlust-Verantwortung gemessen.

Der Artikel verbindet das Produktmanagement nicht mit dem agilen Product Owner, daher ist die Verknüpfung die Lesart dieses Leitfadens: Ein Product Owner steht für den Wert des Produkts ein und ordnet sein Backlog, und in vielen Organisationen übernimmt ein Produktmanager die weitere Geschäftsrolle. In kleinen Teams kann eine Person beides tun.

### Der Product Owner und die Service-Verantwortliche

| Rolle | Verantwortlich für | Typische Fragen |
|---|---|---|
| **Product Owner** (Scrum) | Den Wert des Produkts maximieren; das Product Backlog ordnen | Was sollen wir als Nächstes bauen oder verbessern, und warum? |
| **Produktmanager** | Den Business Case, die Strategie und die Roadmap eines Produkts | Ist das das richtige Produkt für den richtigen Markt? |
| **Service Owner** (ITSM-Gebrauch) | Leistung und Verbesserung eines Services über sein Leben | Erfüllt der Service die Bedürfnisse der Nutzenden zu akzeptablen Kosten und Risiken? |

Die Rollen überschneiden sich. Bei einem internen IT-Service kann eine Person Product Owner und Service Owner sein. Der Scrum Guide betont, dass der Product Owner eine Person ist und kein Ausschuss, damit Entscheidungen über die Reihenfolge eine klare verantwortliche Person haben. Wie auch immer der Titel lautet, der Test ist, ob eine benannte Person Zielkonflikte zwischen neuen Features, Verlässlichkeit und Kosten entscheiden kann.

### "You build it, you run it"

Wie in Sekundärzusammenfassungen des Interviews von Vogels aus dem Jahr 2006 beschrieben, drückt der Satz ein Modell aus, in dem das Team, das einen Service baut, ihn auch betreibt und so in täglichem Kontakt mit Nutzenden und mit den Folgen seines Entwurfs bleibt. Das Interview führte Jim Gray, und es wurde 2006 in ACM Queue veröffentlicht; Amazons eigener Blog wies auf das Interview hin, als es erschien. Dieser Leitfaden hat das Original nicht gelesen und zitiert es daher nicht. Das Modell hat Kosten ebenso wie Nutzen:

| Nutzen | Kosten oder Risiko |
|---|---|
| Bauende spüren den Schmerz schlechter Betreibbarkeit und beheben sie | Bauende tragen Bereitschaftslast und können ausbrennen |
| Kürzeres Feedback von Nutzenden und aus Incidents | Fähigkeiten in Betrieb, Sicherheit und Compliance müssen im Team vorhanden sein |
| Keine Übergabe, bei der Wissen verloren geht | Teamübergreifende Standards brauchen andere Mechanismen |
| Klare Verantwortlichkeit | Kleine Teams empfinden die gesamte Last womöglich als zu schwer |

Site Reliability Engineering und DevOps bieten Wege, solche Teams zu unterstützen (siehe Thema 5.2 — DevOps und Thema 5.3 — Site Reliability Engineering). Plattformteams können gemeinsame Werkzeuge bereitstellen, damit nicht jedes Produktteam sie neu baut.

### Teams, die verantworten

Verantwortung braucht ein Team mit den Fähigkeiten zu liefern und zu betreiben und der Befugnis zu handeln. Scrum beschreibt ein kleines, funktionsübergreifendes, selbstverwaltetes Team, das für die Gesamtheit seiner Arbeit nicht von anderen abhängt. In der Praxis sind Produktteams auch auf gemeinsame Plattformen, Sicherheit und Datenservices angewiesen. Diese Abhängigkeiten zu steuern ist Teil der Verantwortung (siehe Thema 1.8 — Agilität skalieren).

### Finanzierung und Ziele

Verantwortung braucht stabile Finanzierung und klare Ziele. Ein Team, das projektweise finanziert wird, wird aufgelöst, wenn das Projekt endet, und eine Service-Verantwortliche hat kein Team. Ein festes Team, das für ein Produkt oder einen Service finanziert wird, mit Zielen, die sich ändern, während es lernt, ist die übliche Antwort (siehe Thema 1.9 — Agiles Management). Ziele sollten sich auf Ergebnisse für Nutzende und das Geschäft beziehen und mit der verantwortlichen Person gesetzt werden.

### Verantwortung im Service-Management

ITIL-Praktiken brauchen Verantwortliche: jeder Service hat eine verantwortliche Person, jede Praktik hat eine, und jeder wichtige Prozess hat eine (siehe Thema 5.1 — Agiles Service-Management). Die Service Owner hält das Service-Level, den Katalogeintrag, die Verbesserungsliste und die Beziehung zu den Kunden (siehe Thema 3.7 — Service-Level-Management und Thema 3.8 — Service-Katalog-Management).

### Grenzen und Vorsichtshinweise

Die für diesen Leitfaden gelesenen Quellen bieten keine Belege dafür, wie gut Verantwortungsmodelle funktionieren, und der Wikipedia-Artikel zum Produktmanagement listet keine Kritik auf. Praktische Vorsichtshinweise aus Erfahrung sind unter anderem Verantwortliche mit Titel und ohne Befugnis, Verantwortliche, die mit mehreren Produkten überlastet sind, "you build it, you run it" ohne Unterstützung, was zu Erschöpfung führt, und Verantwortung, die an der Teamgrenze endet, während der Wertstrom sie überquert (siehe Thema 5.4 — Wertstrommanagement).

## Bewährte Praktiken

1. **Benennen Sie für jedes Produkt oder jeden Service eine verantwortliche Person.** Tragen Sie den Namen in den Service-Katalog ein. Stellen Sie sicher, dass sie Befugnis über Prioritäten und ein Mitspracherecht bei der Finanzierung hat.
2. **Definieren Sie, was die verantwortliche Person entscheidet.** Halten Sie fest, welche Entscheidungen sie allein trifft, welche mit dem Team und welche eine Eskalation brauchen. Ohne das ist Verantwortung ein Titel.
3. **Geben Sie der verantwortlichen Person Zeit.** Machen Sie nicht Verantwortliche mehrerer großer Produkte oder Verantwortliche mit voller Delivery-Arbeit obendrein. Verantwortung ist echte Arbeit.
4. **Finanzieren Sie das Team für die Lebensdauer des Services.** Vermeiden Sie, Teams aufzulösen, wenn Projekte enden. Überprüfen Sie die Finanzierung in einem regelmäßigen Zyklus anhand von Ergebnissen.
5. **Setzen Sie Ergebnisziele mit der verantwortlichen Person.** Beschreiben Sie, was für Nutzende und das Geschäft besser werden soll, mit wenigen Messgrößen, die das Team selbst erzeugen kann (siehe Thema 5.6 — Metriken und Messung).
6. **Legen Sie Bauen und Betreiben, wo Sie können, in ein Team.** Nehmen Sie die Fähigkeiten für Entwicklung, Betrieb und Support auf und geben Sie dem Team innerhalb sicherer Grenzen Zugang zu Produktionsdaten und -werkzeugen. Wo das nicht geht, schaffen Sie starke Arbeitsvereinbarungen.
7. **Unterstützen Sie das Team mit einer Plattform.** Stellen Sie gemeinsame Werkzeuge für Deployment, Monitoring und Sicherheit bereit, damit nicht jedes Team eigene baut. Behandeln Sie die Plattform als Produkt mit Nutzenden.
8. **Teilen Sie die Bereitschaftslast fair.** Begrenzen Sie nächtliche Einsätze, justieren Sie Alarme und achten Sie auf Burnout. "You build it, you run it" scheitert, wenn die Menschen, die es betreiben, erschöpft sind.
9. **Führen Sie ein Backlog je Produkt.** Nehmen Sie Features, Fehler, Betriebsarbeit und Verbesserungsposten in eine geordnete Liste auf, damit die verantwortliche Person sie gegeneinander abwägen kann.
10. **Verbinden Sie Verantwortliche miteinander.** Führen Sie regelmäßige Gespräche unter den Verantwortlichen abhängiger Produkte und Services, um Konflikte zu lösen und Pläne abzustimmen.
11. **Überprüfen Sie die Verantwortung jährlich.** Prüfen Sie, dass jeder Service noch eine aktive verantwortliche Person, ein Team und ein Backlog hat und dass die Rollen noch passen.
12. **Berücksichtigen Sie kleine Teams.** Wo ein Team viele kleine Services verantwortet, gruppieren Sie sie sinnvoll und nutzen Sie leichte Praktiken. Wenden Sie kein schweres Modell auf einen kleinen Service an.

## Fragen zur Diskussion im Team

**Wer ist für jeden unserer Services verantwortlich, und würde diese Person es selbst so sagen?**

Listen Sie die wichtigsten Services auf und benennen Sie die verantwortliche Person. Fragen Sie dann jede genannte Person, ob sie sich selbst als verantwortlich bezeichnen würde. Lücken zwischen der Liste und den Antworten zeigen, wie sehr Verantwortung nur dem Namen nach besteht. Die Moderation kann fragen, welcher Service keine verantwortliche Person hat und was das gekostet hat.

**Was kann unsere verantwortliche Person heute entscheiden, ohne jemanden zu fragen?**

Fragen Sie nach Beispielen: Prioritäten, Ausgaben, ein Release, eine Kundenzusage. Brauchen die meisten Entscheidungen die Genehmigung anderer, besprechen Sie, welche delegiert werden sollten und mit welchen Grenzen. Vereinbaren Sie eine Entscheidung, die verlagert wird.

**Wenn in der Produktion etwas schiefgeht, wer wird geweckt, und hat diese Person die Mittel, es zu beheben?**

Fragen Sie, wer Bereitschaft hat und was diese Person ändern kann. Sind es nicht die Bauenden, fragen Sie, warum. Besprechen Sie, wie das Feedback aus Incidents die Menschen erreicht, die den Service entwerfen. Vereinbaren Sie einen Weg, der verkürzt wird.

**Wie finanzieren wir diesen Service, und was geschieht, wenn ein Projekt endet?**

Verfolgen Sie die Finanzierung eines wichtigen Services. Fragen Sie, wer Ausgaben für Verbesserungen tätigen kann und wer entscheidet aufzuhören. Wird das Team nach einem Projekt aufgelöst, besprechen Sie die Kosten verlorenen Wissens. Schlagen Sie einen Versuch mit fester Finanzierung für einen Service vor.

**Welche Fähigkeiten fehlen uns, um unseren Service zu bauen und zu betreiben, und wie könnten wir sie bekommen?**

Listen Sie die Fähigkeiten auf, die die Arbeit braucht: Entwicklung, Betrieb, Sicherheit, Daten, Support. Markieren Sie Lücken. Besprechen Sie Pairing, Schulung, das Ausleihen einer Spezialistin oder eine gemeinsame Plattform. Wählen Sie eine Lücke zum Schließen.

**Wie viele Verantwortliche bitten wir eine Person zu sein?**

Zählen Sie die Produkte und Services, für die jede verantwortliche Person zuständig ist. Überlastete Verantwortliche können keine guten Entscheidungen treffen. Besprechen Sie Aufteilen, Delegieren oder Ausmustern von Services. Vereinbaren Sie ein Maximum und einen Plan für eine verantwortliche Person darüber.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Arbeitsagentur betreibt einen Online-Dienst zur Stellenvermittlung, der von Stellensuchenden und Arbeitgebern genutzt wird. Der Service wurde von einem Projektteam gebaut, an eine Betriebsgruppe übergeben und wird nun als Reihe kleiner Projekte finanziert. Die Leitung der Digitalservices stellt fest, dass niemand sagen kann, wer ihn verantwortet: Der ursprüngliche Projektsponsor ist im Ruhestand, der Betrieb bearbeitet Incidents, und eine Grundsatzabteilung bittet über eine Warteschlange, die Monate braucht, um Änderungen. Arbeitgeber beklagen ein Registrierungsformular, das sich seit drei Jahren nicht geändert hat.

Die Leitung benennt eine Service-Verantwortliche aus der Arbeitgeberbetreuung, eine Person, die sowohl Arbeitgeber als auch den Service versteht, und gibt ihr ein Mitspracherecht beim Backlog und einen Anteil am Budget. Ein festes Team von acht, das Entwickelnde, einen Betriebsingenieur, einen Tester und eine Designerin vereint, wird aus den Menschen gebildet, die bereits am Service arbeiteten. Das Team tritt dem Bereitschaftsplan bei, mit einer Grenze für nächtliche Einsätze, und nutzt eine von einem zentralen Team gepflegte gemeinsame Plattform für Deployment und Monitoring. Die Anfragen der Grundsatzabteilung gehen in das eine Backlog, wo die Verantwortliche sie gegen Verbesserungen und Fehlerbehebungen reiht. Das Team und die Verantwortliche vereinbaren drei Ergebnisziele für das Jahr mit wenigen Messgrößen: den Anteil abgeschlossener Arbeitgeber-Registrierungen, die Zeit, die Stellensuchende bis zu einer Vermittlung brauchen, und die Zahl wiederkehrender Incidents.

Nach acht Monaten ist das Registrierungsformular neu gebaut, die Abschlussquote verbessert sich, und wiederkehrende Incidents sinken. Die Verantwortliche kann Fragen von Arbeitgebern dazu beantworten, was geplant ist. Einige Schwierigkeiten bleiben. Die Verantwortliche ist auch für einen weiteren kleinen Service zuständig und überdehnt, die Grundsatzabteilung ärgert sich, um Backlog-Plätze konkurrieren zu müssen, und die Ingenieure in Bereitschaft sagen, der gemeinsamen Plattform fehle ein Werkzeug, das sie brauchen. Die Leitung der Digitalservices verringert die sonstigen Pflichten der Verantwortlichen, bittet die Grundsatzabteilung und die Verantwortliche, ein monatliches Planungstreffen einzurichten, und setzt den Plattformwunsch auf das Backlog des zentralen Teams.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sollten mit einer klaren verantwortlichen Person arbeiten und den Betrieb dessen übernehmen, was sie bauen. Bieten Sie der verantwortlichen Person Belege aus Nutzung, Incidents und Kosten und seien Sie ehrlich über Zielkonflikte. Bitten Sie um die Werkzeuge und die Unterstützung, die Sie brauchen, um die Bereitschaft fair zu tragen.

### Service- und Betriebsteams

Betriebsteams unterstützen Produktteams mit Expertise, Plattformen und gemeinsamen Standards. Wo sie Services für andere betreiben, benennen Sie Verantwortliche und vereinbaren Sie Service-Levels. Widerstehen Sie der Versuchung, jedes Betriebsproblem an eine zentrale Gruppe zu geben, die nichts verantwortet.

### Führung und Governance

Führungskräfte schaffen Verantwortung, indem sie Verantwortliche benennen, ihnen Befugnis und Zeit geben und feste Teams finanzieren. Verlangen Sie von Verantwortlichen Ergebnisse und Belege und sehen Sie davon ab, ihre Prioritäten ohne Gespräch zu überstimmen. Achten Sie auf Verantwortliche, die den Titel haben, aber nicht die Macht.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn sie wissen, wer für einen Service einsteht, und diese Person erreichen können. Sagen Sie der verantwortlichen Person, was am meisten zählt und was schmerzt. Erwarten Sie klare Information darüber, was geplant ist, und ein Mitspracherecht dabei, wie Prioritäten gesetzt werden.

## Typische Fehlerbilder

- **Titel ohne Befugnis.** Eine verantwortliche Person kann nichts entscheiden. Halten Sie stattdessen fest, was sie entscheidet, und stützen Sie es.
- **Verantwortung im Ausschuss.** Niemand steht ein. Benennen Sie stattdessen für jedes Produkt oder jeden Service eine Person.
- **Überlastete Verantwortliche.** Eine Person verantwortet zu viele Produkte. Begrenzen Sie stattdessen die Zahl und delegieren Sie.
- **Teams nach Projekten auflösen.** Wissen geht verloren. Finanzieren Sie stattdessen feste Teams für fortdauernde Services.
- **"You build it, you run it" ohne Unterstützung.** Teams brennen aus. Stellen Sie stattdessen eine Plattform, geteilte Bereitschaft und justierte Alarme bereit.
- **Verantwortung, die am Team endet.** Der Wertstrom überquert Teams. Verbinden Sie stattdessen die Verantwortlichen abhängiger Services.
- **Mehrere Backlogs.** Features, Fehler und Betrieb konkurrieren in verborgenen Warteschlangen. Führen Sie stattdessen ein geordnetes Backlog je Produkt.
- **Ein Modell ohne Kontext kopieren.** Ein Muster eines Großunternehmens wird auf einen kleinen Service angewandt. Passen Sie stattdessen das Modell an Größe und Risiko an.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Verantwortlichkeit | Services haben keine klare verantwortliche Person | Einige Services haben informelle Verantwortliche | Jeder Service hat eine benannte verantwortliche Person mit definierten Entscheidungsrechten und Zeit | Wirksamkeit und Ergebnisse der Verantwortlichen werden überprüft | Verantwortliche koordinieren sich über abhängige Services und mit Kunden |
| Team und Fähigkeiten | Bauen und Betreiben sind getrennte Teams | Einige Teams teilen die Bereitschaft | Feste Teams verantworten Bauen und Betreiben mit den nötigen Fähigkeiten | Fähigkeitslücken und Last werden gemessen und angegangen | Fähigkeiten und Plattformen werden über Teams und Lieferanten geteilt |
| Finanzierung und Ziele | Finanzierung erfolgt projektweise | Einige feste Teams existieren | Services haben feste Finanzierung und Ergebnisziele | Finanzierung folgt gemessenen Ergebnissen | Finanzierung und Ziele sind über Services und mit Kunden abgestimmt |
| Backlog und Prioritäten | Prioritäten kommen aus vielen Warteschlangen | Einige Verantwortliche führen eine Liste | Ein geordnetes Backlog je Produkt umfasst alle Arten von Arbeit | Backlog-Fluss und Prioritäten werden mit Stakeholdern überprüft | Prioritäten sind über Verantwortliche und mit Kunden abgestimmt |

## Checkliste

- [ ] Jedes Produkt und jeder Service hat eine benannte, verantwortliche Person, im Service-Katalog geführt.
- [ ] Was jede verantwortliche Person allein, mit dem Team und per Eskalation entscheidet, ist aufgeschrieben.
- [ ] Verantwortliche haben Zeit für die Rolle und eine handhabbare Zahl von Services.
- [ ] Für jeden fortdauernden Service ist ein festes Team finanziert.
- [ ] Jeder Service hat Ergebnisziele mit wenigen Messgrößen.
- [ ] Das Team, das einen Service baut, hat die Fähigkeiten und den Zugang, ihn zu betreiben, oder klare Arbeitsvereinbarungen mit denen, die es tun.
- [ ] Die Bereitschaftslast wird fair geteilt, mit Grenzen und justierten Alarmen.
- [ ] Eine gemeinsame Plattform unterstützt Teams bei Deployment, Monitoring und Sicherheit.
- [ ] Jedes Produkt hat ein geordnetes Backlog, das Features, Fehler, Betrieb und Verbesserung abdeckt.
- [ ] Die Verantwortung wird mindestens einmal im Jahr überprüft.

## KI-Prompts

**Zweck: Entscheidungsrechte für die verantwortliche Person eines Produkts oder Services entwerfen.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Services ohne klare verantwortliche Person finden.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Zweck: ein Bereitschaftsmodell für ein Team planen, das baut und betreibt.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine Begründung für feste Finanzierung eines Services vorbereiten.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um klarzumachen, wer für jedes Produkt oder jeden Service verantwortlich ist, unterstützt und konsultiert wird.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): nutzen Sie ihn, um Richtung und kurzfristige Pläne für ein Produkt oder einen Service zu beschreiben.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): nutzen Sie ihn, um Zweck, Ergebnisse und Grenzen eines Teams zu Beginn festzulegen.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): nutzen Sie ihn, um einer verantwortlichen Person zu helfen, das Backlog nach Wert und Kosten zu ordnen.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): nutzen Sie ihn, um zu prüfen, was ein Produkt oder ein Service als Nächstes tun soll, bevor gebaut wird.

## Wichtige Quellen

- **The Scrum Guide** (Ken Schwaber und Jeff Sutherland, scrumguides.org): die Definition der Verantwortlichkeit des Product Owners und des funktionsübergreifenden, selbstverwalteten Teams.
- **Product management** (Wikipedia): eine allgemeine Beschreibung der Disziplin, ihrer Aufgaben und ihrer Geschichte.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): das Interview, in dem "you build it, you run it" beschrieben wird; lesen Sie das Original für den genauen Wortlaut.
- **Site Reliability Engineering** (Google, sre.google): ein Weg, Teams zu unterstützen, die betreiben, was sie bauen.

## Referenzen

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
