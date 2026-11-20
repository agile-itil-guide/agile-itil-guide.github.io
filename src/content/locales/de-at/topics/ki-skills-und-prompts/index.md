# KI-Skills und Prompts

**Ein guter Prompt gibt einem KI-Assistenten das Material, die Aufgabe und die Prüfungen, die er braucht, und ein guter Skill verpackt dieses Know-how, damit ein Team es wiederverwenden kann; die KI-Prompts und -Skills in diesem Leitfaden sind daher Ausgangspunkte, die Sie anpassen und prüfen.**

## Warum das wichtig ist

Jedes Thema dieses Leitfadens endet mit Prompts und Skills. Sie existieren, weil viele Aufgaben im Service-Management gut zu einem Assistenten passen, der einen Stapel Tickets lesen, ein Runbook entwerfen oder Notizen in einen Plan verwandeln kann. Sie existieren auch, weil eine vage Bitte an eine KI vage, manchmal falsche Ergebnisse liefert. Der Unterschied zwischen einer nützlichen Antwort und einer plausiblen, aber leeren liegt oft darin, wie die Bitte geschrieben wurde und welches Material mitkam.

Dieses Thema erklärt, wie man die Prompts und Skills des Leitfadens nutzt, warum sie so geschrieben sind, wie sie es sind, und wie Sie eigene für Ihr Team schreiben. Es geht mehr um Gewohnheiten als um Tricks: echtes Material liefern, sagen, was man will, den Assistenten bitten zu markieren, was er nicht weiß, und prüfen, was zurückkommt. Es baut auf den Vorbehalten im vorigen Thema auf, das beschreibt, wo KI hilft und wo sie schaden kann (siehe Thema 6.2 — KI im IT-Service-Management).

Die Quellen sind praktisch. Der Skill `skills/prompt-engineering` des Leitfadens beschreibt das Schreiben von Prompts als bewusste Praxis, die Anweisungen an ein Sprachmodell zu entwerfen und zu iterieren, und behandelt einen Prompt wie ein kleines Stück Software, das geschrieben, an echten Fällen getestet und überarbeitet wird. Die Dokumentation von Claude Code beschreibt, wie Skills als Verzeichnisse mit einer Datei `SKILL.md` aufgebaut sind. Der [Wikipedia-Artikel zu großen Sprachmodellen](https://en.wikipedia.org/wiki/Large_language_model) gibt Hintergrund. Keine für diesen Leitfaden gelesene Quelle bietet Belege dafür, welche Prompt-Techniken am besten funktionieren; behandeln Sie die Techniken hier als Gewohnheiten zum Testen.

## Kernkonzepte

### Prompts, Skills und wofür sie da sind

Ein **Prompt** ist die Anweisung und das Material, die Sie einem KI-Assistenten für eine Aufgabe geben. Ein **Skill** ist, im im Ordner `skills/` dieses Leitfadens genutzten Format, ein wiederverwendbares Paket von Know-how für eine Art von Aufgabe: ein Verzeichnis mit einer Datei `SKILL.md`, die sagt, wann man es nutzt und wie die Arbeit geht. In der Dokumentation von Claude Code ist ein Skill ein Verzeichnis mit einer verlangten Datei `SKILL.md`, deren Frontmatter einen Namen und eine Beschreibung enthält und deren Hauptteil die Anweisungen gibt; der Assistent nutzt die Beschreibung, um zu entscheiden, wann er den Skill anwendet, und lädt den ganzen Hauptteil nur, wenn er genutzt wird.

| | Prompt | Skill |
|---|---|---|
| **Umfang** | Eine Aufgabe, jetzt | Eine Art von Aufgabe, wiederverwendet |
| **Wohnt** | In einem Chat oder einem Dokument | In einem Ordner, etwa `skills/` oder dem Skills-Verzeichnis eines Projekts |
| **Geändert von** | Ihnen, jedes Mal | Dem Team, mit Prüfung |
| **Am besten für** | Spezifische Analyse Ihres eigenen Materials | Wiederholbare Methoden wie die Durchführung einer Retrospektive |

### Wie die Prompts des Leitfadens aufgebaut sind

Die Prompts in diesem Leitfaden folgen einem einfachen Muster, das im Styleguide festgelegt ist:

1. **Ein fetter Ein-Zeilen-Zweck** sagt, wofür der Prompt da ist.
2. **Ein umzäunter Block** enthält Text, den Sie kopieren und einfügen können.
3. **Platzhalter in eckigen Klammern** markieren, was Sie liefern müssen, mit einem Hinweis, was dort hingehört.
4. **Eine Aufgabe,** die die gewünschte Ausgabe benennt.
5. **Grenzen:** keine Zahlen, Quellen, Zitate oder Compliance-Behauptungen erfinden; nur das eingefügte Material nutzen.
6. **Eine Bitte, zuerst nachzufragen,** wenn Information fehlt, und Annahmen zu markieren.
7. **Eine Schlussprüfung:** "List what you are unsure of."

Diese Teile existieren aus Gründen. Platzhalter zwingen Sie, echtes Material mitzubringen. Die Grenze verhindert, dass der Assistent Lücken mit Erfindung füllt. Die Bitte um klärende Fragen macht aus einem einmaligen Raten ein kurzes Gespräch. Die letzte Zeile bringt den Assistenten dazu, seine eigenen Schwachstellen zu melden, was Ihnen hilft zu entscheiden, was zu prüfen ist.

### Muster, die helfen

Der Skill `prompt-engineering` des Leitfadens listet Techniken auf, die dieser Leitfaden mit eigenen Worten zusammenfasst:

- **Seien Sie konkret bei der gewünschten Ausgabe,** etwa eine Tabelle mit benannten Spalten oder eine nummerierte Liste mit höchstens fünf Einträgen, damit der Assistent die Form nicht errät.
- **Geben Sie Beispiele, wenn Anweisungen mehrdeutig sind,** und zeigen Sie das gewünschte Muster in einer kurzen Probe.
- **Liefern Sie den Kontext, den der Assistent nicht kennen kann,** etwa Ihre Terminologie, Randbedingungen und das fragliche Dokument, und sagen Sie, was er nicht annehmen soll.
- **Iterieren Sie an echten Testfällen,** lassen Sie den Prompt auf einer Bandbreite echter Eingaben laufen und überarbeiten Sie ihn, wo er scheitert, statt ihn an einem guten Beispiel zu beurteilen.

Ein an einer Eingabe justierter Prompt kann bei anderen scheitern. Der Skill macht den Punkt, dass eine kurze, eigenartig formulierte Eingabe oder eine mit fehlendem Feld einen Prompt brechen kann, der das ursprüngliche Beispiel bewältigte.

### Prüfgewohnheiten

Jede Ausgabe braucht Prüfung im Verhältnis zu den Kosten eines Irrtums. Gewohnheiten, die helfen:

- **Prüfen Sie Fakten an der Quelle, die Sie eingefügt haben.** Bitten Sie den Assistenten, den Teil Ihres Materials zu zitieren, der jede Aussage stützt.
- **Akzeptieren Sie nie Verweise, die Sie nicht gesehen haben.** Die im vorigen Thema beschriebenen Fälle umfassen erfundene Gerichtszitate; wiederholen Sie sie nicht.
- **Trennen Sie, was der Assistent sah, von dem, was er annahm.** Die Prompts des Leitfadens bitten darum.
- **Testen Sie Berechnungen selbst** oder bitten Sie um den Rechenweg und prüfen Sie ihn.
- **Nutzen Sie einen zweiten Blick für alles, was das Team verlässt,** etwa eine Kundenantwort oder eine Richtlinie.
- **Führen Sie Aufzeichnungen über bedeutende Nutzungen,** wie in Thema 6.2 — KI im IT-Service-Management beschrieben.

### Daten schützen

Fragen Sie, bevor Sie etwas in einen Prompt einfügen, was es enthält und wohin es geht. Entfernen Sie personenbezogene Daten, Zugangsdaten und vertrauliche kommerzielle Einzelheiten, es sei denn, das Werkzeug und seine Bedingungen wurden dafür freigegeben (siehe Thema 3.13 — Informationssicherheitsmanagement). Die Prompts des Leitfadens bitten Sie zu anonymisieren, aber die Verantwortung liegt bei Ihnen. Beschreiben Sie im Zweifel die Lage in allgemeinen Begriffen.

### Wie ein Skill aussieht

Nach der Dokumentation von Claude Code und den Skills in diesem Leitfaden ist ein Skill ein Verzeichnis wie `skills/runbook/` mit `SKILL.md`. Die Datei beginnt mit YAML-Frontmatter zwischen `---`-Markierungen, das mindestens einen `name` und eine `description` enthält. Die Dokumentation sagt, die Beschreibung sage dem Assistenten, was der Skill tut und wann er zu nutzen ist, und empfiehlt, den Hauptanwendungsfall zuerst zu nennen. Der Hauptteil gibt die Methode in Markdown. Weitere Dateien, etwa Referenzdokumente oder Skripte, können daneben liegen und bei Bedarf geladen werden; die Dokumentation rät, `SKILL.md` selbst kurz zu halten, unter 500 Zeilen.

Die kopierten Skills in diesem Leitfaden folgen derselben Form. Ihre Beschreibungen beginnen mit "Use when asked to…", was deutlich macht, wann jeder gilt.

### Wo Skills leben

Die Dokumentation beschreibt persönliche Skills im Skills-Verzeichnis des Home-Ordners einer nutzenden Person, Projekt-Skills im Skills-Verzeichnis eines Repositorys, das eingecheckt und mit einem Team geteilt werden kann, und weitere Orte wie Plugins. Für ein Team ist ein Projektordner unter Versionsverwaltung der natürliche Ort: Skills werden geprüft, über denselben Prozess wie andere Arbeit geändert und stehen allen zur Verfügung.

### Eigene Team-Skills schreiben

Ein Team-Skill erfasst eine Praxis, die das Team wiederholt und einheitlich erledigt haben will. Beispiele für das Service-Management: wie man ein Postmortem im Hausstil schreibt, wie man eine bestimmte Art von Ticket triagiert, wie man eine Änderungsanfrage vorbereitet, wie man den Freitags-Review durchführt. So schreiben Sie einen:

1. **Wählen Sie eine Aufgabe, die Sie wiederholen** und für die es einen bekannten guten Weg gibt.
2. **Schreiben Sie zuerst die Beschreibung,** beginnend mit "Use when…" und dem Hauptanwendungsfall, damit der Assistent und Ihre Kolleginnen wissen, wann er gilt.
3. **Schreiben Sie die Methode** in kurzen Schritten, mit Ausgabeformat, Prüfungen und dem, was zu meiden ist.
4. **Fügen Sie Beispiele** eines guten Ergebnisses hinzu, mit entfernten sensiblen Einzelheiten.
5. **Sagen Sie, was er nicht tun darf,** etwa Zahlen erfinden oder etwas ohne Prüfung senden.
6. **Testen Sie ihn an echten Fällen** und überarbeiten Sie.
7. **Geben Sie ihm eine verantwortliche Person und ein Überprüfungsdatum,** wie jedem anderen gemeinsamen Dokument.

### Skills in diesem Leitfaden

Der Ordner `skills/` in diesem Repository enthält Kopien von Skills aus der Sammlung skills-on-ai, aufgelistet in `skills/README.md`, und zwei für diesen Leitfaden geschriebene Skills: einen für Lesende und einen für Pflegende. Jedes Thema verlinkt auf die für sein Gebiet nützlichsten Skills, mit einem Satz dazu, wann jeder zu nutzen ist. Die kopierten Skills sind allgemein, nicht spezifisch für den Inhalt dieses Leitfadens, nutzen Sie sie also als Ausgangspunkte und passen Sie ihre Ausgabe an Ihren Kontext an.

### Grenzen

Keine für diesen Leitfaden gelesene Quelle misst, wie gut irgendeine Prompt-Technik funktioniert, und KI-Werkzeuge ändern sich schnell. Die gelesene Dokumentation von Claude Code war lang und wurde nur zum Teil gelesen. Was folgt, ist praktischer Rat, der sich im allgemeinen Gebrauch bewährt hat, als Gewohnheiten zum Testen angeboten und nicht als Garantien.

## Bewährte Praktiken

1. **Beginnen Sie bei einer echten Aufgabe und echtem Material.** Wählen Sie etwas, das Sie erledigt haben müssen, und fügen Sie die tatsächlichen Fakten ein, nicht eine Beschreibung davon. Füllen Sie jeden Platzhalter mit Konkretem.
2. **Nennen Sie den Zweck in einer Zeile.** Sagen Sie, wofür die Ausgabe da ist und wer sie nutzen wird. Es hilft dem Assistenten, die richtige Detailtiefe zu wählen.
3. **Legen Sie die Ausgabe fest.** Benennen Sie Format, Länge und Struktur, die Sie wollen. Bitten Sie um eine Tabelle, wenn Sie vergleichen wollen, um eine Liste, wenn Sie Schritte wollen.
4. **Setzen Sie Grenzen.** Sagen Sie, was der Assistent nicht tun darf: Zahlen, Quellen oder Zitate erfinden; nicht gegebene Fakten annehmen; behaupten, eine Regel gelte, ohne den Text.
5. **Bitten Sie zuerst um klärende Fragen.** Sagen Sie dem Assistenten, er solle fragen, was er braucht, bevor er antwortet. Antworten Sie kurz und bitten Sie ihn dann fortzufahren.
6. **Bitten Sie ihn, Fakten von Annahmen zu trennen.** Lassen Sie ihn markieren, was er aus Ihrem Material nahm und was er vermutete. Die Prompts dieses Leitfadens enden mit "List what you are unsure of."
7. **Verlangen Sie Belege.** Bitten Sie um Zitate aus Ihrem Material, die jede Behauptung stützen, damit Sie schnell prüfen können.
8. **Iterieren Sie.** Behandeln Sie die erste Antwort als Entwurf. Sagen Sie, was falsch ist, und bitten Sie um eine Überarbeitung, oder ändern Sie den Prompt und versuchen Sie es erneut.
9. **Testen Sie Prompts an mehreren Fällen.** Lassen Sie einen Prompt, bevor Sie sich darauf verlassen, auf drei oder vier echten Eingaben laufen, darunter einer ungewöhnlichen. Notieren Sie, wo er scheitert.
10. **Schützen Sie Daten.** Entfernen Sie personenbezogene und vertrauliche Einzelheiten vor dem Einfügen. Nutzen Sie freigegebene Werkzeuge. Folgen Sie der Richtlinie Ihrer Organisation.
11. **Prüfen Sie vor der Nutzung.** Prüfen Sie Fakten, Zahlen und Verweise. Lassen Sie eine Person alles prüfen, was zu Kunden geht oder ein System ändert.
12. **Teilen Sie, was funktioniert.** Legen Sie Prompts, die sich als nützlich erweisen, mit ihren Notizen in einen Team-Skill oder ein Dokument unter Versionsverwaltung, mit einer verantwortlichen Person.

## Fragen zur Diskussion im Team

**Welche Aufgaben wiederholen wir, bei denen ein Assistent helfen könnte, und was müssten wir prüfen?**

Bitten Sie jede Person, Aufgaben aufzulisten, und markieren Sie das Risiko, wenn die Ausgabe falsch wäre. Gruppieren Sie sie in niedriges, mittleres und hohes Risiko. Beginnen Sie mit einer risikoarmen. Die Moderation kann fragen, wie der Prüfschritt aussähe. Wählen Sie eine Aufgabe für einen Versuch.

**Was fügen wir heute in KI-Werkzeuge ein, und sollten wir es?**

Seien Sie ehrlich und nicht wertend. Listen Sie Beispiele auf. Vergleichen Sie mit der Datenrichtlinie und den freigegebenen Werkzeugen. Vereinbaren Sie eine schnelle Prüfung, die Menschen vor dem Einfügen anwenden können: "Enthält das personenbezogene Daten, Geheimnisse oder vertrauliche Einzelheiten?"

**Welchen der Prompts dieses Leitfadens würden wir zuerst ausprobieren, und mit welchem echten Material?**

Blättern Sie gemeinsam durch die Prompts und wählen Sie einen. Bestimmen Sie das echte Material zum Einfügen, entfernen Sie sensible Einzelheiten und lassen Sie ihn laufen. Vergleichen Sie Ergebnisse und besprechen Sie, was am Prompt zu ändern ist. So lernt man das Muster schnell.

**Woher würden wir wissen, dass ein Prompt funktioniert?**

Bitten Sie um einen Testsatz: einige echte Eingaben mit bekannten guten Ausgaben. Besprechen Sie, wie Antworten bewertet werden und wer entscheidet. Ein Prompt ohne Testsatz ist eine Hoffnung. Vereinbaren Sie einen kleinen Satz für einen Prompt.

**Welche Praxis wiederholen wir, die es verdient, ein Team-Skill zu sein?**

Listen Sie Kandidaten auf: ein Review-Format, eine Triage-Routine, eine Vorlage für Berichte. Wählen Sie einen und entwerfen Sie Beschreibung und Schritte gemeinsam. Entscheiden Sie, wer ihn verantwortet und wann er überprüft wird.

**Was würden wir nie wollen, dass eine KI allein tut?**

Listen Sie Handlungen auf: an Kunden senden, die Produktion ändern, Zugang genehmigen, über eine Priorität entscheiden. Besprechen Sie, warum. Die Antworten sind die Grenzen, die Sie in Ihre Prompts und Skills schreiben. Vereinbaren Sie eine kurze Liste.

## In der Praxis: ein agiles ITIL-Beispiel

Der IT-Service-Desk eines regionalen Krankenhauses hat vierzehn Analysten. Die Leitung des Desks hat bemerkt, dass Kollegen einen KI-Assistenten auf verschiedene Weisen nutzen: einer fügt ganze Tickets, einschließlich Patientennamen, in einen öffentlichen Chatbot ein; ein anderer schreibt aufwendige Prompts und bekommt nützliche Zusammenfassungen; die meisten nutzen ihn gar nicht. Ein jüngster Wissensartikel, von einem Assistenten entworfen, enthielt einen Verfahrensschritt, der nicht existierte.

Die Leitung des Desks hält eine einstündige Sitzung nach dem Ansatz dieses Leitfadens. Sie beginnt mit den Daten: Die Gruppe vereinbart die Regel, dass keine Patientendetails oder Zugangsdaten in irgendein Werkzeug gehen und dass der freigegebene Assistent, den das Krankenhaus mit geeigneten Bedingungen lizenziert hat, der einzige ist, der mit Ticket-Text genutzt wird. Sie wählt eine Aufgabe, einen Wissensartikel aus einem gelösten Ticket zu entwerfen, und nutzt das Muster aus den Prompts dieses Leitfadens: einen Ein-Zeilen-Zweck, einen Platzhalter für das anonymisierte Ticket, Anweisungen, nur den Inhalt des Tickets zu nutzen, jeden erschlossenen Schritt mit einer Markierung zu versehen und aufzulisten, wobei er sich unsicher ist. Zwei Analysten lassen den Prompt auf fünf vergangenen Tickets laufen, und die Gruppe liest die Ergebnisse gemeinsam. Der Prompt erfindet in einem Fall einen Schritt; sie ergänzen eine Zeile, die zu jedem Schritt ein Zitat aus dem Ticket verlangt.

Die Leitung des Desks schreibt den verbesserten Prompt als Team-Skill in den gemeinsamen Ordner des Desks, mit einer Beschreibung, die mit "Use when…" beginnt, einer verantwortlichen Person und einem Überprüfungsdatum, und ergänzt eine Regel, dass jeder entworfene Artikel vor der Veröffentlichung von einem zweiten Analysten geprüft wird. Nach zwei Monaten hat sich die Zahl der pro Woche entworfenen Artikel verdoppelt, und die Prüfenden finden weniger Fehler als zuvor. Einige Fragen bleiben. Zwei Analysten fügen unter Druck immer noch Einzelheiten in ein öffentliches Werkzeug ein, der Skill erzeugt übermäßig förmliche Formulierungen, die Analysten umschreiben, und eine Prüferin gibt zu, nur zu überfliegen. Die Leitung des Desks wiederholt die Datenregel in jeder Teambesprechung, ergänzt ein Stilbeispiel im Skill und bittet die Prüfenden, eine kurze Checkliste abzuhaken.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams nutzen Assistenten für Code, Tests und Dokumentation. Wenden Sie dieselben Gewohnheiten an: echtes Material, klare Grenzen, Prüfung und Review. Halten Sie Geheimnisse aus Prompts heraus und speichern Sie die nützlichen Prompts und Skills beim Code.

### Service- und Betriebsteams

Betriebsteams können Prompts nutzen, um Tickets zu analysieren, Runbooks zu entwerfen und Reviews vorzubereiten. Halten Sie personenbezogene Daten heraus, prüfen Sie Ausgaben an Logs und Aufzeichnungen und schreiben Sie Skills für Routinen, die das Team wiederholt, etwa Postmortems und Schichtübergaben.

### Führung und Governance

Führungskräfte setzen die Regeln dafür, was mit welchen Daten genutzt werden darf und wer verantwortlich ist. Verlangen Sie ein Inventar, eine Datenrichtlinie und Belege aus Piloten. Unterstützen Sie Zeit für Teams, Prompts und Skills zu schreiben und zu testen, und stellen Sie sicher, dass gemeinsame Skills Verantwortliche haben.

### Kunden und Nutzer

Kunden und Nutzende sehen womöglich die Ergebnisse von Prompts und Skills in Antworten, Artikeln und Zusammenfassungen. Erwarten Sie, dass Anbieter sie prüfen und Ihnen sagen, wann sie automatisierte Werkzeuge nutzen, wo es zählt. Melden Sie Fehler, die helfen, das zugrunde liegende Material zu verbessern.

## Typische Fehlerbilder

- **Vage Bitten.** Der Assistent rät. Liefern Sie stattdessen Material, Zweck und gewünschte Ausgabe.
- **Sensible Daten einfügen.** Personenbezogene oder vertrauliche Einzelheiten verlassen die Organisation. Entfernen Sie sie stattdessen und nutzen Sie freigegebene Werkzeuge.
- **Erfundenen Inhalt akzeptieren.** Erfundene Schritte, Zahlen oder Verweise werden genutzt. Setzen Sie stattdessen Grenzen, verlangen Sie Zitate und prüfen Sie.
- **Justieren an einem Beispiel.** Ein Prompt funktioniert einmal und scheitert anderswo. Testen Sie stattdessen an mehreren echten Eingaben.
- **Skills ohne Verantwortliche.** Gemeinsame Prompts veralten. Weisen Sie stattdessen eine verantwortliche Person und ein Überprüfungsdatum zu und halten Sie sie in der Versionsverwaltung.
- **Übermäßiges Vertrauen in kopierte Prompts.** Ein Prompt aus dem Internet oder aus diesem Leitfaden wird unverändert genutzt. Passen Sie ihn stattdessen an Ihren Kontext an und prüfen Sie die Ergebnisse.
- **Kein zweiter Blick.** KI-Ausgabe geht direkt zu Kunden. Lassen Sie stattdessen eine Person alles prüfen, was das Team verlässt.
- **Den Assistenten als Autorität behandeln.** Seine Überzeugung wird für Richtigkeit gehalten. Fragen Sie stattdessen, wobei er sich unsicher ist, und prüfen Sie.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Prompt-Praxis | Menschen schreiben Ad-hoc-Prompts | Einige Menschen teilen Prompts | Teams nutzen ein gemeinsames Muster aus Zweck, Material, Grenzen und Prüfungen | Die Prompt-Qualität wird an Sätzen echter Fälle getestet | Prompts werden über Teams aus gemeinsamen Testergebnissen verbessert |
| Skills | Keine gemeinsamen Skills | Einige persönliche Skills existieren | Team-Skills mit Verantwortlichen und Überprüfungsdaten liegen in der Versionsverwaltung | Nutzung und Ergebnisse von Skills werden überprüft | Skills werden über Teams und Partner geteilt und gepflegt |
| Prüfung und Daten | Ausgaben wird vertraut; Daten werden frei eingefügt | Einige Prüfungen und Datenregeln | Prüfgewohnheiten und eine Datenrichtlinie sind Routine | Fehler und Datenvorfälle werden verfolgt und beachtet | Prüf- und Datenpraxis sind in der Organisation koordiniert |
| Lernen | Lernen ist individuell | Einige Tipps werden geteilt | Teams halten regelmäßige Sitzungen zur Verbesserung von Prompts und Skills | Verbesserungen werden verfolgt und gemessen | Lernen verbreitet sich laufend über Teams |

## Checkliste

- [ ] Das Team hat eine kurze Regel, welche Daten in welche KI-Werkzeuge dürfen.
- [ ] Prompts, auf die wir uns verlassen, haben einen genannten Zweck, echtes Material, Grenzen und die Bitte, zu nennen, wobei der Assistent sich unsicher ist.
- [ ] Jeder Prompt, auf den wir uns verlassen, wurde an mindestens drei echten Eingaben getestet.
- [ ] Ausgaben, die das Team verlassen, werden von einer Person geprüft.
- [ ] Verweise und Zahlen aus KI-Ausgaben werden an Quellen geprüft.
- [ ] Nützliche Prompts werden mit Notizen an einem gemeinsamen Ort unter Versionsverwaltung gespeichert.
- [ ] Team-Skills haben eine klare "Use when…"-Beschreibung, eine verantwortliche Person und ein Überprüfungsdatum.
- [ ] Das Team hat aufgelistet, welche Handlungen die KI nie allein vornehmen darf.
- [ ] Beschäftigte wissen, welche Werkzeuge freigegeben sind.
- [ ] Wir überprüfen unsere Prompts und Skills mindestens zweimal im Jahr.

## KI-Prompts

**Zweck: einen Prompt verbessern, den Sie bereits nutzen.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Zweck: eine wiederholte Aufgabe in einen Entwurf eines Team-Skills verwandeln.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen kleinen Testsatz für einen Prompt aufbauen.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen von einer KI geschriebenen Entwurf an seiner Quelle prüfen.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## KI-Skills

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): nutzen Sie ihn, um Prompts zu schreiben, zu testen und zu verbessern, damit sie verlässliche Ergebnisse liefern.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): nutzen Sie ihn, um zu dokumentieren, wofür ein Modell da ist und welche Grenzen es hat, wenn Ihr Team sich auf eines verlässt.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): nutzen Sie ihn, wenn Sie einem Team helfen, über die Zeit Gewohnheiten rund um Prompts und Skills aufzubauen.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): nutzen Sie ihn, um Themen in diesem Leitfaden zu finden, aus seinen Fragen ein Team-Gespräch zu führen oder einen seiner Prompts anzupassen.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): nutzen Sie ihn, wenn Sie ein Thema, einen Prompt oder einen Skill-Link für diesen Leitfaden schreiben oder prüfen.

## Wichtige Quellen

- **Claude Code skills documentation** (code.claude.com): die Beschreibung, wie Skills als Verzeichnisse mit einer Datei `SKILL.md` aufgebaut sind.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` dieses Leitfadens): eine kurze Darstellung der Techniken und das Plädoyer, Prompts an echten Eingaben zu testen.
- **Large language model** (Wikipedia): Hintergrund dazu, wie diese Systeme gebaut sind und wo sie versagen können.
- **AI Risk Management Framework** (NIST): das freiwillige Framework zur Steuerung von KI-Risiken, nützlich für Team-Richtlinien.

## Referenzen

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
