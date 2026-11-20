# Die Service Value Chain

**Die Service Value Chain ist ein Satz von sechs Aktivitäten, die Teams in unterschiedlichen Reihenfolgen zu Wertströmen kombinieren, und sie beschreibt, wie Continuous Delivery und Service-Betrieb in einen Fluss statt in zwei getrennte passen.**

## Warum das wichtig ist

Viele Organisationen behandeln Bauen und Betreiben als zwei Stufen: Zuerst baut ein Projekt den Service, dann übernimmt ihn eine Betriebsgruppe. An der Übergabe geht Wissen verloren, verschwimmt die Verantwortung, und Kunden spüren die Lücke. Die Service Value Chain von ITIL 4 wurde entworfen, um dieses Bild durch eines zu ersetzen, in dem dieselben Aktivitäten je nach Situation in beliebiger Reihenfolge und so oft wie nötig stattfinden können.

Das ist nah an dem, wie agile Teams bereits arbeiten. In einer Woche plant ein Team vielleicht ein Feature, baut einen Teil davon, released es, beantwortet die Frage eines Kunden dazu und behebt ein in der Produktion gefundenes Problem. Jedes davon ist eine andere Aktivität der Kette. Sie als Teile eines Flusses zu sehen hilft einem Team zu fragen, wo Arbeit wartet, wer jede Aktivität ausführt und welche Aktivitäten vernachlässigt werden.

Dieses Thema beschreibt die sechs Aktivitäten, wie sie sich zu Wertströmen kombinieren und wie ein agiles Team die Idee nutzen kann. Die Zusammenfassungen stammen von einem Schulungsanbieter und einem Softwarehersteller, weil die für diesen Leitfaden gelesenen öffentlichen Seiten des Framework-Eigners die Service Value Chain nur am Rande nennen. Die Seite des Herstellers listet die Aktivitäten auf, ohne sie zu beschreiben, betrachten Sie die folgenden Beschreibungen also als weit verbreitete Lesarten und prüfen Sie die ITIL-4-Veröffentlichungen auf den Wortlaut des Eigners (siehe Thema 2.2 — ITIL).

## Kernkonzepte

### Wo die Kette sitzt

Im Service Value System ist die Kette das Betriebsmodell im Zentrum (siehe Thema 2.3 — Das ITIL Service Value System). Eine Herstellerseite beschreibt sie als den Teil des Systems, der sich mit der Lieferpipeline oder dem Lebenszyklus eines Produkts oder Services befasst, mit Bedarf als Eingabe und Wert als Ausgabe. Sie merkt auch an, dass der Lebenszyklus in der Praxis selten linear ist.

### Die sechs Aktivitäten

Die Tabelle nennt jede Aktivität, den Zweck, den eine Seite eines Schulungsanbieters dafür angibt, und wie die Aktivität in einem agilen Team aussehen kann. Die rechte Spalte ist die Lesart dieses Leitfadens.

| Aktivität | Zweck, wie ein Schulungsanbieter ihn zusammenfasst | Wie sie in einem agilen Team aussehen kann |
|---|---|---|
| **Planen** | Legt Richtlinien, Ziele und Leitlinien für die Ausrichtung der Organisation fest, damit alle ein gemeinsames Verständnis von Vision, aktuellem Stand und Verbesserungsrichtung haben | Produktziele, Roadmaps, Quartalsplanung und Portfolioentscheidungen |
| **Verbessern** | Verbessert Services, Praktiken und Prozesse über alle Aktivitäten hinweg kontinuierlich | Retrospektiven, Post-Incident-Reviews und Verbesserungsposten im Backlog |
| **Einbinden** | Interagiert mit Stakeholdern, um Bedürfnisse zu verstehen, Information zu geben, Feedback und Anforderungen aufzunehmen und Beziehungen zu pflegen | Nutzerforschung, Sprint Reviews, der Service Desk und Kundengespräche |
| **Gestalten und überführen** | Stellt sicher, dass neue oder geänderte Services die Erwartungen der Stakeholder erfüllen, vom Entwurf bis zur Live-Umgebung | Eine Änderung entwerfen, testen und für Release und Support vorbereiten |
| **Beschaffen/Bauen** | Beschafft oder erzeugt die für Services nötigen Komponenten, etwa physische Ressourcen, Infrastruktur, Wissen oder Software | Software entwickeln, ein Werkzeug kaufen, Infrastruktur vorbereiten, Personal schulen |
| **Liefern und unterstützen** | Liefert Services wie vereinbart und bietet laufenden Support, um Probleme zu lösen und Anfragen zu erfüllen | Den Service betreiben, Incidents und Anfragen bearbeiten, Releases deployen |

### Aktivitäten sind keine Stufen

Die Seite des Schulungsanbieters sagt, die Aktivitäten "sind nicht linear, sondern miteinander verknüpft und lassen sich auf verschiedene Weise zu mehreren Wertströmen kombinieren". Ein **Wertstrom** ist in ihren Worten ein bestimmter Satz von Aktivitäten, der einen bestimmten Service oder ein bestimmtes Produkt für Kunden erzeugt und liefert. Das ist die zentrale Idee. Die Kette ist eine Speisekarte von Aktivitäten, und ein Wertstrom ist ein Weg durch sie, der für einen bestimmten Zweck gewählt wurde.

### Veranschaulichende Wertströme

Die für diesen Leitfaden gelesenen Seiten geben keine Beispiel-Wertströme, daher sind die folgenden die Veranschaulichungen dieses Leitfadens dafür, wie sich die Aktivitäten kombinieren könnten. Sie stammen nicht aus ITIL-Veröffentlichungen, und ein echter Strom wird abweichen.

| Wertstrom | Ein möglicher Weg durch die Aktivitäten |
|---|---|
| **Einen Incident bearbeiten** | Einbinden (eine nutzende Person meldet ihn) → liefern und unterstützen (Service wiederherstellen) → verbessern (auswerten und die Ursache beheben) |
| **Ein Feature releasen** | Planen (das Ziel festlegen) → gestalten und überführen (entwerfen, testen, Support vorbereiten) → beschaffen/bauen (entwickeln) → liefern und unterstützen (releasen) → einbinden (Feedback einholen) → verbessern |
| **Eine Zugangsanfrage erfüllen** | Einbinden (Anfrage eingegangen) → liefern und unterstützen (Zugang prüfen und gewähren) → einbinden (mit der nutzenden Person bestätigen) |
| **Einen neuen Lieferanten einbinden** | Planen (den Bedarf festlegen) → einbinden (auswählen und Bedingungen vereinbaren) → beschaffen/bauen (integrieren) → liefern und unterstützen (betreiben) → verbessern (Leistung überprüfen) |

### Praktiken und die Kette

Praktiken sind die Fähigkeiten, auf die die Aktivitäten zurückgreifen. Incident Management ist zum Beispiel eine Praktik, die in mehreren Wertströmen genutzt wird. Die Quellen stimmen nicht in jedem Detail der Zuordnung zwischen Praktiken und Aktivitäten überein, vermeiden Sie daher eine starre Tabelle. Ein besserer Test ist, ob eine Praktik zu dem Wertstrom beiträgt, den Sie untersuchen (siehe Teil 3).

### Wertströme und agiler Fluss

Agiles und Lean-Denken nutzt bereits Wertströme (siehe Thema 1.7 — Lean Softwareentwicklung). Eine Wertstromkarte zeigt die Schritte, Zeiten und Wartezeiten eines Weges. Die ITIL-Idee ergänzt ein Vokabular zur Einordnung der Schritte und die Erinnerung, dass der Weg neben dem Bauen auch Support und Verbesserung umfasst. Für digitale Arbeit knüpft das an das Wertstrommanagement an (siehe Thema 5.4 — Wertstrommanagement).

### Grenzen

Die für diesen Leitfaden gelesenen Seiten geben keine Methode zum Entwerfen oder Auswählen von Wertströmen, und die Herstellerseite erklärt nicht, wie die Kette mit kontinuierlicher Verbesserung zusammenhängt, außer Verbesserung als entscheidend zu bezeichnen. Die Kette ist eine Möglichkeit, Arbeit zu beschreiben, keine, zu entscheiden, wie sie getan wird. Ihr Wert hängt davon ab, ob Sie sie nutzen, um echte Flüsse zu betrachten.

## Bewährte Praktiken

1. **Wählen Sie einen Wertstrom und zeichnen Sie ihn.** Wählen Sie einen Fluss, der für Kunden wichtig ist, etwa die Freigabe einer Änderung oder die Bearbeitung einer Anfrage. Listen Sie die Schritte der Reihe nach auf und beschriften Sie jeden mit der nächsten der sechs Aktivitäten.
2. **Nehmen Sie Support und Verbesserung ins Bild.** Beenden Sie den Strom nicht beim Release. Zeigen Sie, was danach geschieht: Incidents bearbeiten und daraus lernen.
3. **Suchen Sie fehlende Aktivitäten.** Hat ein Strom keinen Schritt Einbinden, spricht niemand mit den Nutzenden. Hat er keinen Schritt Verbessern, wird nichts gelernt. Ergänzen Sie sie, wo sie zählen.
4. **Messen Sie die Wartezeiten.** Halten Sie für einen Strom fest, wie lange Arbeit zwischen Aktivitäten wartet und wo sie eine Teamgrenze überquert. Die längste Wartezeit ist das Erste, was zu untersuchen ist (siehe Thema 5.4 — Wertstrommanagement).
5. **Kombinieren Sie Aktivitäten frei.** Erlauben Sie verschiedenen Strömen, verschiedene Wege zu nutzen. Eine Korrektur eines kleinen Fehlers kann direkt von liefern und unterstützen zu beschaffen/bauen und zurück gehen, ohne einen Planungsschritt.
6. **Holen Sie Gestalten und Überführen in die Arbeit des Teams.** Nehmen Sie Support-Hinweise, Monitoring und Schulung als Teil des Bauens auf, nicht als Übergabe am Ende (siehe Thema 3.5 — Release- und Deployment-Management).
7. **Machen Sie "Einbinden" zu einer kontinuierlichen Aktivität.** Beschränken Sie den Kontakt mit Nutzenden nicht auf Anfang und Ende eines Projekts. Beziehen Sie den Service Desk und Kundenfeedback in die Planung ein.
8. **Verbinden Sie Planung mit den Belegen aus dem Betrieb.** Nutzen Sie Incident- und Anfragedaten in Planungsgesprächen, damit Ziele widerspiegeln, was Nutzende tatsächlich erleben (siehe Thema 5.1 — Agiles Service-Management).
9. **Benennen Sie eine verantwortliche Person für jeden Strom.** Eine Person sollte sagen können, wie der Strom leistet, und Teams zusammenbringen können, um ihn zu verbessern.
10. **Nutzen Sie die Kette als Checkliste für Lücken.** Wenn etwas scheitert, fragen Sie, welche Aktivität schwach war: unklarer Plan, schlechtes Einbinden, übereilte Überführung, schwacher Bau, wackliger Support oder keine Verbesserung.
11. **Halten Sie das Diagramm einfach.** Eine grobe Skizze mit sechs Beschriftungen genügt. Braucht die Zeichnung eine Legende, vereinfachen Sie sie.
12. **Überprüfen Sie Ströme nach Änderungen.** Wenn sich Teamstrukturen, Lieferanten oder Werkzeuge ändern, prüfen Sie, ob die Ströme noch wie gezeichnet funktionieren.

## Fragen zur Diskussion im Team

**Was sind die drei wichtigsten Wertströme für unsere Nutzenden, und wer verantwortet jeden?**

Bitten Sie die Beteiligten, die Flüsse zu nennen, die am wichtigsten sind, etwa dass eine nutzende Person ein neues Konto erhält oder eine Korrektur die Produktion erreicht. Vergleichen Sie die Listen. Unterschiede zeigen, dass das Team unterschiedliche Bilder davon hat, was zählt. Die Moderation kann fragen, wer für jeden Strom von Anfang bis Ende Auskunft geben könnte. Oft kann es niemand, und das ist ein Befund.

**Welche der sechs Aktivitäten tun wir für einen Strom gut, und welche überspringen wir?**

Zeichnen Sie den Strom und beschriften Sie die Schritte. Suchen Sie dann fehlende Aktivitäten. Teams stellen oft fest, dass sie gut planen und bauen und schlecht einbinden und verbessern. Fragen Sie, was die fehlende Aktivität hinzufügen würde und was sie kosten würde. Wählen Sie eine, die im Kleinen ergänzt wird.

**Wo wartet Arbeit zwischen Aktivitäten, und wer verantwortet die Wartezeit?**

Markieren Sie die Übergaben und notieren Sie typische Wartezeiten. Viele Wartezeiten liegen an der Grenze zwischen Teams. Fragen Sie, ob die Wartezeit nötig ist, etwa für eine Risikoprüfung, oder ein Zufall der Teamorganisation. Wählen Sie eine zum Verkürzen.

**Wie erfahren wir, was Nutzende von dem halten, was wir liefern, und wie schnell ändert es unsere Pläne?**

Verfolgen Sie ein jüngstes Feedback von der nutzenden Person bis zum Backlog. Zählen Sie die Schritte. Wenn es Wochen dauerte oder nie ankam, ist die Aktivität Einbinden schwach. Fragen Sie, was den Weg verkürzen würde, etwa ein gemeinsamer Kanal mit dem Service Desk. Vereinbaren Sie eine Änderung.

**Was tun wir nach einem Incident oder einem Release, um das nächste zu verbessern?**

Suchen Sie in den letzten Incidents und Releases nach einer festgehaltenen Verbesserung. Gibt es keine, ist die Aktivität Verbessern informell. Fragen Sie, wer Verbesserungsmaßnahmen verantwortet und wie sie verfolgt werden. Vereinbaren Sie einen einfachen Ort, um sie festzuhalten.

**Welche Ströme überschreiten Organisationsgrenzen, und wer spricht für das Ganze?**

Listen Sie Ströme auf, die Lieferanten, andere Abteilungen oder Kunden einbeziehen. Fragen Sie, wer für den durchgängigen Fluss verantwortlich ist und was an den Grenzen geschieht. Ein gutes Ergebnis ist, eine Koordinationsperson und ein regelmäßiges Gespräch über die Grenze hinweg zu benennen.

## In der Praxis: ein agiles ITIL-Beispiel

Eine regionale Krankenhausgruppe betreibt einen Patientenportal-Service, mit dem Termine gebucht und Testergebnisse eingesehen werden. Ein Team aus zehn Personen baut und betreibt ihn. Das Team liefert alle zwei Wochen neue Features aus, doch Patienten beklagen, dass Korrekturen gemeldeter Fehler Monate dauern und dass sie auf ihre Feedback-Nachrichten keine Antwort erhalten.

Die Leitung der digitalen Services bittet das Team, den Wertstrom für einen gemeldeten Fehler zu zeichnen, von der Nachricht der Patientin bis zur Korrektur in der Produktion. Sie beschriften die Schritte mit den sechs Aktivitäten. Die Nachricht trifft über ein Kontaktformular ein (einbinden) und liegt tagelang in einem gemeinsamen Postfach, bevor jemand sie triagiert. Ein triagierter Fehler kommt in denselben Backlog wie neue Features (planen), wo er schlecht konkurriert. Eine Korrektur wird gebaut (beschaffen/bauen), getestet und mit dem nächsten Feature-Paket freigegeben (gestalten und überführen, liefern und unterstützen). Niemand informiert die Patientin (einbinden), und niemand hält fest, was der Fehler das Team gelehrt hat (verbessern).

Das Team ändert den Strom. Das gemeinsame Postfach wird täglich im Wechsel geprüft, Fehler werden markiert und erhalten im Backlog eine eigene Spur mit dem Ziel des nächsten Releases, die Patientin erhält bei Eingang eine Antwort und eine weitere, wenn die Korrektur live ist, und jeder Fehler, der älter als einen Monat ist, wird im zweiwöchentlichen Review besprochen. Nach zwei Monaten sinkt die mediane Zeit bis zur Korrektur, und Beschwerden von Patienten über Schweigen gehen zurück. Probleme bleiben: Fehler, die das Terminsystem des Krankenhauses betreffen, das ein Lieferant betreibt, warten weiterhin auf die Warteschlange des Lieferanten, und die Antwortnachrichten werden von Entwicklern in einer Sprache geschrieben, der manche Patienten schwer folgen können. Das Team lädt den Lieferanten zum Review ein und bittet das Kommunikationsteam, Vorlagen in verständlicher Sprache zu entwerfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verbringen meist die meiste Zeit mit Planen, Gestalten und Überführen sowie Beschaffen/Bauen. Schauen Sie auf die anderen drei: wie Sie Nutzende einbinden, wie Sie unterstützen, was Sie ausliefern, und wie Sie verbessern. Behandeln Sie Support-Anfragen und das Lernen aus Incidents als Eingaben für die Planung.

### Service- und Betriebsteams

Betriebsteams verbringen die meiste Zeit mit Liefern und Unterstützen und Teilen des Einbindens. Nutzen Sie die Kette, um zu zeigen, wie Ihre Arbeit von früheren Aktivitäten abhängt, etwa Gestalten und Überführen, und um zu fragen, was Sie von ihnen brauchen. Nehmen Sie an der Planung teil, damit betriebliches Wissen den Anfang des Stroms erreicht.

### Führung und Governance

Führungskräfte können die Kette nutzen, um zu fragen, wo der Fluss bei wichtigen Services bricht. Unterstützen Sie die Benennung von Strom-Verantwortlichen und geben Sie ihnen die Befugnis, Teams zusammenzubringen. Vermeiden Sie, die sechs Aktivitäten zu sechs Abteilungen zu machen; der Sinn ist, sie zu verbinden.

### Kunden und Nutzer

Kunden und Nutzende wirken hauptsächlich beim Einbinden mit, und sie profitieren, wenn Feedback den ganzen Weg bis zu Plänen und Korrekturen zurücklegt. Rechnen Sie mit Antworten und sichtbaren Ergebnissen. Sagen Sie dem Anbieter, welcher Strom Ihnen am wichtigsten ist und welche Verzögerungen Ihnen schaden.

## Typische Fehlerbilder

- **Die Kette als Abfolge lesen.** Teams zwingen jedes Stück Arbeit der Reihe nach durch alle sechs. Wählen Sie stattdessen Wege, die zur Arbeit passen.
- **Abteilungen abbilden, nicht Ströme.** Jede Aktivität wird einer Abteilung zugewiesen, und der Fluss geht verloren. Verfolgen Sie stattdessen ein Stück Arbeit durch sie hindurch.
- **Einbinden und Verbessern vergessen.** Der Strom endet beim Release. Nehmen Sie stattdessen Nutzerkontakt und Lernen in jeden Strom auf.
- **Übergabe statt Gestalten und Überführen.** Support-Hinweise, Monitoring und Schulung bleiben bis zum Ende liegen. Bauen Sie sie stattdessen von Anfang an in die Arbeit ein.
- **Keine verantwortliche Person für den Strom.** Niemand kann sagen, wie ein Strom leistet. Benennen Sie stattdessen eine verantwortliche Person mit der Befugnis, Teams zusammenzurufen.
- **Zu detaillierte Diagramme.** Die Karte wird zum Poster, das niemand liest. Halten Sie sie stattdessen auf einer Seite und aktualisieren Sie sie, wenn sich etwas ändert.
- **Das Vokabular zum Ziel machen.** Teams verbringen Zeit mit Beschriften statt mit Verbessern. Beschriften Sie stattdessen nur, was hilft, eine Lücke zu finden.
- **Sich auf Sekundärzusammenfassungen verlassen.** Beschreibungen der Aktivitäten unterscheiden sich zwischen Quellen. Prüfen Sie stattdessen die Veröffentlichungen des Eigners, wenn Genauigkeit zählt.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Sichtbarkeit der Wertströme | Flüsse sind nur informell bekannt | Einige Ströme werden von ihren Teams gezeichnet | Wichtige Ströme sind mit Verantwortlichen abgebildet | Ströme werden auf Wartezeiten und Ergebnisse gemessen | Ströme überschreiten Organisationsgrenzen und werden gemeinsam verbessert |
| Abdeckung der Aktivitäten | Planen und Bauen dominieren | Einige Teams ergänzen Aktivitäten zum Einbinden und Verbessern | Alle sechs Aktivitäten erscheinen in wichtigen Strömen | Lücken in der Abdeckung werden verfolgt und geschlossen | Die Abdeckung wird über Teams und Lieferanten hinweg anhand von Belegen ausbalanciert |
| Übergaben und Überführung | Übergaben sind spät und ungesteuert | Einige Teams nehmen Support in den Bau auf | Support, Monitoring und Schulung sind Teil jedes Releases | Überführungsprobleme werden gemessen und verringert | Überführung wird über Delivery, Betrieb und Lieferanten hinweg geteilt |
| Feedback und Verbesserung | Feedback kommt als Beschwerde | Etwas Feedback erreicht den Backlog | Feedback und Verbesserungsposten werden mit Verantwortlichen verfolgt | Wirkungen von Verbesserungen werden geprüft | Feedback und Lernen fließen laufend über Teams und Kunden |

## Checkliste

- [ ] Wir haben mindestens einen Wertstrom gezeichnet, der für Nutzende wichtig ist.
- [ ] Jeder Schritt der Zeichnung ist mit der nächsten Aktivität der Value Chain beschriftet.
- [ ] Der Strom enthält das Einbinden von Nutzenden und einen Schritt, der Verbesserungen festhält.
- [ ] Wir wissen, wo Arbeit wartet und wie lange, zumindest grob.
- [ ] Arbeit zu Gestalten und Überführen, etwa Monitoring und Support-Hinweise, ist Teil des Bauens.
- [ ] Eine benannte Person verantwortet den durchgängigen Fluss des Stroms.
- [ ] Feedback von Nutzenden erreicht den Backlog und erhält eine Antwort.
- [ ] Incident- und Anfragedaten werden in der Planung genutzt.
- [ ] Der Strom wird nach bedeutenden Änderungen überprüft.
- [ ] Wir haben in der Veröffentlichung des Eigners die genaue Definition jeder Aktivität geprüft.

## KI-Prompts

**Zweck: die Schritte eines echten Stroms mit den sechs Aktivitäten beschriften.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: finden, wo Feedback auf dem Weg zum Backlog verloren geht.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Zweck: einen Workshop zum Wertstrom mit Delivery- und Betriebsmitarbeitenden planen.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine kurze Anleitung zur Value Chain für neue Teammitglieder schreiben.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): nutzen Sie ihn, um einen Strom zu zeichnen, seine Wartezeiten zu messen und seine Schritte zu beschriften.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): nutzen Sie ihn, um zu analysieren, wie Arbeit zwischen Rollen wandert, und Übergabeprobleme zu finden.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): nutzen Sie ihn, um zu planen, wie ein Team in kleinen Schritten durch die Aktivitäten Bauen und Release liefert.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): nutzen Sie ihn, um Wege zu entwerfen, Feedback von Nutzenden für die Aktivität Einbinden zu sammeln.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um die Reviews durchzuführen, die die Aktivität Verbessern real machen.

## Wichtige Quellen

- **ITIL 4 Foundation** (PeopleCert): die Seite des Eigners, die die Service Value Chain unter den studierten Themen nennt.
- **ITIL service value system** (Purple Griffon): die Zusammenfassung eines Schulungsanbieters zu den sechs Aktivitäten und Wertströmen; sekundär.
- **The ITIL 4 Service Value System** (ManageEngine): die Zusammenfassung eines Herstellers, die die Aktivitäten nennt; sekundär.
- **Value-stream mapping** (Wikipedia): Hintergrund zur Abbildungstechnik, die die Lean-Praxis nutzt, um Verschwendung zu finden.

## Referenzen

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
