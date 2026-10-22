# Service-Request-Management

**Das Service-Request-Management bearbeitet die Routinedinge, um die Nutzende bitten, etwa Zugang, Ausstattung und Information, und das agile Ziel ist, jede häufige Anfrage schnell, vorhersehbar und überwiegend automatisch zu machen, damit qualifizierte Menschen ihre Zeit auf Probleme verwenden.**

## Warum das wichtig ist

Ein großer Teil der Arbeit, die einen Service Desk erreicht, ist gar kein Versagen. Es ist eine nutzende Person, die um etwas bittet, was der Service bereitstellen soll: ein neues Konto, Zugang zu einem Ordner, ein Laptop, eine Lizenz, eine Passwortrücksetzung. Diese Anfragen sind vorhersehbar und wiederholen sich. Gut bearbeitet sind sie schnell, und niemand bemerkt sie. Schlecht bearbeitet sind sie die Quelle langer Wartezeiten, wiederholter Fragen und stiller Frustration, die den Ruf eines Teams mehr schädigt als jeder einzelne Ausfall.

Die Anfragebearbeitung ist auch der Ort, an dem sich Automatisierung und Self-Service am meisten auszahlen. Eine Anfrage, die jedes Mal denselben Schritten folgt, lässt sich einmal entwerfen, testen und überwiegend automatisieren. Der [Wikipedia-Artikel zu IT Service Management](https://en.wikipedia.org/wiki/IT_service_management) definiert einen Service-Request als Routineanfrage nach einem Service und nennt die IT-Prozessautomatisierung, die manuelle Routineschritte durch automatisierte ersetzt, damit sich das Personal auf Aufgaben höherer Priorität konzentrieren kann. Das ist das Ziel dieser Praktik in einem Satz.

Der Artikel sagt zu Anfragen wenig mehr. Dieses Thema verbindet daher diese Definition mit praktischer Anleitung aus weit verbreiteter Service-Management-Praxis, als solche angeboten, und mit den anderen Themen des Leitfadens zum Service Desk, zum Service-Katalog (ITIL schreibt "service catalogue") und zu Wissen. Wo etwas eine gängige Praxis und kein Befund einer Quelle ist, sagt der Text das.

## Kernkonzepte

### Was ein Service-Request ist

Ein **Service-Request** ist eine Routineanfrage nach etwas, das ein Service normalerweise bereitstellt. Er unterscheidet sich von einem **Incident**, einer Störung oder möglichen Störung eines Services, und von einer **Änderung**, die einen Service modifiziert (siehe Thema 3.2 — Incident Management und Thema 3.4 — Change Enablement). Die Grenze kann verschwimmen: "Ich brauche Zugang zum Finanzsystem" ist eine Anfrage; "Ich habe Zugang, aber das System zeigt einen Fehler" ist ein Incident; "Füge dem Finanzsystem ein neues Feld hinzu" ist wahrscheinlich eine Änderung.

Ein praktischer Test: Wenn die Arbeit einem bekannten Verfahren folgt, bekannte Kosten und bekanntes Risiko hat und die Antwort auf "ist das erlaubt?" im Voraus entschieden ist, ist es eine Anfrage. Alles, was neues Urteil über Risiko braucht, ist eher eine Änderung oder ein Projekt.

### Warum die Unterscheidung wichtig ist

Anfragen mit Incidents zu vermischen verzerrt beides. Zählungen von "Tickets" verwischen zwei verschiedene Arten von Bedarf. Prioritäten kollidieren, da ein Incident, der Arbeit stoppt, vor einer Anfrage kommen sollte, die warten kann. Reaktionsmaße führen in die Irre: Eine lange durchschnittliche Zeit bis zum Schließen kann verbergen, dass Anfragen auf Freigaben warten, während Incidents schnell behoben werden. Beides getrennt zu halten lässt Sie passende Ziele setzen und sehen, wo die Verzögerung liegt (siehe Thema 2.1 — IT-Service-Management).

### Anfragemodelle

Ein **Anfragemodell** (Request Model) ist ein wiederholbares Muster für eine Art von Anfrage: welche Information gebraucht wird, wer genehmigen muss, welche Schritte wer oder die Automatisierung ausführt und wie lang die erwartete Zeit ist. Anfragemodelle sind eine im Service-Management weit verbreitete Idee. Sie geben einem Team die Möglichkeit, die häufigen Anfragen einmal zu entwerfen und viele Male durchzuführen. Ein Katalog von Services listet die verfügbaren Anfragen auf (siehe Thema 3.8 — Service-Katalog-Management).

Ein Modell für "Laptop für neue Mitarbeitende" könnte festlegen: die Information, die von der Führungskraft gebraucht wird, die Genehmigung (keine, wenn die Rolle auf einer Standardliste steht), die Schritte (bestellen, konfigurieren, versenden) und die erwartete Zeit. Ein Modell für "Zugang zu einem eingeschränkten System" enthält eine Genehmigung durch die Verantwortlichen des Systems und eine Aufzeichnung für das Audit.

### Genehmigung

Manche Anfragen brauchen eine Genehmigung, bevor sie fortschreiten: Ausgaben, Zugang zu sensiblen Daten oder die Nutzung knapper Ressourcen. Die Entwurfsfrage ist, ob die Genehmigung echte Kontrolle hinzufügt. Eine Genehmigung, die immer Ja sagt, ist eine Verzögerung. Wo Genehmigungen nötig sind, machen Sie sie schnell und sichtbar, sagen Sie der genehmigenden Person genau, worum gebeten wird, und sehen Sie eine Ersatzregelung vor, falls sie nicht antwortet. Wo die Genehmigung von einer Rolle abhängt, etwa eine Führungskraft, die die Anfrage eines Teammitglieds genehmigt, erwägen Sie, Standardposten für die Rolle vorab zu genehmigen.

### Erfüllung und Automatisierung

Erfüllung ist die Arbeit, die Anfrage zu liefern. Der ITSM-Artikel beschreibt IT-Prozessautomatisierung als Automatisierung von Routineaufgaben, damit sich das Personal auf Aufgaben höherer Priorität konzentrieren kann. Kandidaten für Automatisierung sind Anfragen, die häufig sind, einem stabilen Verfahren folgen und ein geringes Risiko tragen: Passwortrücksetzungen, Gruppenmitgliedschaften, Standard-Softwareinstallationen. Automatisierung sollte mit derselben Sorgfalt gebaut werden wie jede Änderung, mit Tests und einer Möglichkeit zu sehen, was sie getan hat.

### Self-Service

Viele Organisationen bieten ein Portal, in dem Nutzende den benötigten Service finden, sehen können, welche Information verlangt wird, und eine Anfrage einreichen können, ohne mit jemandem zu sprechen. Guter Self-Service hängt von einer klaren Liste von Services in den Worten der Nutzenden und von klaren Formularen ab. Ein Portal, das das Organigramm spiegelt und nach Information fragt, die die nutzende Person nicht hat, treibt Menschen zurück zu E-Mail und Telefon.

### Enterprise Service Management

Der ITSM-Artikel merkt an, dass Enterprise Service Management ITSM-Werkzeuge und -Ideen auf andere Geschäftsbereiche wie Personalwesen oder Gebäudemanagement anwendet. Das Anfragemanagement ist der einfachste Ort zu beginnen, weil viele Funktionen Routineanfragen erhalten: Einarbeitung, Reisen, Ausstattung, Büroumzüge. Eine gemeinsame Anfrageplattform kann mehrere Funktionen bedienen, jede mit eigenen Anfragemodellen und Verantwortlichen.

### Maße

Übliche Maße sind, wie lange Anfragen von der Einreichung bis zur Erfüllung dauern, wie oft die antragstellende Person mit Fragen zurückkommen muss, wie viele Anfragen ohne menschlichen Aufwand erfüllt werden und die Zufriedenheit der Antragstellenden. Wie bei jedem Maß vermeiden Sie Ziele, die frühes Schließen von Anfragen belohnen. Achten Sie auf Wartezeit, denn der größte Teil der verstrichenen Zeit einer Anfrage ist meist Warten auf Genehmigung oder Information, nicht Arbeit (siehe Thema 1.7 — Lean Softwareentwicklung und Thema 5.6 — Metriken und Messung).

### Sicherheit und Compliance

Anfragen steuern oft Zugang und Ausgaben, haben also Auswirkungen auf Sicherheit und Audit. Aufzeichnungen sollten zeigen, wer gefragt hat, wer genehmigt hat, was getan wurde und wann. Entziehen Sie Zugang, wenn er nicht mehr gebraucht wird, als Teil eines Anfragemodells für Ausscheidende, nicht als nachträglichen Gedanken (siehe Thema 3.13 — Informationssicherheitsmanagement).

## Bewährte Praktiken

1. **Beginnen Sie mit den häufigsten Anfragen.** Listen Sie die zehn häufigsten Anfragen nach Volumen aus Ihren Aufzeichnungen auf. Entwerfen Sie diese zuerst. Wenige gut entworfene Modelle decken einen großen Teil des Bedarfs ab.
2. **Definieren Sie für jede ein Anfragemodell.** Schreiben Sie auf, welche Information gebraucht wird, wer genehmigt, die Schritte, wer jeden ausführt, und die erwartete Zeit. Halten Sie jedes Modell auf einer Seite.
3. **Nutzen Sie die Worte der Nutzenden.** Benennen Sie Anfragen so, wie Nutzende es täten ("Einen neuen Laptop bekommen", nicht "Hardware-Bereitstellung Anfragetyp 2"). Testen Sie Namen mit Nutzenden.
4. **Fragen Sie nur nach dem, was Sie brauchen.** Jedes Feld eines Formulars sollte einen Zweck haben. Holen Sie, was Sie können, aus Systemen, die Sie schon haben, etwa die Abteilung der nutzenden Person, statt zu fragen.
5. **Genehmigen Sie Routine vorab.** Vereinbaren Sie mit Genehmigenden eine Standardliste von Posten und Rollen, die keine Genehmigung im Einzelfall brauchen. Überprüfen Sie die Liste regelmäßig.
6. **Machen Sie echte Genehmigungen einfach und schnell.** Zeigen Sie der genehmigenden Person, worum gebeten wird und warum, erlauben Sie Genehmigung per Smartphone oder E-Mail und richten Sie eine automatische Erinnerung und eine Vertretung für Abwesenheit ein.
7. **Automatisieren Sie das Stabile und Häufige.** Wählen Sie Anfragen, die jedes Mal denselben Schritten folgen und ein geringes Risiko tragen. Testen Sie die Automatisierung und halten Sie fest, was sie getan hat.
8. **Behalten Sie einen menschlichen Weg.** Erlauben Sie Nutzenden, um Hilfe zu bitten, wenn ein Formular nicht zu ihrem Bedarf passt. Behandeln Sie diese Fälle als Feedback zum Modell.
9. **Trennen Sie Anfragen von Incidents und Änderungen.** Geben Sie jedem eigene Kategorie, Warteschlange und Maße. Bringen Sie dem Desk bei, umzuklassifizieren, wenn sich eine Anfrage als Fehler oder Änderung erweist.
10. **Achten Sie auf Wartezeiten.** Messen Sie die Zeit, die auf Genehmigung oder Information gewartet wird, nicht nur die Gesamtzeit. Wählen Sie die längste Wartezeit, die zuerst verringert wird.
11. **Schließen Sie die Schleife mit der antragstellenden Person.** Bestätigen Sie den Abschluss, fragen Sie, ob es funktioniert hat, und bieten Sie einen Weg an zu sagen, wenn nicht. Eine Anfrage, die als erledigt markiert, aber nicht geliefert wurde, ist schlimmer als eine, die noch offen ist.
12. **Überprüfen Sie den Katalog der Anfragen regelmäßig.** Stellen Sie Anfragen ein, die niemand stellt, führen Sie Beinahe-Duplikate zusammen und ergänzen Sie neue aus Belegen (siehe Thema 3.8 — Service-Katalog-Management).

## Fragen zur Diskussion im Team

**Welche Anfragen bearbeiten wir am häufigsten, und wie lange dauert jede von Anfang bis Ende?**

Ziehen Sie die obersten zehn des letzten Quartals und verfolgen Sie die verstrichene Zeit für jede. Markieren Sie, wo jede Anfrage wartet. Die Überraschung ist meist, dass der größte Teil der Zeit Warten ist, nicht Arbeit. Fragen Sie, wer auf wen wartet. Die Moderation kann fragen, welche Anfrage sich am einfachsten zuerst verbessern ließe.

**Welche Genehmigungen in unseren Anfragen haben nie Nein gesagt?**

Prüfen Sie eine Stichprobe von Genehmigungen und zählen Sie Ablehnungen. Eine Genehmigung, die nie ablehnt, kann eine Verzögerung ohne Nutzen sein. Fragen Sie, wofür die Genehmigung da ist und wer profitiert. Manche Genehmigungen existieren für Audit oder Rechenschaft, was ein legitimer Zweck ist, der sich leichter erfüllen lässt, etwa indem die genehmigende Person nachträglich benachrichtigt wird. Wählen Sie eine zum Vereinfachen.

**Was müssen uns Nutzende sagen, das wir schon wissen?**

Sehen Sie sich ein Anfrageformular an und markieren Sie Felder, deren Antworten in einem anderen System vorhanden sind. Jedes solche Feld ist Aufwand für die nutzende Person und eine Fehlerquelle. Fragen Sie, was nötig wäre, sie vorzubelegen. Wählen Sie ein Feld zum Entfernen oder Vorbelegen.

**Welche unserer Anfragen könnten erledigt werden, ohne dass ein Mensch sie anfasst?**

Listen Sie Anfragen auf, die einem festen Verfahren folgen. Fragen Sie bei jeder, was Automatisierung verhindert: Werkzeuge, Zugang, Angst vor Fehlern. Besprechen Sie die Sicherungen, die Automatisierung akzeptabel machen würden, etwa Grenzen und Logs. Wählen Sie eine zum Automatisieren als Experiment.

**Wie erfahren Nutzende, worum sie bitten können?**

Fragen Sie einige Nutzende, wie sie etwas Ungewöhnliches anfragen würden. Lautet die Antwort "jemanden fragen, den ich kenne", funktioniert die Liste der Services nicht. Besprechen Sie, wie die Liste dargestellt wird und ob die Namen für die Nutzenden Sinn ergeben. Testen Sie einen Entwurf mit zwei oder drei Nutzenden.

**Was geschieht, wenn sich eine Anfrage als etwas anderes erweist?**

Sammeln Sie Beispiele für Anfragen, die in Wahrheit Incidents oder Änderungen waren. Fragen Sie, was die Fehlklassifizierung gekostet hat. Besprechen Sie, wie der Desk erkennt und umklassifiziert und ob das Anfrageformular den Nutzenden hilft, richtig zu wählen. Vereinbaren Sie einen einfachen Schritt zur Umklassifizierung.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationales Statistikamt hat 3.000 Beschäftigte und eine IT-Abteilung von 80. Neue Mitarbeitende warten routinemäßig zehn Tage auf einen funktionierenden Laptop und Konten, und Führungskräfte beklagen, dass Neuanfänger untätig herumsitzen. Der Service Desk bearbeitet die Einarbeitungsanfragen als einzelne Tickets, wobei fünf Teams jeweils einen Schritt ausführen und das Ticket weiterreichen.

Eine Verbesserungsverantwortliche bildet eine Einarbeitungsanfrage ab. Sie stellt fest, dass die eigentliche Arbeit etwa drei Stunden dauert und der Rest Warten ist: darauf, dass die Führungskraft Angaben liefert, auf eine Budgetfreigabe für einen Standard-Laptop und darauf, dass jedes Team das Ticket bemerkt. Das Team entwirft ein Anfragemodell für Neuanfänger. Die Führungskraft füllt drei Wochen vor dem Starttermin ein kurzes Formular aus, dessen meiste Felder aus dem Personalsystem gefüllt werden. Standard-Laptops und Konten für die Rolle sind vorab genehmigt. Ein Skript legt Konten und Gruppen an; Hardware wird automatisch aus einer Lagerliste bestellt; der Desk erhält eine einzige Aufgabenliste. Die Führungskraft des Neuanfängers erhält Updates und eine Bestätigung.

Nach zwei Monaten sinkt die mediane Zeit von der Anfrage bis zum bereiten Laptop auf drei Tage, wenn das Formular rechtzeitig eingereicht wird. Einige Schwierigkeiten bleiben. Etwa ein Drittel der Führungskräfte reicht das Formular noch spät ein, sodass Neuanfänger weiter warten, und das Skript scheitert, wenn dem Personaleintrag ein Abteilungscode fehlt, was Handreparaturarbeit erzeugt. Das Team ergänzt eine Erinnerung in der Einarbeitungs-Checkliste des Personalwesens, richtet einen Alarm für fehlgeschlagene Skripte ein und beginnt, mit dem Personalwesen über die Verbesserung der Daten zu sprechen. Sie behalten außerdem einen menschlichen Weg für Rollen, die nicht zur Standardliste passen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams erhalten oft Anfragen, die in Wahrheit Änderungen sind: ein neues Feld, ein neuer Bericht. Helfen Sie dem Desk, sie zu erkennen und in Ihren Backlog zu leiten. Wo Anfragen für Ihren Service häufig sind, etwa Zugang, bauen Sie einen Self-Service-Weg mit klaren Grenzen und Protokollierung.

### Service- und Betriebsteams

Betrieb und Desk verantworten die meisten Anfragemodelle. Entwerfen Sie die häufigen zuerst, beseitigen Sie Wartezeiten und automatisieren Sie, wo es sicher ist. Schützen Sie Zeit zum Bauen und Überprüfen von Modellen, denn Anfragearbeit verdrängt leicht Verbesserungsarbeit. Teilen Sie Daten zu Wartezeiten mit Genehmigenden und Führungskräften.

### Führung und Governance

Führungskräfte und Genehmigende prägen einen großen Teil des Wartens. Fragen Sie, welche Genehmigungen Kontrolle hinzufügen und welche Verzögerung, und akzeptieren Sie Vorabgenehmigung, wo das Risiko gering ist. Unterstützen Sie eine gemeinsame Anfrageplattform über Funktionen hinweg und verlangen Sie Maße der Wartezeit statt Ticketzahlen.

### Kunden und Nutzer

Nutzende profitieren von klaren Namen, kurzen Formularen und ehrlichen Schätzungen. Geben Sie vollständige Information, wenn Sie fragen, und sagen Sie, wenn es dringend ist und warum. Sagen Sie dem Team, wenn eine Anfrage nicht das lieferte, was Sie brauchten, denn das verbessert das Modell für die nächste Person.

## Typische Fehlerbilder

- **Anfragen als Incidents behandeln oder umgekehrt.** Prioritäten und Berichte werden verzerrt. Trennen Sie sie stattdessen und lehren Sie die Umklassifizierung.
- **Formulare, die zu viel fragen.** Nutzende verlassen das Portal. Fragen Sie stattdessen nur nach dem, was Sie brauchen, und belegen Sie den Rest vor.
- **Genehmigungen als Ritual.** Jede Anfrage wartet auf eine Unterschrift, die nie ablehnt. Genehmigen Sie stattdessen Routineposten vorab und halten Sie echte Genehmigungen schnell.
- **Automatisierung ohne Sicherungen.** Ein Skript nimmt im großen Maßstab die falsche Änderung vor. Testen, begrenzen und protokollieren Sie die Automatisierung stattdessen und überwachen Sie Fehler.
- **Interne Namen.** Nutzende finden nicht, was sie brauchen. Benennen Sie Anfragen stattdessen in den Worten der Nutzenden und testen Sie sie.
- **Kein menschlicher Weg.** Ungewöhnliche Bedürfnisse fallen durch. Bieten Sie stattdessen Hilfe an und behandeln Sie ungewöhnliche Anfragen als Feedback.
- **Nur Geschwindigkeit zählen.** Anfragen werden früh geschlossen. Bestätigen Sie stattdessen mit der antragstellenden Person und beobachten Sie wiederholte Anfragen.
- **Anfragen nie einstellen.** Die Liste veraltet. Überprüfen Sie stattdessen die Nutzung regelmäßig und entfernen Sie, was niemand anfragt.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Anfragemodelle | Jede Anfrage wird ad hoc bearbeitet | Für einige häufige Anfragen gibt es Modelle | Für die wichtigsten Anfragen gibt es Modelle mit Verantwortlichen und erwarteten Zeiten | Die Leistung der Modelle wird gemessen und abgestimmt | Modelle werden über Funktionen und Lieferanten hinweg geteilt |
| Genehmigung | Genehmigung ist informell oder aus Gewohnheit | Einige Routineposten sind vorab genehmigt | Listen vorab genehmigter Posten und schnelle Genehmigungswege sind Standard | Genehmigungsergebnisse und Wartezeiten werden überprüft | Genehmigungsregeln werden anhand von Risikodaten über Funktionen hinweg abgestimmt |
| Automatisierung und Self-Service | Anfragen werden manuell per E-Mail bearbeitet | Einige Anfragen sind in einem Portal verfügbar oder automatisiert | Häufige risikoarme Anfragen sind automatisiert und Self-Service ist Standard | Erfolg der Automatisierung und Aufwand der Nutzenden werden gemessen | Automatisierung und Self-Service reichen über IT, Personalwesen und Gebäudemanagement |
| Lernen und Verbesserung | Anfragen werden nicht analysiert | Einige Zählungen werden erhoben | Wartezeiten und wiederholte Anfragen werden regelmäßig überprüft | Verbesserungen werden aus Daten geplant und Wirkungen geprüft | Verbesserungsideen kommen von Nutzenden und Teams der ganzen Organisation |

## Checkliste

- [ ] Wir kennen unsere zehn häufigsten Anfragen und wie lange jede dauert.
- [ ] Jede hat ein Anfragemodell: nötige Information, Genehmigende, Schritte, Verantwortliche, erwartete Zeit.
- [ ] Anfragen sind in den Worten der Nutzenden benannt.
- [ ] Formulare fragen nur nach nötiger Information und belegen vor, was wir wissen.
- [ ] Routineposten sind vorab genehmigt, und echte Genehmigungen haben einen schnellen Weg und eine Vertretung.
- [ ] Häufige, risikoarme Anfragen sind mit Tests und Logs automatisiert.
- [ ] Anfragen, Incidents und Änderungen sind getrennt, mit einem Schritt zur Umklassifizierung.
- [ ] Wir messen neben der Gesamtzeit auch die Wartezeit.
- [ ] Antragstellende werden gebeten, den Abschluss zu bestätigen.
- [ ] Die Liste der Anfragen wird mindestens zweimal im Jahr überprüft.

## KI-Prompts

**Zweck: die häufigsten Anfragen und die längsten Wartezeiten finden.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Zweck: ein Anfragemodell für eine Anfrage schreiben.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein Anfrageformular kürzer und klarer umschreiben.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: entscheiden, was zuerst automatisiert wird.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): nutzen Sie ihn, um die Anfragen aufzulisten, die Nutzende stellen können, in ihren Worten, mit Verantwortlichen.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um die häufigsten Anfragen und ihre Volumen zu finden.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): nutzen Sie ihn, um die Schritte und Wartezeiten einer Anfrage zu analysieren.
- [user-story](../../../../skills/user-story/SKILL.md): nutzen Sie ihn, um eine Anfrage aus Sicht der nutzenden Person mit Akzeptanzkriterien zu beschreiben.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um die Schritte für Anfragen zu dokumentieren, die manuell bleiben.

## Wichtige Quellen

- **IT service management** (Wikipedia): definiert einen Service-Request, Enterprise Service Management und IT-Prozessautomatisierung.
- **Help desk** (Wikipedia): Hintergrund zu Warteschlangenverwaltung und Weiterleitung für Anfragen, die einen Desk erreichen.
- **Business process automation** (Wikipedia): allgemeiner Hintergrund zur Automatisierung von Routinearbeit.
- **ITIL** (Wikipedia): der Kontext des Service-Request-Managements in ITIL.

## Referenzen

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
