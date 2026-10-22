# Extreme Programming

**Extreme Programming (XP) ist die agile Methode, die am konkretesten zur Ingenieurspraxis ist, und ihre Gewohnheiten, zuerst zu testen, kontinuierlich zu integrieren und die Verantwortung für den Code zu teilen, machen häufige Änderungen an einem laufenden Service sicher.**

## Warum das wichtig ist

Häufige Änderung ist das Ziel von Continuous Delivery und die Sorge des Service-Managements. Der Weg, beides zu versöhnen, sind nicht mehr Freigabesitzungen, sondern eine bessere Fähigkeit zu wissen, dass eine Änderung funktioniert, bevor sie die Nutzenden erreicht. Extreme Programming ist die agile Methode, die am meisten dazu sagt, wie man diese Fähigkeit aufbaut: zuerst Tests schreiben, mehrmals täglich integrieren, das Design einfach halten und die Verantwortung für den Code teilen.

Viele Teams übernehmen die Ereignisse und Boards von Scrum und lassen die Engineering-Praktiken zurück. Das Ergebnis ist ein Team, das in Sprints plant, aber mit Angst released. Die Praktiken von XP sind die fehlende Hälfte. Sie sind für alle wichtig, die das Ergebnis betreiben müssen, denn ein Service, der mit automatisierten Tests, kleinen Releases und geteiltem Wissen gebaut wurde, lässt sich leichter unterstützen als einer, den wenige Personen in großen, ungetesteten Chargen gebaut haben.

XP verlangt von der Organisation auch etwas, das sich leicht übersehen lässt: ein nachhaltiges Tempo, ein ganzes Team mit allen nötigen Fähigkeiten und einen Kunden, der wirklich verfügbar ist. Das sind Bedingungen der Arbeitsumgebung, nicht nur Gewohnheiten von Programmierern. Dieses Thema erklärt die Methode, die Belege zu ihren Grenzen und wie ihre Praktiken mit ITIL-Praktiken wie Change Enablement, Release-Management und Wissensmanagement zusammenhängen.

## Kernkonzepte

### Woher XP kommt

Kent Beck entwickelte XP bei der Arbeit am Chrysler Comprehensive Compensation System (C3), einem Gehaltsabrechnungsprojekt. Laut dem [Wikipedia-Artikel zu Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming) wurde Beck im März 1996 Projektleiter und verfeinerte dort die Methode, mit Ward Cunningham als wichtigem Einfluss und Ron Jeffries, der als Coach zum Team stieß. Sein Buch *Extreme Programming Explained* erschien im Oktober 1999. Chrysler stellte das C3-Projekt im Februar 2000 ein, nachdem Daimler-Benz das Unternehmen übernommen hatte.

Der Artikel weist darauf hin, dass viele XP-Praktiken nicht neu waren. Er erwähnt testgetriebenes Vorgehen im Projekt Mercury der NASA Anfang der 1960er Jahre. Der Zug von XP bestand darin, gute Praktiken auf "extreme" Niveaus zu heben: Wenn Testen gut ist, testen Sie die ganze Zeit; wenn Reviews gut sind, prüfen Sie ständig, indem Sie zu zweit arbeiten. Beck und Cunningham gehörten zu den 17 Personen, die das Agile Manifest schrieben (siehe Thema 1.1 — Das Agile Manifest).

### Die fünf Werte

XP nennt fünf Werte:

| Wert | Was er bedeutet | In der Servicearbeit |
|---|---|---|
| **Kommunikation** | Gemeinsames Verständnis zwischen Entwicklern, Nutzenden und Kunden aufbauen, vor allem durch Gespräche und einfache Entwürfe | Entwickler und Betriebsmitarbeitende sprechen darüber, wie sich ein Release verhalten wird, bevor es ausgeliefert wird |
| **Einfachheit** | Das Einfachste tun, was funktioniert, und nicht für spekulative künftige Bedürfnisse bauen | Weniger bewegliche Teile, die überwacht, abgesichert und erklärt werden müssen |
| **Feedback** | Schnell aus Tests, von Kunden und aus den eigenen Schätzungen des Teams lernen | Schnelle Testergebnisse und Produktionsmonitoring verkürzen die Lernzeit |
| **Mut** | Refactoring, veralteten Code verwerfen und bei schwierigen Problemen durchhalten | Eine alte Komponente stilllegen, die niemand anzufassen wagt |
| **Respekt** | Respekt vor Teamkollegen und vor der eigenen Arbeit | Schuldzuweisungsfreie Auswertung nach Ausfällen und faire Bereitschaftslast |

Der Artikel merkt an, dass Respekt in der zweiten Auflage von *Extreme Programming Explained* zu den ursprünglichen vier hinzugefügt wurde.

### Die Praktiken

Der Artikel zu den XP-Praktiken gruppiert zwölf Praktiken in vier Gruppen. Sie lassen sich am besten als ein System verstehen, das sich selbst stützt.

| Gruppe | Praktiken | Zweck |
|---|---|---|
| **Feinteiliges Feedback** | Pair Programming, Planungsspiel, testgetriebene Entwicklung, ganzes Team | Feedback in Minuten oder Tagen erhalten, nicht in Monaten |
| **Kontinuierlicher Prozess** | Continuous Integration, Designverbesserung (Refactoring), kleine Releases | Die Software immer in einem auslieferbaren Zustand halten |
| **Gemeinsames Verständnis** | Programmierstandard, kollektives Eigentum am Code, einfaches Design, Systemmetapher | Jedem im Team ermöglichen, jeden Teil sicher zu ändern |
| **Wohl der Programmierer** | Nachhaltiges Tempo | Menschen über Jahre ausgeruht und wirksam halten |

Eine kurze Beschreibung der wichtigsten:

- **Pair Programming:** Zwei Personen arbeiten an einer Aufgabe an einem Arbeitsplatz, eine schreibt und eine prüft, und sie tauschen häufig die Partner.
- **Testgetriebene Entwicklung (TDD):** Der Programmierer schreibt zuerst einen fehlschlagenden Test und dann gerade genug Code, damit er besteht.
- **Continuous Integration (CI):** Entwickler führen ihre Arbeit alle paar Stunden im gemeinsamen Repository zusammen, sodass Integrationsprobleme früh auftauchen.
- **Kleine Releases:** Funktionierende Software in häufigen, kleinen Schritten liefern, damit Kunden Fortschritt sehen und reagieren können.
- **Kollektives Eigentum am Code:** Jedes Teammitglied darf jeden Teil des Codes ändern.
- **Nachhaltiges Tempo:** Regelmäßige Überstunden vermeiden und Überstunden in zwei aufeinanderfolgenden Wochen nie zulassen.

### Kontroversen und Grenzen

Der Artikel verzeichnet mehrere Kritikpunkte. Matt Stephens und Doug Rosenberg argumentierten in einem Buch von 2003, die Praktiken von XP hingen voneinander ab, sodass die Übernahme nur einiger den Prozess untergrabe. Kritiker stellten außerdem Pair Programming als normale Arbeitsweise infrage, das Fehlen eines großen Entwurfs im Voraus, den Kunden vor Ort als Single Point of Failure sowie informelle Änderungswünsche, die zu Nacharbeit und schleichender Ausweitung des Umfangs führen. P. McBreen sowie Boehm und Turner verfassten ebenfalls kritische Einschätzungen. Der Artikel fügt hinzu, dass agile Praktiker viele dieser Kritikpunkte für Missverständnisse halten.

Zur Skalierung sagt der Artikel, dass Industrial XP, 2004 eingeführt, XP mit 23 Praktiken auf größere und verteilte Teams erweiterte. Er berichtet auch eine Behauptung, als belegbedürftig markiert, dass ThoughtWorks bei verteilten XP-Projekten mit bis zu sechzig Personen angemessenen Erfolg hatte. Lesen Sie diese Behauptung mit Vorsicht und siehe Thema 1.8 — Agilität skalieren für die weitere Diskussion.

Der Artikel behandelt Deployment oder Produktionsmonitoring über Continuous Integration und kleine Releases hinaus nicht. XP sagt wenig über den Betrieb von Software. Dieses Wissen bringen Sie aus dem Service-Management mit, und Sie nutzen XP, um die Übergabe weniger riskant zu machen.

### XP und die ITIL-Sicht auf Änderungen

Die ITIL-Praktik Change Enablement (siehe Thema 3.4 — Change Enablement) sorgt dafür, dass Änderungen bewertet, genehmigt und eingeplant werden, damit Risiko kontrolliert wird. XP kontrolliert Risiko an anderer Stelle: im Code, durch Tests, kleine Schritte und geteiltes Wissen. Eine Änderung, die klein ist, automatisch getestet, integriert und leicht umkehrbar, ist nach jeder vernünftigen Bewertung eine Änderung mit geringerem Risiko. Beide Sichtweisen passen zusammen, wenn die Belege aus den Praktiken von XP in der Änderungsentscheidung genutzt werden.

## Bewährte Praktiken

1. **Übernehmen Sie Praktiken als Satz.** Der Einwand der Kritiker, dass sich die Praktiken von XP gegenseitig stützen, ist eine nützliche Warnung. Testen ohne Integration oder Integration ohne kleine Schritte bringt weniger als die Summe. Führen Sie sie, wo möglich, gemeinsam ein und lernen Sie, wovon sie jeweils abhängen.
2. **Schreiben Sie bei wichtigen Änderungen den Test zuerst.** Schreiben Sie für ein neues Verhalten oder eine Fehlerbehebung einen fehlschlagenden Test, der das Problem zeigt, und beheben Sie es dann. Der Test bleibt als Wächter gegen die Wiederkehr des Problems, was besonders bei Fehlern nützlich ist, die Incidents verursacht haben.
3. **Integrieren Sie mehrmals am Tag.** Halten Sie Branches kurzlebig und bauen und testen Sie bei jedem Merge automatisch. Ein kaputter Build ist die erste Priorität des Teams.
4. **Releasen Sie in kleinen Schritten.** Jedes kleine Release trägt weniger Risiko und ist leichter zu verstehen und umzukehren. Streben Sie das kleinste Intervall an, das Ihre Pipeline sicher unterstützen kann, und verkürzen Sie es mit wachsendem Vertrauen.
5. **Führen Sie Refactoring fortlaufend durch.** Verbessern Sie das Design jeden Tag ein wenig, statt es für eine Neuentwicklung aufzusparen. Die Testsuite macht das sicher.
6. **Halten Sie das Design so einfach wie möglich.** Bauen Sie, was jetzt gebraucht wird, und entfernen Sie, was nicht genutzt wird. Ein kleineres System hat weniger zu überwachen, zu patchen und zu erklären.
7. **Teilen Sie das Eigentum am Code.** Lassen Sie jedes Teammitglied jeden Teil ändern, gestützt durch Tests und gemeinsame Standards. Das verringert die Abhängigkeit von wenigen Experten, die zugleich ein Verfügbarkeitsrisiko für den Service ist.
8. **Arbeiten Sie bei riskanter oder unvertrauter Arbeit zu zweit.** Nutzen Sie Pairing für knifflige Änderungen, für die Einarbeitung und für das Mitlaufen in der Bereitschaft. Behandeln Sie es als Werkzeug, um Wissen zu verbreiten und Fehler zu fangen, und machen Sie es nicht zur Regel für jede Aufgabe.
9. **Halten Sie ein nachhaltiges Tempo.** Planen Sie Arbeit so, dass Überstunden selten sind und sich nicht Woche für Woche wiederholen. Ein müder Bereitschaftsingenieur ist ein Risiko für den Service (siehe Thema 1.2 — Agile Prinzipien zum Tempo).
10. **Machen Sie den Kunden zum Teil des Teams.** Finden Sie einen echten Nutzer oder eine Nutzervertretung, die während der Arbeit Fragen beantworten kann. Denken Sie an die Kritik, dass eine einzelne Person ein Single Point of Failure ist, und beziehen Sie daher mehr als eine Stimme ein.
11. **Schreiben Sie Akzeptanzkriterien wenn möglich als Tests.** Verwandeln Sie die Erwartungen des Kunden in automatisierte Prüfungen, die mit jedem Build laufen. Sie dokumentieren dann das Verhalten und schützen es zugleich.
12. **Nehmen Sie betriebliche Prüfungen in die Tests auf.** Fügen Sie der Pipeline Prüfungen für Monitoring, Logging und Wiederherstellungsverhalten hinzu, damit die Betriebsbereitschaft bei jeder Änderung verifiziert wird (siehe Thema 3.5 — Release- und Deployment-Management).

## Fragen zur Diskussion im Team

**Woher wissen wir, dass eine Änderung funktioniert, bevor sie Nutzende erreicht, und wie lange dauert es, das zu wissen?**

Verfolgen Sie die Prüfungen, die eine Änderung zwischen dem Laptop eines Entwicklers und der Produktion durchläuft. Zählen Sie, wie viele automatisiert sind und wie lange jede dauert. Typische Antworten sind ein manueller Test, ein Review und eine Hoffnung. Fragen Sie, welche Prüfung die meisten Probleme gefangen hat und welche nie etwas gefangen hat. Wählen Sie anschließend eine manuelle Prüfung zum Automatisieren.

**Wer kann welche Teile unseres Systems ändern, und was passiert, wenn diese Personen abwesend sind?**

Listen Sie die Komponenten und die Personen auf, die jede verstehen. Komponenten mit nur einer Person dahinter sind Risiken für den Service. Kollektives Eigentum ist die XP-Antwort, und es braucht Tests und gemeinsame Standards, um sicher zu sein. Fragen Sie, was eine Person innerhalb eines Monats einer anderen beibringen könnte. Die Moderation kann fragen, ob Urlaub oder Krankheit je eine Behebung verzögert haben.

**Wo würde Pairing uns am meisten helfen, und wo würde es uns nur bremsen?**

Pair Programming ist umstritten, laden Sie also zu ehrlichen Ansichten ein. Fragen Sie nach dem besten und dem schlechtesten Pairing, das jemand erlebt hat. Pairing hilft oft bei unvertrauten Systemen, kniffligen Änderungen und der Einarbeitung. Es hilft weniger bei Routinearbeit, die eine Person gut erledigen kann. Vereinbaren Sie eine Situation, in der Pairing einen Monat lang ausprobiert wird, und wie Sie es beurteilen.

**Was passiert mit unserer Qualität, wenn wir unter Druck stehen, und was lassen wir zuerst fallen?**

Fragen Sie nach einer jüngsten Hektikphase und danach, was übersprungen wurde: Tests, Reviews, Dokumentation. Fragen Sie, was danach geschah. Oft kam die übersprungene Arbeit als Incidents zurück. Es geht darum, das Muster zu bemerken und im Voraus zu entscheiden, welche Praktiken geschützt sind. Vermeiden Sie Schuldzuweisungen und verbinden Sie die Antwort mit dem nachhaltigen Tempo.

**Wie oft führen wir unsere Arbeit zusammen, und was lässt uns warten?**

Fragen Sie, wie lange ein typischer Branch lebt und was ihn aufhält. Lange Branches spiegeln meist große Änderungen, langsame Reviews oder einen unzuverlässigen Build wider. Jedes erfordert eine andere Abhilfe. Fragen Sie, was das Team tun könnte, damit das Zusammenführen innerhalb weniger Stunden der Normalfall wird. Wählen Sie ein Hindernis zum Beseitigen.

**Haben wir einen Kunden oder Nutzer, der dem Team zur Verfügung steht, oder raten wir, was er will?**

Fragen Sie, wer Fragen dazu beantwortet, was die Nutzenden brauchen, und wie lange das dauert. Ist die Antwort eine lange Kette, fragen Sie, bei welcher Frage ein Irrtum am teuersten war. Denken Sie an die Kritiker von XP selbst: Eine einzelne Kundenvertretung kann ein Engpass sein. Besprechen Sie, wie man mehrere Nutzende kurz und oft erreicht.

## In der Praxis: ein agiles ITIL-Beispiel

Das Digitalteam eines öffentlichen Nahverkehrsunternehmens aus neun Personen baut und betreibt seine Routenplaner-App und einen Feed mit Live-Ankunftsdaten, den andere Entwickler der Stadt nutzen. Das Team released monatlich nach einem manuellen Testzyklus von vier Tagen. Läuft ein Release schief, dauert der Rollback einen halben Tag, sodass das Team zögert, häufiger zu releasen. Die Betriebsleitung, die zugleich die erfahrenste Entwicklerin ist, nimmt die meisten Anrufe außerhalb der Arbeitszeit entgegen, weil sonst niemand weiß, wie der Feed funktioniert.

Das Team beschließt, einige XP-Praktiken gemeinsam einzuführen. Es richtet Continuous Integration ein, die bei jedem Merge baut und Unit-Tests ausführt. Für jeden in der Produktion gefundenen Fehler schreibt es einen fehlschlagenden Test, bevor es ihn behebt. Zwei Entwickler arbeiten täglich eine Stunde mit der Betriebsleitung bei der Feed-Arbeit im Pair. Das Team fügt außerdem einen Deployment-Schritt hinzu, der in Minuten auf die vorherige Version zurückschalten kann.

Nach vier Monaten released das Team jede Woche. Die Testsuite fängt vor dem Release zwei Regressionen, die der manuelle Zyklus erst am letzten Tag gefunden hätte. Drei Entwickler können nun die meisten Feed-Anrufe bearbeiten. Nicht alles funktioniert: Die Testsuite braucht 25 Minuten, sodass Entwickler seltener zusammenführen als beabsichtigt, und eine fehlerhafte Änderung am Ankunfts-Feed rutscht durch, weil ihre Tests Beispieldaten nutzten, die einem echten Grenzfall nicht entsprachen. Das Team verlagert die langsamen Tests in eine zweite Stufe, damit die ersten Ergebnisse innerhalb von fünf Minuten kommen, und fügt eine Monitoring-Prüfung für die Ausgabe des Feeds hinzu. Sie vereinbaren außerdem, dass Pairing ein Werkzeug für schwierige Probleme und die Einarbeitung bleibt, nicht eine Regel für jede Aufgabe.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verantworten die Praktiken von XP. Beginnen Sie mit denen, die am schnellsten Feedback geben: automatisierte Tests und Continuous Integration. Behandeln Sie Ihre Testsuite als ein Produkt, das auch der Betrieb nutzt. Sie beschreibt, was der Service tun soll, und sagt Ihnen schnell, wenn er es nicht mehr tut.

### Service- und Betriebsteams

Betriebsmitarbeitende können XP-Ideen für die eigene Arbeit nutzen: Infrastruktur- und Konfigurationsänderungen, die vor der Ausführung getestet werden, kleine Änderungen, die oft integriert werden, und Wissen, das durch Pairing und kollektives Eigentum im Team geteilt wird. Bitten Sie Delivery-Teams um Tests, die die Ausfälle abdecken, die Sie in der Produktion sehen, und bieten Sie die Incident-Historie an, um zu lenken, was getestet wird.

### Führung und Governance

Führungskräfte ermöglichen XP, indem sie das Tempo schützen, Build- und Test-Infrastruktur bezahlen und akzeptieren, dass Qualität in die Arbeit eingebaut und nicht nachträglich hineingeprüft wird. Fragen Sie nach Sicherheitsnachweisen, die aus der Pipeline kommen, etwa Testergebnissen und Release-Historien, und verlangen Sie keine doppelten manuellen Nachweise.

### Kunden und Nutzer

Kunden haben in XP die direkteste Rolle: Sie sind Teil der Feedbackschleife des Teams. Rechnen Sie damit, gebeten zu werden, kleine Releases auszuprobieren, Fragen schnell zu beantworten und zu sagen, was diese Woche am wichtigsten ist. Im Gegenzug sollten Sie weniger Überraschungen und schnellere Behebungen von Problemen sehen, die Sie melden.

## Typische Fehlerbilder

- **Nur die Rituale übernehmen.** Teams nehmen Stand-ups und Boards und lassen Tests und Integration aus. Beginnen Sie stattdessen mit automatisierten Tests und Continuous Integration, denn sie bringen den größten Ertrag.
- **Pairing als Regel behandeln.** Erzwungenes Pairing bei jeder Arbeit frustriert Menschen und bremst Routineaufgaben. Nutzen Sie Pairing stattdessen für schwierige Probleme, Einarbeitung und Wissenstransfer und überprüfen Sie, wie es wirkt.
- **Eine Testsuite, der niemand traut.** Langsame oder unzuverlässige Tests werden ignoriert. Halten Sie die Suite stattdessen schnell und beheben oder löschen Sie instabile Tests umgehend.
- **Kollektives Eigentum ohne Standards.** Jeder kann alles ändern, und der Code verfällt. Verbinden Sie es stattdessen mit gemeinsamen Programmierstandards, Reviews und automatisierten Prüfungen.
- **Eine einzelne Kundenvertretung.** Eine Person wird zum Engpass oder zur Quelle von Verzerrung. Verteilen Sie den Kontakt stattdessen auf mehrere Nutzende und prüfen Sie Entscheidungen an echter Nutzung.
- **Design ganz überspringen.** Teams führen wiederholt Refactoring ohne Richtung durch. Halten Sie stattdessen ein leichtes Bild der Architektur bereit und überprüfen Sie es in regelmäßigen Abständen.
- **Überstunden als Normalität.** Lange Arbeitszeiten zehren an der Qualität und verursachen Incidents. Planen Sie stattdessen mit einem nachhaltigen Tempo und behandeln Sie wiederholte Überstunden als Signal, den Umfang zu verringern.
- **Den Betrieb ignorieren.** XP sagt wenig über den Betrieb von Software, und Teams nehmen an, er sei abgedeckt. Fügen Sie stattdessen betriebliche Prüfungen zu den Tests hinzu und laden Sie Betriebsmitarbeitende in die Planung ein.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Testen | Testen ist manuell und spät | Einige Teams haben automatisierte Unit-Tests | Teams schreiben Tests mit dem Code und führen sie bei jeder Änderung aus | Testergebnisse und durchgerutschte Fehler werden verfolgt und überprüft | Die Teststrategie wird über Services hinweg abgestimmt und mit dem Betrieb geteilt |
| Integration und Release | Integration ist selten und Releases sind groß | Einige Teams nutzen Continuous Integration | Eine gemeinsame Pipeline baut, testet und deployt jede Änderung | Release-Häufigkeit und Fehlerrate werden gemessen und verbessert | Pipelines werden über Teams und Lieferanten hinweg abgestimmt |
| Geteiltes Eigentum und Wissen | Wissen sitzt bei wenigen Einzelpersonen | Einige Teams arbeiten im Pair oder rotieren Arbeit | Kollektives Eigentum mit Standards ist die Norm | Wissenslücken werden verfolgt und verringert | Wissen fließt frei zwischen Teams und in Runbooks |
| Tempo und Wohlergehen | Überstunden sind Routine | Einige Teams beobachten ihre Arbeitslast | Nachhaltiges Tempo ist erklärte Richtlinie | Bereitschaftslast und Überstunden werden gemessen und überprüft | Arbeitslast wird über Teams hinweg anhand gemeinsamer Daten ausgeglichen |

## Checkliste

- [ ] Das Team hat vereinbart, welche XP-Praktiken es nutzt, und hat sie gemeinsam ausprobiert.
- [ ] Automatisierte Tests laufen bei jeder Änderung, und ein fehlschlagender Build wird zuerst behoben.
- [ ] Jeder Fehler in der Produktion bekommt einen Test, der ihn gefangen hätte.
- [ ] Arbeit wird mehrmals am Tag in den gemeinsamen Branch zusammengeführt.
- [ ] Releases sind klein, und ein Rollback ist schnell möglich.
- [ ] Mehr als eine Person kann jeden Teil des Systems ändern und unterstützen.
- [ ] Pairing wird für schwierige Probleme und die Einarbeitung genutzt, und seine Wirkung wird überprüft.
- [ ] Überstunden sind selten und wiederholen sich nicht Woche für Woche.
- [ ] Ein Nutzer oder eine Nutzervertretung steht während der Arbeit für Fragen zur Verfügung.
- [ ] Tests schließen Prüfungen für Monitoring und Wiederherstellungsverhalten ein.

## KI-Prompts

**Zweck: einen Produktions-Incident in einen Test und eine Liste von Erkenntnissen verwandeln.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Zweck: einschätzen, wie sicher Ihr Team kleine Änderungen releasen kann.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Zweck: ein einmonatiges Experiment mit Pairing entwerfen.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine Definition of Done auf Betriebsbereitschaft prüfen.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## KI-Skills

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): nutzen Sie ihn, um XP-Praktiken wie Pairing, testgetriebene Entwicklung und Continuous Integration zu überprüfen oder einzuführen.
- [user-story](../../../../skills/user-story/SKILL.md): nutzen Sie ihn, um Kundenbedürfnisse in Stories mit Akzeptanzkriterien zu verwandeln, die zu automatisierten Tests werden können.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): nutzen Sie ihn, um kleine, häufige Releases und die Prüfungen zu planen, die sie sicher machen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um zu überprüfen, wie gut die Praktiken wirken, und eine Änderung zu wählen.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um Wissen, das eine Person hält, in ein geteiltes, getestetes Verfahren zu überführen.

## Wichtige Quellen

- **Extreme programming** und **Extreme programming practices** (Wikipedia): ein Überblick über Geschichte, Werte, Praktiken und Kritik, mit Belegen.
- **Extreme Programming Explained** (Kent Beck): die ursprüngliche Darstellung der Methode; ihre zweite Auflage fügt den Wert Respekt hinzu.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP ist eine der Methoden, deren Autoren das Manifest schrieben.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens und Doug Rosenberg, 2003): die bekannteste Kritik, nützlich, um die eigenen Annahmen zu prüfen.

## Referenzen

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
