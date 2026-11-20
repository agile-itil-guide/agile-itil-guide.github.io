# Wissensmanagement

**Wissensmanagement macht das, was Menschen wissen, anderen verfügbar, wenn sie es brauchen, und der Ansatz, der für agile Teams funktioniert, ist, Wissen als Nebenprodukt der Arbeit festzuhalten, es kurz und mit Verantwortlichen zu halten und Schreiben mit Gespräch zu verbinden.**

## Warum das wichtig ist

Jeder Service hängt von Wissen ab: wie er funktioniert, was zuvor schiefgegangen ist, wie man es behebt und warum er so gebaut wurde. Wenn dieses Wissen nur in wenigen Köpfen lebt, ist der Service zerbrechlich. Ein Urlaub, eine Kündigung oder eine schlechte Nacht in der Bereitschaft kann aus einer Behebung von zehn Minuten einen Ausfall von zehn Stunden machen. Wissensmanagement ist die Praktik, sicherzustellen, dass die Menschen, die es wissen müssen, es herausfinden können.

Die agile Tradition neigt zu Gespräch und funktionierender Software mehr als zu Dokumentation, und die Autoren des Agilen Manifests wurden dafür kritisiert (siehe Thema 1.1 — Das Agile Manifest). Eine faire Lesart ist, dass Dokumentation sich ihren Platz verdienen muss. Wissensmanagement gibt einen Weg zu entscheiden, was ihn sich verdient: Wissen, das oft genutzt wird, teuer wiederzuentdecken ist oder von zu wenigen Menschen gehalten wird. Für den Rest dienen Gespräch und Pairing möglicherweise besser.

Der [Wikipedia-Artikel zum Wissensmanagement](https://en.wikipedia.org/wiki/Knowledge_management) ist breit und beschreibt das Feld als die Verarbeitung von Wissen zur Erreichung organisatorischer Ziele, unterschieden von Inhalts- oder Informationsmanagement. Er verzeichnet Geschichte, Modelle, Ansätze, Förderfaktoren, Hindernisse und Kritik und sagt nichts Konkretes zu IT-Services. Dieses Thema nutzt die allgemeinen Ideen des Artikels und wendet sie auf Serviceteams an, wobei es kenntlich macht, wo es anwendet und nicht berichtet.

## Kernkonzepte

### Was Wissensmanagement ist

Wikipedia beschreibt Wissensmanagement (WM) als Prozesse für organisatorisches Bewusstsein, Lernen, Zusammenarbeit und Innovation, die Wissen nutzen und teilen, um die Ziele einer Organisation zu unterstützen. Es merkt an, dass Praktiken wie Lehrlingsausbildung, Unternehmensbibliotheken und Mentoring den Begriff lange vorwegnehmen. WM entstand als Disziplin Anfang der 1990er Jahre, wobei Akademiker wie Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport und Baruch Lev halfen, das Feld zu entwickeln. Der Artikel sagt, ISO 9001:2015 habe eine Anforderung an "organisatorisches Wissen" hinzugefügt.

### Implizites und explizites Wissen

Der Artikel unterscheidet zwei Formen. **Implizites Wissen** (Tacit Knowledge) ist verinnerlicht und oft nicht bewusst bekannt. **Explizites Wissen** wird bewusst gehalten und lässt sich leicht vermitteln. Nonakas SECI-Modell (Sozialisation, Externalisierung, Kombination, Internalisierung), das der Artikel dem Buch von Nonaka und Takeuchi von 1995 zuschreibt, beschreibt eine Spirale zwischen den beiden. Der Artikel merkt auch an, dass spätere Forschende die Aufteilung als Übervereinfachung bezeichneten.

Für ein Serviceteam ist die Unterscheidung praktisch. Ein erfahrener Ingenieur kann oft spüren, dass ein Alarm wahrscheinlich Rauschen ist oder ein bestimmtes Release riskant, und kann nicht leicht aufschreiben, warum. Ein Teil dieses Gespürs lässt sich in Runbooks und Prüfungen überführen; ein Teil lässt sich nur durch gemeinsame Arbeit teilen.

### Kodifizierung und Personalisierung

Nach Hansen und Kollegen (1999) unterscheidet der Artikel zwei Strategien. **Kodifizierung** speichert Wissen in Ablagen, damit andere es wiederverwenden können. **Personalisierung** teilt Wissen durch direkten Kontakt zwischen Menschen. Jede passt zu anderem Wissen:

| Strategie | Passt zu | Beispiele in einem Serviceteam |
|---|---|---|
| Kodifizierung | Wiederholten, gut verstandenen Aufgaben | Runbooks, Known-Error-Einträge, Servicebeschreibungen, Anleitungsartikel |
| Personalisierung | Komplexen, sich ändernden oder urteilslastigen Angelegenheiten | Pairing in der Bereitschaft, Mitlaufen, Praxisgemeinschaften, Entwurfsdiskussionen |

Die meisten Teams brauchen beides. Eine Wissensdatenbank mit Rezepten lehrt kein Urteilsvermögen, und Gespräch allein skaliert nicht auf die Nachtschicht.

### Praxisgemeinschaften

Der Artikel führt Praxisgemeinschaften (Communities of Practice) unter den Sichtweisen auf WM auf. In einer Serviceorganisation können sie so einfach sein wie ein regelmäßiges informelles Treffen von Menschen, die an ähnlichen Problemen arbeiten, über Teams hinweg, etwa Datenbankingenieure oder Desk-Analysten. Sie verbreiten Wissen und Normen und geben Menschen einen Ort zum Fragen.

### Was festzuhalten ist

Nicht alles verdient eine Aufzeichnung. Nützliche Kandidaten in einem Serviceteam sind:

- **Wie man einen Service wiederherstellt:** Runbooks und Wiederherstellungsschritte (siehe Thema 3.2 — Incident Management).
- **Known Errors und Workarounds:** Symptom, Workaround und Verantwortliche (siehe Thema 3.3 — Problem Management).
- **Servicebeschreibungen:** was ein Service tut, wer ihn verantwortet und wovon er abhängt (siehe Thema 3.8 — Service-Katalog-Management).
- **Entscheidungen und ihre Gründe:** warum ein Entwurf gewählt wurde, damit künftige Änderungen ihn nicht blind rückgängig machen.
- **Erkenntnisse aus Incidents:** Postmortems, die andere lesen können.
- **Antworten auf häufige Fragen von Nutzenden:** kurze Artikel für den Service Desk und für Self-Service.

### Förderfaktoren und Hindernisse

Der Artikel nennt Menschen und Kultur, Prozesse und Struktur sowie Technologie als Kernkomponenten. Er merkt an, dass zu den Beweggründen Innovation, kürzere Entwicklungszyklen und das Nutzbarmachen von Expertise gehören und dass Organisationen Anreize wie verpflichtende Inhaltseinreichung nutzen, sagt aber, es gebe keinen Konsens, ob Anreize wirken. Er listet Hindernisse auf wie Wissen, das nicht übertragen wird, unzureichende Bildung und den Verlust von Wissen, wenn erfahrene Beschäftigte gehen. Für Serviceteams sind die wichtigsten Hindernisse Zeitdruck, unklare Verantwortung für Inhalte, umständliche Werkzeuge und eine Kultur, die Heldentum über Teilen belohnt.

### Wissen im Arbeitsfluss

Ein praktisches Prinzip, in Service Desks weit verbreitet, ist, Wissen als Teil der Arbeit festzuhalten und nicht als getrennte Aufgabe. Wenn eine Analystin ein neues Problem löst, wird die Lösung zum Artikelentwurf, bevor das Ticket geschlossen wird. Wenn ein Ingenieur einen Incident behebt, gehen die Schritte ins Runbook. Das macht jedes Stück Arbeit zu einem kleinen Beitrag. Die für diesen Leitfaden gelesenen Quellen beschreiben keine bestimmte Methode dafür, behandeln Sie das Prinzip also als gängige Praxis zum Testen und sehen Sie, was mit Ihren Werkzeugen funktioniert.

### Kritik und Grenzen

Der Artikel verzeichnet Kritik: dass die praktische Relevanz akademischer WM-Forschung infrage gestellt wurde, dass die Unterscheidung zwischen implizitem und explizitem Wissen kritisiert wurde, dass die Wirksamkeit von Anreizen umstritten ist und dass der Schutz von Wissen Risiken wie Überschutz und Aneignung birgt. Er berichtet keine gemessenen Belege für die Wirksamkeit oder den Ertrag von WM. Für ein Serviceteam ist die Lehre bescheidener Ehrgeiz: beginnen Sie mit dem Wissen, dessen Fehlen geschadet hat, messen Sie, ob es genutzt wird, und lassen Sie fallen, was nicht.

### Wissen und organisationales Lernen

Der Artikel sagt, WM ähnele dem organisationalen Lernen, betone aber stärker Wissen als strategisches Gut und das Teilen von Information, und WM erleichtere das organisationale Lernen. Das knüpft an agiles Lernen (siehe Thema 1.10 — Agiles Lernen) und kontinuierliche Verbesserung (siehe Thema 3.15 — Kontinuierliche Verbesserung) an.

## Bewährte Praktiken

1. **Beginnen Sie mit dem Wissen, dessen Fehlen geschadet hat.** Listen Sie die letzten Incidents oder Verzögerungen auf, die durch fehlendes Wissen verursacht wurden. Beginnen Sie mit diesen Themen und nicht mit dem Versuch, alles zu dokumentieren.
2. **Halten Sie Wissen im Moment der Arbeit fest.** Machen Sie das Schreiben einer kurzen Notiz zum Teil des Abschlusses eines Incidents, einer Anfrage oder einer Änderung. Eine grobe Notiz jetzt ist wertvoller als ein polierter Artikel, der später geplant ist.
3. **Halten Sie Artikel kurz und strukturiert.** Nutzen Sie eine einheitliche Form: Symptom, Ursache falls bekannt, Schritte, wann zu eskalieren ist, Verantwortliche, Datum der letzten Überprüfung. Menschen unter Druck lesen Überschriften und nummerierte Schritte.
4. **Geben Sie jedem Artikel eine verantwortliche Person und ein Überprüfungsdatum.** Inhalt ohne Verantwortliche verfällt. Zeigen Sie das Überprüfungsdatum am Artikel, damit Lesende das Vertrauen einschätzen können.
5. **Löschen und führen Sie zusammen.** Stellen Sie Artikel ein, die niemand nutzt, und führen Sie Duplikate zusammen. Eine kleinere, aktuelle Basis ist besser als eine große, veraltete.
6. **Machen Sie ihn leicht auffindbar.** Legen Sie Wissen dorthin, wo Menschen ohnehin arbeiten, testen Sie die Suche mit echten Anfragen und verlinken Sie Artikel aus Tickets, dem Service-Katalog (ITIL schreibt "service catalogue") und Runbooks.
7. **Testen Sie Runbooks, indem Sie sie nutzen.** Bitten Sie die Person, die ein Runbook nutzen wird, ihm an einem Testfall zu folgen. Beheben Sie, was unklar ist. Das macht aus einem Dokument funktionierendes Wissen.
8. **Arbeiten Sie für das Implizite im Pair und laufen Sie mit.** Lassen Sie weniger erfahrene Menschen mit erfahrenen an echten Incidents und Änderungen arbeiten. Planen Sie das Pairing, denn es geschieht nicht, wenn alle beschäftigt sind.
9. **Unterstützen Sie Praxisgemeinschaften.** Geben Sie Menschen Zeit und einen Ort, sich über Teams hinweg zu treffen. Lassen Sie die Themen von den Mitgliedern kommen.
10. **Halten Sie Entscheidungen und Gründe fest.** Führen Sie eine kurze Aufzeichnung bedeutender Entwurfs- und Prozessentscheidungen und warum sie getroffen wurden. Das verhindert Wiederentdeckung und hilft Neulingen.
11. **Teilen Sie die Erkenntnisse.** Veröffentlichen Sie Postmortems und Problemzusammenfassungen breit, in einfacher Sprache, und fragen Sie andere Teams, was auf sie zutrifft (siehe Thema 3.2 — Incident Management).
12. **Achten Sie auf Wissensrisiko.** Listen Sie einmal im Quartal die Fähigkeiten und Systeme auf, die von einer Person abhängen, und planen Sie, sie zu verbreiten. Behandeln Sie Abgänge als Anlass zur Überprüfung.

## Fragen zur Diskussion im Team

**Was könnten wir nicht tun, wenn eine bestimmte Person einen Monat abwesend wäre?**

Bitten Sie das Team, Menschen zu nennen, deren Abwesenheit schaden würde, und warum. Listen Sie die Aufgaben auf, die von ihnen abhängen. Das ist meist eine lange Liste und für die genannten Menschen unangenehm. Rahmen Sie es als Risiko für den Service, nicht als Urteil. Die Moderation kann fragen, welche Aufgabe am dringendsten zu teilen ist und wie. Wählen Sie eine zum Anfangen.

**Was schreiben wir auf, und liest es jemand?**

Fragen Sie nach den letzten drei Dokumenten, die Menschen genutzt haben, und den letzten drei, die sie geschrieben haben. Vergleichen Sie. Die Lücke zeigt, wo Dokumentationsaufwand fehlgeleitet ist. Fragen Sie, wie eine nützliche Fassung der ungelesenen Dokumente aussähe oder ob sie gelöscht werden sollten. Vereinbaren Sie, eines einzustellen oder zu beheben.

**Wohin geht das Wissen, wenn wir etwas Neues beheben?**

Verfolgen Sie das letzte neue Problem: wer es behob, wer weiß, wie, und wo es festgehalten wurde. Lautet die Antwort "in einem Ticket" oder "in meinem Kopf", besprechen Sie, wie ein besserer Weg aussähe. Oft macht eine kleine Gewohnheit, etwa eine Vorlage beim Abschluss, einen Unterschied. Probieren Sie eine einen Monat lang aus.

**Welches Wissen wird am besten durch gemeinsame Arbeit geteilt, nicht durch Schreiben?**

Fragen Sie, wo Urteilsvermögen zählt: einen Graphen lesen, entscheiden, wann zu eskalieren ist, einen Kunden kennen. Besprechen Sie, wie Neulinge das heute lernen. Typische Antworten sind Glück und Zeit. Planen Sie eine bewusste Regelung, etwa Mitlaufen in der Bereitschaft. Vereinbaren Sie, wer mit wem im Pair arbeitet.

**Woher wissen wir, ob ein Wissensartikel noch stimmt?**

Wählen Sie einen Artikel und testen Sie ihn. Prüfen Sie die verantwortliche Person, das Überprüfungsdatum und ob die Schritte funktionieren. Viele bestehen den Test nicht. Fragen Sie, welcher Überprüfungszyklus realistisch ist und wer Artikel einstellen darf. Ziel ist ein sichtbares Vertrauenszeichen an jedem Artikel.

**Was hält uns davon ab zu teilen, was wir wissen?**

Sammeln Sie ehrliche Antworten: keine Zeit, Angst, töricht zu wirken, kein offensichtlicher Ort, keine Anerkennung. Der Wikipedia-Artikel merkt an, dass die Wirksamkeit von Anreizen umstritten ist, vermeiden Sie also einfache Antworten. Fragen Sie, welches Hindernis das Team ändern kann und welches das Management braucht. Legen Sie sich auf eine sichtbare Änderung fest.

## In der Praxis: ein agiles ITIL-Beispiel

Das Fahrgastinformationsteam einer nationalen Bahn mit vierzehn Personen betreibt die Systeme hinter den Anzeigen an Bahnhöfen und der Fahrplan-App. Der erfahrenste Ingenieur, der die Anzeigensteuerung gebaut hat, kündigt seinen Ruhestand in sechs Monaten an. Niemand sonst versteht, wie die Steuerung mit Ausfällen umgeht, und die Dokumentation ist ein 200-seitiges Entwurfsdokument, das vor zehn Jahren geschrieben wurde.

Die Teamleitung listet auf, was der Ingenieur weiß, das andere nicht wissen. Sie erhält drei Gruppen: wie man die Steuerung nach einem Ausfall wiederherstellt (explizit und wiederholbar), warum bestimmte seltsame Verhaltensweisen existieren (teils aufgeschrieben, teils im Gedächtnis) und wie man beurteilt, wann ein Fehler ernst ist (implizit). Für die erste schreibt das Team mit dem Ingenieur Runbooks und testet jedes, indem eine Kollegin ihm an einer Testeinheit folgt. Für die zweite befragt ein Paar von Ingenieuren ihn wöchentlich und schreibt kurze Entscheidungsnotizen in einen gemeinsamen Ordner, jede mit einer verantwortlichen Person. Für die dritte läuft ein weniger erfahrener Ingenieur sechs Monate lang bei jedem Bereitschafts-Incident mit ihm mit und übernimmt bei einigen die Führung, während er zusieht.

Nach sechs Monaten können drei Ingenieure Ausfälle der Steuerung bearbeiten, das 200-seitige Dokument ist durch elf kurze Runbooks und zwanzig Entscheidungsnotizen ersetzt, und das Team hat eine monatliche Sitzung, in der eine Person etwas erklärt, was sie weiß. Probleme bleiben. Zwei Runbooks scheiterten beim Test auf einer anderen Hardwareversion und mussten neu geschrieben werden, und das implizite Urteilsvermögen ist nur teilweise übertragen: Der mitlaufende Ingenieur sagt, manche Entscheidungen fühlten sich noch wie Raten an. Das Team plant eine zweite Runde des Mitlaufens mit dem Nachfolger des ausscheidenden Ingenieurs und vereinbart, die Runbooks jedes Quartal zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams halten einen Großteil des Wissens darüber, wie Services gebaut sind. Schreiben Sie kurze Runbooks und Entscheidungsnotizen als Teil Ihrer Definition of Done und testen Sie sie mit den Menschen, die sie nutzen werden. Teilen Sie Entwurfsgründe mit dem Betrieb, damit Änderungen sie nicht rückgängig machen.

### Service- und Betriebsteams

Betriebsteams erzeugen und nutzen einen Großteil des Tageswissens. Halten Sie Lösungen fest, wenn Sie Tickets schließen, halten Sie Known Errors aktuell und bitten Sie Delivery-Teams um das, was Sie brauchen. Machen Sie Artikel für den Desk und für Self-Service leicht auffindbar.

### Führung und Governance

Führungskräfte prägen, ob Teilen belohnt oder entmutigt wird. Der Wikipedia-Artikel sagt, Anreize seien umstritten, konzentrieren Sie sich also darauf, Hindernisse zu beseitigen: Geben Sie Zeit, machen Sie die Werkzeuge einfach und belohnen Sie Menschen, die anderen helfen. Verfolgen Sie Wissensrisiko, etwa Einzelpersonen als alleinige Expertise, wie andere Service-Risiken.

### Kunden und Nutzer

Kunden und Nutzende profitieren von klaren Antworten und Self-Service-Artikeln. Sagen Sie dem Team, wenn ein Artikel falsch ist oder fehlt. Fragen Sie Anbieter, wie sie aus Incidents lernen und wie sie das Gelernte mit Ihnen teilen.

## Typische Fehlerbilder

- **Alles dokumentieren.** Die Basis wird groß und veraltet. Beginnen Sie stattdessen mit Wissen, dessen Fehlen geschadet hat, und ergänzen Sie nach Bedarf.
- **Schreiben getrennt vom Arbeiten.** Das Festhalten ist eine Pflicht im Nachhinein. Machen Sie stattdessen eine kurze Notiz zum Teil des Abschlusses der Arbeit.
- **Keine Verantwortlichen.** Niemand aktualisiert Artikel. Benennen Sie stattdessen für jeden eine verantwortliche Person und ein Überprüfungsdatum.
- **Schlechte Suche.** Menschen finden nicht, was existiert, und schreiben Duplikate. Testen Sie stattdessen die Suche mit echten Anfragen und verlinken Sie Artikel von dort, wo Menschen arbeiten.
- **Das Implizite ignorieren.** Es wird angenommen, alles sei aufschreibbar. Planen Sie stattdessen Pairing, Mitlaufen und Praxisgemeinschaften.
- **Ungetestete Runbooks.** Schritte scheitern, wenn sie gebraucht werden. Lassen Sie stattdessen eine nutzende Person jedem Runbook an einem Testfall folgen.
- **Horten als Statussymbol.** Menschen schützen Wissen, um ihre Position zu schützen. Erkennen Sie stattdessen Teilen an und verteilen Sie Abhängigkeit.
- **Inhalt vorschreiben.** Mengenziele erzeugen dünne Artikel. Konzentrieren Sie sich stattdessen auf Nutzung und Qualität und denken Sie daran, dass die Wirkung von Anreizen umstritten ist.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Wissen festhalten | Wissen lebt in Köpfen und im Chat | Einige Teams führen Notizen und Runbooks | Eine Notiz festzuhalten ist Teil des Abschlusses von Arbeit | Erfassungsraten und Nützlichkeit werden überprüft | Wissenserfassung wird über Teams und Lieferanten geteilt |
| Qualität und Verantwortung | Keine Verantwortlichen; Inhalt verfällt | Einige Artikel haben Verantwortliche | Jeder Artikel hat eine verantwortliche Person und ein Überprüfungsdatum | Genauigkeit und Nutzung werden gemessen; veralteter Inhalt wird entfernt | Qualitätspraktiken werden in der Organisation geteilt und verbessert |
| Auffindbarkeit und Nutzung | Die Suche ist schlecht; Menschen fragen einander | Einiger Inhalt wird aus Tickets verlinkt | Wissen wird aus Tickets, Katalog und Runbooks verlinkt | Nutzung und Suchfehler werden gemessen und behoben | Wissen steht Nutzenden, Lieferanten und Partnern je nach Bedarf zur Verfügung |
| Das Implizite teilen | Teilen geschieht zufällig | Etwas Pairing und Mitlaufen findet statt | Pairing, Mitlaufen und Praxisgemeinschaften sind geplant | Wissensrisiko wird verfolgt und verringert | Gemeinschaften und Rotation bewegen Wissen routinemäßig über Teams hinweg |

## Checkliste

- [ ] Wir haben das Wissen aufgelistet, dessen Fehlen uns geschadet hat, und dort begonnen.
- [ ] Der Abschluss eines Incidents, einer Anfrage oder einer Änderung schließt eine kurze Notiz ein, wenn etwas neu war.
- [ ] Artikel folgen einer kurzen gemeinsamen Struktur mit Verantwortlichen und Überprüfungsdatum.
- [ ] Runbooks wurden von jemandem getestet, der sie nicht geschrieben hat.
- [ ] Die Suche funktioniert für echte Anfragen, und Artikel sind aus Tickets und dem Service-Katalog verlinkt.
- [ ] Ungenutzte und doppelte Artikel werden eingestellt.
- [ ] Wir haben einen Plan, Wissen zu verbreiten, das eine Person hält.
- [ ] Pairing oder Mitlaufen ist für urteilslastige Arbeit geplant.
- [ ] Erkenntnisse aus Incidents werden über das Team hinaus geteilt.
- [ ] Wir überprüfen das Wissensrisiko mindestens vierteljährlich.

## KI-Prompts

**Zweck: ein gelöstes Ticket in den Entwurf eines Wissensartikels verwandeln.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Zweck: Wissensrisiko in Ihrem Team finden.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein Runbook vor dem Test auf Klarheit prüfen.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Zweck: eine Wissensübergabe für jemanden planen, der geht.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [runbook](../../../../skills/runbook/SKILL.md): nutzen Sie ihn, um Schritt-für-Schritt-Verfahren zu schreiben, denen jemand anderes unter Druck folgen kann.
- [postmortem](../../../../skills/postmortem/SKILL.md): nutzen Sie ihn, um Erkenntnisse aus Incidents in einer Form festzuhalten, die andere lesen können.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): nutzen Sie ihn, um festzuhalten, warum eine Entwurfsentscheidung getroffen wurde.
- [decision-records](../../../../skills/decision-records/SKILL.md): nutzen Sie ihn, um eine kurze Aufzeichnung wichtiger nicht architektonischer Entscheidungen zu führen.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): nutzen Sie ihn, um Fähigkeitslücken zu finden, die der Wissensaustausch angehen sollte.

## Wichtige Quellen

- **Knowledge management** (Wikipedia): ein breiter Überblick über Geschichte, Modelle, Ansätze und Kritik des Feldes.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): wie eine Organisation Erkenntnisse aus Incidents teilt.
- **Tacit knowledge** (Wikipedia): Hintergrund zu dem Wissen, das sich schwer aufschreiben lässt.
- **Community of practice** (Wikipedia): Hintergrund zu teamübergreifenden Gruppen, die Wissen teilen.

## Referenzen

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
