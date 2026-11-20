# Die vier Dimensionen des Service-Managements

**Die vier Dimensionen von ITIL 4 sind eine Checkliste, um zu finden, was einem Service fehlt: die richtigen Menschen und Struktur, Information und Technologie, Partner und Lieferanten sowie definierte Arbeitsflüsse, und eine Schwäche in einer von ihnen begrenzt den Wert der anderen.**

## Warum das wichtig ist

Wenn ein Service enttäuscht, greifen Teams tendenziell zu der Abhilfe, die sie am besten kennen. Ingenieure verdächtigen die Technologie, Führungskräfte den Prozess und das Personalwesen die Fähigkeiten. Jede Seite kann recht haben, und die Chancen, das Problem zu beheben, sind besser, wenn Sie an allen vier Stellen suchen. Die vier Dimensionen geben dafür einen einfachen Rahmen.

Die Dimensionen sind auch eine nützliche Bremse gegen eine verbreitete agile Fehlform. Ein Team, das hervorragend Code liefert, kann dennoch einen schlechten Service liefern, wenn niemand an den Lieferanten gedacht hat, von dessen API es abhängt, an die Fähigkeiten, die nötig sind, ihn nachts zu unterstützen, oder an die Information, die der Service Desk bei einem Ausfall braucht. Ebenso kann eine Service-Management-Gruppe, die ihre Prozesse perfektioniert, die Kultur und die Werkzeuge vernachlässigen, die sie wirksam machen.

Laut der ITIL-4-Foundation-Seite von PeopleCert sind die vier Dimensionen Organisationen und Menschen; Information und Technologie; Partner und Lieferanten; sowie Wertströme und Prozesse. Diese Liste ist der einzige Teil dieses Themas, der direkt von den öffentlichen Seiten des Framework-Eigners stammt. Die folgenden Beschreibungen stammen aus Quellen von Schulungsanbietern und Kommentatoren, die untereinander übereinstimmen, aber sekundär sind. Prüfen Sie die ITIL-4-Veröffentlichungen, wenn Sie den genauen Wortlaut brauchen.

## Kernkonzepte

### Die vier Dimensionen

Die Tabelle nennt jede Dimension, was sie nach weit verbreiteter Zusammenfassung umfasst, und eine Frage, die zu einem Service gestellt werden kann.

| Dimension | Was sie umfasst | Eine Frage dazu |
|---|---|---|
| **Organisationen und Menschen** | Die Struktur, Kultur, Rollen, Fähigkeiten und Führung, die zur Arbeit nötig sind; reicht über das IT-Personal hinaus zu allen, die mit dem Service zu tun haben | Wer macht was, mit welchen Fähigkeiten, und unterstützt die Kultur es? |
| **Information und Technologie** | Die Information und das Wissen, die der Service nutzt und erzeugt, und die Werkzeuge und Technologie, die ihn tragen | Was müssen wir wissen, und worauf betreiben wir ihn? |
| **Partner und Lieferanten** | Die Beziehungen zu anderen Organisationen, die zum Service beitragen, einschließlich dessen, wie Lieferanten ausgewählt, gesteuert und integriert werden | Wer ist sonst beteiligt, und wofür hängen wir von ihnen ab? |
| **Wertströme und Prozesse** | Die Aktivitäten und Arbeitsflüsse, durch die Wert entsteht, und wie sie organisiert und gesteuert werden | Wie bewegt sich Arbeit, und wo wartet sie? |

Schulungsquellen betonen, dass die Dimensionen voneinander abhängen. Wird einer zu wenig Aufmerksamkeit geschenkt, begrenzt das den Wert, den eine Organisation ihren Stakeholdern liefern kann.

### Beziehung zum Rest des Frameworks

Die Dimensionen gelten für jeden Teil des Service Value System (siehe Thema 2.3 — Das ITIL Service Value System). Eine Praktik, etwa Incident Management, lässt sich durch jede betrachten: welche Menschen und Rollen sie braucht, welche Information und Werkzeuge, welche Lieferanten und welche Prozesse. Sie hängen auch mit den Leitprinzipien zusammen, besonders mit "ganzheitlich denken und arbeiten" (siehe Thema 2.4 — Die Leitprinzipien von ITIL).

### Externe Faktoren

Schulungs- und Kommentarquellen beschreiben auch externe Faktoren, die alle vier Dimensionen beeinflussen. Sie nutzen üblicherweise das Akronym **PESTLE**: politisch, wirtschaftlich (economic), sozial (manche Quellen sagen soziokulturell), technologisch, rechtlich (legal) und ökologisch (environmental). Das sind Dinge, die die Organisation nicht kontrollieren, aber berücksichtigen muss, weil sie Risiken schaffen oder einen Anlass bieten können, einen Service zu ändern. Eine Gesetzesänderung kann ändern, welche Information ein Service aufbewahren darf; eine wirtschaftliche Verschiebung kann die Preise eines Lieferanten ändern; eine neue Technologie kann ändern, was Kunden erwarten. Die Quellen empfehlen, sie immer dann zu prüfen, wenn Sie überlegen, wie auf veränderten Bedarf oder veränderte Gelegenheit zu reagieren ist.

### Die Dimensionen in einem agilen Team

Agile Teams arbeiten mit einigen Dimensionen schon aus Gewohnheit und vernachlässigen andere.

| Dimension | Was agile Teams meist gut machen | Was oft übersehen wird |
|---|---|---|
| Organisationen und Menschen | Selbstorganisierte Teams, Retrospektiven, Fokus auf Motivation | Bereitschaftslast, Fähigkeiten außerhalb des Teams, die Kultur der Gruppen, die den Service unterstützen |
| Information und Technologie | Automatisierung, Werkzeuge, Versionsverwaltung | Wissen für den Support, Dateneigentum, Dokumentation, die andere nutzen |
| Partner und Lieferanten | Dienste Dritter und Open Source schnell nutzen | Wer eine Abhängigkeit unterstützt, was geschieht, wenn ein Lieferant Bedingungen ändert oder ausfällt |
| Wertströme und Prozesse | Kurze Zyklen, sichtbare Boards | Die Teile des Flusses außerhalb des Teams, etwa Freigaben, Sicherheitsprüfungen und die Übergabe an den Betrieb |

### Die Dimensionen zur Diagnose nutzen

Eine praktische Nutzung besteht darin, einen Incident oder eine gescheiterte Änderung zu nehmen und zu fragen, in welcher Dimension die Schwäche lag. Einige Beispiele zeigen die Idee, ohne zu behaupten, sie seien typisch:

- Eine Behebung dauerte Stunden, weil nur eine Person das System verstand: Organisationen und Menschen.
- Ein Alarm wurde ignoriert, weil er nichts Nützliches sagte: Information und Technologie.
- Eine Wiederherstellung stockte, weil die Support-Hotline eines Lieferanten geschlossen war: Partner und Lieferanten.
- Eine Änderung wartete drei Tage auf eine Unterschrift, die keinen Zweck erfüllte: Wertströme und Prozesse.

Die meisten echten Probleme berühren mehr als eine. Der Wert der Übung liegt darin zu bemerken, welche Dimension Sie gewohnheitsmäßig übersehen.

### Grenzen

Die Dimensionen sind ein Rahmen und keine Methode. Sie sagen nicht, wie man eine schwache Dimension behebt, und sie sind breit genug, dass sich fast jedes Problem in mehr als eine einordnen lässt. Der Wikipedia-Artikel zu ITIL beschreibt sie nicht, und dieser Leitfaden hat keine unabhängigen Belege dafür gefunden, wie gut sie in der Praxis funktionieren. Betrachten Sie sie als Anstöße, die einem Team helfen, bessere Fragen zu stellen.

## Bewährte Praktiken

1. **Prüfen Sie jeden Service durch alle vier Dimensionen.** Schreiben Sie für jeden wichtigen Service zwei oder drei Zeilen unter jede Dimension: was existiert und was fehlt. Tun Sie das, wenn Sie einen Service gestalten, und noch einmal jährlich.
2. **Setzen Sie Menschen an die erste Stelle der Liste.** Prüfen Sie, wer in Bereitschaft ist, welche Fähigkeiten nötig sind und ob die Last fair verteilt ist. Ein Service, der von wenigen erschöpften Menschen abhängt, ist gefährdet (siehe Thema 1.2 — Agile Prinzipien zum nachhaltigen Tempo).
3. **Behandeln Sie Information als Teil des Services.** Identifizieren Sie die Information, die Nutzende, Support-Mitarbeitende und andere Teams brauchen, und wer sie verantwortet. Machen Sie sie leicht auffindbar (siehe Thema 3.9 — Wissensmanagement).
4. **Kennen Sie Ihre Technologie und halten Sie sie unterstützbar.** Führen Sie eine Liste der Hauptkomponenten und wer jede unterstützen kann. Stellen Sie ein, was niemand versteht.
5. **Listen Sie Ihre Lieferanten auf und wofür Sie sich auf sie verlassen.** Beziehen Sie Cloud-Anbieter, Softwarehersteller und interne Teams außerhalb Ihres eigenen ein. Halten Sie fest, wen Sie anrufen, wie und was sie zugesagt haben (siehe Thema 3.14 — Lieferantenmanagement).
6. **Beziehen Sie Lieferanten in Ihre Reviews ein.** Laden Sie wichtige Partner zu gemeinsamer Planung oder Incident-Reviews ein. Ein Lieferant, der von Ihren Plänen spät erfährt, kann nicht helfen.
7. **Bilden Sie den Wertstrom und die Übergaben ab.** Zeichnen Sie, wie Arbeit von der Anfrage zum Wert fließt, und markieren Sie, wo sie ein Team oder einen Lieferanten überquert. An Übergaben gehen Information und Zeit am häufigsten verloren (siehe Thema 5.4 — Wertstrommanagement).
8. **Schauen Sie zuerst auf die am wenigsten entwickelte Dimension.** Beginnen Sie bei der Verbesserung eines Services mit der Dimension, die am schwächsten ist, nicht mit der, die das Team am liebsten hat. Zeigen Sie den Beleg hinter Ihrer Wahl.
9. **Prüfen Sie externe Faktoren ein- oder zweimal im Jahr.** Nutzen Sie die PESTLE-Überschriften, um aufzulisten, was sich für jeden Service ändern könnte: Gesetze, Preise, Technologie, öffentliche Haltungen. Notieren Sie, welche Dimension jeder betreffen könnte.
10. **Nutzen Sie die Dimensionen in Incident- und Change-Reviews.** Fügen Sie der Review-Vorlage eine Frage hinzu: Welche Dimension war hier am schwächsten? Mit der Zeit werden Muster sichtbar.
11. **Halten Sie es leicht.** Eine Seite je Service genügt. Wenn der Review länger als eine Stunde dauert, sammeln Sie wahrscheinlich Information, die niemand nutzen wird.
12. **Nutzen Sie die Dimensionen nicht, um Schuld zuzuweisen.** Ziel ist ein vollständiges Bild des Services. Behandeln Sie eine Lücke als Entwurfsproblem, das gemeinsam zu lösen ist, nicht als Versagen eines Teams.

## Fragen zur Diskussion im Team

**Was würden wir für unseren wichtigsten Service unter jede der vier Dimensionen schreiben, und welche ist am dünnsten?**

Teilen Sie das Team in vier Gruppen, eine je Dimension, und geben Sie ihnen zehn Minuten. Vergleichen Sie die Listen. Die dünne überrascht oft: Delivery-Teams stellen häufig fest, dass Partner und Lieferanten wenig enthält, während Betriebsteams dasselbe für Information finden. Die Moderation kann fragen, was die dünne Dimension in den letzten sechs Monaten gekostet hat.

**Von wem hängen wir ab, mit dem wir nie gesprochen haben?**

Listen Sie Lieferanten und interne Teams auf, auf die sich der Service stützt, auch die, die hinter einem Cloud-Produkt verborgen sind. Markieren Sie, zu welchen Sie einen Kontakt haben und zu welchen nicht. Fragen Sie, was geschähe, wenn jeder ausfiele. Das ist ein guter Ort, um Risiken zu finden, die niemand verantwortet. Wählen Sie eine Abhängigkeit, die Sie besser verstehen wollen.

**Welches Wissen existiert nur im Kopf einer Person?**

Bitten Sie die Beteiligten, Aufgaben zu nennen, die nur eine Person erledigen kann, und welche Information dem Service Desk fehlt, um den Service zu unterstützen. Behandeln Sie die Antworten als Risikoliste. Fragen Sie, wie Wissen innerhalb eines Monats geteilt werden könnte, etwa durch Pairing oder eine kurze Anleitung. Halten Sie den ersten Schritt und die verantwortliche Person fest.

**Wo wartet Arbeit außerhalb unseres Teams?**

Verfolgen Sie eine jüngste Anfrage über Teams hinweg und markieren Sie jede Wartezeit. Wartezeiten bei Freigaben, Sicherheitsprüfungen oder Lieferantenwarteschlangen liegen außerhalb der Kontrolle des Teams, aber nicht außerhalb seines Einflusses. Fragen Sie, wer jede Wartezeit ändern könnte und welcher Beleg helfen würde. Wählen Sie eine Wartezeit, die Sie bei der verantwortlichen Person ansprechen.

**Was geschah beim letzten Mal, als sich etwas außerhalb unserer Kontrolle änderte, etwa ein Gesetz, ein Preis oder eine Plattform?**

Fragen Sie nach einem echten Fall. Schauen Sie, wie lange es dauerte, es zu bemerken, wer entschied und welche Dimension den Schlag abbekam. Ziel ist zu lernen, wie das Team nach externer Veränderung Ausschau hält. Fragen Sie, wer für das Beobachten zuständig ist und was er beobachtet.

**Wenn wir in diesem Quartal nur eine Dimension stärken könnten, welche brächte unseren Nutzenden den größten Nutzen?**

Lassen Sie die Beteiligten mit einem jüngsten Beispiel für eine Dimension argumentieren. Vermeiden Sie anfangs Abstimmung; fragen Sie nach Belegen. Vereinbaren Sie dann eine Maßnahme in der gewählten Dimension mit verantwortlicher Person und Maß. Denken Sie daran zu sagen, an welchen Dimensionen Sie nicht arbeiten, damit die Wahl ausdrücklich ist.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Umweltbehörde betreibt ein öffentliches Datenportal, das Luftqualitätsmessungen von Tausenden Sensoren veröffentlicht. Ein Team aus neun Personen baut und betreibt es. Das Team liefert wöchentlich Änderungen aus, und seine Prozesse sehen gesund aus. Doch während einer Hitzewelle wird das Portal quälend langsam, das öffentliche Interesse schnellt hoch, und die Pressestelle der Behörde erfährt von dem Problem aus sozialen Medien.

Die verantwortliche Person für das Portal nutzt die vier Dimensionen, um den Incident auszuwerten. Zu Organisationen und Menschen: Nur zwei Ingenieure kennen die Datenaufnahme-Pipeline, und einer war im Urlaub. Zu Information und Technologie: Das Monitoring zeigte, dass die Datenbank ausgelastet war, aber nicht, welche Messwerte verspätet waren, sodass das Team der Pressestelle nicht sagen konnte, was betroffen war. Zu Partnern und Lieferanten: Die Sensordaten kommen von regionalen Behörden und einem Cloud-Anbieter, und niemand hatte beide gefragt, was bei Spitzenbedarf zu erwarten ist. Zu Wertströmen und Prozessen: Die Pressestelle hat keinen Zugang zum Incident-Prozess, sodass ihr erster Kontakt über einen Journalisten kam.

Das Team nimmt vier Änderungen vor, eine je Dimension: Ein dritter Ingenieur wird an der Pipeline geschult, das Dashboard zeigt die Aktualität der Daten nach Region, die regionalen Behörden und der Cloud-Anbieter werden zu einem kurzen Kapazitätsreview eingeladen, und die Pressestelle wird in die Incident-Benachrichtigungen aufgenommen. Eine spätere Hitzewelle wird ohne öffentliche Beschwerde bewältigt. Einige Probleme bleiben: Eine regionale Behörde sendet weiterhin Daten in einem alten Format, das die Pipeline bricht, und die Pressestelle findet technische Statusmeldungen schwer in verständliche Sprache zu übersetzen. Das Team vereinbart, die regionale Behörde um einen Zeitplan für die Änderung ihres Formats zu bitten und mit der Pressestelle eine kurze Statusvorlage zu schreiben.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams kontrollieren meist Technologie und Prozess, übersehen aber möglicherweise Menschen und Lieferanten. Fragen Sie, wer unterstützen wird, was Sie bauen, welche Fähigkeiten er braucht und auf welche externen Parteien sich Ihr Service stützt. Liefern Sie die Information, die andere brauchen, und laden Sie sie zu Ihren Reviews ein.

### Service- und Betriebsteams

Betriebsteams sehen Schwächen in den Dimensionen oft zuerst, weil sie mit den Folgen leben. Nutzen Sie die Dimensionen, um Probleme so zu beschreiben, dass Delivery-Teams und Führungskräfte handeln können, und um zu begründen, dass Zeit für Wissensaustausch und Lieferantenbeziehungen aufgewendet wird.

### Führung und Governance

Führungskräfte kontrollieren Struktur, Fähigkeiten, Lieferantenverträge und die Prozesse, die Teams überschreiten. Verlangen Sie einen Review wichtiger Services nach den vier Dimensionen und schauen Sie auf die dünne Dimension. Seien Sie bereit, die unscheinbaren Teile zu finanzieren, etwa Schulung und Lieferantenbeziehungen.

### Kunden und Nutzer

Kunden und Nutzende erleben das Ergebnis aller vier Dimensionen, ohne sie zu sehen. Wenn etwas schiefgeht, sagen Sie dem Anbieter, was Sie gesehen und was Sie gebraucht haben. Diese Information hilft ihm, die schwache Dimension zu finden. Fragen Sie Anbieter, wie sie Support, Lieferanten und Information für die Services anordnen, die Sie nutzen.

## Typische Fehlerbilder

- **Die vertraute Dimension beheben.** Ingenieure fügen jedem Problem Technologie hinzu. Fragen Sie stattdessen, auf welche Dimension die Belege hinweisen.
- **Lieferanten vergessen.** Der Service hängt von Parteien ab, die niemand getroffen hat. Listen Sie stattdessen Lieferanten auf und halten Sie Kontakte, Zusagen und Risiken fest.
- **Menschen als gegeben behandeln.** Fähigkeiten und Bereitschaftslast werden vorausgesetzt. Überprüfen Sie sie stattdessen als Teil des Services.
- **Prozesse, die an der Teamgrenze enden.** Übergaben sind ungesteuert. Bilden Sie stattdessen den Strom über Teams hinweg ab und vereinbaren Sie die Übergaben.
- **Information, die niemand finden kann.** Dokumentation existiert, aber Support-Mitarbeitende können sie nicht nutzen. Fragen Sie stattdessen die Nutzenden der Information, was sie brauchen.
- **Überanalyse.** Der Review wird zu einem großen Dokument. Beschränken Sie ihn stattdessen auf eine Seite je Service.
- **Den Rahmen für Schuldzuweisung nutzen.** Teams werden für Lücken beurteilt. Behandeln Sie Lücken stattdessen als gemeinsame Entwurfsprobleme.
- **Externe Veränderung ignorieren.** Gesetze, Preise und Technologie verschieben sich ohne Vorwarnung. Prüfen Sie stattdessen regelmäßig PESTLE-Faktoren und notieren Sie, welche Dimension jeder betrifft.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Organisationen und Menschen | Rollen und Fähigkeiten sind informell | Einige Teams listen Fähigkeiten und Bereitschaftslast auf | Rollen, Fähigkeiten und Arbeitslast sind für jeden Service beschrieben | Fähigkeiten und Last werden gemessen und überprüft | Besetzung und Fähigkeiten werden über Teams und Partner hinweg geplant |
| Information und Technologie | Wissen und Werkzeuge sind verstreut | Einige Teams führen Komponenten- und Wissenslisten | Komponenten und Information haben Verantwortliche und sind auffindbar | Nutzung von Information und Werkzeugen wird verfolgt und Lücken werden behoben | Information und Werkzeuge werden über Teams und Lieferanten hinweg geteilt und verbessert |
| Partner und Lieferanten | Lieferanten werden von Einzelpersonen betreut | Einige wichtige Lieferanten sind mit Kontakten aufgelistet | Alle wichtigen Lieferanten haben Verantwortliche, Kontakte und Erwartungen | Leistung und Risiko der Lieferanten werden überprüft | Lieferanten nehmen an Planung und Verbesserung teil |
| Wertströme und Prozesse | Arbeit fließt aus Gewohnheit | Einige Ströme sind gezeichnet | Wichtige Ströme sind über Teams hinweg abgebildet, mit Verantwortlichen | Fluss und Warten werden gemessen und verringert | Ströme werden gemeinsam mit Kunden und Lieferanten verbessert |

## Checkliste

- [ ] Wir haben für jeden wichtigen Service aufgeschrieben, was in jeder Dimension existiert und was fehlt.
- [ ] Die Menschen und Fähigkeiten, die zum Betrieb jedes Services nötig sind, sind identifiziert, mit überprüfter Bereitschaftslast.
- [ ] Die Information, die Nutzende und Support-Mitarbeitende brauchen, hat Verantwortliche und ist auffindbar.
- [ ] Die Hauptkomponenten des Services sind aufgelistet, und für jede gibt es jemanden, der sie unterstützen kann.
- [ ] Wichtige Lieferanten und interne Anbieter sind mit Kontakten und Erwartungen aufgelistet.
- [ ] Der Arbeitsfluss für einen Service wurde über Teams hinweg abgebildet.
- [ ] Wir haben externe Faktoren (PESTLE) im letzten Jahr mindestens einmal geprüft.
- [ ] Incident- und Change-Reviews fragen, welche Dimension am schwächsten war.
- [ ] Der Review für jeden Service passt auf eine Seite.
- [ ] Wir haben eine schwache Dimension gewählt, die wir in diesem Quartal stärken.

## KI-Prompts

**Zweck: einen Review eines Services nach den vier Dimensionen entwerfen.**

```text
Help me draft a four-dimension review of the service [name]. The dimensions are: organizations and people; information and technology; partners and suppliers; value streams and processes.

About the service: [describe what it does and who uses it].
For each dimension, what I know: [write a few lines each; write "unknown" where you do not know].

For each dimension, say what exists, what appears to be missing, and one question I should ask the team, using only my text. Highlight the thinnest dimension and say why. Do not invent suppliers, people, or tools. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: die schwächste Dimension in jüngsten Incidents klassifizieren.**

```text
Here are short, factual descriptions of [number] recent incidents or failed changes: [paste, one per item].

For each, say which of the four ITIL dimensions (organizations and people; information and technology; partners and suppliers; value streams and processes) the weakness most likely lay in, with one sentence of reasoning drawn only from the text. Where more than one applies, say so. Then count how many fall under each dimension, from my list only, and suggest two questions about the pattern. Do not invent causes, and list what you are unsure of.
```

**Zweck: Lieferanten und Abhängigkeiten eines Services auflisten.**

```text
Help me build a dependency and supplier list for [service].

What I know about how it is built and run: [describe components, cloud services, data sources, other teams].
Contracts or support arrangements I know about: [list, or write "unknown"].

Produce a table with columns: dependency, who provides it, what we rely on it for, what happens if it fails (from my text only), and the question I should ask the supplier. Mark anything you inferred. Do not invent contracts or service levels. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: externe Faktoren für einen Service prüfen.**

```text
Help me prepare a scan of external factors using the PESTLE headings (political, economic, social, technological, legal, environmental) for the service [name].

Context: [describe the sector, countries served, and users].
Known upcoming changes: [list laws, price changes, technology shifts you actually know about, or write "none known"].

For each heading, propose questions we should research (not answers), and note which of the four ITIL dimensions each factor could affect. Do not state that any law or regulation exists or applies unless I have listed it. Mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): nutzen Sie ihn, um die Partner, Lieferanten und Gruppen abzubilden, die von einem Service abhängen oder zu ihm beitragen.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, um zu planen, wie Sie Lieferanten auswählen, steuern und überprüfen.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): nutzen Sie ihn, um den Arbeitsfluss über Teams hinweg für die Dimension Wertströme und Prozesse abzubilden.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md): nutzen Sie ihn neben der Prüfung externer Faktoren, um Stärken, Schwächen, Chancen und Risiken zusammenzufassen.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): nutzen Sie ihn, um Fähigkeitslücken in der Dimension Organisationen und Menschen zu finden.

## Wichtige Quellen

- **ITIL 4 Foundation** (PeopleCert): die Seite des Eigners, die die vier Dimensionen unter den studierten Themen nennt.
- **The ITIL Four Dimensions of Service Management** (itsm.tools): die Zusammenfassung einer Praktiker-Website zu jeder Dimension und zu PESTLE; sekundär.
- **PESTLE analysis** (Wikipedia): Hintergrund zum Werkzeug für externe Faktoren.
- **ITIL** (Wikipedia): Kontext zu ITIL 4 und seinem Platz in der Geschichte des Frameworks.

## Referenzen

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
