# Agiles Service-Management

**Agiles Service-Management wendet agile Werte und Methoden auf Entwurf und Verbesserung des Service-Managements selbst an und behandelt jeden Prozess als Produkt mit einer verantwortlichen Person, einem Backlog und Nutzenden, die sagen können, ob er funktioniert.**

## Warum das wichtig ist

Der größte Teil dieses Leitfadens hat betrachtet, wie agile Teams Praktiken des Service-Managements nutzen können. Dieses Thema dreht die Frage um: Wie lassen sich Praktiken des Service-Managements auf agile Weise aufbauen und verändern? Viele Organisationen haben Prozesse für Incidents, Änderungen und Anfragen, die einmal entworfen, in einem Projekt ausgerollt und dann liegen gelassen wurden. Sie sind langsam zu ändern, werden von den Menschen, die ihnen folgen müssen, nicht gemocht und passen nicht dazu, wie die Organisation heute Software baut. Das ist das Gegenteil dessen, was das Prinzip des Manifests, Veränderung willkommen zu heißen, nahelegen würde (siehe Thema 1.2 — Agile Prinzipien).

Das Heilmittel ist nicht, Prozesse aufzugeben, sondern sie als etwas zu behandeln, das mit seinen Nutzenden entworfen, in kleinen Schritten freigegeben und aus Belegen verbessert wird. Die Leitprinzipien von ITIL 4 sagen genau das: dort beginnen, wo man steht, iterativ mit Feedback vorankommen, zusammenarbeiten und Sichtbarkeit fördern sowie es einfach und praktisch halten (siehe Thema 2.4 — Die Leitprinzipien von ITIL). Der Wikipedia-Artikel zu ITIL sagt, ITIL 4 sei bei seiner Veröffentlichung 2019 auf agile, DevOps- und Lean-Arbeitsweisen ausgerichtet worden. Der Artikel zu ISO/IEC 20000 listet jüngere Teile dieses Standards auf, darunter Anleitung zu Agile und DevOps, gibt aber ihren Inhalt nicht wieder.

Es gibt wenig formale Forschung zu agilem Service-Management als solchem, und die für diesen Leitfaden herangezogenen Wikipedia-Artikel behandeln es nicht. Dieses Thema stützt sich daher auf die Beschreibung von Rollen und Artefakten im Scrum Guide, auf die agilen und ITIL-Prinzipien und auf den Rest dieses Leitfadens und bietet seinen Ansatz als praktische Synthese zum Ausprobieren an, nicht als etablierte Methode.

## Kernkonzepte

### Prozesse als Produkte

Ein **Prozess** ist in diesem Sinn jede wiederholbare Arbeitsweise, der eine Serviceorganisation Menschen zu folgen auffordert: wie man einen Incident meldet, wie man Zugang anfragt, wie man eine Änderung genehmigt. Als Produkt gesehen hat ein Prozess:

- **Nutzende:** die Menschen, die ihm folgen, und die Menschen, denen er dient.
- **Einen Zweck:** das Ergebnis, zu dessen Erreichung er existiert.
- **Eine verantwortliche Person:** jemanden, der für seinen Wert einsteht, so wie der Scrum Guide den Product Owner als die eine Person beschreibt, die dafür einsteht, den Wert des Produkts zu maximieren und sein Backlog zu ordnen (siehe Thema 1.4 — Lieferprognosen und Planungskennzahlen).
- **Ein Backlog:** eine geordnete Liste von Verbesserungen.
- **Releases:** in kleinen Schritten gelieferte Änderungen, mit Hinweisen.
- **Messgrößen:** Belege dafür, ob er funktioniert.

So zu denken verändert die Fragen. Nicht "haben wir den Änderungsprozess eingeführt?", sondern "hilft der Änderungsprozess Menschen bei ihrer Arbeit, und was ist die nächste Verbesserung?"

### Rollen

| Rolle | In einem Produktteam | Für einen Service-Management-Prozess |
|---|---|---|
| **Product Owner** | Ordnet das Backlog und steht für den Wert ein | Die Prozessverantwortliche, die entscheidet, was als Nächstes verbessert wird und warum |
| **Entwickelnde / Team** | Bauen das Inkrement | Die Menschen, die den Prozess entwerfen und betreiben, idealerweise einschließlich Nutzender aus Delivery und Betrieb |
| **Scrum Master oder Coach** | Hilft dem Team, das Framework anzuwenden, und räumt Hindernisse aus | Ein Coach, der dem Team hilft, kontinuierliche Softwarelieferung zu üben und Feedback einzuholen |
| **Stakeholder** | Prüfen das Inkrement und geben Feedback | Delivery-Teams, der Service Desk, Auditoren, Kunden |

Die Zuordnung stammt aus diesem Leitfaden, nicht aus einem Standard. Prozessverantwortliche haben in vielen Organisationen weder Befugnis noch Zeit, daher ist der erste Schritt oft, ihnen beides zu geben.

### Das Prozess-Backlog

Verbesserungsideen für einen Prozess kommen aus vielen Quellen: Incident-Reviews, Retrospektiven, Auditbefunden, Nutzerbeschwerden und Metriken (siehe Thema 3.15 — Kontinuierliche Verbesserung). Ein Prozess-Backlog sammelt sie in einer geordneten Liste. Die Einträge sind klein und aus Sicht der Nutzenden beschrieben: "Als Entwickler möchte ich, dass risikoarme Änderungen automatisch genehmigt werden, damit ich releasen kann, wenn ich bereit bin." Die Product Owner ordnet die Liste nach Wert und Aufwand, und das Team nimmt Einträge in kurze Zyklen auf.

### Kontinuierliche Softwarelieferung von Prozessänderungen

Statt einen vollständigen Prozess zu entwerfen und auszurollen, entwerfen Sie die kleinste Version, die funktionieren könnte, probieren sie mit wenigen Nutzenden aus und lernen:

| Schritt | Was geschieht |
|---|---|
| **Das Problem finden** | Beobachten, wie Menschen wirklich arbeiten und wo sie sich schwertun |
| **Eine kleine Änderung entwerfen** | Ein neues Formular, ein kürzerer Genehmigungsweg, eine Checkliste |
| **Ausprobieren** | Mit einem Team oder einer Art von Arbeit, für kurze Zeit |
| **Prüfen** | Mit dem Erwarteten vergleichen, anhand von Daten und Gesprächen |
| **Übernehmen, anpassen oder verwerfen** | Verbreiten, was funktionierte; beheben oder aufgeben, was nicht funktionierte |

Das ist der Plan-Do-Check-Act-Zyklus, angewandt auf den Prozess selbst (siehe Thema 3.15 — Kontinuierliche Verbesserung).

### Mit Nutzenden entwerfen

Prozessgestaltende, die den Prozess nicht nutzen, machen vermeidbare Fehler. Beziehen Sie die Menschen ein, die ihm folgen: laden Sie Ingenieure ein, den Änderungsprozess zu entwerfen, Desk-Analysten, das Incident-Formular zu entwerfen, und Kunden, den Anfragekatalog zu entwerfen. Beobachten Sie echte Arbeit. Testen Sie mit echten Fällen. Das ist "Zusammenarbeit mit dem Kunden mehr als Vertragsverhandlung", innerhalb der Organisation angewandt (siehe Thema 1.1 — Das Agile Manifest).

### Minimal funktionsfähiger Prozess

Ein **minimal funktionsfähiger Prozess** ist der kleinste Satz von Schritten, Aufzeichnungen und Rollen, der den Zweck erreicht. Ihn zu erweitern braucht einen Grund. Das Leitprinzip "es einfach und praktisch halten" stützt das. Ein nützlicher Test für jeden Schritt ist zu fragen, was geschähe, wenn er entfernt würde, und wer es bemerken würde. Kontrollen, die Gesetz oder Vertrag verlangen, bleiben, mit Nennung der Quelle; andere werden hinterfragt.

### Prozess-Releases und Kommunikation

Wenn sich ein Prozess ändert, müssen Menschen es wissen. Behandeln Sie Änderungen wie Releases: eine kurze Notiz, was sich geändert hat, warum und was anders zu tun ist, mit einer Kontaktperson für Fragen. Geben Sie in kleinen Schritten frei, in einem Rhythmus, dem Menschen folgen können, und vermeiden Sie es, Teams mit großen Änderungen zu überraschen. Führen Sie eine sichtbare Änderungshistorie.

### Standards, Audits und Agilität

Viele Organisationen müssen Standards oder Auditoren genügen. ISO/IEC 20000 ist ein Standard für Service-Management-Systeme, und Wikipedia listet einen jüngeren Teil mit Anleitung zu Agile und DevOps auf (siehe Thema 2.7 — ITSM-Frameworks und -Standards). Ein in kleinen Schritten gebauter Prozess kann Audits genügen, wenn die Aufzeichnungen zeigen, wie er funktioniert und wie er sich ändert: Backlog, Release-Notizen und Messgrößen sind selbst Belege. Besprechen Sie früh mit Auditoren, was sie brauchen, und zeigen Sie ihnen, wie Sie arbeiten.

### Agiles Service-Management und DevOps

Praktiken aus DevOps, etwa Automatisierung und Pipelines, sind Werkzeuge zur Umsetzung von Prozessen (siehe Thema 5.2 — DevOps). Wo sich ein Prozessschritt automatisieren lässt, etwa eine Änderung aus einer Pipeline zu erfassen, tun Sie es und behandeln Sie die Automatisierung als Teil des Prozesses. Agiles Service-Management und DevOps teilen das Interesse an kurzen Zyklen und schnellem Feedback.

### Grenzen

Der Ansatz setzt voraus, dass Menschen Zeit und Mandat haben, Prozesse zu verbessern, was nicht immer stimmt. Er kann scheitern, wenn die Prozessverantwortung nur dem Namen nach besteht, wenn Stakeholder einen fertigen Entwurf verlangen, bevor sie etwas ausprobieren, oder wenn jede Änderung eine lange Genehmigung braucht. Er riskiert auch ständigen Wandel, wenn Änderungen zu häufig sind, als dass Menschen sie aufnehmen könnten. Wägen Sie die kontinuierliche Lieferung von Änderung gegen Stabilität ab: ändern Sie in einem vorhersehbaren Rhythmus.

## Bewährte Praktiken

1. **Benennen Sie für jeden Prozess eine verantwortliche Person.** Wählen Sie jemanden mit der Befugnis, ihn zu ändern, und der Zeit dafür. Machen Sie ihre Rolle klar: Sie steht dafür ein, wie gut der Prozess seinem Zweck dient.
2. **Schreiben Sie einen Ein-Satz-Zweck.** Halten Sie fest, wofür der Prozess da ist und wem er dient. Wenn Sie das nicht können, ist der Prozess womöglich ein Kandidat zur Abschaffung.
3. **Führen Sie ein Prozess-Backlog.** Sammeln Sie Ideen aus Reviews, Audits, Feedback und Daten in einer geordneten Liste. Zeigen Sie sie den Menschen, die dem Prozess folgen.
4. **Beziehen Sie die Nutzenden in den Entwurf ein.** Nehmen Sie Ingenieure, Desk-Analysten und Kunden in Workshops und Versuche auf. Beobachten Sie echte Arbeit, bevor Sie sie ändern.
5. **Beginnen Sie mit einem minimal funktionsfähigen Prozess.** Entwerfen Sie die kleinste Version, die den Zweck und die rechtlichen Anforderungen erfüllt. Ergänzen Sie Schritte nur, wenn ein Problem sie rechtfertigt.
6. **Probieren Sie, bevor Sie ausrollen.** Pilotieren Sie mit einem Team oder einer Art von Arbeit für einen kurzen, festgelegten Zeitraum. Vereinbaren Sie vor dem Start, was Sie betrachten werden.
7. **Geben Sie Änderungen in kleinen Schritten in einem Rhythmus frei.** Veröffentlichen Sie für jedes Release des Prozesses eine kurze Notiz mit einer Kontaktperson. Vermeiden Sie große Überraschungsänderungen.
8. **Messen Sie den Prozess.** Wählen Sie einige Messgrößen dafür, ob er funktioniert, etwa Zeitaufwand, Nacharbeit und Nutzerzufriedenheit (siehe Thema 5.6 — Metriken und Messung). Besprechen Sie sie mit den Nutzenden.
9. **Automatisieren Sie, wo es hilft.** Erfassen Sie Aufzeichnungen aus Werkzeugen statt aus Formularen; machen Sie den einfachen Weg zum richtigen Weg. Prüfen Sie, dass die Automatisierung kein Urteil verbirgt, das Menschen fällen sollten.
10. **Bewahren Sie die Belege für Auditoren auf.** Speichern Sie Backlog, Entscheidungen, Release-Notizen und Messgrößen dort, wo Auditoren sie sehen können. Laden Sie sie zu einem Review ein, wie sich der Prozess ändert.
11. **Mustern Sie Prozess aus.** Entfernen Sie Schritte, Formulare und Aufzeichnungen, die ihrem Zweck nicht mehr dienen. Behandeln Sie das Löschen als Verbesserung.
12. **Überprüfen Sie die Prozessverantwortung jährlich.** Prüfen Sie, dass jeder Prozess noch eine aktive verantwortliche Person, ein aktuelles Backlog und Nutzende hat, die sie erreichen können.

## Fragen zur Diskussion im Team

**Wer verantwortet jeden unserer Prozesse, und welche Befugnis hat diese Person, ihn zu ändern?**

Listen Sie die wichtigsten Prozesse auf und benennen Sie für jeden die verantwortliche Person. Fragen Sie, was sie ändern kann, ohne jemanden zu fragen. Oft lautet die Antwort "sehr wenig". Die Moderation kann fragen, was nötig wäre, damit die verantwortliche Person kleine Änderungen schnell vornehmen kann. Vereinbaren Sie einen Prozess zum Beginnen.

**Wofür ist unser Änderungsprozess da? Können wir es in einem Satz sagen?**

Bitten Sie jede Person, einen Zweck aufzuschreiben. Vergleichen Sie. Unterschiede zeigen Verwirrung darüber, warum der Prozess existiert. Nutzen Sie die gemeinsame Aussage, um jeden Schritt zu beurteilen. Entfernen oder hinterfragen Sie Schritte, die ihr nicht dienen.

**Wann haben wir zuletzt einen Prozess geändert, weil Nutzende darum baten, und wie haben wir es erfahren?**

Fragen Sie nach Beispielen. Gibt es keine, fragen Sie, wohin Beschwerden gehen. Besprechen Sie, wie Feedback die verantwortliche Person erreichen könnte: ein Kanal, ein regelmäßiger Review, eine kurze Umfrage. Wählen Sie einen Weg zum Ausprobieren.

**Wie sähe ein einmonatiger Versuch mit einem einfacheren Prozess aus?**

Wählen Sie einen Prozess mit bekannter Reibung. Beschreiben Sie eine leichtere Version, wer sie ausprobieren würde, was Sie messen würden und was Sie zum Abbruch brächte. Das macht aus einem Streit ein Experiment. Vereinbaren Sie die Einzelheiten und das Datum.

**Welche Belege würden unsere Auditoren von einem Prozess der kontinuierlichen Softwarelieferung akzeptieren?**

Fragen Sie eine Auditorin oder einen Compliance-Kollegen. Listen Sie auf, was der Prozess erzeugt: ein Backlog, Release-Notizen, Messgrößen, Aufzeichnungen. Besprechen Sie Lücken. Teams sind oft überrascht, wie bereit Auditoren sind, klare Belege kontrollierter Änderung zu akzeptieren.

**Wie erfahren Menschen, dass sich ein Prozess geändert hat?**

Verfolgen Sie die letzte Änderung. Viele erfuhren es von einer Kollegin oder dadurch, dass sie darauf stießen. Besprechen Sie Release-Notizen und ein sichtbares Änderungsprotokoll. Vereinbaren Sie einen einfachen Weg, Änderungen anzukündigen, und wo sie liegen.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Straßenverkehrssicherheitsbehörde hat eine IT-Abteilung von 90 Personen, die eine von Polizei und Gerichten genutzte Anwendung unterstützt. Der Incident-Prozess der Abteilung wurde vor acht Jahren geschrieben: ein Formular mit 14 Feldern, drei Genehmigungen zum Schließen eines Incidents hoher Priorität und ein Monatsbericht, den niemand liest. Delivery-Teams überspringen das Formular bei Ausfällen und füllen es hinterher aus, sodass seine Aufzeichnungen dürftig sind. Ein Auditbefund besagt, dass Incident-Aufzeichnungen unvollständig sind.

Die Leiterin des Service-Managements benennt sich selbst als Verantwortliche des Incident-Prozesses und bildet ein kleines Arbeitsteam: zwei Analysten vom Service Desk, je einen Ingenieur aus zwei Delivery-Teams und einen Qualitätsbeauftragten aus der Governance-Einheit der Behörde. Sie schreibt einen Zweck für den Prozess: den Service schnell wiederherzustellen und aus dem Geschehenen zu lernen. Das Team beobachtet drei echte Incidents. Es stellt fest, dass das Formular nach dem Ereignis ausgefüllt wird, meist mit denselben wenigen Werten, und dass die Genehmigungen Verzögerung hinzufügen, ohne je ein Ergebnis zu ändern. Es baut ein Backlog und beginnt mit den kleinsten Änderungen. Ein Versuch mit zwei Teams reduziert das Formular auf sechs Felder, wo möglich automatisch aus dem Monitoring-Werkzeug gefüllt, streicht zwei der drei Genehmigungen und ergänzt für jeden Incident hoher Priorität einen kurzen schuldzuweisungsfreien Review.

Nach sechs Wochen erfassen die Versuchsteams Incidents während des Ausfalls statt danach, und der Qualitätsbeauftragte findet die Aufzeichnungen vollständiger als zuvor. Das Team veröffentlicht eine einseitige Release-Notiz, weitet die Änderung auf alle Teams aus und zeigt dem Auditor das Backlog, die Versuchsergebnisse und die Messgrößen. Einige Schwierigkeiten bleiben. Ein Delivery-Team ist dem Versuch nie beigetreten und nutzt weiter das alte Formular, der Vertrag eines Lieferanten verlangt ein Feld, das das neue Formular auslässt, und der Qualitätsbeauftragte sorgt sich, dass das Streichen von Genehmigungen im nächsten Audit hinterfragt wird. Die Leiterin des Service-Managements ergänzt ein Feld für den Lieferantenfall, bittet das verbliebene Team, der nächsten Runde beizutreten, und vereinbart mit dem Auditor, die Incident-Aufzeichnungen im nächsten Quartalstreffen zu prüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sind die Nutzenden vieler Service-Management-Prozesse. Nehmen Sie am Entwurf der Prozesse teil, die Sie betreffen, bieten Sie Daten dazu, wie sie in der Praxis funktionieren, und probieren Sie Piloten aus. Wo sich ein Prozessschritt in Ihrer Pipeline automatisieren lässt, bieten Sie an, ihn zu bauen.

### Service- und Betriebsteams

Betriebsteams verantworten oft die Prozesse. Behandeln Sie jeden als Produkt: schreiben Sie einen Zweck, führen Sie ein Backlog, fragen Sie Nutzende und geben Sie kleine Änderungen frei. Schaffen Sie Zeit für Prozessverbesserung und verteidigen Sie sie, denn Delivery-Arbeit wird sie verdrängen.

### Führung und Governance

Führungskräfte geben Prozessverantwortlichen Befugnis und Zeit und setzen die Erwartung, dass sich Prozesse aus Belegen ändern. Verlangen Sie für jeden Prozess den Zweck und die Messgrößen sowie das Backlog. Unterstützen Sie Versuche und seien Sie bereit, Belege in neuen Formen zu akzeptieren.

### Kunden und Nutzer

Kunden und Nutzende von Services folgen ebenfalls Prozessen, etwa bei Anfragen und Genehmigungen. Sagen Sie der verantwortlichen Person, was verwirrend oder langsam ist. Bieten Sie an, an einem Versuch teilzunehmen. Erwarten Sie, dass Änderungen angekündigt und erklärt werden.

## Typische Fehlerbilder

- **Prozess ohne Verantwortliche.** Niemand kann ihn ändern. Benennen Sie stattdessen eine verantwortliche Person mit Befugnis und Zeit.
- **Neuentwurf im Urknall.** Ein ganz neuer Prozess wird auf einmal ausgerollt und abgelehnt. Ändern Sie stattdessen in kleinen Schritten und pilotieren Sie.
- **Entwurf im Ausschuss fern der Nutzenden.** Der Prozess passt zu den Gestaltenden. Beziehen Sie stattdessen die Menschen ein, die ihm folgen, und beobachten Sie echte Arbeit.
- **Ständiger Wandel.** Änderungen kommen zu oft, um sie aufzunehmen. Geben Sie stattdessen in einem vorhersehbaren Rhythmus frei.
- **Rechtliche Anforderungen vergessen.** Eine nötige Kontrolle wird gestrichen. Prüfen Sie stattdessen, wofür jeder Schritt verlangt ist, und nennen Sie die Quelle.
- **Nicht angekündigte Änderungen.** Menschen entdecken sie zufällig. Veröffentlichen Sie stattdessen kurze Release-Notizen.
- **Belege nicht aufbewahrt.** Das Audit kann nicht sehen, wie sich der Prozess geändert hat. Bewahren Sie stattdessen Backlog, Entscheidungen und Messgrößen auf.
- **Kein Entfernen.** Schritte häufen sich an. Behandeln Sie das Löschen stattdessen als Verbesserung.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Verantwortung und Zweck | Prozesse haben keine klare verantwortliche Person oder keinen klaren Zweck | Einige Prozesse haben Verantwortliche | Jeder Prozess hat eine verantwortliche Person mit Befugnis und einen schriftlichen Zweck | Verantwortliche werden auf Wirksamkeit überprüft und unterstützt | Verantwortliche arbeiten über Teams hinweg zusammen, um Prozesse durchgängig abzustimmen |
| Backlog und Änderung | Änderungen sind Projekte, selten und groß | Einige Verantwortliche führen Ideenlisten | Jeder Prozess hat ein geordnetes Backlog und gibt Änderungen in kleinen Schritten frei | Backlog-Fluss und Release-Wirkungen werden gemessen | Prozessänderungen werden über Prozesse hinweg und mit Lieferanten koordiniert |
| Nutzende einbeziehen | Gestaltende befragen Nutzende selten | Einige Versuche laufen mit Nutzenden | Nutzende nehmen standardmäßig an Entwurf und Versuchen teil | Nutzerfeedback und -zufriedenheit werden gemessen und beachtet | Kunden und Lieferanten nehmen am Prozessentwurf teil |
| Belege und Audit | Aufzeichnungen sind dürftig und Änderungen unprotokolliert | Einige Prozessänderungen werden protokolliert | Backlog, Release-Notizen und Messgrößen dienen als Auditbeleg | Auditoren prüfen die Änderungsaufzeichnung regelmäßig | Belege werden laufend mit Auditoren und Partnern geteilt |

## Checkliste

- [ ] Jeder wichtige Prozess hat eine benannte verantwortliche Person mit Befugnis und Zeit.
- [ ] Jeder Prozess hat einen Ein-Satz-Zweck und einen definierten Kreis von Nutzenden.
- [ ] Jeder Prozess hat ein sichtbares, geordnetes Backlog von Verbesserungen.
- [ ] Nutzende aus Delivery und Betrieb nehmen an Entwurf und Versuchen teil.
- [ ] Änderungen werden vor dem Ausrollen mit einer definierten Prüfung pilotiert.
- [ ] Prozessänderungen werden in einem Rhythmus mit kurzen Notizen freigegeben.
- [ ] Einige Messgrößen zeigen, ob jeder Prozess funktioniert.
- [ ] Rechtliche und vertragliche Kontrollen sind mit ihren Quellen benannt.
- [ ] Auditoren haben Backlog, Release-Notizen und Messgrößen gesehen.
- [ ] Schritte, die keinem Zweck mehr dienen, werden entfernt.

## KI-Prompts

**Zweck: eine Zweckaussage und eine Nutzerliste für einen Prozess entwerfen.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Feedback und Incident-Reviews in ein Prozess-Backlog verwandeln.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Zweck: einen einmonatigen Versuch mit einem leichteren Prozess entwerfen.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine Release-Notiz für eine Prozessänderung schreiben.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## KI-Skills

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um klarzumachen, wer jeden Prozess verantwortet und wer konsultiert wird.
- [user-story](../../../../skills/user-story/SKILL.md): nutzen Sie ihn, um Prozess-Backlog-Einträge aus der Sicht der Nutzenden zu schreiben.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): nutzen Sie ihn, um zu untersuchen, wie ein Prozess tatsächlich läuft und wo er sich schwertut.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um mit den Nutzenden zu überprüfen, wie ein Prozess funktioniert.
- [kaizen](../../../../skills/kaizen/SKILL.md): nutzen Sie ihn, um kleine, kontinuierliche Verbesserungen an einem Prozess zu planen.

## Wichtige Quellen

- **The Scrum Guide** (Ken Schwaber und Jeff Sutherland, scrumguides.org): die Quelle für die Rollen und Artefakte, die hier als Analogie für Prozessverantwortung und Backlogs dienen.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): die agile Seite des Entwurfsansatzes.
- **ITIL** (Wikipedia): die Geschichte der Ausrichtung von ITIL 4 auf agile, DevOps- und Lean-Arbeitsweisen.
- **ISO/IEC 20000** (Wikipedia): die Liste der Teile, einschließlich jüngerer Anleitung zu Agile und DevOps.

## Referenzen

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
