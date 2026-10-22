# Incident Management

**Das Incident Management stellt einen beeinträchtigten Service so schnell wieder her, wie es sicher ist, und die agile Gewohnheit, die es wirksam macht, sind klare Rollen unter Druck, gefolgt von einer schuldzuweisungsfreien Auswertung, die jeden Incident in eine Änderung verwandelt.**

## Warum das wichtig ist

Incidents sind der Moment, in dem ein Service beurteilt wird. Nutzende erinnern sich nicht an die Monate guter Verfügbarkeit; sie erinnern sich an den Ausfall und daran, wie er bewältigt wurde. Ein Team, das im Voraus geklärt hat, wer was tut, wie es kommuniziert und wann es Hilfe holt, stellt den Service schneller wieder her und macht weniger Fehler als eines, das improvisiert.

Agile Teams, die betreiben, was sie bauen, bearbeiten Incidents oft informell. Das funktioniert, bis ein Incident groß ist, mehrere Teams betrifft oder nachts geschieht. Dann zeigt sich das Fehlen von Rollen und Aufzeichnungen: Ingenieure stürzen sich auf das technische Problem, niemand informiert die Kunden, und zwei Personen nehmen widersprüchliche Änderungen vor. Die ITSM-Praktik Incident Management bietet zusammen mit Praktiken aus dem Site Reliability Engineering erprobte Wege, das zu verhindern.

Der [Wikipedia-Artikel zum Incident Management](https://en.wikipedia.org/wiki/Incident_management) deckt mehrere Felder ab, vom Notfalleinsatz bis zur Computersicherheit. Für das IT-Service-Management sagt er, das Ziel sei, den normalen Service innerhalb des vereinbarten Service-Levels so schnell wie möglich wiederherzustellen, zitiert ITIL 2011 mit der Definition eines Incidents als ungeplante Unterbrechung eines IT-Services oder Minderung seiner Qualität und nennt drei Herausforderungen: Alarmrauschen, langwierige Problemlösung und die Schwierigkeit, Ausfälle vorherzusagen. Für Einzelheiten stützt sich dieses Thema stark auf zwei Kapitel aus Googles Buch *Site Reliability Engineering*, die einen Ansatz mit Einsatzleitung (Incident Command) und schuldzuweisungsfreie Postmortems aus der Praxis einer großen Organisation beschreiben. Betrachten Sie diese Kapitel als einen gut dokumentierten Ansatz, nicht als den einzigen.

## Kernkonzepte

### Was ein Incident ist

Ein **Incident** ist im ITSM-Gebrauch eine ungeplante Unterbrechung eines Services oder eine Minderung seiner Qualität. Der ITSM-Artikel schließt auch eine "mögliche" Störung ein. Ein Incident ist nicht dasselbe wie ein **Problem**, die zugrunde liegende Ursache, oder ein **Service-Request**, eine Routinebitte (siehe Thema 3.3 — Problem Management und Thema 3.6 — Service-Request-Management). Die drei auseinanderzuhalten ist wichtig, weil jedes mit einem anderen Ziel gesteuert wird: Service wiederherstellen, Ursachen beseitigen und Routinebedarf erfüllen.

### Das Ziel: Service wiederherstellen, Beweise sichern

Das erste Ziel des Incident Managements ist, den Service wiederherzustellen. Das SRE-Kapitel zur Bewältigung von Incidents fügt ein zweites hinzu: die Beweise sichern, die später nötig sind, um die Grundursache zu finden. Die eigenen bewährten Praktiken des Kapitels besagen in diesem Sinne, die Wiederherstellung des Services und die Sicherung der Beweise zu priorisieren. Die Behebung der Ursache kann später kommen, im Problem Management.

### Warum ungesteuerte Incidents schieflaufen

Das SRE-Kapitel, geschrieben von Andrew Stribblehill, nutzt ein ausführliches Beispiel einer Bereitschaftsingenieurin, deren Ausfall sich zu einem Totalausfall ausweitet. Es nennt drei Gefahren ungesteuerter Incidents:

- **Ein scharfer Fokus auf das technische Problem.** Ingenieure, die in eine Behebung vertieft sind, verlieren die Eindämmung und das größere Bild aus den Augen.
- **Schlechte Kommunikation.** Niemand weiß, was andere tun, und Stakeholder bleiben uninformiert.
- **Freelancing.** Unkoordinierte Änderungen, etwa ein Deployment in letzter Minute, verschlimmern die Lage.

### Rollen unter Druck

Das Kapitel gründet seinen Ansatz auf das Incident Command System, das aus dem Notfalleinsatz stammt (der Wikipedia-Artikel zum Incident Management erwähnt es ebenfalls). Seine Hauptideen:

| Rolle | Was sie tut |
|---|---|
| **Incident Commander** | Hält den übergeordneten Stand, strukturiert die Reaktion, räumt Hindernisse aus dem Weg und übernimmt jede noch nicht delegierte Rolle |
| **Operations Lead** | Wendet Werkzeuge auf das Problem an; nur das Operations-Team ändert während eines Incidents das System |
| **Communications Lead** | Ist das öffentliche Gesicht der Reaktion; gibt regelmäßige Updates heraus und hält das Incident-Dokument aktuell |
| **Planning Lead** | Kümmert sich um längerfristige Fragen wie das Anlegen von Fehlern, die Organisation von Übergaben und das Verfolgen von Abweichungen vom Normalzustand, damit Änderungen zurückgenommen werden können |

Das Kapitel nennt das Prinzip eine rekursive Trennung von Verantwortlichkeiten. Klare Rollen geben Menschen Autonomie, weil sie Kollegen nicht hinterfragen müssen, und eine überlastete Person bittet um mehr Personal und delegiert Teile der Arbeit. Übergaben zwischen Commandern sind ausdrücklich und werden bestätigt.

### Das Live-Incident-Dokument

Das Kapitel sagt, die wichtigste Pflicht des Commanders sei, ein Live-Dokument über den Stand des Incidents zu führen, idealerweise von mehreren Personen gleichzeitig bearbeitbar. Es kann unordentlich sein, muss aber nützlich bleiben, mit wichtiger Information oben, und wird für die spätere Analyse aufbewahrt. Ein gemeinsamer Kanal oder ein physischer Raum dient als Kommandostand.

### Wann ein Incident auszurufen ist

Das Kapitel empfiehlt, einen Incident früh auszurufen und nicht erst Stunden nach der Verschlimmerung eines Problems. Es schlägt vor, ein Ereignis als Incident zu behandeln, wenn ein zweites Team zur Behebung einbezogen werden muss, wenn der Ausfall für Kunden sichtbar ist oder wenn er nach einer Stunde konzentrierter Analyse ungelöst bleibt. Das sind Faustregeln einer Organisation. Ihre eigenen Schwellen sollten Ihre Services und Nutzenden widerspiegeln.

### Priorität und Schweregrad

Die für diesen Leitfaden gelesenen Quellen definieren keine Prioritäts- oder Schweregrade, und der Wikipedia-Artikel nennt keine. In der Praxis definieren Teams Stufen aus der Auswirkung auf Nutzende und der Dringlichkeit des Bedarfs und entscheiden im Voraus, wer auf welcher Stufe gerufen wird. Halten Sie das Schema kurz, mit Beispielen, und prüfen Sie es, indem Sie es auf vergangene Incidents anwenden.

### Kommunikation

Kommunikation hat zwei Zielgruppen. Einsatzkräfte müssen den Stand und wer was tut wissen. Stakeholder und Nutzende müssen wissen, was betroffen ist, was getan wird und wann das nächste Update zu erwarten ist. Die Communications Lead im SRE-Kapitel bedient die zweite Zielgruppe und führt das Protokoll für die erste. Bei öffentlich sichtbaren Ausfällen ist ein Plan für die Krisenkommunikation nützlich (siehe den Skill zur Krisenkommunikation unten).

### Schuldzuweisungsfreie Postmortems

Das SRE-Kapitel zur Postmortem-Kultur legt die Lernhälfte dar. Ein Postmortem hält den Incident, seine Auswirkung, die Eindämmung, die Grundursachen und Folgemaßnahmen fest. Seine Ziele sind, den Incident zu dokumentieren, alle beitragenden Grundursachen zu verstehen und wirksame Vorbeugemaßnahmen einzuführen. Es ist schuldzuweisungsfrei: Es benennt beitragende Ursachen, ohne Einzelpersonen oder Teams zu beschuldigen, und nimmt an, alle "hatten gute Absichten und taten mit der Information, die sie hatten, das Richtige". In den Worten des Kapitels: "Man kann Menschen nicht 'reparieren', aber man kann Systeme und Prozesse reparieren."

Das Kapitel schlägt vor, Postmortem-Auslöser im Voraus zu definieren, etwa für Nutzende sichtbare Ausfallzeit über einer Schwelle, jeden Datenverlust, einen Eingriff der Bereitschaft wie einen Rollback, eine Lösungszeit über einer Schwelle oder einen Monitoring-Ausfall. Es sagt auch: "Ein Postmortem ohne Überprüfung hätte ebenso gut nie existieren können", und empfiehlt deshalb regelmäßige Review-Sitzungen und ein gemeinsames Repository. Es beschreibt kulturbildende Aktivitäten wie einen monatlichen Newsletter, Lesekreise und ein "Glücksrad des Unglücks" (Wheel of Misfortune), in dem vergangene Incidents nachgespielt werden.

### Schwere Incidents

Viele ITSM-Praktiken definieren einen **Major Incident** als einen, der eine förmlichere Reaktion als üblich braucht. Die hier gelesenen Quellen definieren ihn nicht, tun Sie es also in Ihren eigenen Worten: zum Beispiel ein Incident, der viele Nutzende oder einen kritischen Service betrifft und eine teamübergreifend koordinierte Reaktion braucht. Wichtig ist, dass die Menschen im Voraus wissen, was sich ändert: wer das Kommando führt, wer gerufen wird, wie oft Updates erscheinen.

### Incidents und Continuous Delivery

Incidents entstehen oft aus jüngsten Änderungen. Agile Teams sind gut platziert, aus ihnen zu lernen, weil sie oft releasen und kurze Feedbackschleifen haben. Das Lernen braucht einen Weg: Postmortem-Maßnahmen gehen mit Verantwortlichen und Terminen in den Backlog, und wiederkehrende Incidents gehen ins Problem Management. Ohne diesen Weg wird die Incident-Bearbeitung zu einer Routine der Reparatur.

## Bewährte Praktiken

1. **Entscheiden Sie im Voraus, was als Incident zählt.** Schreiben Sie eine kurze Definition mit Beispielen und senken Sie die Hürde, einen auszurufen. Die Faustregel des SRE-Kapitels lautet, früh auszurufen, wenn ein zweites Team gebraucht wird, Kunden das Problem sehen können oder eine Stunde Analyse es nicht gelöst hat.
2. **Definieren Sie einige Schweregrade mit Beispielen.** Stützen Sie sie auf die Auswirkung für Nutzende und legen Sie fest, wer auf welcher Stufe gerufen wird. Testen Sie das Schema an vergangenen Incidents und passen Sie es an.
3. **Weisen Sie zu Beginn jedes Incidents Rollen zu.** Benennen Sie einen Incident Commander, eine Operations Lead und eine Communications Lead. In kleinen Teams kann eine Person mehr als eine Rolle halten; sagen Sie es laut.
4. **Trennen Sie Beheben von Koordinieren.** Die Menschen, die das System ändern, sollten nicht auch Fragen beantworten. Lassen Sie den Commander koordinieren und die Communications Lead informieren.
5. **Führen Sie ein Live-Protokoll.** Nutzen Sie ein gemeinsames Dokument oder einen Kanal mit Zeitstempeln, Entscheidungen und vorgenommenen Änderungen. Es unterstützt Übergaben und gibt dem Postmortem sein Material.
6. **Erlauben Sie nur autorisierte Änderungen.** Das SRE-Kapitel sagt, nur das Operations-Team solle das System während eines Incidents ändern. Legen Sie fest, wer was ändern darf, und bitten Sie andere, mit dem Commander zu sprechen.
7. **Kommunizieren Sie nach Zeitplan.** Vereinbaren Sie das Update-Intervall für jeden Schweregrad und halten Sie sich daran, auch wenn es nichts Neues gibt. Schweigen erzeugt Sorge und doppelte Fragen.
8. **Übergeben Sie ausdrücklich.** Wenn ein Commander oder eine Einsatzkraft abgelöst wird, sagen Sie es laut und lassen Sie die andere Person es bestätigen. Unklare Übergaben verlieren Kontext.
9. **Üben Sie.** Führen Sie den Incident-Prozess bei kleinen Ereignissen und in Übungen durch, damit die Rollen vor einem schweren Ausfall vertraut sind. Lassen Sie Menschen durch die Rollen rotieren.
10. **Halten Sie ein schuldzuweisungsfreies Postmortem ab, wenn Ihre Auslöser erfüllt sind.** Schreiben Sie es mit den Beteiligten, konzentrieren Sie sich auf beitragende Ursachen und Systembehebungen und teilen Sie es breit (siehe den Skill Postmortem unten).
11. **Verwandeln Sie Maßnahmen in Backlog-Posten.** Geben Sie jeder Folgemaßnahme eine verantwortliche Person und ein Datum und überprüfen Sie sie in einem regelmäßigen Meeting. Ein Postmortem ohne Überprüfung bewirkt keine Änderung.
12. **Speisen Sie die Belege ins Problem Management.** Verknüpfen Sie wiederholte Incidents mit einem Problem-Eintrag, damit Ursachen beseitigt und nicht nur repariert werden (siehe Thema 3.3 — Problem Management).

## Fragen zur Diskussion im Team

**Was tun wir in den ersten zehn Minuten eines Incidents, und wer entscheidet?**

Gehen Sie den letzten bedeutenden Incident Minute für Minute durch. Notieren Sie, wer die Führung übernahm, wer kommunizierte und wer was änderte. Viele Teams stellen fest, dass Rollen angenommen und nicht vereinbart waren. Die Moderation kann fragen, was geschehen wäre, wenn die übliche Leitung abwesend gewesen wäre. Vereinbaren Sie anschließend, wie Rollen beim nächsten Mal zugewiesen werden.

**Wann nennen wir etwas einen Incident, und wann warten wir?**

Sammeln Sie Beispiele für Ereignisse, die spät ausgerufen wurden. Fragen Sie, was die Beteiligten zurückhielt: nicht andere stören wollen, Unsicherheit oder Angst vor Schuldzuweisung. Vergleichen Sie mit den Auslösern des SRE-Kapitels. Vereinbaren Sie eine Schwelle und einen Weg, einen Incident ohne Aufhebens auszurufen.

**Wie erfahren unsere Nutzenden während eines Ausfalls, was geschieht, und wie oft?**

Betrachten Sie den letzten Ausfall aus Sicht der Nutzenden. Fragen Sie, wer es ihnen sagte, was ihnen gesagt wurde und wie lang die Lücke war. Oft ist die Antwort langes Schweigen, gefolgt von einer kurzen Notiz. Fragen Sie, wer die Kommunikation verantworten sollte und was die erste Nachricht sagen sollte. Vereinbaren Sie eine Vorlage und einen Update-Rhythmus.

**Was hat unser letztes Postmortem geändert, und woher wissen wir das?**

Fragen Sie nach den Maßnahmen, Verantwortlichen und dem Status. Wurde keine abgeschlossen, fragen Sie warum: keine verantwortliche Person, keine Zeit oder unklarer Wert. Finden Sie heraus, ob Postmortems von jemandem über das Team hinaus gelesen werden. Vereinbaren Sie eine regelmäßige Sitzung, um offene Maßnahmen zu überprüfen.

**Fühlen sich Menschen sicher zu sagen, was sie falsch gemacht haben?**

Diese Frage prüft Schuldzuweisungsfreiheit. Bitten Sie die Beteiligten zu beschreiben, wie sie sich fühlen würden, in einem Postmortem über den eigenen Fehler zu schreiben. Achten Sie auf Angst vor Konsequenzen und Beispiele, in denen Schuld zugewiesen wurde. Verlangen Sie keine Offenheit; fragen Sie, was Team und Führungskräfte tun müssten, um sie sicher zu machen. Wählen Sie einen sichtbaren Schritt.

**Wie üben wir, und wann haben wir es zuletzt getan?**

Fragen Sie, ob das Team eine Übung oder einen simulierten Incident durchgeführt hat und was es gelernt hat. Wenn nie, besprechen Sie einen kleinen Anfang, etwa einen vergangenen Incident in einer Stunde nachzuspielen. Das SRE-Kapitel erwähnt das Üben des Prozesses bei Routineänderungen und Übungen zur Notfallwiederherstellung. Planen Sie eine für das nächste Quartal.

## In der Praxis: ein agiles ITIL-Beispiel

Das Kundenportal eines regionalen Energieversorgers lässt Haushalte Ausfälle melden und Rechnungen einsehen. Ein Team aus elf Personen baut und betreibt es, mit einem Bereitschaftsplan für vier. Während eines Sturms schnellt der Meldeverkehr hoch, das Portal wird langsam und fällt dann aus. Die Bereitschaftsingenieurin versucht einen Datenbankneustart, ein zweiter Ingenieur deployt gleichzeitig eine Konfigurationskorrektur, und ein dritter rollt ein früheres Release zurück. Das Portal ist nach drei Stunden wieder da, und das Callcenter, das nie informiert wurde, nahm Tausende wütender Anrufe entgegen.

Beim Postmortem sieht das Team die drei Gefahren aus dem SRE-Kapitel: Alle konzentrierten sich auf die technische Behebung, niemand kommunizierte, und Änderungen kollidierten. Sie schreiben einen einseitigen Incident-Prozess. Jede Person darf einen Incident ausrufen, und ein zweites beteiligtes Team, Kundensichtbarkeit oder eine Stunde ohne Fortschritt heißt, dass sie es müssen. Die Bereitschaftsingenieurin wird Operations Lead, und ein Plan benennt aus dem weiteren Team einen Incident Commander und eine Communications Lead. Nur die Operations Lead ändert die Produktion. Die Communications Lead sendet alle 30 Minuten ein Update an das Callcenter und die Leitstelle. Ein gemeinsamer Kanal enthält das Live-Protokoll.

Beim nächsten Sturm wird das Portal wieder langsam, innerhalb von zehn Minuten wird ein Incident ausgerufen, und der Service ist nach 70 Minuten wiederhergestellt, wobei das Callcenter durchgehend Updates erhält. Probleme bleiben. Der Commander-Plan hat Lücken an Feiertagen, und das Team stellt fest, dass eine Abhängigkeit, ein Anbieter für Textnachrichten, keine Eskalationskontaktperson hat. Das Postmortem erzeugt zwei Maßnahmen mit Verantwortlichen: den Plan mit einer Ersatzregelung vervollständigen und mit dem Anbieter einen Eskalationsweg vereinbaren. Das Team plant eine Wiederholung des Sturm-Incidents für neue Mitglieder des Plans.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams verursachen und beheben viele Incidents. Treten Sie dem Bereitschaftsplan bei oder bieten Sie ihm direkte Unterstützung und behandeln Sie Postmortem-Maßnahmen als Backlog-Posten. Bauen Sie die Mittel, Probleme zu erkennen und zurückzurollen, in Ihre Releases ein. Nehmen Sie an Übungen teil, damit Rollen vertraut sind.

### Service- und Betriebsteams

Betriebsteams verantworten den Prozess. Halten Sie ihn kurz und geübt, geben Sie den Menschen die Befugnis zu handeln und führen Sie Aufzeichnungen, die andere nutzen können. Teilen Sie, was Sie lernen, mit Delivery-Teams und tragen Sie die Erkenntnisse ins Problem Management und in die Planung.

### Führung und Governance

Führungskräfte prägen die Kultur. Verlangen Sie Postmortems und lesen Sie sie, loben Sie Menschen, die Probleme melden, und weigern Sie sich, nach jemandem zum Beschuldigen zu suchen. Schützen Sie die Zeit zum Üben und zum Abschließen von Maßnahmen. Entscheiden Sie, wer Geld ausgeben oder die höchste Reaktionsstufe auslösen darf.

### Kunden und Nutzer

Kunden und Nutzende brauchen zeitnahe, ehrliche Updates und einen klaren Weg, Probleme zu melden. Fragen Sie Ihren Anbieter, was Sie bei einem Ausfall erwarten können und wie Sie informiert werden. Wenn ein Postmortem mit Ihnen geteilt wird, lesen Sie es daraufhin, was der Anbieter ändern wird.

## Typische Fehlerbilder

- **Keine Rollen.** Alle arbeiten an der technischen Behebung, und niemand koordiniert oder kommuniziert. Benennen Sie stattdessen jedes Mal einen Incident Commander, eine Operations Lead und eine Communications Lead.
- **Spät ausrufen.** Menschen warten, bis das Problem schlimm ist. Setzen Sie stattdessen niedrige, klare Schwellen und machen Sie das Ausrufen normal.
- **Freelancing.** Mehrere Personen ändern gleichzeitig das System. Erlauben Sie stattdessen Änderungen nur über die Operations Lead.
- **Schweigen.** Nutzende und Stakeholder hören nichts. Vereinbaren Sie stattdessen ein Update-Intervall und eine Vorlage.
- **Schuldzuweisung.** Ein Postmortem sucht die Person, die schuld ist. Fragen Sie stattdessen, was im System den Fehler zuließ, und beheben Sie das.
- **Postmortems, die ins Leere laufen.** Maßnahmen haben keine Verantwortlichen. Legen Sie sie stattdessen mit Terminen in den Backlog und überprüfen Sie sie regelmäßig.
- **Nie üben.** Das erste Mal, dass der Prozess genutzt wird, ist ein schwerer Ausfall. Proben Sie stattdessen bei kleinen Ereignissen und in Übungen.
- **Reparatur als Lösung behandeln.** Derselbe Incident kehrt wieder. Verknüpfen Sie stattdessen Wiederholungen mit dem Problem Management und beheben Sie die Ursache.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Erkennung und Ausrufen | Incidents werden durch Nutzerbeschwerden bemerkt | Es gibt einige Alarme, und einige Incidents werden ausgerufen | Schriftliche Schwellen und ein einfaches Schweregradschema werden einheitlich genutzt | Erkennungszeit und Ausrufezeit werden verfolgt und verringert | Erkennung und Ausrufen werden über Teams und Lieferanten geteilt |
| Reaktion und Rollen | Einsatzkräfte improvisieren | Einige Teams benennen eine Leitung | Rollen, Übergaben und ein Live-Protokoll sind Standard | Reaktionszeiten und Rollenleistung werden überprüft | Die Reaktion wird über Teams und Lieferanten koordiniert, mit gemeinsamen Übungen |
| Kommunikation | Updates sind ad hoc | Einige Updates gehen an einige Zielgruppen | Update-Rhythmus und Vorlagen gibt es für jeden Schweregrad | Die Rechtzeitigkeit der Kommunikation wird gemessen und Nutzende werden gefragt | Kommunikation wird mit Kunden und Partnern koordiniert |
| Lernen | Reviews folgen nur den schlimmsten Incidents | Einige Postmortems werden geschrieben | Schuldzuweisungsfreie Postmortems folgen definierten Auslösern, mit verfolgten Maßnahmen | Maßnahmenabschluss und Wiederkehr werden gemessen | Erkenntnisse werden über Teams geteilt und speisen organisationsweite Veränderung |

## Checkliste

- [ ] Wir haben eine kurze Definition eines Incidents mit Beispielen.
- [ ] Wir haben ein kleines Schweregradschema mit Beispielen für Nutzerauswirkung und Rufbereitschaftslisten.
- [ ] Jeder Incident beginnt damit, einen Incident Commander, eine Operations Lead und eine Communications Lead zu benennen.
- [ ] Für jeden Incident wird ein Live-Protokoll geführt.
- [ ] Nur die benannte Operations Lead ändert während eines Incidents die Produktion.
- [ ] Update-Intervalle sind für jeden Schweregrad vereinbart.
- [ ] Postmortem-Auslöser sind aufgeschrieben.
- [ ] Postmortems sind schuldzuweisungsfrei, werden geteilt und überprüft.
- [ ] Jede Postmortem-Maßnahme hat eine verantwortliche Person und ein Datum, und offene Maßnahmen werden überprüft.
- [ ] Wir haben den Prozess in den letzten sechs Monaten geübt.

## KI-Prompts

**Zweck: aus Ihrer aktuellen Praxis einen einseitigen Incident-Prozess entwerfen.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein Incident-Protokoll in den Entwurf eines schuldzuweisungsfreien Postmortems verwandeln.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Zweck: ein Status-Update zum Incident für nichttechnische Stakeholder schreiben.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Zweck: eine kleine Incident-Übung entwerfen.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): nutzen Sie ihn, um den Plan zu schreiben, der Rollen, Schwellen und Kommunikation Ihres Teams festlegt.
- [postmortem](../../../../skills/postmortem/SKILL.md): nutzen Sie ihn, um eine schuldzuweisungsfreie Auswertung durchzuführen und Maßnahmen nach einem Incident festzuhalten.
- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um bekannte Behebungen in kurze Verfahren für die Einsatzkraft zu verwandeln.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): nutzen Sie ihn, um einen fairen Bereitschaftsplan mit Vertretung und Übergaben zu entwerfen.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): nutzen Sie ihn, um zu planen, was Sie Nutzenden, Personal und der Öffentlichkeit bei einem schweren Ausfall sagen.

## Wichtige Quellen

- **Managing Incidents** (Andrew Stribblehill, in *Site Reliability Engineering*, Google, sre.google): die klarste öffentliche Darstellung der Einsatzleitung für Serviceteams.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): das Plädoyer für schuldzuweisungsfreie Postmortems, mit Auslösern und Ideen zum Kulturaufbau.
- **Incident management** (Wikipedia): ein Überblick über mehrere Felder mit einem Abschnitt zum IT-Service-Management.
- **IT service management** (Wikipedia): die Definition des Incidents und der Platz der Incident-Bearbeitung im Service Desk.

## Referenzen

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
