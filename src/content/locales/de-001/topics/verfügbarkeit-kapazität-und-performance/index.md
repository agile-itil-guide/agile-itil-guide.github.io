# Verfügbarkeit, Kapazität und Performance

**Verfügbarkeit, Kapazität und Performance sind drei Sichten darauf, ob ein Service da, groß genug und schnell genug ist, wenn Nutzende ihn brauchen, und der agile Ansatz besteht darin, Ziele aus den Bedürfnissen der Nutzenden zu wählen, sie ehrlich zu bepreisen und sie zu testen, bevor der Bedarf eintrifft.**

## Warum das wichtig ist

Nutzende trennen die drei nicht. Ein Service, der "läuft", aber zu langsam zum Nutzen ist, hat sie im Stich gelassen, und ein Service, der an einem ruhigen Tag schnell ist und zur Spitzenzeit umfällt, hat sie genau dann im Stich gelassen, wenn sie ihn am meisten brauchen. Teams, die Verfügbarkeit, Kapazität und Performance getrennt betrachten, übersehen oft, wie sie zusammenwirken: Mehr Kapazität verändert Kosten und Komplexität, das Streben nach perfekter Verfügbarkeit begrenzt, wie schnell Sie sich ändern können, und Tuning auf Geschwindigkeit kann die Widerstandsfähigkeit verringern.

Agile Teams stehen vor einer besonderen Fassung des Problems. Sie ändern den Service oft, und jede Änderung kann Performance oder Ressourcenbedarf auf Weisen verändern, die niemand getestet hat. Sie neigen auch dazu, mit kurzen Zeithorizonten zu arbeiten, sodass Kapazitätsbedarf, dessen Beschaffung Monate dauert, etwa Hardware, Verträge oder Lizenzen, übersehen werden kann. Die Praktiken in diesem Thema geben einen Weg, vorauszuschauen, ohne um ihrer selbst willen zur Langfristplanung zurückzukehren.

Googles Buch *Site Reliability Engineering* ist in seinem Kapitel "Embracing Risk" eine klare Quelle zur Ökonomie der Verfügbarkeit: Es sagt, sein Ansatz ziele nicht auf 100 % Zuverlässigkeit, weil ab einem Punkt die Maximierung der Stabilität begrenzt, wie schnell neue Features entwickelt werden können, und die Kosten der Zuverlässigkeit steil steigen. Der [Wikipedia-Artikel zur Kapazitätsplanung](https://en.wikipedia.org/wiki/Capacity_planning) gibt allgemeine Definitionen und Strategien. Beide sind unvollständig, und das hier verwendete ITIL-Vokabular stammt aus weit verbreiteten Beschreibungen, die dieser Leitfaden nicht am Text des Framework-Eigners bestätigen konnte.

## Kernkonzepte

### Verfügbarkeit

**Verfügbarkeit** ist die Fähigkeit eines Services, das zu tun, was Nutzende brauchen, wenn sie es brauchen. Eine gängige Art, sie auszudrücken, ist ein Prozentwert über einen Zeitraum. Das SRE-Kapitel nennt zwei Wege, sie zu messen. Für ein einzelnes System ist Verfügbarkeit zeitbasiert: 99,99 % erlauben etwa 52,56 Minuten ungeplanter Ausfallzeit pro Jahr. Für verteilte Services, die zu jeder Zeit teilweise laufen, wird sie besser als Erfolgsrate von Anfragen über ein gleitendes Fenster gemessen; das Beispiel des Kapitels ist ein Service mit 2,5 Millionen täglichen Anfragen und einem Ziel von 99,99 %, was bis zu 250 Fehler erlaubt. Das Kapitel konzentriert sich auf ungeplante Ausfallzeit. Geplante Ausfallzeit braucht eine eigene Vereinbarung mit Nutzenden.

### Der Preis jeder zusätzlichen Neun

Das Kapitel sagt, die Kosten der Zuverlässigkeit stiegen nichtlinear: Eine zusätzliche Neun kann das 100-Fache des vorherigen Schritts kosten, einschließlich redundanter Ressourcen und der Opportunitätskosten von Ingenieuren, die keine nutzerorientierten Features bauen. Es gibt eine Veranschaulichung: Die Erhöhung der Verfügbarkeit von 99,9 % auf 99,99 % bei einem Service mit 1 Million US-Dollar Umsatz ist etwa 900 US-Dollar wert, sodass sich die Investition nur lohnt, wenn die zusätzliche Neun weniger kostet. Die Zahlen sind das Beispiel der Quelle, und Ihre eigenen müssen aus Ihrem eigenen Umsatz oder Wert stammen. Das Prinzip gilt: Wählen Sie die Verfügbarkeit, die Nutzende brauchen, und bepreisen Sie alles darüber hinaus.

### Risikotoleranz

Das Kapitel beschreibt die Zusammenarbeit mit Product Ownern, um Geschäftsziele in ausdrückliche Ziele zu übersetzen. Zu den Faktoren gehören die erforderliche Verfügbarkeit, die Form der Ausfälle (eine konstante niedrige Fehlerrate gegenüber gelegentlichen Totalausfällen, wobei Datenabfluss besonders schwer wiegt), Kosten und andere Maße wie Latenz. Es merkt an, dass Infrastruktur, die viele Clients bedient, mit ausdrücklich definierten Service-Niveaus angeboten werden kann, sodass jeder Client das günstigste Niveau wählt, das seinen Bedarf erfüllt.

### Fehlerbudgets

Das Kapitel erklärt das Fehlerbudget als gemeinsames, objektives Maß zwischen Produktteams, die an Geschwindigkeit gemessen werden, und Zuverlässigkeitsteams, die an Zuverlässigkeit gemessen werden. Solange Budget bleibt, gehen Releases weiter. Ist es aufgebraucht, verlangsamen sich Releases, und die Mühe wandert zur Zuverlässigkeit (siehe Thema 3.7 — Service-Level-Management).

### Kapazität

Der Wikipedia-Artikel definiert Kapazitätsplanung als Bestimmung der Produktionskapazität, die eine Organisation braucht, um wechselnden Bedarf zu decken, und sagt, in der IT sei sie ein Synonym für Kapazitätsmanagement: die Schätzung der Speicher-, Hardware-, Software- und Konnektivitätsressourcen, die über einen künftigen Zeitraum nötig sind. Der Artikel unterscheidet **Entwurfskapazität**, die maximal mögliche Leistung, von **effektiver Kapazität**, der Leistung nach Randbedingungen. Planen Sie in der Praxis mit der effektiven Kapazität, die immer niedriger ist als der Entwurfswert.

### Kapazitätsstrategien

Der Artikel beschreibt vier Strategien zum Hinzufügen von Kapazität:

| Strategie | Was sie bedeutet | Zielkonflikt |
|---|---|---|
| **Vorlaufend (Lead)** | Kapazität vor dem Bedarf hinzufügen | Guter Service und kurze Durchlaufzeiten, aber riskant, wenn der Bedarf unvorhersehbar ist |
| **Nachlaufend (Lag)** | Kapazität erst hinzufügen, nachdem bei oder über voller Kapazität gearbeitet wird | Geringeres Risiko des Überbauens, kann aber Kunden kosten |
| **Mitlaufend (Match)** | Kapazität in kleinen Schritten hinzufügen, wenn sich der Bedarf ändert | Ausgewogen, braucht gutes Monitoring |
| **Anpassend (Adjustment)** | Kapazität um kleine oder große Beträge hinzufügen oder verringern, wenn sich Bedarf oder Architektur ändern | Flexibel, braucht schnelle Bereitstellung |

Der Artikel beschreibt kurz-, mittel- und langfristige Planung (operativ, taktisch und strategisch), von Tagen bis zu Jahren. In einer Cloud-Umgebung sind "mitlaufend" und "anpassend" oft leichter, weil Ressourcen schnell hinzugefügt werden können, doch Kosten und Verträge brauchen weiterhin Planung (siehe Thema 4.5 — IT-Finanzmanagement und FinOps).

### Performance

**Performance** ist, wie schnell und wie gut der Service antwortet. Das Kapitel des SRE-Buchs zum Monitoring schlägt vor, Latenz, Verkehr, Fehler und Sättigung zu messen, und warnt, dass Mittelwerte langsame Ausreißer verbergen (siehe Thema 3.10 — Monitoring und Event Management). Sättigung, wie "voll" der Service ist, verbindet Performance mit Kapazität: Das Kapitel merkt an, dass sich die Leistung oft schon vor 100 % Auslastung verschlechtert.

### Wie die drei zusammenwirken

- Mehr Kapazität kann Verfügbarkeit und Performance erhöhen, zu Kosten.
- Hohe Verfügbarkeitsziele brauchen meist Redundanz, also zusätzliche Kapazität.
- Tuning auf Spitzenleistung kann den Spielraum für Ausfälle verringern.
- Änderungen am Service verändern alle drei, weshalb Testen zählt.

Eine nützliche Disziplin ist, die Ziele für jeden Service zusammen festzuhalten: wie verfügbar, wie schnell und welche Last er tragen muss.

### Bedarf und Prognose

Kapazität hängt vom Bedarf ab. Bedarf kommt von Nutzenden und vom Geschäft: Marketingkampagnen, saisonale Spitzen, neue Kunden. Das Geschäft weiß mehr über die Zukunft als die IT, fragen Sie also. Planen Sie mit Bandbreiten statt mit einzelnen Zahlen und überprüfen Sie die Prognose regelmäßig (siehe den Skill zur Bedarfsprognose unten).

### Testen

Aussagen zu Kapazität und Performance sind Hypothesen, bis sie getestet sind. Lasttests und Performancetests wenden realistischen Bedarf an, um zu sehen, wie sich der Service verhält, und Chaos-Tests führen Ausfälle ein, um zu sehen, ob die Verfügbarkeit hält. Diese können Teil der Delivery-Pipeline sein.

### Grenzen der Quellen

Der Wikipedia-Artikel zur Kapazitätsplanung erwähnt das Kapazitätsmanagement von ITIL nicht und analysiert nicht die Beziehung zwischen Kapazität, Performance und Verfügbarkeit, und sein Abschnitt zu Assets ist als ohne Belege markiert. Das SRE-Kapitel beschreibt die Praktiken einer sehr großen Organisation mit eigener Ökonomie. Nutzen Sie sie für Prinzipien, nicht für Zahlen.

## Bewährte Praktiken

1. **Halten Sie Ziele für Verfügbarkeit, Performance und Last gemeinsam fest.** Schreiben Sie für jeden Service auf, wie verfügbar er sein muss, wie schnell er antworten muss und welche Last er tragen muss. Stützen Sie sie auf die Bedürfnisse der Nutzenden und stimmen Sie sie mit der Verantwortlichen des Services und den Kunden ab.
2. **Bepreisen Sie die Ziele.** Schätzen Sie, was ein zusätzliches Niveau an Verfügbarkeit oder Geschwindigkeit kostet, in Geld und in verzögerten Features. Vergleichen Sie mit dem, was Nutzende und das Geschäft gewinnen würden. Nutzen Sie Ihre eigenen Zahlen, nicht das Beispiel aus einem Buch.
3. **Messen Sie Verfügbarkeit auf eine Weise, die zum Service passt.** Nutzen Sie bei Services, die ständig teilweise laufen, die Erfolgsrate über ein gleitendes Fenster, wie das SRE-Kapitel es tut. Nutzen Sie bei einfachen Systemen zeitbasierte Maße. Zählen Sie ungeplante und geplante Ausfallzeit getrennt.
4. **Planen Sie mit der effektiven Kapazität.** Schätzen Sie, was der Service nach echten Randbedingungen wie Overhead, Ausfall von Komponenten und Wartung tragen kann. Halten Sie einen Puffer vor.
5. **Wählen Sie eine Kapazitätsstrategie bewusst.** Entscheiden Sie für jede Ressource, ob Sie vorlaufend, nachlaufend oder mitlaufend vorgehen, anhand von Durchlaufzeiten, Kosten des Mangels und Kosten des Überbauens. Schreiben Sie die Wahl auf und überprüfen Sie sie.
6. **Fragen Sie das Geschäft nach dem Bedarf.** Treffen Sie Leitungen aus Marketing, Vertrieb und Betrieb in einem regelmäßigen Zyklus, um von Kampagnen, Starts und saisonalen Spitzen zu erfahren. Halten Sie die erwartete Last mit Bandbreiten fest.
7. **Beobachten Sie die Sättigung.** Verfolgen Sie, wie voll wichtige Ressourcen sind, und setzen Sie Alarme weit vor dem Punkt, an dem sich die Leistung verschlechtert. Kennen Sie das Niveau, bei dem Ihr Service langsamer wird.
8. **Testen Sie vor der Spitze.** Führen Sie Last- und Performancetests durch, die dem echten Verkehr ähneln, vor bekannten Spitzen und nach bedeutenden Änderungen. Beheben Sie, was Sie finden, solange noch Zeit ist.
9. **Testen Sie Ausfall, nicht nur Last.** Üben Sie in einer sicheren Umgebung, eine Komponente, eine Zone oder einen Lieferanten zu verlieren, und sehen Sie, ob die Verfügbarkeit hält (siehe den Skill zu Chaos-Tests unten).
10. **Beziehen Sie Kapazität in Änderungs- und Release-Arbeit ein.** Fragen Sie bei Entwurf und Review, ob eine Änderung den Ressourcenbedarf verändert. Fügen Sie der Pipeline Performanceprüfungen für die Pfade hinzu, die zählen (siehe Thema 3.5 — Release- und Deployment-Management).
11. **Nutzen Sie das Fehlerbudget, um Zielkonflikte zu klären.** Ist Budget da, geben Sie es für Veränderung aus. Ist es aufgebraucht, verwenden Sie die Mühe auf Zuverlässigkeit und Kapazität. Überprüfen Sie die Regel gemeinsam mit Delivery und Betrieb.
12. **Prüfen Sie Prognosen an den tatsächlichen Werten.** Vergleichen Sie jedes Quartal vorhergesagten und tatsächlichen Bedarf und passen Sie Ihre Methode an. Behandeln Sie Überraschungen als Information.

## Fragen zur Diskussion im Team

**Was brauchen unsere Nutzenden wirklich an Verfügbarkeit, Geschwindigkeit und Kapazität, und wer hat das entschieden?**

Fragen Sie nach den aktuellen Zielen und woher sie stammen. Oft wurden sie vor langer Zeit gesetzt oder vom Team, ohne Nutzende zu fragen. Fragen Sie Nutzende und Kunden, was am meisten schmerzt. Besprechen Sie, ob die Ziele passen. Die Moderation kann fragen, was geschähe, wenn das Ziel eine Stufe niedriger läge und was das freisetzen würde.

**Was kostet uns die nächste Neun?**

Wählen Sie einen Service mit hohem Verfügbarkeitsziel. Schätzen Sie, was es kosten würde, es um eine Stufe zu erhöhen oder zu senken, in Geld und in verzögerter Arbeit. Vergleichen Sie mit dem Wert für Nutzende. Das Beispiel des SRE-Kapitels zeigt, wie schnell die Rechnung gegen ein höheres Ziel kippen kann. Rechnen Sie mit Ihren eigenen Zahlen und halten Sie die Annahmen fest.

**Was ist die nächste Bedarfsspitze, von der wir wissen, und was haben wir zur Vorbereitung getan?**

Listen Sie die bekannten Spitzen auf: eine Kampagne, eine Frist, ein saisonaler Ansturm. Fragen Sie bei jeder, wer die erwartete Last kennt und ob der Service auf diesem Niveau getestet wurde. Oft hat niemand gefragt. Vereinbaren Sie eine Person, die die Zahlen sammelt, und ein Datum für den Test.

**Wo ist unser Service der Sättigung am nächsten, und was geschieht, wenn er sie erreicht?**

Fragen Sie nach der am stärksten genutzten Ressource. Sehen Sie sich den Trend an. Fragen Sie, was der Service an dieser Grenze tut: langsamer werden, Fehler zeigen oder ausfallen. Wenn es niemand weiß, testen Sie es. Wählen Sie eine Schwelle, bei der gehandelt wird, und einen Alarm dafür.

**Welche unserer letzten Änderungen haben Performance oder Kapazität beeinflusst, und wussten wir es vorher?**

Sehen Sie sich jüngste Änderungen an und fragen Sie, wie die Performance geprüft wurde. Wenn nicht, besprechen Sie, was eine leichte Prüfung wäre. Typische Optionen sind ein Test auf dem kritischen Pfad oder ein Canary-Release mit Monitoring. Vereinbaren Sie eine für das nächste Release.

**Wenn jetzt eine Komponente ausfiele, was geschähe mit der Verfügbarkeit?**

Nehmen Sie einen wichtigen Service und verfolgen Sie den Ausfall einer Datenbank, einer Zone oder eines Lieferanten. Fragen Sie, was der Entwurf annimmt und was getestet wurde. Lücken zwischen Annahme und Beleg sind Risiken. Planen Sie einen kontrollierten Ausfalltest in einer sicheren Umgebung.

## In der Praxis: ein agiles ITIL-Beispiel

Eine nationale Rentenbehörde betreibt einen Online-Service, in dem Bürgerinnen und Bürger ihre Ansprüche prüfen und Formulare einreichen. Der Service hat ein ruhiges Jahr, außer in den Wochen nach dem Versand der jährlichen Bescheide, wenn der Verkehr auf ein Mehrfaches des Normalen steigt. Im letzten Jahr wurde der Service so langsam, dass viele Nutzende aufgaben, und das Callcenter war überwältigt. Das Plattformteam aus neun Personen und die Betriebsleitung wollen eine Wiederholung vermeiden.

Das Team beginnt damit, die Kommunikationsstelle nach der erwarteten Last zu fragen. Die Stelle sagt, die Bescheide würden in zwei Chargen versendet, und nennt Termine, aber keine Zahlen. Das Team schätzt die Bandbreite aus den Daten des Vorjahrs und setzt ein Ziel: Die Formularseite muss beim erwarteten Peak in akzeptabler Zeit antworten, und der Service muss während der beiden Chargen verfügbar bleiben. Sie führen einen Lasttest auf einer Kopie der Produktion durch und stellen fest, dass die Datenbank die erste Ressource ist, die sättigt, weit unter dem vorhergesagten Peak. Sie übernehmen eine "vorlaufende" Strategie für die Datenbank, da die Durchlaufzeit für zusätzliche Kapazität lang ist, und eine "mitlaufende" für die Webserver, die in Minuten hinzugefügt werden können. Ein Ausfalltest zeigt, dass der Verlust eines Datenbankknotens die Kapazität halbiert, was zur Spitzenzeit inakzeptabel wäre, also fügen sie einen Reserveknoten hinzu.

Zur Spitzenzeit bleibt der Service oben, und die Antwortzeiten halten in der ersten Charge. In der zweiten Charge wird eine Komponente zur Zahlungsbestätigung, die niemand getestet hatte, unter Last langsam, und einige Nutzende sehen Verzögerungen. Das Team kannte die Grenze dieser Abhängigkeit nicht und hatte nicht erfahren, dass die zweite Charge größer sein würde. Sie nehmen die Komponente in den nächsten Lasttest auf, bitten die Kommunikationsstelle, das Volumen jeder Charge früher zu nennen, und vereinbaren, den Prognoseprozess im nächsten Quartal zu überprüfen.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams beeinflussen alle drei durch Entwurf und Änderung. Beziehen Sie Performance und Kapazität in Entwurfsreviews und in die Pipeline ein. Sagen Sie dem Betrieb, welche Änderungen die Last verändern, und fragen Sie das Geschäft nach dem erwarteten Bedarf.

### Service- und Betriebsteams

Betriebsteams tragen meist Monitoring und Kapazitätspläne. Verfolgen Sie Sättigung und Trend, behalten Sie die Durchlaufzeiten für Ressourcen im Blick und bringen Sie Belege in die Planung. Helfen Sie dem Geschäft zu verstehen, was jedes Verfügbarkeitsniveau kostet.

### Führung und Governance

Führungskräfte legen den Preis fest, den sie für Zuverlässigkeit und Geschwindigkeit zu zahlen bereit sind. Fragen Sie nach Zielen, die zu den Bedürfnissen der Nutzenden passen, mit Kosten, und akzeptieren Sie, dass perfekte Verfügbarkeit kein vernünftiges Ziel ist. Unterstützen Sie Tests vor bekannten Spitzen und das Budget für Widerstandsfähigkeit dort, wo es zählt.

### Kunden und Nutzer

Kunden und Nutzende spüren das Ergebnis. Sagen Sie dem Anbieter, wenn Sie zusätzliche Last erwarten, etwa eine Kampagne oder eine Frist, und was Ihnen bei Geschwindigkeit und Verfügbarkeit am wichtigsten ist. Melden Sie Langsamkeit ebenso wie Ausfälle, denn aus Ihrer Sicht sind beides Fehlschläge.

## Typische Fehlerbilder

- **Ziele aus Gewohnheit.** "Fünf Neunen" werden verlangt, ohne zu fragen, warum. Leiten Sie Ziele stattdessen aus den Bedürfnissen der Nutzenden ab und bepreisen Sie sie.
- **Überraschende Spitzen.** Das Geschäft kennt eine Kampagne, und die IT nicht. Treffen Sie sich stattdessen in regelmäßigem Zyklus und halten Sie die erwartete Last fest.
- **Durchschnitte für die Performance.** Langsame Ausreißer bleiben unsichtbar. Sehen Sie sich stattdessen hohe Perzentile und Sättigung an.
- **Kapazität erst nach Ärger hinzugefügt.** Die nachlaufende Strategie wird versehentlich genutzt. Wählen Sie stattdessen eine Strategie bewusst, anhand von Durchlaufzeiten.
- **Ungetestete Widerstandsfähigkeit.** Redundanz existiert auf dem Papier. Testen Sie stattdessen den Ausfall von Komponenten in einer sicheren Umgebung.
- **Änderungen ohne Performanceprüfung.** Ein Release verschlechtert die Geschwindigkeit. Fügen Sie der Pipeline stattdessen Prüfungen für die Pfade hinzu, die zählen.
- **Abhängigkeiten vergessen.** Eine Komponente eines Dritten begrenzt den ganzen Service. Listen Sie stattdessen Abhängigkeiten auf und testen Sie sie.
- **Die Prognose als fest behandeln.** Pläne ignorieren den Fehler. Nutzen Sie stattdessen Bandbreiten und vergleichen Sie Prognosen mit den tatsächlichen Werten.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Ziele und Kosten | Ziele sind informell oder kopiert | Einige Services haben erklärte Ziele | Services haben vereinbarte Ziele für Verfügbarkeit, Performance und Last mit bekannten Kosten | Ziele und Kosten werden an Ergebnissen überprüft | Ziele werden gemeinsam mit Kunden und Lieferanten gesetzt und anhand von Belegen angepasst |
| Bedarfs- und Kapazitätsplanung | Kapazität wird nach Ärger hinzugefügt | Einige Teams prognostizieren bekannte Spitzen | Bedarf wird in einem Zyklus vom Geschäft erhoben, mit erklärter Kapazitätsstrategie | Prognosegenauigkeit wird verfolgt und Methoden werden verbessert | Planung wird über Teams, Lieferanten und das Geschäft koordiniert |
| Testen | Wenig Testen von Last oder Ausfall | Einige Tests vor großen Ereignissen | Last- und Ausfalltests sind für wichtige Services Routine | Testergebnisse treiben verfolgte Verbesserungen an | Tests werden über abhängige Services hinweg geteilt und koordiniert |
| Monitoring und Reaktion | Probleme werden spät bemerkt | Etwas Sättigung wird verfolgt | Sättigung, Latenz und Fehler werden mit Alarmen vor den Grenzen überwacht | Trends und Schwellenwerte werden anhand von Daten abgestimmt | Signale und Reaktionen werden über Teams und Lieferanten koordiniert |

## Checkliste

- [ ] Jeder Service hat erklärte Ziele für Verfügbarkeit, Performance und Last, mit ihrer Quelle.
- [ ] Wir haben geschätzt, was das nächste Verfügbarkeitsniveau kosten würde.
- [ ] Wir wissen, wie Verfügbarkeit für jeden Service gemessen wird und was als Ausfallzeit zählt.
- [ ] Wir haben für jede wichtige Ressource eine Kapazitätsstrategie gewählt.
- [ ] Wir treffen das Geschäft regelmäßig, um vom erwarteten Bedarf zu erfahren.
- [ ] Die Sättigung wichtiger Ressourcen wird mit Alarmen vor den Grenzen überwacht.
- [ ] Vor der letzten bekannten Spitze wurden Lasttests durchgeführt.
- [ ] Der Ausfall mindestens einer wichtigen Komponente wurde in einer sicheren Umgebung getestet.
- [ ] Änderungen, die Performance oder Kapazität beeinflussen, werden im Review markiert.
- [ ] Prognosen werden jedes Quartal mit dem tatsächlichen Bedarf verglichen.

## KI-Prompts

**Zweck: gemessene Daten in eine Sicht auf den Kapazitätsspielraum verwandeln.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Zweck: ein höheres Verfügbarkeitsziel bepreisen.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: einen Lasttest vor einer bekannten Spitze planen.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: einen Ausfalltest entwerfen.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): nutzen Sie ihn, um die Ressourcen zu schätzen, die ein Service im Zeitverlauf braucht, und eine Strategie zu ihrer Ergänzung zu wählen.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): nutzen Sie ihn, um die künftige Last als Bandbreite aus vergangenen Daten und Geschäftsplänen abzuschätzen.
- [load-testing](../../../../skills/load-testing/SKILL.md): nutzen Sie ihn, um Tests zu entwerfen, die vor einer Spitze realistischen Bedarf anwenden.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): nutzen Sie ihn, um Geschwindigkeit und Ressourcenverbrauch auf kritischen Pfaden als Teil der Lieferung zu prüfen.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): nutzen Sie ihn, um zu testen, ob die Verfügbarkeit hält, wenn Komponenten ausfallen.

## Wichtige Quellen

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): die Ökonomie der Verfügbarkeit, anfragebasierte Messung und das Fehlerbudget.
- **Capacity planning** (Wikipedia): Definitionen und die Strategien vorlaufend, nachlaufend, mitlaufend und anpassend.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): die goldenen Signale einschließlich Sättigung.
- **High availability** (Wikipedia): Hintergrund zum Entwurf von Systemen für den Dauerbetrieb.

## Referenzen

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
