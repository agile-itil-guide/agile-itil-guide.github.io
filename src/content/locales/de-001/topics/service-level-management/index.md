# Service-Level-Management

**Das Service-Level-Management verwandelt, was Nutzende brauchen, in Ziele, die ein Team messen und verteidigen kann, und die nützlichste Form für agile Teams ist eine kleine Zahl nutzerorientierter Ziele mit einem ausdrücklichen Budget für Fehler.**

## Warum das wichtig ist

Jeder Service hat ein Qualitätsniveau, ob es jemand gemessen hat oder nicht. Wird es nicht festgehalten, nehmen Nutzende eines an und das Team ein anderes, und die Lücke wird bei einem Ausfall entdeckt. Das Service-Level-Management ist die Praktik, das Niveau festzuhalten, zu messen und nach den Ergebnissen zu handeln. Es gibt einem Team etwas, wonach es steuern kann, und Kunden etwas, auf das sie sich verlassen können.

Agile Teams sträuben sich oft gegen Service-Level, weil sie sie mit Verträgen und Vertragsstrafen verbinden. Doch ein agiles Team, das wöchentlich released, trifft, ob es das weiß oder nicht, eine Entscheidung darüber, wie viel Risiko es bei der Verfügbarkeit eingeht. Ein klares Ziel macht diese Entscheidung ausdrücklich. Googles Buch *Site Reliability Engineering* beschreibt in seinem Kapitel zu Service-Level-Zielen, wie das auf eine Weise gelingt, die zu schnell arbeitenden Teams passt: wenige Indikatoren wählen, die Nutzenden wichtig sind, Ziele setzen und den Spielraum zwischen perfekt und akzeptabel, das Fehlerbudget, nutzen, um zu entscheiden, wann released wird.

Dieses Thema verbindet dieses Kapitel mit dem [Wikipedia-Artikel zu Service-Level-Agreements](https://en.wikipedia.org/wiki/Service-level_agreement) für Definitionen von Vereinbarungen und mit weit verbreitetem ITIL-Vokabular, das dieser Leitfaden nicht am Text des Framework-Eigners bestätigen konnte. Das SRE-Kapitel spiegelt die Praxis einer Organisation und plädiert für einen bestimmten Ansatz; lesen Sie es als gut erklärte Option, nicht als allgemeine Regel.

## Kernkonzepte

### Indikator, Ziel, Vereinbarung

Das SRE-Kapitel unterscheidet drei oft durcheinandergebrachte Begriffe:

| Begriff | Bedeutung | Beispiel |
|---|---|---|
| **Service-Level-Indikator (SLI)** | Ein sorgfältig definiertes quantitatives Maß für einen Aspekt des Service-Niveaus | Der Anteil wohlgeformter Anfragen, die erfolgreich sind |
| **Service-Level-Ziel (SLO)** | Ein Zielwert oder -bereich für einen SLI | Mindestens 99,9 % der Anfragen sind über einen Monat erfolgreich |
| **Service-Level-Agreement (SLA)** | Ein ausdrücklicher oder impliziter Vertrag mit Nutzenden, der Folgen für das Erreichen oder Verfehlen der Ziele enthält, meist finanzielle | Eine Rückerstattung, wenn die Verfügbarkeit unter ein festgelegtes Niveau fällt |

Der Test des Kapitels, um ein SLA von einem SLO zu unterscheiden, ist, ob es eine ausdrückliche Folge gibt. Wenn nicht, ist es ein SLO. Die Beispielzahlen in der Tabelle sind Veranschaulichungen, keine Empfehlungen.

Der Wikipedia-Artikel beschreibt ein SLA als Vereinbarung, typischerweise einen bindenden Vertrag, zwischen einem Anbieter und einem Kunden, der Aspekte des Services wie Qualität, Verfügbarkeit und Verantwortlichkeiten festlegt. Er listet typische Inhalte auf: eine Beschreibung des Services, Leistungsniveaus, Überwachung und Berichtswesen, wie Probleme gemeldet werden, Reaktions- und Lösungsfristen und Folgen bei Nichterfüllung. Er nennt gängige Maße wie mittlere Zeit zwischen Ausfällen, mittlere Reparaturzeit, Betriebszeit (Uptime), Lösung beim ersten Anruf und Durchlaufzeit. Er merkt an, dass große Organisationen oft interne SLAs zwischen Einheiten nutzen. Er beschreibt Arten nach Geltungsbereich: kundenbasiert, servicebasiert und mehrstufig.

### Indikatoren wählen

Das SRE-Kapitel rät, wenige Indikatoren zu wählen, die widerspiegeln, was Nutzenden wichtig ist, nicht jedes Maß, das Sie verfolgen können. Nutzerorientierte Systeme konzentrieren sich meist auf Verfügbarkeit, Latenz und Durchsatz. Speichersysteme ergänzen Dauerhaftigkeit, und alle Systeme sollten Korrektheit verfolgen. Es legt nahe, dass Messung auf der Client-Seite Probleme fangen kann, die serverseitige Metriken übersehen. Eine praktische Folge für Serviceteams: Beginnen Sie mit der Erfahrung der Nutzenden, etwa "Ich kann einen Termin buchen, und es dauert wenige Sekunden", und finden Sie dann einen Indikator, der sie annähert.

### Durchschnitte verbergen Schmerz

Das Kapitel argumentiert gegen das Verlassen auf Durchschnitte: "Die meisten Metriken sind besser als Verteilungen zu verstehen statt als Durchschnitte." Hohe Perzentile, etwa das 99. oder 99,9., zeigen plausible schlechteste Fälle, während der Median den typischen Fall zeigt. Durchschnitte können einen langen Ausläufer langsamer Anfragen verbergen. Wenn Ihr Maß ein Durchschnitt ist, könnten einige Nutzende eine sehr schlechte Zeit haben, ohne dass sich die Zahl bewegt.

### Ziele wählen

Die Anleitung des Kapitels zu Zielen ist direkt und nützlich:

- **Beginnen Sie bei den Nutzenden.** "Beginnen Sie damit, darüber nachzudenken (oder herauszufinden!), was Ihren Nutzenden wichtig ist, nicht was Sie messen können."
- **Verankern Sie sich nicht in der aktuellen Leistung.** Ein Ziel nach dem zu wählen, was Sie jetzt erreichen, kann heroischen Aufwand festschreiben.
- **Halten Sie es einfach.** Komplizierte Aggregationen verschleiern Veränderungen und sind schwerer zu durchdenken.
- **Vermeiden Sie Absolutes.** Versprechen von "immer" verfügbar sind unrealistisch.
- **Haben Sie so wenige SLOs wie möglich.** Jedes sollte es wert sein, in einer Prioritätsdiskussion verteidigt zu werden.
- **Perfektion kann warten.** Es ist besser, mit einem lockeren Ziel zu beginnen, das Sie verschärfen, als mit einem, das später gelockert werden muss.

### Fehlerbudgets

Das Kapitel sagt, 100 % Einhaltung zu verlangen sei unrealistisch und bremse Innovation. Stattdessen lassen Teams ein **Fehlerbudget** (Error Budget) zu: die Rate, mit der ein SLO verfehlt werden darf, täglich, wöchentlich oder monatlich verfolgt. Das Budget informiert Entscheidungen über Releases. Ist noch viel Budget übrig, kann ein Team mehr Risiko bei Änderungen eingehen; ist es fast aufgebraucht, verlangsamt das Team Änderungen und investiert in Zuverlässigkeit. Das gibt agilen Teams und dem Betrieb eine gemeinsame, numerische Möglichkeit, über Tempo gegen Stabilität zu streiten, anstelle von Argumentation durch Autorität.

### Erwartungen setzen

Das Kapitel merkt an, dass die Veröffentlichung eines SLO Erwartungen der Nutzenden setzt. Teams können einen Sicherheitsabstand mit einem strengeren internen Ziel halten. Es warnt auch vor Übererfüllung, da Nutzende sich auf jede Leistung verlassen, die sie beobachten. Ist ein Service weit besser als sein erklärtes Ziel, werden Nutzende darauf bauen, und das Ziel schützt das Team nicht mehr.

### Der Regelkreis

Das Kapitel beschreibt SLIs und SLOs als Grundlage eines Regelkreises: die SLIs überwachen, mit den SLOs vergleichen, entscheiden, ob gehandelt werden muss, herausfinden, welche Maßnahme das Ziel erreicht, und sie ergreifen. Ohne SLO kann ein Team nicht sagen, ob oder wann es handeln muss (siehe Thema 3.10 — Monitoring und Event Management).

### Interne und externe Vereinbarungen

Ein SLA besteht zwischen einem Anbieter und einem Kunden. Innerhalb eines Anbieters hängen Teams voneinander und von Lieferanten ab. Der Wikipedia-Artikel erwähnt, dass SLAs durch Operational-Level-Agreements (OLAs) gestützt werden können, erklärt sie aber nicht. Im ITIL-Vokabular ist ein OLA eine Vereinbarung zwischen internen Teams, die ein SLA stützt, und ein Underpinning Contract das Gegenstück mit einem externen Lieferanten. Die hier gelesenen Quellen bestätigen diese Definitionen nicht, prüfen Sie sie also an ITIL-Veröffentlichungen. Der praktische Punkt ist, dass ein Versprechen an einen Kunden nur so gut ist wie die Versprechen dahinter (siehe Thema 3.14 — Lieferantenmanagement).

### Service-Level-Erwartungen in Kanban

In Kanban ist eine **Service-Level-Erwartung** eine Prognose dafür, wie lange ein Arbeitselement brauchen sollte, auf Basis vergangener Zykluszeiten (siehe Thema 1.5 — Kanban). Sie ist keine Vereinbarung, dient aber einem ähnlichen Zweck für Arbeitselemente und kann Ziele für Anfragen und Incidents speisen.

## Bewährte Praktiken

1. **Beginnen Sie bei dem, was Nutzende brauchen.** Fragen Sie Nutzende und Kunden, was am wichtigsten ist und was schmerzt, wenn es ausfällt. Schreiben Sie es in ihren Worten auf, bevor Sie ein Maß wählen.
2. **Wählen Sie wenige Indikatoren.** Wählen Sie für jeden Service zwei bis vier Indikatoren, die die Nutzererfahrung widerspiegeln, etwa Erfolgsrate und Geschwindigkeit. Widerstehen Sie dem Hinzufügen weiterer, bis Sie diese genutzt haben.
3. **Nutzen Sie Perzentile für Geschwindigkeit.** Messen Sie das langsame Ende der Verteilung, nicht nur den Durchschnitt, damit Nutzende mit schlechter Erfahrung sichtbar sind.
4. **Setzen Sie zuerst lockere Ziele und verschärfen Sie dann.** Beginnen Sie mit einem Ziel, das Sie erreichen und verteidigen können, und verschärfen Sie es, sobald Sie Daten und Zuversicht haben. Das folgt dem Rat des Kapitels, dass Perfektion warten kann.
5. **Kopieren Sie nicht die aktuelle Leistung.** Wenn Ihr Service derzeit ausgezeichnet ist, setzen Sie das Ziel nicht auf dieses Niveau, es sei denn, Nutzende brauchen es. Ein lockereres Ziel gibt Raum für Veränderung und vermeidet heroischen Aufwand.
6. **Vereinbaren Sie ein Fehlerbudget und nutzen Sie es.** Legen Sie fest, wie viel Fehler in einem Zeitraum akzeptabel ist, und lassen Sie das verbleibende Budget Release-Entscheidungen leiten. Überprüfen Sie es in einem regelmäßigen Meeting mit Delivery und Betrieb zusammen.
7. **Schreiben Sie die Vereinbarung in einfacher Sprache.** Ein SLA sollte sagen, was bereitgestellt wird, wie es gemessen wird, wie Probleme gemeldet werden, was geschieht, wenn Ziele verfehlt werden, und wann es überprüft wird. Vermeiden Sie Begriffe, die nur ein Jurist oder Ingenieur lesen kann.
8. **Trennen Sie Ziele von Vereinbarungen.** Halten Sie interne Ziele, die strenger sind als die Vereinbarungen, die Sie unterschreiben. Der Abstand gibt Ihnen Raum zu reagieren, bevor Sie etwas schulden.
9. **Wissen Sie, wovon Ihr Versprechen abhängt.** Listen Sie die Teams und Lieferanten auf, auf die sich Ihr Service-Level stützt, und prüfen Sie, dass deren Zusagen Ihre tragen.
10. **Berichten Sie in einer Form, die Kunden nutzen können.** Teilen Sie Ergebnisse regelmäßig, mit einem kurzen Kommentar dazu, was geschah und was Sie tun. Vermeiden Sie Dashboards ohne Kommentar.
11. **Überprüfen Sie Ziele mit Kunden.** Fragen Sie mindestens jährlich, ob die Niveaus noch zu dem passen, was Kunden brauchen und was Sie liefern können. Ändern Sie sie, wenn die Antwort Nein lautet.
12. **Nutzen Sie Service-Level nicht, um Menschen zu bestrafen.** Nutzen Sie sie, um Gespräche und Entscheidungen anzustoßen. Ein Ziel, das als Stock genutzt wird, wird manipuliert (siehe Thema 5.6 — Metriken und Messung).

## Fragen zur Diskussion im Team

**Wie sieht ein guter Tag für unsere Nutzenden aus, und woher würden wir es wissen?**

Bitten Sie das Team, in den Worten der Nutzenden zu beschreiben, was eine gute Erfahrung mit dem Service ist. Fragen Sie dann, was wir messen, das dem entspricht. Oft beschreiben die Maße, die wir haben, unsere Systeme und nicht die Erfahrung der Nutzenden. Die Moderation kann fragen, ob wir bemerken würden, wenn eine Gruppe von Nutzenden einen schlechten Tag hätte. Wählen Sie einen Indikator zum Ergänzen oder Ändern.

**Haben wir eine Zahl, die wir versprechen oder anstreben, und wer hat zugestimmt?**

Listen Sie die Ziele auf, die existieren, förmlich oder informell. Fragen Sie bei jedem, wer es wann und auf welcher Grundlage gesetzt hat. Viele Ziele erweisen sich als aus Gewohnheit gesetzt oder von jemandem, der gegangen ist. Besprechen Sie, welche bestätigt, geändert oder gestrichen werden sollten. Vereinbaren Sie, wer jedes verantwortet.

**Wie viel Fehler können wir uns leisten, und was würden wir mit dem Spielraum tun?**

Führen Sie die Idee eines Fehlerbudgets ein. Fragen Sie, welches Maß an Nichtverfügbarkeit Nutzende tolerieren würden und was das Team mit dem Spielraum tun könnte, etwa schneller releasen. Ziel ist, den Zielkonflikt in Zahlen zu sehen. Erwarten Sie keine genauen Antworten; bitten Sie um eine erste Schätzung zum Testen.

**Wo verbergen unsere Durchschnitte schlechte Erfahrungen?**

Sehen Sie sich ein Maß an, das einen Durchschnitt berichtet. Fragen Sie, was das langsamste Prozent der Nutzenden erlebt. Wenn Sie es nicht wissen, besprechen Sie, wie man es herausfindet. Oft hat eine kleine Gruppe von Nutzenden oder eine bestimmte Tageszeit eine viel schlechtere Erfahrung. Planen Sie, einen Monat lang ein Perzentil zu beobachten.

**Wovon hängen wir ab, wonach wir nicht gefragt haben?**

Listen Sie die Services, Lieferanten und Teams auf, auf die sich Ihr Service stützt. Fragen Sie bei jedem, was sie versprochen haben und woran Sie erkennen würden, dass sie es verfehlt haben. Viele Abhängigkeiten haben kein erklärtes Niveau. Wählen Sie die wichtigste und eröffnen Sie ein Gespräch.

**Wann hat sich ein Ziel zuletzt geändert, und was löste es aus?**

Fragen Sie nach der letzten Änderung. War sie lange her, fragen Sie, was sich seither bei den Bedürfnissen der Nutzenden oder der Fähigkeit des Teams geändert hat. Besprechen Sie eine regelmäßige Überprüfung. Gute Auslöser sind neue Bedürfnisse der Nutzenden, Incidents, die ein unrealistisches Ziel offenlegten, oder eine Änderung der Architektur.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationaler Lotteriebetreiber betreibt einen Online-Ticketkauf-Service. Ein Team aus zwölf Personen baut und betreibt ihn. Das Geschäft hat eine informelle Regel, dass der Service "immer verfügbar" sein muss, während das Team zweimal pro Woche released und in einem Jahr vier kurze Ausfälle hatte. Nach einem schlechten Wochenende verlangt der Sponsor aus der Geschäftsleitung "100 % Verfügbarkeit", und die Teamleitung befürchtet, dass dies häufige Releases beendet.

Die Teamleitung und der Sponsor halten einen Workshop mit der Leitung des Kundenservice ab. Sie fragen, was den Spielenden wichtig ist. Die Antwort ist, dass Spielende in der Stunde vor Annahmeschluss einer Ziehung ein Ticket kaufen können müssen; außerhalb dieser Stunde kann der Service Minuten ausfallen, ohne Schaden. Sie definieren einen Indikator: den Anteil erfolgreicher Kaufversuche in den zwei Stunden vor Annahmeschluss jeder Ziehung. Sie setzen ein Ziel, das das Team erreichen zu können glaubt, ein wenig unter seiner jüngsten Leistung, und vereinbaren für jeden Monat ein Fehlerbudget. Sie vereinbaren außerdem, dass Releases, die den Kauf berühren, bis zum nächsten Monat gestoppt werden, wenn das Budget fast aufgebraucht ist, und das Team in Zuverlässigkeit investiert.

Drei Monate später ist das Budget einmal aufgebraucht, in einem Monat mit Ausfall eines Zahlungsanbieters, und das Team pausiert riskante Releases zwei Wochen lang ohne Konflikt. Das Ziel gibt Team und Sponsor eine gemeinsame Art zu sprechen. Einige Schwierigkeiten bleiben. Die eigene Zusage des Zahlungsanbieters ist schwächer als das Ziel des Teams, sodass das Versprechen des Teams von einem Lieferanten abhängt, der ihm nicht zugestimmt hat. Das Maß ignoriert außerdem eine langsame Checkout-Seite, über die Nutzende klagen, weil es nur Erfolg zählt. Das Team ergänzt einen Geschwindigkeitsindikator am 99. Perzentil und nimmt Gespräche mit dem Anbieter über dessen Service-Level auf.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sollten helfen, Indikatoren zu wählen, und das Fehlerbudget in der Planung nutzen. Bauen Sie die Messung in den Service ein, damit die Zahlen verlässlich sind. Behandeln Sie ein aufgebrauchtes Budget als Grund, an Zuverlässigkeit zu arbeiten, nicht als Strafe.

### Service- und Betriebsteams

Betriebsteams führen meist das Monitoring und berichten über Niveaus. Halten Sie den Satz der Maße klein, zeigen Sie sie mit Kommentar und bringen Sie die Daten in Planungsgespräche. Führen Sie eine Liste dessen, wovon Ihr Service abhängt, und prüfen Sie, dass Zusagen zusammenpassen.

### Führung und Governance

Führungskräfte und Sponsoren setzen Erwartungen. Vermeiden Sie, Perfektion zu verlangen; fragen Sie, was Nutzende brauchen und was der Zielkonflikt kostet. Unterstützen Sie die Nutzung eines Fehlerbudgets als gemeinsame Regel und stellen Sie sicher, dass sie auch für Ihre eigenen Wünsche gilt. Überprüfen Sie Service-Level planmäßig mit Kunden.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn das Service-Niveau erklärt und eingehalten wird. Sagen Sie, was Ihnen wichtig ist, auch wann. Bitten Sie um Berichte in einer Form, die Sie verstehen, und sagen Sie dem Anbieter, wenn das erklärte Niveau nicht mehr zu Ihren Bedürfnissen passt.

## Typische Fehlerbilder

- **Zu viele Metriken.** Niemand weiß, welche zählt. Wählen Sie stattdessen wenige, die die Nutzererfahrung widerspiegeln.
- **Nur Durchschnitte.** Eine Gruppe von Nutzenden leidet, während der Durchschnitt gut aussieht. Nehmen Sie stattdessen ein Maß mit hohem Perzentil auf.
- **Ziele aus der aktuellen Leistung kopiert.** Das Team wird auf Heldentaten festgelegt. Setzen Sie Ziele stattdessen aus den Bedürfnissen der Nutzenden und verschärfen Sie mit Daten.
- **100 % verlangen.** Releases stoppen und Innovation verlangsamt sich. Vereinbaren Sie stattdessen ein Fehlerbudget und eine Regel für seine Nutzung.
- **Versprechen, die Sie nicht decken können.** Das Service-Level hängt von Lieferanten ab, die nicht zugestimmt haben. Prüfen Sie stattdessen Abhängigkeiten und stimmen Sie Zusagen ab.
- **Vereinbarungen, die niemand liest.** Bedingungen stehen in Juristensprache. Schreiben Sie stattdessen einfach und überprüfen Sie mit Kunden.
- **Dashboards ohne Kommentar.** Zahlen werden ohne Bedeutung berichtet. Fügen Sie stattdessen eine kurze Erklärung hinzu, was geschah und was sich ändern wird.
- **Verfehlungen bestrafen.** Menschen verbergen Probleme. Nutzen Sie Verfehlungen stattdessen, um Entscheidungen und Lernen anzustoßen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Niveaus definieren | Niveaus werden angenommen oder sind informell | Einige Services haben erklärte Ziele | Jeder Service hat nutzerbasierte Indikatoren und Ziele mit Verantwortlichen | Ziele werden an Bedürfnissen der Nutzenden und Daten überprüft | Niveaus werden gemeinsam mit Kunden und Lieferanten gesetzt |
| Messen | Maße sind ad hoc | Einige Indikatoren werden gemessen | Indikatoren werden verlässlich gemessen, einschließlich Perzentilen | Messqualität wird überprüft und Lücken behoben | Messung wird über Teams und Lieferanten geteilt und validiert |
| Fehlerbudgets nutzen | Fehler sind ungeplant | Einige Teams besprechen akzeptable Fehler | Budgets leiten Release-Entscheidungen bei wichtigen Services | Budgetnutzung wird überprüft und Regeln abgestimmt | Budgets werden über abhängige Services koordiniert |
| Vereinbarungen und Abhängigkeiten | Versprechen sind informell | Es gibt einige Vereinbarungen | Vereinbarungen sind in einfacher Sprache, mit bekannten Abhängigkeiten | Vereinbarungen und Zusagen von Lieferanten werden an Ergebnissen geprüft | Vereinbarungen bilden eine einheitliche Kette über Teams, Lieferanten und Kunden |

## Checkliste

- [ ] Wir haben für jeden Service in den Worten der Nutzenden beschrieben, wie gut aussieht.
- [ ] Jeder Service hat zwei bis vier Indikatoren, die die Nutzererfahrung widerspiegeln.
- [ ] Mindestens ein Geschwindigkeitsmaß nutzt ein hohes Perzentil, nicht nur einen Durchschnitt.
- [ ] Ziele sind aus den Bedürfnissen der Nutzenden gesetzt, nicht nur aus der aktuellen Leistung.
- [ ] Ein Fehlerbudget existiert und leitet Release-Entscheidungen für mindestens einen Service.
- [ ] Vereinbarungen sind in einfacher Sprache geschrieben und werden mit Kunden überprüft.
- [ ] Abhängigkeiten von anderen Teams und Lieferanten sind mit deren Zusagen aufgelistet.
- [ ] Ergebnisse werden regelmäßig mit Kommentar berichtet.
- [ ] Ziele werden mindestens einmal im Jahr überprüft.
- [ ] Service-Level-Daten werden in der Planung genutzt und nicht als Stock.

## KI-Prompts

**Zweck: Bedürfnisse der Nutzenden in Kandidaten für Indikatoren und Ziele verwandeln.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: analysieren, ob Durchschnitte schlechte Erfahrungen verbergen.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Zweck: eine Gliederung eines Service-Level-Agreements in einfacher Sprache entwerfen.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine Richtlinie für das Fehlerbudget planen.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): nutzen Sie ihn, um eine Vereinbarung in einfacher Sprache zu entwerfen oder zu überprüfen.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): nutzen Sie ihn, um Maße für Lieferung und Service-Leistung zu wählen und zu deuten.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): nutzen Sie ihn, um Frühwarnindikatoren zu wählen, die zeigen, dass ein Service-Level gefährdet ist.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um zu prüfen, dass die Kapazität die versprochenen Niveaus trägt.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Zusagen von Lieferanten mit den angebotenen Niveaus abzustimmen.

## Wichtige Quellen

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): die klarste öffentliche Erklärung von Indikatoren, Zielen, Vereinbarungen, Perzentilen und Fehlerbudgets.
- **Service-level agreement** (Wikipedia): Definition, typische Inhalte, Arten und Geschichte von SLAs.
- **DORA's software delivery performance metrics** (dora.dev): verwandte Maße für Liefertempo und -stabilität.
- **Quality of service** (Wikipedia): Hintergrund dazu, wie Servicequalität beschrieben und gemessen wird.

## Referenzen

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
