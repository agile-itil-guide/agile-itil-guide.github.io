# KI im IT-Service-Management

**Künstliche Intelligenz kann Erkennung, Triage und Wissensarbeit im IT-Service-Management beschleunigen, und sie lässt sich nur sicher nutzen, wo eine Person verantwortlich bleibt, Antworten in Ihrem eigenen Material verankert sind und die Risiken von Fehlern, Verzerrung und Datenpreisgabe gesteuert werden.**

## Warum das wichtig ist

Service-Management hat viel mit Sprache und Mustererkennung zu tun: Tickets lesen, Incidents zusammenfassen, Wissen durchsuchen, Antworten entwerfen, ungewöhnliche Signale in Monitoring-Daten erkennen. Das sind die Aufgaben, bei denen neuere KI-Systeme am leistungsfähigsten erscheinen, und Anbieter haben sich beeilt, sie in Service Desks und Betriebswerkzeuge einzubauen. Teams werden gefragt werden, falls nicht schon geschehen, ob sie sie nutzen wollen.

Die Chance ist real, und die Gefahren sind es auch. KI-Systeme können Falsches mit Überzeugung behaupten, Verzerrungen aus ihrem Training und den ihnen gegebenen Daten widerspiegeln, vertrauliche Information preisgeben, wenn sie achtlos gefüttert werden, und Menschen dazu bringen, Ausgaben zu vertrauen, die sie nicht geprüft haben. Mehrere weithin berichtete Fälle zeigen die Kosten fehlplatzierten Vertrauens. Eine Serviceorganisation, die KI gedankenlos einführt, kann ihren Kunden und ihrem eigenen Ruf schaden.

Bis 2026 ist KI auch in das Framework eingezogen. Die öffentliche Zertifizierungsseite von PeopleCert beschreibt das neue ITIL als "Practical and AI-native by design" (praxisnah und von Grund auf KI-nativ) und listet ein Modul ITIL AI Governance (Version 5) auf, das den Umgang mit KI "verantwortungsvoll und in großem Maßstab" abdeckt (siehe Thema 2.2 — ITIL). Dieser Leitfaden konnte anhand der Veröffentlichungen des Eigners nicht prüfen, was ITIL 5 im Einzelnen zu KI sagt, daher beschreibt dieses Thema die Haltung des Frameworks nicht über diese Aussagen hinaus. Es stützt sich auf die Wikipedia-Artikel zu AIOps und zu KI-Halluzination, auf die Seite des NIST zum AI Risk Management Framework und auf praktische Überlegungen und kennzeichnet Praxis als solche.

## Kernkonzepte

### Wo KI im Service-Management hilft

Die meisten Einsätze fallen in einige Gruppen. Die Tabelle zeigt Beispiele und die Art Risiko, die jedes trägt, in der Lesart dieses Leitfadens.

| Einsatz | Was die KI tut | Hauptrisiken |
|---|---|---|
| **Erkennung und Korrelation (AIOps)** | Findet Anomalien, gruppiert zusammengehörige Ereignisse, schlägt wahrscheinliche Ursachen vor | Fehlalarme, übersehene Ereignisse, undurchsichtige Begründung |
| **Unterstützung des Service Desk** | Schlägt Antworten vor, fasst Tickets zusammen, entwirft Antworten, leitet Anfragen weiter | Falsche oder erfundene Antworten, Tonfall, Datenschutz |
| **Wissensarbeit** | Entwirft und verbessert Artikel, durchsucht Wissen | Erfundener Inhalt, veraltete Quellen |
| **Incident- und Problemanalyse** | Fasst Zeitverläufe zusammen, schlägt Hypothesen vor, entwirft Reviews | Plausible, aber unbegründete Ursachen |
| **Änderungs- und Release-Unterstützung** | Prüft Änderungen, entwirft Notizen, schlägt Risiko vor | Übermäßiges Vertrauen, übersehener Kontext |
| **Code und Automatisierung** | Schreibt Skripte und Konfiguration | Unsicherer oder falscher Code, versteckte Abhängigkeiten |
| **Analyse und Berichtswesen** | Fasst Daten zusammen, entwirft Berichte | Falsche Berechnungen, erfundene Zahlen |

### AIOps

Der Wikipedia-Artikel beschreibt AIOps als Nutzung von KI, maschinellem Lernen und Big-Data-Analytik, um das Rechenzentrumsmanagement zu automatisieren und zu verbessern, mit dem Ziel, IT-Probleme effizienter als mit herkömmlichen Methoden zu erkennen, zu diagnostizieren und zu lösen. Er sagt, Gartner habe AIOps 2016 erstmals definiert. Der Artikel listet Fähigkeiten auf, darunter Ereigniskorrelation, Anomalieerkennung, Ursachenanalyse, Kausalitätsbestimmung, prädiktive Analytik, Incident Management, automatisierte Behebung, Leistungsprognose, Ressourcenzuteilung und Kapazitätsmanagement. Er sagt, AIOps stütze sich auf Beobachtungsdaten, etwa Logs und Monitoring, und Interaktionsdaten, etwa Tickets, Ereignisse und Incident-Aufzeichnungen.

Der Artikel behauptet Nutzen, etwa dass sich die mittlere Zeit bis zur Erkennung um 15 bis 20 Prozent verbessere und kritische Incidents um mehr als 50 Prozent sänken, merkt aber an, dass diese aus einem einzigen Beratungsartikel stammen und im Text nicht unabhängig geprüft sind. Er nennt keine Kritik, keine Fehlerfälle und keine Einschränkungen. Behandeln Sie Herstellerbehauptungen entsprechend und testen Sie jedes Werkzeug an Ihren eigenen Incidents (siehe Thema 3.10 — Monitoring und Event Management).

### Generative KI und Halluzination

Der Wikipedia-Artikel zu Halluzination in der KI definiert sie als Antwort, die falsche oder irreführende Information als Tatsache darstellt, und merkt an, dass der Begriff dafür kritisiert wird, Software zu vermenschlichen. Er nennt Ursachen: Das Vortraining auf Vorhersage des nächsten Wortes belohnt Raten, wenn dem Modell Information fehlt, Datensätze können unvollständig oder nicht repräsentativ sein, und Forschende von OpenAI argumentieren, dass Training und Bewertung Raten gegenüber dem Eingestehen von Unsicherheit belohnen. Beispiele, die er festhält, sind:

- **Mata v. Avianca (Mai 2023):** Ein Anwalt reichte sechs gefälschte Fälle ein, die ChatGPT erzeugt hatte; der Richter verhängte am 23. Juni 2023 eine Geldstrafe von 5.000 US-Dollar.
- **Moffatt v. Air Canada (Februar 2024):** Ein Gericht hielt eine Fluggesellschaft an eine Regelung zu Trauerfällen, die ihr Chatbot erfunden hatte.
- Berichte einer Beratung, die falsche Quellenangaben enthielten, und eine Studie, die fand, dass 69 von 178 GPT-3-Referenzen falsche oder nicht existierende Kennungen hatten.

Das sind die Folgen davon, ungeprüften Ausgaben zu vertrauen: rechtliche Haftung, finanzielle Risiken und beschädigtes Vertrauen. Im Service-Management schafft ein Chatbot, der eine Richtlinie oder ein Verfahren erfindet, dieselbe Art Risiko.

### Abhilfe: Verankerung und Prüfungen

Der Artikel beschreibt Retrieval-Augmented Generation (RAG) als Verfahren, das dem Modell vor der Antwort Zugriff auf externe Quellen gibt. Er listet auch datenbezogene Methoden, Modell- und Inferenzmethoden sowie Vorschläge wie Guardrail-Software und Konfidenzbewertung auf und merkt an, dass keine der von ihm genannten Quellen beziffert, wie stark eine davon Halluzinationen verringert. Für ein Serviceteam sind praktische Abhilfen:

- **Verankern Sie Antworten in Ihrem eigenen genehmigten Material,** etwa der Wissensdatenbank, und zeigen Sie die Quelle.
- **Halten Sie eine Person in der Schleife** bei allem, was einen Kunden, eine Zusage oder die Produktion betrifft.
- **Fragen Sie danach, wobei sich die KI unsicher ist,** und behandeln Sie nicht gestützte Aussagen als ungeprüft.
- **Testen Sie regelmäßig** an echten Fällen, auch an solchen, bei denen die richtige Antwort "Ich weiß es nicht" lautet.

### Risikomanagement-Frameworks

Das National Institute of Standards and Technology (NIST) veröffentlichte am 26. Januar 2023 das AI Risk Management Framework (AI RMF 1.0), das es als zur freiwilligen Nutzung gedacht beschreibt, um Risiken durch KI für Einzelne, Organisationen und die Gesellschaft zu steuern und die Fähigkeit zu verbessern, Vertrauenswürdigkeitsaspekte in Entwurf, Entwicklung, Nutzung und Bewertung von KI-Produkten, -Services und -Systemen einzubeziehen. Die Seite des NIST nennt vier Funktionen, Govern, Map, Measure und Manage, beschreibt sie aber nicht. Es veröffentlichte außerdem am 26. Juli 2024 ein Generative Artificial Intelligence Profile (NIST-AI-600-1), um Organisationen zu helfen, Risiken zu erkennen, die für generative KI einzigartig sind, und sagt, das Framework werde überarbeitet. Lesen Sie das Framework selbst für Einzelheiten. Andere Regeln zu KI, etwa Gesetze und Standards, unterscheiden sich nach Land und Branche; fragen Sie Ihre Rechts- und Compliance-Funktionen und besorgen Sie sich den Text (siehe Thema 5.7 — Governance, Risiko und Compliance).

### Datenschutz und Privatsphäre

Alles, was einem KI-Service gegeben wird, kann gespeichert, für Training genutzt oder preisgegeben werden, je nach Service und Bedingungen. Tickets, Logs und Chat-Protokolle enthalten oft personenbezogene Daten, Zugangsdaten und vertrauliche Geschäftsinformationen. Finden Sie vor der Nutzung eines KI-Werkzeugs mit echten Daten heraus, wohin Daten gehen, wer sie sehen kann, wie lange sie aufbewahrt werden und ob sie zum Training von Modellen genutzt werden, und wenden Sie Ihre Informationssicherheitsrichtlinie an (siehe Thema 3.13 — Informationssicherheitsmanagement). Entfernen oder ersetzen Sie personenbezogene und geheime Daten, bevor Sie sie in ein Werkzeug einfügen, das Sie nicht freigegeben haben.

### Verantwortlichkeit und Transparenz

Eine Person oder ein Team muss für Entscheidungen verantwortlich bleiben, zu denen eine KI beiträgt. Wenn die KI eine Antwort entwirft, ist die Absenderin verantwortlich. Wenn die KI eine Ursache vorschlägt, ist die Untersuchende dafür verantwortlich, sie zu testen. Sagen Sie Kunden, wenn sie mit einem automatisierten System sprechen, wo Gesetz, Vertrag oder Fairness es verlangen, und bieten Sie einen Weg zu einem Menschen. Halten Sie für bedeutende Entscheidungen fest, was die KI gefragt wurde und was sie erzeugte, wie bei anderen Werkzeugen (siehe Thema 5.1 — Agiles Service-Management zu Belegen).

### Verzerrung und Fairness

KI-Systeme lernen aus Daten, die vergangene Entscheidungen und Lücken widerspiegeln. Ein auf historischen Tickets trainierter Triage-Assistent behandelt womöglich manche Nutzergruppen oder manche Arten von Problemen als niedriger priorisiert. Prüfen Sie Ausgaben über Gruppen hinweg, beziehen Sie Menschen mit verschiedenen Perspektiven in Tests ein und achten Sie auf Muster. Die für diesen Leitfaden gelesenen Quellen erläutern Verzerrung nicht im Einzelnen, daher ist dies ein allgemeiner Vorbehalt, kein Befund.

### KI messen

Messen Sie Qualität und Wirkung jedes KI-Schritts, nicht nur sein Volumen: wie oft Menschen ihn übersteuern, wie oft er falsch liegt, wie lange Aufgaben mit und ohne ihn dauern und was Nutzende sagen (siehe Thema 5.6 — Metriken und Messung). Seien Sie vorsichtig bei Herstellerzahlen; die eigenen Nutzenbehauptungen des AIOps-Artikels beruhen auf einer Quelle.

### Skills und Prompts

Zur praktischen Fähigkeit, mit KI zu arbeiten, gehören klare Anweisungen schreiben, das richtige Material liefern, nach Unsicherheit fragen und Ausgaben prüfen. Thema 6.3 — KI-Skills und Prompts behandelt das im Einzelnen.

### Grenzen der Quellen

Der AIOps-Artikel enthält keine Kritik, und seine Nutzenzahlen stammen aus einer Quelle; der Halluzinations-Artikel ist als aktualisierungsbedürftig markiert und wurde nur zum Teil gelesen; die Seite des NIST beschreibt die Funktionen des Frameworks nicht; und die Seite von PeopleCert erklärt nicht, was ITIL 5 zu KI sagt. Dieses Thema gibt daher eine vorsichtige Darstellung und überlässt Einzelheiten den Primärquellen.

## Bewährte Praktiken

1. **Beginnen Sie mit einem risikoarmen Einsatz und einer klaren Frage.** Wählen Sie eine Aufgabe, bei der Fehler billig und leicht zu fangen sind, etwa eine Zusammenfassung für den internen Gebrauch zu entwerfen, und definieren Sie, was Erfolg bedeutet.
2. **Halten Sie eine Person verantwortlich.** Benennen Sie, wer für das verantwortlich ist, wozu die KI beiträgt, und verlangen Sie Prüfung bei allem, was einen Kunden erreicht, die Produktion ändert oder eine Zusage macht.
3. **Verankern Sie Antworten in genehmigtem Material.** Wo Sie KI für Antworten nutzen, verbinden Sie sie mit Ihrer eigenen Wissensdatenbank und zeigen Sie die Quelle. Bringen Sie sie dazu, "Ich weiß es nicht" zu sagen, wenn ihr eine fehlt.
4. **Schützen Sie Daten.** Entscheiden Sie, welche Daten in welches Werkzeug dürfen, entfernen Sie personenbezogene und geheime Daten und nutzen Sie freigegebene Werkzeuge mit Bedingungen, die Sie gelesen haben. Beziehen Sie Sicherheit und Recht früh ein.
5. **Testen Sie mit echten Fällen.** Sammeln Sie einen Satz echter Tickets und Incidents mit bekannten Antworten, lassen Sie die KI darauf laufen und halten Sie fest, wo sie scheitert. Wiederholen Sie nach jeder Änderung von Werkzeug oder Einstellungen.
6. **Prüfen Sie Behauptungen und Quellenangaben.** Prüfen Sie Namen, Zahlen, Zitate und Verfahren an Quellen, wie die Fälle erfundener Gerichtszitate zeigen. Akzeptieren Sie nie Verweise, die Sie nicht gesehen haben.
7. **Seien Sie ehrlich zu Kunden.** Sagen Sie, wann ein automatisiertes System antwortet, wo es zählt, und bieten Sie einen leichten Weg zu einem Menschen.
8. **Achten Sie auf Verzerrung.** Prüfen Sie Ausgaben über Nutzergruppen und Arten von Problemen und beziehen Sie Menschen ein, die Lücken erkennen. Passen Sie an oder beenden Sie die Nutzung, wo Schaden auftritt.
9. **Messen Sie Qualität und Wirkung.** Verfolgen Sie Übersteuerungsraten, Fehlerraten, gesparte Zeit und Nutzermeinungen. Vergleichen Sie mit dem Prozess ohne KI und seien Sie skeptisch gegenüber Herstellerzahlen.
10. **Führen Sie Aufzeichnungen.** Halten Sie bei bedeutenden Entscheidungen fest, was gefragt und erzeugt wurde, wer es geprüft hat und was entschieden wurde. Das stützt Verantwortlichkeit und Audit.
11. **Nutzen Sie ein Risiko-Framework.** Übernehmen Sie einen anerkannten Ansatz, etwa das AI RMF des NIST oder eine organisationsinterne KI-Richtlinie, um Entscheidungen darüber zu strukturieren, wo KI erlaubt ist. Behandeln Sie es als Denkhilfe.
12. **Schulen Sie Menschen.** Bringen Sie Beschäftigten bei, wie die Werkzeuge funktionieren, wo sie versagen und was erlaubt ist. Aktualisieren Sie die Schulung, wenn sich Werkzeuge und Regeln ändern.

## Fragen zur Diskussion im Team

**Wo nutzen wir bereits KI, offiziell oder nicht?**

Fragen Sie ehrlich. Beschäftigte nutzen oft öffentliche Werkzeuge mit echten Tickets. Ziel ist nicht zu bestrafen, sondern zu verstehen. Listen Sie die Einsätze und die beteiligten Daten auf. Besprechen Sie, welche akzeptabel sind und welche einen sichereren Weg brauchen. Vereinbaren Sie eine kurze Richtlinie.

**Bei welcher Aufgabe hätten wir am liebsten Hilfe, und was geschieht, wenn die KI sie falsch macht?**

Wählen Sie eine Aufgabe und gehen Sie den Fehlerfall durch. Ist die Antwort eine Entschuldigungs-E-Mail, ist das Risiko klein; ist sie eine falsche Anweisung an einen Kunden, ist das Risiko höher. Das hilft, Einsätze nach Risiko zu reihen. Wählen Sie einen ersten Piloten mit begrenztem Schaden.

**Woher würden wir wissen, dass eine KI-Antwort falsch ist?**

Fragen Sie, wer Antworten prüft und wie. Häufige Antworten: niemand oder die Person, die gefragt hat. Besprechen Sie Quellen, Tests und Zweitprüfungen. Vereinbaren Sie eine Mindestprüfung für jede Art von Einsatz.

**Welche Daten geben wir bedenkenlos in ein KI-Werkzeug, und welche nicht?**

Sammeln Sie die Arten: Tickets, Logs, Kundennamen, Zugangsdaten, Verträge. Markieren Sie jede als akzeptabel, akzeptabel nach Entfernen sensibler Teile oder nie. Klären Sie das mit Sicherheit und Recht. Schreiben Sie es als einseitige Anleitung.

**Wer ist verantwortlich, wenn eine KI-gestützte Entscheidung schiefgeht?**

Nutzen Sie ein vergangenes Beispiel einer werkzeuggestützten Entscheidung. Fragen Sie, wer geantwortet hat. Vereinbaren Sie, dass eine benannte Person verantwortlich bleibt und welche Belege sie aufbewahren sollte. Notieren Sie jede Lücke, in der niemand es wäre.

**Was würde uns überzeugen, dass sich ein Werkzeug zu behalten lohnt?**

Bitten Sie das Team, die Belege zu beschreiben, die es akzeptieren würde: gesparte Zeit bei gleicher oder besserer Qualität, weniger Fehler, Nutzerzufriedenheit. Besprechen Sie, wie man sie in einem Versuch sammelt. Vereinbaren Sie ein Überprüfungsdatum.

## In der Praxis: ein agiles ITIL-Beispiel

Der IT-Service-Desk einer nationalen Steuerbehörde bearbeitet etwa 1.200 Kontakte pro Woche von Beschäftigten, viele zu Routinefragen. Die Leitung des Desks schlägt einen KI-Assistenten vor, der Antworten aus der Wissensdatenbank vorschlägt und Antworten entwirft. Der Sicherheitsbeauftragte der Behörde sorgt sich um personenbezogene Daten in Tickets und darum, dass falsche Antworten Beschäftigte erreichen.

Sie einigen sich auf einen begrenzten Piloten. Der Assistent arbeitet nur aus genehmigten Wissensartikeln, zeigt, aus welchem Artikel jeder Vorschlag stammt, und sagt, wenn er nichts Relevantes findet. Analysten prüfen jede vorgeschlagene Antwort vor dem Versand, und das Werkzeug kann nicht selbst senden. Tickets werden auf personenbezogene Daten und Zugangsdaten gescannt, die entfernt werden, bevor der Assistent sie sieht. Vor dem Piloten wird ein Testsatz von 200 vergangenen Tickets mit bekannten Antworten genutzt, und das Team hält fest, wo der Assistent versagt. Die Leitung des Desks und der Sicherheitsbeauftragte vereinbaren Messgrößen: wie oft Analysten Vorschläge ändern oder ablehnen, die Zeit bis zur ersten Antwort und eine kurze Zufriedenheitsfrage für Beschäftigte. Der Pilot läuft drei Monate, und die Leitung berichtet an einen gemeinsamen Review, an dem ein Analyst und ein Beschäftigtenvertreter teilnehmen.

Am Ende akzeptieren Analysten die meisten Vorschläge für häufige Fragen, und die Antwortzeit dafür sinkt. Der Testsatz zeigt, dass der Assistent bei Fragen zu einer kürzlich geänderten Richtlinie eine überzeugte, aber falsche Antwort gibt, weil der Wissensartikel veraltet war. Einige Probleme bleiben. Zwei Analysten begannen, in hektischen Zeiten Vorschläge mit wenig Prüfung zu versenden, ein Beschäftigter mit einer nicht standardmäßigen Frage erhielt eine blasse Antwort, die den Punkt verfehlte, und die Bedingungen des Anbieters zur Datenaufbewahrung waren unklar. Die Leitung ergänzt eine Regel, dass Richtlinienänderungen den Wissensartikel aktualisieren müssen, bevor sie in Kraft treten, nutzt eine Stichprobenkontrolle versendeter Antworten durch einen erfahrenen Analysten und bittet den Einkauf und den Sicherheitsbeauftragten, die Bedingungen zu klären, bevor der Pilot ausgeweitet wird.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams fügen Produkten womöglich KI-Funktionen hinzu und nutzen KI, um Code und Tests zu schreiben. Prüfen Sie erzeugten Code auf Korrektheit und Sicherheit, halten Sie Geheimnisse aus Prompts heraus und machen Sie Nutzenden klar, wenn KI beteiligt ist. Bauen Sie Monitoring des KI-Verhaltens in Ihren Service ein.

### Service- und Betriebsteams

Betriebsteams begegnen KI in Monitoring, Desk-Werkzeugen und Analyse. Behandeln Sie KI-Vorschläge als Hypothesen, testen Sie sie und führen Sie Aufzeichnungen. Helfen Sie zu definieren, welche Daten genutzt werden dürfen, und geben Sie Feedback, um das Verankerungsmaterial zu verbessern.

### Führung und Governance

Führungskräfte setzen Richtlinie, Risikobereitschaft und Verantwortlichkeit für KI. Verlangen Sie ein Inventar der Einsätze, ein Risiko-Framework und Belege aus Piloten, nicht Herstellerbehauptungen. Stellen Sie sicher, dass Recht, Sicherheit und Datenschutz von Anfang an beteiligt sind.

### Kunden und Nutzer

Kunden und Nutzenden sollte gesagt werden, wann sie mit einem automatisierten System zu tun haben, wo es zählt, und sie sollten einen Weg zu einem Menschen haben. Melden Sie falsche oder seltsame Antworten, denn sie sind Belege. Fragen Sie Anbieter, wie sie Ihre Daten schützen und KI-Ausgaben prüfen.

## Typische Fehlerbilder

- **Ungeprüften Ausgaben vertrauen.** Erfundene Fakten erreichen Kunden. Verankern Sie stattdessen Antworten in genehmigtem Material und prüfen Sie vor dem Versand.
- **Schatten-KI.** Beschäftigte fügen echte Daten in öffentliche Werkzeuge ein. Stellen Sie stattdessen freigegebene Werkzeuge und eine klare Datenrichtlinie bereit.
- **Keine verantwortliche Person.** Niemand steht für KI-gestützte Entscheidungen ein. Benennen Sie stattdessen eine verantwortliche Person und verlangen Sie Prüfung.
- **Herstellerzahlen glauben.** Nutzenbehauptungen bleiben ungeprüft. Testen Sie stattdessen an Ihren eigenen Fällen und messen Sie.
- **Veraltete Verankerung.** Die Wissensdatenbank ist falsch, und die KI wiederholt es. Halten Sie stattdessen Artikel aktuell und mit Verantwortlichen.
- **Verdeckte Verzerrung.** Manche Nutzende oder Anliegen werden schlechter behandelt. Testen Sie stattdessen über Gruppen hinweg und prüfen Sie Ausgaben.
- **Automatisieren vor dem Verstehen.** Die KI handelt in der Produktion ohne Prüfungen. Beginnen Sie stattdessen mit Vorschlag und Prüfung und gehen Sie nur mit starken Sicherungen zum Handeln über.
- **Keine Aufzeichnungen.** Entscheidungen lassen sich nicht prüfen. Führen Sie stattdessen Protokolle darüber, was gefragt, erzeugt und entschieden wurde.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Richtlinie und Verantwortlichkeit | Nutzung ist ad hoc und unprotokolliert | Einige Teams haben Regeln | Eine schriftliche Richtlinie, ein Inventar der Einsätze und benannte Verantwortliche | Einhaltung der Richtlinie und Vorfälle werden überprüft | Die Richtlinie ist über Teams, Lieferanten und Aufsichtsbehörden abgestimmt |
| Qualität und Verankerung | Ausgaben wird standardmäßig vertraut | Einige Prüfungen bei wichtigen Einsätzen | Antworten sind in genehmigten Quellen verankert und an echten Fällen getestet | Fehler- und Übersteuerungsraten werden gemessen und beachtet | Verankerung und Tests werden über Teams geteilt und verbessert |
| Datenschutz und Fairness | Daten werden frei eingefügt | Einige Datenregeln existieren | Regeln zum Umgang mit Daten und Verzerrungsprüfungen sind Routine | Datenvorfälle und Fairnessbefunde werden verfolgt und behoben | Daten- und Fairnesspraktiken werden in der Organisation und mit Lieferanten koordiniert |
| Wert und Lernen | Wert wird angenommen | Einige Versuche laufen | Piloten haben vereinbarte Messgrößen und Entscheidungen | Nutzen und Kosten werden gegen Ausgangswerte gemessen | Lernen aus KI-Nutzung verbreitet sich laufend über Services |

## Checkliste

- [ ] Wir haben ein Inventar dessen, wo KI in oder um unsere Services genutzt wird, einschließlich inoffizieller Nutzung.
- [ ] Eine benannte Person ist für jeden KI-gestützten Einsatz verantwortlich.
- [ ] Eine schriftliche Richtlinie sagt, welche Daten in welche Werkzeuge dürfen.
- [ ] Personenbezogene Daten und Geheimnisse werden entfernt oder maskiert, bevor Werkzeuge genutzt werden, die dafür nicht freigegeben sind.
- [ ] Antworten, die Kunden gezeigt oder bei Entscheidungen genutzt werden, sind in genehmigtem Material verankert und werden geprüft.
- [ ] Wir haben einen Testsatz echter Fälle und lassen ihn nach Änderungen erneut laufen.
- [ ] Kunden wird gesagt, wann ein automatisiertes System antwortet, wo es zählt, und sie haben einen Weg zu einem Menschen.
- [ ] Wir messen Übersteuerungsrate, Fehlerrate, gesparte Zeit und Nutzermeinungen.
- [ ] Für bedeutende KI-gestützte Entscheidungen werden Aufzeichnungen geführt.
- [ ] Recht, Sicherheit und Datenschutz haben unseren Einsatz und die Bedingungen des Werkzeugs geprüft.

## KI-Prompts

**Zweck: ein Inventar der KI-Nutzung aus dem entwerfen, was Menschen Ihnen sagen.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Testsatz für einen KI-Assistenten entwerfen.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine einseitige KI-Nutzungsrichtlinie für ein Team schreiben.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine KI-erzeugte Antwort prüfen, bevor sie zu einem Nutzer geht.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## KI-Skills

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): nutzen Sie ihn, um klare Prompts zu schreiben, die das richtige Material liefern und nach Unsicherheit fragen.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): nutzen Sie ihn, um zu dokumentieren, wofür ein Modell da ist, wie es getestet wurde und welche Grenzen es hat.
- [data-governance](../../../../skills/data-governance/SKILL.md): nutzen Sie ihn, um zu entscheiden, welche Daten mit welchen Werkzeugen genutzt werden dürfen.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): nutzen Sie ihn, um Fragen an Recht und Datenschutz zur KI-Nutzung vorzubereiten.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um KI-bezogene Risiken, Verantwortliche und Behandlungen festzuhalten.

## Wichtige Quellen

- **AIOps** (Wikipedia): eine kurze Beschreibung von KI für den IT-Betrieb, ihrer Fähigkeiten und ihres behaupteten Nutzens, ohne Kritik.
- **Hallucination (artificial intelligence)** (Wikipedia): Ursachen, Beispiele und Abhilfeideen für falsche Ausgaben.
- **AI Risk Management Framework** (NIST): das freiwillige Framework und sein Profil für generative KI; lesen Sie das Framework selbst für die Einzelheiten.
- **ITIL certifications** (PeopleCert): die öffentlichen Aussagen des Eigners zum neuen ITIL und seinem Modul zur KI-Governance.

## Referenzen

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
