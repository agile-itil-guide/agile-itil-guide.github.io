# Service-Continuity-Management

**Das Service-Continuity-Management bereitet eine Organisation darauf vor, ihre wichtigsten Services nach einer schweren Störung weiter zu betreiben oder schnell wiederherzustellen, und sein Wert erweist sich nur durch Übungen, nicht durch den Plan im Regal.**

## Warum das wichtig ist

Die meisten Incidents sind klein und lokal. Einige nicht: ein Brand im Rechenzentrum, eine ausgefallene Cloud-Region, ein Ransomware-Angriff, der Zusammenbruch eines Lieferanten, eine Pandemie, eine Überschwemmung. Diese Ereignisse bedrohen die Fähigkeit der Organisation, überhaupt zu liefern, und ihre Bewältigung erfordert Planung, die das gewöhnliche Incident Management nicht abdeckt. Ein Team, das im Voraus durchdacht hat, was am meisten zählt und wie es weitermachen wird, hat eine deutlich bessere Chance durchzukommen.

Agile Teams begegnen dem Thema mit einer besonderen Herausforderung. Ihre Systeme ändern sich wöchentlich, sodass ein einmal geschriebener und abgelegter Continuity-Plan binnen Monaten veraltet ist. Wiederherstellungsschritte, die von einem bestimmten Server oder Skript abhingen, sind möglicherweise nicht mehr gültig. Die agile Antwort ist nicht, die Planung aufzugeben, sondern Continuity zu einem lebendigen Teil dessen zu machen, wie Services gebaut und betrieben werden: Wiederherstellung eingeplant, oft getestet und zusammen mit dem Code in der Versionsverwaltung gehalten.

Der [Wikipedia-Artikel zur Geschäftsfortführungsplanung (Business Continuity Planning)](https://en.wikipedia.org/wiki/Business_continuity_planning) definiert Business Continuity als die Fähigkeit einer Organisation, Produkte oder Services nach einer Störung auf akzeptablem Niveau weiter zu liefern, und behandelt die Continuity-Planung als Teilmenge des Risikomanagements. Die Seite "Disaster recovery" der englischen Wikipedia ist nur eine Begriffsklärungsseite mit dem Hinweis, dass ein vollständiger Artikel gewünscht wird, daher nutzt dieses Thema den Artikel zu Business Continuity für Definitionen und ergänzt praktische Anleitung aus den anderen Themen des Leitfadens, wobei es kenntlich macht, wo es Praxis und nicht berichtetes Quellenmaterial ist.

## Kernkonzepte

### Continuity, Wiederherstellung und Resilienz

Begriffe werden locker verwendet, nutzen Sie sie also sorgfältig:

| Begriff | Bedeutung, wie weit verbreitet | Fokus |
|---|---|---|
| **Business Continuity** | Die Fähigkeit, Produkte oder Services nach einer Störung auf akzeptablem Niveau weiter zu liefern | Die Organisation am Laufen halten |
| **Business Continuity Planning** | Systeme der Vorbeugung und Wiederherstellung für Bedrohungen der Organisation schaffen | Die Pläne und Vorkehrungen |
| **IT Disaster Recovery** | Lebenswichtige IT-Infrastruktur aufrechterhalten oder wiederherstellen (die auf der Begriffsklärungsseite von Wikipedia gegebene Beschreibung) | Die Technologie |
| **Service-Continuity (ITSM)** | Sicherstellen, dass IT-Services nach einer Störung auf vereinbarte Niveaus wiederhergestellt werden können | IT-Services innerhalb des größeren Plans |

Der Wikipedia-Artikel sagt, Disaster Recovery überschneide sich mit der Geschäftsfortführungsplanung, besonders in der Lösungsphase, und Continuity sei das beabsichtigte Ergebnis der Durchführung beider. Das Service-Continuity-Management ist die IT-Service-Sicht auf dasselbe Ziel.

### Geschäftsauswirkungsanalyse

Eine **Geschäftsauswirkungsanalyse (Business Impact Analysis, BIA)** ist laut dem Artikel eine Methode, zu identifizieren und zu bewerten, wie Störungen den Betrieb beeinflussen, und Wiederherstellungsprioritäten festzulegen. Ihre Ziele umfassen, kritische Aktivitäten und Abhängigkeiten zu identifizieren, finanzielle, betriebliche, rufbezogene und rechtliche Auswirkungen zu bewerten, Wiederherstellungsziele zu bestimmen und die Risikobewertung zu informieren. Für IT-Services fragt die BIA, auf welche Services die Organisation nicht verzichten kann, in welcher Reihenfolge sie zurückkommen müssen und wovon jeder abhängt (siehe Thema 4.4 — Konfigurationsmanagement für Abhängigkeiten).

### Wiederherstellungsziele

Der Artikel definiert zwei Schlüsselbegriffe:

- **Recovery Time Objective (RTO):** die akzeptable Zeit, eine Funktion wiederherzustellen.
- **Recovery Point Objective (RPO):** die akzeptable Menge an Datenlatenz, mit anderen Worten, wie viel Datenverlust tolerierbar ist.

Er listet auch den maximal tolerierbaren Störungszeitraum auf. Der Artikel gibt keine Methode, diese Werte für eine bestimmte Organisation zu wählen, sie müssen also vom Geschäft kommen: Fragen Sie, was eine Stunde, ein Tag und eine Woche Ausfall kosten und welche Daten das Geschäft zu verlieren verkraften kann. Sie festzulegen ist eine geschäftliche Entscheidung mit einem Preis, denn die Kosten steigen, je strenger das Ziel ist (siehe Thema 3.11 — Verfügbarkeit, Kapazität und Performance).

### Pläne

Ein Continuity- oder Wiederherstellungsplan beschreibt, wer was in welcher Reihenfolge tut, um kritische Services nach einer Störung wiederherzustellen. Er sollte abdecken: wie und von wem der Plan ausgelöst wird, wie Menschen informiert und versammelt werden, die Reihenfolge der Wiederherstellung der Services, wo die Wiederherstellung stattfindet, woher Daten kommen, wie mit Kunden und Personal kommuniziert wird und wie zum Normalzustand zurückgekehrt wird. Pläne für IT-Services sollten auf Runbooks für die einzelnen Systeme verweisen (siehe Thema 3.9 — Wissensmanagement).

### Tests und Übungen

Der Artikel zitiert ein Buch der British Standards Institution von 2008, das drei Arten von Übungen beschreibt: eine **Planspielübung (Tabletop)**, bei der eine kleine Gruppe einen Aspekt des Plans bespricht, eine **mittlere** Übung, bei der mehrere Teams an mehreren Aspekten mit vorbereiteten Überraschungen arbeiten, und eine **komplexe** Übung, die unangekündigte Aktivierung, tatsächliche Evakuierung und die Nutzung eines Ausweichstandorts für die Wiederherstellung hinzufügt. Er beschreibt Wartung in einem jährlichen oder halbjährlichen Zyklus, einschließlich Tests technischer Lösungen und Wiederherstellungsverfahren, wobei die Befunde in die Analysephase zurückfließen. In Übungen stellen Pläne fest, dass sie falsch sind.

### Wiederherstellungsstufen

Der Artikel erwähnt die sieben Disaster-Recovery-Stufen von SHARE (1992), später von IBM auf acht Stufen (0 bis 7) aktualisiert. Die hier gelesenen Quellen beschreiben die Stufen nicht im Einzelnen. Als allgemeine Praxis klassifizieren Organisationen Services in Stufen danach, wie schnell sie wiederhergestellt werden müssen, und passen Wiederherstellungsansatz und Kosten der Stufe an.

### Standards

Der Artikel zitiert ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, das die Ausgabe von 2012 ablöste und von Organisationen verlangt, Continuity-Ziele, minimal akzeptable Service-Niveaus und einen maximal tolerierbaren Störungszeitraum zu definieren. ISO 22313:2020 gibt Anleitung zu ihrer Anwendung. Das sind Standards für ein Managementsystem, das eine Organisation übernehmen kann; sie ersetzen praktische Planung nicht. Prüfen Sie den Standardtext direkt, wenn Ihre Kunden oder Aufsichtsbehörden Konformität verlangen.

### Agile Continuity

Agile und DevOps-Praktiken helfen der Continuity:

- **Infrastruktur und Konfiguration als Code** erlauben, Umgebungen aus der Versionsverwaltung neu aufzubauen, was die Wiederherstellung schneller und testbar macht.
- **Automatisierte Pipelines** können Services an einem Ausweichstandort neu deployen.
- **Häufige Releases** halten das Team im Deployen geübt.
- **Regelmäßige Übungen** können als eine Form des Testens im Backlog behandelt werden.

Sie schaffen auch Risiken: starke Abhängigkeit von einem einzigen Cloud-Konto, ein CI-System, das selbst ein Single Point of Failure ist, und Geheimnisse, die dort gespeichert sind, wo sie in einem Katastrophenfall nicht erreichbar sind. Planen Sie für die Werkzeuge, von denen die Wiederherstellung selbst abhängt.

### Menschliche Faktoren

Der Artikel erwähnt den SARS-Ausbruch 2002 bis 2003 als Beispiel für aufgeteilte und rotierende Teams, was eine Erinnerung ist, dass Continuity Menschen einschließt: wichtige Fähigkeiten auf Einzelne verteilt, Fernarbeit, Kommunikation, wenn normale Kanäle ausfallen, und Fürsorge für Beschäftigte unter Stress.

### Grenzen der Quellen

Der Artikel gibt keine Methode zum Festlegen von Zielen, keine Anleitung, wie oft über den jährlichen oder halbjährlichen Wartungszyklus hinaus zu testen ist, und keine Werkzeugempfehlungen. Er ist ein allgemeiner Geschäftsartikel, kein IT-Artikel. Für technische Wiederherstellungsdetails nutzen Sie die Dokumentation Ihrer eigenen Plattformen und die Skills des Leitfadens zu Disaster-Recovery-Planung und -Test.

## Bewährte Praktiken

1. **Beginnen Sie mit einer Geschäftsauswirkungsanalyse.** Identifizieren Sie die Services, auf die die Organisation nicht verzichten kann, die Kosten ihres Verlusts im Zeitverlauf und wovon sie abhängen. Tun Sie es mit den Verantwortlichen des Geschäfts, nicht für sie.
2. **Legen Sie Wiederherstellungsziele mit dem Geschäft fest.** Vereinbaren Sie für jeden kritischen Service eine Wiederherstellungszeit und einen Wiederherstellungspunkt und halten Sie die Kosten ihrer Erfüllung fest. Überprüfen Sie sie, wenn sich Geschäft oder Technologie ändern.
3. **Stufen Sie Ihre Services ein.** Gruppieren Sie Services danach, wie schnell sie zurückkommen müssen, und wenden Sie den passenden Wiederherstellungsansatz für jede Stufe an. Wenden Sie nicht auf alles den teuersten Ansatz an.
4. **Schreiben Sie einen kurzen Plan, den Menschen nutzen können.** Sagen Sie, wie der Plan ausgelöst wird, wer entscheidet, wer was tut, wie kommuniziert wird und die Reihenfolge der Wiederherstellung. Halten Sie ihn auf wenigen Seiten mit Verweisen auf Runbooks.
5. **Halten Sie Pläne bei Code und Umgebung.** Legen Sie Wiederherstellungsskripte, Konfiguration und Runbooks in die Versionsverwaltung und überprüfen Sie sie, wenn sich Services ändern. Ein Plan, der nicht mit dem System aktualisiert wird, wird scheitern.
6. **Planen Sie für die Werkzeuge, von denen die Wiederherstellung abhängt.** Stellen Sie sicher, dass der Zugang zu Pipeline, Geheimnissen, Dokumentation und Kommunikationswerkzeugen den Verlust der Systeme überlebt, die sie unterstützen.
7. **Üben Sie regelmäßig.** Beginnen Sie mit Planspielen, gehen Sie zu technischen Tests von Wiederherstellungen und Failovers über und führen Sie größere Übungen für die kritischsten Services durch. Planen Sie sie wie andere Arbeit ein.
8. **Testen Sie Wiederherstellungen, nicht nur Backups.** Ein Backup erweist sich durch die Wiederherstellung daraus. Testen Sie, dass Daten zurückkommen, innerhalb des Wiederherstellungspunkts, und dass der Service damit funktioniert (siehe den Skill zum Test der Disaster Recovery unten).
9. **Behandeln Sie Befunde als Backlog-Posten.** Jede Übung erzeugt Lücken. Halten Sie sie mit Verantwortlichen und Terminen fest und prüfen Sie, dass sie vor der nächsten Übung erledigt sind.
10. **Planen Sie Kommunikation.** Entscheiden Sie, wer Kunden, Personal, Aufsichtsbehörden und Öffentlichkeit was sagt, und bereiten Sie Vorlagen vor. Beziehen Sie Wege außerhalb der üblichen Kanäle ein, um Menschen zu erreichen, falls die normalen Kanäle ausfallen (siehe den Skill zur Krisenkommunikation unten).
11. **Beziehen Sie Lieferanten ein.** Fragen Sie kritische Lieferanten nach ihren eigenen Continuity-Vorkehrungen und beziehen Sie sie, wo Sie können, in Übungen ein (siehe Thema 3.14 — Lieferantenmanagement).
12. **Überprüfen Sie jährlich und nach jedem schweren Incident oder größeren Wandel.** Aktualisieren Sie Analyse, Ziele und Pläne, wenn sich Geschäft oder Technologie ändern, nicht nur nach Kalender.

## Fragen zur Diskussion im Team

**Welche unserer Services müssen zuerst zurückkommen, und woher wissen wir es?**

Bitten Sie jede Person, die Services nach Wiederherstellungspriorität zu ordnen. Vergleichen Sie. Uneinigkeit ist aufschlussreich: Sie zeigt, dass die Reihenfolge nie mit dem Geschäft abgestimmt wurde. Die Moderation kann fragen, was es die Organisation kosten würde, wenn jeder eine Stunde, einen Tag und eine Woche ausfiele. Tragen Sie die Frage zu den Verantwortlichen des Geschäfts und vereinbaren Sie eine Liste.

**Wie viele Daten könnten wir verlieren, und hat jemand dem zugestimmt?**

Fragen Sie, wann das letzte Backup der wichtigen Daten gemacht wurde und wie oft. Vergleichen Sie mit dem, was das Geschäft tolerieren würde. Viele Teams stellen fest, dass die Antwort nicht der Annahme entspricht. Besprechen Sie, was ein strengerer Wiederherstellungspunkt kosten würde. Halten Sie die Entscheidung fest und wer sie getroffen hat.

**Wann haben wir zuletzt aus einem Backup wiederhergestellt, und was geschah?**

Fragen Sie nach einem echten Datum und einem echten Ergebnis. Lautet die Antwort "nie", ist das der wichtigste Befund. Wurde es getan, fragen Sie, was schiefging und was behoben wurde. Planen Sie im nächsten Monat einen Wiederherstellungstest für einen kritischen Service.

**Was müssen wir wiederherstellen, das von dem abhängt, was ausgefallen ist?**

Gehen Sie ein Szenario durch, etwa den Verlust eines Cloud-Kontos oder eines Rechenzentrums. Fragen Sie, wo Runbooks, Geheimnisse und Pipeline liegen. Abhängigkeiten vom ausgefallenen System sind häufig, etwa ein Runbook, das auf einem Server liegt, der ausgefallen ist. Listen Sie sie auf und planen Sie, jede zu verlegen oder zu kopieren.

**Wer hat die Befugnis, ein Katastrophenereignis auszurufen und den Plan zu starten?**

Fragen Sie die Beteiligten, wer entscheiden würde und ob sie es wissen. Verzögerung beim Auslösen eines Plans kostet Zeit. Besprechen Sie eine klare Regel und eine Vertretung. Prüfen Sie, wie die Person erreicht wird, falls die üblichen Kanäle ausfallen.

**Was würden wir tun, wenn die Menschen, die am meisten wissen, nicht verfügbar wären?**

Stellen Sie sich vor, wichtiges Personal sei nicht erreichbar. Fragen Sie, wer sonst die Wiederherstellung durchführen könnte und was er bräuchte. Diese Frage verbindet Continuity mit Wissensmanagement. Planen Sie einen Weg, kritisches Wissen zu verbreiten.

## In der Praxis: ein agiles ITIL-Beispiel

Das Grundbuchamt einer Provinzregierung betreibt einen Online-Service, in dem Juristen und Landvermesser Grundstücksvorgänge einreichen. Ein Team aus zwölf Personen baut und betreibt ihn, in einer einzigen Region eines Cloud-Anbieters. Eine Prüfung der Business Continuity stellt fest, dass der Service vom Ministerium als kritisch eingestuft ist, mit der Erwartung, dass er binnen vier Stunden wiederhergestellt werden kann, und dass nie jemand getestet hat, ob das möglich ist.

Das Team beginnt mit einer Planspielübung. Das Szenario: Die Cloud-Region ist einen Tag lang nicht verfügbar. Sie entdecken, dass die Runbooks in einem Wiki in derselben Region liegen, dass der Infrastruktur-Code nur einen Teil der Umgebung abdeckt und dass die Datenbank-Backups in dieselbe Region kopiert werden. Die Vier-Stunden-Erwartung des Ministeriums erweist sich als vor Jahren von einer Führungskraft geschrieben und nie bepreist. Das Team und die geschäftliche Verantwortliche des Ministeriums treffen sich. Die Verantwortliche erklärt, was ein Ausfall von einem Tag für Einreichungsfristen bedeuten würde, und stimmt zu, dass vier Stunden an Einreichungstagen zum Monatsende nötig sind, zu anderen Zeiten aber acht Stunden akzeptabel sind.

Das Team kopiert Runbooks und Backups in eine zweite Region, vervollständigt den Infrastruktur-Code und baut die Umgebung in einer eintägigen Übung aus Code in einer Testregion neu auf. Der erste Versuch dauert elf Stunden, hauptsächlich wegen manueller Schritte und eines fehlenden Geheimnisses. Nach Korrekturen dauert ein zweiter Versuch fünf. Einige Probleme bleiben. Das Monatsende-Ziel von vier Stunden ist weiterhin außer Reichweite, der Identitätsanbieter, über den sich das Personal anmeldet, hat keine eigene Wiederherstellungsregelung, und das Team erkennt, dass es von einem Lieferanten abhängt, dessen Continuity-Plan es nie gesehen hat. Das Team setzt den Identitätsanbieter und die Frage zum Lieferanten auf den Backlog, und das Ministerium stimmt einer längeren Wiederherstellungszeit für Nicht-Spitzenzeiten zu, während die Arbeit weitergeht.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams machen durch Entwurf Wiederherstellung möglich oder unmöglich. Bauen Sie Services so, dass sie aus Code neu aufgebaut werden können, halten Sie Daten repliziert und schreiben Sie Wiederherstellungsschritte als Teil von "fertig". Nehmen Sie an Übungen teil und beheben Sie die Lücken, die sie finden.

### Service- und Betriebsteams

Betriebsteams halten die Pläne und führen die Übungen durch. Halten Sie Pläne kurz und an Runbooks gebunden, testen Sie Wiederherstellungen und Failovers und machen Sie die Abhängigkeiten der Wiederherstellung sichtbar. Verfolgen Sie die Befunde jeder Übung, bis sie geschlossen sind.

### Führung und Governance

Führungskräfte setzen die Ziele und bezahlen sie. Verlangen Sie die Geschäftsauswirkungsanalyse und die Wiederherstellungsziele, verstehen Sie, was sie kosten, und nehmen Sie an einer Übung teil. Akzeptieren Sie, dass manche Services länger zur Wiederherstellung brauchen werden, und treffen Sie die Entscheidung bewusst.

### Kunden und Nutzer

Kunden und Nutzende hängen davon ab, dass der Service weiterläuft oder zurückkehrt. Sagen Sie dem Anbieter, wie lange Sie ohne ihn auskommen und welche Daten Sie nicht verlieren können. Fragen Sie nach seinen Continuity-Vorkehrungen und danach, was Sie in einer Katastrophe tun sollten, etwa einen alternativen Weg, dringende Arbeit einzureichen.

## Typische Fehlerbilder

- **Ein Plan, den niemand getestet hat.** Der erste Test ist die Katastrophe. Beginnen Sie stattdessen mit Planspielen und gehen Sie zu technischen Wiederherstellungen über.
- **Ziele, die niemand vereinbart hat.** Die Wiederherstellungszeit wurde von jemandem geschrieben, der gegangen ist. Legen Sie stattdessen Wiederherstellungszeit und -punkt mit den Verantwortlichen des Geschäfts fest und halten Sie die Kosten fest.
- **Backups, die nie wiederhergestellt wurden.** Backups existieren, aber die Wiederherstellung scheitert. Testen Sie stattdessen Wiederherstellungen nach Plan und messen Sie die Zeit.
- **Die Wiederherstellung hängt von dem ab, was ausgefallen ist.** Runbooks, Geheimnisse und Werkzeuge liegen im ausgefallenen System. Bilden Sie stattdessen die Abhängigkeiten der Wiederherstellung ab und halten Sie Kopien anderswo.
- **Eine Stufe für alles.** Alle Services erhalten die teuerste Behandlung oder keiner. Stufen Sie Services stattdessen nach Bedarf ein.
- **Veraltete Pläne.** Systeme ändern sich, Pläne nicht. Halten Sie Pläne stattdessen bei Code und überprüfen Sie sie, wenn sich Services ändern.
- **Menschen ignorieren.** Pläne nehmen an, dass das übliche Personal verfügbar ist. Planen Sie stattdessen für Abwesenheit und für Kommunikation, wenn Kanäle ausfallen.
- **Lieferanten ignorieren.** Kritische Abhängigkeiten haben keine Continuity-Vorkehrungen. Fragen Sie stattdessen Lieferanten und beziehen Sie sie in Übungen ein.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Auswirkungsanalyse und Ziele | Kritische Services werden angenommen | Einige Services haben grobe Wiederherstellungsziele | Kritische Services haben vereinbarte Wiederherstellungszeit und -punkt, mit Kosten | Ziele werden an Übungsergebnissen und geschäftlichem Wandel überprüft | Ziele werden mit Kunden, Lieferanten und Aufsichtsbehörden abgestimmt |
| Pläne und Wiederherstellungsentwurf | Wiederherstellung wird improvisiert | Einige Services haben Wiederherstellungsnotizen | Pläne und Wiederherstellungscode existieren für kritische Services und werden beim System gehalten | Aktualität der Pläne und Wiederherstellungszeit werden gemessen und verbessert | Wiederherstellung wird über Services, Teams und Lieferanten koordiniert |
| Übungen und Tests | Wenig oder kein Testen | Einige Wiederherstellungen werden getestet | Planspiele und technische Tests finden nach Plan statt | Befunde werden bis zum Abschluss verfolgt und Tests dem Risiko angepasst | Übungen schließen Lieferanten ein und überspannen Organisationen |
| Kommunikation und Menschen | Kommunikation ist ad hoc | Es gibt einige Kontaktlisten | Pläne decken ab, wer wen informiert, mit Wegen außerhalb der üblichen Kanäle und Vertretungen | Kommunikations- und Personallücken werden gemessen und geschlossen | Kommunikation wird mit Kunden, Lieferanten und Aufsichtsbehörden geprobt |

## Checkliste

- [ ] Wir haben unsere kritischen Services mit den Verantwortlichen des Geschäfts identifiziert.
- [ ] Jeder kritische Service hat eine vereinbarte Wiederherstellungszeit und einen Wiederherstellungspunkt, mit bekannten Kosten.
- [ ] Services sind in Stufen gruppiert, die zu ihrem Wiederherstellungsbedarf passen.
- [ ] Ein kurzer Wiederherstellungsplan existiert, mit der Angabe, wer ihn auslösen kann und wie man sie erreicht.
- [ ] Wiederherstellungscode, Konfiguration und Runbooks liegen in der Versionsverwaltung und werden mit Änderungen überprüft.
- [ ] Runbooks, Geheimnisse und Werkzeuge, die für die Wiederherstellung nötig sind, überleben den Verlust der primären Umgebung.
- [ ] Eine Wiederherstellung aus dem Backup wurde im letzten Jahr für jeden kritischen Service getestet.
- [ ] Im letzten Jahr wurde eine Planspielübung abgehalten, und die Befunde werden verfolgt.
- [ ] Kommunikationsvorlagen und Wege außerhalb der üblichen Kanäle existieren.
- [ ] Kritische Lieferanten wurden nach ihren eigenen Continuity-Vorkehrungen gefragt.

## KI-Prompts

**Zweck: die Fragen für eine Geschäftsauswirkungsanalyse entwerfen.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: eine Planspielübung planen.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Zweck: Übungsnotizen in eine Lückenliste verwandeln.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Zweck: eine kurze Gliederung eines Wiederherstellungsplans für einen Service schreiben.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## KI-Skills

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): nutzen Sie ihn, um den Plan auf Organisationsebene zu schreiben, der kritische Funktionen am Laufen hält.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): nutzen Sie ihn, um die technische Wiederherstellung von IT-Services zu planen.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): nutzen Sie ihn, um Wiederherstellungs- und Failover-Tests zu entwerfen.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): nutzen Sie ihn, um zu planen, was Sie Kunden, Personal und Öffentlichkeit bei einer Störung sagen.
- [risk-register](../../../../skills/risk-register/SKILL.md): nutzen Sie ihn, um Continuity-Risiken und deren Steuerung festzuhalten.

## Wichtige Quellen

- **Business continuity planning** (Wikipedia): Definitionen von Continuity, Geschäftsauswirkungsanalyse, Wiederherstellungszielen, Übungen und Standards.
- **ISO 22301** (International Organization for Standardization): der Anforderungsstandard für Business-Continuity-Managementsysteme; lesen Sie den Standard für Konformitätsaussagen.
- **Incident management** (Wikipedia): der Überblick über mehrere Felder, der Continuity neben die Incident-Reaktion stellt.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): die Ökonomie der Zuverlässigkeit, die Wiederherstellungsziele rahmt.

## Referenzen

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
