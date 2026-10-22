# Hardware-Asset-Management

**Das Hardware-Asset-Management verfolgt physische Ausstattung vom Kauf bis zur Entsorgung, und seine stillen Risiken sind das Gerät, von dem niemand weiß, das Gerät, das zu lange behalten wird, und das Gerät, das mit noch darauf befindlichen Daten das Haus verlässt.**

## Warum das wichtig ist

Hardware zählt auch in einer Cloud-zuerst-Welt. Menschen arbeiten auf Laptops, Telefonen und Tablets. Netzwerke laufen auf Switches und Zugangspunkten. Viele Organisationen halten Server, Speicher und Spezialausrüstung vor Ort. Wenn ein Laptop verloren geht, ein Server außerhalb der Garantie ist oder eine Charge von Geräten ersetzt werden muss, sind die Fragen dieselben: Was haben wir, wo ist es, wer hat es, was ist es wert und was enthält es?

Schlechtes Hardware-Management zeigt sich auf bekannte Weisen. Mitarbeitende warten auf Ausstattung, weil niemand weiß, was im Lager ist. Alte Geräte bleiben im Einsatz, weil niemand die Daten hat, um den Ersatz zu begründen, und fallen dann im unpassendsten Moment aus. Geräte werden mit darauf befindlichen Daten weggeworfen. Garantieansprüche werden verpasst. Für ein agiles Team sind die Folgen verlangsamte Einarbeitung, gescheiterte Releases auf ungepflegter Testhardware und Sicherheitslücken, die keine Pipeline sehen kann.

Der [Wikipedia-Abschnitt zum IT-Asset-Management](https://en.wikipedia.org/wiki/IT_asset_management), der in seinem Artikel zum Rechenzentrumsmanagement steht, beschreibt das Hardware-Asset-Management als Abdeckung physischer Computer- und Netzwerkkomponenten von der Beschaffung bis zur Entsorgung, mit den Praktiken Anfrage und Genehmigung, Einkauf, Lebenszyklusmanagement, Weiterverwendung und Entsorgung, und sagt, die Erfassung finanzieller Information über den Lebenszyklus sei eine Schlüsselkomponente. Er ist kurz. Dieses Thema ergänzt die Artikel zu Elektroschrott und Datenlöschung für die Entsorgung und praktische Anleitung aus gängiger Praxis und sagt das, wenn es das tut.

## Kernkonzepte

### Umfang

Hardware-Assets umfassen Endgeräte (Laptops, Desktops, Telefone, Tablets), Server und Speicher, Netzwerkausstattung, Peripherie und Spezial- oder Betriebstechnik (Operational Technology). Sie umfassen auch das Zubehör, das sie nutzbar macht. Für jedes will die Organisation die Grundlagen wissen: was es ist, wer dafür verantwortlich ist, wo es steht, was es gekostet hat und in welchem Zustand es ist.

### Der Hardware-Lebenszyklus

Der Wikipedia-Abschnitt listet Anfrage und Genehmigung, Einkauf, Lebenszyklusmanagement, Weiterverwendung und Entsorgung auf. Eine praktische Erweiterung, weit verbreitet und als solche angeboten:

| Stufe | Fragen, die zu beantworten sind | Typische Aufzeichnungen |
|---|---|---|
| **Anfrage und Genehmigung** | Was wird gebraucht, und wer genehmigt es? | Anfrage, Genehmigung, Budgetkonto |
| **Einkauf** | Was haben wir gekauft, von wem, zu welchen Bedingungen? | Bestellung, Rechnung, Garantie, Lieferant |
| **Empfangen und vorbereiten** | Ist es angekommen? Ist es konfiguriert und mit einem Tag versehen? | Seriennummer, Asset-Tag, Konfiguration |
| **Zuweisen und betreiben** | Wer hat es? Wofür wird es genutzt? | Verantwortliche oder Nutzende, Ort, unterstützter Service |
| **Warten** | In welchem Zustand sind Garantie und Patchstand? | Reparaturen, Garantieende, Firmwarestatus |
| **Weiterverwenden** | Kann es jemand anderes nutzen? | Löschung, Neuzuweisungsnachweis |
| **Ausmustern und entsorgen** | Sind Daten entfernt? Wohin ging es? | Löschnachweis, Entsorgungsnachweis |

### Finanzielle Information

Der Wikipedia-Abschnitt betont, finanzielle Information über den Hardware-Lebenszyklus festzuhalten. Nützliche Fakten sind Anschaffungskosten, Abschreibung, Garantie- und Supportkosten und die Kosten, es am Laufen zu halten. Sie speisen Ersatzentscheidungen und Budgets (siehe Thema 4.5 — IT-Finanzmanagement und FinOps). Ein Gerät, das im Support mehr kostet als ein Ersatz, ist ein Kandidat zur Ausmusterung.

### Ersatz und Erneuerung

Organisationen ersetzen Ausstattung üblicherweise in einem Zyklus, etwa alle paar Jahre bei Laptops. Die für diesen Leitfaden gelesenen Quellen nennen keine empfohlenen Zeiträume, und das richtige Intervall hängt von der Ausstattung, der Arbeit und den Kosten eines Ausfalls ab. Ein datenbasierter Ansatz betrachtet Ausfallraten, Supportkosten, Sicherheitssupport und Leistung und ersetzt, wenn die Belege es sagen. Ein fester Zyklus ist leichter zu planen, und ein belegbasierter kann Geld sparen oder Ausfälle vermeiden.

### Datensicherheit am Lebensende

Die Entsorgung ist der Ort, an dem Hardware-Management auf Informationssicherheit trifft (siehe Thema 3.13 — Informationssicherheitsmanagement). Der Wikipedia-Artikel zur Datenlöschung beschreibt Datenlöschung als Softwaremethode, die jeden Sektor eines Laufwerks überschreibt, sodass die gespeicherten Daten nicht wiederherstellbar sind; das gewöhnliche Löschen von Dateien entfernt nur Zeiger, und gängige Werkzeuge können die Daten oft wiederherstellen. Wichtige Punkte aus dem Artikel:

- **Überschreiben** lässt das Laufwerk nutzbar. **Entmagnetisieren (Degaussing)** und **physische Zerstörung** machen das Medium unbrauchbar und erhöhen den Elektroschrott.
- **Solid-State-Laufwerke und Flash-Medien** können Restdaten behalten, die die Löschung übersieht. Der Artikel zitiert eine Studie von 2011, nach der eingebaute Sanitize-Befehle bei korrekter Umsetzung funktionieren, während Softwaretechniken meistens, aber nicht immer funktionieren.
- **Verschlüsselung** bietet einen weiteren Weg: Die Schlüssel eines selbstverschlüsselnden Laufwerks zu zerstören macht seine Daten unzugänglich.
- **Verifikation und Zertifikate:** Gute Software sollte prüfen, dass das Überschreiben das ganze Gerät erreichte, einschließlich verborgener Bereiche, und ein Validierungszertifikat sowie ein Protokoll der Sektoren ausstellen, die nicht überschrieben werden konnten.
- **Standards:** Der Artikel listet viele auf, darunter NIST Special Publication 800-88 (2006, 2014 überarbeitet), die er mit der Aussage zitiert, ein einzelner Überschreibdurchgang mit einem festen Muster wie binären Nullen erschwere die Wiederherstellung typischerweise. Er nennt, ein einzelner Durchgang genüge bei modernen Festplatten im Allgemeinen.

Der Artikel ist als belegbedürftig markiert, und einige Aussagen sind gekennzeichnet. Prüfen Sie die Standards, die Ihre Branche oder Ihr Land verlangt, und den aktuellen Stand der Technik für Ihre Ausstattung; verlassen Sie sich für eine Compliance-Entscheidung nicht auf eine Wikipedia-Zusammenfassung.

### Elektroschrott

Der Wikipedia-Artikel zu Elektroschrott definiert ihn als ausrangierte elektrische oder elektronische Geräte, einschließlich Posten, die zur Weiterverwendung, zum Weiterverkauf, zur Verwertung, zum Recycling oder zur Entsorgung bestimmt sind. Er berichtet von etwa 62 Millionen Tonnen, die 2022 weltweit anfielen, 82 Prozent mehr als 2010, wobei laut einer Studie von 2024 nur 22,3 Prozent förmlich gesammelt und recycelt wurden; er zitiert auch andere, widersprüchliche Zahlen und trägt Pflegehinweise für nicht belegte Aussagen, prüfen Sie Zahlen also an Primärquellen, bevor Sie sie zitieren. Er beschreibt Gefahren durch Stoffe wie Blei, Cadmium, Quecksilber und Flammschutzmittel und durch informelle Verarbeitung, mit Beispielen aus Guiyu in China und Agbogbloshie in Ghana. Er merkt an, dass das im März 1989 angenommene Basler Übereinkommen die grenzüberschreitende Verbringung gefährlicher Abfälle regelt und dass zertifizierte Recycler nach Schemata wie R2 und E-Stewards alle auf Elektronik gespeicherten Daten zerstören müssen. Weiterverwendung verlängert die Lebensdauer von Geräten und verzögert das Recycling.

Für eine Organisation sind die Lehren praktisch: Wählen Sie Entsorgungspartner, die zertifiziert sind und zeigen können, wohin Geräte gehen, bevorzugen Sie Weiterverwendung, wo sie sicher ist, und führen Sie Aufzeichnungen. Gesetze zu Elektroschrott unterscheiden sich nach Land und Region; fragen Sie Ihre Compliance-Funktion, welche gelten.

### Hardware und Service-Management

Hardware-Aufzeichnungen verknüpfen sich mit Services: Dieser Switch trägt jenen Service, dieser Server hostet jene Anwendung. Diese Verknüpfungen machen aus einem Asset-Register ein Werkzeug für Incident-Bearbeitung, Änderungsplanung und Risikobewertung (siehe Thema 4.4 — Konfigurationsmanagement). Ohne sie ist ein ausgefallenes Gerät ein Ticket; mit ihnen ist es eine Auswirkungsaussage.

### Agilität und Hardware

Agile Teams behandeln Hardware als Randbedingung, um die herum man entwirft, nicht als Hauptereignis. Cloud und Virtualisierung verkleinern den physischen Bestand, aber nicht auf null. Testgeräte für mobile Apps, Build-Agenten, Laborausstattung und Edge-Geräte müssen alle verfolgt werden. Behandeln Sie sie als Assets mit Verantwortlichen und Lebenszyklen und lassen Sie sie nicht in einem Schrank liegen.

## Bewährte Praktiken

1. **Versehen Sie jedes wichtige Gerät mit einem Tag und erfassen Sie es.** Vergeben Sie beim Empfang ein eindeutiges Asset-Tag oder einen Seriennummer-Eintrag und halten Sie Art, Verantwortliche, Ort und Status fest. Machen Sie das zum ersten Schritt nach der Lieferung.
2. **Verknüpfen Sie Geräte mit Menschen und Services.** Halten Sie fest, wer jedes Gerät hat und welchen Service es stützt, und aktualisieren Sie bei Umzügen und Änderungen. Nutzen Sie den Prozess für Ausscheidende, um Ausstattung zurückzuholen und Zugang zu entziehen.
3. **Halten Sie Finanzdaten beim Asset.** Halten Sie Kosten, Garantie, Supportbedingungen und Abschreibung fest. Nutzen Sie sie, um Reparatur, Support und Ersatz zu vergleichen.
4. **Nutzen Sie Discovery, um Unbekanntes zu finden.** Vergleichen Sie das Register mit Netzwerk- und Endpunkt-Discovery und untersuchen Sie unbekannte Geräte umgehend (siehe Thema 4.1 — IT-Asset-Management).
5. **Überwachen Sie Zustand und Supportstatus.** Verfolgen Sie Garantieenddaten, Firmware- und Sicherheitssupportstatus und Ausfallhistorie. Planen Sie den Ersatz, bevor Geräte ausfallen oder den Support verlieren.
6. **Ersetzen Sie auf Basis von Belegen.** Sehen Sie sich Ausfall- und Supportdaten, Leistung und Sicherheitssupport an, um über den Ersatz zu entscheiden, und nicht nur das Alter. Überprüfen Sie die Richtlinie einmal im Jahr.
7. **Bereiten Sie Geräte einheitlich vor.** Nutzen Sie einen Standard-Build und automatisierte Registrierung, damit neue Geräte einsatzbereit eintreffen, mit eingerichteten Sicherheitskontrollen.
8. **Verwenden Sie weiter, wo es sicher ist.** Löschen und weisen Sie Geräte neu zu, die den Bedarf noch erfüllen, mit Nachweis der Löschung. Vermeiden Sie Lager ungenutzter Ausstattung.
9. **Löschen Sie Daten ordentlich und bewahren Sie Belege auf.** Nutzen Sie eine Methode, die zur Geräteart und zur Sensibilität der Daten passt, verifizieren Sie sie und bewahren Sie ein Zertifikat oder Protokoll auf. Nutzen Sie bei Flash-Speicher geräteunterstützte Sanitize-Befehle oder Schlüsselzerstörung, wie angemessen (siehe die Hinweise zur Datenlöschung oben).
10. **Wählen Sie Entsorgungspartner sorgfältig.** Bevorzugen Sie zertifizierte Recycler, fragen Sie, wohin Geräte und Materialien gehen, und führen Sie Aufzeichnungen. Nehmen Sie Bedingungen zur Datenvernichtung in den Vertrag auf.
11. **Planen Sie für verlorene und gestohlene Geräte.** Haben Sie einen schnellen Meldeweg, eine Fernsperre oder -löschung, wo verfügbar, und eine Regel, wann ein Verlust als Sicherheitsvorfall zu behandeln ist (siehe Thema 3.2 — Incident Management).
12. **Überprüfen Sie regelmäßig.** Prüfen Sie mindestens zweimal im Jahr eine Stichprobe des Registers gegen die physische Wirklichkeit für die wichtigsten Geräteklassen und beheben Sie den Prozess hinter jeder Lücke.

## Fragen zur Diskussion im Team

**Wenn wir heute jedes Gerät zählten, das wir besitzen, würden wir mit dem Register übereinstimmen?**

Wählen Sie eine Etage, ein Team oder ein Lager und führen Sie eine schnelle Zählung gegen das Register durch. Die Unterschiede sind die Lehre. Fragen Sie, welche Abweichungen am meisten zählen: Geräte mit Daten darauf, Geräte, die nicht gepatcht sind. Die Moderation kann fragen, was Menschen davon abhält, das Register im Moment der Änderung zu aktualisieren. Wählen Sie einen Prozess zum Straffen.

**Was tun wir mit einem Laptop, wenn jemand geht?**

Gehen Sie die Schritte durch: wer ihn einsammelt, wohin er geht, wer ihn löscht, wer den Eintrag aktualisiert. Lücken tauchen oft zwischen Teams auf. Fragen Sie nach dem letzten Beispiel und verfolgen Sie es. Vereinbaren Sie eine verantwortliche Person und eine Checkliste.

**Wie entscheiden wir, wann Ausstattung zu ersetzen ist?**

Fragen Sie nach der aktuellen Regel und ihrer Quelle. Oft ist es ein festes Alter, das jemand vor langer Zeit setzte. Besprechen Sie, welche Daten Sie zu Ausfall, Supportkosten und Sicherheitssupport haben. Vergleichen Sie mit den Kosten eines zu frühen oder zu späten Ersatzes. Vereinbaren Sie, welche Daten zu sammeln sind.

**Wie würden wir beweisen, dass die Daten auf einem entsorgten Gerät zerstört wurden?**

Nehmen Sie eine jüngste Entsorgung und fragen Sie, welcher Beleg existiert. Lautet die Antwort "der Recycler hat es gesagt", besprechen Sie, was ein Zertifikat oder Protokoll enthalten sollte. Fragen Sie, welche Methode für Solid-State-Speicher genutzt wurde. Vereinbaren Sie einen Mindeststandard und Nachweis.

**Welche unserer Geräte sind außerhalb der Garantie oder des Sicherheitssupports, und was hängt von ihnen ab?**

Listen Sie Geräte nahe dem Ende des Supports auf. Fragen Sie, was jedes stützt. Nicht unterstützte Geräte hinter wichtigen Services sind Risiken. Planen Sie den Ersatz nach Auswirkung und entscheiden Sie, wo Ausgleichsmaßnahmen nötig sind.

**Wer bearbeitet ein verlorenes oder gestohlenes Gerät, und wie schnell?**

Fragen Sie, wie eine nutzende Person einen Verlust meldet und was danach geschieht. Prüfen Sie, ob Fernsperre oder -löschung verfügbar ist und ob es jemand versucht hat. Besprechen Sie, wann ein Verlust zum Sicherheitsvorfall wird. Vereinbaren Sie einen klaren ersten Schritt für Nutzende.

## In der Praxis: ein agiles ITIL-Beispiel

Eine Gesundheitsbehörde einer Provinz stellt etwa 4.000 Laptops und Tablets für Gemeindepflegekräfte bereit, die Patienten zu Hause besuchen. Geräte gehen häufig verloren oder werden beschädigt. Die Aufzeichnungen der Behörde zeigen 4.300 Geräte, aber der Service Desk glaubt, weniger zu betreuen. Ein Sicherheitsreview stellt fest, dass eine Reihe von als ausgemustert aufgelisteten Laptops im Einsatz gesehen wurde und dass ein Lager alter Geräte in einem Schrank noch Patientendaten enthält.

Die Leitung der Endnutzer-Services legt ein kleines Programm auf. Jedes Gerät erhält ein eindeutiges Tag und einen Eintrag, verknüpft mit einer benannten Pflegekraft und einem Team. Ein Discovery-Werkzeug vergleicht das Register mit Geräten, die sich mit dem Netzwerk verbinden, und eine monatliche Liste nicht zugeordneter Geräte geht an die Teamleitungen, die zwei Wochen haben, sie zu erklären oder zurückzugeben. Geräte werden automatisch mit eingeschalteter Verschlüsselung und Standardsoftware registriert, sodass ein verlorener Laptop wenig preisgibt. Eine Checkliste für Ausscheidende ergänzt die Geräterückgabe als Schritt, den die Führungskraft abzeichnet. Für die Ausmusterung beauftragt die Behörde einen zertifizierten Recycler, der Laufwerke löscht, jene zerstört, die sich nicht löschen lassen, und für jede Charge ein Zertifikat ausstellt. Der Schrank wird geleert, und sein Inhalt gelöscht und festgehalten.

Innerhalb von sechs Monaten stimmen Register und Discovery bis auf eine kleine Marge überein, und ein verlorener Laptop wird in den meisten Fällen innerhalb einer Stunde ferngesperrt. Einige Probleme bleiben. Pflegekräfte teilen sich bei hektischen Schichten manchmal Geräte, sodass das Feld der Verantwortlichen falsch ist, und die Zertifikate des Recyclers listen Chargen, aber nicht einzelne Geräte, wonach die Prüferin fragt. Die Leitung der Endnutzer-Services führt einen Eintrag für geteilte Geräte mit täglicher Ausgabe ein und bittet den Recycler, Seriennummern in die Zertifikate aufzunehmen. Sie beschließt außerdem, die Ersatzrichtlinie anhand der Ausfalldaten des ersten Jahres zu überprüfen, statt ein festes Alter beizubehalten.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams halten Testgeräte, Build-Server und Laborausstattung. Registrieren Sie sie, geben Sie ihnen Verantwortliche und mustern Sie sie ordentlich aus. Sagen Sie dem Asset-Management, wann Sie Geräte brauchen, damit das Angebot zu den Projekten passt.

### Service- und Betriebsteams

Betrieb und Service Desk führen den größten Teil des Lebenszyklus durch: bauen, bereitstellen, unterstützen und ausmustern. Halten Sie Aufzeichnungen bei jedem Schritt aktuell, nutzen Sie Discovery, um Lücken zu fangen, und bewahren Sie Entsorgungsnachweise auf. Teilen Sie Zustands- und Ausfalldaten mit denen, die den Ersatz planen.

### Führung und Governance

Führungskräfte entscheiden über Ersatzbudgets und Risikobereitschaft. Fragen Sie nach der Zahl der Geräte außerhalb des Supports, dem Prozess für verlorene Geräte und dem Nachweis der Datenvernichtung. Unterstützen Sie belegbasierte Erneuerung und die kleinen Kontrollen, etwa Tags und Checklisten, die Aufzeichnungen wahr halten.

### Kunden und Nutzer

Nutzende halten die Ausstattung im Alltag. Pflegen Sie sie, melden Sie Verlust oder Schaden schnell und geben Sie Ausstattung zurück, wenn Sie gehen. Sagen Sie dem Desk, wenn Sie ein Gerät teilen oder an einen anderen Ort wechseln, damit die Aufzeichnungen stimmen.

## Typische Fehlerbilder

- **Ausstattung ohne Tags.** Geräte lassen sich nicht unterscheiden. Versehen Sie sie stattdessen beim Empfang mit Tags und erfassen Sie sie.
- **Veraltete Aufzeichnungen.** Umzüge und Ausscheidende werden nicht erfasst. Binden Sie Aktualisierungen stattdessen an Ereignisse wie die Prozesse für Eintretende, Wechselnde und Ausscheidende.
- **Erneuerung nach festem Alter ohne Daten.** Geräte werden zu früh oder zu spät ersetzt. Prüfen Sie stattdessen Ausfall-, Kosten- und Supportdaten.
- **Schwache Entsorgung.** Daten bleiben auf entsorgten Geräten. Löschen und verifizieren Sie stattdessen mit einer zum Medium passenden Methode, bewahren Sie Belege auf und nutzen Sie einen zertifizierten Partner.
- **Flash-Speicher ignorieren.** Es wird angenommen, Überschreiben funktioniere. Nutzen Sie stattdessen Sanitize-Befehle oder Schlüsselzerstörung und verifizieren Sie.
- **Lager.** Ungenutzte Geräte häufen sich an. Verwenden Sie sie stattdessen weiter oder mustern Sie sie nach Plan aus.
- **Keine Verknüpfung mit Services.** Ein ausgefallenes Gerät ist nur ein Ticket. Halten Sie stattdessen fest, welchen Service jedes Gerät stützt.
- **Unzertifiziertes Recycling.** Ausstattung landet dort, wo niemand es weiß. Wählen Sie stattdessen zertifizierte Partner und fragen Sie, wohin Materialien gehen.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Bestand und Verfolgung | Geräte sind informell bekannt | Ein Register deckt die wichtigsten Geräte ab | Jedes Gerät hat ein Tag, ist erfasst und mit Discovery abgeglichen | Genauigkeit und Lücken werden gemessen und korrigiert | Der Bestand umfasst eigene, geleaste und Partnergeräte mit geteilten Daten |
| Lebenszyklus und Erneuerung | Ersatz geschieht bei Ausfall | Einige Geräte folgen einem Erneuerungsplan | Lebenszyklusschritte und eine Erneuerungsrichtlinie sind definiert | Ausfall- und Kostendaten treiben Ersatzentscheidungen | Erneuerung wird in der Organisation mit Lieferanten und Finanzen geplant |
| Entsorgung und Datenschutz | Entsorgung ist ad hoc | Einige Geräte werden gelöscht | Eine Standardlöschmethode und zertifizierte Entsorgung mit Nachweis | Entsorgungsnachweise werden geprüft und Lücken geschlossen | Entsorgung wird mit Partnern und Weiterverwendungsprogrammen koordiniert |
| Verbindung zu Service und Finanzen | Geräte sind nicht mit Services oder Kosten verknüpft | Einige Kostendaten werden geführt | Geräte sind mit Verantwortlichen, Services und Kosten verknüpft | Kosten- und Supportdaten werden überprüft und in Budgets genutzt | Asset-Daten werden laufend mit Finanzen, Sicherheit und Lieferanten geteilt |

## Checkliste

- [ ] Jedes Gerät, das wir verfolgen, hat ein eindeutiges Tag oder einen Seriennummer-Eintrag und eine benannte verantwortliche oder nutzende Person.
- [ ] Geräte sind mit dem Service verknüpft, den sie stützen.
- [ ] Discovery wird mindestens monatlich für die wichtigsten Gerätearten mit dem Register verglichen.
- [ ] Garantie- und Supportenddaten sind festgehalten und werden überprüft.
- [ ] Unsere Ersatzrichtlinie beruht auf Daten und wird jährlich überprüft.
- [ ] Prozesse für Ausscheidende und Wechselnde holen Geräte zurück oder weisen sie neu zu.
- [ ] Die Datenlöschung nutzt eine zum Medium passende Methode, mit Verifikation und Eintrag.
- [ ] Entsorgungspartner sind zertifiziert und liefern Nachweise je Gerät oder Charge.
- [ ] Verlorene und gestohlene Geräte können schnell gemeldet und, wo verfügbar, ferngesperrt oder gelöscht werden.
- [ ] Eine Stichprobe des Registers wird zweimal im Jahr gegen die physische Wirklichkeit geprüft.

## KI-Prompts

**Zweck: eine physische Zählung mit dem Register abgleichen.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Zweck: einen datenbasierten Ersatzreview vorbereiten.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Zweck: eine Checkliste zur Geräteentsorgung mit Nachweisanforderungen schreiben.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: die Reaktion auf ein verlorenes Gerät planen.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [configuration-management](../../../../skills/configuration-management/SKILL.md): nutzen Sie ihn, um Geräte mit den Services zu verknüpfen, die sie stützen.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um zu planen, wie viel Ausstattung wann gebraucht wird.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): nutzen Sie ihn, um Erneuerungs- und Supportkosten zu prognostizieren.
- [data-governance](../../../../skills/data-governance/SKILL.md): nutzen Sie ihn, um zu entscheiden, wer die Daten auf Geräten verantwortet und wie sie bei der Ausmusterung geschützt werden.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um Hardwarelieferanten und Entsorgungspartner auszuwählen und zu überprüfen.

## Wichtige Quellen

- **IT asset management** (Wikipedia): die Definition und eine Beschreibung des Hardware-Asset-Managements, im Artikel zum Rechenzentrumsmanagement.
- **Data erasure** (Wikipedia): Methoden, Standards, Verifikation und der Sonderfall von Solid-State-Speicher.
- **Electronic waste** (Wikipedia): Ausmaß, Gefahren, Recycling und das Basler Übereinkommen, mit Vorbehalten zu widersprüchlichen Zahlen.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): die Primäranleitung, die der Wikipedia-Artikel zitiert; lesen Sie die aktuelle Überarbeitung, bevor Sie einen Standard festlegen.

## Referenzen

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
