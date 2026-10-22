# Monitoring und Event Management

**Monitoring sagt Ihnen, ob ein Service so funktioniert, wie Nutzende ihn erleben, und gutes Event Management verwandelt eine Flut von Signalen in eine kleine Zahl von Alarmen, die ein Mensch verstehen und auf die er reagieren kann.**

## Warum das wichtig ist

Einen Service, den Sie nicht sehen können, können Sie nicht betreiben. Ohne Monitoring erfährt ein Team von Ausfällen durch Nutzende und vom schleichenden Verfall von niemandem. Bei schlechtem Monitoring ist das Problem das Gegenteil: so viele Alarme, dass die Bereitschaftsingenieurin ihnen nicht mehr glaubt und der eine, der zählt, im Rauschen untergeht. Beide Extreme kosten Schlaf, Vertrauen und Zeit.

Monitoring und Event Management bestimmen auch, wie schnell ein Incident gefunden und behoben werden kann. Alles im Incident Management hängt davon ab, schnell zu wissen, dass etwas nicht stimmt, und genug Information zu haben, um herauszufinden, warum (siehe Thema 3.2 — Incident Management). Agile Teams, die oft releasen, brauchen das noch mehr, denn jedes Release ist eine Gelegenheit, etwas kaputtzumachen, und jede Rollback-Entscheidung hängt davon ab, die Wirkung zu sehen.

Googles Buch *Site Reliability Engineering* hat zwei Kapitel, die das Thema direkt behandeln: "Monitoring Distributed Systems" und "Practical Alerting from Time-Series Data". Sie beschreiben die Praxis einer Organisation und plädieren für einen bewusst einfachen, nutzerorientierten Ansatz. Dieses Thema nutzt sie als Hauptquelle, weil die für diesen Leitfaden herangezogenen Wikipedia-Artikel wenig zur Praktik sagen. Das hier verwendete ITIL-Vokabular, etwa Event, Alarm und Event Management, stammt aus weit verbreiteten Beschreibungen, die dieser Leitfaden nicht am Text des Framework-Eigners bestätigen konnte. Lesen Sie die SRE-Kapitel als eine gut erklärte Option.

## Kernkonzepte

### Monitoring

Das SRE-Kapitel definiert **Monitoring** als das Sammeln, Verarbeiten und Anzeigen quantitativer Echtzeitdaten über ein System. Es sagt, Monitoring unterstütze langfristige Trendanalyse, den Vergleich über Experimente hinweg, Alarmierung, Dashboards und Ad-hoc-Fehlersuche im Nachhinein. Es betont, dass Monitoring ein bedeutender Engineering-Aufwand ist und dass Teams dafür typischerweise mindestens eine Person abstellen.

### Events, Alarme und Incidents

Im ITSM-Gebrauch ist ein **Event** eine Zustandsänderung, die für die Steuerung eines Services Bedeutung hat. Die meisten Events sind informativ. Manche zeigen eine Warnung oder Ausnahme an. Ein **Alarm** (Alert) ist, wie das SRE-Kapitel es sagt, eine Benachrichtigung für einen Menschen, zugestellt als Ticket, E-Mail oder Seite. Ein **Incident** ist eine ungeplante Unterbrechung oder Qualitätsminderung (siehe Thema 3.2 — Incident Management). Event Management ist die Praktik zu entscheiden, welche Events zählen, was damit zu tun ist und wer informiert werden soll. Der Fluss geht von Events zu Alarmen zu, manchmal, Incidents.

### Black-Box- und White-Box-Monitoring

Das Kapitel unterscheidet zwei Arten:

| Art | Was sie tut | Stärke |
|---|---|---|
| **Black-Box** | Testet von außen sichtbares Verhalten, wie eine nutzende Person es sähe | Erkennt aktive Probleme; geeignet fürs Auslösen von Seiten |
| **White-Box** | Nutzt Metriken, die das Innere des Systems preisgibt, etwa Logs oder interne Handler | Zeigt bevorstehende Probleme und durch Wiederholungsversuche verdeckte Ausfälle; unverzichtbar für die Fehlersuche |

Das Buch kombiniert beides. Eine Black-Box-Sonde sagt Ihnen, dass der Checkout fehlschlägt; White-Box-Daten helfen herauszufinden, warum.

### Symptome und Ursachen

Das Kapitel sagt, Monitoring solle zwei Fragen beantworten: was ist kaputt, und warum. Es rät, Alarme auf Symptome zu konzentrieren, also auf das, was Nutzende erleben, und nur bei Ursachen eine Seite auszulösen, wenn sie sicher und unmittelbar bevorstehend sind. Der Ausfall einer einzelnen Maschine ist, in den Worten des Alarmierungskapitels, nicht akzeptabel als Alarmgrund, weil er zu verrauscht ist. Das ist der Kern eines guten Alarmierungsansatzes: Sagen Sie einem Menschen Bescheid, wenn Nutzende geschädigt werden oder werden, nicht jedes Mal, wenn ein Teil zuckt.

### Die vier goldenen Signale

Das Kapitel schlägt vier Signale vor, die bei einem nutzerorientierten System zu beobachten sind:

- **Latenz:** die Zeit, eine Anfrage zu bedienen. Verfolgen Sie fehlgeschlagene Anfragen getrennt, denn ein "langsamer Fehler ist noch schlimmer als ein schneller Fehler".
- **Verkehr (Traffic):** die Nachfrage an das System.
- **Fehler (Errors):** fehlgeschlagene Anfragen, ob ausdrücklich, implizit oder per Richtlinie.
- **Sättigung (Saturation):** wie "voll" der Service ist. Die Leistung verschlechtert sich oft schon vor 100 % Auslastung.

Diese entsprechen natürlich Service-Level-Indikatoren (siehe Thema 3.7 — Service-Level-Management). Das Kapitel warnt auch, dass Mittelwerte langsame Ausreißer verbergen, und schlägt vor, Anfragezahlen in Latenz-Eimern zu erfassen, um die Verteilung zu sehen.

### Was einen guten Alarm ausmacht

Das Kapitel bietet Fragen, die vor dem Schreiben eines Alarms zu stellen sind: Erkennt er einen dringenden, handlungsfähigen, für Nutzende sichtbaren Zustand; kann er sicher ignoriert werden; und kann die Reaktion automatisiert werden? Seiten sollten handlungsfähig sein, Urteilsvermögen verlangen und neuartige Probleme betreffen. Es sagt, Alarme sollten nie bloß auslösen, weil "etwas ein wenig merkwürdig scheint". Seiten, deren Reaktionen routinemäßig und algorithmisch sind, seien aus seiner Sicht ein Warnzeichen, das Automatisierung oder Behebung der Grundursache verlangt.

### Alarme weiterleiten

Das Alarmierungskapitel beschreibt, seitenwürdige Alarme an das Bereitschaftspersonal zu schicken, unterkritische in Ticket-Warteschlangen und den Rest auf Status-Dashboards. Es beschreibt Werkzeuge zum Weiterleiten, Deduplizieren und Unterdrücken von Alarmen und merkt an, dass Alarme vor dem Auslösen eine Mindestdauer abwarten sollten, weil sie flattern können. Es warnt: "Man kann nur bei den Fehlern alarmieren, die man erwartet hat", weshalb die Kombination von Black-Box-Sonden mit White-Box-Daten zählt.

### Es einfach halten

Das Kapitel plädiert für einfache, schnelle Systeme statt "Magie", die Schwellenwerte lernt oder Kausalität erkennt, und merkt an, dass komplexe Abhängigkeitshierarchien begrenzten Erfolg hatten. Es sagt, Regeln, die echte Incidents fangen, einfach zu halten, selten ausgelöste Alarme und ungenutzte Signale zu entfernen und die Wartungskosten langsamer wachsen zu lassen als die Größe des Services. Die beschriebenen Fälle, etwa ein Team, das von Alarmen überwältigt sein Ziel vorübergehend lockerte und E-Mail-Alarme abschaltete, um Zeit für dauerhafte Behebungen freizumachen, zeigen die Bereitschaft, Rauschen zu entfernen.

### Dashboards und langfristige Sichten

Das Kapitel behandelt Dashboards als vorgefertigte Übersichtssichten der wichtigsten Metriken eines Services und sagt, Dashboards seien besser als E-Mail-Alarme, die es von sehr begrenztem Wert nennt. Es empfiehlt auch, die Seitenhäufigkeit im Zeitverlauf zu überprüfen, etwa in Quartalsberichten, um die Führung über die Pager-Last informiert zu halten. Das macht die Alarmqualität für Führungskräfte sichtbar (siehe Thema 1.2 — Agile Prinzipien zum nachhaltigen Tempo).

### Grenzen der Quellen

Die SRE-Kapitel geben außer einem durchgerechneten Beispiel keine Schwellenwerte, behandeln weder Runbooks noch Grenzen der Bereitschaftslast und beschreiben nicht, wie Alarme im Zeitverlauf überprüft und eingestellt werden, das sind also Fragen Ihrer eigenen Praxis. Sie stammen aus einer großen Organisation mit starken Engineering-Ressourcen. Kleinere Teams können die Prinzipien mit einfacheren Werkzeugen anwenden.

## Bewährte Praktiken

1. **Überwachen Sie, was Nutzende erleben.** Fügen Sie mindestens eine Black-Box-Sonde hinzu, die eine echte Nutzeraktion ausführt, etwa sich anzumelden oder eine Bestellung aufzugeben, und alarmieren Sie, wenn sie fehlschlägt.
2. **Beobachten Sie die vier goldenen Signale.** Verfolgen Sie für jeden Service Latenz, Verkehr, Fehler und Sättigung. Ergänzen Sie andere Maße nur, wenn sie eine Frage beantworten, die Sie gestellt haben.
3. **Alarmieren Sie bei Symptomen.** Lösen Sie eine Seite aus, wenn Nutzende geschädigt werden oder bald werden. Behandeln Sie interne Zustände, etwa eine einzelne ausgefallene Maschine, als Information niedrigerer Priorität, es sei denn, sie sind sicher und unmittelbar bevorstehend.
4. **Machen Sie jede Seite handlungsfähig.** Bevor Sie einen Alarm anlegen, schreiben Sie auf, was die Einsatzkraft tun soll. Gibt es nichts zu tun, ist es keine Seite.
5. **Leiten Sie nach Dringlichkeit weiter.** Schicken Sie dringende Alarme an die Bereitschaft, weniger dringende in eine Ticket-Warteschlange und Information auf ein Dashboard. Schicken Sie keine E-Mail-Alarme an Menschen, die sie ignorieren werden.
6. **Nutzen Sie Verteilungen, nicht nur Durchschnitte.** Sehen Sie sich für die Latenz hohe Perzentile oder Eimer an, damit langsame Ausreißer sichtbar sind.
7. **Setzen Sie eine Mindestdauer.** Verlangen Sie, dass ein Zustand kurze Zeit besteht, bevor alarmiert wird, um Flattern zu vermeiden. Stimmen Sie die Dauer mit echten Daten ab.
8. **Stellen Sie verrauschte Alarme ein.** Prüfen Sie, welche Alarme am häufigsten auslösen und zu keiner Maßnahme führten. Entfernen oder beheben Sie sie. Das SRE-Kapitel behandelt routinemäßige Reaktionen als Signal für Automatisierung oder Reparatur.
9. **Testen Sie Ihr Monitoring.** Machen Sie in einer Testumgebung absichtlich etwas kaputt und prüfen Sie, dass der richtige Alarm auslöst. Beziehen Sie das Monitoring-System selbst in die Prüfungen ein, damit sein Ausfall bemerkt wird.
10. **Überprüfen Sie die Pager-Last.** Zählen Sie jedes Quartal Seiten je Schicht, Unterbrechungen außerhalb der Arbeitszeit und Fehlalarme. Teilen Sie die Ergebnisse mit Führungskräften und nutzen Sie sie in der Planung.
11. **Halten Sie Monitoring in der Definition of Done.** Fragen Sie für jedes neue Feature, welche Signale zeigen, ob es funktioniert, und welchen Alarm es, wenn überhaupt, braucht (siehe Thema 3.5 — Release- und Deployment-Management).
12. **Halten Sie es einfach.** Bevorzugen Sie wenige verständliche Regeln gegenüber einem komplexen Schema. Entfernen Sie ungenutzte Signale und überprüfen Sie Regeln nach Incidents.

## Fragen zur Diskussion im Team

**Wie haben wir von unseren letzten drei Incidents erfahren?**

Listen Sie jeden Incident auf und wie er zuerst bemerkt wurde: ein Alarm, eine nutzende Person, ein Kollege. Wenn die meisten von Nutzenden kamen, verfehlt das Monitoring die Symptome, die zählen. Die Moderation kann fragen, was eine Sonde gezeigt hätte. Wählen Sie eine Nutzeraktion, die zuerst überwacht wird.

**Welche Alarme ignorieren wir, und warum?**

Fragen Sie Bereitschaftsingenieure nach den Alarmen, die sie stummschalten oder überspringen. Jeder ist ein Kandidat zum Beheben oder Löschen. Fragen Sie, was Menschen einem Alarm vertrauen oder misstrauen lässt. Eine offene Antwort offenbart oft Alarme, die bei Zuständen auslösen, auf die niemand reagieren kann. Vereinbaren Sie, drei einzustellen oder zu beheben.

**Was war unsere schlimmste Nacht in der Bereitschaft, und was hätte sie besser gemacht?**

Sammeln Sie Geschichten ohne Schuldzuweisung. Suchen Sie Muster: wiederholte Seiten, unklare Alarme, fehlende Runbooks, keine Eskalation. Jedes Muster ist eine Verbesserung. Fragen Sie, welche zwei Änderungen am meisten helfen würden. Ziel ist eine leichtere Last und ein klareres Signal.

**Wenn unser Monitoring-System ausfiele, woher wüssten wir es?**

Fragen Sie, wer den Wächter bewacht. Viele Teams haben keine Prüfung, dass das Monitoring funktioniert. Besprechen Sie einen einfachen Heartbeat oder eine Sonde aus einem getrennten System. Vereinbaren Sie eine Prüfung, die ergänzt wird.

**Was zeigen unsere Dashboards, und wer sieht sie an?**

Listen Sie die Dashboards auf und fragen Sie, wer jedes im letzten Monat genutzt hat. Ungenutzte Dashboards sind Unordnung; nützliche erzählen eine Geschichte über den Service. Fragen Sie, welche Frage jedes beantwortet. Behalten Sie einen kleinen Satz, der echte Fragen beantwortet.

**Woran würden wir erkennen, dass ein Release die Dinge verschlechtert hat?**

Wählen Sie ein jüngstes Release und fragen Sie, welches Signal ein Problem zeigen würde. Lautet die Antwort "wir würden es von Nutzenden hören", besprechen Sie, welche Signale nach einem Release zu beobachten sind und wer dafür verantwortlich ist. Diese Frage verbindet Monitoring mit dem Deployment. Schreiben Sie eine kurze Checkliste für nach dem Release.

## In der Praxis: ein agiles ITIL-Beispiel

Die Verkehrsbehörde einer Stadt betreibt eine Reiseplanungs-Website und -App, die 400.000 Menschen am Tag nutzen. Ein Plattformteam aus zehn Personen verantwortet den Service, mit einem Bereitschaftsplan für vier. Das Team hat Hunderte Alarme: CPU auf jedem Server, Plattenplatz, Warteschlangenlängen und Fehlerzahlen. Bereitschaftsingenieure erhalten in einer typischen Woche 40 Seiten, die meisten außerhalb der Arbeitszeit, und zwei Incidents im letzten Quartal wurden zuerst von Nutzenden in sozialen Medien gemeldet.

Die Teamleitung und ein Ingenieur prüfen drei Monate Seiten. Sie stellen fest, dass drei Viertel Zustände betrafen, die keine Maßnahme brauchten oder sich von selbst lösten. Sie vereinbaren, einem einfachen Ansatz aus dem SRE-Buch zu folgen: bei dem alarmieren, was Nutzende erleben. Sie fügen eine Sonde hinzu, die jede Minute eine Standardreise plant und Erfolg und Geschwindigkeit misst, und behalten einen kleinen Satz von Alarmen zur Sättigung der Datenbank und der Warteschlange. Den Rest verlegen sie auf ein Dashboard und ein tägliches Ticket. Jede verbleibende Seite erhält einen kurzen Runbook-Eintrag, der sagt, was zu prüfen ist.

Nach einem Monat sinken die Seiten auf etwa fünf pro Woche, und die beiden darauffolgenden Incidents wurden beide von der Sonde erkannt, bevor Nutzende sich beschwerten. Einige Probleme bleiben. Die Sonde deckt nur eine Reiseart ab, und ein Fehler, der Reisen mit dem Fahrrad betraf, blieb einen Tag unbemerkt. Ein Ingenieur berichtet außerdem, dass die Entscheidung "auf das Dashboard verlegen" ein langsames Plattenproblem verbarg, das später einen Ausfall verursachte. Das Team fügt Sonden für andere Reisearten hinzu, nimmt eine tägliche Durchsicht des Dashboards in den Bereitschaftsplan auf und vereinbart, die Pager-Last jedes Quartal zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams wissen, was die Software tun soll und wo sie wahrscheinlich versagt. Bauen Sie die Signale in den Code ein: nützliche Logs, Metriken und Health-Checks. Definieren Sie Sonden für wichtige Nutzeraktionen und behandeln Sie Monitoring als Teil von "fertig". Nehmen Sie an Alarm-Reviews teil, damit Seiten echte Probleme widerspiegeln.

### Service- und Betriebsteams

Betriebsteams tragen den Pager und die Dashboards. Halten Sie Alarme wenige und handlungsfähig, leiten Sie nach Dringlichkeit weiter und verfolgen Sie die Pager-Last. Geben Sie verrauschte Alarme mit Belegen an die Teams zurück, die sie verantworten, und teilen Sie, was Sie aus Incidents darüber lernen, was zu beobachten ist.

### Führung und Governance

Führungskräfte sollten nach Pager-Last und Daten zur Incident-Erkennung fragen, nicht nach mehr Alarmen. Unterstützen Sie Zeit, Rauschen einzustellen und nützliche Signale hinzuzufügen. Behandeln Sie eine steigende Zahl von Seiten außerhalb der Arbeitszeit als Risiko für den Service und für Menschen.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn Probleme gefunden werden, bevor sie sie bemerken. Melden Sie Probleme mit Einzelheiten, etwa was Sie versucht haben und wann, denn das hilft, das Monitoring abzustimmen. Fragen Sie Anbieter, wie sie Ausfälle erkennen und wie schnell und ob sie Statusinformation veröffentlichen.

## Typische Fehlerbilder

- **Bei allem alarmieren.** Der Pager ist ständig aktiv, und Vertrauen geht verloren. Lösen Sie stattdessen Seiten bei Symptomen aus und schicken Sie den Rest an Tickets oder Dashboards.
- **Systeme überwachen, nicht Nutzende.** Alle Maschinen sind grün, während Nutzende sich nicht anmelden können. Fügen Sie stattdessen Black-Box-Sonden echter Nutzeraktionen hinzu.
- **Keine Maßnahme verknüpft.** Seiten treffen ein, ohne dass etwas zu tun ist. Verlangen Sie stattdessen für jede Seite eine beschriebene Reaktion oder entfernen Sie sie.
- **Nur Durchschnitte.** Eine Gruppe von Nutzenden leidet, während der Mittelwert gut aussieht. Sehen Sie sich stattdessen hohe Perzentile oder Verteilungen an.
- **Komplexe, clevere Regeln.** Gelernte Schwellenwerte und Abhängigkeitsbäume verwirren Einsatzkräfte. Bevorzugen Sie stattdessen einfache, verständliche Regeln.
- **Unbeobachtetes Monitoring.** Das Monitoring-System fällt still aus. Prüfen Sie es stattdessen mit Heartbeats und Tests.
- **Routinemäßige Reaktionen.** Menschen wiederholen nach jeder Seite dieselbe Behebung. Automatisieren Sie stattdessen die Reaktion oder beheben Sie die Ursache.
- **Pager-Last ignorieren.** Seiten über Nacht gelten als normal. Messen und überprüfen Sie sie stattdessen und behandeln Sie hohe Last als Risiko.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Sichtbarkeit der Nutzererfahrung | Nutzende melden die meisten Probleme | Einige Services haben Sonden oder Metriken für Nutzeraktionen | Wichtige Nutzeraktionen werden mit Sonden geprüft und goldene Signale für jeden Service verfolgt | Erkennungszeit und Abdeckung werden gemessen und Lücken behoben | Monitoring wird über Teams, Lieferanten und Kunden geteilt |
| Alarmqualität | Viele Alarme, wenig Maßnahmen | Einige Teams schneiden Alarme zurück | Seiten sind symptombasiert, handlungsfähig und nach Dringlichkeit weitergeleitet | Alarmpräzision und Rauschen werden gemessen und überprüft | Das Alarmdesign wird über Teams hinweg anhand gemeinsamer Belege verbessert |
| Reaktion und Automatisierung | Reaktionen sind improvisiert | Es gibt einige Runbooks | Seiten verlinken auf Runbooks, und routinemäßige Reaktionen sind automatisiert | Reaktionszeit und Nutzung der Automatisierung werden gemessen | Reaktionen werden über Teams und Lieferanten koordiniert |
| Menschen und Last | Pager-Last wird nicht verfolgt | Einige Teams zählen Seiten | Pager-Last wird jedes Quartal überprüft | Last wird anhand von Daten ausbalanciert und verringert | Last und Lernen werden über Teams geteilt und in der Planung berücksichtigt |

## Checkliste

- [ ] Jeder wichtige Service hat mindestens eine Sonde einer echten Nutzeraktion.
- [ ] Wir verfolgen für jeden Service Latenz, Verkehr, Fehler und Sättigung.
- [ ] Jede Seite hat eine schriftliche Reaktion und betrifft einen für Nutzende sichtbaren oder unmittelbar bevorstehenden Zustand.
- [ ] Alarme werden nach Dringlichkeit an Bereitschaft, Tickets oder Dashboards weitergeleitet.
- [ ] Hohe Perzentile oder Verteilungen sind für die Latenz sichtbar.
- [ ] Wir prüfen, welche Alarme am häufigsten auslösen, und stellen die ein, die zu keiner Maßnahme führen.
- [ ] Das Monitoring-System selbst wird geprüft.
- [ ] Die Pager-Last (Seiten je Schicht, Unterbrechungen außerhalb der Arbeitszeit) wird jedes Quartal überprüft.
- [ ] Neue Features enthalten Monitoring in ihrer Definition of Done.
- [ ] Nach jedem Release prüft jemand die Signale anhand einer kurzen Liste.

## KI-Prompts

**Zweck: eine Liste von Alarmen auf Rauschen und Handlungsfähigkeit prüfen.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Zweck: eine Sonde für eine Nutzerreise definieren.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: den Abschnitt zur Reaktion für einen Alarm schreiben.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen vierteljährlichen Review der Pager-Last vorbereiten.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## KI-Skills

- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um die Reaktion zu schreiben, die zu jeder Seite gehört.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): nutzen Sie ihn, um einen fairen Bereitschaftsplan zu entwerfen und zu planen, wie die Pager-Last geteilt und überprüft wird.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): nutzen Sie ihn, um Maße für Service- und Lieferleistung zu wählen und zu deuten.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): nutzen Sie ihn, um Latenz und Sättigung unter Last zu prüfen, bevor Probleme die Nutzenden erreichen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): nutzen Sie ihn, um zu testen, dass Ausfälle erkannt und behandelt werden, indem sie in einer sicheren Umgebung absichtlich herbeigeführt werden.

## Wichtige Quellen

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): Definitionen, die vier goldenen Signale, Symptome gegenüber Ursachen und Rat zu einfacher Alarmierung.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): wie Alarmregeln, Weiterleitung und Flattern in der Praxis funktionieren.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): die Verbindung zwischen Indikatoren, Zielen und Alarmen.
- **IT service management** (Wikipedia): der Platz von Monitoring und Incidents im ITSM.

## Referenzen

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
