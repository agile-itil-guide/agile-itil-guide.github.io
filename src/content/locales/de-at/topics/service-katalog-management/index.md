# Service-Katalog-Management

**Ein Service-Katalog (ITIL schreibt "service catalogue") ist eine kuratierte Liste dessen, was eine Organisation anbietet, mit einer verantwortlichen Person und einer einfachen Beschreibung für jeden Service, und sein Wert hängt davon ab, ob Nutzende ihn nützlich finden und die Verantwortlichen ihn wahr halten.**

## Warum das wichtig ist

Fragen Sie eine nutzende Person, was die IT anbietet, und Sie erhalten oft eine vage Antwort. Fragen Sie das IT-Team, und Sie erhalten eine Liste von Systemen. Die beiden Listen stimmen selten überein, und die Lücke verursacht Missverständnisse: Nutzende fragen nach Dingen, die es nicht gibt, Teams unterstützen Services, die niemand nutzt, und niemand kann sagen, wer wofür verantwortlich ist. Ein Service-Katalog schließt diese Lücke, indem er an einer Stelle und in einfachen Begriffen festhält, was angeboten wird und wer dahintersteht.

Für agile Teams ist der Katalog auch ein Weg, Verantwortung sichtbar zu machen. Ein Team, das einen Service baut und betreibt, sollte sagen können: "Das bieten wir an, das ist die Ansprechperson, das können Sie erwarten." Ohne das treffen Anfragen an der falschen Stelle ein, Incidents springen zwischen Teams, und neue Mitarbeitende finden keine Hilfe.

Der [Wikipedia-Artikel zu Service-Katalogen](https://en.wikipedia.org/wiki/Service_catalog) beschreibt einen Service-Katalog als organisierte und kuratierte Sammlung von Geschäfts- und Informationstechnologie-Services innerhalb eines Unternehmens, die als Wissensmanagement-Werkzeug dient und für jeden aufgelisteten Service Fachleute benennt. Er merkt an, dass der Band Service Design von ITIL einen IT-Service-Katalog als erschöpfende Liste ausschließlich von IT-Services definiert, die den einzigen Teil des Service-Portfolios darstellt, der Kunden veröffentlicht wird, ohne die ITIL-Ausgabe zu nennen. Dieses Thema baut auf dieser Beschreibung und den anderen Themen des Leitfadens auf und hält den Katalog praktisch und leicht.

## Kernkonzepte

### Was in einem Katalog steht

Laut Wikipedia enthält jeder Eintrag in einem Service-Katalog typischerweise eine benannte verantwortliche Person, eine Beschreibung, eine Kategorie, verwandte Anfragearten, zugrunde liegende Services, Berechtigungen, Kosten, wie der Service angefragt und erfüllt wird, und Eskalationskontakte. Übliche Kategorien sind IT, Betrieb und Erfüllung. Sie brauchen nicht alle davon für jeden Service. Ein guter Katalog beginnt mit den wenigen, die Nutzende und Support-Mitarbeitende tatsächlich brauchen.

| Feld | Warum es hilft | Wer es nutzt |
|---|---|---|
| **Name und Beschreibung in einfachen Worten** | Nutzende erkennen, was angeboten wird | Nutzende, Service Desk |
| **Verantwortliche Person** | Jemand steht für den Service ein | Alle |
| **Wer ihn nutzen darf (Berechtigung)** | Vermeidet verschwendete Anfragen | Nutzende, Service Desk |
| **Wie man anfragt oder Hilfe erhält** | Führt Nutzende an die richtige Stelle | Nutzende, Service Desk |
| **Wovon er abhängt (zugrunde liegende Services)** | Zeigt, was sonst funktionieren muss | Betrieb, Delivery-Teams |
| **Kosten, falls berechnet** | Unterstützt Entscheidungen und Budgets | Kunden, Finanzen |
| **Service-Level oder Erwartung** | Setzt Erwartungen | Nutzende, Kunden (siehe Thema 3.7 — Service-Level-Management) |
| **Eskalationskontakt** | Beschleunigt Hilfe bei Problemen | Service Desk, Betrieb |

### Katalog und Portfolio

Der Wikipedia-Artikel ordnet den IT-Service-Katalog als Teilmenge des weiteren Unternehmenskatalogs ein. Im ITIL-Vokabular ist das Service-Portfolio die vollständige Menge der Services, einschließlich derer in Entwicklung und derer, die eingestellt werden, und der Katalog der Teil, der Kunden veröffentlicht wird. Die hier gelesenen Quellen definieren das Portfolio nicht im Einzelnen: Der Artikel zum Service Portfolio Management leitet zum IT Portfolio Management weiter, das nur sagt, ITIL v3 verlange eine Praktik des Service Portfolio Managements, die funktional dem IT Portfolio Management zu entsprechen scheint. Behandeln Sie die Portfolio-Idee so: Der Katalog ist das, was Sie jetzt anbieten, und das Portfolio ist zudem das, was Sie bauen und einstellen (siehe Thema 5.7 — Governance, Risiko und Compliance für Portfolioentscheidungen).

### Unternehmens- und IT-Kataloge

Ein Unternehmens-Service-Katalog deckt Services mehrerer Funktionen ab, etwa Personalwesen, Gebäudemanagement und IT. Ein IT-Service-Katalog ist eine Teilmenge. Der Artikel nennt als Vorteile eines Katalogs: Services über verteilte Unternehmen hinweg zu bündeln, Lücken und Redundanzen bei Services zu erkennen, die Ressourcenzuteilung zu verfolgen und Nachfrage, Angebot, Genehmigungszeiten, Lieferzeiten und Finanzen von Services zu messen. Für Cloud-Services nennt er Selbstbereitstellung und standardisierte Definitionen, die Kapazitätsplanung und Einkaufsprognosen unterstützen. Das sind Behauptungen des Artikels, gestützt auf seine zitierten Quellen.

### Geschäftssicht und technische Sicht

Viele Organisationen unterscheiden, was Kunden sehen, von dem, was der Anbieter intern braucht. Die hier gelesenen Quellen machen diese Unterscheidung nicht, behandeln Sie sie also als gängige Praxis. Die **kundenorientierte Sicht** listet Services in den Begriffen der Nutzenden auf ("E-Mail und Kalender"). Die **technische Sicht** listet Komponenten und die Teams dahinter ("Mailserver, Spamfilter, Verzeichnisdienst"). Die Kundensicht hilft Nutzenden bei der Auswahl. Die technische Sicht hilft dem Betrieb, Abhängigkeiten zu verstehen (siehe Thema 4.4 — Konfigurationsmanagement). Halten Sie beide verknüpft, aber getrennt, damit Nutzende nicht mit Komponentennamen konfrontiert werden.

### Der Katalog als Wissenswerkzeug

Der Wikipedia-Artikel betont, dass der Katalog für jeden Service Fachleute benennt. Das macht ihn zu einer Landkarte dessen, wer was weiß. Ein aktuell gehaltener Katalog hilft dem Service Desk, Kontakte weiterzuleiten, hilft neuen Mitarbeitenden, Hilfe zu finden, und hilft Incident-Einsatzkräften, die richtige Person zu erreichen (siehe Thema 3.9 — Wissensmanagement).

### Katalog und Anfragen

Der Katalog enthält meist die Anfragen, die Nutzende zu jedem Service stellen können, etwa "Zugang anfragen" oder "einen Fehler melden". Ein Anfragemodell beschreibt, wie jede erfüllt wird (siehe Thema 3.6 — Service-Request-Management). Nicht jeder Service braucht Anfragen, und nicht jede Anfrage braucht einen Katalogeintrag, aber häufige Anfragen sollten leicht zu finden sein.

### Ihn wahr halten

Ein Katalog veraltet schnell, wenn ihn niemand verantwortet. Services ändern sich, Teams werden umorganisiert, und Beschreibungen driften von der Wirklichkeit ab. Die nützlichste Disziplin ist ein Überprüfungszyklus: Jede verantwortliche Person bestätigt ihre Einträge nach Plan, und ungenutzte Services werden eingestellt. Der Wikipedia-Artikel erörtert keine Kritik oder Grenzen, aber die praktische Erfahrung ist einheitlich: Ein falscher Katalog ist schlimmer als gar keiner, weil er Menschen mit Zuversicht an die falsche Stelle schickt.

### Kataloge und agile Teams

Agile Teams sträuben sich oft gegen schwergewichtige Kataloge, weil sie Bürokratie erwarten. Ein schlanker Katalog ist mit agilen Arbeitsweisen vereinbar. Er kann ein gemeinsames Dokument oder eine Seite sein, von den Verantwortlichen selbst gepflegt, mit wenigen Feldern je Service. Der Test ist die Nutzung: Schauen Nutzende und der Desk tatsächlich hinein?

## Bewährte Praktiken

1. **Listen Sie Services in den Worten der Nutzenden auf.** Fragen Sie zunächst Nutzende und den Service Desk, wie sie jedes Ding nennen würden. Benennen Sie Services danach, was Nutzende tun ("An einer Videokonferenz teilnehmen"), und nicht nach Technologie ("Konferenzplattform").
2. **Geben Sie jedem Service eine benannte verantwortliche Person.** Eine Person sollte für jeden Service einstehen. Hat ein Service mehrere Teile, benennen Sie eine verantwortliche Person für das Ganze und listen Sie die Beitragenden auf.
3. **Beginnen Sie klein.** Starten Sie mit den 10 bis 20 Services, nach denen Nutzende am häufigsten fragen. Ergänzen Sie mehr, wenn Sie lernen, was nützlich ist. Eine kurze, zutreffende Liste ist besser als eine lange, veraltete.
4. **Nehmen Sie nur auf, was Menschen nutzen.** Fragen Sie für jedes Feld, wer es wofür nutzt. Entfernen Sie Felder, die niemand nutzt. Ergänzen Sie ein Feld nur, wenn jemand es braucht.
5. **Verknüpfen Sie mit Anfragen und Hilfe.** Zeigen Sie für jeden Service, wie man etwas anfragt, einen Fehler meldet und Hilfe findet. Verlinken Sie auf die Wissensdatenbank (siehe Thema 3.9 — Wissensmanagement).
6. **Zeigen Sie Service-Erwartungen.** Sagen Sie in einfachen Begriffen, was Nutzende erwarten können, etwa Supportzeiten und typische Reaktion. Verlinken Sie auf die förmliche Vereinbarung, wo es eine gibt.
7. **Halten Sie Abhängigkeiten fest.** Notieren Sie für jeden Service die wichtigsten Services und Lieferanten, auf die er sich stützt. Das hilft bei der Incident-Bearbeitung und Änderungsplanung.
8. **Trennen Sie Kundensicht von technischer Sicht.** Halten Sie nutzerorientierte Beschreibungen frei von Fachjargon. Verknüpfen Sie sie mit technischen Aufzeichnungen, wo es sie gibt.
9. **Überprüfen Sie nach Plan.** Bitten Sie jede verantwortliche Person, ihre Einträge mindestens zweimal im Jahr zu bestätigen, und stellen Sie Services ein, die niemand nutzt. Zeigen Sie bei jedem Eintrag das Datum der letzten Überprüfung.
10. **Machen Sie ihn leicht auffindbar und nutzbar.** Legen Sie den Katalog dorthin, wo Nutzende ohnehin schauen, etwa das Intranet oder das Portal. Testen Sie die Suche mit echten Anfragen.
11. **Nutzen Sie den Katalog, um Lücken und Überschneidungen zu finden.** Suchen Sie nach Services, die niemand verantwortet, Services, die einander doppeln, und Anfragen ohne passenden Service. Bringen Sie die Befunde in die Planung (siehe Thema 5.5 — Produkt- und Service-Verantwortung).
12. **Behandeln Sie Katalogänderungen als Service-Änderungen.** Wenn Sie einen Service hinzufügen, ändern oder einstellen, kündigen Sie es dem Desk und den betroffenen Nutzenden an, wie bei einem Release.

## Fragen zur Diskussion im Team

**Wenn eine neue Kollegin fragte, was wir anbieten, was würden wir antworten, und würden alle dasselbe sagen?**

Bitten Sie jede Person, die Services in zwei Minuten aufzulisten, und vergleichen Sie dann. Unterschiede zeigen, wie unscharf die Grenzen sind. Die Moderation kann fragen, welche Posten Nutzende nicht erkennen würden. Nutzen Sie die kombinierte Liste als Entwurf eines Katalogs und markieren Sie Posten, bei denen es Uneinigkeit gibt.

**Welche Services haben keine klare verantwortliche Person?**

Gehen Sie die Liste durch und markieren Sie die, bei denen niemand sagen kann, wer für den Service einsteht. Services ohne Verantwortliche verursachen oft die längsten Verzögerungen bei Incidents und Anfragen. Fragen Sie, was eine Person davon abhält, die Verantwortung zu übernehmen: Zeit, Befugnis oder unklare Grenzen. Vereinbaren Sie für jeden eine verantwortliche Person oder eine Entscheidung zur Einstellung.

**Wonach fragen Nutzende, was wir nicht auflisten, und was listen wir auf, wonach niemand fragt?**

Vergleichen Sie Anfragedaten mit der Liste. Anfragen ohne passenden Service offenbaren Lücken; aufgelistete Services ohne Anfragen offenbaren Kandidaten zur Einstellung. Seien Sie vorsichtig: Manche Services werden still genutzt. Fragen Sie Nutzende, bevor Sie entfernen. Wählen Sie eine Lücke und einen Kandidaten zur Untersuchung.

**Was müsste eine nutzende Person sehen, um den richtigen Service zu wählen, ohne uns anzurufen?**

Nehmen Sie eine häufige Wahl, etwa welches Werkzeug zum Teilen von Dateien zu nutzen ist. Fragen Sie, welche Information helfen würde: eine kurze Beschreibung, für wen er gedacht ist, ein Vergleich. Entwerfen Sie einen Eintrag von einem Absatz und testen Sie ihn mit zwei Nutzenden. Ziel ist ein Katalog, der Anrufe abfängt, indem er klar ist.

**Wie erfahren wir, wenn sich ein Service geändert hat und der Katalog veraltet ist?**

Fragen Sie, wann die letzte Überprüfung stattfand und wer sie durchführte. Besprechen Sie Auslöser, etwa eine Umorganisation oder ein großes Release, und einen regelmäßigen Zyklus. Ein sichtbares Datum der letzten Überprüfung bei jedem Eintrag hilft. Vereinbaren Sie den ersten Überprüfungstermin und wer verantwortlich ist.

**Wovon hängen wir ab, was nicht im Katalog steht?**

Listen Sie die Plattformen und Lieferanten hinter Ihren Services auf. Fragen Sie, welche aufgelistet sind und wer sie verantwortet. Abhängigkeiten ohne Verantwortliche sind Risiken. Wählen Sie eine, die der technischen Sicht hinzugefügt wird.

## In der Praxis: ein agiles ITIL-Beispiel

Ein Landkreis hat 120 Beschäftigte in seiner IT-Abteilung, die 2.500 Beschäftigte der Verwaltung und mehrere bürgernahe Services bedient. Mitarbeitende beklagen, nicht zu wissen, wen sie um Hilfe bitten sollen, und der Service Desk verbringt viel Zeit damit, Anrufe weiterzuleiten. Die Verwaltung hat einmal einen Service-Katalog mit 300 Einträgen gebaut, der selten genutzt wird und überwiegend veraltet ist.

Die Leitung der Service-Lieferung beschließt, klein neu anzufangen. Sie fragt den Service Desk nach den 30 häufigsten Gründen, aus denen Menschen ihn kontaktieren, und gruppiert sie zu 15 Services in den Worten der Nutzenden: "E-Mail und Kalender", "Dateien und Teilen", "Laptops und Geräte", "Website der Verwaltung", "Finanzsystem" und so weiter. Für jeden schreibt eine benannte verantwortliche Person vier Dinge: eine Beschreibung in zwei Sätzen, für wen er gedacht ist, wie man Hilfe erhält und was zu erwarten ist. Abhängigkeiten werden in einer getrennten technischen Liste für den Betrieb festgehalten. Der Katalog ist eine einzige Webseite im Intranet der Verwaltung, und jeder Eintrag zeigt das Datum, an dem die verantwortliche Person ihn zuletzt bestätigt hat.

Nach drei Monaten gehen Anrufe beim Desk dazu, wen man fragen soll, zurück, und die Verantwortlichen bemerken Lücken: Niemand verantwortete das Buchungssystem für Besprechungsräume, und zwei Services überschnitten sich. Sie werden zugewiesen und zusammengeführt. Probleme bleiben. Drei Verantwortliche haben ihre Einträge nicht bestätigt, und manche Mitarbeitende rufen aus Gewohnheit weiter den Desk an. Die Leitung der Service-Lieferung richtet einen Erinnerungszyklus ein und sorgt dafür, dass der Desk Anrufende auf den Katalog verweist, während er ihre Anfrage bearbeitet. Sie stellt außerdem fest, dass einige Einträge in technischer Sprache geschrieben sind, und bittet eine Kommunikationsbeauftragte, sie zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams sollten als Verantwortliche der Services benannt werden, die sie bauen und betreiben, und ihre Einträge aktuell halten. Wenn Sie einen Service starten oder einstellen, aktualisieren Sie den Katalog und informieren Sie den Service Desk. Nutzen Sie den Katalog, um herauszufinden, mit wem Sie über eine Abhängigkeit sprechen.

### Service- und Betriebsteams

Betrieb und Service Desk sind die intensivsten Nutzer. Sagen Sie Verantwortlichen, was in Einträgen falsch ist oder fehlt, und nutzen Sie den Katalog für Weiterleitung und Eskalation. Halten Sie die technische Sicht mit der Kundensicht verknüpft, damit Incident-Einsatzkräfte sehen, was wovon abhängt.

### Führung und Governance

Führungskräfte können den Katalog nutzen, um zu sehen, was die Organisation anbietet, was sich überschneidet und was verwaist ist. Verlangen Sie, dass Lücken und Duplikate angegangen und Verantwortliche benannt werden. Verlangen Sie nicht jedes Feld für jeden Service; fragen Sie nach dem, was Entscheidungen stützt.

### Kunden und Nutzer

Kunden und Nutzende erhalten eine klare Sicht darauf, worum sie bitten können und was zu erwarten ist. Nutzen Sie den Katalog, um den richtigen Service zu finden, und sagen Sie den Verantwortlichen, wenn ein Eintrag falsch oder unklar ist. Wenn Sie nicht finden, was Sie brauchen, sagen Sie es, denn das ist ein Beleg für eine Lücke.

## Typische Fehlerbilder

- **Zu groß, zu früh.** Hunderte Einträge werden angelegt und nicht gepflegt. Beginnen Sie stattdessen mit den meistgenutzten Services und wachsen Sie.
- **In der Sprache des Anbieters geschrieben.** Nutzende finden nicht, was sie brauchen. Benennen Sie Services stattdessen nach dem, was Nutzende tun, und testen Sie mit Nutzenden.
- **Keine Verantwortlichen.** Niemand hält Einträge wahr. Benennen Sie stattdessen für jeden Eintrag eine verantwortliche Person und zeigen Sie Überprüfungsdaten.
- **Ein Katalog, den niemand nutzt.** Er liegt auf einer Seite, die Nutzende nicht besuchen. Legen Sie ihn stattdessen dorthin, wo Menschen ohnehin schauen, und lassen Sie den Desk darauf verweisen.
- **Kundensicht und technische Sicht vermischen.** Nutzende sehen Komponentennamen. Halten Sie stattdessen eine klare Kundensicht und verknüpfen Sie eine technische für den Betrieb.
- **Keine Einstellung.** Tote Services bleiben aufgelistet. Überprüfen Sie stattdessen die Nutzung und stellen Sie ein, was niemand braucht.
- **Als einmaliges Projekt behandeln.** Der Katalog veraltet nach dem Start. Legen Sie stattdessen einen Überprüfungszyklus fest und machen Sie ihn zum Teil von Änderungen.
- **Zu viele Pflichtfelder.** Verantwortliche füllen Felder aus, um die Vorlage zu erfüllen. Verlangen Sie stattdessen nur, was jemand nutzt.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Abdeckung und Klarheit | Services sind informell bekannt | Eine Liste einiger Services existiert | Ein Katalog der wichtigsten Services in den Worten der Nutzenden, mit Verantwortlichen | Nutzung und Lücken werden gemessen und der Katalog angepasst | Der Katalog überspannt Funktionen und Partner und wird mit Nutzenden gestaltet |
| Verantwortung und Aktualität | Niemand verantwortet die Liste | Einige Verantwortliche bestätigen Einträge gelegentlich | Jeder Eintrag hat eine verantwortliche Person und ein Überprüfungsdatum | Überfällige Überprüfungen werden verfolgt und gelöst | Verantwortung und Überprüfung sind in der ganzen Organisation Routine |
| Verbindung zu Anfragen und Hilfe | Anfragen gehen per E-Mail oder Telefon | Einige Einträge verlinken auf Formulare oder Hilfe | Einträge verlinken auf Anfragen, Wissen und Supportwege | Klickraten und Abfangen von Kontakten werden gemessen | Anfragen, Wissen und Support sind über Funktionen hinweg integriert |
| Abhängigkeiten und Entscheidungen | Abhängigkeiten sind Stammeswissen | Einige Abhängigkeiten sind aufgelistet | Abhängigkeiten sind festgehalten und werden in Incident- und Change-Arbeit genutzt | Abhängigkeitsdaten stützen Planung und Risikoprüfung | Abhängigkeiten werden mit Lieferanten geteilt und für gemeinsame Planung genutzt |

## Checkliste

- [ ] Wir haben eine Liste von Services in den Worten der Nutzenden, beginnend mit den meistgenutzten.
- [ ] Jeder Service hat eine benannte verantwortliche Person.
- [ ] Jeder Eintrag sagt, für wen er gedacht ist, wie man Hilfe erhält und was zu erwarten ist.
- [ ] Der Katalog liegt dort, wo Nutzende und der Service Desk ohnehin schauen.
- [ ] Einträge zeigen das Datum ihrer letzten Bestätigung.
- [ ] Verantwortliche überprüfen ihre Einträge mindestens zweimal im Jahr.
- [ ] Wichtige Abhängigkeiten sind in einer technischen Sicht festgehalten.
- [ ] Ungenutzte Services werden auf Einstellung geprüft.
- [ ] Das Hinzufügen, Ändern oder Einstellen eines Services wird dem Desk und den Nutzenden angekündigt.
- [ ] Wir haben den Katalog mit echten Nutzeranfragen getestet.

## KI-Prompts

**Zweck: Kontaktdaten in einen Entwurf einer Liste von Services in den Worten der Nutzenden verwandeln.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Zweck: einen klaren Katalogeintrag schreiben.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Katalog auf Lücken, Überschneidungen und Waisen prüfen.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Zweck: eine Überprüfung des Katalogs mit den Verantwortlichen planen.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [service-catalog](../../../../skills/service-catalog/SKILL.md): nutzen Sie ihn, um Einträge zu entwerfen und einen Service-Katalog zu strukturieren.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): nutzen Sie ihn, um zu verstehen, wer jeden Service nutzt und was er braucht.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): nutzen Sie ihn, um zu finden, welche Anfragen und Services am meisten genutzt werden.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): nutzen Sie ihn, um festzuhalten, wer jeden Service verantwortet, unterstützt und konsultiert wird.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): nutzen Sie ihn, um zu planen, wie Services im Zeitverlauf hinzugefügt, geändert oder eingestellt werden.

## Wichtige Quellen

- **Service catalog** (Wikipedia): eine kurze Beschreibung von Inhalten, Vorteilen und der ITIL-Definition eines IT-Service-Katalogs.
- **IT portfolio management** (Wikipedia): Hintergrund zu Portfoliokonzepten, einschließlich des Hinweises, dass das Service Portfolio Management von ITIL v3 funktional gleichwertig zu sein scheint.
- **ITIL** (Wikipedia): Kontext zu ITIL-Versionen und dazu, woher Katalog- und Portfolioideen stammen.
- **Knowledge management** (Wikipedia): Hintergrund dazu, wie Kataloge als Wissenswerkzeuge wirken.

## Referenzen

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
