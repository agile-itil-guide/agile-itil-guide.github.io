# Das Agile Manifest

**Das Manifest für Agile Softwareentwicklung besteht aus vier kurzen Wertaussagen, die einem Team sagen, was es bevorzugen soll, wenn zwei gute Dinge in unterschiedliche Richtungen ziehen, und diese Entscheidungen sind für den Betrieb eines laufenden Services ebenso wichtig wie für dessen Aufbau.**

## Warum das wichtig ist

Das Agile Manifest ist die Wurzel von fast allem anderen in diesem Leitfaden. Scrum, Kanban, Extreme Programming und DevOps sind allesamt Wege, die darin formulierten Werte in Handeln umzusetzen. Wer nur die Praktiken kennt, kopiert die Rituale und übersieht die Begründung, und wenn ein Ritual nicht mehr funktioniert, bleibt nichts, woran man sich orientieren kann.

Für das IT-Service-Management (ITSM) ist es aus einem praktischen Grund wichtig. Die meisten Teams, die heute Services betreiben, bauen sie auch, und die beiden Aufgaben ziehen in verschiedene Richtungen. Der Aufbau belohnt Veränderung und Tempo. Der Betrieb belohnt Stabilität und Vorhersagbarkeit. Das Manifest beseitigt diese Spannung nicht, gibt einem Team aber eine gemeinsame Sprache dafür: Welchen Wert bevorzugen wir hier, und was zahlen wir dafür?

Es hilft auch zu wissen, was das Manifest nicht ist. Es ist kein Prozess, keine Zertifizierung und kein Versprechen, dass Projekte gelingen, wenn man ihm folgt. Der [Wikipedia-Artikel zur agilen Softwareentwicklung](https://en.wikipedia.org/wiki/Agile_software_development) weist darauf hin, dass die Belege für den Nutzen agiler Methoden begrenzt und nicht eindeutig sind. Betrachten Sie das Manifest als eine Sammlung gut begründeter Hypothesen, die Sie in Ihrem eigenen Kontext prüfen, und nicht als heilige Schrift.

## Kernkonzepte

### Woher es kommt

Siebzehn Praktiker trafen sich vom 11. bis 13. Februar 2001 im Skigebiet Snowbird in den Wasatch-Bergen in Utah und verfassten das Manifest gemeinsam. Laut dem [Bericht auf agilemanifesto.org](https://agilemanifesto.org/history.html) kamen sie aus Methoden wie Extreme Programming, Scrum und Crystal und wollten eine Alternative zu schwergewichtigen, dokumentationsgetriebenen Prozessen. Das Etikett "Light" war im Gespräch, Alistair Cockburn widersprach, und die Gruppe nannte sich schließlich Agile Alliance.

Die Unterzeichner waren Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland und Dave Thomas. Mehrere von ihnen hatten die mitgebrachten Methoden bereits selbst geschaffen: Beck und Cunningham arbeiteten an [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), Schwaber und Sutherland an [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Das Manifest war eine Reaktion auf eine Arbeitsweise, bei der ein Team ein ganzes Projekt im Voraus plant, in langen Phasen baut und erst spät erfährt, ob das Ergebnis gewünscht ist. Dieser Stil wird oft als [Wasserfallmodell](https://en.wikipedia.org/wiki/Waterfall_model) bezeichnet. Die Autoren haben iteratives Arbeiten nicht erfunden (der Wikipedia-Artikel führt iterative und inkrementelle Methoden bis 1957 zurück), aber sie gaben ihm einen gemeinsamen Namen und eine kurze Wertaussage.

### Die vier Werte

Das Manifest formuliert seine Werte im Wortlaut wie folgt. Sein Urheberrechtshinweis erlaubt es, in jeder Form frei kopiert zu werden, aber nur vollständig, daher wird es hier ganz zitiert (in deutscher Übersetzung des englischen Originals):

> Wir erschließen bessere Wege, Software zu entwickeln, indem wir es selbst tun und anderen dabei helfen. Durch diese Arbeit haben wir diese Werte zu schätzen gelernt:
>
> **Individuen und Interaktionen** mehr als Prozesse und Werkzeuge
> **Funktionierende Software** mehr als umfassende Dokumentation
> **Zusammenarbeit mit dem Kunden** mehr als Vertragsverhandlung
> **Reagieren auf Veränderung** mehr als das Befolgen eines Plans
>
> Das heißt, obwohl wir die Dinge auf der rechten Seite wichtig finden, schätzen wir die Dinge auf der linken Seite höher ein.

Drei Details der Formulierung werden leicht übersehen und verändern die Bedeutung:

- **"Mehr als" heißt nicht "anstelle von".** Der letzte Satz sagt, dass die Dinge auf der rechten Seite weiterhin einen Wert haben. Ein Team, das jede Dokumentation oder jede Planung aufgibt, hat das Manifest missverstanden.
- **Es ist eine Präferenz für den Fall, dass man wählen muss.** Die Werte sagen nicht, was Sie jeden Tag tun sollen. Sie sagen, in welche Richtung Sie sich neigen, wenn ein Prozess, ein Dokument, ein Vertrag oder ein Plan einem besseren Ergebnis im Weg steht.
- **"Indem wir es selbst tun."** Der Eröffnungssatz sagt, dass die Autoren diese Werte durch Praxis gefunden haben. Die Aussage ist empirisch, und deshalb sind Sie eingeladen, sie an Ihrer eigenen Erfahrung zu prüfen.

### Die Werte für die Servicearbeit lesen

Die Werte wurden über Softwareentwicklung geschrieben. Hier steht, was jeder einzelne für ein Team bedeuten kann, das auch Services betreibt.

| Wert | Wovor er schützt | Was er in der Servicearbeit bedeuten kann |
|---|---|---|
| Individuen und Interaktionen mehr als Prozesse und Werkzeuge | Ein Prozess, der auf dem Papier funktioniert, dem aber unter Druck niemand folgen kann | Bei einem schweren Incident sprechen die Menschen, die das System kennen, direkt miteinander. Der Incident-Prozess unterstützt dieses Gespräch und ersetzt es nicht. |
| Funktionierende Software mehr als umfassende Dokumentation | Dokumente, die ein System beschreiben, das es nicht mehr gibt | Ein Runbook, das der Bereitschaftsingenieur, der es nutzt, getestet hat, ist mehr wert als ein langes Handbuch, das niemand geöffnet hat. |
| Zusammenarbeit mit dem Kunden mehr als Vertragsverhandlung | Streit über ein Service-Level-Agreement (SLA), während der eigentliche Bedarf des Kunden unerfüllt bleibt | Überprüfen Sie Service-Level regelmäßig mit Kunden und ändern Sie sie, wenn sich deren Bedarf ändert. |
| Reagieren auf Veränderung mehr als das Befolgen eines Plans | Einen Plan einfrieren, nachdem sich die Lage weiterentwickelt hat | Ein Change-Prozess, der eine kleine Änderung mit geringem Risiko in Minuten genehmigen kann, lässt dem Team Raum zu reagieren. Ein Prozess, der jede Änderung gleich behandelt, kann das nicht. |

### Die zwölf Prinzipien

Das Manifest wird von zwölf Prinzipien begleitet, die die Werte ausbuchstabieren. Sie sind Gegenstand des nächsten Themas (siehe Thema 1.2 — Agile Prinzipien). Zusammen werden Werte und Prinzipien manchmal als agile Haltung bezeichnet.

### Kritik, die man kennen sollte

Kritiker haben eingewandt, das Manifest untergrabe die Disziplin des Software Engineering. Der Wikipedia-Artikel zitiert Stephen Rakitin, der in einem Brief an *IEEE Computer* agile Methoden als "einen weiteren Versuch, die Disziplin des Software Engineering zu untergraben" bezeichnete und "funktionierende Software mehr als umfassende Dokumentation" als Erlaubnis las, auf Dokumentation zu verzichten. Verteidiger entgegnen, Dokumentation solle "gerade gut genug" sein, eine Formulierung von Scott Ambler, und zu wenig Dokumentation schade der Wartung und dem Wissensaustausch.

Für ein Serviceteam hat die Kritik Gewicht. Betriebsmitarbeitende erben, was Delivery-Teams zurücklassen, und dünne Dokumentation zeigt sich in langsamer Incident-Bearbeitung und langen Übergaben. Eine faire Lesart des Manifests lautet: Dokumentation muss sich ihren Platz verdienen, nicht: Es gibt keine.

## Bewährte Praktiken

1. **Behandeln Sie die Werte als Entscheidungshilfe, nicht als Regelwerk.** Wenn ein Team uneins ist, fragen Sie, welcher Wert in Spannung steht und in welche Richtung das Team sich neigen soll. So wird aus einem Streit über Vorlieben ein Gespräch über Abwägungen.
2. **Lesen Sie den Satz, der auf die Werte folgt.** Erinnern Sie das Team oft daran, dass die Dinge auf der rechten Seite weiterhin einen Wert haben. Halten Sie schriftlich fest, welche Prozesse, Dokumente, Verträge und Pläne Sie behalten und warum.
3. **Prüfen Sie jeden Wert an einem jüngsten Ereignis.** Wählen Sie einen echten Incident oder ein Release und fragen Sie, wie die Arbeit verlaufen wäre, wenn das Team sich anders geneigt hätte. Belege aus der eigenen Arbeit überzeugen besser als ein Zitat.
4. **Behalten Sie Dokumentation und halten Sie sie lebendig.** Bevorzugen Sie kurze Dokumente, die genutzt, getestet und verantwortet werden, etwa Runbooks und Servicebeschreibungen, gegenüber langen Dokumenten, die einmal geschrieben werden. Löschen Sie, was niemand liest.
5. **Machen Sie die Zusammenarbeit mit Kunden zur Routine.** Führen Sie regelmäßige Gespräche mit den Menschen, die Ihre Services nutzen, und tragen Sie Erkenntnisse in den Backlog ein. Warten Sie nicht auf eine Vertragsüberprüfung.
6. **Machen Sie Pläne, die mit Veränderung rechnen.** Planen Sie mit kurzen Horizonten und ausdrücklichen Überprüfungspunkten. Behalten Sie eine längerfristige Richtung bei und akzeptieren Sie, dass sich die Schritte dorthin verschieben.
7. **Geben Sie Prozessen Verantwortliche und lassen Sie sie sich weiterentwickeln.** Jeder Prozess in Ihrem Service-Management-System sollte einen benannten Verantwortlichen haben und einen Weg, auf dem die Nutzenden Änderungen vorschlagen können. Ein Prozess, den niemand ändern darf, wird umgangen.
8. **Nutzen Sie die Werte bei Einstellung und Einarbeitung.** Beschreiben Sie sie neuen Mitarbeitenden mit Beispielen aus Ihrem eigenen Team, damit sie sehen, wie sich die Werte in alltäglichen Entscheidungen zeigen.
9. **Prüfen Sie die Werte erneut, nachdem Sie gewachsen sind.** Größere Organisationen driften zu Prozessen und Werkzeugen. Führen Sie in regelmäßigen Abständen, etwa zweimal im Jahr, ein Gespräch darüber, ob das Gleichgewicht den Kunden noch dient.
10. **Benutzen Sie das Manifest nicht als Waffe.** Wer "Individuen mehr als Prozesse" zitiert, um die Bedenken eines Kollegen zu Audit oder Sicherheit abzutun, beendet ein Gespräch, das erst hätte beginnen sollen. Nutzen Sie es, um die Diskussion zu eröffnen, nicht um sie zu gewinnen.

## Fragen zur Diskussion im Team

**Welchen der vier Werte bevorzugt unser Team in der Praxis bereits, und welchen behaupten wir nur zu bevorzugen?**

Beginnen Sie mit einer Liste jüngster Entscheidungen: ein Release, das wegen Papierkram verzögert wurde, eine Anfrage, die abgelehnt wurde, weil sie nicht im Vertrag stand, ein Plan, an dem festgehalten wurde, nachdem er sinnlos geworden war. Ordnen Sie jede einem Wert zu. Teams entdecken oft eine Lücke zwischen dem, was sie sagen, und dem, was sie tun, und die Lücke ist der nützliche Befund. Die Moderation sollte Schuldzuweisungen vermeiden und fragen, welcher Druck zu jeder Entscheidung geführt hat. Fragen Sie anschließend, welchen dieser Drücke das Team ändern kann.

**Wo helfen unsere Prozesse und Werkzeuge den Menschen, miteinander zu sprechen, und wo stehen sie im Weg?**

Bitten Sie die Beteiligten, einen Prozess zu nennen, der ihnen Aufwand spart, und einen, der Aufwand kostet. Der aufwendige ist oft ein guter Prozess, der starr angewendet wird, etwa ein Ticket-Workflow, der vier Freigaben für eine triviale Änderung verlangt. Suchen Sie nach Stellen, an denen Menschen das Werkzeug meiden und stattdessen Chat oder Flurgespräche nutzen, denn das deutet meist auf eine Fehlanpassung hin. Schließen Sie mit einem Prozess, der in diesem Monat vereinfacht wird.

**Welche Dokumentation würden wir ungern verlieren, und was könnten wir morgen löschen?**

Diese Frage prüft den Wert "Funktionierende Software mehr als umfassende Dokumentation", ohne ihn ins Extrem zu treiben. Fragen Sie, welche Dokumente im letzten Monat genutzt wurden. Runbooks, Architekturdiagramme und kundenorientierte Servicebeschreibungen kommen oft zur Sprache. Dokumente, die niemand erwähnt, sind Kandidaten zum Löschen oder Zusammenführen. Erinnern Sie das Team daran, dass Löschen eine Entscheidung ist, und bestimmen Sie dafür eine verantwortliche Person.

**Wie beteiligen sich unsere Kunden an der Gestaltung unserer Services, und woher wissen wir, dass es genug ist?**

Sammeln Sie Beispiele, in denen Kundeneingaben eine Entscheidung verändert haben. Ist die Liste kurz, fragen Sie, warum. Die Ursachen sind meist strukturell: ein Account Manager dazwischen, ein SLA-Review einmal im Jahr oder ein Service Desk, der Beschwerden erfasst, aber nicht weitergibt. Fragen Sie Kunden, wenn möglich, direkt, was sie ändern würden. Der Hinweis für die Moderation lautet, einen konkreten Weg zu suchen, den Pfad zwischen Kunde und Team zu verkürzen.

**Was bräuchte es, damit wir eine kleine Änderung mit geringem Risiko innerhalb einer Stunde genehmigen könnten, und sollten wir das?**

Diese Frage verbindet den vierten Wert mit der Änderungssteuerung (siehe Thema 3.4 — Change Enablement). Fragen Sie, was kleine Änderungen derzeit verlangsamt: eine wöchentliche Sitzung, ein manuelles Risikoformular, ein fehlender Test. Fragen Sie, welche Nachweise das Team beruhigen würden, etwa automatisierte Tests oder ein schneller Rollback. Drängen Sie nicht auf ein "Ja". Ziel ist herauszufinden, was das Team seiner Überzeugung nach bräuchte, und das ist der Anfang eines Plans.

**Wenn eine Aufsichtsbehörde, ein Prüfer oder ein Großkunde das Manifest läse, worüber würden sie sich Sorgen machen, und haben sie recht?**

Manche Sorgen sind berechtigt. Prüfer wollen Nachweise, und Kunden wollen Zusagen. Laden Sie das Team ein, diese Bedenken ernst zu nehmen und zu fragen, welche schlanken Nachweise und Zusagen sie zufriedenstellen würden. Teams, die zeigen können, wie agile Arbeit einen Prüfpfad erzeugt, gewinnen meist mehr Freiheit, nicht weniger. Halten Sie die Bedenken für die Governance-Diskussion in Thema 5.7 — Governance, Risiko und Compliance fest.

## In der Praxis: ein agiles ITIL-Beispiel

Ein mittelgroßer Online-Händler hat ein Plattformteam aus acht Personen, das seinen Checkout-Service baut und betreibt. Das Team ist kürzlich von vierteljährlichen auf wöchentliche Releases umgestiegen und hat nun ein Problem: Der Service Desk beklagt, dass Änderungen ohne Vorwarnung eintreffen, und das Plattformteam beklagt, dass die Sitzung zur Änderungsfreigabe eine Woche braucht, um Änderungen zu genehmigen, die am Montag fertig sind.

Die Teamleitung hält eine einstündige Sitzung ab und nutzt die vier Werte als Rahmen. Die Beteiligten tragen jüngste Ereignisse an einer Wand zusammen. Eine Korrektur für einen Rabattcode wartete neun Tage auf die Genehmigung. Eine Datenbankänderung wurde schnell genehmigt und verursachte einen Ausfall. Ein Runbook für Zahlungsfehler beschrieb, wie sich herausstellte, ein System, das im Jahr zuvor stillgelegt worden war. Die Gruppe ordnet jedes Ereignis einem Wert zu. Die meisten Verzögerungsfälle fallen unter "Prozesse und Werkzeuge mehr als Individuen und Interaktionen", das heißt, der Prozess wurde um seiner selbst willen betrieben. Der Ausfall fällt unter "Reagieren auf Veränderung mehr als das Befolgen eines Plans", denn die Sitzung zur Freigabe behandelte jede Änderung gleich und schaute nicht genauer auf die riskante.

Sie einigen sich auf drei Änderungen. Erstens werden Änderungen, die zu einer kurzen Liste risikoarmer Muster passen und bestandene automatisierte Tests sowie einen getesteten Rollback haben, vorab genehmigt und automatisch erfasst. Zweitens werden riskante Änderungen innerhalb eines Tages von einer Kollegin oder einem Kollegen und einer Vertretung des Betriebs geprüft. Drittens erhält jedes Runbook eine benannte verantwortliche Person und wird bei jeder Nutzung während eines Incidents geprüft.

Zwei Monate später bespricht die Teamleitung das Ergebnis mit dem Service Desk. Vorab genehmigte Änderungen fließen schnell, und der Service Desk sieht nun jede Änderung in einem gemeinsamen Feed. Ein Problem bleibt: Zwei der vorab genehmigten Muster waren zu weit gefasst, und es folgte ein kleinerer Incident. Das Team schränkt die Muster ein und behält den Ansatz bei. Es erkennt außerdem, dass der gemeinsame Feed das Gespräch nicht ersetzt, und so nimmt die Leitung des Service Desk an der wöchentlichen Planung des Plattformteams teil.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Für Delivery-Teams ist das Manifest eine Erinnerung daran, dass funktionierende Software auch funktionierenden Betrieb einschließt. Ein Feature, das nicht überwacht, unterstützt oder zurückgerollt werden kann, ist nicht fertig. Nutzen Sie die Werte, um für die betriebliche Arbeit einzutreten, die Releases sicher macht, und laden Sie Betriebsmitarbeitende früh in die Planung ein.

### Service- und Betriebsteams

Betriebsmitarbeitende haben oft das Gefühl, das Manifest spreche für Entwickler. Lesen Sie es anders: Die Werte bevorzugen Menschen im Gespräch, getestete Artefakte und schnelle Reaktionen auf Veränderung, was alles zu gutem Betrieb passt. Bringen Sie ITIL-Praktiken als gesammelte Erfahrung darüber ein, was schiefgeht, und schlagen Sie schlankere Fassungen vor, die den Zweck erhalten.

### Führung und Governance

Führungskräfte setzen die Bedingungen, unter denen die Werte wirken können. Wenn jedes Release fünf Unterschriften braucht, kann ein Team Reagieren auf Veränderung nicht bevorzugen, so viele Poster auch an der Wand hängen. Fragen Sie Ihre Teams, wo Ihre eigenen Regeln sie ausbremsen, und seien Sie bereit, eine Regel zu ändern, wenn sich der Zweck auf andere Weise erreichen lässt.

### Kunden und Nutzer

Kunden werden in zwei der vier Werte genannt. Für sie verspricht das Manifest Zusammenarbeit, nicht nur Lieferung. Rechnen Sie damit, gefragt zu werden, was Sie brauchen, häufig funktionierende Änderungen zu sehen und Ihre Meinung ändern zu können. Im Gegenzug braucht ein Team von Ihnen rechtzeitiges Feedback und Entscheidungen.

## Typische Fehlerbilder

- **"Mehr als" als "anstelle von" verwenden.** Teams geben Dokumentation, Planung oder Verträge ganz auf und leiden dann. Entscheiden Sie stattdessen, was jedes davon leisten muss, und behalten Sie die leichteste Form, die das erreicht.
- **Die Werte als Freibrief verstehen, auf Disziplin zu verzichten.** "Wir sind agil" wird zur Ausrede für keine Tests, keine Aufzeichnungen und keine Übergabe. Verbinden Sie stattdessen jeden Wert mit einer konkreten Praxis und prüfen Sie, ob die Praxis stattfindet.
- **Das Manifest aufsagen, ohne es zu prüfen.** Slogans ersetzen das Denken. Gleichen Sie stattdessen in regelmäßigen Abständen tatsächliche Ereignisse mit den Werten ab.
- **Es gegen Kollegen einsetzen.** Einen Wert zu zitieren, um ein Anliegen von Audit, Sicherheit oder Betrieb abzutun, beschädigt das Vertrauen. Fragen Sie stattdessen, was das Anliegen schützt und wie sich ihm leichtgewichtig begegnen lässt.
- **Praktiken ohne die Werte übernehmen.** Tägliche Meetings und Boards tauchen auf, aber Entscheidungen warten weiter auf Freigabeketten. Fragen Sie stattdessen, welche Entscheidungen näher zu den Menschen rücken sollten, die die Arbeit tun.
- **Annehmen, das Manifest beantworte betriebliche Fragen.** Es wurde 2001 über Softwareentwicklung geschrieben und sagt wenig über den Betrieb von Services. Kombinieren Sie es stattdessen mit Service-Management-Praktiken und passen Sie beides an.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Gemeinsames Verständnis der Werte | Wenige Personen haben das Manifest gelesen | Einige Teams diskutieren es, mit unterschiedlichen Lesarten | Teams teilen eine kurze, schriftliche Lesart der Werte für ihren Kontext | Teams gleichen jüngste Entscheidungen in regelmäßigen Reviews mit den Werten ab | Teams, Lieferanten und Kunden nutzen eine gemeinsame Sprache für Abwägungen |
| Gleichgewicht von Prozess und Mensch | Prozesse werden befolgt oder ignoriert, je nach Person | Einzelne Teams vereinfachen manche Prozesse | Jeder Prozess hat eine verantwortliche Person und einen Weg für Änderungswünsche | Prozessreibung wird gemessen, etwa die Wartezeit je Änderung | Prozesse werden teamübergreifend anhand gemeinsamer Belege angepasst |
| Zusammenarbeit mit dem Kunden | Feedback kommt als Beschwerde | Einige Teams treffen Kunden regelmäßig | Jeder Service hat einen definierten Weg, Kundeneingaben zu sammeln | Kundeneingaben werden verfolgt und mit vorgenommenen Änderungen verknüpft | Kunden helfen, Prioritäten über Services hinweg zu setzen |
| Dokumentation und Pläne | Dokumente sind selten oder veraltet | Teams behalten die Dokumente, die sie nützlich finden | Erforderliche Dokumente sind wenige, verantwortet und überprüft | Die Nutzung von Dokumenten wird beobachtet und ungenutzte werden entfernt | Dokumentation wird als Teil der Lieferung erzeugt oder verifiziert |

## Checkliste

- [ ] Jedes Teammitglied hat das Manifest und seine zwölf Prinzipien einmal gelesen.
- [ ] Das Team kann jeden Wert mit eigenen Worten und einem Beispiel aus der eigenen Arbeit wiedergeben.
- [ ] Wir haben aufgelistet, welche Prozesse, Dokumente, Verträge und Pläne wir behalten und warum.
- [ ] Jeder genutzte Prozess hat eine benannte verantwortliche Person und einen Weg, Änderungen vorzuschlagen.
- [ ] Runbooks und Servicebeschreibungen haben Verantwortliche und ein Überprüfungsdatum.
- [ ] Wir führen ein regelmäßiges Gespräch mit den Kunden mindestens eines Services.
- [ ] Wir haben mindestens einen jüngsten Incident oder ein Release an den vier Werten gespiegelt.
- [ ] Von der Führung gesetzte Regeln, die das Team ausbremsen, sind aufgelistet und besprochen worden.
- [ ] Wir haben aufgeschrieben, wie wir Prüfern und Aufsichtsbehörden zeigen, was wir tun.

## KI-Prompts

**Zweck: die vier Werte in eine kurze Lesart für Ihr eigenes Team übersetzen.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Zweck: ein jüngstes Ereignis an den Werten spiegeln.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Zweck: sich auf die Bedenken eines Prüfers zu agilen Arbeitsweisen vorbereiten.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Zweck: eine einstündige Teamsitzung zum Manifest entwerfen.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## KI-Skills

- [agile-principles](../../../../skills/agile-principles/SKILL.md): nutzen Sie ihn, um eine Teampraxis oder eine Prozessentscheidung an den Prinzipien des Manifests zu prüfen.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): nutzen Sie ihn, um eine Retrospektive durchzuführen, die jüngste Ereignisse an den Werten spiegelt und zu einer echten Veränderung führt.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): nutzen Sie ihn beim Start eines neuen Teams oder Projekts, wenn Sie von Anfang an eine gemeinsame Lesart der Werte wollen.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): nutzen Sie ihn, wenn Sie ein Team dabei begleiten, vom Kopieren von Ritualen zum Verstehen ihrer Gründe zu kommen.

## Wichtige Quellen

- **Manifesto for Agile Software Development** (agilemanifesto.org): der Primärtext. Lesen Sie ihn vollständig; es dauert zwei Minuten.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): die zwölf Prinzipien, die nützlichste Ergänzung zu den Werten.
- **History: The Agile Manifesto** (agilemanifesto.org): der kurze eigene Bericht der Autoren über das Treffen in Snowbird.
- **Agile software development** (Wikipedia): ein breiter Überblick mit Geschichte, Methoden, Praktiken und Kritik, nützlich als Landkarte für weitere Lektüre.

## Referenzen

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
