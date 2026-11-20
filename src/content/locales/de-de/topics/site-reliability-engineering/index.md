# Site Reliability Engineering

**Site Reliability Engineering behandelt den Betrieb als Ingenieursproblem und nutzt Service-Level-Ziele, Fehlerbudgets und eine Obergrenze für wiederkehrende manuelle Arbeit, um Services verlässlich zu halten und sich dennoch schnell zu verändern.**

## Warum das wichtig ist

Viele Praktiken des Service-Managements wurden für eine Welt entworfen, in der Betriebsleute Software betrieben, die andere geschrieben hatten, und die Kosten des Betriebs mit der Größe des Services wuchsen. Site Reliability Engineering (SRE) ist die Antwort einer Organisation darauf, was geschieht, wenn dieses Modell auf sehr große Maßstäbe trifft: Software-Ingenieure bitten, die Betriebsfunktion zu entwerfen und zu führen, und das System die Arbeit tun lassen, die Menschen sonst von Hand erledigten.

Für Lesende dieses Leitfadens ist SRE aus drei Gründen nützlich. Es macht den Zielkonflikt zwischen Tempo und Verlässlichkeit explizit, mit Zahlen, die Produkt- und Betriebsteams beide lesen können. Es gibt eine feste Vorstellung davon, wie viel manuelle Arbeit zu viel ist. Und es zeigt, wie sich viele ITIL-Praktiken, etwa Incident-, Problem-, Änderungs- und Kapazitätsmanagement, in Ingenieursbegriffen ausführen lassen. SRE ist nicht der einzige Weg dazu, und es stammt aus den Umständen eines sehr großen Internetunternehmens, daher hängt es von Ihrer Lage ab, was sich übertragen lässt.

Dieses Thema stützt sich hauptsächlich auf drei Kapitel des Buchs *Site Reliability Engineering* von Google, ergänzt durch den Wikipedia-Artikel zu SRE. Das Buch beschreibt die Praxis in einer Organisation und wirbt für ihren Ansatz; der Wikipedia-Artikel gibt ein breiteres, aber dünneres Bild und nennt keine Kritik. Lesen Sie beide als Quellen für Ideen zum Ausprobieren, nicht als Standard.

## Kernkonzepte

### Was SRE ist

Die Einleitung des Buchs definiert SRE als "das, was geschieht, wenn man einen Software-Ingenieur bittet, ein Betriebsteam zu entwerfen". Der [Wikipedia-Artikel zu Site Reliability Engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering) beschreibt es als Disziplin innerhalb der Softwaretechnik und der IT-Infrastrukturunterstützung, die Verfügbarkeit und Leistung bereitgestellter Software und großer Services überwacht und verbessert, mit Schwerpunkt auf Automatisierung und Infrastructure as Code. Der Artikel nennt SRE eine spezifische Umsetzung von DevOps, enger im Umfang, weil es sich auf den Bau verlässlicher Systeme konzentriert (siehe Thema 5.2 — DevOps). Das Buch beschreibt DevOps als breiteren Satz von Prinzipien, die SRE auf bestimmte Weise umsetzt.

Laut Artikel begann Googles SRE-Praxis 2003, als Benjamin Treynor Sloss eintrat und aus sieben Produktionsingenieuren ein Team bildete; bis 2016 hatte das Team mehr als 1.000 SREs, und andere große Internetunternehmen hatten die Praxis übernommen. Eine Umfrage unter 572 Fachleuten aus dem Jahr 2020 fand SRE-Teams bei 64 Prozent der Organisationen mit 10.000 oder mehr Beschäftigten, bei 44 Prozent derer mit 101 bis 1.000 und bei 32 Prozent derer mit 100 oder weniger. Die Konferenzreihe SREcon findet seit 2014 jährlich statt.

### Das Problem, das SRE angeht

Die Einleitung beschreibt das traditionelle Modell: Entwickler und Systemadministratoren sind in getrennte Teams aufgeteilt. Sie nennt zwei Arten von Kosten:

- **Direkte Kosten.** Manuelles Änderungsmanagement und manuelle Ereignisbearbeitung werden teuer, weil das Betriebsteam mit der Last wächst.
- **Indirekte Kosten.** Die Teams haben unterschiedliches Vokabular, unterschiedliche Anreize und unterschiedliche Annahmen über Risiko, was zu Konflikten über Releases führt. Der Betrieb fügt Freigabetore hinzu, und die Entwickler antworten mit Umgehungen.

SRE will diese Spaltung vermeiden, indem es den Betrieb als Ingenieursproblem behandelt. Das Kapitel sagt, die Teamgröße wachse langsamer als das System, weil Engineering verhindert, dass die betriebliche Last im Gleichschritt mit dem Verkehr wächst.

### Die Grundsätze

Die Einleitung listet die Bereiche auf, für die SRE-Teams verantwortlich sind: Verfügbarkeit, Latenz, Leistung, Effizienz, Änderungsmanagement, Monitoring, Notfallreaktion und Kapazitätsplanung. Der Wikipedia-Artikel listet Kernpraktiken auf, darunter wiederkehrende Arbeit zu automatisieren, Verlässlichkeitsziele durch Service-Level-Indikatoren (SLIs), -Ziele (SLOs) und Fehlerbudgets zu definieren, Systeme so zu entwerfen, dass sie das Risiko verringern, Observability und Monitoring, den Umgang mit Toil, einen erprobten Incident-Management-Prozess sowie Kapazitätsplanung, Release-Management und Chaos Engineering.

### Service-Level-Ziele und Fehlerbudgets

SRE bindet Verlässlichkeit an explizite Ziele (siehe Thema 3.7 — Service-Level-Management für die vollständige Behandlung). Kurz:

- Wählen Sie wenige Indikatoren, die widerspiegeln, was Nutzenden wichtig ist.
- Setzen Sie ein Ziel, das nicht Perfektion verlangt.
- Erlauben Sie ein **Fehlerbudget**: den Spielraum zwischen perfekt und dem Ziel.
- Nutzen Sie das Budget, um über das Release-Tempo zu entscheiden: solange Budget bleibt, gehen Releases weiter; ist es verbraucht, verlangsamen sich Releases, und der Aufwand verlagert sich auf Verlässlichkeit.

Das Kapitel "Embracing Risk" erklärt, warum: Produktteams werden an Geschwindigkeit gemessen und Verlässlichkeitsteams an Verlässlichkeit, was Spannung erzeugt, und das Budget gibt beiden ein gemeinsames, objektives Maß. Dasselbe Kapitel sagt, dass die Kosten der Verlässlichkeit steil steigen und das Ziel ist, das Risiko eines Services dem anzupassen, was das Geschäft akzeptiert (siehe Thema 3.11 — Verfügbarkeit, Kapazität und Performance).

### Toil

Das Kapitel "Eliminating Toil" definiert **Toil** als betriebliche Arbeit, die an den Betrieb eines Produktionsservices gebunden ist, und sagt, sie sei nicht bloß Arbeit, die jemand nicht mag, und unterscheide sich von Gemeinkosten wie Besprechungen. Toil ist tendenziell:

| Merkmal | Bedeutung |
|---|---|
| **Manuell** | Braucht menschlichen Handeinsatz, auch wenn ein Skript die Schritte ausführt |
| **Wiederkehrend** | Wird immer wieder getan, kein neuartiges Problem |
| **Automatisierbar** | Eine Maschine könnte es tun, oder der Bedarf ließe sich wegentwerfen |
| **Taktisch** | Unterbrechungsgetrieben und reaktiv, etwa auf Alarme zu antworten |
| **Ohne bleibenden Wert** | Der Service ist danach im selben Zustand |
| **Linear mit dem Wachstum** | Der Aufwand skaliert mit Servicegröße, Verkehr oder Nutzenden |

Das Buch sagt, SREs wollten Toil unter 50 Prozent ihrer Zeit halten, wobei mindestens die Hälfte auf Engineering-Projektarbeit entfalle, und die Einleitung setzt eine Obergrenze von 50 Prozent für die gesamte "Ops"-Arbeit und schickt den Überschuss an die Entwicklungsteams zurück. Es sagt, zu viel Toil führe zu Karrierestillstand, niedriger Moral und Burnout, verlangsame Feature-Arbeit und treibe Abgänge an; "Toil wird giftig, wenn man ihn in großen Mengen erlebt", auch wenn kleine Mengen beruhigend sein können und manches unvermeidlich ist. Das Kapitel gibt eine Methode, die Untergrenze zu berechnen, die die Bereitschaft auferlegt (etwa eine Untergrenze von 33 Prozent für eine Rotation von sechs Personen unter den Annahmen seines Beispiels), und berichtet, Unterbrechungen seien die größte Toil-Quelle gewesen, gefolgt von Bereitschaftsreaktionen und dann Releases. Es definiert Engineering-Arbeit als neuartig, urteilsabhängig, dauerhafte Verbesserung erzeugend und einer Strategie folgend.

### Notfallreaktion und Monitoring

Die Einleitung sagt, Monitoring solle nicht verlangen, dass ein Mensch Alarme deutet: Software deutet die Daten, und Menschen werden nur benachrichtigt, wenn Handeln nötig ist (siehe Thema 3.10 — Monitoring und Event Management). Sie sagt, SREs in Bereitschaft sollten höchstens etwa zwei Ereignisse pro Schicht erhalten. Sie behauptet, Playbooks brächten etwa eine Verdreifachung der Verbesserung bei der mittleren Reparaturzeit gegenüber Improvisieren. Die Incident-Bearbeitung folgt einem Incident-Command-Ansatz, und Postmortems sind schuldzuweisungsfrei und werden für alle bedeutenden Incidents geschrieben (siehe Thema 3.2 — Incident Management).

### Änderungsmanagement

Die Einleitung gibt an, dass etwa 70 Prozent der Ausfälle von Änderungen an einem laufenden System stammen, und empfiehlt schrittweise Rollouts, schnelle Problemerkennung und sichere Rollbacks. Das ist die eigene Behauptung des Buchs, aus Googles Erfahrung, und muss nicht für jede Organisation gelten. Ihre Botschaft stimmt mit der DORA-Anleitung zu Änderungen überein (siehe Thema 3.4 — Change Enablement und Thema 3.5 — Release- und Deployment-Management).

### SRE und ITIL

SRE lässt sich als ingenieurmäßige Art lesen, mehrere ITIL-Praktiken auszuführen:

| ITIL-Praktik | SRE-Ansatz |
|---|---|
| Incident Management | Incident-Command-Rollen, eine laufende Incident-Aufzeichnung, schuldzuweisungsfreie Postmortems |
| Problem Management | Postmortem-Maßnahmen im Backlog, Toil-Beseitigung an der Ursache |
| Change Enablement | Schrittweise Rollouts, schnelle Erkennung, sicherer Rollback, automatisierte Prüfungen |
| Service-Level-Management | SLIs, SLOs, Fehlerbudgets |
| Monitoring und Event Management | Symptombasierte Alarmierung, die vier goldenen Signale |
| Kapazitätsmanagement | Kapazitätsplanung als Ingenieursaufgabe, mit Lasttests |
| Kontinuierliche Verbesserung | Eine Obergrenze für Toil, Engineering-Projekte als Hauptarbeit |

Die Zuordnung stammt aus diesem Leitfaden, nicht aus den Quellen. Weder das Buch noch der Wikipedia-Artikel behauptet, ITIL umzusetzen.

### Einführungsmodelle

Der Wikipedia-Artikel beschreibt sechs Organisationsmodelle für SRE: "Kitchen Sink", Infrastruktur, Werkzeuge, Produkt oder Anwendung, eingebettet und beratend. Er sagt, in großen Organisationen sei ein Hybrid üblich, markiert diese Aussage aber als belegbedürftig. Welches Modell zu Ihnen passt, hängt von Ihrer Größe und der Zahl der Services ab.

### Grenzen und Kritik

Der Wikipedia-Artikel nennt weder Kritik noch Kosten noch Fehlerbilder, und das Buch beschreibt den Erfolg einer Organisation. Praktische Grenzen sind aus der Erfahrung gut bekannt und werden hier als solche angeboten: SRE braucht Ingenieure, die Software schreiben können und bereit sind, Betrieb zu leisten; die 50-Prozent-Obergrenze braucht Rückhalt des Managements; Fehlerbudgets funktionieren nur, wenn Produktteams sie respektieren; und der Ansatz ist schwer ohne den Maßstab und die Werkzeuge zu kopieren, die ihn hervorgebracht haben. Kleinere Organisationen können die Ideen übernehmen, etwa Ziele, Budgets, Toil-Messung und schuldzuweisungsfreie Reviews, ohne ein Team zu schaffen.

## Bewährte Praktiken

1. **Wählen Sie einen Service und setzen Sie ein Ziel.** Wählen Sie zwei bis vier Indikatoren, die die Nutzererfahrung widerspiegeln, setzen Sie ein lockeres erstes Ziel und messen Sie einige Monate, bevor Sie es verschärfen.
2. **Vereinbaren Sie eine Fehlerbudget-Richtlinie.** Schreiben Sie auf, was geschieht, wenn das Budget fast und wenn es ganz verbraucht ist und wer überstimmen darf. Machen Sie sie zu einer gemeinsamen Regel von Produkt und Betrieb.
3. **Messen Sie Toil.** Bitten Sie Menschen festzuhalten, wie viel ihrer Zeit in manuelle, wiederkehrende Betriebsarbeit geht. Nutzen Sie die sechs Merkmale zur Einordnung. Sehen Sie sich die größten Quellen an.
4. **Begrenzen Sie die manuelle Arbeit.** Setzen Sie eine Obergrenze für Toil, etwa die Hälfte der Zeit einer Person, und überprüfen Sie sie. Wird die Grenze überschritten, schicken Sie überschüssige Arbeit an die Teams zurück, die die Ursachen verantworten, oder verringern Sie den Umfang.
5. **Automatisieren Sie den größten Toil zuerst.** Wählen Sie den Posten, der am meisten Zeit kostet und am besten wiederholbar ist, automatisieren Sie ihn mit Tests und messen Sie die Einsparung. Ziehen Sie vor, den Bedarf wegzuentwerfen, statt ihn zu automatisieren.
6. **Schützen Sie Engineering-Zeit.** Planen Sie Projektarbeit für Betriebsingenieure als echte Arbeit mit Verantwortlichen und Terminen. Ohne sie dehnt sich Toil aus.
7. **Begrenzen Sie Unterbrechungen.** Zielen Sie auf wenige Ereignisse pro Bereitschaftsschicht, justieren Sie Alarme so, dass Alarmierungen handlungsfähig sind, und beheben Sie wiederkehrende Ursachen. Die Anleitung des Buchs lautet höchstens etwa zwei Ereignisse pro Schicht.
8. **Schreiben Sie Playbooks.** Schreiben Sie für häufige Ausfälle kurze, erprobte Reaktionsschritte. Das Buch behauptet, sie verbesserten die Reparaturzeit gegenüber Improvisieren.
9. **Machen Sie Änderungen schrittweise und umkehrbar.** Rollen Sie allmählich aus, erkennen Sie Probleme schnell und gehen Sie sicher zurück. Weil Änderungen in der Erfahrung des Buchs die häufigste Ursache von Ausfällen sind, investieren Sie hier zuerst.
10. **Führen Sie schuldzuweisungsfreie Postmortems für bedeutende Incidents durch,** einschließlich Beinahe-Vorfällen, die keinen Alarm auslösten. Machen Sie aus Maßnahmen Backlog-Einträge.
11. **Beginnen Sie mit den Ideen, nicht mit dem Team.** Kleinere Organisationen können Ziele, Budgets, Toil-Messgrößen und Postmortems mit vorhandenem Personal übernehmen, bevor sie ein eigenes Team schaffen.
12. **Wählen Sie ein Organisationsmodell bewusst.** Wenn Sie eine SRE-Funktion schaffen, entscheiden Sie, ob sie Werkzeuge bereitstellt, sich in Produktteams einbettet oder berät, und überprüfen Sie die Wahl, wenn Sie wachsen.

## Fragen zur Diskussion im Team

**Auf welchen Service würden wir zuerst ein Ziel setzen, und wie lautete das Ziel?**

Bitten Sie jede Person, den Service und den Indikator zu nennen, der die Erfahrung der Nutzenden am besten widerspiegelt. Vergleichen Sie. Unterschiede zeigen unklare Prioritäten. Die Moderation kann fragen, was heute geschieht, wenn der Service langsamer oder weniger verfügbar ist, als Nutzende erwarten. Vereinbaren Sie einen Service zum Beginnen und was zu messen ist.

**Was würden wir tun, wenn wir unser ganzes Fehlerbudget in diesem Monat verbrauchten?**

Bitten Sie das Team und eine Produktvertretung, die Maßnahmen zu beschreiben, wer entscheidet und was geschützt wird. Viele Teams haben sich nie geeinigt. Besprechen Sie, ob eine Pause riskanter Releases akzeptiert würde. Entwerfen Sie eine einseitige Richtlinie.

**Wie viel unserer Woche ist Toil, und was sind die drei größten Quellen?**

Bitten Sie Menschen, zu schätzen, und dann zwei Wochen Aufzeichnungen zu führen. Vergleichen Sie Schätzungen mit Aufzeichnungen. Ziel ist, die Gestalt der Arbeit zu sehen, nicht Schuld zuzuweisen. Wählen Sie die größte Quelle und fragen Sie, ob sie sich durch Entwurf beseitigen lässt.

**Welche wiederkehrende manuelle Aufgabe könnte ein Skript oder eine Entwurfsänderung beseitigen?**

Listen Sie die Aufgaben auf, vor denen Menschen sich fürchten. Schätzen Sie für jede Häufigkeit und Zeit. Die besten Kandidaten sind häufig, stabil und risikoarm. Fragen Sie, was die Automatisierung sicher machen würde, etwa Grenzen und Protokolle. Wählen Sie eine zum Automatisieren.

**Wie viele Ereignisse bekommt jede Bereitschaftsschicht, und wie viele brauchen Handeln?**

Zählen Sie für das letzte Quartal. Ist die Zahl hoch, besprechen Sie, woher sie kommt. Die Einleitung schlägt vor, etwa zwei Ereignisse pro Schicht anzustreben. Wählen Sie eine Alarmquelle zum Beheben.

**Was würden wir verlieren und gewinnen, wenn wir ein eigenes Verlässlichkeitsteam schüfen?**

Bitten Sie um ehrliche Ansichten. Gewinne könnten Fokus und Fähigkeiten sein; Verluste ein neues Silo oder das Abladen von Betriebsarbeit. Besprechen Sie Alternativen wie eingebettete Ingenieure oder eine Rotation. Entscheiden Sie, was in kleinem Rahmen auszuprobieren ist.

## In der Praxis: ein agiles ITIL-Beispiel

Ein regionaler Stromverteiler betreibt eine App zur Störungsmeldung und ein Disponierungssystem für Außendienstteams. Ein gemeinsames Team von achtzehn Personen baut und betreibt beides. Die Betriebsleute im Team verbringen die meiste Zeit mit manueller Arbeit: hängende Jobs neu starten, Datenfeeds anpassen und auf Alarme antworten. Die Leiterin der Gruppe stellt fest, dass ihnen wenig Zeit für Verbesserung bleibt, und zwei von ihnen haben darum gebeten, in andere Teams zu wechseln.

Der Teamleiter schlägt einen von SRE inspirierten Ansatz vor. Für die Störungsmelde-App setzt das Team zwei Indikatoren: den Anteil erfolgreicher Meldungen und die Zeit bis zur Anzeige einer Bestätigung. Es vereinbart mit der Leitung des Kundenservices ein lockeres Ziel und ein monatliches Fehlerbudget und schreibt eine einseitige Richtlinie: wenn mehr als drei Viertel des Budgets verbraucht sind, warten riskante Releases. Das Team bittet die Ingenieure, einen Monat lang Toil zu protokollieren. Das Protokoll zeigt, dass ein Drittel ihrer Zeit in den Neustart eines fehlschlagenden Datenimport-Jobs und in manuelle Anpassungen nach Stürmen geht, wenn die Nachfrage steigt. Sie setzen eine Obergrenze von der Hälfte ihrer Zeit für Toil, beschließen, zuerst die Ursache des Import-Jobs zu beheben, und automatisieren die Sturmanpassungen mit einem Skript, das Grenzen und ein Protokoll hat. Alarme werden so justiert, dass nur für Nutzende sichtbare Symptome den Ingenieur in Bereitschaft alarmieren.

Vier Monate später ist Toil auf etwa ein Drittel der Zeit des Teams gefallen, der Import-Job schlägt nicht mehr fehl, und die Fehlerbudget-Richtlinie wurde einmal genutzt, in einem Monat mit einem Lieferantenausfall, um ein Feature-Release zu verschieben. Schwierigkeiten bleiben. Das Disponierungssystem hat noch keine Ziele, und die Leitung des Kundenservices war zweimal versucht, die Budgetrichtlinie für dringende Features zu überstimmen. Der Teamleiter und die Leitung vereinbaren, Überstimmungen monatlich zu prüfen und als Nächstes Ziele für die Disposition zu setzen. Sie lernen auch, dass die "Obergrenze" ein Richtwert ist, kein Versprechen: nach einem großen Sturm stieg Toil zwei Wochen lang weit über die Hälfte, und sie müssen entscheiden, was sie streichen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams nehmen an der Zielsetzung teil und respektieren das Budget. Bauen Sie Betreibbarkeit in Features ein, akzeptieren Sie, dass Toil zu dem Team zurückkehrt, das ihn verursacht, und helfen Sie beim Automatisieren. Behandeln Sie ein verbrauchtes Budget als Information über den Service, nicht als Strafe.

### Service- und Betriebsteams

Betriebsteams leisten womöglich die SRE-Arbeit oder übernehmen ihre Ideen. Messen Sie Toil, schützen Sie Zeit für Engineering und schieben Sie wiederkehrende Arbeit an ihre Quelle zurück. Nutzen Sie Ziele, um zu erklären, warum manche Arbeit abzulehnen ist.

### Führung und Governance

Führungskräfte müssen die Obergrenze für Toil und die Fehlerbudget-Regel stützen; ohne Rückhalt scheitern sie. Verlangen Sie Ziele und Budgetstand, nicht eine Zählung von Incidents. Schaffen Sie Zeit für Engineering-Arbeit und seien Sie bereit, zu Features nein zu sagen, wenn das Budget verbraucht ist.

### Kunden und Nutzer

Kunden und Nutzende gewinnen durch klare Servicestufen und schnellere Wiederherstellung, wenn etwas ausfällt. Sagen Sie dem Team, was am meisten zählt, damit die Ziele Ihre Erfahrung widerspiegeln. Erwarten Sie ehrliche Gespräche über Zielkonflikte zwischen neuen Features und Verlässlichkeit.

## Typische Fehlerbilder

- **Den Titel kopieren.** Der Betrieb wird umbenannt, und nichts ändert sich. Übernehmen Sie stattdessen zuerst Ziele, Budgets und Toil-Messgrößen.
- **Ein Fehlerbudget, das niemand respektiert.** Features überstimmen es jedes Mal. Vereinbaren Sie stattdessen die Regel mit den Product Ownern und prüfen Sie Überstimmungen.
- **Keine Zeit für Engineering.** Toil füllt die Woche. Begrenzen Sie ihn stattdessen und schützen Sie Projektzeit.
- **Das Falsche automatisieren.** Eine seltene Aufgabe wird automatisiert, während die häufige bleibt. Reihen Sie stattdessen nach Zeit und Häufigkeit.
- **Perfektionsziele.** Ziele verlangen 100 Prozent. Setzen Sie stattdessen lockere Ziele aus den Bedürfnissen der Nutzenden und verschärfen Sie sie mit Daten.
- **Ein Verlässlichkeitsteam als Abladeplatz.** Die Entwicklung schickt ihm alle Betriebsarbeit. Schicken Sie stattdessen überschüssige Arbeit an ihre Quelle zurück.
- **Googles Maßstab kopieren.** Praktiken, die eine große Organisation brauchen, werden von einer kleinen übernommen. Nehmen Sie stattdessen die Ideen, die passen, etwa Ziele und Postmortems.
- **Menschen ignorieren.** Bereitschaftslast brennt Menschen aus. Begrenzen Sie stattdessen Ereignisse pro Schicht und teilen Sie den Plan.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Ziele und Budgets | Verlässlichkeitsziele sind informell | Einige Services haben Ziele | Wichtige Services haben Ziele und eine vereinbarte Fehlerbudget-Richtlinie | Budgets leiten Releases, und Richtlinienüberstimmungen werden geprüft | Ziele und Budgets sind über abhängige Services abgestimmt |
| Toil und Automatisierung | Toil wird nicht gemessen | Einige Teams schätzen Toil | Toil wird gemessen und begrenzt; Automatisierungsarbeit wird geplant | Toil-Quellen und Einsparungen werden verfolgt und verringert | Automatisierung wird geteilt, und Toil wird über Teams hinweg verringert |
| Notfallreaktion | Reaktion wird improvisiert | Einige Playbooks und ein Plan existieren | Rollen, Playbooks und schuldzuweisungsfreie Postmortems sind Standard | Ereignislast und Reparaturzeiten werden gemessen und verbessert | Reaktion wird geübt und über Teams und Lieferanten koordiniert |
| Änderung und Kapazität | Änderungen sind riskant und manuell | Einige Rollouts sind gestaffelt | Schrittweiser Rollout und Kapazitätsplanung sind Routine | Änderungsfehler und Kapazitätsprognosen werden gemessen | Änderungs- und Kapazitätspraktiken werden in der Organisation geteilt |

## Checkliste

- [ ] Mindestens ein Service hat Indikatoren und ein lockeres Ziel, über die Zeit gemessen.
- [ ] Eine Fehlerbudget-Richtlinie ist mit den Product Ownern vereinbart und aufgeschrieben.
- [ ] Toil wird mit einer einheitlichen Definition gemessen, und die größten Quellen sind bekannt.
- [ ] Eine Obergrenze für Toil existiert und wird überprüft.
- [ ] Zeit für Engineering-Projekte ist geplant und geschützt.
- [ ] Die Bereitschaftslast wird gemessen, und Alarme sind handlungsfähig.
- [ ] Playbooks existieren für die häufigsten Ausfälle und wurden erprobt.
- [ ] Rollouts sind schrittweise, und Rollbacks sind erprobt.
- [ ] Bedeutende Incidents und Beinahe-Vorfälle erhalten schuldzuweisungsfreie Postmortems mit Maßnahmen, die Verantwortliche haben.
- [ ] Wir haben bewusst gewählt, wie Verlässlichkeitsarbeit organisiert ist.

## KI-Prompts

**Zweck: Ihre Arbeit als Toil, Engineering oder Gemeinkosten einordnen.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Zweck: eine Fehlerbudget-Richtlinie entwerfen.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Toil-Posten wählen, der zuerst automatisiert wird.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Playbook-Eintrag schreiben.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): nutzen Sie ihn, um einen fairen Plan mit Grenzen für Ereignisse pro Schicht zu entwerfen.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um die Playbooks zu schreiben, die die Reparatur beschleunigen.
- [postmortem](../../../../skills/postmortem/SKILL.md): nutzen Sie ihn, um schuldzuweisungsfreie Reviews durchzuführen und Maßnahmen zu verfolgen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): nutzen Sie ihn, um zu prüfen, dass Verlässlichkeitsentwürfe funktionieren, indem Ausfälle sicher herbeigeführt werden.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um Kapazität als an die Nachfrage gebundene Ingenieursaufgabe zu planen.

## Wichtige Quellen

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): die Definition von SRE, die 50-Prozent-Obergrenze, die Grundsätze und die Spaltung von Entwicklung und Betrieb, die es vermeiden will.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): die Definition von Toil und die Gründe, ihn zu begrenzen.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): die Ökonomie der Verlässlichkeit und das Fehlerbudget.
- **Site reliability engineering** (Wikipedia): eine breitere Zusammenfassung der Disziplin, Einführungsmodelle, Verbreitungsumfrage und weiterführende Literatur.

## Referenzen

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
