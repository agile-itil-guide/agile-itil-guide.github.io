# IT-Service-Management

**IT-Service-Management (ITSM) ist die Disziplin, IT-Services rund um das zu gestalten, zu liefern, zu betreiben und zu verbessern, was Kunden brauchen, und agile Teams, die Services betreiben, tun dies bereits, ob sie den Namen nutzen oder nicht.**

## Warum das wichtig ist

Wenn ein Team Software ausliefert und dann betreibt, wird es zum Serviceanbieter. Nutzende hängen von ihm ab, erwarten Verfügbarkeit und wollen Hilfe, wenn etwas ausfällt. ITSM ist die Praxis, die rund um diese Beziehung gewachsen ist. Teams, die sie ignorieren, entdecken sie oft auf die harte Tour wieder: indem sie nachts angepiept werden, indem sie den Überblick verlieren, was sich geändert hat, oder indem sie mit Kunden darüber streiten, was versprochen wurde.

ITSM hat den Ruf schwerer Prozesse, und ein Teil dieses Rufs ist verdient. Agile Teams haben ihrerseits den Ruf, schnell voranzugehen und den Betrieb mit dem Ergebnis allein zu lassen. Beide Rufe beschreiben Fehlformen, nicht die Absicht eines der beiden Felder. ITSM fragt, was der Kunde von einem Service braucht und wie der Anbieter ihn liefern und verbessern wird. Das ist eine Frage, die auch agile Teams bewegt.

Dieses Thema gibt das Vokabular, das im Rest des Leitfadens verwendet wird: was ein Service ist, wer die Kunden und Nutzenden sind, was ITSM umfasst und woher seine wichtigsten Frameworks kommen. Es nutzt den [Wikipedia-Artikel zum IT Service Management](https://en.wikipedia.org/wiki/IT_service_management) als Landkarte. Dieser Artikel ist kurz und listet Frameworks eher auf, als dass er sie erklärt, daher ergänzt das Thema praktische Deutung und weist darauf hin, wo es das tut.

## Kernkonzepte

### Was ITSM ist

Der Wikipedia-Artikel definiert ITSM als die Menge von Aktivitäten, die eine Organisation ausführt, um IT-Services zu gestalten, zu bauen, zu liefern, zu betreiben und zu steuern, die Kunden angeboten werden. Er stellt ITSM technologieorientierten Ansätzen wie Netzwerkmanagement und Systemmanagement gegenüber. ITSM, sagt er, verfolge einen Prozessansatz, konzentriere sich auf Kundenbedürfnisse statt auf Systeme und betone kontinuierliche Verbesserung.

Der Artikel zitiert eine Umfrage von CIO WaterCooler aus dem Jahr 2017, nach der Unternehmen ITSM überwiegend zur Unterstützung der Kundenerfahrung (35 %) und der Servicequalität (48 %) nutzen. Es ist eine Umfrage, und ihre Stichprobe wird im Artikel nicht beschrieben, betrachten Sie die Zahlen daher als Illustration dafür, wie Praktiker ihre Ziele beschreiben, und nicht als Maß dafür, wie verbreitet jedes Ziel ist.

### Service, Kunde und Nutzer

Ein **Service** ist eine Möglichkeit, anderen Wert zu liefern, ohne dass diese die Kosten und Risiken tragen müssen. Die Online-Zahlungen einer Bank, die Terminbuchung eines Krankenhauses und der gemeinsame Dateispeicher eines Unternehmens sind alle Services. Der Artikel unterscheidet **Nutzende**, die den Service benutzen, von **Kunden**, die dafür zahlen oder ihn beauftragen. In der internen IT eines Unternehmens kann der Kunde die Leitung eines Geschäftsbereichs sein und die Nutzenden deren Mitarbeitende. In einem öffentlichen Service kann der Kunde ein Ministerium sein und die Nutzenden Bürger. Beide Gruppen haben unterschiedliche Bedürfnisse, und ein Anbieter, der nur dem Kunden zuhört, kann verfehlen, was Nutzende erleben.

### Typische ITSM-Aktivitäten

Der Artikel nennt einige Kernideen, und die übliche ITSM-Praxis fügt weitere hinzu. Zusammen ergeben sie eine wiedererkennbare Gestalt:

| Aktivität | Wofür sie da ist | Wo dieser Leitfaden sie behandelt |
|---|---|---|
| **Service Desk** | Eine zentrale Anlaufstelle zwischen Anbietern und Nutzenden; bearbeitet Incidents und Service-Requests | Thema 3.1 — Service Desk |
| **Incident-Bearbeitung** | Den Service wiederherstellen, wenn etwas ihn stört oder bedroht | Thema 3.2 — Incident Management |
| **Service-Requests** | Routinemäßiges bereitstellen, worum Nutzende bitten, etwa Zugang oder Ausstattung | Thema 3.6 — Service-Request-Management |
| **Probleme und Änderungen** | Zugrunde liegende Ursachen finden und beheben und Änderungen an Services steuern | Thema 3.3 — Problem Management und Thema 3.4 — Change Enablement |
| **Service-Level und Katalog** | Vereinbaren, was angeboten wird und wie gut | Thema 3.7 — Service-Level-Management und Thema 3.8 — Service-Katalog-Management |
| **Kontinuierliche Verbesserung** | Services mit der Zeit besser machen | Thema 3.15 — Kontinuierliche Verbesserung |

Der Artikel definiert einen **Incident** als Störung oder mögliche Störung der Verfügbarkeit oder Qualität eines Services und einen **Service-Request** als Routineanfrage nach einem Service. Er nennt **Service-Level-Agreements (SLAs)** nur am Rande, weshalb der Leitfaden sie in Thema 3.7 — Service-Level-Management erklärt.

### Enterprise Service Management und Automatisierung

Der Artikel nennt zwei Erweiterungen. **Enterprise Service Management (ESM)** wendet ITSM-Werkzeuge und -Ideen auf andere Teile eines Unternehmens an, etwa Personalwesen oder Gebäudemanagement, die ebenfalls Anfragen erhalten und Services liefern. **IT-Prozessautomatisierung** ersetzt manuelle Routineschritte durch automatisierte, damit sich das Personal auf Aufgaben höherer Priorität konzentrieren kann. Beides ist für agile Teams wichtig: ESM zeigt, dass die Disziplin nicht an die IT gebunden ist, und Automatisierung ist der Weg, wie kleine Teams mit dem Volumen Schritt halten.

### Frameworks und Standards

Der Artikel listet viele Frameworks und Standards auf. Die folgende Liste wiederholt seine einzeiligen Beschreibungen und wird in Thema 2.7 — ITSM-Frameworks und -Standards erweitert.

| Name | Was der Artikel sagt |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Detaillierte Praktiken für ITSM und IT-Asset-Management, die IT an Geschäftszielen ausrichten |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Ein internationaler Standard für Service-Management-Systeme, gegen den eine Organisation zertifiziert werden kann |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Ein IT-Governance-Framework mit Kontrollzielen, Metriken und Reifegradmodellen |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Ein schlanker Standard, weitgehend an ISO/IEC 20000 ausgerichtet |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Ein Modell zum Aufbau, zur Steuerung und zur Verbesserung von Services |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Ein Framework, das Geschäftsziele mit Architekturzielen verknüpft |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Service-Management-Anleitung auf Basis von Microsoft-Technologien |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Ein Framework für professionelles Anwendungsmanagement |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Ein Best-Practice-Framework für das Informationsmanagement |
| Business Process Framework (eTOM) | Ein Prozess-Framework für Telekommunikationsanbieter |

Der Artikel fügt hinzu, dass ITSM-Frameworks auf ISO 9000, ISO/IEC 27000 und CMMI zurückgegriffen haben und dass ITIL Version 2 und BS 15000, der Vorläufer von ISO/IEC 20000, aufeinander abgestimmt waren. Er beschreibt außerdem USM, ein prinzipienbasiertes Managementsystem, das die niederländische Regierung übernommen hat.

### Was der Artikel nicht abdeckt

Der Artikel hat keinen Geschichtsabschnitt, keine Kritik und keine Erwähnung von Agilität oder DevOps. Dieses Schweigen ist bedeutsam. ITSM wurde wegen Prozessaufwand und langsamer Veränderung kritisiert, und agile Teams wurden dafür kritisiert, den Betrieb zu vernachlässigen, aber keine der beiden Kritiken finden Sie dort. Dieser Leitfaden schließt die Lücke in Teil 5, beginnend mit Thema 5.1 — Agiles Service-Management. Wo dieses Thema Probleme erwähnt, stützt es sich auf die anderen Quellen des Leitfadens und auf praktische Erfahrung und sagt das.

### ITSM und ITAM

Der ITIL-Artikel beschreibt ITIL als Abdeckung von sowohl ITSM als auch IT-Asset-Management (ITAM). ITAM ist die Disziplin zu wissen, welche IT-Assets eine Organisation hat, was sie kosten und wie sie genutzt werden. Services hängen von Assets ab, und die beiden Disziplinen teilen Informationen, weshalb Teil 4 eng auf ITSM folgt (siehe Thema 4.1 — IT-Asset-Management).

## Bewährte Praktiken

1. **Definieren Sie Ihre Services von der Kundenseite.** Listen Sie auf, was Kunden und Nutzende tatsächlich nutzen, in ihren Worten, etwa "anmelden", "einen Termin buchen" und "eine Rechnung senden". Gruppieren Sie die Technologie dahinter. Das ist der Anfang eines Service-Katalogs (siehe Thema 3.8 — Service-Katalog-Management).
2. **Benennen Sie, wer Kunden und Nutzende sind.** Schreiben Sie für jeden Service auf, wer ihn bezahlt oder beauftragt und wer ihn nutzt. Wenn es verschiedene Personen sind, prüfen Sie, dass beide Gruppen eine Stimme haben.
3. **Geben Sie jedem Service eine verantwortliche Person.** Benennen Sie eine Person, die dafür verantwortlich ist, wie der Service leistet und sich mit der Zeit verbessert. Ohne verantwortliche Person sind Probleme mit dem Service niemandes Aufgabe.
4. **Beginnen Sie bei den Aktivitäten, die am meisten schmerzen.** Sind Ausfälle der Schmerz, stärken Sie zuerst die Incident-Bearbeitung. Weiß niemand, was sich geändert hat, beginnen Sie mit Änderungsaufzeichnungen. Führen Sie nicht alle ITSM-Praktiken auf einmal ein.
5. **Nutzen Sie eine einzige Eingangstür.** Geben Sie Nutzenden einen Ort, um Hilfe zu erbitten und Anfragen zu stellen, und machen Sie ihn einfach. Ein Service Desk, der schwer zu erreichen ist, wird umgangen, und dann verlieren Sie die Information, von der ITSM abhängt.
6. **Trennen Sie Incidents von Anfragen und Problemen.** Ein Incident ist eine Störung, eine Anfrage ist eine Routinebitte, und ein Problem ist eine zugrunde liegende Ursache. Gemischte Warteschlangen verbergen Muster und verzerren Maße.
7. **Erfassen Sie, was zählt, und nicht mehr.** Führen Sie Aufzeichnungen zu Incidents, Änderungen und Assets, die Sie zur Entscheidung nutzen. Löschen Sie Felder, die niemand liest. Aufzeichnungen sind ein Kostenfaktor, und Sie sollten sagen können, wofür jede da ist.
8. **Wählen Sie Frameworks nach Problem, nicht nach Mode.** Nutzen Sie ITIL, ISO/IEC 20000, COBIT oder leichtere Modelle als Ideenquellen für das Problem, das Sie haben. Übernehmen Sie die Teile, die helfen, und sagen Sie, welche Sie ausgelassen haben.
9. **Automatisieren Sie das Routinemäßige.** Suchen Sie wiederholte Schritte, etwa Passwortrücksetzungen und Zugangsvergaben, und automatisieren Sie sie mit Sorgfalt. Überprüfen Sie automatisierte Aktionen regelmäßig, damit sie nicht von dem abdriften, was Nutzende brauchen.
10. **Messen Sie, was Kunden spüren.** Verfolgen Sie Verfügbarkeit, Zeit bis zur Wiederherstellung des Services und Nutzerzufriedenheit, bevor Sie interne Aktivität zählen. Nutzen Sie die Umfrage aus dem Wikipedia-Artikel als Erinnerung, dass Praktiker Kundenerfahrung und Qualität bereits als Hauptziele nennen.
11. **Schauen Sie über die IT hinaus.** Wenn andere Teile der Organisation Anfragen schlecht bearbeiten, erwägen Sie gemeinsame Werkzeuge und Praktiken durch Enterprise Service Management. Zwingen Sie ihnen nicht das Vokabular der IT auf.
12. **Verbessern Sie kontinuierlich.** Reservieren Sie regelmäßig Zeit, um anhand von Incident- und Anfragedaten zu überprüfen, was funktioniert, und kleine Änderungen vorzunehmen (siehe Thema 3.15 — Kontinuierliche Verbesserung).

## Fragen zur Diskussion im Team

**Welche Services bieten wir an, in den Worten, die unsere Nutzenden verwenden würden?**

Bitten Sie jede Person, die drei Dinge aufzuschreiben, für die Nutzende uns am häufigsten brauchen. Vergleichen Sie die Listen. Unterschiede zeigen meist, dass das Team unterschiedliche Bilder vom Service hat oder dass es Services nach Technologie statt nach Nutzung beschreibt. Die Moderation kann fragen, welcher Service keine klare verantwortliche Person hat. Vereinbaren Sie anschließend eine erste Liste von Services.

**Wer sind die Kunden und wer die Nutzenden unseres wichtigsten Services, und wollen sie dasselbe?**

Nennen Sie die Person, die beauftragt oder bezahlt, und die Personen, die nutzen. Fragen Sie, was jede vom Service will. In der internen IT achtet der Kunde vielleicht auf Kosten und Risiko und die Nutzenden auf Tempo und Einfachheit. Fragen Sie, wo sie kollidieren und wie das Team davon erfährt. Wählen Sie einen Konflikt, den Sie mit echten Menschen durchsprechen.

**Wohin gehen Nutzende, wenn sie Hilfe brauchen, und wie viele Wege gibt es?**

Zählen Sie die Wege: ein Portal, eine Telefonnummer, E-Mail, Chat, der Schreibtisch einer Kollegin. Fragen Sie, welchen Weg Nutzende bevorzugen und warum. Mehrere informelle Wege bedeuten, dass ein Teil des Bedarfs unsichtbar ist. Die Diskussion sollte mit einer Entscheidung enden, welche Wege bleiben, welche zusammengelegt werden und wie erfasst wird, was über informelle Wege eintrifft.

**Wie gut können wir einen Incident von einer Anfrage und einem Problem unterscheiden, und was geschieht, wenn wir sie vermischen?**

Nehmen Sie zehn jüngste Tickets und sortieren Sie sie. Meinungsverschiedenheiten zeigen, dass Definitionen im Team abweichen. Fragen Sie, was gemischte Kategorien mit Berichten und Prioritäten machen. Zum Beispiel können viele Anfragen in einer Incident-Warteschlange die Incident-Bearbeitung langsam aussehen lassen. Vereinbaren Sie einfache Definitionen und Beispiele.

**Welche ITSM-Praktiken fehlen uns oder betreiben wir nur auf dem Papier?**

Listen Sie die Praktiken aus der Tabelle oben auf und bewerten Sie jede als funktionierend, teilweise funktionierend oder nur auf dem Papier. Fragen Sie bei jeder als funktionierend bewerteten nach einem jüngsten Beispiel. Die Moderation sollte dem Drang widerstehen, jede Lücke zu füllen, und fragen, welche Lücke den Kunden den größten Schaden bereitet.

**Was wollen wir, dass ein Framework für uns tut, und was fürchten wir, was es uns antun würde?**

Sammeln Sie Hoffnungen und Befürchtungen zur Einführung von ITIL oder ISO/IEC 20000. Hoffnungen sind oft Konsistenz und Glaubwürdigkeit. Befürchtungen sind oft Papierkram und Langsamkeit. Fragen Sie, wie man das Erste ohne das Zweite bekommt. Zum Beispiel Vokabular und einige Praktiken übernehmen und Formulare vermeiden. Halten Sie die Bedingungen fest, die das Team bräuchte.

## In der Praxis: ein agiles ITIL-Beispiel

Ein mittelgroßer Online-Händler ist von der Website eines Gründers zu einem Unternehmen mit einem Team von zwölf Ingenieuren, einer wachsenden Kundschaft und einer kleinen Gruppe von Support-Mitarbeitenden gewachsen. Kunden mailen Probleme an ein gemeinsames Postfach und rufen eine private Mobilnummer an, wenn der Checkout ausfällt. Ingenieure beheben, wovon sie hören, und schreiben selten etwas auf. Nach einem Zahlungsausfall, der drei Stunden dauerte, fragt der Gründer, warum niemand es wusste, bis ein Kunde anrief.

Die Leitung der Entwicklung schlägt das leichteste mögliche ITSM vor. Das Team listet seine Services in Kundenbegriffen auf: Stöbern und Suchen, Checkout und Zahlung, Bestellverfolgung und Kundenkonten. Jeder erhält eine verantwortliche Person. Eine gemeinsame Support-Adresse wird zur einzigen Eingangstür und speist ein einfaches Ticket-Werkzeug mit getrennten Typen für Incidents und Anfragen. Jeder Incident, der länger als 30 Minuten dauert, erhält eine kurze Auswertung, geschrieben in einem gemeinsamen Dokument. Änderungen an Checkout und Zahlung werden in einem Team-Kanal angekündigt, bevor sie geschehen.

Nach drei Monaten weiß das Team, wie viele Incidents es bearbeitet, und stellt fest, dass die meisten aus zwei Ursachen stammen. Es behebt beide, und der Checkout-Ausfall wiederholt sich nicht. Einige Schwierigkeiten bleiben. Kunden rufen weiterhin den Gründer an, wenn sie verärgert sind, sodass ein Teil des Bedarfs das Ticket-Werkzeug umgeht. Ingenieure murren außerdem, dass das Schreiben von Auswertungen Zeit kostet, und zwei Auswertungen entfielen in einem arbeitsreichen Monat. Die Leitung der Entwicklung beschließt, die Auswertungen kurz zu halten, den Gründer zu bitten, Anrufe an die Support-Adresse weiterzuleiten, und nach einem weiteren Quartal Daten erneut zu prüfen, ob ein umfassenderer Prozess nach ITIL-Art nötig ist.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams, die auch betreiben, was sie bauen, praktizieren bereits ITSM. Benennen Sie Ihre Services, erfassen Sie Incidents und Änderungen auf leichte Weise und teilen Sie die Daten mit denen, die Ihre Services unterstützen. Behandeln Sie den Service Desk als Quelle von Belegen dafür, womit Nutzende Schwierigkeiten haben.

### Service- und Betriebsteams

Betriebs- und Service-Desk-Mitarbeitende tragen den Großteil der ITSM-Praxis. Agile Ideen können helfen, indem sie Ihre Arbeit sichtbar machen, Feedbackschleifen mit Nutzenden verkürzen und Verbesserung von Jahresprojekten zu kleinen regelmäßigen Änderungen verlagern. Erklären Sie den Zweck hinter jeder ITSM-Regel, damit Kollegen sie sinnvoll anpassen können.

### Führung und Governance

Führungskräfte entscheiden, wie viel Struktur sie verlangen und wie viele Nachweise sie fordern. Fragen Sie nach Ergebnissen, die Kunden spüren, und nach einigen Maßen, die die Teams aus ihren Werkzeugen liefern können. Seien Sie vorsichtig, ein Framework als Signal zu kaufen; der Wikipedia-Artikel listet viele, und keines ersetzt das Wissen über die eigenen Services.

### Kunden und Nutzer

Kunden und Nutzende sind der Grund, warum ITSM existiert. Rechnen Sie mit einem klaren Weg, um Hilfe zu bitten, mit ehrlichen Informationen darüber, was zu erwarten ist, und mit jemandem, der jeden Service verantwortet. Geben Sie im Gegenzug zeitnahe und konkrete Informationen, wenn etwas schiefgeht, damit der Anbieter daraus lernen kann.

## Typische Fehlerbilder

- **Prozess um seiner selbst willen.** Formulare und Freigaben vermehren sich, und niemand erinnert sich, warum. Verbinden Sie stattdessen jede Praktik mit einem Zweck und löschen Sie jene, die keinem mehr dienen.
- **Keine einzige Eingangstür.** Nutzende wenden sich an jeden, den sie kennen, und der Bedarf ist unsichtbar. Bieten Sie stattdessen einen einfachen Weg an und führen Sie informelle Anfragen in ihn hinein.
- **Incidents, Anfragen und Probleme vermischen.** Berichte führen in die Irre, und Ursachen bleiben verborgen. Nutzen Sie stattdessen einfache Definitionen und sortieren Sie Tickets einheitlich.
- **Services nach Technologie beschrieben.** Nutzende finden nicht, was sie brauchen, und Verantwortliche sind unklar. Beschreiben Sie Services stattdessen in Kundenbegriffen und benennen Sie für jeden eine verantwortliche Person.
- **Ein Framework im Ganzen übernehmen.** Teams kopieren ein großes Framework und begraben sich unter Prozessen. Beginnen Sie stattdessen beim Problem und nehmen Sie nur die Teile, die helfen.
- **Die Nutzenden ignorieren.** Der Anbieter spricht nur mit dem zahlenden Kunden. Hören Sie stattdessen Kunden und Nutzenden zu und suchen Sie nach Konflikten.
- **Aktivität messen.** Zählungen von Tickets und Anrufen ersetzen Belege für Servicequalität. Messen Sie stattdessen Verfügbarkeit, Zeit bis zur Wiederherstellung des Services und Nutzerzufriedenheit.
- **ITSM als getrennt von der Lieferung behandeln.** Delivery-Teams liefern aus und überlassen es dem Betrieb, zurechtzukommen. Verbinden Sie sie stattdessen durch gemeinsame Services, gemeinsame Daten und gemeinsame Reviews (siehe Thema 5.1 — Agiles Service-Management).

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Service-Definition | Services werden nach Technologie beschrieben oder gar nicht | Einige Services sind mit Verantwortlichen aufgelistet | Alle Services sind in Kundenbegriffen beschrieben, mit benannten Verantwortlichen | Service-Beschreibungen werden an Nutzung und Feedback geprüft | Service-Definitionen werden mit Kunden und Lieferanten geteilt und gemeinsam angepasst |
| Support und Anfragen | Hilfe wird über informelle Wege erbeten | Einige Teams haben ein Ticket-Werkzeug oder ein gemeinsames Postfach | Eine Eingangstür mit klaren Typen für Incidents und Anfragen | Bedarf und Lösungszeiten werden verfolgt und überprüft | Support wird über Teams und Lieferanten mit gemeinsamen Daten koordiniert |
| Aufzeichnungen und Maße | Wenige Aufzeichnungen werden geführt | Einige Teams erfassen Incidents und Änderungen | Aufzeichnungen sind einheitlich und jede hat einen erklärten Zweck | Kundenbezogene Maße werden regelmäßig überprüft | Maße werden über Services hinweg geteilt und genutzt, um gemeinsam Prioritäten zu setzen |
| Verbesserung | Behebungen folgen Krisen | Einige Teams werten Incidents aus | Regelmäßige Auswertung von Incident- und Anfragedaten führt zu geplanten Änderungen | Verbesserungsarbeit ist mit Ressourcen ausgestattet und ihre Ergebnisse werden geprüft | Verbesserung ist Routine über Teams und mit Kunden |

## Checkliste

- [ ] Wir haben eine Liste unserer Services in Kundensprache.
- [ ] Jeder Service hat eine benannte verantwortliche Person.
- [ ] Wir wissen, wer die Kunden und wer die Nutzenden jedes Services sind.
- [ ] Nutzende haben eine klare Eingangstür für Hilfe und Anfragen.
- [ ] Incidents, Anfragen und Probleme werden als verschiedene Dinge erfasst.
- [ ] Jede Art von Aufzeichnung hat einen erklärten Zweck, und ungenutzte Felder sind entfernt.
- [ ] Wir messen mindestens eine Sache, die Kunden spüren, etwa Verfügbarkeit oder Zeit bis zur Wiederherstellung des Services.
- [ ] Wir überprüfen Incident- und Anfragedaten regelmäßig und handeln danach.
- [ ] Wir können sagen, welche Framework-Ideen wir nutzen und welche wir ausgelassen haben.
- [ ] Routineaufgaben, die sich sicher automatisieren lassen, sind identifiziert.

## KI-Prompts

**Zweck: eine Liste Ihrer Services in Kundensprache entwerfen.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Zweck: jüngste Tickets in Incidents, Anfragen und Probleme sortieren.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Zweck: einen kleinen ersten Satz von ITSM-Praktiken für Ihre Situation wählen.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Zweck: ein Gespräch zwischen einem Delivery-Team und dem Service Desk vorbereiten.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): nutzen Sie ihn, um eine Liste von Services in Kundensprache mit Verantwortlichen und Beschreibungen zu entwerfen oder zu überprüfen.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): nutzen Sie ihn, wenn Sie bereit sind, mit Kunden zu vereinbaren, welches Service-Niveau zu erwarten ist.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): nutzen Sie ihn, um vorzubereiten, wie Ihr Team einen Incident bearbeitet, bevor einer eintritt.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um zu verstehen, welche Arten von Anfragen und Incidents in welchem Umfang eintreffen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um klarzumachen, wer jeden Service verantwortet und wer konsultiert oder informiert wird.

## Wichtige Quellen

- **IT service management** (Wikipedia): eine kurze Definition mit einer Liste verwandter Frameworks und Standards, nützlich als Landkarte.
- **ITIL** (Wikipedia): die Geschichte und die Versionen des bekanntesten ITSM-Frameworks, einschließlich seiner Eigentümerwechsel.
- **ISO/IEC 20000** (Wikipedia): Hintergrund zum internationalen Standard für Service-Management-Systeme.
- **Enterprise service management** (Wikipedia): eine Einführung in die Anwendung von ITSM-Ideen über die IT hinaus.

## Referenzen

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
