# IT-Asset-Management

**Das IT-Asset-Management behält den Überblick über die Hardware, Software und verwandten Ressourcen, die eine Organisation besitzt oder bezahlt, vom Kauf bis zur Entsorgung, damit Entscheidungen über Kosten, Risiko und Support auf Fakten statt auf Vermutungen beruhen.**

## Warum das wichtig ist

Fragen Sie die meisten Organisationen, wie viele Laptops, Server, Cloud-Konten und Softwarelizenzen sie haben, und die erste Antwort ist eine Vermutung. Die zweite, nach einer Suche, fällt oft anders aus. Diese Lücke hat Kosten. Lizenzen werden gekauft, die niemand nutzt, oder genutzt, ohne gekauft zu sein. Alte Hardware bleibt ungepatcht im Netz. Ausscheidende Mitarbeitende behalten Zugang zu Systemen, den niemand zu entziehen daran dachte. Ein Service Desk kann keine Ausstattung unterstützen, von deren Existenz er nichts weiß.

IT-Asset-Management (ITAM) ist die Praktik, diese Lücke zu schließen. Es ist eng mit dem Service-Management verbunden: Services laufen auf Assets, Incidents und Änderungen berühren Assets, und die Kosten eines Services sind zu großen Teilen die Kosten seiner Assets. Für agile Teams hat die Praktik eine besondere Wendung. Assets umfassen heute Cloud-Ressourcen, die ein Skript in Sekunden erzeugt und Minuten später zerstört, Container-Images, Open-Source-Bibliotheken und Abonnements, die per Karte gekauft wurden. Das alte Modell einer Tabelle gekaufter Ausstattung erfasst sie nicht.

Der Artikel der englischen Wikipedia mit dem Titel "IT asset management" leitet derzeit zu ihrem Artikel über Rechenzentrumsmanagement weiter, in dem ITAM als Abschnitt erscheint. Dieser Abschnitt beschreibt ITAM als Geschäftspraktiken, die finanzielle, vertragliche und Bestandsfunktionen verbinden, um Lebenszyklusmanagement und strategische IT-Entscheidungen zu unterstützen, und er ist kurz. Dieses Thema nutzt ihn für die Definition, ergänzt die Einzelheiten aus den Artikeln zu Software-Asset-Management und Konfigurationsmanagement-Datenbanken und stellt die Praktik in das agile Umfeld. Wo es über die Quellen hinausgeht, sagt es das.

## Kernkonzepte

### Was es ist

Laut dem Wikipedia-Abschnitt zum Asset-Management im Rechenzentrum, der Gartner zitiert, ist ITAM ein Satz von Geschäftspraktiken, die finanzielle, vertragliche und Bestandsfunktionen verbinden, um Lebenszyklusmanagement und strategische IT-Entscheidungen zu unterstützen. Assets umfassen Software und Hardware im Geschäftsumfeld. Die Praktik wird auch Bestandsmanagement genannt. Der Artikel merkt an, dass die Praktik automatisierte Erkennung (Discovery) nutzt, damit der Bestand mit Lizenzansprüchen verglichen werden kann, und dass vollständiges Management ein Repository mehrerer Informationsarten braucht, integriert mit Lieferketten-, Help-Desk-, Einkaufs-, Personal- und ITSM-Systemen.

### Was als Asset zählt

Eine nützliche Arbeitsliste für eine Serviceorganisation:

| Asset-Art | Beispiele | Behandelt in |
|---|---|---|
| **Hardware** | Laptops, Server, Netzwerkgeräte, Telefone, Speicher | Thema 4.3 — Hardware-Asset-Management |
| **Software** | Lizenzierte Anwendungen, Betriebssysteme, Open-Source-Komponenten, Abonnements | Thema 4.2 — Software-Asset-Management |
| **Cloud- und Service-Ressourcen** | Virtuelle Maschinen, Container, Speicher-Buckets, SaaS-Konten | Thema 4.2 — Software-Asset-Management und Thema 4.5 — IT-Finanzmanagement und FinOps |
| **Daten und Information** | Datensätze, Aufzeichnungen, Backups | Thema 3.13 — Informationssicherheitsmanagement |
| **Verträge und Berechtigungen** | Lizenzen, Supportvereinbarungen, Garantien | Thema 4.2 — Software-Asset-Management und Thema 3.14 — Lieferantenmanagement |
| **Menschen und Fähigkeiten** | Personal und Fähigkeiten (normalerweise nicht im Asset-Register, aber Teil des Services) | Thema 2.5 — Die vier Dimensionen des Service-Managements |

Die Tabelle ist die Arbeitsliste dieses Leitfadens, keine Klassifikation aus einer Quelle.

### Lebenszyklus

Der Wikipedia-Abschnitt beschreibt das Hardware-Asset-Management als Abdeckung physischer Computer- und Netzwerkkomponenten von der Beschaffung bis zur Entsorgung, mit aufgelisteten Praktiken von Anfrage und Genehmigung, Einkauf, Lebenszyklusmanagement, Weiterverwendung und Entsorgung, und sagt, die Erfassung finanzieller Information über den Hardware-Lebenszyklus sei eine Schlüsselkomponente. Er gibt kein förmliches Stufenmodell. Eine gängige praktische Abfolge, weit verbreitet und als solche angeboten, ist:

1. **Planen und anfragen:** entscheiden, was gebraucht wird, und Genehmigung einholen.
2. **Beschaffen:** kaufen oder bauen und den Kauf erfassen.
3. **Bereitstellen:** in Betrieb nehmen und mit der nutzenden Person oder dem Service verknüpfen.
4. **Betreiben und warten:** patchen, unterstützen, verlegen und Änderungen verfolgen.
5. **Ausmustern und entsorgen:** aus dem Betrieb nehmen, Daten löschen und sicher entsorgen.

Fragen Sie in jeder Stufe, wer verantwortlich ist und welche Aufzeichnung geführt wird.

### Bestand, Discovery und Aufzeichnungen

Ein Asset-Register ist nur nützlich, wenn es stimmt. Der Artikel merkt an, dass automatisierte Erkennung den Vergleich des Bestands mit Berechtigungen unterstützt. Discovery-Werkzeuge scannen Netzwerke und Cloud-Konten, um zu finden, was existiert, und das Register hält fest, was die Organisation zu besitzen und zu bezahlen beabsichtigt. Unterschiede zwischen beiden sind Befunde: unbekannte Geräte, ungenutzte Lizenzen, nicht genehmigte Abonnements.

### Beziehung zu ITSM und zur CMDB

Der Wikipedia-Abschnitt sagt, ITAM sei mit ITSM integriert, ordnet es aber nicht im Einzelnen ITIL-Prozessen zu. ITIL-Beschreibungen unterscheiden typischerweise das Asset-Management, das Eigentum, Kosten und Verträge betrifft, vom Konfigurationsmanagement, das die Beziehungen zwischen Komponenten betrifft. Eine **Konfigurationsmanagement-Datenbank (CMDB)** ist laut Wikipedia ein ITIL-Begriff für eine Datenbank, die Information über Hardware- und Software-Assets, genannt Konfigurationselemente, und die Beziehungen zwischen ihnen speichert (siehe Thema 4.4 — Konfigurationsmanagement). Asset-Einträge und Konfigurationseinträge überschneiden sich; viele Organisationen föderieren die Daten, damit jede Quelle die Kontrolle über ihre eigenen behält.

### Standards

Der Wikipedia-Abschnitt nennt ISO/IEC 19770 als Standardfamilie für Software-Asset-Management, ohne ihre Teile zu beschreiben. Der Artikel zu Software-Asset-Management listet die Teile auf: 19770-1:2017 zu Anforderungen an das IT-Asset-Management-System, ein Prozess-Framework, das in gestuften Ebenen umgesetzt werden kann; 19770-2:2015 zu Software-Identifikations-Tags; 19770-3:2016 zum Berechtigungsmanagement; 19770-4:2017 zur Messung der Ressourcennutzung; und 19770-5:2015 zu Überblick und Vokabular. Prüfen Sie die Standards selbst auf den genauen Wortlaut und aktuelle Ausgaben.

### Nutzen und Grenzen

Der Wikipedia-Abschnitt listet weder Nutzen noch Kritik auf und nennt keine Werkzeuge. Praktische Vorteile werden weithin behauptet, etwa geringere Lizenzkosten, geringeres Sicherheitsrisiko und besserer Support, doch dieser Leitfaden hat in den gelesenen Quellen keine gemessenen Belege dafür. Behandeln Sie Behauptungen über Einsparungen mit Vorsicht, fragen Sie die, die sie machen, nach ihren Belegen, und messen Sie Ihre eigenen.

### ITAM in einem agilen und Cloud-Umfeld

Praktiken früherer Jahrzehnte nehmen an, dass Assets von der IT gekauft, geliefert und installiert werden. Heute gilt:

- **Teams erzeugen Ressourcen selbst**, in Cloud-Konsolen oder per Code. Das Register muss davon aus dem Cloud-Konto erfahren, nicht aus einer Bestellung.
- **Assets sind kurzlebig.** Ein Container kann eine Stunde dauern. Verfolgen Sie den Service und das Konto, nicht jede Instanz.
- **Abonnements ersetzen Lizenzen.** Software wird monatlich von jemandes Karte bezahlt, und das Eigentum ist unklar.
- **Open-Source-Komponenten** gelangen über Code hinein, außerhalb des Einkaufssystems (siehe Thema 4.2 — Software-Asset-Management).

Diese Veränderungen drängen ITAM zu Automatisierung, Tagging und geteilter Verantwortung zwischen der IT und den Teams, die die Assets nutzen.

## Bewährte Praktiken

1. **Beginnen Sie mit dem, was am meisten zählt.** Wählen Sie zuerst die Assets mit den höchsten Kosten oder dem höchsten Risiko: teure Lizenzen, aus dem Internet erreichbare Server, Geräte mit sensiblen Daten. Ein vollständiges Register kann später kommen.
2. **Definieren Sie, was für Ihre Zwecke ein Asset ist.** Schreiben Sie eine kurze Liste der Asset-Arten, die Sie verfolgen, und der Fakten, die Sie für jede brauchen: Verantwortliche, Ort oder Konto, Kosten, Vertrag und Status. Vermeiden Sie Felder, die niemand nutzen wird.
3. **Benennen Sie für jedes Asset eine verantwortliche Person.** Eine Person oder ein Team sollte für jedes Asset oder jede Gruppe von Assets einstehen. Assets ohne Verantwortliche sind der Ort, an dem sich Verschwendung und Risiko sammeln.
4. **Nutzen Sie Discovery, um zu finden, was existiert.** Scannen Sie Netzwerke, Cloud-Konten und Endpunkte und vergleichen Sie mit dem Register. Behandeln Sie die Unterschiede als Punkte zur Untersuchung.
5. **Versehen Sie Cloud-Ressourcen mit Tags.** Verlangen Sie Tags für Verantwortliche, Service und Umgebung bei in Cloud-Konten erzeugten Ressourcen und berichten Sie über Ressourcen ohne Tags. Tags lassen das Register schnelllebigen Assets folgen.
6. **Verbinden Sie den Einkauf mit dem Register.** Stellen Sie sicher, dass neue Käufe, einschließlich Abonnements und Kartenkäufen, einen Eintrag anlegen oder aktualisieren. Prüfen Sie Ausgaben auf Posten, bei denen das nicht geschah.
7. **Verknüpfen Sie Assets mit Services.** Halten Sie fest, welchen Service jedes Asset stützt. So können Sie die Auswirkung eines Incidents, einer Änderung oder einer Ausmusterung ermitteln (siehe Thema 4.4 — Konfigurationsmanagement).
8. **Verfolgen Sie die finanzielle Seite.** Halten Sie Kosten, Vertragsbedingungen, Verlängerungstermine und, wo relevant, Abschreibung fest. Die Erfassung finanzieller Information über den Lebenszyklus ist eine Schlüsselkomponente des Hardware-Managements, wie der Wikipedia-Abschnitt sagt.
9. **Steuern Sie das Lebensende.** Planen Sie die Ausmusterung von Anfang an: Datenlöschung, Rückgabe und Entsorgung. Entziehen Sie Zugang und Lizenzen zugleich.
10. **Überprüfen Sie regelmäßig.** Prüfen Sie mindestens zweimal im Jahr das Register für die wichtigsten Asset-Klassen an der Wirklichkeit. Beheben Sie den Prozess, der einen Unterschied verursacht hat.
11. **Teilen Sie die Daten.** Machen Sie Asset-Daten dem Service Desk, der Sicherheit, den Finanzen und den Teams in einer nutzbaren Form zugänglich. Daten, die nur die Asset-Verantwortliche sieht, sind wenig wert.
12. **Messen Sie die Praktik.** Verfolgen Sie, wie vollständig und genau das Register ist, wie lange es dauert, ein Asset zu finden, und die Kosten ungenutzter Posten. Nutzen Sie das zur Verbesserung, nicht um Menschen zu reihen.

## Fragen zur Diskussion im Team

**Wenn jemand fragte, wie viele von jeder Art Asset wir haben, wie sicher wären wir?**

Bitten Sie jede Person, die Zahl der Laptops, Server, Cloud-Konten und Abonnements zu schätzen, und vergleichen Sie dann mit dem Register. Unterschiede zeigen, wie viel unbekannt ist. Die Moderation kann fragen, welcher Kategorie Menschen am wenigsten trauen. Wählen Sie eine, die zuerst abgeglichen wird.

**Wer verantwortet jedes unserer Assets, und was geschieht, wenn diese Person geht?**

Nehmen Sie eine Stichprobe von Assets und sehen Sie sich das Feld der Verantwortlichen an. Zählen Sie die ohne Verantwortliche oder mit ausgeschiedenen Verantwortlichen. Fragen Sie, welcher Prozess Verantwortliche aktualisieren sollte, wenn Menschen wechseln. Vereinbaren Sie einen Auslöser, etwa den Prozess für Ausscheidende.

**Wofür zahlen wir, was niemand nutzt?**

Sehen Sie sich Lizenzen, Abonnements und Cloud-Ressourcen an und fragen Sie, welche keine jüngste Nutzung haben. Seien Sie auf Überraschungen gefasst. Fragen Sie, wer das Kündigen von etwas genehmigen kann. Wählen Sie die drei größten und prüfen Sie jedes.

**Wie erfahren wir von einer neuen Cloud-Ressource oder einem neuen Abonnement?**

Verfolgen Sie das letzte. Oft lautet die Antwort "bei der Rechnung" oder "als es kaputtging". Besprechen Sie, wie Einkauf, Tagging und Discovery es früher fangen könnten. Vereinbaren Sie eine Kontrolle, etwa verpflichtende Tags oder einen Monatsbericht der Posten ohne Tags.

**Was geschieht mit einem Laptop oder Server am Ende seines Lebens?**

Gehen Sie die Schritte durch: wer entscheidet, wie Daten entfernt werden, was der Eintrag sagt. Lücken tauchen oft bei Datenlöschung und Aufzeichnungen auf. Fragen Sie nach einem Beleg, dass eine jüngste Entsorgung ordentlich durchgeführt wurde. Planen Sie eine kurze Checkliste.

**Welche Asset-Daten brauchen andere Teams, die wir ihnen nicht geben?**

Fragen Sie den Service Desk, die Sicherheit und die Finanzen, was sie sehen möchten. Typische Wünsche sind Verantwortliche, Service und Kosten. Besprechen Sie, wie man sie teilt und wer sie aktuell hält. Wählen Sie einen Bericht, der erstellt wird.

## In der Praxis: ein agiles ITIL-Beispiel

Ein nationales Statistikamt hat 1.800 Beschäftigte und betreibt seine Erhebungsverarbeitung in einer Mischung aus einem Rechenzentrum vor Ort und einem öffentlichen Cloud-Konto. Das Finanzteam bemerkt, dass die Cloud-Rechnung in einem Jahr um ein Drittel gewachsen ist, und ein Sicherheitsaudit findet drei Server im Rechenzentrum, die niemand identifizieren kann. Die ITAM-Funktion besteht aus zwei Personen mit einer Tabelle.

Die IT-Leitung setzt ein bescheidenes Ziel: die wichtigsten Assets kennen, wer sie verantwortet und was sie kosten, beginnend mit der Cloud. Eine neue Regel verlangt Tags für Verantwortliche, Service und Umgebung bei jeder Cloud-Ressource. Ein wöchentlicher Bericht listet Ressourcen ohne Tags auf, und Teams haben zwei Wochen, sie zu beanspruchen oder zu entfernen. Im Rechenzentrum führen die beiden ITAM-Beschäftigten einen Discovery-Scan durch und vergleichen ihn mit der Tabelle, wobei sie 40 Geräte finden, die nicht auf der Liste stehen. Für die meisten finden sie Verantwortliche. Der Einkauf stimmt zu, dass jedes neue Software-Abonnement binnen einer Woche an ITAM gemeldet wird.

Nach einem Quartal sinkt der Anteil der Cloud-Ressourcen ohne Tags von etwa einem Drittel auf eine Handvoll, und die Finanzen können die Cloud-Rechnung Services zuordnen. Einige ungenutzte Ressourcen werden abgeschaltet, und zwei Server werden ausgemustert. Probleme bleiben. Eine Forschungsgruppe kauft Werkzeuge mit einer Abteilungskarte und meldet sie nicht, und der wöchentliche Bericht wird nur von wenigen Teams gelesen. Die ITAM-Beschäftigten sprechen mit der Forschungsgruppe über ein einfaches Registrierungsformular und bitten die Finanzleitung, Abonnements in den Monatsreview aufzunehmen. Sie beschließen außerdem, dass das Register Cloud-Services nach Konto und Service abdeckt, nicht jede kurzlebige Instanz.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams erzeugen viele Assets. Versehen Sie, was Sie erzeugen, mit Tags, registrieren Sie die Abonnements und Bibliotheken, die Sie hinzufügen, und stellen Sie ein, was Sie nicht mehr brauchen. Behandeln Sie das Register als Service, zu dem Sie beitragen und von dem Sie profitieren.

### Service- und Betriebsteams

Betriebsteams verlassen sich für Support, Patching und Incident-Bearbeitung auf das Register. Halten Sie es genau, indem Sie es bei Deployment, Änderung und Ausmusterung aktualisieren. Nutzen Sie Discovery, um zu finden, was fehlt, und berichten Sie Unterschiede an die Verantwortlichen.

### Führung und Governance

Führungskräfte und Finanzen nutzen Asset-Daten für Entscheidungen über Ausgaben, Risiko und Verlängerungen. Verlangen Sie einige verlässliche Zahlen, etwa Ausgaben je Service und den Anteil der Assets mit Verantwortlichen, statt eines perfekten Registers. Unterstützen Sie die kleinen Kontrollen, etwa Tags und Kaufmeldungen, die es wahr halten.

### Kunden und Nutzer

Nutzende profitieren, wenn ihre Ausstattung und ihr Zugang gut gesteuert sind: funktionierende Geräte, schneller Ersatz und keine Überraschungskosten. Sagen Sie dem Service Desk, welche Ausstattung Sie hinzufügen oder nicht mehr brauchen, und rechnen Sie damit, gebeten zu werden zu bestätigen, was Sie halten.

## Typische Fehlerbilder

- **Ein Register, dem niemand traut.** Es ist veraltet und wird ignoriert. Verengen Sie stattdessen den Umfang, nutzen Sie Discovery und aktualisieren Sie bei jedem Lebenszyklusereignis.
- **Keine Verantwortlichen.** Assets gehören niemandem. Verlangen Sie stattdessen für jedes Asset oder jede Gruppe eine verantwortliche Person.
- **Alles verfolgen.** Der Aufwand begräbt den Wert. Beginnen Sie stattdessen mit dem, was teuer oder riskant ist, und wachsen Sie.
- **Cloud und Abonnements ignorieren.** Das Register deckt nur gekaufte Hardware ab. Versehen Sie stattdessen Cloud-Ressourcen mit Tags und erfassen Sie Abonnements.
- **Einkauf außerhalb des Prozesses.** Kartenkäufe umgehen das Register. Verbinden Sie stattdessen Einkauf und Ausgabenberichte mit ITAM.
- **Kein Prozess für das Lebensende.** Alte Geräte behalten Daten und Zugang. Planen Sie stattdessen Ausmusterung, Löschung und Entsorgung.
- **Daten vor anderen zurückgehalten.** Nur ITAM sieht das Register. Teilen Sie es stattdessen mit Service Desk, Sicherheit und Finanzen.
- **Zählen ohne Handeln.** Berichte zeigen ungenutzte Assets, und nichts wird gekündigt. Weisen Sie stattdessen Verantwortlichen zu, auf Befunde zu reagieren.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Bestand und Discovery | Assets sind in Tabellen aufgelistet oder gar nicht | Einige Asset-Klassen sind inventarisiert | Discovery und ein Register decken die wichtigsten Asset-Klassen ab und werden regelmäßig abgeglichen | Vollständigkeit und Genauigkeit werden gemessen und Lücken behoben | Der Bestand überspannt Rechenzentrum, Cloud und Lieferanten mit geteilten Daten |
| Verantwortung und Rechenschaft | Wenige Assets haben Verantwortliche | Verantwortliche sind für einige Assets benannt | Jedes Asset oder jede Gruppe hat eine verantwortliche Person, per Prozess aktuell gehalten | Lücken bei Verantwortlichen werden verfolgt und gelöst | Verantwortliche über Teams und Lieferanten hinweg arbeiten nach gemeinsamen Regeln |
| Lebenszyklus und finanzielle Kontrolle | Kauf und Entsorgung sind informell | Einige Assets haben Kosten- und Vertragsdaten | Lebenszyklusschritte und Finanzdaten sind für die wichtigsten Assets festgehalten | Kosten, Verlängerungen und Auslastung werden überprüft und es wird danach gehandelt | Finanz- und Lebenszyklusdaten sind mit Services verknüpft und werden mit den Finanzen geteilt |
| Nutzung der Daten | Daten werden von wenigen genutzt | Der Service Desk nutzt das Register manchmal | Desk, Sicherheit und Finanzen nutzen Asset-Daten routinemäßig | Datenqualität und Nutzung werden gemessen und verbessert | Daten speisen Entscheidungen in der ganzen Organisation und mit Partnern |

## Checkliste

- [ ] Wir haben eine kurze Liste der Asset-Arten und der Fakten, die wir für jede festhalten.
- [ ] Jedes verfolgte Asset oder jede Gruppe hat eine benannte verantwortliche Person.
- [ ] Discovery-Ergebnisse werden regelmäßig mit dem Register verglichen.
- [ ] Cloud-Ressourcen tragen Tags für Verantwortliche, Service und Umgebung, und Ressourcen ohne Tags werden berichtet.
- [ ] Neue Käufe, einschließlich Abonnements, legen einen Eintrag an oder aktualisieren einen.
- [ ] Assets sind mit den Services verknüpft, die sie stützen.
- [ ] Kosten-, Vertrags- und Verlängerungsdaten sind für die wichtigsten Assets festgehalten.
- [ ] Die Ausmusterung umfasst Datenentfernung, Zugangsentzug und einen Eintrag.
- [ ] Das Register wird für die wichtigsten Asset-Klassen mindestens zweimal im Jahr mit der Wirklichkeit abgeglichen.
- [ ] Service Desk, Sicherheit und Finanzen können die Daten sehen, die sie brauchen.

## KI-Prompts

**Zweck: Discovery-Ergebnisse mit dem Register abgleichen.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Zweck: einen kurzen Tagging-Standard für Cloud-Ressourcen entwerfen.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine Checkliste zur Ausmusterung eines Geräts oder Servers planen.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Kandidaten für Einsparungen aus Nutzungsdaten finden.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## KI-Skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): nutzen Sie ihn, um zu planen, wie Assets und ihre Beziehungen festgehalten und wahr gehalten werden.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Verträge und Verlängerungen hinter Assets zu steuern.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): nutzen Sie ihn, um die Kosten von Assets und Abonnements zu prognostizieren.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um klarzumachen, wer jede Asset-Klasse verantwortet, unterstützt und genehmigt.
- [data-governance](../../../../skills/data-governance/SKILL.md): nutzen Sie ihn, um zu entscheiden, wer die auf Assets gehaltenen Daten verantwortet und wie sie ausgemustert werden.

## Wichtige Quellen

- **IT asset management** (Wikipedia, derzeit innerhalb des Artikels zum Rechenzentrumsmanagement): eine kurze Definition und eine Beschreibung des Hardware-Asset-Managements.
- **Software asset management** (Wikipedia): die Definition, Ziele, Technologien und die Teile von ISO/IEC 19770.
- **Configuration management database** (Wikipedia): der ITIL-Begriff für den Speicher der Konfigurationselemente und Beziehungen.
- **ITIL** (Wikipedia): das Framework, das ITAM neben dem Service-Management behandelt.

## Referenzen

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
