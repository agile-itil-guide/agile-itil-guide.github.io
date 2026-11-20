# Service Desk

**Der Service Desk ist der Ort, an dem Nutzende und Serviceanbieter sich treffen, und in einer agilen Organisation ist sein wertvollstes Ergebnis nicht die Zahl geschlossener Tickets, sondern was er darüber lernt, wie Nutzende den Service erleben.**

## Warum das wichtig ist

Für die meisten Nutzenden ist der Service Desk der Service. Sie sehen selten die Ingenieure, die Architektur oder die Pipeline; sie sehen die Person, die antwortet, wenn etwas schiefgeht. Wie dieses Gespräch verläuft, prägt ihr Vertrauen in alles dahinter. Ein freundlicher, kompetenter Desk kann einen schweren Ausfall abmildern, und ein abweisender kann einen guten Service vergällen.

Der Desk ist auch der beste Sensor, den eine Organisation hat. Jeder Kontakt ist ein kleiner Beleg dafür, was Nutzende verwirrend finden, was kaputtgeht und was sie sich vom Service wünschen. Agile Teams, die oft releasen, brauchen diesen Beleg schnell. Ein Desk, der von den Delivery-Teams isoliert ist, erzeugt Tickets, und ein verbundener erzeugt Verbesserungen.

Der [Wikipedia-Artikel zu IT Service Management](https://en.wikipedia.org/wiki/IT_service_management) beschreibt den Service Desk als zentrale Anlaufstelle zwischen Anbietern und Nutzenden oder Kunden, die Incidents und Service-Requests bearbeitet. Der [Wikipedia-Artikel zu Help Desks](https://en.wikipedia.org/wiki/Help_desk) ist kurz: Er behandelt Definition, Warteschlangenverwaltung und Anrufweiterleitung und sagt nichts zu Geschichte, Support-Stufen, Metriken oder dem Unterschied zwischen einem Help Desk und einem Service Desk. Dieses Thema stützt sich daher für Definitionen auf diese beiden Artikel, und der Rest ist praktische Anleitung, die als solche angeboten wird, nicht als gesicherte Befunde.

## Kernkonzepte

### Was ein Service Desk ist

Ein **Help Desk** ist laut Wikipedia eine Abteilung oder Person, die Unterstützung und Information gibt, meist bei elektronischen oder Computerproblemen. Ein **Service Desk** ist im ITSM-Gebrauch breiter: die zentrale Anlaufstelle für Nutzende und Kunden, die sowohl Incidents (Störungen oder mögliche Störungen eines Services) als auch Service-Requests (Routineanfragen nach etwas, das der Service normalerweise bereitstellt) bearbeitet. Der Artikel zum Help Desk listet "Service Desk" nur als verwandtes Thema auf, daher wird die genaue Grenze zwischen den beiden Begriffen dort nicht gegeben. Viele Organisationen verwenden die Wörter austauschbar; wichtig ist, was von Ihrem Desk erwartet wird.

### Nutzende und Kunden

Der ITSM-Artikel unterscheidet Nutzende, die den Service benutzen, von Kunden, die dafür zahlen oder ihn beauftragen. Ein Desk hört hauptsächlich von Nutzenden. Er sollte auch wissen, wer die Kunden sind, weil sie Prioritäten und Finanzierung bestimmen. Ein guter Desk kann mit beiden sprechen.

### Warteschlangen und Weiterleitung

Wikipedia sagt, große Help Desks hätten eine Person oder ein Team, das eingehende Anfragen steuert, oft Queue Manager oder Queue Supervisor genannt, die jedes Anliegen nach Art einem spezialisierten Team zuweisen. Manche Desks nutzen Telefonsysteme mit automatischer Anrufverteilung, die Anrufe zu bestimmten Themen an Analysten mit der passenden Erfahrung weiterleiten. Weiterleitung ist das Hauptwerkzeug des Desk, das Problem der Person zuzuordnen, die es lösen kann.

### Support-Stufen

Viele Desks organisieren Support in Stufen, oft Tiers genannt. Die für diesen Leitfaden gelesenen Quellen beschreiben keine Stufen, daher ist das Folgende eine gängige Praxis in allgemeinen Begriffen, keine Aussage einer Quelle:

| Stufe | Typische Rolle |
|---|---|
| Erste Ebene | Nimmt Kontakte entgegen, erfasst sie, löst häufige Anliegen mit dokumentiertem Wissen und leitet den Rest weiter |
| Zweite Ebene | Bearbeitet schwierigere Anliegen, die tiefere technische Fähigkeiten erfordern |
| Dritte Ebene | Spezialisten, oft die Ingenieure, die den Service bauen und zugrunde liegende Fehler beheben |

Das Modell hat eine bekannte Schwäche: Es kann aus jeder Stufe einen Ort machen, an dem Arbeit wartet. Agile Teams versuchen oft, den Weg zu verkürzen, damit eine Analystin am Desk direkt einen Ingenieur erreichen kann (siehe Thema 3.2 — Incident Management).

### Kanäle

Kontakte treffen per Telefon, E-Mail, Chat, Webportal oder persönlich ein. Jeder Kanal passt zu anderen Nutzenden und Problemen. Ein Portal kann Anfragen strukturiert und schnell machen. Eine Telefonleitung passt zu einem dringenden Ausfall. Mehrere Kanäle anzubieten ist gut, sofern alle denselben Datensatz speisen, damit der Bedarf an einer Stelle sichtbar ist (siehe Thema 2.1 — IT-Service-Management zur einzigen Eingangstür).

### Self-Service und Wissen

Viele Desks bieten Self-Service: ein Portal, in dem Nutzende Antworten finden und Routineanfragen stellen können, ohne mit jemandem zu sprechen. Die gelesenen Quellen beschreiben Self-Service nicht, doch er knüpft an zwei Praktiken in diesem Leitfaden an: eine gute Wissensdatenbank (siehe Thema 3.9 — Wissensmanagement) und eine klare Liste von Services (siehe Thema 3.8 — Service-Katalog-Management).

### Der Desk als Quelle von Belegen

Was ein Desk erfasst, kann für die ganze Organisation wertvoll sein: die häufigsten Fragen, die häufigsten Fehler, wie lange Dinge dauern und was Nutzende sagen. Diese Belege helfen Delivery-Teams zu entscheiden, was zu beheben ist, helfen dem Problem Management, Ursachen zu finden (siehe Thema 3.3 — Problem Management), und helfen dem Service-Level-Management, realistische Ziele zu vereinbaren (siehe Thema 3.7 — Service-Level-Management). Ein Desk, der nur so viel erfasst, wie nötig ist, um Tickets zu schließen, verschwendet das.

### Maße

Desks werden oft an Zählungen beurteilt: bearbeitete Kontakte, Zeit bis zur Antwort, Zeit bis zum Schließen. Zählungen sind leicht zu erheben und leicht zu missbrauchen. Die Zeit bis zum Schließen lässt sich manipulieren, indem Tickets früh geschlossen werden, und Kontaktzahlen können belohnen, wiederholte Probleme zu bearbeiten, statt sie zu beseitigen. Bessere Maße sind die Zufriedenheit der Nutzenden, wie oft ein Kontakt beim ersten Mal gelöst wird und ob wiederholte Kontakte zum selben Anliegen mit der Zeit zurückgehen. Behandeln Sie jedes Maß als Anlass für eine Frage und vereinbaren Sie, was Sie damit tun (siehe Thema 5.6 — Metriken und Messung).

### Kritik und Grenzen

Die für diesen Leitfaden gelesenen Wikipedia-Artikel nennen keine Kritik an Help Desks oder Service Desks. Praktiker bringen üblicherweise einige bekannte Bedenken vor: dass Desks als Kostenfaktor behandelt werden, den man minimiert, dass Skripte das Urteil ersetzen, dass die Antwortenden keine Macht haben, etwas zu beheben, und dass die Fluktuation hoch ist. Diese werden breit diskutiert, aber hier als verbreitete Bedenken dargestellt, nicht als Befunde aus den Quellen.

## Bewährte Praktiken

1. **Geben Sie dem Desk einen klaren Zweck.** Schreiben Sie auf, wofür der Desk da ist: wem er dient, was er bearbeitet und was er weitergibt. Ein Desk ohne erklärten Zweck driftet dazu, alles zu bearbeiten, was eintrifft.
2. **Bieten Sie wenige gute Kanäle, die einen Datensatz speisen.** Wählen Sie die Kanäle, die Ihre Nutzenden bevorzugen, und stellen Sie sicher, dass jeder an derselben Stelle einen Eintrag erzeugt. Versteckte Kanäle, etwa persönliche Nachrichten an Ingenieure, verbergen Bedarf.
3. **Trennen Sie Incidents von Anfragen und Fragen.** Nutzen Sie einfache Kategorien und Beispiele, damit Analysten einheitlich klassifizieren. Die Trennung zählt für Priorität und Berichtswesen (siehe Thema 3.6 — Service-Request-Management).
4. **Legen Sie Wissen vor die Analystin.** Stellen Sie kurze, durchsuchbare Anleitungen für die häufigsten Probleme bereit und aktualisieren Sie sie, wenn sich die Antwort ändert. Fragen Sie Analysten, welche Artikel sie nutzen und welche falsch sind.
5. **Lassen Sie den Desk beheben, was er kann.** Geben Sie Analysten, wo es sicher ist, Befugnis und Werkzeuge, häufige Anliegen zu lösen, etwa Passwortrücksetzungen und Zugangsvergaben. Jede unnötige Eskalation kostet die nutzende Person Zeit.
6. **Schaffen Sie eine direkte Leitung zu Ingenieuren.** Machen Sie es Analysten leicht, ein Delivery-Team nach einem neuen Fehler zu fragen, und dem Team, den Desk über ein Release zu informieren. Ein gemeinsamer Kanal und eine benannte Kontaktperson genügen zum Anfang.
7. **Sagen Sie dem Desk Änderungen, bevor Nutzende sie spüren.** Teilen Sie Release-Notizen und bekannte Probleme vorab mit dem Desk (siehe Thema 3.5 — Release- und Deployment-Management). Überraschungen lassen den Desk uninformiert aussehen.
8. **Erfassen Sie genug, um zu lernen, und nicht mehr.** Halten Sie Kategorie, betroffenen Service, was geschah und wie es behoben wurde fest. Überprüfen Sie Felder regelmäßig und entfernen Sie die, die niemand nutzt.
9. **Werten Sie Kontakte nach Themen aus.** Gruppieren Sie einmal im Monat jüngste Kontakte nach Ursache und sehen Sie sich die wenigen häufigsten an. Teilen Sie die Themen mit Delivery-Teams und dem Problem Management.
10. **Fragen Sie Nutzende, wie es lief.** Stellen Sie nach einem Kontakt eine kurze Frage, etwa ob das Problem gelöst wurde. Lesen Sie die Kommentare. Kombinieren Sie mit anderen Belegen, da ein Zufriedenheitswert allein leicht fehlgedeutet wird.
11. **Kümmern Sie sich um die Menschen.** Bieten Sie Schulung, Abwechslung und einen Weg zu anderen Rollen. Ein Desk ist nur so gut wie die Menschen, die ihn besetzen, und hohe Fluktuation ist ein Kostenfaktor, der in Ticketzahlen nicht auftaucht.
12. **Behandeln Sie den Desk als Teil der Lieferung.** Nehmen Sie eine Vertretung des Desk in Sprint Reviews und Planung auf und behandeln Sie Feedback des Desk als Eingabe für den Backlog (siehe Thema 5.1 — Agiles Service-Management).

## Fragen zur Diskussion im Team

**Was erlebt eine nutzende Person, wenn sie uns kontaktiert, vom ersten Moment bis zur Antwort?**

Gehen Sie einen typischen Kontakt aus Sicht der nutzenden Person durch. Notieren Sie, wie sie den Desk findet, was sie gefragt wird, wie lange sie wartet und was sie hört. Fragen Sie nach Möglichkeit einige Nutzende. Ziel ist, den Service von außen zu sehen. Die Moderation kann fragen, wo sich die nutzende Person am ehesten ignoriert fühlt. Wählen Sie anschließend einen Schritt zum Verbessern.

**Was hören wir am häufigsten, und was wurde dagegen getan?**

Listen Sie die fünf häufigsten Kontaktgründe des letzten Monats auf. Schreiben Sie neben jeden, was, wenn überhaupt, getan wurde, um ihn zu verringern. Eine Lücke zeigt, wo die Belege des Desk niemanden erreichen, der handeln kann. Fragen Sie, wer die Liste erhalten sollte und wie oft. Vereinbaren Sie, die erste in diesem Monat zu versenden.

**Wo kann eine Analystin etwas nicht lösen, was sie mit dem richtigen Werkzeug, Zugang oder Wissen könnte?**

Bitten Sie Analysten um Beispiele für Eskalationen, die unnötig wirkten. Typische Antworten sind fehlender Zugang, veraltetes Wissen und die Angst, einen Fehler zu machen. Behandeln Sie die Antworten als Liste von Verbesserungen. Fragen Sie, welche jetzt sicher möglich sind und welche Sicherungen für den Rest helfen würden.

**Wie erfahren wir von Änderungen, die Nutzende betreffen, und wie bald?**

Sehen Sie sich die letzten Releases oder Ausfälle an und fragen Sie, wann der Desk jeweils davon erfuhr. Späte Information ist häufig. Fragen Sie, welcher Kanal funktionieren würde: ein gemeinsamer Feed, ein kurzes Briefing, eine benannte Kontaktperson. Die Delivery-Teams sollten im Raum sein. Vereinbaren Sie eine einfache Regel, etwa kein Release ohne Notiz an den Desk.

**Welche unserer Maße helfen uns, besser zu werden, und welche berichten wir nur?**

Listen Sie die Maße auf, die der Desk erzeugt, und fragen Sie, wer jedes nutzt. Maße, die niemand nutzt, sind Kandidaten zum Entfernen. Fragen Sie, welches Maß Menschen fürchten und warum. Wenn Analysten ein Maß manipulieren, muss es sich ändern. Wählen Sie ein Maß zum Ersetzen oder Ergänzen, das zeigen würde, ob es den Nutzenden besser geht.

**Wie halten wir die Menschen, die hier arbeiten, und was sagen sie, dass sie brauchen?**

Fragen Sie Analysten, was die Arbeit besser machen würde und was sie zum Gehen brächte. Häufige Antworten sind Abwechslung, Schulung, Anerkennung und eine Entwicklungsmöglichkeit. Versprechen Sie nichts, was Sie nicht halten können; legen Sie sich auf eine sichtbare Änderung fest. Die Moderation sollte Fluktuation als Risiko für den Service behandeln und nicht nur als Personalfrage.

## In der Praxis: ein agiles ITIL-Beispiel

Der interne IT-Service-Desk einer nationalen Steuerbehörde unterstützt etwa 9.000 Mitarbeitende mit einem Team von 25 Analysten. Kontakte treffen per Telefon, E-Mail und Portal ein. Mitarbeitende beklagen, dass sie ihr Problem mehrfach erklären müssen, und Delivery-Teams beklagen, dass sie von Fehlern nur erfahren, wenn eine verärgerte Führungskraft anruft.

Die Leitung des Desk trifft die Leitungen von drei Delivery-Teams und schlägt drei Änderungen vor. Erstens verbindet ein gemeinsamer Chat-Kanal Analysten und Delivery-Teams, mit der Regel, dass die erste Reaktion innerhalb einer Arbeitsstunde erwartet wird. Zweitens erhält jedes Release vor dem Deployment eine kurze Notiz an den Desk, vom Delivery-Team anhand einer einseitigen Vorlage geschrieben. Drittens erstellt der Desk monatlich eine Liste der zehn häufigsten Kontaktgründe und teilt sie mit allen Delivery-Teams, die sich verpflichten, die obersten drei anzusehen.

Nach drei Monaten berichten Desk und Delivery-Teams, dass mehrere wiederholte Fehler behoben wurden, und Analysten sagen, sie fühlten sich besser informiert. Einige Schwierigkeiten bleiben. Der gemeinsame Kanal ist laut geworden, und manche Analysten ignorieren ihn, die Release-Notizen kommen an arbeitsreichen Tagen spät, und ein Delivery-Team hat auf die monatliche Liste gar nicht reagiert. Die Leitung des Desk bittet die Delivery-Teams, eine Person zu benennen, die den Kanal im Auge behält, verlegt späte Release-Notizen auf die Release-Checkliste und spricht das Schweigen des nicht reagierenden Teams bei der IT-Leitung an, die die Teamleitung bittet, am nächsten monatlichen Review teilzunehmen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sollten den Service Desk als Kollegen und als Kunden behandeln. Sagen Sie dem Desk, was sich ändert und was zu erwarten ist. Lesen Sie seine Monatsthemen und nehmen Sie die obersten in den Backlog auf. Laden Sie eine Analystin zu Reviews ein, damit die Menschen, die täglich Nutzende hören, die nächsten Schritte mitbestimmen.

### Service- und Betriebsteams

Betriebsteams besetzen den Desk oder arbeiten eng mit ihm zusammen. Geben Sie Analysten Wissen und Befugnis, häufige Anliegen zu lösen, und machen Sie Eskalation schnell und respektvoll. Nutzen Sie die Belege des Desk im Problem Management und in der Kapazitätsplanung und schützen Sie die Menschen davor, wie eine Ticket-Fabrik behandelt zu werden.

### Führung und Governance

Führungskräfte entscheiden, ob der Desk ein zu minimierender Kostenfaktor oder eine Quelle von Einsichten ist. Fragen Sie nach Themen und Ergebnissen, nicht nur nach Mengen. Schützen Sie Schulung und Entwicklungswege. Seien Sie vorsichtig bei Zielen, die schnelles Schließen oder das Abwehren von Kontakten belohnen, was die Qualität senkt, während die Zahlen besser werden.

### Kunden und Nutzer

Kunden und Nutzende profitieren von einem Desk, der leicht erreichbar ist, das Problem versteht und sie informiert hält. Beschreiben Sie das Problem klar, sagen Sie, was Sie gerade taten, und sagen Sie dem Desk, welches Ergebnis Sie brauchen. Geben Sie nach einem Kontakt Feedback, denn es ist eines der wenigen Signale, die das Team erreichen.

## Typische Fehlerbilder

- **Den Desk nur als Kostenstelle behandeln.** Der Desk wird minimal besetzt und nach Menge bewertet. Messen Sie stattdessen Ergebnisse und investieren Sie in Fähigkeiten und Werkzeuge des Desk.
- **Versteckte Kanäle.** Nutzende umgehen den Desk, indem sie Ingenieuren schreiben. Machen Sie stattdessen die offiziellen Kanäle einfach und führen Sie informelle Anfragen in den Datensatz.
- **Eskalieren als Standard.** Analysten reichen alles weiter, um Schuld zu vermeiden. Schulen, rüsten und vertrauen Sie Analysten stattdessen, zu lösen, was sie können.
- **Veraltetes Wissen.** Artikel beschreiben Systeme, die sich geändert haben. Weisen Sie stattdessen Verantwortliche und Überprüfungsdaten zu und fragen Sie Analysten, welche Artikel sie im Stich lassen.
- **Der Desk erfährt es zuletzt.** Releases und Ausfälle überraschen ihn. Machen Sie das Briefing des Desk stattdessen zu einem Teil der Release-Checkliste.
- **Maße, die zur Manipulation einladen.** Die Zeit bis zum Schließen treibt frühes Schließen an. Koppeln Sie stattdessen ein Geschwindigkeitsmaß mit einem Qualitätsmaß und achten Sie auf Muster.
- **Kein Feedback an die Lieferung.** Die Belege des Desk gehen nirgendwohin. Teilen Sie stattdessen Monatsthemen und erwarten Sie eine Reaktion.
- **Die Menschen ignorieren.** Hohe Fluktuation und niedrige Moral werden hingenommen. Bieten Sie stattdessen Schulung, Abwechslung und Wege zu anderen Rollen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Kontaktbearbeitung | Kontakte treffen über viele informelle Wege ein | Ein Desk existiert mit einigen gemeinsamen Kanälen | Eine Eingangstür mit vereinbarten Kategorien und Weiterleitung | Bearbeitung und Ergebnisse werden gemessen und überprüft | Kontaktbearbeitung wird über Teams und Lieferanten koordiniert |
| Wissen und Werkzeuge | Antworten leben in den Köpfen Einzelner | Es gibt einige Anleitungen | Gepflegtes Wissen und gemeinsame Werkzeuge unterstützen die Lösung auf der ersten Ebene | Nutzung und Genauigkeit des Wissens werden verfolgt | Wissen und Werkzeuge werden mit Nutzenden, Delivery-Teams und Lieferanten geteilt |
| Verbindung zur Lieferung | Der Desk erfährt von Änderungen durch Nutzende | Einige Delivery-Teams informieren den Desk | Releases enthalten eine Notiz an den Desk und eine benannte Kontaktperson | Informationsfluss wird gemessen und Lücken werden geschlossen | Desk und Delivery-Teams planen und überprüfen gemeinsam |
| Lernen aus Kontakten | Kontakte werden geschlossen und vergessen | Einige Themen werden bemerkt | Monatsthemen werden geteilt und verfolgt | Themen führen zu geplanten Behebungen, deren Wirkung geprüft wird | Themen speisen die Planung über Services hinweg und mit Kunden |

## Checkliste

- [ ] Der Desk hat einen schriftlichen Zweck, der sagt, wem er dient und was er bearbeitet.
- [ ] Alle Kanäle erzeugen einen Eintrag an einer Stelle.
- [ ] Incidents, Anfragen und Fragen werden einheitlich klassifiziert.
- [ ] Analysten haben durchsuchbare Anleitungen für die häufigsten Anliegen, mit Verantwortlichen und Überprüfungsdaten.
- [ ] Analysten können häufige Anliegen ohne Eskalation lösen.
- [ ] Es gibt einen direkten Weg zwischen Analysten und Delivery-Teams.
- [ ] Der Desk wird über Releases und bekannte Probleme informiert, bevor Nutzende sie spüren.
- [ ] Monatsthemen werden mit Delivery-Teams und dem Problem Management geteilt.
- [ ] Nutzende werden kurz gefragt, wie ein Kontakt lief.
- [ ] Für Desk-Mitarbeitende gibt es Schulung und Entwicklungswege.

## KI-Prompts

**Zweck: Themen in einem Monat voller Kontakte finden.**

```text
Below is a list of contacts to our service desk from the last [period]: [paste short, anonymized descriptions, one per line; remove names and personal data first].

Group them into themes based only on what is written. For each theme, give a name, the number of contacts in my list, one example, and one question that delivery teams or problem management could ask. Highlight the top three themes by count from my list. Mark contacts you could not classify. Do not invent categories beyond the text or estimate counts for contacts I did not provide. List what you are unsure of.
```

**Zweck: eine einseitige Release-Notiz für den Service Desk schreiben.**

```text
Help me write a one-page release note for a service desk about this change.

What changed (plain words): [describe].
Who is affected and when: [describe].
What users might ask or report: [list, or write "unknown"].
Known issues and workarounds: [list, or write "none known"].
How to roll back or who to call: [describe].

Write the note in short sections: what changed, what users will notice, what to tell users, what to do if it goes wrong, and who to contact. Use only my information. Mark assumptions as such, ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Zweck: einen Wissensartikel verbessern, den Analysten nutzen.**

```text
Here is a knowledge article that service desk analysts use: [paste it].
Here is what analysts say is wrong or missing: [paste their comments, or write "none yet"].

Rewrite it so that a first-line analyst can follow it in under two minutes: a one-line symptom, steps to check, the fix, when to escalate and to whom, and the date and owner of the article. Do not add technical facts that are not in the article or the comments. Mark any step you are unsure of with [CHECK], and list what you are unsure of.
```

**Zweck: ein Gespräch zwischen dem Service Desk und einem Delivery-Team planen.**

```text
Plan a 45-minute conversation between a service desk of [number] analysts and a delivery team of [number] people.

Recent frictions: [describe in a few sentences].
What each side says it needs: [describe, or write "unknown"].

Give a timed agenda, five questions for each side, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): nutzen Sie ihn, um dem Desk eine klare Liste der Services zu geben, die er unterstützt, und der Anfragen, die er bearbeitet.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um häufige Behebungen in kurze Verfahren zu verwandeln, denen Analysten der ersten Ebene folgen können.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): nutzen Sie ihn, um zu entwerfen, wie der Desk Nutzende um Feedback bittet.
- [survey-design](../../../../skills/survey-design/SKILL.md): nutzen Sie ihn, um eine kurze Zufriedenheitsumfrage zu entwerfen, die verwertbare Antworten liefert.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um Menge und Arten der Kontakte zu verstehen und Personal zu planen.

## Wichtige Quellen

- **IT service management** (Wikipedia): die Definition des Service Desk als zentrale Anlaufstelle, mit Incidents und Service-Requests.
- **Help desk** (Wikipedia): ein kurzer Überblick über Definition, Warteschlangenverwaltung und Anrufweiterleitung des Help Desk.
- **Technical support** (Wikipedia): Hintergrund zum weiteren Feld des Supports, zu dem Help Desks gehören.
- **ITIL** (Wikipedia): Kontext dazu, wie die Service-Desk-Praxis in ITIL einzuordnen ist.

## Referenzen

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
