# Lean Softwareentwicklung

**Lean Softwareentwicklung wendet die Lean-Ideen, Verschwendung zu beseitigen, schnell zu lernen und das Gesamtsystem zu optimieren, auf Softwarearbeit an, und sie gibt Serviceteams eine gemeinsame Art zu sehen, wo Zeit und Aufwand aus dem Fluss von der Anfrage zum Wert verloren gehen.**

## Warum das wichtig ist

Agile Methoden sagen Ihnen, in kleinen Schritten zu liefern und zu lernen. Lean stellt eine schärfere Frage: Wo bleibt die Zeit? In den meisten Serviceorganisationen ist die Arbeitszeit an einer Anfrage ein kleiner Teil der verstrichenen Zeit. Der Rest ist Warten auf Freigaben, Übergaben zwischen Teams, Nacharbeit wegen Fehlern und Arbeit, die ohnehin niemand wollte. Lean gibt Ihnen Worte und Werkzeuge, um diese Verschwendung zu sehen und zu beseitigen.

Lean richtet den Blick auch auf das Gesamtsystem. Ein Team, das seinen eigenen Teil beschleunigt, während die Warteschlange davor oder danach wächst, hat für den Kunden nichts verbessert. Diese Sicht passt gut zum Service-Management. Ein Service ist die Summe vieler Teams, Werkzeuge und Lieferanten, und eine Verzögerung irgendwo ist eine Verzögerung für die Nutzenden. Das Prinzip "das Ganze optimieren" ist eine ständige Erinnerung, auf den durchgängigen Fluss zu schauen.

Lean ist die Quelle für vieles, was an anderer Stelle in diesem Leitfaden erscheint. Kanban schöpft aus denselben Wurzeln (siehe Thema 1.5 — Kanban), das Wertstrommanagement wendet Lean-Mapping auf digitale Arbeit an (siehe Thema 5.4 — Wertstrommanagement), und die kontinuierliche Verbesserung greift die Lean-Gewohnheit ständiger kleiner Fortschritte auf (siehe Thema 3.15 — Kontinuierliche Verbesserung). Dieses Thema erklärt die Ideen und wie man sie nutzt, ohne sie zu Schlagworten zu machen.

## Kernkonzepte

### Woher Lean kommt

Laut dem [Wikipedia-Artikel zu Lean Manufacturing](https://en.wikipedia.org/wiki/Lean_manufacturing) ist Lean aus dem [Toyota-Produktionssystem](https://en.wikipedia.org/wiki/Toyota_Production_System) hervorgegangen. Nach dem Zweiten Weltkrieg hatten japanische Hersteller wenig Geld, Platz oder Rohstoffe, und Taiichi Ohno und Shigeo Shingo gestalteten den Prozess von Toyota um kleine Fabriken und geringe Lagerbestände herum neu, aufbauend auf der Lehre von W. Edwards Deming. John Krafcik prägte den Begriff "lean" in einem Artikel von 1988, und James Womack und Daniel Jones definierten ihn 1996 in ihrem Buch *Lean Thinking* förmlich.

Der Begriff "Lean Softwareentwicklung" stammt laut dem [Wikipedia-Artikel zu Lean Software Development](https://en.wikipedia.org/wiki/Lean_software_development) aus dem Buch *Lean Software Development: An Agile Toolkit* von Mary und Tom Poppendieck aus dem Jahr 2003. Das Buch überträgt Prinzipien der Lean-Produktion auf Software und vergleicht Lean-Werkzeuge mit agilen Praktiken. Die Vorträge der Poppendiecks auf agilen Konferenzen halfen, die Ideen in die agile Gemeinschaft zu tragen.

### Fünf Prinzipien des Lean Thinking

Womack und Jones legten fünf Prinzipien des Lean Thinking dar, wie der Artikel zur Produktion sie festhält:

1. **Wert:** Wert aus Sicht des Kunden definieren.
2. **Wertstrom:** die gesamte Abfolge von Schritten identifizieren, die diesen Wert erzeugt, und die Schritte infrage stellen, die keinen hinzufügen.
3. **Fluss:** die verbleibenden Schritte ohne Unterbrechung fließen lassen.
4. **Pull:** den Bedarf des Kunden die Arbeit durchziehen lassen, statt sie hindurchzudrücken.
5. **Perfektion:** weiter verbessern, damit Verschwendung weiter beseitigt wird.

### Sieben Prinzipien für Software

Der Wikipedia-Artikel zur Lean Softwareentwicklung listet sieben Prinzipien für Software auf:

| Prinzip | Was es verlangt | In der Servicearbeit |
|---|---|---|
| **Verschwendung beseitigen** | Alles entfernen, was für den Kunden keinen Wert schafft | Freigaben streichen, die nie ablehnen, Berichte, die niemand liest, und Features, die niemand nutzt |
| **Lernen verstärken** | Den Zyklus vom Ausprobieren bis zum Lernen, wie es lief, verkürzen | Kleine Änderungen releasen und beobachten, was Nutzende tun |
| **So spät wie möglich entscheiden** | Festlegungen aufschieben, bis Fakten vorliegen, und dabei Optionen offenhalten | Die Gestaltung der gesamten Zukunft eines Services nicht festlegen, bevor man weiß, wie er genutzt wird |
| **So schnell wie möglich liefern** | Die Zeit von der Idee zum Wert verringern; schnelle Lieferung lässt Ergebnisse früher sehen und analysieren | Den Weg für kleine Änderungen und Routineanfragen verkürzen |
| **Das Team befähigen** | Die Menschen, die die Arbeit tun, darüber entscheiden lassen | Dem Service Desk die Befugnis geben, häufige Probleme ohne Eskalation zu lösen |
| **Integrität einbauen** | Qualität während der Arbeit einbauen, statt sie nachträglich zu prüfen | Automatisierte Tests, Monitoring und klare Runbooks als Teil der Arbeit |
| **Das Ganze optimieren** | Den durchgängigen Fluss verbessern, nicht die Leistung eines Teils | Die Zeit von der Anfrage bis zur Lösung über Teams hinweg messen, nicht die Warteschlange jedes Teams |

Der Artikel sagt, diese Prinzipien gelingen nur, wenn sie zusammen und mit gesundem Urteil über das Umfeld angewendet werden. Er bezeichnet auch die Überzeugung, "Eile verursacht Verschwendung", als Mythos und argumentiert, schnelle Lieferung helfe Teams, Ergebnisse früher zu sehen und zu analysieren. Diese Behauptung ist eine Sichtweise, kein Gesetz: Geschwindigkeit ohne eingebaute Qualität erzeugt sehr wohl Verschwendung, weshalb "Integrität einbauen" neben "so schnell wie möglich liefern" steht.

### Verschwendung in Software und Servicearbeit

Die sieben Verschwendungsarten von Lean (genannt *Muda*) stammen aus Shingos Liste für die Produktion: Lagerbestand, Überproduktion, Überverarbeitung, Transport, überflüssige Bewegung, Warten und Fehler. Der Artikel zur Lean Softwareentwicklung ordnet sie wie folgt der Software zu:

| Verschwendung in der Produktion | Entsprechung in der Software | Beispiel in einem Serviceteam |
|---|---|---|
| Lagerbestand | Teilweise erledigte Arbeit | Eine lange Liste begonnener, aber unfertiger Änderungen |
| Überproduktion | Zusätzliche Features | Ein Bericht oder Service, nach dem niemand gefragt hat |
| Überverarbeitung | Zusätzliche Prozesse | Vier Freigaben für eine Änderung mit geringem Risiko |
| Transport | Aufgabenwechsel | Ein Ingenieur, der zwischen Incidents und Projektarbeit hin- und hergerissen wird |
| Warten | Warten | Ein Ticket, das in der Warteschlange eines anderen Teams wartet |
| Bewegung | Übergaben | Eine Anfrage, die fünf Personen durchläuft |
| Fehler | Fehler | Ein Bug, der Nacharbeit und wiederholte Incidents verursacht |

Die japanischen Begriffe *Mura* (Ungleichmäßigkeit) und *Muri* (Überlastung) werden Diskussionen über Verschwendung manchmal hinzugefügt. Die hier herangezogenen Wikipedia-Artikel listen nur die sieben Verschwendungsarten auf, nutzen Sie die zusätzlichen Begriffe also mit Sorgfalt und definieren Sie sie, wenn Sie es tun.

### Wertstromanalyse

Der Artikel zur Lean Softwareentwicklung nennt die Wertstromanalyse (Value Stream Mapping) als Technik, um Verschwendung zu finden, wobei Verschwendung in wiederholten Runden beseitigt wird. Eine Karte zeigt jeden Schritt auf dem Weg von der Anfrage zum gelieferten Wert, mit der Zeit, in der an der Arbeit gearbeitet wird, und der Zeit, in der sie wartet. Das Ergebnis ist oft ein Schock: Ein Weg, der Wochen dauert, kann nur Stunden tatsächlicher Arbeit enthalten.

### Pull, Fluss und Kanban

Das Pull-Prinzip von Lean steht hinter den Grenzen der laufenden Arbeit in Kanban. Der Artikel zur Software beschreibt Just-in-time-Entwicklung, bei der der Kunde das benötigte Ergebnis nennt und das Team seine eigenen Aufgaben organisiert und Arbeit zieht, wie die Kapazität es zulässt. Kanban-Karten sind eine sichtbare Form dieses Pull (siehe Thema 1.5 — Kanban).

### Kaizen: ständige kleine Verbesserung

Kaizen bedeutet kontinuierliche, schrittweise Verbesserung. Der Artikel zur Produktion führt es auf Verbesserungsteams bei Toyota im Jahr 1936 zurück. In einem Serviceteam zeigt es sich als kleine Änderungen, die oft und von den Menschen gemacht werden, die der Arbeit am nächsten sind, etwa eine überarbeitete Vorlage, eine neue automatisierte Prüfung oder eine klarere Übergabe. Es unterscheidet sich von großen Verbesserungsprogrammen darin, dass es nie auf einen Budgetzyklus wartet.

### Grenzen von Lean

Die herangezogenen Artikel nennen keine förmliche Kritik, aber praktische Grenzen sind wohlbekannt. Lean stammt aus wiederholbarer Produktion, und Wissensarbeit variiert weit stärker. Das Zählen von Verschwendung kann Spielraum verringern, den ein Team braucht, um mit Überraschungen umzugehen, sodass ein voll ausgelastetes Team bei einem Incident langsam reagiert. Betrachten Sie Lean als Linse, die Verschwendung findet, und halten Sie Reservekapazität dort vor, wo die Schwankung hoch ist (siehe Thema 3.11 — Verfügbarkeit, Kapazität und Performance).

## Bewährte Praktiken

1. **Definieren Sie Wert von der Kundenseite.** Schreiben Sie für jeden Service auf, was die Nutzenden tatsächlich bekommen und wann. Beurteilen Sie damit jeden Schritt: Schafft er für die Nutzenden Wert, oder dient er nur unserem eigenen Prozess?
2. **Bilden Sie den Wertstrom für eine echte Anfrageart ab.** Wählen Sie eine häufige Anfrage oder Änderung und verfolgen Sie sie vom ersten Kontakt bis zur Lieferung. Halten Sie an jedem Schritt Arbeitszeit und Wartezeit fest. Eine grobe Karte, die in einer Stunde gezeichnet wurde, ist nützlicher als eine perfekte, die in einem Quartal entstand.
3. **Benennen Sie die Verschwendung, die Sie finden.** Nutzen Sie die sieben Kategorien als Checkliste: teilweise erledigte Arbeit, zusätzliche Features, zusätzlicher Prozess, Aufgabenwechsel, Warten, Übergaben, Fehler. Sie zu benennen macht sie leichter besprechbar, ohne Einzelne zu beschuldigen.
4. **Gehen Sie zuerst die längste Wartezeit an.** Die größte Verzögerung auf der Karte liegt meist zwischen den Schritten, nicht in ihnen. Sie zu verringern schlägt in der Regel, einen Schritt zu polieren, der bereits schnell ist.
5. **Begrenzen Sie laufende Arbeit.** Arbeit zu beenden ist schneller, als sie zu jonglieren. Begrenzen Sie die Zahl offener Elemente je Team und beobachten Sie, was mit der Zeit geschieht, die jedes braucht.
6. **Bauen Sie Qualität ein.** Fügen Sie Prüfungen im Moment der Arbeit hinzu, etwa automatisierte Tests, Peer-Review und Monitoring vor dem Release, damit Fehler früh gefunden werden. Am Ende zu prüfen ist langsamer und teurer.
7. **Verschieben Sie Entscheidungen, die Sie noch nicht gut treffen können.** Halten Sie Optionen offen, bis Sie Fakten haben, setzen Sie aber ein Datum, bis zu dem Sie entscheiden. Das vermeidet sowohl frühe Festlegung auf einen falschen Entwurf als auch endlose Unentschlossenheit.
8. **Befähigen Sie die Menschen nahe an der Arbeit.** Lassen Sie Service-Desk-Analysten, Bereitschaftsingenieure und Entwickler innerhalb klarer Grenzen entscheiden. Nennen Sie die Grenzen, etwa Ausgaben- oder Risikoschwellen, und überprüfen Sie sie nach Incidents.
9. **Schauen Sie auf das Ganze, nicht auf den Teil.** Messen Sie die durchgängige Zeit von der Anfrage bis zur Lösung und besprechen Sie sie mit allen beteiligten Teams. Eine Änderung, die einem Team hilft und ein anderes bremst, ist keine Verbesserung.
10. **Machen Sie Verbesserung klein, häufig und lokal.** Ermuntern Sie jedes Team, jede Woche oder alle zwei Wochen eine kleine Verbesserung vorzunehmen und zu teilen, was es gelernt hat. Halten Sie die Änderung und ihr Ergebnis fest.
11. **Halten Sie Spielraum dort vor, wo die Schwankung hoch ist.** Füllen Sie nicht jede Stunde eines Bereitschaftsteams. Lassen Sie Kapazität für Überraschungen und beurteilen Sie sie daran, wie schnell sich das Team erholt, wenn etwas schiefgeht.
12. **Nutzen Sie Lean mit anderen Praktiken.** Kombinieren Sie Wertstromkarten mit Flussmaßen aus Kanban und mit dem Problem Management für wiederkehrende Fehler (siehe Thema 3.3 — Problem Management).

## Fragen zur Diskussion im Team

**Wenn wir eine häufige Anfrage von Anfang bis Ende verfolgten, wie viel der verstrichenen Zeit wäre tatsächliche Arbeit?**

Wählen Sie eine typische Anfrage und sammeln Sie die Daten jedes Schritts. Markieren Sie die Zeit, in der jemand daran arbeitete, und die Zeit, in der sie in einer Warteschlange lag. Der Anteil ist oft ein Schock. Fragen Sie die Beteiligten, wo sie die Wartezeiten erwartet hatten und wo sie tatsächlich waren. Die Moderation sollte Lösungen zunächst zurückstellen und die Gruppe bitten, sich darauf zu einigen, was die Karte zeigt.

**Welche der sieben Verschwendungsarten sehen wir in unserer täglichen Arbeit am häufigsten?**

Geben Sie den Beteiligten die Liste und bitten Sie um ein jüngstes Beispiel zu jeder. Rechnen Sie damit, dass teilweise erledigte Arbeit, Aufgabenwechsel, Warten und Übergaben oft genannt werden. Fragen Sie, welche das Team allein ändern kann und welche andere Teams oder Führungskräfte brauchen. Wählen Sie zum Schluss eine Verschwendungsart, die in diesem Monat verringert wird.

**Was tun wir, das unsere Kunden nicht vermissen würden, wenn wir es ließen?**

Listen Sie Berichte, Meetings, Formulare und Freigaben auf. Fragen Sie zu jedem, wer es nutzt und was geschieht, wenn es entfällt. Manche werden für Audit oder Sicherheit gebraucht, was ein guter Grund ist. Andere erweisen sich als Gewohnheit. Beauftragen Sie jemanden, jedes zweifelhafte Element zu prüfen, bevor es entfernt wird.

**Wo prüfen wir Qualität am Ende, statt sie einzubauen?**

Sehen Sie sich Ihre Release-, Change- und Incident-Prozesse nach Prüfungen am Ende der Linie an. Fragen Sie, welche Fehler diese Prüfungen finden und wann sie früher hätten gefunden werden können. Typische Antworten sind Tests nach Abschluss der Entwicklung und die nachträgliche Prüfung von Dokumenten. Wählen Sie eine Prüfung, die früher stattfinden soll, und beschreiben Sie, woran Sie erkennen, ob es geholfen hat.

**Wer kann in unserem Team Entscheidungen treffen, ohne zu fragen, und wer sollte es können?**

Bitten Sie die Beteiligten, die letzten fünf Entscheidungen aufzulisten, die sie treffen wollten und nicht konnten, und warum. Suchen Sie nach Mustern, etwa Ausgabengrenzen, Änderungsfreigaben oder Prioritätsentscheidungen. Fragen Sie, was es sicher machen würde, eine dieser Entscheidungen näher an die Arbeit zu holen, etwa eine Leitplanke oder eine nachträgliche Überprüfung. Drängen Sie nicht auf ein Ja; Ziel ist herauszufinden, was die Beteiligten für nötig halten.

**Wenn alles, was wir jetzt tun, schneller würde, was bräche zuerst?**

Diese Frage prüft "so schnell wie möglich liefern" und "Integrität einbauen" zusammen. Fragen Sie, wo ein schnellerer Fluss ein Team, ein Werkzeug oder eine Person überlasten würde. Typische Antworten sind Tests, Freigaben und Bereitschaftslast. Behandeln Sie die Antworten als das Nächste, was verbessert wird. Denken Sie daran, dass Lean den Fluss des Gesamtsystems schätzt, der Engpass also der Ort ist, an dem investiert werden sollte.

## In der Praxis: ein agiles ITIL-Beispiel

Die IT-Abteilung einer nationalen Steuerbehörde betreibt einen internen Service, über den Mitarbeitende Softwarezugang beantragen. Eine typische Anfrage dauert etwa drei Wochen, und die Mitarbeitenden beschweren sich laut. Das fünfköpfige Team, das die Anfragen erfüllt, glaubt, hart zu arbeiten, und ist von der Beschwerde überrascht.

Eine Führungskraft leitet eine Wertstromanalyse mit dem Team, der Sicherheitsgruppe und zwei Fachanwendern. Gemeinsam verfolgen sie zehn jüngste Anfragen. Jede Anfrage durchläuft acht Schritte: Formularabgabe, Freigabe durch die Linienführungskraft, Freigabe durch den Datenverantwortlichen, Sicherheitsprüfung, Lizenzprüfung, Ticketzuweisung, Installation und Bestätigung. Die Karte zeigt, dass die eigentliche Arbeit etwa eine Stunde dauert und fast alle der drei Wochen auf Warten zwischen den Schritten entfallen, meist auf die beiden Freigaben und die Sicherheitsprüfung. In drei der zehn Fälle wurde die Anfrage wegen eines fehlenden Feldes im Formular an die Nutzenden zurückgegeben.

Die Gruppe einigt sich auf drei Änderungen. Das Formular erhält Pflichtfelder und eine kurze Anleitung, was die Rückgaben beseitigt. Anfragen für eine kurze Liste häufiger Anwendungen mit geringem Risiko erhalten eine einzige Freigabe durch die Linienführungskraft, wobei der Datenverantwortliche informiert wird. Die Sicherheitsgruppe stimmt zu, jede Woche eine Stichprobe solcher Anfragen zu prüfen, statt jede Anfrage vor der Installation. Nach zwei Monaten sinkt die typische Dauer auf etwa eine Woche. Eine Schwierigkeit bleibt: Anfragen für sensible Anwendungen dauern weiterhin drei Wochen, und die Sicherheitsgruppe merkt an, dass die Stichprobe zwei Anfragen gefangen hat, die hätten abgelehnt werden müssen. Sie passen die Liste der für die schnelle Freigabe berechtigten Anwendungen an und beschließen, sie jedes Quartal zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams können Lean nutzen, um über den eigenen Sprint oder das eigene Board hinauszusehen. Bilden Sie den Weg von einer Idee bis in die Hände der Nutzenden ab, einschließlich Test, Sicherheitsprüfung und Release-Freigaben, und finden Sie, wo die Arbeit wartet. Behandeln Sie unfertige Arbeit als Verschwendung und bevorzugen Sie das Beenden gegenüber dem Beginnen.

### Service- und Betriebsteams

Betriebsteams sehen täglich Verschwendung: wiederholte Incidents, Übergaben zwischen Stufen und Anfragen, die zurückprallen. Nutzen Sie Karten, um zu zeigen, wo Arbeit wartet, und nutzen Sie das Problem Management, um die Ursachen von Wiederholungen zu beseitigen. Begründen Sie Reservekapazität, indem Sie zeigen, was mit dem Fluss geschieht, wenn jede Stunde verplant ist.

### Führung und Governance

Führungskräfte prägen das System, das die meiste Verschwendung erzeugt: Freigaberegeln, Finanzierungszyklen und Berichtswesen. Fragen Sie Ihre Teams, wo diese Regeln die meiste Zeit kosten und vor welchem Risiko jede schützt. Seien Sie bereit, eine Kontrolle durch eine leichtere Prüfung zu ersetzen, die denselben Zweck erfüllt.

### Kunden und Nutzer

Kunden bestimmen im Lean Thinking den Wert, und sie spüren Verschwendung als Verzögerung. Rechnen Sie damit, gefragt zu werden, was Sie tatsächlich brauchen und wie bald. Sagen Sie dem Team, welcher Teil eines Services Ihnen am wichtigsten ist, denn das lenkt, wohin der Aufwand geht. Im Gegenzug können Sie kürzere, vorhersehbarere Wartezeiten erwarten.

## Typische Fehlerbilder

- **Kapazität im Namen der Verschwendung kürzen.** Teams laufen unter Volllast und können auf Überraschungen nicht reagieren. Halten Sie stattdessen Spielraum vor, wo die Schwankung hoch ist, und beurteilen Sie daran, wie schnell sich das Team erholt.
- **Abbilden ohne Handeln.** Die Wertstromkarte hängt an der Wand, und nichts ändert sich. Wählen Sie stattdessen die größte Wartezeit und vereinbaren Sie vor Ende der Sitzung eine Änderung mit verantwortlicher Person.
- **Ein Team optimieren.** Ein lokaler Gewinn verschiebt die Warteschlange woandershin. Messen Sie stattdessen die durchgängige Zeit und vereinbaren Sie Änderungen mit allen Teams im Strom.
- **Kontrollen entfernen, ohne sie zu verstehen.** Ein Schritt, der wie Verschwendung aussah, schützte vor einem echten Risiko. Fragen Sie stattdessen, was jeder Schritt schützt, und ersetzen Sie ihn, wo möglich, durch eine leichtere Prüfung.
- **Lean-Wörter als Schlagworte benutzen.** Menschen sagen "Verschwendung", um die Arbeit von Kollegen abzutun. Nutzen Sie die Begriffe stattdessen, um den Fluss zu beschreiben, und halten Sie das Gespräch beim System.
- **Geschwindigkeit über Qualität stellen.** Schnellere Lieferung erzeugt mehr Fehler und Nacharbeit. Behandeln Sie stattdessen "Integrität einbauen" als Voraussetzung für Geschwindigkeit.
- **Zahlen aus der Produktion auf Wissensarbeit anwenden.** Ziele aus einer Fabrik passen nicht zu variabler Arbeit. Nutzen Sie Lean stattdessen als Weg, zu sehen und zu fragen, und setzen Sie Maße aus Ihren eigenen Daten.
- **Lean als einmaliges Projekt behandeln.** Gewinne verblassen, wenn die Aufmerksamkeit weiterzieht. Machen Sie kleine Verbesserungen stattdessen zur Routine jedes Teams.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Verschwendung sehen | Verschwendung wird gespürt, aber nicht beschrieben | Einige Teams bilden ihre eigene Arbeit ab | Teams nutzen gemeinsame Verschwendungskategorien und Wertstromkarten | Warten und Nacharbeit werden entlang des Wertstroms gemessen | Karten und Maße reichen über Teams und Lieferanten hinweg |
| Fluss und Pull | Arbeit wird hineingedrückt und in Mengen begonnen | Einige Teams begrenzen laufende Arbeit | Pull-Regeln und Grenzen sind Standard | Flussmaße lenken Änderungen an Grenzen und Regeln | Der Fluss wird über den gesamten Strom abgestimmt |
| Qualität einbauen | Qualität wird am Ende geprüft | Einige Teams testen früh und prüfen Arbeit | Automatisierte Prüfungen und eingebaute Reviews sind Standard | Raten durchgerutschter Fehler werden verfolgt und verringert | Qualitätspraktiken werden über Teams hinweg geteilt und verbessert |
| Kontinuierliche Verbesserung | Verbesserung folgt Krisen | Einige Teams nehmen kleine regelmäßige Änderungen vor | Jedes Team hat eine regelmäßige Verbesserungsroutine | Verbesserungen werden verfolgt und ihre Wirkung geprüft | Verbesserungen breiten sich routinemäßig zwischen Teams und Lieferanten aus |

## Checkliste

- [ ] Wir haben für mindestens einen Service definiert, was Wert aus Sicht der Nutzenden bedeutet.
- [ ] Wir haben den Wertstrom für eine häufige Anfrageart abgebildet, mit Arbeitszeit und Wartezeit.
- [ ] Das Team kann die sieben Verschwendungsarten nennen und zu jeder ein jüngstes Beispiel geben.
- [ ] Laufende Arbeit ist begrenzt, und unfertige Arbeit ist sichtbar.
- [ ] Qualitätsprüfungen finden während der Arbeit statt, nicht nur am Ende.
- [ ] Wir haben mindestens eine Wartezeit zum Verringern gewählt, mit verantwortlicher Person und Datum.
- [ ] Das Team hat klare Grenzen für Entscheidungen, die es ohne Rückfrage treffen darf.
- [ ] Wir messen die durchgängige Zeit für mindestens einen Fluss über Teams hinweg.
- [ ] Wir halten Reservekapazität für Überraschungen vor, wo der Bedarf schwankt.
- [ ] Jedes Team nimmt in regelmäßigem Rhythmus eine kleine Verbesserung vor und hält sie fest.

## KI-Prompts

**Zweck: einen Wertstrom anhand der von Ihnen gelieferten Zeiten analysieren.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Zweck: Beispiele für Verschwendung aus der Arbeit Ihres eigenen Teams klassifizieren.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Zweck: prüfen, ob das Entfernen einer Kontrolle sicher ist.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Zweck: einen Workshop zur Wertstromanalyse planen.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## KI-Skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): nutzen Sie ihn, um die Schritte, die Arbeitszeit und die Wartezeit einer Anfrage von Anfang bis Ende abzubilden.
- [kaizen](../../../../skills/kaizen/SKILL.md): nutzen Sie ihn, um kleine, kontinuierliche Verbesserungen zu planen, sobald Verschwendung gefunden wurde.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): nutzen Sie ihn, um zu analysieren, wie Arbeit zwischen Rollen wandert, und Übergaben und Verzögerungen zu finden.
- [kanban](../../../../skills/kanban/SKILL.md): nutzen Sie ihn, um Pull und Grenzen für laufende Arbeit auf den abgebildeten Fluss anzuwenden.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): nutzen Sie ihn, wenn Fehler und Schwankung, nicht nur Warten, das Hauptproblem sind und Sie eine datenbasierte Methode zu deren Verringerung brauchen.

## Wichtige Quellen

- **Lean software development** (Wikipedia): die sieben Prinzipien, die Zuordnung der Verschwendungsarten und Verweise auf weiterführende Lektüre.
- **Lean manufacturing** (Wikipedia): die Geschichte von Lean bei Toyota, die Verschwendungsarten und die fünf Prinzipien des Lean Thinking.
- **Lean Software Development: An Agile Toolkit** (Mary und Tom Poppendieck, 2003): das Buch, das Lean-Ideen in die agile Gemeinschaft brachte.
- **Lean Thinking** (James Womack und Daniel Jones, 1996): die förmliche Darstellung der fünf Lean-Prinzipien.

## Referenzen

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
