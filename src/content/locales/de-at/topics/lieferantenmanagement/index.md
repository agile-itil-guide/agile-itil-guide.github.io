# Lieferantenmanagement

**Das Lieferantenmanagement stellt sicher, dass die externen Parteien, von denen ein Service abhängt, mit Sorgfalt gewählt, an klare Erwartungen gebunden und als Teil des Services behandelt werden, denn ein Versprechen an Ihre Kunden ist nur so stark wie die Versprechen dahinter.**

## Warum das wichtig ist

Fast kein moderner Service wird von einem einzigen Team allein gebaut und betrieben. Er hängt von Cloud-Plattformen, Softwareherstellern, Zahlungsdienstleistern, Netzbetreibern, Auftragnehmern und Spezialpartnern ab. Wenn einer von ihnen ausfällt, unterscheidet der Kunde nicht zwischen Ihrem Versagen und dem ihren. Ihr Ausfall ist Ihr Ausfall, und die Arbeit, ihn zu erklären, ebenfalls.

Agile Teams nutzen Lieferanten mühelos: eine Kreditkarte, einige Zeilen Konfiguration, und eine neue Fähigkeit läuft. Diese Geschwindigkeit ist wertvoll, und sie schafft eine Lücke. Vielleicht hat niemand gefragt, was geschieht, wenn der Service des Lieferanten sich verschlechtert, seine Bedingungen ändert oder schließt. Vielleicht weiß niemand, wer die Beziehung verantwortet. Das Lieferantenmanagement ist die Praktik, diese Lücke im Verhältnis zum Risiko zu schließen, ohne jeden Einkauf zu einem Projekt zu machen.

Der [Wikipedia-Artikel zum Lieferantenbeziehungsmanagement (Supplier Relationship Management)](https://en.wikipedia.org/wiki/Supplier_relationship_management) beschreibt die systematische, unternehmensweite Bewertung von Stärken, Leistung und Fähigkeiten von Lieferanten, an der Geschäftsstrategie ausgerichtet, und merkt an, dass seine Quellenlage dünn und veraltet ist, mit mehreren Verweisen aus den Jahren 2009 bis 2012. Der [Artikel zu Service Integration and Management](https://en.wikipedia.org/wiki/Service_integration_and_management) beschreibt einen Ansatz für Organisationen, die mehrere Lieferanten nutzen. Dieses Thema verbindet sie mit den anderen Themen des Leitfadens und mit im Service-Management üblicher Praxis und sagt, wann es letzteres tut.

## Kernkonzepte

### Lieferantenbeziehungsmanagement

Laut Wikipedia koordiniert das Lieferantenbeziehungsmanagement (SRM) Interaktionen mit Lieferanten über den Lebenszyklus der Beziehung, mit dem Ziel, zweiseitige Partnerschaften mit strategischen Lieferanten aufzubauen, analog zum Kundenbeziehungsmanagement. Der Artikel macht mehrere für Serviceteams nützliche Punkte:

- **Segmentieren Sie Lieferanten.** Lieferanten werden nach dem gesamten Wertpotenzial über mehrere Dimensionen hinweg segmentiert, nicht nur nach Ausgaben, und nach dem Grad des Risikos, das diesen Wert beeinträchtigt. Der Artikel kritisiert einen Ansatz "eine Größe für alle".
- **Messen Sie Leistung in beide Richtungen.** Organisationen nutzen gemeinsame, zweiseitige Balanced Scorecards mit quantitativen und qualitativen Maßen, und manche nutzen 360-Grad-Scorecards, die auch Lieferanten befragen.
- **Arbeiten Sie zusammen.** Gemeinsame Aktivitäten umfassen Lieferantengipfel, Führungstreffen, gemeinsame Geschäftsplanung, operative Reviews und gemeinsame Bedarfsprognose. Der Artikel behauptet, gemeinsame Prognose und Prozessneugestaltung hätten bei führenden Organisationen Einsparungen von 10 bis 30 Prozent freigesetzt, doch der Artikel trägt Pflegehinweise für schwache Formulierungen und fehlende Belege, behandeln Sie die Zahl also als Behauptung, nicht als Befund.

### Warum Segmentierung wichtig ist

Sie können nicht jeden Lieferanten eng steuern. Eine nützliche Segmentierung stellt zwei Fragen: Wie sehr hängt der Service von diesem Lieferanten ab, und wie schwer wäre er zu ersetzen? Ein grobes Raster folgt.

| Abhängigkeit und Ersetzbarkeit | Beispiele | Ansatz |
|---|---|---|
| **Kritisch und schwer zu ersetzen** | Die Cloud-Plattform, der Zahlungsdienstleister | Enge Beziehung: benannte verantwortliche Person, regelmäßige Reviews, gemeinsame Planung, Ausstiegs- und Continuity-Pläne |
| **Wichtig, aber ersetzbar** | Ein Monitoring-Werkzeug, ein Nachrichtendienst | Regelmäßige Überprüfung, klare Service-Level und ein Plan zum Wechsel bei Bedarf |
| **Routine und leicht zu ersetzen** | Büromaterial, eine kleine Bibliothek | Leichter Vertrag und gelegentliche Prüfung |

Das Raster ist die Veranschaulichung dieses Leitfadens, nicht aus einer Quelle.

### Lieferantenleistung und der Service, den Sie versprechen

Ihre Service-Level hängen von denen Ihrer Lieferanten ab (siehe Thema 3.7 — Service-Level-Management). Wenn Sie 99,9 % Verfügbarkeit versprechen und Ihr einziger Cloud-Anbieter weniger verspricht, geht die Rechnung nicht auf. Lieferantenmanagement schließt ein, zu vergleichen, wozu sich Lieferanten verpflichtet haben, mit dem, was Sie versprochen haben, und um die Lücke herum zu entwerfen, mit Redundanz oder durch Anpassung des eigenen Versprechens.

Im ITIL-Vokabular heißt eine Vereinbarung mit einem externen Lieferanten, die ein Service-Level-Agreement stützt, Underpinning Contract, und eine Vereinbarung zwischen internen Teams, die es stützt, Operational-Level-Agreement. Die für diesen Leitfaden gelesenen Quellen definieren diese nicht, prüfen Sie also die genauen Begriffe in ITIL-Veröffentlichungen.

### Umgebungen mit mehreren Lieferanten und SIAM

Der Artikel zu Service Integration and Management (SIAM) beschreibt einen Ansatz, mehrere Lieferanten zu steuern und zu einem einzigen, geschäftsorientierten Service zu integrieren. Er merkt an, dass Organisationen IT-Fähigkeiten zunehmend von mehreren externen Lieferanten beziehen, ein Modell namens Multisourcing, das Kosten senken und Wettbewerb fördern kann, aber Steuerungsaufwand hinzufügt und das durchgängige Service-Management erschwert. Ein **Service Integrator** sorgt für Steuerung und Koordination, damit Anbieter zusammenarbeiten.

Der Artikel listet vier Modelle für den Integrator (intern, führender Lieferant, extern und hybrid) und drei Schichten: die Kundenorganisation, den Service Integrator und die Serviceanbieter. Er sagt, SIAM sei um 2005 im öffentlichen Sektor des Vereinigten Königreichs entstanden, zuerst für das Department for Work and Pensions entworfen, und listet Meilensteine auf, darunter einen Wissenskanon 2016 und Überarbeitungen 2019 für COBIT 2019 und ITIL 4. Er merkt an, dass ITIL eine Grundlage und eine gemeinsame Sprache für die Arbeit mit Lieferanten bietet, aber Umgebungen mit mehreren Lieferanten nicht vertieft behandelt. Zu den aufgeführten Umsetzungsherausforderungen gehören nicht abgestimmte Service-Level-Agreements, Anbieter, die sich gegenseitig beschuldigen, unklare Verantwortung für Grundursachenentscheidungen und Kommunikationslücken.

Wenige agile Teams brauchen ein förmliches SIAM, aber die Lehren sind nützlich: Wenn mehrere Parteien zu einem Service beitragen, muss jemand das Ganze verantworten, vereinbaren, wie Probleme über Grenzen hinweg behandelt werden, und die Service-Level der Lieferanten untereinander konsistent halten.

### Verträge und Agilität

Verträge können agiler Arbeit helfen oder sie behindern. Verträge mit festem Umfang und Festpreis passen schlecht zu Lernen im Gehen (siehe Thema 1.1 — Das Agile Manifest zu Zusammenarbeit mit dem Kunden mehr als Vertragsverhandlung). Vereinbarungen, die Änderung zulassen, mit klaren Wegen, Umfang anzupassen und Wert zu messen, passen besser. Ein Vertrag muss auch abdecken, was dem Service-Management wichtig ist: Service-Level, Supportzeiten, Incident-Bearbeitung, Datenschutz, Sicherheitspflichten, Prüfrechte, Ausstieg und Continuity. Ihre Kollegen aus Recht und Einkauf sollten bei den rechtlichen Bedingungen führen.

### Risiko

Lieferanten bringen Risiken: Ausfall, Änderung von Bedingungen oder Preis, Sicherheitsschwächen, Konzentration auf einen Anbieter, Lock-in und die eigenen Abhängigkeiten des Lieferanten. Der SRM-Artikel nennt die Verringerung des Ausfallrisikos als Ziel, ohne Methoden zu beschreiben. Praktische Maßnahmen umfassen, die eigenen Continuity-Vorkehrungen des Lieferanten zu kennen, kritische Abhängigkeiten zu streuen, Daten portabel zu halten und den Ausstieg zu proben (siehe Thema 3.12 — Service-Continuity-Management und Thema 3.13 — Informationssicherheitsmanagement).

### Beziehung, nicht nur Vertrag

Der SRM-Artikel betont zweiseitige Partnerschaften. Lieferanten, die Ihre Pläne verstehen, können helfen; Lieferanten, die nur als Quelle von Rechnungen behandelt werden, nicht. Teilen Sie Prognosen, beziehen Sie sie in Incident-Reviews ein, die sie betreffen, und hören Sie auf ihr Feedback zu Ihrem Verhalten, etwa zu verspäteten Zahlungen oder unklaren Anfragen.

### Grenzen der Quellen

Der SRM-Artikel gibt weder Auswahlkriterien noch Vertragsklauseln noch Umsetzungszeitpläne. Der SIAM-Artikel hat keinen Abschnitt mit Kritik. Beide sind allgemein. Für rechtliche und finanzielle Bedingungen verlassen Sie sich auf Ihre Einkaufs- und Rechtsfunktionen und auf den Vertrag selbst.

## Bewährte Praktiken

1. **Listen Sie Ihre Lieferanten auf und wofür Sie sich auf sie verlassen.** Beziehen Sie Cloud, Software, Netzwerk, Zahlung und Auftragnehmer ein. Notieren Sie für jeden, welchen Service er stützt und wer in Ihrem Team die Beziehung verantwortet.
2. **Segmentieren Sie nach Abhängigkeit und Ersetzbarkeit.** Entscheiden Sie, welche wenigen Lieferanten kritisch sind, und investieren Sie dort Ihre Aufmerksamkeit. Behalten Sie für den Rest eine leichte Hand.
3. **Benennen Sie für jeden wichtigen Lieferanten eine verantwortliche Person.** Eine Person sollte Vertrag, Kontakte, Leistung und Pläne kennen. Ohne verantwortliche Person verfallen Beziehungen.
4. **Prüfen Sie, dass Zusagen der Lieferanten Ihre Versprechen tragen.** Vergleichen Sie, wozu sich jeder kritische Lieferant verpflichtet hat, mit dem, was Sie Kunden gesagt haben. Schließen Sie die Lücke durch Entwurf, durch Verhandlung oder durch Änderung Ihres Versprechens.
5. **Vereinbaren Sie die Incident-Bearbeitung im Voraus.** Wissen Sie, wie man dem Lieferanten ein Problem meldet, wie schnell er reagiert, wer eskalieren kann und wie er kommunizieren wird. Testen Sie den Weg, bevor Sie ihn brauchen.
6. **Beziehen Sie Sicherheit und Datenschutz ein.** Fragen Sie Lieferanten, wie sie Ihre Information schützen und was sie Ihnen nach einem Verstoß sagen werden. Halten Sie es im Vertrag fest, mit dem Rechtsteam.
7. **Planen Sie Ausstieg und Ausfall.** Halten Sie bei kritischen Lieferanten Daten portabel, kennen Sie Alternativen und schreiben Sie einen kurzen Plan für den Ausfall des Lieferanten oder Ihren Weggang. Proben Sie den Teil, den Sie proben können.
8. **Prüfen Sie Leistung gemeinsam.** Halten Sie regelmäßige Reviews mit kritischen Lieferanten ab, teilen Sie Daten in beide Richtungen und vereinbaren Sie Maßnahmen. Fragen Sie den Lieferanten, wie Sie ein besserer Kunde sein könnten.
9. **Beziehen Sie Lieferanten ins Lernen ein.** Laden Sie sie zu Incident-Reviews und Planungssitzungen ein, die sie betreffen. Teilen Sie Erkenntnisse, die ihnen helfen, Ihnen zu helfen.
10. **Machen Sie Verträge flexibel, wo Lernen erwartet wird.** Bevorzugen Sie für Entwicklungsarbeit Vereinbarungen, die Änderung des Umfangs mit klaren Überprüfungspunkten zulassen, gegenüber Versprechen mit festem Umfang. Halten Sie die Service-Pflichten fest.
11. **Nutzen Sie einen Integrator, wenn viele Lieferanten beitragen.** Benennen Sie bei einem Service, der von mehreren Anbietern abhängt, wer das durchgängige Ergebnis verantwortet und wie lieferantenübergreifende Probleme gelöst werden. Überlassen Sie es nicht dem Kunden.
12. **Prüfen Sie das Portfolio der Lieferanten regelmäßig.** Prüfen Sie einmal im Jahr, welche Lieferanten noch gebraucht werden, welche Klumpenrisiken sind und welche woanders günstiger oder besser sind.

## Fragen zur Diskussion im Team

**Welche Lieferanten könnten unseren Service stoppen, wenn sie ausfielen, und was würden wir tun?**

Bitten Sie jede Person, die Abhängigkeiten zu nennen, um die sie sich am meisten sorgen würde. Stellen Sie die Liste zusammen und markieren Sie jede als kritisch, wichtig oder Routine. Fragen Sie bei jeder kritischen, was das Team in der ersten Stunde eines Ausfalls täte. Typische Antworten offenbaren Lücken bei Kontakten, Alternativen und Daten. Wählen Sie eine zum Einplanen.

**Was haben uns unsere Lieferanten versprochen, und was haben wir unseren Kunden versprochen?**

Stellen Sie für einen wichtigen Service beides nebeneinander. Wo das Versprechen des Lieferanten schwächer ist, ist das Kundenversprechen gefährdet. Die Moderation kann fragen, ob jemand die Service-Level des Lieferanten kürzlich gelesen hat. Vereinbaren Sie eine Lücke, die geschlossen wird.

**Wer verantwortet jede wichtige Lieferantenbeziehung?**

Gehen Sie die Liste durch und benennen Sie für jede eine verantwortliche Person. Lücken sind häufig: Die Person, die den Vertrag unterschrieb, ist gegangen, oder ein Werkzeug wurde per Karte gekauft, und niemand betreut es. Fragen Sie, was die verantwortliche Person bräuchte, um die Aufgabe zu erfüllen, etwa Zeit und einen Kontakt. Weisen Sie Verantwortliche zu, wo sie fehlen.

**Wie erfahren wir von einem Problem beim Lieferanten, und wie sagen wir es unseren Nutzenden?**

Verfolgen Sie das letzte Mal, als ein Lieferant einen Ausfall hatte. Fragen Sie, wie Sie davon erfuhren, wie lange es dauerte und was Sie Kunden sagten. Besprechen Sie Statusseiten, Kontakte und vereinbarte Kanäle. Planen Sie eine Verbesserung, etwa ein Abonnement des Status-Feeds des Lieferanten oder eine benannte Eskalationskontaktperson.

**Was bräuchte es, diesen Lieferanten zu verlassen, und würden wir es je wollen?**

Fragen Sie bei einem kritischen Lieferanten nach Datenexport, alternativen Produkten und Vertragsbedingungen. Teams stellen oft ein Lock-in fest, das sie nicht beabsichtigt hatten. Besprechen Sie, wie es zu verringern ist, wo das Risiko die Kosten rechtfertigt. Halten Sie eine kurze Ausstiegsnotiz fest.

**Wissen unsere Lieferanten, was wir planen, und wissen wir, was sie planen?**

Fragen Sie, wann jeder kritische Lieferant zuletzt von Ihren Plänen hörte und wann Sie zuletzt von seinen. Überraschungen in beide Richtungen verursachen Ärger. Besprechen Sie ein regelmäßiges Gespräch. Vereinbaren Sie einen Lieferanten, mit dem begonnen wird.

## In der Praxis: ein agiles ITIL-Beispiel

Ein regionaler Rundfunkveranstalter betreibt eine Nachrichten-App und Website mit einem Team von vierzehn Personen. Der Service hängt von einem Cloud-Anbieter, einem Content Delivery Network, einem Push-Benachrichtigungsdienst, einem Werkzeug zur Kommentarmoderation und einer kleinen Firma ab, die ein Live-Blog-Widget liefert. Als der Service des Live-Blog-Lieferanten in einer Wahlnacht ausfiel, zeigte die App zwei Stunden lang Fehler, und der Ruf des Veranstalters litt. Niemand im Team konnte sagen, wer die Kontaktperson des Lieferanten war; das Widget war von einem Entwickler hinzugefügt worden, der inzwischen woanders arbeitete.

Die Leitung der Plattform führt einen Review durch. Das Team listet alle Lieferanten auf und sortiert sie danach, wie stark der Service von ihnen abhängt und wie leicht jeder ersetzt werden könnte. Der Cloud-Anbieter und das Content Delivery Network sind kritisch, der Benachrichtigungsdienst und das Widget wichtig, aber ersetzbar. Jeder erhält eine verantwortliche Person im Team. Für den Widget-Lieferanten beschafft das Team Kontakte, liest die Bedingungen und stellt fest, dass kein Service-Level versprochen wird. Sie beschließen, den Lieferanten zu behalten, aber einen Ersatz hinzuzufügen: Lädt das Widget nicht, zeigt die Seite einen statischen Link zum Live-Blog. Für den Cloud-Anbieter vergleichen sie seine Zusagen mit der Verfügbarkeit, die sie den Redaktionen des Veranstalters versprochen haben, und finden eine Lücke in einer Region, die sie schließen, indem sie den Service auf zwei verteilen.

Sechs Monate später wird ein zweiter Ausfall beim Benachrichtigungsanbieter vom Monitoring in Minuten erkannt, die verantwortliche Person spricht ihn über den vereinbarten Weg beim Lieferanten an, und die App funktioniert weiter, mit verzögerten Benachrichtigungen. Schwierigkeiten bleiben. Die Redaktionen wollen, dass das Live-Blog-Widget mehr kann, doch der Lieferant ist zu klein, um sich auf ein Service-Level zu verpflichten, und die Einkaufsregeln des Veranstalters machen einen Ersatz langsam. Die Leitung der Plattform vereinbart mit dem Einkauf, einen kleinen Versuch mit einer Alternative durchzuführen und die Lieferantenliste jährlich zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams wählen und integrieren viele Lieferanten. Halten Sie jede Abhängigkeit fest, wenn Sie sie hinzufügen, benennen Sie eine verantwortliche Person und fragen Sie nach Service-Leveln und Ausstieg, bevor Sie sich darauf verlassen. Bauen Sie Ersatzlösungen für die Ausfälle, die Sie sich vorstellen können.

### Service- und Betriebsteams

Betriebsteams haben bei Incidents mit Lieferanten zu tun. Halten Sie Kontakte und Eskalationswege aktuell, testen Sie sie und halten Sie die Leistung der Lieferanten fest. Bringen Sie diese Belege in Reviews und zum Einkauf.

### Führung und Governance

Führungskräfte und der Einkauf prägen die Bedingungen und die Beziehung. Verlangen Sie eine Liste kritischer Lieferanten und ihrer Risiken, unterstützen Sie flexible Verträge für lernbasierte Arbeit und stellen Sie sicher, dass der Vertrag Service-Level, Sicherheit und Ausstieg abdeckt. Fragen Sie, wer das durchgängige Ergebnis verantwortet, wenn viele Lieferanten beitragen.

### Kunden und Nutzer

Kunden und Nutzende verlassen sich auf die ganze Kette, nicht auf ein einzelnes Glied. Fragen Sie Anbieter, welche Lieferanten für den von Ihnen genutzten Service zählen und wie sie ihn schützen. Wenn etwas schiefgeht, rechnen Sie mit Ehrlichkeit darüber, welcher Teil ausfiel und was getan wird.

## Typische Fehlerbilder

- **Versteckte Abhängigkeiten.** Ein von einem Entwickler hinzugefügtes Werkzeug wird kritisch, und niemand verantwortet es. Halten Sie stattdessen jede Abhängigkeit fest und benennen Sie eine verantwortliche Person.
- **Eine Größe für alle.** Jeder Lieferant erhält denselben schweren Prozess oder keiner. Segmentieren Sie stattdessen nach Abhängigkeit und Ersetzbarkeit.
- **Versprechen, die nicht aufgehen.** Das Kundenversprechen ist stärker als das des Lieferanten. Vergleichen Sie stattdessen Zusagen und schließen Sie die Lücke.
- **Kein getesteter Weg.** Die Support-Hotline des Lieferanten wird während eines Ausfalls gesucht. Vereinbaren und testen Sie stattdessen Kontakte und Eskalation im Voraus.
- **Lock-in aus Versehen.** Daten lassen sich nicht exportieren. Prüfen Sie stattdessen die Portabilität früh und halten Sie eine Ausstiegsnotiz fest.
- **Nur Vertrag, keine Beziehung.** Der Lieferant ist ein Fremder, wenn Ärger kommt. Halten Sie stattdessen regelmäßige Reviews ab und teilen Sie Pläne.
- **Niemand verantwortet das Ganze.** Mehrere Lieferanten beschuldigen einander. Benennen Sie stattdessen einen Integrator für den durchgängigen Service und vereinbaren Sie die lieferantenübergreifende Behandlung.
- **Verträge mit festem Umfang für ungewisse Arbeit.** Der Vertrag kämpft gegen das Lernen. Nutzen Sie stattdessen Vereinbarungen, die Änderung des Umfangs innerhalb klarer Grenzen zulassen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Lieferanten kennen | Lieferanten sind Einzelpersonen bekannt | Einige Teams listen ihre Lieferanten auf | Eine gemeinsame Liste mit Abhängigkeit, Ersetzbarkeit und Verantwortlichen | Die Liste wird an Incidents und Änderungen überprüft | Die Liste wird über Teams geteilt und mit Services verknüpft |
| Zusagen und Service | Service-Level der Lieferanten sind unbekannt | Die Bedingungen wichtiger Lieferanten werden gelesen | Zusagen der Lieferanten werden mit Kundenversprechen verglichen | Die Leistung der Lieferanten wird gemessen und überprüft | Zusagen werden über die Kette mit gemeinsamem Review abgestimmt |
| Incidents und Risiko | Probleme bei Lieferanten werden zufällig gefunden | Einige Kontakte sind bekannt | Eskalationswege sind vereinbart und getestet; Risiken sind festgehalten | Incidents und Risiken bei Lieferanten werden verfolgt und bearbeitet | Incident-Bearbeitung und Risikopläne sind mit Lieferanten gemeinsam |
| Beziehung und Ausstieg | Lieferanten sind rein transaktional | Einige Lieferantentreffen | Regelmäßige Reviews mit kritischen Lieferanten und kurze Ausstiegsnotizen | Gesundheit der Beziehung und Ausstiegsbereitschaft werden überprüft | Lieferanten nehmen an Planung und Verbesserung teil |

## Checkliste

- [ ] Wir haben eine Liste der Lieferanten und dessen, was jeder stützt.
- [ ] Lieferanten sind nach Abhängigkeit und Ersetzbarkeit sortiert.
- [ ] Jeder wichtige Lieferant hat eine benannte verantwortliche Person.
- [ ] Wir haben Zusagen der Lieferanten mit unseren Kundenversprechen für wichtige Services verglichen.
- [ ] Eskalationskontakte und -wege für kritische Lieferanten sind bekannt und getestet.
- [ ] Erwartungen an Sicherheit und Datenschutz stehen im Vertrag oder sind schriftlich vereinbart.
- [ ] Für jeden kritischen Lieferanten gibt es eine kurze Ausstiegs- oder Ausfallnotiz.
- [ ] Wir halten regelmäßige Reviews mit kritischen Lieferanten ab.
- [ ] Wo mehrere Lieferanten beitragen, verantwortet jemand das durchgängige Ergebnis.
- [ ] Die Lieferantenliste wird mindestens einmal im Jahr überprüft.

## KI-Prompts

**Zweck: aus dem, was Sie wissen, eine Liste von Lieferanten und Abhängigkeiten aufbauen.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Zusagen der Lieferanten mit Ihren Kundenversprechen vergleichen.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Zweck: sich auf ein Review-Meeting mit einem Lieferanten vorbereiten.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: eine kurze Ausstiegsnotiz für einen kritischen Lieferanten entwerfen.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Auswahl, Überprüfung und die Beziehung zu einem Lieferanten zu planen.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um Lieferantenrisiken und deren Steuerung festzuhalten.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): nutzen Sie ihn, um zu verstehen, wer in Ihrer Organisation und beim Lieferanten für die Beziehung zählt.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): nutzen Sie ihn, um zu prüfen, dass Zusagen der Lieferanten tragen, was Sie versprechen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um klarzumachen, wer jede Lieferantenbeziehung verantwortet und wer konsultiert wird.

## Wichtige Quellen

- **Supplier relationship management** (Wikipedia): ein Überblick über Segmentierung, Scorecards und Zusammenarbeit mit Lieferanten, mit Pflegehinweisen, die zeigen, wo die Quellenlage schwach ist.
- **Service integration and management** (Wikipedia): der Ansatz mit mehreren Lieferanten, mit seinen Schichten, Modellen und Umsetzungsherausforderungen.
- **Service-level agreement** (Wikipedia): Hintergrund zu Vereinbarungen, die Lieferanten und Kunden unterzeichnen.
- **ITIL** (Wikipedia): Kontext dazu, wie ITIL Lieferanten behandelt.

## Referenzen

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
