# Metriken und Messung

**Gute Messung hilft einem Team zu sehen, ob seine Arbeit Nutzenden hilft und besser wird, und der sicherste Umgang mit jeder Messgröße ist, sie als Frage zur Diskussion zu nutzen, nie als Ziel, das erreicht werden muss.**

## Warum das wichtig ist

Teams brauchen Zahlen, um zu steuern. Ohne sie stützen sich Entscheidungen auf Erinnerung, laute Stimmen und darauf, wer zuletzt sprach. Mit den falschen Zahlen können Entscheidungen schlechter sein als ohne: Ein Team, das geschlossene Tickets zählt, lernt, Tickets schnell zu schließen, ob die Probleme der Nutzenden gelöst sind oder nicht. Messung ist mächtig, und sie verändert Verhalten auf Weisen, die ihre Gestaltenden nicht immer beabsichtigen.

Dieser Leitfaden hat bereits viele Messgrößen genutzt: die Messgrößen der Softwarelieferung von DORA (siehe Thema 3.4 — Change Enablement), die vier Flussmessgrößen des Kanban Guide (siehe Thema 1.5 — Kanban), Service-Level-Indikatoren und -Ziele (siehe Thema 3.7 — Service-Level-Management) und die Alarmlast (siehe Thema 3.10 — Monitoring und Event Management). Dieses Thema führt sie zusammen, ergänzt Zielsetzung mit Objectives and Key Results und Messgrößen der Kundenzufriedenheit und stellt sie der ältesten Warnung des Fachs gegenüber: dem Goodhart'schen Gesetz.

Der [Wikipedia-Artikel zum Goodhart'schen Gesetz](https://en.wikipedia.org/wiki/Goodhart%27s_law) gibt den Merksatz in seiner üblichen Form wieder, "Wenn eine Messgröße zum Ziel wird, ist sie keine gute Messgröße mehr", und schreibt ihn dem britischen Ökonomen Charles Goodhart zu, der in einem Artikel von 1975 zur britischen Geldpolitik schrieb, jede beobachtete statistische Regelmäßigkeit neige dazu zusammenzubrechen, sobald Druck zu Steuerungszwecken auf sie ausgeübt werde. Der übliche Wortlaut ist später, und der Artikel führt ihn auf Keith Hoskin (1996) und die Arbeit von Marilyn Strathern von 1997 zurück. Der Gedanke hat in verschiedenen Fächern eine lange Geschichte und ist der richtige Ausgangspunkt für dieses Thema.

## Kernkonzepte

### Messgrößen, Ziele und das Goodhart'sche Gesetz

Eine **Messgröße** beschreibt etwas. Ein **Ziel** ist eine Zahl, die jemand erreichen soll. Beim Übergang vom ersten zum zweiten beginnt der Ärger. Sobald Menschen für eine Zahl belohnt oder bestraft werden, finden sie Wege, die Zahl zu bewegen, die nicht dasselbe sind, wie das zu verbessern, was sie beschreibt. Der Artikel gibt Beispiele aus Geldpolitik, Schulsystemen und Gesundheitswesen. In einer Serviceorganisation sind leichte Beispiele: die Zeit bis zum Schließen von Tickets sinkt, weil Tickets zu früh geschlossen werden, Deployment-Zahlen steigen, weil Änderungen zerteilt werden, und die Verfügbarkeit scheint zu steigen, weil Ausfälle umklassifiziert werden.

Das Heilmittel ist nicht, das Messen zu meiden, sondern sorgfältig zu messen:

- Nutzen Sie mehrere Messgrößen, die gegeneinander ziehen, etwa Tempo und Qualität.
- Besprechen Sie die Zahlen mit den Menschen, deren Arbeit sie beschreiben.
- Binden Sie individuelle Belohnungen oder Disziplinarmaßnahmen nicht an eine einzelne Zahl.
- Ändern Sie Messgrößen, wenn sie nicht mehr aufschlussreich sind.

### Arten von Messgrößen

| Art | Frage, die sie beantwortet | Beispiele |
|---|---|---|
| **Ergebnis** | Geht es Nutzenden und dem Geschäft besser? | Nutzerzufriedenheit, Aufgabenerfolg, Umsatz, Incidents, die Nutzenden schaden |
| **Fluss** | Wie gut bewegt sich Arbeit? | Zykluszeit, Durchsatz, Alter von Arbeitselementen, laufende Arbeit |
| **Lieferleistung** | Wie gut erreichen Änderungen die Produktion? | Durchlaufzeit von Änderungen, Deployment-Häufigkeit, Änderungsfehlerquote, Wiederherstellungszeit |
| **Service-Level** | Erfüllt der Service die Bedürfnisse der Nutzenden? | Verfügbarkeit, Latenz, Fehlerquote gegen Ziele |
| **Gesundheit und Nachhaltigkeit** | Kann das so weitergehen? | Alarmlast, Toil, Überstunden, Stimmung der Beschäftigten |
| **Kosten** | Was kostet es je Werteinheit? | Kosten je Transaktion oder je Nutzer |

Ein ausgewogener Satz schöpft aus mehreren Zeilen, damit die Verbesserung einer Größe nicht auf Kosten einer anderen erkauft wird.

### DORA-Messgrößen

Die Messgrößen für die Leistung der Softwarelieferung von DORA sind die Durchlaufzeit von Änderungen, die Deployment-Häufigkeit, die Wiederherstellungszeit nach fehlgeschlagenem Deployment, die Änderungsfehlerquote und die Deployment-Nacharbeitsquote. Der DORA-Leitfaden zu den Metriken sagt, Tempo und Stabilität seien keine Zielkonflikte, da die Messgrößen bei den meisten Teams korrelieren. Er warnt davor, sie als Ziele zu setzen, sich auf eine zu verlassen, sehr unterschiedliche Anwendungen zu vergleichen und mit anderen Teams zu konkurrieren, und rät, sich gegenüber der eigenen Vergangenheit zu verbessern. Der Wikipedia-Artikel zu DevOps ergänzt, einige Fachleute hätten die Methodik und die Metriken der DORA-Forschung kritisiert, behandeln Sie sie also als nützliche Fragen mit Grenzen (siehe Thema 5.2 — DevOps).

### Flussmessgrößen

Der Kanban Guide definiert vier Messgrößen: laufende Arbeit, Durchsatz, Alter von Arbeitselementen und Zykluszeit. Er merkt an, dass Teams sie umbenennen und bei Bedarf weitere ergänzen können, und sagt, Messgrößen zählten nur, wenn sie die Praktiken informieren, den Arbeitsablauf zu definieren, die Elemente darin zu steuern und ihn zu verbessern. Das Alter von Arbeitselementen ist besonders nützlich, weil es Ärger zeigt, solange noch Zeit zum Handeln ist (siehe Thema 5.4 — Wertstrommanagement).

### Service-Level-Messgrößen

Service-Level-Indikatoren und -Ziele (siehe Thema 3.7 — Service-Level-Management) geben die direkteste Sicht darauf, was Nutzende erleben. Das SRE-Buch plädiert für wenige Indikatoren, gewählt nach dem, was Nutzenden wichtig ist, für Perzentile und nicht nur Durchschnitte und für Ziele, die nicht Perfektion sind. Fehlerbudgets machen die Lücke zu einer gemeinsamen Entscheidungsregel (siehe Thema 5.3 — Site Reliability Engineering).

### Objectives and Key Results

**Objectives and Key Results (OKRs)** sind ein Rahmenwerk zur Zielsetzung. Der Wikipedia-Artikel beschreibt ein OKR als ein Objective, ein bedeutendes, konkretes, klar definiertes Ziel, gepaart mit drei bis fünf Key Results, die messbare Erfolgskriterien sind. Er schreibt Andrew Grove zu, den Ansatz in den 1970er Jahren bei Intel verbreitet und in *High Output Management* (1983) dokumentiert zu haben, und John Doerr, ihn 1999 zu Google gebracht zu haben. Der Artikel sagt, OKRs würden von 0,0 bis 1,0 bewertet, ehrgeizige Key Results zielten auf etwa 0,7, und Doerr empfehle eine Zielerfolgsquote von etwa 70 Prozent, sodass ein Key Result, das immer erreicht wird, neu bewertet werden sollte. Er rät, Objectives des Tagesgeschäfts zu meiden und Frühindikatoren gegenüber Spätindikatoren zu bevorzugen.

Der Artikel verzeichnet auch Kritik: Die meisten Organisationen hätten aufgehört, OKRs für einzelne Beitragende zu setzen, die Aufgabenlisten ähneln und mit Leistungsbeurteilungen verschwimmen, und mehrstufige OKRs könnten einen Wasserfallansatz erzeugen. Er gibt keinen unabhängigen Beleg der Wirksamkeit und trägt einen Pflegehinweis dazu, sich auf Quellen nahe am Gegenstand zu stützen. Für Serviceteams können OKRs Ergebnisse (etwa "Nutzende schließen die Registrierung ohne Hilfe ab") mit messbaren Key Results verbinden, solange sie nicht zu individuellen Zielen gemacht werden.

### Kundenzufriedenheit

Zu messen, was Nutzende denken, ist schwer gut zu tun. Ein gängiges Instrument ist der **Net Promoter Score (NPS)**. Laut Wikipedia beruht er auf einer Frage dazu, wie wahrscheinlich Befragte ein Unternehmen, Produkt oder einen Service weiterempfehlen, wobei Promoter 9 oder 10, Passive 7 oder 8 und Detraktoren 6 oder weniger angeben; der Score ist der Prozentsatz der Promoter minus der Prozentsatz der Detraktoren. Fred Reichheld von Bain & Company machte ihn in einem Artikel der *Harvard Business Review* von 2003 bekannt. Der Artikel verzeichnet Grenzen: Wissenschaftler bezweifeln, dass er das Wachstum eines Unternehmens verlässlich vorhersagt, ein einzelnes Item braucht große Antwortzahlen, er sagt wenig über konkrete Probleme, zu häufiges Befragen zieht Beschwerden nach sich, und die Kopplung an die Vergütung kann das Verhalten verzerren, weshalb Reichheld empfahl, beides zu entkoppeln. Andere Instrumente existieren, etwa Kundenzufriedenheitswerte und Kundenaufwandswerte, doch der Artikel erörtert sie nicht.

Welches Instrument auch immer: Stellen Sie eine kurze Frage, lassen Sie stets eine Freitextantwort zu, lesen Sie die Kommentare und gehen Sie dem nach, was Sie lernen.

### Menschen und Nachhaltigkeit messen

Messgrößen für Last und Gesundheit der Beschäftigten, etwa Alarmlast, Toil, Überstunden und Stimmung, sind Messgrößen der Nachhaltigkeit des Services (siehe Thema 5.3 — Site Reliability Engineering). Behandeln Sie sie als Information über das System und nicht als Maß für die Leistung einzelner Menschen.

### KI und Automatisierung messen

Wenn ein automatisierter oder KI-gestützter Schritt eingeführt wird, ergänzen Sie Messgrößen seiner Qualität: wie oft Menschen ihn übersteuern, wie oft er falsch liegt und was er kostet (siehe Thema 6.2 — KI im IT-Service-Management).

### Grenzen

Messgrößen sind unvollständig. Sie lassen aus, was sich schwer zählen lässt, etwa Vertrauen, Handwerkskunst und Urteilsvermögen. Sie können in die Irre führen, wenn Daten unvollständig sind oder Definitionen zwischen Teams abweichen. Die hier gelesenen Artikel bieten wenig empirische Belege dafür, ob Messprogramme Ergebnisse verbessern. Behandeln Sie jedes Programm als Experiment und überprüfen Sie es.

## Bewährte Praktiken

1. **Beginnen Sie bei der Frage.** Fragen Sie, welche Entscheidung eine Messgröße informieren würde und wer danach handelte. Wenn niemand, erheben Sie sie nicht.
2. **Wählen Sie einen kleinen ausgewogenen Satz.** Wählen Sie wenige Messgrößen aus Ergebnis, Fluss, Lieferung, Service-Level und Gesundheit. Stellen Sie sicher, dass einige gegeneinander ziehen.
3. **Definieren Sie jede Messgröße genau.** Schreiben Sie auf, was gezählt wird, woher und was ausgeschlossen ist. Zwei Teams, die dasselbe Wort für Verschiedenes nutzen, erzeugen Zahlen, die sich nicht vergleichen lassen.
4. **Messen Sie je Service oder Team und vergleichen Sie mit der eigenen Vergangenheit.** Vermeiden Sie, Teams zu reihen. DORA rät, sich gegenüber der eigenen Vergangenheit zu verbessern und beim Vergleich verschiedener Anwendungen vorsichtig zu sein.
5. **Machen Sie keine einzelne Zahl zum Ziel.** Nutzen Sie Messgrößen als Anstoß zur Diskussion und setzen Sie Ziele als Ergebnisse. Wenn eine Messgröße ein Ziel ist, achten Sie auf Manipulation (siehe Goodhart'sches Gesetz).
6. **Verbinden Sie Zahlen mit Geschichten.** Sehen Sie sich bei jedem Verlauf einige echte Fälle an. Zahlen sagen, wohin man schauen soll; Fälle sagen, warum.
7. **Betrachten Sie Verteilungen.** Nutzen Sie bei Zeit- und Größenmessgrößen Perzentile und Spannen, nicht nur Durchschnitte.
8. **Bevorzugen Sie Frühindikatoren, wo Sie können.** Messgrößen wie das Alter von Arbeitselementen zeigen Ärger, bevor er eintritt, anders als Messgrößen vergangener Ergebnisse.
9. **Setzen Sie Ziele mit Objectives and Key Results sorgfältig.** Wenn Sie OKRs nutzen, halten Sie sie auf Team- und Organisationsebene, meiden Sie Objectives des Tagesgeschäfts und werten Sie ein Ergebnis, das immer erreicht wird, als Zeichen, höher zu zielen.
10. **Fragen Sie Nutzende kurz und oft.** Nutzen Sie eine kurze Frage mit Freitext, lesen Sie die Kommentare und antworten Sie. Binden Sie Umfragewerte nicht an individuelle Vergütung.
11. **Beachten Sie die Kosten des Messens.** Bevorzugen Sie Daten, die Werkzeuge als Nebenprodukt der Arbeit erzeugen. Streichen Sie manuelles Berichtswesen, das niemand nutzt.
12. **Überprüfen Sie die Messgrößen selbst.** Fragen Sie ein- oder zweimal im Jahr, welche Messgrößen zu Entscheidungen führten und welche nicht, und mustern Sie die letzteren aus.

## Fragen zur Diskussion im Team

**Welche unserer Messgrößen hat in den letzten sechs Monaten zu einer Entscheidung geführt?**

Listen Sie die Messgrößen auf und fragen Sie bei jeder nach einer verknüpften Entscheidung. Messgrößen ohne Verknüpfung sind Kandidaten zur Entfernung. Die Moderation kann fragen, welcher Messgröße Menschen am wenigsten trauen und warum. Entfernen oder beheben Sie eine.

**Was geschieht mit unserem Verhalten, wenn eine Zahl ein Ziel ist?**

Fragen Sie nach einem jüngsten Beispiel, bei dem eine Zahl ein Ziel war. Fragen Sie nach, was Menschen taten, um es zu erreichen. Der Merksatz von Goodhart ist der Rahmen. Fragen Sie, wie eine bessere Messgröße oder eine Paarung von Messgrößen aussähe. Vereinbaren Sie eine Änderung.

**Messen wir Tempo und Qualität gemeinsam?**

Listen Sie die Tempo-Messgrößen und die Qualitäts-Messgrößen auf. Sind die Listen einseitig, besprechen Sie die Wirkung. Zum Beispiel lädt das Messen der Zeit bis zum Schließen von Tickets ohne wiederholte Kontakte zu vorzeitigem Schließen ein. Wählen Sie eine Paarung.

**Was sagen uns Nutzende darüber, wie es läuft, und wie fragen wir sie?**

Sehen Sie sich die Fragen an, die Sie Nutzenden stellen, und wie oft. Lesen Sie einige der Freitextantworten laut vor. Fragen Sie, was sich ihretwegen geändert hat. Vereinbaren Sie eine kurze Frage zum Ausprobieren.

**Welche unserer Messgrößen könnten zur Beurteilung einzelner Menschen genutzt werden, und was sollten wir dagegen tun?**

Bestimmen Sie Messgrößen, die Menschen fürchten könnten. Besprechen Sie die Risiken und vereinbaren Sie ausdrückliche Regeln, wofür die Zahlen nicht genutzt werden. Schreiben Sie sie auf.

**Wenn wir nur fünf Messgrößen behalten könnten, welche würden wir behalten?**

Bitten Sie jede Person, fünf zu wählen, und vergleichen Sie. Die Überschneidung zeigt den Kern; die Unterschiede zeigen verschiedene Bedürfnisse. Das Ergebnis ist ein Startsatz. Prüfen Sie, dass er Ergebnisse, Fluss, Service-Levels und Gesundheit abdeckt.

## In der Praxis: ein agiles ITIL-Beispiel

Die IT-Gruppe einer nationalen Eisenbahn betreibt die Systeme hinter der Fahrgastinformation. Die Gruppe berichtet dem Führungsteam jeden Monat ein Dashboard mit 40 Messgrößen. Das Dashboard wird von wenigen gelesen, und zwei Messgrößen dominieren die Diskussion: die Zahl der Incidents, die innerhalb der Zielzeit geschlossen wurden, und die Zahl der Releases pro Quartal. Das Incident-Team hat gelernt, Incidents schnell zu schließen und für denselben Fehler neue zu öffnen, und mehrere Delivery-Teams zerteilen Arbeit in triviale Releases, um die Zahl zu erfüllen.

Die Leitung der IT-Gruppe bittet ein kleines Team, die Messgrößen neu aufzubauen. Es beginnt mit der Frage, welche Entscheidungen das Dashboard informieren soll. Für jeden Service wählt es eine Handvoll Messgrößen: einen nutzernahen Service-Level-Indikator samt Ziel, die Durchlaufzeit von Änderungen und die Änderungsfehlerquote, das Alter von Arbeitselementen für offene Problem-Posten, die Alarmlast je Ingenieur und eine monatliche Zufriedenheitsumfrage mit einer Frage und einem Freitextfeld unter dem Bahnhofspersonal. Die alten Zählungen werden ausgemustert. Das Führungsteam vereinbart, dass keine Messgröße zum Reihen von Teams oder zur Festlegung individueller Boni genutzt wird, und die Leitung der IT schreibt das als Regel auf das Dashboard. Teams werden gebeten, für die Services, die sie verantworten, Verbesserungsziele als Objectives mit Key Results zu setzen, nur auf Teamebene.

Nach einem Jahr hat das Dashboard zwölf Messgrößen, und der monatliche Review ist zu einem Gespräch über die ältesten offenen Probleme und die Freitextkommentare geworden. Wiederkehrende Incidents sinken, und Releases sind sinnvoller. Einige Schwierigkeiten bleiben. Die Zufriedenheitsumfrage erhält wenig Antworten vom Nachtpersonal, die Durchlaufzeit eines Teams sieht schlecht aus, weil es das einzige ist, das die Zeit ab der Idee statt ab dem Commit zählt, und ein Vorgesetzter hat begonnen, den Umfragewert in einer Leistungsbeurteilung zu zitieren. Die Leitung der IT bittet das Team, Definitionen anzugleichen, erinnert die Führungskräfte an die Regel und organisiert eine kurze Umfrage bei der Schichtübergabe der Nacht.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sollten Messgrößen wählen, die ihnen beim Steuern helfen, die Zahlen aus ihren Werkzeugen nehmen und sie in Retrospektiven besprechen. Achten Sie auf Messgrößen, die das Zerteilen von Arbeit oder das Verbergen von Fehlern belohnen. Teilen Sie, was Sie lernen, mit anderen Teams.

### Service- und Betriebsteams

Betriebsteams tragen viele der Service-Level- und Gesundheitsmessgrößen. Halten Sie Definitionen klar und Daten verlässlich, nehmen Sie Alarmlast und Toil auf und präsentieren Sie Zahlen mit Fällen und Kommentar. Wehren Sie sich, wenn eine Messgröße als Ziel genutzt wird.

### Führung und Governance

Führungskräfte prägen die Kultur der Messung. Sagen Sie, wofür die Zahlen genutzt werden und wofür nicht, verlangen Sie Verläufe und Geschichten statt Ranglisten und widerstehen Sie dem Hinzufügen von Messgrößen für jede neue Sorge. Überprüfen Sie von Zeit zu Zeit den ganzen Satz.

### Kunden und Nutzer

Kunden und Nutzende sind sowohl Quelle von Messgrößen als auch ihr Gegenstand. Beantworten Sie kurze Umfragen, wenn Sie können, und sagen Sie, was zählt. Fragen Sie Anbieter, was sie über Ihre Erfahrung messen und was sie mit den Ergebnissen getan haben.

## Typische Fehlerbilder

- **Messgrößen als Ziele.** Manipulation folgt. Nutzen Sie Messgrößen stattdessen zur Diskussion und setzen Sie Ziele als Ergebnisse.
- **Eine Zahl.** Eine einzelne Messgröße verzerrt das Verhalten. Nutzen Sie stattdessen einen ausgewogenen Satz, der gegen sich selbst zieht.
- **Uneinheitliche Definitionen.** Teams zählen unterschiedlich. Definieren Sie stattdessen jede Messgröße und ihre Quelle.
- **Ranglisten.** Teams konkurrieren und verbergen Probleme. Vergleichen Sie stattdessen jedes Team mit seiner eigenen Historie.
- **Nur Durchschnitte.** Lange Ausläufer bleiben verborgen. Betrachten Sie stattdessen Verteilungen und Perzentile.
- **Messen, was leicht ist.** Bequeme Zahlen ersetzen wichtige. Beginnen Sie stattdessen bei Entscheidungen und den Ergebnissen der Nutzenden.
- **Individuelle OKRs als Aufgabenlisten.** Ziele werden zu Leistungsbeurteilungen. Halten Sie OKRs stattdessen auf Team- und Organisationsebene.
- **Umfragemüdigkeit und Kopplung an die Vergütung.** Nutzende hören auf zu antworten, oder Werte werden manipuliert. Halten Sie Umfragen stattdessen kurz und von der Vergütung entkoppelt.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Auswahl und Definition | Messgrößen sind ad hoc | Einige Teams definieren wenige Messgrößen | Ein ausgewogener Satz mit klaren Definitionen wird je Service genutzt | Der Satz wird auf Nützlichkeit und Lücken überprüft | Messgrößen sind über Teams, Lieferanten und Kunden abgestimmt |
| Nutzung bei Entscheidungen | Zahlen werden berichtet, aber selten genutzt | Einige Teams besprechen sie in Reviews | Messgrößen speisen regelmäßige Entscheidungen und Verbesserung | An Messgrößen geknüpfte Entscheidungen werden verfolgt und daraus gelernt | Messgrößen leiten Entscheidungen in der ganzen Organisation |
| Schutz vor Manipulation | Ziele werden auf einzelne Zahlen gesetzt | Einiges Bewusstsein für Verzerrung | Regeln zur Nutzung von Messgrößen sind aufgeschrieben und werden befolgt | Anzeichen von Manipulation werden beobachtet und Messgrößen angepasst | Die Messkultur wird in der ganzen Organisation geteilt |
| Nutzer- und Gesundheitsmessgrößen | Wenig Nutzer- oder Mitarbeiterdaten | Einige Umfragen oder Lastdaten | Kurze Nutzerumfragen und Nachhaltigkeitsmessgrößen sind Routine | Ergebnisse führen zu geplanten Maßnahmen und werden geprüft | Stimmen von Nutzenden und Beschäftigten prägen Prioritäten über Services hinweg |

## Checkliste

- [ ] Jede Messgröße, die wir berichten, hat eine benannte Entscheidung, die sie informiert.
- [ ] Wir nutzen einen kleinen ausgewogenen Satz, der Ergebnis-, Fluss-, Service-Level-, Lieferungs- und Gesundheitsmessgrößen umfasst.
- [ ] Jede Messgröße hat eine schriftliche Definition und Quelle.
- [ ] Teams werden mit ihrer eigenen Historie verglichen, nicht gereiht.
- [ ] Wir haben aufgeschrieben, wofür Messgrößen nicht genutzt werden.
- [ ] Zeitmessgrößen zeigen Verteilungen oder Perzentile.
- [ ] Nutzende werden regelmäßig mit einer kurzen Frage mit Raum für Kommentare befragt, und die Antworten werden gelesen.
- [ ] Wenn wir OKRs nutzen, liegen sie auf Team- oder Organisationsebene und sind keine individuellen Ziele.
- [ ] Daten werden, wo möglich, als Nebenprodukt der Arbeit aus Werkzeugen genommen.
- [ ] Wir überprüfen die Messgrößen selbst mindestens einmal im Jahr.

## KI-Prompts

**Zweck: einen ausgewogenen Satz von Messgrößen für einen Service wählen.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: herausfinden, wie eine Messgröße manipuliert werden könnte.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Zweck: OKRs für ein Serviceteam schreiben, ohne sie zu Aufgaben zu machen.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Freitextkommentare aus Umfragen analysieren.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## KI-Skills

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): nutzen Sie ihn, um Messgrößen der Lieferung und der Service-Leistung zu wählen und zu deuten.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): nutzen Sie ihn, um Frühwarn-Messgrößen für Risiken eines Services zu wählen.
- [survey-design](../../../../skills/survey-design/SKILL.md): nutzen Sie ihn, um kurze Nutzer- und Mitarbeiterumfragen zu entwerfen, die brauchbare Antworten liefern.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): nutzen Sie ihn, um Feedback von Nutzenden und Kolleginnen einzuholen und darauf zu antworten.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): nutzen Sie ihn, um Ergebnismessgrößen mit dem zu verknüpfen, woran das Team als Nächstes arbeitet.

## Wichtige Quellen

- **DORA's software delivery performance metrics** (dora.dev): Definitionen der fünf Messgrößen und Warnungen zu ihrer Nutzung.
- **Goodhart's law** (Wikipedia): Ursprung und Wortlaut des Merksatzes, dass eine als Ziel genutzte Messgröße aufhört, eine gute Messgröße zu sein.
- **Objectives and key results** (Wikipedia): das Rahmenwerk, seine Ursprünge, Bewertung und Kritik.
- **Net promoter score** (Wikipedia): Definition, Verwendungen und Kritik einer Zufriedenheitsmessgröße.

## Referenzen

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
