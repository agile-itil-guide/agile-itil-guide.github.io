# Software-Asset-Management

**Das Software-Asset-Management stellt sicher, dass eine Organisation die Software kauft, die sie braucht, nutzt, was sie kauft, und sich an die Bedingungen hält, die sie akzeptiert hat, und für agile Teams heißt das heute, neben lizenzierten Produkten auch Open-Source-Komponenten und Abonnements zu verfolgen.**

## Warum das wichtig ist

Software ist einer der größten und am wenigsten sichtbaren Kostenblöcke in der IT. Lizenzen werden für Menschen gekauft, die gegangen sind, Abonnements verlängern sich unbemerkt, und Produkte werden auf Weisen installiert, die die Lizenz nicht erlaubt. Jedes ist ein Kosten- oder Risikofaktor. Ein Herstelleraudit kann aus einer kleinen Abweichung eine große Rechnung machen, und eine ungepatchte Komponente in einer vergessenen Anwendung kann einem Angreifer eine Tür öffnen.

Agile Teams verändern das Bild. Entwickler ziehen Bibliotheken mit einem einzigen Befehl hinein, und moderne Anwendungen werden weitgehend aus Teilen Dritter und Open-Source-Teilen zusammengesetzt. Der Wikipedia-Artikel zur Software-Lieferkette berichtet, dass Open-Source-Software in 96 Prozent der kommerziellen Codebasen gefunden wurde, die ein Anbieter 2024 analysierte, und zitiert Synopsys. Teams kaufen außerdem Cloud-Services und Abonnements per Karte, außerhalb des Einkaufsprozesses. Software-Asset-Management (SAM) ist daher über das Zählen von Installationen einiger großer Produkte hinausgewachsen zu einer Praktik, die abdeckt, was genutzt wird, was geschuldet wird und was vertrauenswürdig ist.

Der [Wikipedia-Artikel zum Software-Asset-Management](https://en.wikipedia.org/wiki/Software_asset_management) beschreibt SAM als Geschäftspraktik zur Steuerung und Optimierung von Kauf, Bereitstellung, Wartung, Nutzung und Entsorgung von Software, mit den Zielen, IT-Kosten zu senken, geschäftliche und rechtliche Risiken zu begrenzen und die Produktivität der Endnutzenden zu verbessern. Er behandelt weder Cloud-Services noch SBOMs noch Reifegradmodelle, daher ergänzt dieses Thema die Artikel zur Software-Lieferkette und zu Open-Source-Software. Dieses Thema beschreibt Praxis und gibt keine Rechtsberatung; Lizenzbedingungen unterscheiden sich, und die richtige Quelle ist der Text der Lizenz oder des Vertrags.

## Kernkonzepte

### Was SAM ist

Laut Wikipedia ist SAM Teil des IT-Asset-Managements (siehe Thema 4.1 — IT-Asset-Management). Es zitiert ITIL mit der Beschreibung, dass es die wirksame Steuerung, Kontrolle und den Schutz von Software-Assets einschließt. Seine strategischen Ziele sind laut Artikel unter anderem, Software- und Supportkosten durch Mengenverträge und die Neuzuteilung ungenutzter Lizenzen zu senken, Sicherheitsrichtlinien und Standards für Desktop, Server und Mobilgeräte durchzusetzen, die Produktivität durch schnelleres und verlässlicheres Bereitstellen von Technologie zu verbessern, den Steuerungsaufwand durch Automatisierung zu begrenzen und Richtlinien für Beschaffung, Bereitstellung, Nutzung und Ausmusterung festzulegen.

### Lizenz-Compliance

Der Artikel beschreibt SAM als Abwägung der Zahl gekaufter Lizenzen gegen die Zahl tatsächlich verbrauchter und als Sicherstellung, dass die Nutzung den Lizenzbedingungen jedes Herstellers entspricht. Er merkt an, dass Installationen das häufigste Maß für den Verbrauch sind, manche Software aber nach Nutzenden, Kapital, Prozessoren oder CPU-Kernen lizenziert wird. Organisationen können ihre Haftung bei Audits durch Hersteller oder Dritte wie die Business Software Alliance verringern, sagt der Artikel, durch laufende Software-Inventuren, Einkaufsrichtlinien und Werkzeuge. Der Artikel beschreibt keine Auditverfahren. Der Sinn der Übung ist, Ihre **Berechtigung** (was Sie nutzen dürfen), Ihren **Verbrauch** (was Sie nutzen) und die Lücke zwischen beiden zu kennen.

### Die drei Fragen

Eine SAM-Praxis beantwortet für jedes wichtige Produkt drei Fragen:

| Frage | Was sie braucht |
|---|---|
| Wozu sind wir berechtigt? | Verträge, Lizenzbedingungen, Rechnungen und Kaufnachweise |
| Was nutzen wir? | Bestands- und Nutzungsdaten aus Discovery und Metering |
| Wie groß ist die Lücke, und was tun wir damit? | Vergleich, Entscheidungen über Kaufen, Neuzuteilen oder Entfernen |

Eine Lücke kann in beide Richtungen laufen: Unterlizenzierung, ein Compliance-Risiko, und Überlizenzierung, Verschwendung.

### Standards: ISO/IEC 19770

Der Artikel listet die Teile der Familie ISO/IEC 19770 auf: 19770-1:2017 (Anforderungen an das IT-Asset-Management-System, ein Prozess-Framework, das in gestuften Ebenen umgesetzt werden kann), 19770-2:2015 (Software-Identifikations-Tags), 19770-3:2016 (ein Schema für das Berechtigungsmanagement mit Lizenz-, Vertrags- und Rechnungsdetails), 19770-4:2017 (Daten zur Messung der Ressourcennutzung) und 19770-5:2015 (Überblick und Vokabular). Der Artikel sagt, der Standard zur Software-Identifikation werde von IBM, Microsoft und Adobe unterstützt. Prüfen Sie die Standards auf aktuelle Ausgaben und den genauen Inhalt.

### SAM-Technologien und ihre Grenzen

Der Artikel listet Werkzeuge für Software-Inventur, Lizenzverwaltung, Metering, Anwendungskontrolle, Bereitstellung, Patch-Management, Anfragemanagement und Produktkatalogisierung auf. Er nennt auch ein Beispiel für Größenordnungen: Metering-Regeln in Microsofts System Center Configuration Manager funktionieren bei kleinen Beständen gut, erzeugen aber im Unternehmensmaßstab nicht handhabbare Datenmengen. Werkzeuge helfen, aber sie brauchen eine klare Frage und eine verantwortliche Person.

### Open-Source-Software

Wikipedia definiert Open-Source-Software als Software, deren Quellcode öffentlich verfügbar ist und die Nutzende nutzen, studieren, ändern und verteilen dürfen, typischerweise unter einer offenen Lizenz. Die Open Source Initiative pflegt die gängigste Definition, mit zehn Kriterien und einer Liste genehmigter Lizenzen, auch wenn der Artikel sagt, die OSI habe keine rechtliche Autorität über den Begriff. Er beschreibt zwei Lizenzfamilien:

| Familie | Was sie von Empfängern verlangt | Genannte Beispiele |
|---|---|---|
| **Permissiv** | Urheberrechtsvermerke bewahren und die Lizenz beilegen; keine Pflicht, den eigenen Code unter derselben Lizenz freizugeben | BSD, MIT, Apache |
| **Copyleft** | Für mindestens einige Teile dessen, was man verteilt, dieselbe Lizenz verwenden (starkes Copyleft gilt für alle abgeleiteten Werke; schwaches Copyleft nur unter bestimmten Bedingungen) | GNU GPL (stark); MPL, EPL (schwach) |

Beide Familien, sagt der Artikel, verlangen, Urheberrechtsvermerke zu bewahren und dem Code eine Kopie der Lizenz beizufügen. Er zitiert *Jacobson v Katzer* (2008), in dem ein Gericht die Bedingungen einer offenen Lizenz, einschließlich der Namensnennung, nach Urheberrecht durchsetzte. Er merkt an, dass Organisationen Open-Source-Programmbüros einrichten, um ihre Strategien zu steuern. Open-Source-Bedingungen sind echte Pflichten. Welche gelten, hängt davon ab, wie Sie die Software nutzen und verteilen; fragen Sie Ihre Rechtsfunktion und lesen Sie die Lizenz.

### Die Software-Lieferkette und SBOMs

Der Artikel zur Software-Lieferkette beschreibt sie als die Komponenten, Bibliotheken, Werkzeuge und Prozesse, die genutzt werden, um ein Software-Artefakt zu entwickeln, zu bauen und zu veröffentlichen. Er nennt Risiken: Angreifer können eine vorgelagerte Komponente kompromittieren, um alle nachgelagerten Nutzenden zu erreichen, und zitiert Beispiele wie Log4Shell 2021, den SolarWinds-Angriff 2020 und die XZ-Utils-Hintertür 2024. Er beschreibt eine **Software Bill of Materials (SBOM)** als Inventar der Komponenten eines Software-Artefakts, einschließlich Open-Source- und proprietärer Teile, das Software-Gegenstück zu einer Stückliste der Fertigung. SBOMs unterstützen die Analyse von Schwachstellen und Lizenzen.

Der Artikel berichtet Grenzen: Tabellen lassen sich nicht automatisch mit Schwachstellendaten anreichern und sollten in einem abfragbaren Repository gespeichert werden; richtliniengesteuerte SBOMs sind selten, wobei eine Studie fand, dass etwa 0,56 Prozent beliebter GitHub-Repositories sie enthalten; weniger als die Hälfte der getesteten Projekte schließt SBOMs in Releases ein, und viele sind unvollständig; und eine Studie zu sechs Java-SBOM-Werkzeugen fand häufige Ungenauigkeiten. Er merkt an, dass Sichtbarkeit allein Integrität nicht garantieren kann. Er berichtet auch, dass die US-Executive-Order 14028, am 12. Mai 2021 unterzeichnet, NIST und NTIA anwies, Anleitung zur Sicherheit der Software-Lieferkette einschließlich SBOMs herauszugeben, und dass die Mindestelemente der NTIA in Datenfelder, Automatisierungsunterstützung sowie Praktiken und Prozesse fallen. Der Artikel nennt keine SBOM-Formate und beschreibt den Cyber Resilience Act der Europäischen Union nicht. Regeln zu SBOMs unterscheiden sich nach Land und Branche; fragen Sie Ihre Compliance-Funktion, was für Sie gilt.

### SaaS und Cloud-Abonnements

Der SAM-Artikel erörtert Software as a Service (SaaS) oder Cloud nicht. Die praktische Erfahrung zeigt, dass Abonnement-Software neue Probleme schafft: Käufe außerhalb des Einkaufs, Lizenzplätze, die niemand entfernt, überlappende Werkzeuge und Daten, die ohne Prüfung bei Lieferanten abgelegt werden (siehe Thema 3.14 — Lieferantenmanagement und Thema 4.5 — IT-Finanzmanagement und FinOps). SAM für Abonnements konzentriert sich darauf zu entdecken, was gekauft wird, wer es verantwortet, wer es nutzt und wann es sich verlängert.

### Grenzen der Quellen

Der SAM-Artikel deckt weder Auditverfahren noch Kataloge von Lizenzarten noch Reifegradmodelle ab, und seine Hauptreferenzen enthalten veraltete Posten von 2006 bis 2009. Der Artikel zur Software-Lieferkette berichtet Zahlen aus Umfragen und Studien von ungleicher Qualität. Nutzen Sie die Quellen, um Fragen zu rahmen, und Lizenztexte und Verträge für Antworten.

## Bewährte Praktiken

1. **Beginnen Sie mit den Produkten, die am meisten zählen.** Wählen Sie die wenigen größten oder riskantesten Produkte nach Kosten oder rechtlicher Exponierung und bringen Sie dort zuerst Berechtigung, Bestand und Nutzung in Ordnung.
2. **Bewahren Sie den Berechtigungsnachweis auf.** Speichern Sie Verträge, Rechnungen und Lizenzbedingungen dort, wo sie auffindbar sind, und verknüpfen Sie sie mit den Produkteinträgen. Ohne Beleg können Sie in einem Audit keine Position verteidigen.
3. **Kennen Sie die Lizenzmetrik.** Halten Sie für jedes Produkt fest, wie gezählt wird: je Nutzer, Gerät, Prozessor, Kern oder anders. Installationen zu zählen, wenn die Lizenz je Kern gilt, liefert die falsche Antwort.
4. **Vergleichen Sie Berechtigung und Nutzung regelmäßig.** Vergleichen Sie bei wichtigen Produkten mindestens vierteljährlich, was Sie nutzen dürfen, mit dem, was Sie nutzen. Handeln Sie auf die Lücke durch Kaufen, Neuzuteilen oder Entfernen.
5. **Holen Sie ungenutzte Lizenzen zurück.** Nutzen Sie Nutzungsdaten, um Lizenzen zu finden, die über einen festgelegten Zeitraum niemand genutzt hat, und weisen Sie sie nach Rücksprache mit den Verantwortlichen neu zu oder kündigen Sie sie.
6. **Steuern Sie, wie Software hereinkommt.** Machen Sie es leicht, genehmigte Software anzufragen, und schwer, außerhalb des Prozesses zu kaufen. Beziehen Sie Abonnements und Kartenkäufe in Ausgabenreviews ein.
7. **Behandeln Sie Open-Source-Komponenten als Assets.** Führen Sie ein Inventar der Open-Source-Komponenten in Ihren Produkten, mit Lizenz und Version. Prüfen Sie Lizenzen gegen die Art, wie Sie die Software nutzen und verteilen, mit rechtlichem Rat.
8. **Erzeugen Sie SBOMs im Build.** Erzeugen Sie für jeden Build automatisch eine Software Bill of Materials, speichern Sie sie an einem abfragbaren Ort und nutzen Sie sie, um auf Schwachstellen zu reagieren und Kundenfragen zu beantworten. Prüfen Sie die SBOM am Build, da Werkzeuge ungenau sein können.
9. **Verfolgen Sie Abonnements.** Halten Sie für jedes Verantwortliche, Zweck, Kosten, Zahl der Plätze, Nutzende, Verlängerungstermin und gehaltene Daten fest. Prüfen Sie vor der Verlängerung.
10. **Verknüpfen Sie Software mit Services.** Halten Sie fest, welche Services welche Software und Versionen nutzen, damit eine Schwachstelle oder eine Lizenzänderung zu den betroffenen Services zurückverfolgt werden kann (siehe Thema 4.4 — Konfigurationsmanagement).
11. **Bereiten Sie sich ruhig auf Audits vor.** Halten Sie Aufzeichnungen aktuell, benennen Sie eine Kontaktperson und kennen Sie Ihre Rechte und Pflichten aus dem Vertrag. Warten Sie nicht auf die Mitteilung, um sich zu ordnen.
12. **Mustern Sie Software ordentlich aus.** Entfernen Sie sie von Systemen, beenden Sie Lizenzen und Abonnements und aktualisieren Sie Aufzeichnungen. Ungenutzte Software ist ein Kostenfaktor und eine Angriffsfläche.

## Fragen zur Diskussion im Team

**Wissen wir bei unseren drei teuersten Softwareprodukten, was wir nutzen dürfen und was wir nutzen?**

Fragen Sie nach der Zahl der gehaltenen Lizenzen und der Zahl der genutzten je Produkt. Vergleichen Sie. Häufige Ergebnisse überraschen: mehr Plätze als Nutzende oder Nutzende über die Plätze hinaus. Die Moderation kann fragen, wo der Berechtigungsnachweis aufbewahrt wird. Planen Sie, die größte Lücke abzugleichen.

**Welche Software haben Menschen gekauft oder installiert, ohne es jemandem zu sagen?**

Seien Sie ehrlich und nicht wertend. Fragen Sie nach Werkzeugen, die per Karte gekauft wurden, kostenlosen Werkzeugen bei der Arbeit und Browser-Erweiterungen. Typische Gründe sind Tempo und unklarer Prozess. Besprechen Sie, was den genehmigten Weg schnell genug machen würde. Vereinbaren Sie einen Registrierungsschritt.

**Von welchen Open-Source-Komponenten hängen unsere Produkte ab, und was sind ihre Lizenzen?**

Fragen Sie, ob jemand eine Liste liefern kann. Wenn nicht, besprechen Sie, wie man sie aus dem Build erzeugt. Fragen Sie dann, wie Lizenzen geprüft werden. Denken Sie daran, dass sich die Pflichten zwischen permissiven und Copyleft-Lizenzen unterscheiden. Planen Sie mit dem Recht, die Fälle mit hohem Risiko zu prüfen.

**Wenn morgen eine schwere Schwachstelle in einer verbreiteten Bibliothek auftauchte, wie lange würde es dauern zu wissen, ob wir sie nutzen?**

Gehen Sie die Schritte durch: wer informiert wird, wie Sie suchen, woher Sie die Version in jedem Service kennen. Die Antwort zeigt, wie weit SBOMs und Inventare helfen würden. Vereinbaren Sie eine erste Verbesserung, etwa eine Stückliste in der Pipeline zu erzeugen.

**Welche Abonnements verlängern sich im nächsten Quartal, und wer entscheidet, ob wir sie behalten?**

Listen Sie die Verlängerungen auf. Fragen Sie bei jedem, wer es verantwortet, wie viele Plätze aktiv sind und was geschieht, wenn es gekündigt wird. Oft verantwortet niemand die Entscheidung. Weisen Sie Verantwortliche zu und ergänzen Sie vor jeder Verlängerung ein Überprüfungsdatum.

**Wie würden wir auf die Mitteilung eines Herstelleraudits reagieren?**

Fragen Sie, wer es bearbeiten würde und welche Belege er hat. Besprechen Sie, ob die Aufzeichnungen vollständig sind. Ziel ist ein ruhiger Plan, nicht die Angst vor Audits. Vereinbaren Sie eine Kontaktperson und eine Checkliste.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationaler Postdienst betreibt etwa 60 interne Anwendungen und eine kundenorientierte Paketverfolgungsplattform, die ein Team von fünfzehn Personen gebaut hat. Ein Hersteller teilt der IT-Abteilung ein Lizenzaudit für ein Datenbankprodukt mit. Die ITAM-Beauftragte stellt fest, dass die Lizenzaufzeichnungen über drei Tabellen verstreut sind und niemand sagen kann, auf wie vielen Prozessorkernen die Datenbank jetzt läuft, weil virtuelle Maschinen viele Male zwischen Hosts verschoben wurden.

Die ITAM-Beauftragte, ein Datenbankadministrator und die Leitung des Einkaufs stellen die Belege zusammen. Sie sammeln den Vertrag, die Lizenzmetrik (nach Prozessorkern), die Rechnungen und Discovery-Daten dazu, wo die Datenbank läuft. Sie stellen fest, dass das Produkt in einer Umgebung auf mehr Kernen läuft als gekauft wurden und in einer anderen auf weniger, wo Lizenzen ungenutzt sind. Nach einem Gespräch mit dem Hersteller weisen sie die ungenutzten Lizenzen neu zu, kaufen eine kleine Zahl zusätzlicher und verlegen eine nicht wesentliche Umgebung auf eine kostenlose Alternative. Die Kosten liegen weit unter dem, was ein Auditbefund gewesen wäre, sind aber nicht unerheblich.

Zur selben Zeit wird das Plattformteam von einem Großkunden um eine Liste der Softwarekomponenten der Paketverfolgungsplattform gebeten. Das Team erkennt, dass es keine liefern kann. Es fügt einen Build-Schritt hinzu, der für jedes Release eine Stückliste erzeugt und in einem Repository speichert. Die erste Ausgabe enthält eine Bibliothek mit einer Lizenz, die das Rechtsteam nicht geprüft hatte, und sie beschließen, sie zu ersetzen. Probleme bleiben. Das SBOM-Werkzeug des Teams übersieht Komponenten in einer Sprache, und eine getrennte Forschungsgruppe kauft weiterhin Abonnements mit einer Abteilungskarte. Die ITAM-Beauftragte fragt den Anbieter des Werkzeugs nach der Lücke und überzeugt die Abteilung, ihre Abonnements zu registrieren.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams bringen den größten Teil der Software in die Organisation. Halten Sie die Komponenten und Abonnements fest, die Sie hinzufügen, erzeugen Sie Stücklisten in Ihren Builds und fragen Sie, bevor Sie eine Bibliothek mit unvertrauter Lizenz nutzen. Teilen Sie Befunde mit Recht und Sicherheit.

### Service- und Betriebsteams

Betriebsteams führen Inventar, Patching und Metering. Halten Sie das Software-Inventar mit Services verknüpft, patchen Sie schnell, wenn Schwachstellen auftreten, und holen Sie ungenutzte Lizenzen zurück. Helfen Sie dem Einkauf zu verstehen, wie Produkte tatsächlich genutzt werden.

### Führung und Governance

Führungskräfte tragen das Risiko der Nichteinhaltung und die Ausgaben. Verlangen Sie Berechtigung und Verbrauch für die größten Produkte, eine Sicht auf Abonnements und einen Plan für Open-Source- und Lieferkettenrisiko. Unterstützen Sie einen Einkaufsweg, der schnell genug ist, dass Menschen ihn nutzen.

### Kunden und Nutzer

Kunden und Nutzende profitieren, wenn Software verfügbar und sicher ist. Fragen Sie an, was Sie brauchen, über den richtigen Weg, geben Sie zurück, was Sie nicht mehr nutzen, und sagen Sie dem Team, welche Werkzeuge Sie nützlich fanden. Kunden Ihrer Produkte können nach Stücklisten fragen; rechnen Sie damit, gefragt zu werden.

## Typische Fehlerbilder

- **Nur Installationen zählen.** Die Lizenzmetrik gilt je Kern oder Nutzer. Halten Sie stattdessen die Metrik fest und zählen Sie das Richtige.
- **Verlorener Berechtigungsnachweis.** Verträge und Rechnungen sind nicht auffindbar. Speichern Sie sie stattdessen beim Produkteintrag.
- **Shelfware.** Lizenzen werden gekauft und nicht genutzt. Vergleichen Sie stattdessen Berechtigung mit Nutzung und holen Sie zurück.
- **Schattenkäufe.** Per Karte gekaufte Abonnements entgehen dem Prozess. Machen Sie stattdessen den genehmigten Weg schnell und prüfen Sie Ausgaben auf Ausnahmen.
- **Unbekannte Open-Source-Komponenten.** Niemand kann sie auflisten. Erzeugen Sie stattdessen automatisch Stücklisten in Builds.
- **Lizenzbedingungen von Open Source ignorieren.** Copyleft-Pflichten werden übersehen. Prüfen Sie stattdessen Lizenzen gegen Nutzung und Verteilung mit rechtlichem Rat.
- **Werkzeugen blind trauen.** Werkzeuge übersehen Komponenten oder listen falsche. Prüfen Sie stattdessen die Ausgabe an einer Stichprobe und fragen Sie Anbieter nach Lücken.
- **Audit-Panik.** Aufzeichnungen werden nach der Mitteilung zusammengestellt. Halten Sie stattdessen Aufzeichnungen aktuell und benennen Sie eine Audit-Kontaktperson.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Berechtigung und Nutzung | Aufzeichnungen sind verstreut; Nutzung unbekannt | Wichtige Produkte haben Berechtigungsaufzeichnungen | Berechtigung und Nutzung sind für die wichtigsten Produkte festgehalten und werden regelmäßig verglichen | Lücken und ungenutzte Lizenzen werden gemessen und es wird danach gehandelt | Berechtigung und Nutzung werden mit Finanzen, Einkauf und Lieferanten geteilt |
| Beschaffung und Abonnements | Software wird von jedem gekauft | Für einige Käufe gibt es einen genehmigten Weg | Käufe und Abonnements folgen einem Weg mit Verantwortlichen und Verlängerungsterminen | Ausgaben und Platznutzung werden vor der Verlängerung überprüft | Einkauf, Nutzung und Verträge werden in der Organisation koordiniert |
| Open Source und Lieferkette | Komponenten sind unbekannt | Einige Teams listen Bibliotheken auf | Stücklisten werden in Builds erzeugt und Lizenzen geprüft | Befunde zu Schwachstellen und Lizenzen werden bis zum Abschluss verfolgt | Stücklisten werden wie verlangt mit Kunden und Lieferanten geteilt |
| Audit und Compliance | Auditmitteilungen verursachen Panik | Eine Kontaktperson existiert | Aufzeichnungen werden aktuell gehalten und eine Audit-Routine existiert | Compliance-Risiko wird gemessen und überprüft | Compliance-Praxis wird über Hersteller und Rechtsordnungen abgestimmt |

## Checkliste

- [ ] Für unsere größten Softwareprodukte kennen wir Berechtigung, Lizenzmetrik und Nutzung.
- [ ] Verträge, Rechnungen und Lizenzbedingungen sind bei den Produkteinträgen gespeichert.
- [ ] Berechtigung und Nutzung werden bei wichtigen Produkten mindestens vierteljährlich verglichen.
- [ ] Ungenutzte Lizenzen werden nach Rücksprache mit den Verantwortlichen zurückgeholt.
- [ ] Käufe und Abonnements folgen einem Weg, mit festgehaltenen Verantwortlichen und Verlängerungsterminen.
- [ ] Wir erzeugen für Produkte, die wir ausliefern oder betreiben, im Build eine Stückliste.
- [ ] Open-Source-Lizenzen in unseren Komponenten werden mit rechtlichem Rat gegen unsere Nutzung geprüft.
- [ ] Wir können herausfinden, welche Services eine bestimmte Komponente oder ein bestimmtes Produkt nutzen.
- [ ] Eine benannte Person bearbeitet Auditmitteilungen von Herstellern.
- [ ] Ausgemusterte Software wird von Systemen und aus Aufzeichnungen entfernt.

## KI-Prompts

**Zweck: Berechtigung und Verbrauch für ein Produkt vergleichen.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine Liste von Open-Source-Komponenten auf Lizenzfragen prüfen.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Zweck: eine Schwachstellen-Abfrage mithilfe einer Stückliste vorbereiten.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Abonnement-Review für das nächste Quartal aufbauen.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## KI-Skills

- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Verträge, Verlängerungen und Beziehungen zu Softwareherstellern zu steuern.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): nutzen Sie ihn, um sich auf ein Hersteller- oder Compliance-Audit vorzubereiten.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): nutzen Sie ihn, um Software- und Abonnementkosten zu prognostizieren.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um Lizenz-, Schwachstellen- und Lieferkettenrisiken festzuhalten.
- [security-testing](../../../../skills/security-testing/SKILL.md): nutzen Sie ihn, um Abhängigkeiten und Builds auf bekannte Schwächen zu prüfen.

## Wichtige Quellen

- **Software asset management** (Wikipedia): die Definition, Ziele, Technologien und die Teile von ISO/IEC 19770.
- **Software supply chain** (Wikipedia): Risiken, die Software Bill of Materials, Verbreitungszahlen und regulatorischer Hintergrund.
- **Open-source software** (Wikipedia): die Definition, Lizenzfamilien und Hinweise zu Risiken und Pflichten.
- **ISO/IEC 19770** (International Organization for Standardization): die Standardfamilie selbst; lesen Sie die aktuellen Teile für genaue Anforderungen.

## Referenzen

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
