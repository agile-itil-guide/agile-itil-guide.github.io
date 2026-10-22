# Governance, Risiko und Compliance

**Governance, Risiko und Compliance legt Richtung, Grenzen und Belege für die Arbeit einer Organisation fest, und in einer agilen Organisation wirkt es am besten als Leitplanken, die in die Art der Lieferung eingebaut sind, nicht als Tore am Ende.**

## Warum das wichtig ist

Jede Organisation, die Services erbringt, ist jemandem gegenüber rechenschaftspflichtig: Kunden, einem Vorstand, einer Aufsichtsbehörde, der Öffentlichkeit. Diese Rechenschaft nimmt einige bekannte Formen an. Es muss klare Richtung und klare Entscheidungsrechte geben (Governance). Es muss einen ehrlichen Blick darauf geben, was schiefgehen könnte und was dagegen getan wird (Risiko). Und es muss Belege geben, dass die Organisation die für sie geltenden Gesetze, Verträge und Richtlinien befolgt (Compliance).

Agile Teams und Governance-Funktionen begegnen sich oft in einem Zustand gegenseitigen Misstrauens. Teams sehen Genehmigungsgremien, lange Formulare und Regeln, deren Grund sie nicht erkennen. Governance- und Revisionsleute sehen Teams, die die Produktion schnell ändern und wenig Aufzeichnung hinterlassen. Beide Seiten haben recht. Der Weg hindurch ist nicht, dass eine gewinnt, sondern Governance zu gestalten, die mit häufiger Änderung vereinbar ist: klare Grenzen, risikobasierte Kontrollen und Belege, die die Arbeit selbst erzeugt.

Der [Wikipedia-Artikel zu Governance, Risk Management und Compliance](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) beschreibt GRC als ganzheitlichen Ansatz für Governance, Risikomanagement und die Einhaltung von Vorschriften, in den 2000er Jahren entwickelt, um immer komplexere finanzielle Compliance-Anforderungen zu bewältigen. Er nennt keine Kritik und keine IT-spezifischen Frameworks. Dieses Thema verbindet ihn mit den Artikeln zu Risikomanagement und regulatorischer Compliance, mit den früheren Themen zu Änderung, Sicherheit und Kontinuität und mit der Anleitung von DORA zur Genehmigung. Es gibt keine Rechtsberatung; die für Sie geltenden Regeln hängen von Ihrem Land, Ihrer Branche und Ihren Verträgen ab, und die richtige Quelle ist der Text der Regel.

## Kernkonzepte

### Governance

Der GRC-Artikel beschreibt Corporate Governance als die vom Vorstand festgelegten Prozesse, die Struktur formen und Rollen zuweisen. In der IT geht es bei Governance darum, wer was auf welcher Grundlage entscheidet und wie Entscheidungen geprüft werden. COBIT, in Wikipedia als ISACA-Framework für IT-Management und -Governance beschrieben, ist eine Referenz (siehe Thema 2.7 — ITSM-Frameworks und -Standards). Das Service Value System von ITIL enthält Governance als Komponente (siehe Thema 2.3 — Das ITIL Service Value System).

Gute Governance in einer agilen Organisation ist ausdrücklich in Bezug auf:

- **Richtung:** Ziele und Prioritäten und wer sie setzt.
- **Grenzen:** was Teams allein entscheiden dürfen und was Eskalation braucht (siehe Thema 1.9 — Agiles Management).
- **Verantwortlichkeit:** wer für jeden Service einsteht (siehe Thema 5.5 — Produkt- und Service-Verantwortung).
- **Belege:** woher die Organisation weiß, dass Richtung und Grenzen befolgt werden.

### Risikomanagement

Wikipedia beschreibt Risikomanagement als Identifikation, Bewertung und Priorisierung von Risiken, gefolgt vom Minimieren, Überwachen und Kontrollieren ihrer Auswirkung oder Wahrscheinlichkeit. Der Artikel nennt vier Behandlungsoptionen:

| Option | Bedeutung | Beispiel |
|---|---|---|
| **Vermeidung** | Die riskante Tätigkeit nicht ausführen (was auch mögliche Gewinne aufgibt) | Entscheiden, bestimmte Daten nicht zu speichern |
| **Verminderung** | Schwere oder Wahrscheinlichkeit senken | Automatisierte Tests, gestaffelte Rollouts, zusätzliches Monitoring |
| **Teilung** | Last oder Nutzen übertragen, etwa durch Versicherung oder Auslagerung; der Artikel merkt an, "Risikotransfer" sei oft eine Fehlbezeichnung, da die ursprüngliche Partei meist die rechtliche Verantwortung behält | Versicherung, einen Lieferanten beauftragen |
| **Beibehaltung** | Den Verlust hinnehmen, typischerweise bei kleinen oder nicht versicherbaren Risiken | Eine Entscheidung, mit einem kleinen Risiko zu leben |

Der Artikel behandelt auch Chancen, positive unsichere Ereignisse, mit parallelen Strategien. Er merkt an, dass die Risikobewertung Schwere und Wahrscheinlichkeit abwägt und dass Ratendaten oft knapp sind, besonders bei katastrophalen Ereignissen. Er zitiert Kritik: Douglas Hubbard (2009) wird mit der Aussage zitiert, einige Standards zeigten keine messbare Verbesserung beim Risiko, obwohl das Vertrauen in Entscheidungen zu steigen scheine; spätere Forschung deute an, dass finanzielle Vorteile mehr davon abhängen, wie oft und mit welcher Methode Risiken bewertet werden, als von der verwendeten Formel; und Benoit Mandelbrots Unterscheidung zwischen "mildem" und "wildem" Risiko, wobei das Unterschätzen der Wildheit ein häufiger Fehler sei. Der Artikel zitiert ISO 31000, "Risk management - Guidelines", und ist selbst als belegbedürftig markiert.

### Das Risikoregister

Ein **Risikoregister** ist eine Aufzeichnung identifizierter Risiken mit Beschreibung, Bewertung, verantwortlicher Person, gewählter Behandlung und Status. Der für diesen Leitfaden gelesene Artikelauszug erwähnt es nicht, daher ist dies gängige Praxis. Halten Sie es kurz, mit Verantwortlichen und überprüft. Risiken für Services umfassen Sicherheit, Verfügbarkeit, Lieferantenausfall, Abhängigkeit von Schlüsselpersonen und Compliance (siehe Thema 3.13 — Informationssicherheitsmanagement, Thema 3.12 — Service-Continuity-Management und Thema 3.14 — Lieferantenmanagement).

### Compliance

Der Wikipedia-Artikel zu regulatorischer Compliance beschreibt sie als das Ziel, das Organisationen anstreben, wenn sie relevante Gesetze, Richtlinien und Vorschriften kennen und befolgen, und merkt an, dass Organisationen Kontrollen zunehmend in gemeinsamen Frameworks bündeln, um doppelte Arbeit zu verringern. Er sagt, die Definition eines wirksamen Compliance-Plans sei schwer zu fassen gewesen, und erwähnt Standards wie ISO 37301 und ISO 19600. Er nennt Regime wie den Sarbanes-Oxley Act (2002), HIPAA, DSGVO (GDPR), PCI-DSS, den Gramm-Leach-Bliley Act und weitere. Er verzeichnet Kritik: Psychologische Forschung, auf die der Artikel verweist, argumentiert, Belohnungen oder Bußgelder könnten die intrinsische Motivation schwächen und die Compliance untergraben, Datenschutzbefürworter stellen Anforderungen an die Datenspeicherung in Frage, die Durchsetzung unterscheidet sich zwischen Rechtsordnungen, und schnell wechselnde Anforderungen sind schwer zu verfolgen.

Ein praktischer Punkt: Compliance ist nicht eine Sache. Jedes Regime hat seinen eigenen Geltungsbereich und seine eigenen Anforderungen. Erfahren Sie von Ihrer Rechts- oder Compliance-Funktion, welche für welche Ihrer Services gelten, und besorgen Sie sich den Text.

### GRC als eine Sicht

Der GRC-Artikel sagt, GRC umfasse drei verwandte Facetten: Corporate Governance, unternehmensweites Risikomanagement und Compliance, und erwähnt Varianten wie finanzielles, rechtliches und betriebliches GRC. Er schreibt den Begriff der Arbeit von Scott Mitchell aus dem Jahr 2007 und der Open Compliance and Ethics Group zu und merkt an, dass es seit 2002 Software für GRC gibt und einige Unternehmen 2025 begannen, KI-Werkzeuge für GRC zu nutzen. Der Vorteil der kombinierten Sicht ist, dass die drei verknüpft sind: Governance legt fest, was zählt, Risikomanagement findet, was es bedroht, und Compliance zeigt, was getan wird.

### Leitplanken, nicht Tore

Ein **Tor** ist ein Kontrollpunkt, meist manuell, an dem Arbeit auf Genehmigung wartet. Eine **Leitplanke** ist eine in den Weg eingebaute Grenze, die Arbeit vom Abkommen vom Kurs abhält, ohne sie anzuhalten. Beispiele: automatisierte Tests, die bestehen müssen, Richtlinienprüfungen in der Pipeline, die unsichere Konfigurationen blockieren, Budgets mit Warnungen und rollenbasierter Zugriff. Die Anleitung von DORA zur Änderungsgenehmigung sagt, Genehmigung werde am besten durch Peer Review und Automatisierung erreicht, schwergewichtige externe Genehmigung sei mit schlechterer Lieferleistung verbunden, und zusätzliche Genehmigungen als Reaktion auf Instabilität machten die Dinge tendenziell schlimmer (siehe Thema 3.4 — Change Enablement). Leitplanken wenden dieselbe Idee auf die Governance insgesamt an: Die Kontrolle steckt im System und erzeugt ihren eigenen Beleg.

### Beleg als Nebenprodukt

Auditoren brauchen Belege, dass Kontrollen wirken. Eine Pipeline, die festhält, wer geprüft hat, was getestet wurde und was bereitgestellt wurde, liefert Belege für jede Änderung. Ein Service-Katalog mit Verantwortlichen liefert den Beleg der Verantwortlichkeit. Postmortems liefern den Beleg des Lernens. Das ist viel stärker als ein vierteljährliches, für ein Audit geschriebenes Dokument. Besprechen Sie früh mit Auditoren, was sie akzeptieren (siehe Thema 5.1 — Agiles Service-Management).

### Regulierte Umgebungen

Der Wikipedia-Artikel zu agiler Softwareentwicklung berichtet, regulierte Bereiche wie Medizinprodukte, Pharma, Finanzen, Kerntechnik, Automobil und Luftfahrt seien zunächst für ungeeignet für Agile gehalten worden, und es gebe nun Anpassungen, mit Belangen der Qualitätssicherung, der Sicherheit und Security, der Rückverfolgbarkeit sowie der Verifikation und Validierung (siehe Thema 1.3 — Agile Softwareentwicklung). Das Muster, das funktioniert, besteht typischerweise darin, die verlangten Kontrollen zu behalten, ihren Beleg zu automatisieren und sie zum Teil der Definition of Done zu machen, statt sie zu entfernen.

### Grenzen der Quellen

Der GRC-Artikel nennt keine Frameworks oder Kritik und wurde für diesen Leitfaden in einer Kurzfassung gelesen. Der Artikel zum Risikomanagement wurde nur zum Teil gelesen und ist als belegbedürftig markiert. Der Compliance-Artikel gibt weder Kosten noch Auditverfahren. Nutzen Sie diese als Landkarten und gehen Sie für Einzelheiten zu den Primärquellen.

## Bewährte Praktiken

1. **Schreiben Sie Entscheidungsrechte auf.** Sagen Sie für jedes Team oder jeden Service, was es allein entscheiden darf, was Rücksprache verlangt und was Genehmigung braucht. Veröffentlichen Sie es und besprechen Sie es mit den Teams.
2. **Setzen Sie Richtung und Grenzen, nicht detaillierte Anweisungen.** Nennen Sie die Ergebnisse, Budgets, Risikogrenzen und nicht verhandelbaren Regeln. Lassen Sie Teams entscheiden, wie sie innerhalb davon arbeiten.
3. **Führen Sie ein kurzes Risikoregister.** Listen Sie für jeden wichtigen Service die größten Risiken mit einer verantwortlichen Person, einer Behandlung und einem Überprüfungsdatum auf. Prüfen Sie es in einer regelmäßigen Besprechung und streichen Sie Risiken, die weggefallen sind.
4. **Wählen Sie die Behandlung bewusst.** Entscheiden Sie für jedes Risiko, ob Sie es vermeiden, vermindern, teilen oder beibehalten, und halten Sie fest, wer entschieden hat. Denken Sie daran, dass das Teilen eines Risikos Ihre eigene Verantwortlichkeit nicht beseitigt.
5. **Bewerten Sie oft, mit einfachen Methoden.** Der Artikel berichtet, der Nutzen hänge mehr von Häufigkeit und Methode ab als von der Formel. Prüfen Sie Risiken regelmäßig mit einer Methode, die das Team versteht.
6. **Wissen Sie, welche Regeln für welche Services gelten.** Bitten Sie Ihre Rechts- oder Compliance-Funktion um eine Liste der geltenden Regime mit dem Quelltext. Halten Sie sie zu jedem Service fest.
7. **Bauen Sie Leitplanken in die Pipeline ein.** Automatisieren Sie Tests, Sicherheitsscans, Richtlinienprüfungen und Zugriffsgrenzen, damit unsichere Arbeit früh gestoppt wird. Behandeln Sie die Kontrollen als Code mit Verantwortlichen.
8. **Erfassen Sie Belege als Nebenprodukt.** Stellen Sie sicher, dass die Werkzeuge Reviews, Genehmigungen, Testergebnisse, Deployments und Incidents festhalten. Vereinbaren Sie mit Auditoren, was sie akzeptieren.
9. **Ordnen Sie Kontrollen einmal zu.** Wenn Sie mehrere Frameworks erfüllen müssen, beschreiben Sie Ihre Kontrollen einmal und ordnen Sie sie jeder Anforderung zu, wie es laut Compliance-Artikel Organisationen zunehmend tun.
10. **Nutzen Sie risikobasierte Pfade für Änderungen.** Machen Sie risikoarme Änderungen schnell, markieren Sie risikoreiche zur Prüfung und behalten Sie ein zentrales Gremium für Koordination und Zielkonflikte (siehe Thema 3.4 — Change Enablement).
11. **Beziehen Sie Governance in Retrospektiven ein.** Fragen Sie regelmäßig, welche Kontrollen halfen und welche nur Verzögerung brachten. Entfernen oder gestalten Sie die letzteren neu, mit der verantwortlichen Person und dem Auditor.
12. **Planen Sie für Änderungen der Regeln.** Benennen Sie jemanden, der Änderungen an Gesetzen, Standards und Verträgen verfolgt und berichtet, was für Ihre Services zählt.

## Fragen zur Diskussion im Team

**Welche Genehmigungen müssen wir einholen, und wovor schützt jede?**

Listen Sie die Genehmigungen bei einer typischen Änderung oder einem Kauf auf. Fragen Sie bei jeder, welches Risiko sie adressiert und ob sie je etwas abgelehnt hat. Genehmigungen, die nichts schützen, sind Kandidaten zur Entfernung. Genehmigungen, die vor einem echten Risiko schützen, lassen sich womöglich leichter erfüllen. Die Moderation kann fragen, welchen Beleg die genehmigende Person statt einer Unterschrift akzeptieren würde.

**Was sind die fünf größten Risiken für unseren Hauptservice, und wer verantwortet jedes?**

Bitten Sie Menschen, Risiken unabhängig aufzulisten, und vergleichen Sie dann. Die Unterschiede zeigen, was das Team sieht. Prüfen Sie, dass jedes eine verantwortliche Person und eine Behandlung hat. Besprechen Sie, welche standardmäßig hingenommen werden und nicht per Entscheidung.

**Welche Regeln gelten für uns, und wo liegt der Text?**

Fragen Sie nach der Liste der geltenden Gesetze, Standards und Verträge. Kann niemand es sagen, finden Sie heraus, wer es kann. Prüfen Sie, dass die Technik weiß, was jede von ihr verlangt. Vereinbaren Sie einen Weg, die Liste aktuell zu halten.

**Welche Belege erzeugen unsere Werkzeuge bereits, die eine Auditorin nutzen könnte?**

Listen Sie die Aufzeichnungen auf: Reviews, Testergebnisse, Deployment-Historie, Incident-Reviews. Fragen Sie, was eine Auditorin zuletzt verlangt hat und ob die Werkzeuge es liefern könnten. Bestimmen Sie eine Aufzeichnung zum Automatisieren. Laden Sie eine Auditorin ein, sich umzusehen.

**Wo haben wir nach einem Problem eine Kontrolle ergänzt, und hat sie geholfen?**

Fragen Sie nach Beispielen. Vergleichen Sie mit der Warnung von DORA, dass zusätzliche Genehmigungen als Reaktion auf Instabilität die Dinge tendenziell schlimmer machen. Fragen Sie, ob eine andere Reaktion, etwa bessere Tests oder kleinere Änderungen, funktioniert hätte. Halten Sie eine Lehre fest.

**Wie sähe eine Leitplanke für etwas aus, das wir jetzt mit einem Tor sichern?**

Wählen Sie ein Tor. Fragen Sie, was das Tor verhindern soll und wie sich das automatisch verhindern ließe. Zum Beispiel eine Richtlinienprüfung, die eine riskante Konfiguration blockiert. Vereinbaren Sie einen Versuch mit der verantwortlichen Person des Tors.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationaler Pensionsfonds betreibt einen Online-Leistungsrechner und einen Zahlungsservice. Er ist reguliert, wird jährlich geprüft und unterliegt strengen Regeln zur Datenverarbeitung. Die Governance-Stelle des Fonds verlangt, dass jede Produktionsänderung von einem wöchentlich tagenden Änderungsgremium geprüft wird und jedes Projekt vor dem Release eine 30-seitige Risikobewertung abschließt. Entwickler veröffentlichen selten und in großen Batches. Ein jüngstes Release verursachte eine falsche Berechnung für eine kleine Gruppe von Mitgliedern, und die Antwort des Gremiums war, eine weitere Genehmigung hinzuzufügen.

Die Leitung des Risikos und die Leitung der Technik beschließen, einen anderen Weg zu versuchen. Sie beginnen mit einer Liste der Regime, die für den Rechner und den Zahlungsservice gelten, von der Rechtsabteilung des Fonds samt dem Text jedes Regimes besorgt, und ordnen die Kontrollen des Fonds ihnen einmal zu. Die Rolle des Änderungsgremiums ändert sich: Routinemäßige, gut getestete Änderungen mit automatisierten Tests und Peer Review gehen ohne es durch, risikoreiche Änderungen (solche, die Berechnungsregeln oder Zahlungen berühren) werden durch eine kurze Liste von Signalen markiert und binnen zwei Tagen von einer Risikospezialistin geprüft, und das Gremium tagt, um zu koordinieren und Ausnahmen zu behandeln. Die Pipeline hält fest, wer geprüft hat und welche Tests bestanden wurden, und eine Richtlinienprüfung blockiert Releases, die die Berechnungstestsuite nicht bestehen. Die Risikobewertung wird durch einen einseitigen Registereintrag je Service ersetzt, monatlich überprüft.

Ein interner Auditor sieht die Pipeline-Aufzeichnungen und das Register und bittet um eine Stichprobe von Reviews, um zu prüfen, ob das Peer Review echt ist; die Leitung der Technik organisiert eine vierteljährliche Stichprobe durch einen erfahrenen Ingenieur. Nach sechs Monaten sind Releases wöchentlich, die Änderungsfehlerquote ist niedriger, und das Audit findet die Belege ausreichend. Einige Schwierigkeiten bleiben. Zwei Teams wenden die Signale für hohes Risiko uneinheitlich an, die Anleitung einer Aufsichtsbehörde verlangt für bestimmte Berechnungsänderungen eine ausdrückliche Freigabe, die der neue Pfad nicht erfasst, und die Registereinträge werden in einigen Teams mit wenig Sorgfalt geschrieben. Die Leitung des Risikos ergänzt den Freigabeschritt für diese Änderungen, gibt Beispiele für die Signale heraus und bittet die Teams, einen Registereintrag zu einem monatlichen Review mitzubringen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams führen Kontrollen durch ihre Pipelines und Praktiken aus. Lernen Sie, welche Regeln für Ihren Service gelten und warum, bieten Sie Wege an, Belege automatisch zu erzeugen, und bringen Sie Risiko in die Planung. Behandeln Sie Leitplanken als Teil des Produkts.

### Service- und Betriebsteams

Betriebsteams verantworten viele Kontrollen: Zugang, Monitoring, Kontinuität und Aufzeichnungen. Halten Sie Belege in Werkzeugen, sagen Sie der Governance, was in der Praxis funktioniert, und helfen Sie, Tore umzugestalten, die nur Verzögerung bringen. Nehmen Sie mit echten Incident-Daten an Risiko-Reviews teil.

### Führung und Governance

Führungskräfte setzen Richtung, Grenzen und Verantwortlichkeit und entscheiden, welche Risiken sie akzeptieren. Verlangen Sie verständliche Risikosichten und Belege, nicht Dokumentenmenge. Seien Sie bereit, ein Tor durch eine Leitplanke zu ersetzen, wenn sich der Zweck erfüllen lässt. Halten Sie die Rolle des Gremiums auf Koordination und echte Zielkonflikte ausgerichtet.

### Kunden und Nutzer

Kunden und Nutzende verlassen sich darauf, dass die Organisation mit ihren Daten und ihrem Geld ordentlich umgeht. Fragen Sie Anbieter, welchen Standards und Regeln sie folgen und wie sie es zeigen. Erwarten Sie ehrliche Information nach einem Ausfall. Haben Sie besondere Anforderungen, etwa die Regel einer Aufsichtsbehörde, sagen Sie es dem Anbieter früh.

## Typische Fehlerbilder

- **Governance als letztes Tor.** Reviews kommen am Ende und verlangsamen alles. Bauen Sie stattdessen Leitplanken in die Arbeit ein und prüfen Sie nach Risiko.
- **Dokumente als Beleg.** Berichte werden für den Auditor geschrieben. Erzeugen Sie stattdessen Belege aus den in der Arbeit genutzten Werkzeugen.
- **Ein Pfad für alle Änderungen.** Routineänderungen warten mit riskanten. Klassifizieren Sie stattdessen nach Risiko.
- **Ein Risikoregister, das niemand liest.** Es wird zu einer langen Liste. Halten Sie es stattdessen kurz, mit Verantwortlichen und überprüft.
- **Risikotransfer als Risikobeseitigung behandeln.** Es wird angenommen, Versicherung oder Auslagerung beende die Verantwortlichkeit. Denken Sie stattdessen daran, dass die ursprüngliche Partei meist die Verantwortung behält.
- **Unbekannte Regeln.** Teams wissen nicht, welche Gesetze und Standards gelten. Besorgen Sie stattdessen die Liste und den Text von Recht oder Compliance.
- **Nach jedem Incident eine Kontrolle ergänzen.** Prozess wächst und Tempo sinkt. Suchen Sie stattdessen die Ursache und beheben Sie sie mit Tests, kleineren Änderungen oder schnellerer Wiederherstellung.
- **Compliance als Strafe.** Bußgelder und Angst dominieren. Erklären Sie stattdessen den Zweck der Regeln und machen Sie den sicheren Weg zum leichten.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Governance und Entscheidungsrechte | Entscheidungen folgen Gewohnheit und Hierarchie | Einige Teams haben schriftliche Grenzen | Entscheidungsrechte, Grenzen und Verantwortliche sind aufgeschrieben und geteilt | Die Wirksamkeit der Governance wird an Ergebnissen überprüft | Governance ist über Teams, Lieferanten und Partner abgestimmt |
| Risikomanagement | Risiken werden informell besprochen | Einige Services haben Risikolisten | Kurze Risikoregister mit Verantwortlichen und Behandlungen werden regelmäßig überprüft | Risikomessgrößen und Ereignisse informieren Bewertung und Behandlung | Risikosichten werden in der Organisation geteilt und konsolidiert |
| Compliance und Beleg | Belege werden für Audits zusammengestellt | Einige Belege werden von Werkzeugen erzeugt | Geltende Regeln sind aufgelistet; Kontrollen sind einmal zugeordnet; Belege kommen aus Werkzeugen | Wirkung der Kontrollen und Belegqualität werden gemessen | Belege werden laufend mit Auditoren und Partnern geteilt |
| Leitplanken und Änderungspfade | Kontrollen sind manuelle Tore | Einige automatisierte Prüfungen existieren | Risikobasierte Pfade und Pipeline-Leitplanken sind Standard | Wirksamkeit der Leitplanken und Fehlblockaden werden verfolgt und justiert | Leitplanken werden über Teams geteilt und verbessert |

## Checkliste

- [ ] Entscheidungsrechte und Grenzen sind für jedes Team oder jeden Service aufgeschrieben.
- [ ] Jeder wichtige Service hat ein kurzes Risikoregister mit Verantwortlichen, Behandlungen und Überprüfungsdaten.
- [ ] Wir haben eine Liste der Gesetze, Standards und Verträge, die für jeden Service gelten, mit Quelltext.
- [ ] Unsere Kontrollen sind einmal beschrieben und jeder Anforderung zugeordnet.
- [ ] Die Pipeline hält Reviews, Tests und Deployments als Beleg fest.
- [ ] Auditoren haben gesagt, welche Belege sie anstelle von Unterschriften akzeptieren.
- [ ] Routine- und riskante Änderungen folgen verschiedenen Pfaden mit klaren Kriterien.
- [ ] Jede Genehmigung hat einen benannten Zweck, und Genehmigungen, die nie ablehnen, werden überprüft.
- [ ] Nach Incidents ergänzte Kontrollen werden auf ihre Wirkung überprüft.
- [ ] Jemand verfolgt Änderungen geltender Regeln und berichtet sie.

## KI-Prompts

**Zweck: eine Genehmigungskette in Leitplanken-Optionen verwandeln.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Risikoregister-Eintrag entwerfen.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: die Belege auflisten, die Ihre Werkzeuge bereits für eine Kontrolle erzeugen.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein Governance-Gespräch zwischen Delivery-Teams und Revision vorbereiten.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um Risiken, Behandlungen und Verantwortliche festzuhalten und zu überprüfen.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): nutzen Sie ihn, um ein leichtes Protokoll von Risiken, Maßnahmen, Problemen und Entscheidungen zu führen.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): nutzen Sie ihn, um Frühwarn-Messgrößen für Risiken zu wählen.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): nutzen Sie ihn, um Audits vorzubereiten und Belege zu ordnen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um Entscheidungsrechte und Verantwortlichkeiten ausdrücklich zu machen.

## Wichtige Quellen

- **Governance, risk management, and compliance** (Wikipedia): ein kurzer Überblick über GRC, seine Komponenten und seine Geschichte.
- **Risk management** (Wikipedia): die Definition, Behandlungsoptionen und Vorbehalte zur Risikobewertung.
- **Regulatory compliance** (Wikipedia): die Definition, genannte Regime und Kritik.
- **Streamlining change approval** (DORA, dora.dev): forschungsbasierte Anleitung dazu, schwergewichtige Genehmigung durch Peer Review und Automatisierung zu ersetzen.

## Referenzen

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes-Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
