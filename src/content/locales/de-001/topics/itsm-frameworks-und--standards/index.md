# ITSM-Frameworks und -Standards

**Das IT-Service-Management kennt viele Frameworks und Standards, die sich überschneiden, und die nützliche Fähigkeit ist zu wissen, wofür jedes da ist: eine Anleitung zum Lernen, ein Standard, gegen den man zertifiziert werden kann, oder ein Governance-Modell, das sagt, was zu kontrollieren ist.**

## Warum das wichtig ist

Fragen Sie fünf Menschen, was "wir folgen der ITSM-Best-Practice" bedeutet, und Sie bekommen vielleicht fünf Antworten: ITIL, ISO/IEC 20000, COBIT, FitSM oder "was auch immer das Werkzeug des Herstellers tut". Die Begriffe werden locker verwendet, und die Unterschiede sind wichtig. Ein Kunde, der eine Zertifizierung nach ISO/IEC 20000 verlangt, lässt sich mit ITIL-Schulung nicht zufriedenstellen. Einem Prüfer, der nach COBIT-Kontrollen fragt, hilft eine Prozesslandkarte des Service Desk nicht.

Für agile Teams ist die Frage praktisch: Mit welchen davon müssen wir uns befassen, und welche können wir als Ideenquelle behandeln? Viele Teams sind überrascht zu erfahren, dass ITIL, der bekannteste, eine Anleitung ist, in der Einzelpersonen zertifiziert werden, und kein Standard für Organisationen. Andere sind überrascht, dass der wichtigste ITSM-Standard kürzlich Anleitung zu agilen und DevOps-Arbeitsweisen ergänzt hat.

Dieses Thema vergleicht die wichtigsten Frameworks und Standards und nutzt dafür die [Wikipedia-Artikel zu IT Service Management](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) und [FitSM](https://en.wikipedia.org/wiki/FitSM). Diese Artikel sind von unterschiedlicher Qualität, und mehrere tragen Pflegehinweise. Wo sie schwach sind, sagt dieses Thema das. Prüfen Sie die eigenen Veröffentlichungen der Eigner, bevor Sie sich für einen Vertrag oder ein Audit auf irgendein Detail verlassen.

## Kernkonzepte

### Drei Arten von Dingen

Die Namen in diesem Thema fallen in drei Gruppen. Sie auseinanderzuhalten vermeidet viele verwirrte Gespräche.

| Art | Was sie Ihnen gibt | Im Wikipedia-Artikel zu ITSM genannte Beispiele |
|---|---|---|
| **Anleitung (ein Framework oder eine Bibliothek)** | Ideen und beschriebene Praktiken zum Anpassen | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Ein zertifizierbarer Standard** | Anforderungen, gegen die eine Organisation geprüft und zertifiziert werden kann | ISO/IEC 20000 |
| **Ein Governance- oder Fähigkeitsmodell** | Eine Möglichkeit, IT zu lenken, zu kontrollieren oder zu bewerten | COBIT, CMMI, TOGAF |

FitSM steht zwischen den ersten beiden, wie unten beschrieben.

### ITIL

ITIL ist Anleitung zu ITSM und IT-Asset-Management. Zertifizierung gibt es für Einzelpersonen, und eine unabhängige Bewertung der ITIL-Konformität einer Organisation existiert nicht (siehe Thema 2.2 — ITIL). Es ist die am weitesten verbreitete Quelle von Vokabular.

### ISO/IEC 20000

ISO/IEC 20000 ist ein internationaler Standard für IT-Service-Management. Laut Wikipedia legt Teil 1 Anforderungen an ein Service-Management-System fest, das Planung, Lieferung und Verbesserung von Services abdeckt. Er wurde aus BS 15000 entwickelt, geschaffen von der BSI Group, und erstmals im Dezember 2005 veröffentlicht. Es folgten Aktualisierungen: Teil 1 im Juni 2011 und eine zweite Überarbeitung, ISO/IEC 20000-1:2018, am 15. Juli 2018 veröffentlicht, wonach zertifizierte Organisationen eine dreijährige Übergangsfrist hatten. Die Ausgabe 2018 hat zehn Abschnitte nach der High-Level-Struktur von ISO.

Der Standard hat viele Teile. Der Artikel listet unter anderem auf: Anleitung zur Anwendung eines Service-Management-Systems (Teil 2); Anleitung zu Geltungsbereich und Anwendbarkeit (Teil 3); Anleitung zur Umsetzung (Teil 5); Anforderungen an Zertifizierungsstellen (Teil 6); Konzepte und Vokabular (Teil 10); und eine technische Spezifikation zur Beziehung zu ITIL 4 (Teil 11). Er listet auch kürzlich veröffentlichte Teile von 2023 bis 2025 mit Anleitung zu Service Integration and Management (SIAM), Agilität und DevOps sowie Nachhaltigkeit auf. Wikipedia sagt nicht, welche Teilnummer welches Thema abdeckt, prüfen Sie also den ISO-Katalog, bevor Sie eine zitieren.

Organisationen können zertifiziert werden, und Einzelpersonen können Qualifikationen bei Stellen wie APMG-International, EXIN und PECB erwerben. Der Artikel berichtet, dass die ISO-Erhebung 2024 27.332 Zertifikate zählte, davon 24.056 in China. Das zeigt, wie ungleich Zertifizierung über Länder verteilt ist, nehmen Sie also nicht an, dass ein Kunde anderswo sie verlangen wird.

Wikipedia sagt, der Standard sei ursprünglich entwickelt worden, um die ITIL-Best-Practice widerzuspiegeln, markiert diese Behauptung aber mit "citation needed". Behandeln Sie die Beziehung als eng, aber nicht identisch. Der Artikel sagt auch, der Standard unterstütze andere Frameworks wie das Microsoft Operations Framework und Teile von COBIT.

### COBIT

COBIT ist laut Wikipedia ein von ISACA geschaffenes Framework für IT-Management und -Governance. Es verknüpft Geschäftsziele mit IT-Zielen und definiert Verantwortlichkeiten für Fachbereiche und IT-Teams. Der Artikel beschreibt fünf Prozessbereiche: Evaluate, Direct and Monitor; Align, Plan and Organize; Build, Acquire and Implement; Deliver, Service and Support; sowie Monitor, Evaluate and Assess. Er nennt diese Daten: erstmals 1996 veröffentlicht, Version 5 im Jahr 2012, und sagt, ISACA biete Zertifizierung zu COBIT 2019 und COBIT 5 an. Der Artikel verknüpft COBIT mit ITIL, ISO 27000, CMMI, TOGAF und dem PMBOK Guide des Project Management Institute.

Der Artikel selbst trägt Pflegehinweise zu Primärquellen und fehlenden Belegen, und eine Behauptung, das Framework helfe Unternehmen, Gesetze einzuhalten und agiler zu sein, stützt sich auf eine einzige Quelle. Nutzen Sie die eigenen Veröffentlichungen von COBIT als Autorität.

### FitSM

FitSM ist eine Familie schlanker Standards. Wikipedia sagt, sie sei aus FedSM hervorgegangen, einem von der EU finanzierten Projekt zur Verbesserung des Service-Managements in föderierten E-Infrastrukturen, und überarbeitete Ergebnisse seien ab Mai 2013 unter dem Namen FitSM veröffentlicht worden. FitSM-1 enthält etwa 85 prüfbare Anforderungen, die allgemeine Anforderungen und 14 Prozesse abdecken, und ist viel kürzer als ISO/IEC 20000 Teil 1, bei ähnlichem Umfang und Stil. Alle Teile werden unter Creative-Commons-Lizenzen veröffentlicht. Organisationen können nicht als FitSM-konform zertifiziert werden, doch die Konformität kann geprüft werden, und ein Personenzertifizierungsschema begann 2013.

FitSM ist nützlich für kleine Teams, die einen kurzen Anforderungssatz wollen. Der Artikel nennt weder die aktuelle Version noch den Status der pflegenden Gruppe, prüfen Sie diese also, bevor Sie sich darauf verlassen.

### Andere Namen

Der ITSM-Artikel listet auch das Folgende auf. Dieser Leitfaden behandelt sie nicht weiter.

- **CMMI:** ein Modell zum Aufbau, zur Steuerung und zur Verbesserung von Services und Prozessen.
- **TOGAF:** ein Framework, das Geschäftsziele mit Architekturzielen verknüpft.
- **Microsoft Operations Framework:** Service-Management-Anleitung auf Basis von Microsoft-Technologien.
- **Application Services Library und Business Information Services Library:** Frameworks für das Anwendungsmanagement und für das Informationsmanagement.
- **USM:** ein prinzipienbasiertes System, das die niederländische Regierung übernommen hat.

Der Artikel fügt hinzu, dass ITSM-Frameworks auf ISO 9000, ISO/IEC 27000 und CMMI zurückgegriffen haben. Das Sicherheitsmanagement hat eine eigene Familie von Standards (siehe Thema 3.13 — Informationssicherheitsmanagement).

### Agilität und DevOps in den Standards

Der Artikel zu ISO/IEC 20000 listet einen kürzlich erschienenen Teil des Standards mit Anleitung zu Agilität und DevOps auf. Das ist bemerkenswert, weil es zeigt, dass das Normungsgremium agile Arbeitsweisen als etwas behandelt, das ein Service-Management-System aufnehmen muss. Der Artikel gibt keine Einzelheiten zum Inhalt, lesen Sie den Standard also selbst, wenn Sie ihn brauchen. Währenddessen beschreibt sich ITIL 4 als ausgerichtet an Agile, DevOps und Lean (siehe Thema 2.2 — ITIL), und der Wikipedia-Artikel zu ITSM erwähnt Agilität überhaupt nicht. Die Quellen unterscheiden sich darin, wie sehr sie aufgeholt haben.

### Wählen

Es gibt kein einzig richtiges Framework. Ein vernünftiger Weg zur Wahl ist zu fragen, was Sie brauchen:

| Wenn Sie brauchen… | Erwägen Sie… |
|---|---|
| Ein gemeinsames Vokabular und Ideen für Praktiken | ITIL |
| Zertifizierung Ihres Service-Management-Systems für Kunden oder Ausschreibungen | ISO/IEC 20000 |
| Einen kurzen, prüfbaren Satz von Anforderungen für ein kleines Team | FitSM |
| Governance und Kontrolle der IT im Unternehmen, verknüpft mit Geschäftszielen | COBIT |
| Bewertung der Prozessfähigkeit | CMMI |

Diese Tabelle ist die Zusammenfassung des Leitfadens, keine Empfehlung eines Framework-Eigners.

## Bewährte Praktiken

1. **Beginnen Sie bei der Frage, die Sie beantworten müssen.** Schreiben Sie auf, was Sie brauchen: Vokabular, Zertifizierung, Kontrolle oder Bewertung. Wählen Sie das Framework, das sie beantwortet, und nicht das mit dem besten Marketing.
2. **Lernen Sie den Unterschied zwischen Anleitung und Standards.** Bringen Sie dem Team bei, dass die ITIL-Zertifizierung für Einzelpersonen gilt, die ISO/IEC-20000-Zertifizierung für Organisationen und COBIT ein Governance-Modell ist. Viele Verwechslungen bei Verträgen und Audits beginnen hier.
3. **Finden Sie heraus, was Kunden und Aufsichtsbehörden tatsächlich verlangen.** Fragen Sie nach der genauen Klausel oder Anforderung. Oft ist die Bitte um ein "anerkanntes Framework", und eine kurze, ehrliche Beschreibung Ihrer Praxis genügt.
4. **Nutzen Sie für Compliance den Standardtext, nicht Zusammenfassungen.** Wenn Sie Konformität behaupten, arbeiten Sie vom ISO-Standard oder von der Veröffentlichung des Framework-Eigners aus. Zusammenfassungen, auch diese, dienen nur der Orientierung.
5. **Bilden Sie Ihre Praxis einmal ab, nicht viermal.** Wenn Sie mehr als ein Framework erfüllen müssen, erstellen Sie eine einzige Beschreibung Ihrer Praxis und ordnen Sie sie jedem zu, statt getrennte Dokumente zu schreiben.
6. **Halten Sie das System so klein wie möglich.** ISO/IEC 20000 verlangt ein Service-Management-System und Aufzeichnungen. Erfüllen Sie jede Anforderung mit dem leichtesten Ansatz, der funktioniert, und automatisieren Sie Nachweise aus Ihren Werkzeugen.
7. **Achten Sie auf den Geltungsbereich.** Ein Zertifikat deckt einen erklärten Geltungsbereich ab. Wählen Sie einen Geltungsbereich, der echte Services und Teams widerspiegelt, und schließen Sie nicht die Teile aus, die das Zertifikat schwierig machen.
8. **Prüfen Sie die Anleitung zu Agilität und DevOps in den Standards, die Sie nutzen.** Wo ein Standard Anleitung zu Agilität und DevOps hat, lesen Sie sie, bevor Sie mit einem Prüfer darüber streiten, wie ein agiles Team eine Anforderung erfüllen kann.
9. **Erwägen Sie leichtere Optionen für kleine Teams.** FitSM oder eine Teilmenge von ITIL kann zu einem kleinen Team besser passen als ein vollständiges zertifiziertes System. Notieren Sie, worauf Sie verzichten, etwa auf eine externe Zertifizierung.
10. **Halten Sie Sicherheit und Service-Management im Einklang.** Wenn Sie ISO/IEC 27001 für Informationssicherheit nutzen, teilen Sie Aufzeichnungen und Reviews mit Ihrem Service-Management-System, um doppelte Arbeit zu vermeiden (siehe Thema 3.13 — Informationssicherheitsmanagement).
11. **Dokumentieren Sie Ihre Anpassung.** Halten Sie fest, welche Teile eines Frameworks Sie nutzen, welche nicht und warum. Das schützt Sie in Audits und hilft neuen Mitarbeitenden.
12. **Überprüfen Sie jährlich.** Standards und Frameworks ändern sich. Bestimmen Sie jemanden, der Aktualisierungen verfolgt und berichtet, was für Ihr Team wichtig ist (siehe Thema 6.4 — Lernpfade und Zertifizierung).

## Fragen zur Diskussion im Team

**Welche dieser Frameworks oder Standards müssen wir nutzen, und welche nutzen wir aus Gewohnheit?**

Listen Sie auf, was Kunden, Verträge, Aufsichtsbehörden und Führungskräfte tatsächlich verlangen, mit dem Dokument, das es sagt. Listen Sie dann auf, was das Team ohne Anforderung nutzt. Die beiden Listen unterscheiden sich oft stärker als erwartet. Die Moderation kann fragen, wer jedes zuerst eingeführt hat und warum. Finden Sie anschließend den genauen Wortlaut jeder Anforderung, die Arbeit antreibt.

**Wenn ein Kunde fragte, ob wir "ITIL-zertifiziert" sind, was würden wir antworten?**

Üben Sie eine ehrliche Antwort: Einzelpersonen können zertifiziert werden, Organisationen nicht, und hier ist, was wir tun. Vergleichen Sie Antworten. Manche werden übertreiben. Besprechen Sie, was der Kunde wahrscheinlich braucht und welcher Nachweis es erfüllen könnte, etwa eine Zertifizierung nach ISO/IEC 20000 oder eine Beschreibung der Praxis. Vereinbaren Sie einen Satz, den alle nutzen können.

**Was würde es uns kosten, nach ISO/IEC 20000 zertifiziert zu werden, und was gewännen wir?**

Fragen Sie, welche Kunden oder Märkte es schätzen würden und was das Team ändern müsste. Raten Sie nicht bei den Kosten; holen Sie echte Angebote ein oder fragen Sie eine Kollegin, die es getan hat. Listen Sie die Vorteile auf, die Sie beschreiben können: ein anerkanntes Etikett, ein diszipliniertes System, Zugang zu Ausschreibungen. Entscheiden Sie, ob Sie weiter nachforschen.

**Woher kommen unsere Aufzeichnungen für das Audit, und könnten unsere Werkzeuge sie automatisch erzeugen?**

Listen Sie die Aufzeichnungen auf, nach denen Prüfer fragen, und woher jede kommt. Viele können aus Versionsverwaltung, Ticket-Werkzeugen und Monitoring stammen, wenn sie entsprechend konfiguriert sind. Fragen Sie, welche Aufzeichnungen von Hand entstehen und warum. Wählen Sie eine zum Automatisieren.

**Wie passen unsere agilen Praktiken zu dem, was die Standards erwarten, und wo ist die Lücke?**

Nehmen Sie eine Anforderung, die Ihrem Prüfer wichtig ist, etwa die Genehmigung von Änderungen, und beschreiben Sie, wie ein agiles Team sie erfüllt. Wo der Standard Anleitung zu Agilität und DevOps hat, lesen Sie den betreffenden Text gemeinsam. Notieren Sie Lücken beim Nachweis, nicht bei der Absicht.

**Wer verfolgt für uns Änderungen an diesen Frameworks?**

Fragen Sie, wer die Ankündigungen der Framework-Eigner und Normungsgremien liest. Eine häufige Antwort ist "niemand". Entscheiden Sie, wer es tun wird, wie berichtet wird und wann. Die Moderation kann eine kurze Notiz einmal im Quartal vorschlagen, die auflistet, was sich geändert hat und ob es zählt.

## In der Praxis: ein agiles ITIL-Beispiel

Ein Softwareunternehmen mit 120 Beschäftigten verkauft ein gehostetes Terminplanungsprodukt an Krankenhäuser und Universitäten. Die Ausschreibung eines großen Universitätskunden verlangt "ein zertifiziertes IT-Service-Management-System". Die Gründer hatten angenommen, ihre ITIL-geschulte Support-Leitung genüge. Die Support-Leitung erklärt, dass die ITIL-Zertifizierung für Einzelpersonen gilt und die Ausschreibung höchstwahrscheinlich ISO/IEC 20000 meint.

Die Betriebsleitung geht der Sache nach. Sie liest den Wortlaut der Ausschreibung, der ISO/IEC 20000-1 nennt, und fragt den Kunden, welchen Geltungsbereich er erwartet. Sie liest das Inhaltsverzeichnis des Standards und vergleicht seine zehn Abschnitte mit den vorhandenen Aufzeichnungen des Unternehmens, die überwiegend aus dem Ticket-Werkzeug, dem Änderungsverlauf und Incident-Reviews stammen. Sie stellt fest, dass vieles an Nachweisen bereits existiert, es aber keine dokumentierten Service-Management-Richtlinien, keine förmlichen Lieferantenreviews und keinen Management-Review gibt. Sie stellt außerdem fest, dass der Standard nun einen Teil mit Anleitung zu Agilität und DevOps hat, was ihr hilft, einem künftigen Prüfer die wöchentlichen Releases des Unternehmens zu erklären.

Das Unternehmen beschließt, die Zertifizierung nur für das gehostete Produkt anzustreben, mit einem bescheidenen Satz von Dokumenten und einem vierteljährlichen Management-Review. Es plant etwa ein Jahr Arbeit. Nicht alles läuft glatt. Zwei Ingenieure widersetzen sich den zusätzlichen Aufzeichnungen, und ein Lieferant weigert sich, förmliche Service-Review-Berichte zu liefern. Die Betriebsleitung ersetzt einige manuelle Aufzeichnungen durch Exporte aus den Werkzeugen des Unternehmens und verhandelt mit dem Lieferanten eine leichtere Review-Regelung. Das Unternehmen gewinnt die Ausschreibung und beschließt, beim nächsten Überwachungsaudit zu prüfen, ob das System den wöchentlichen Releases hilft oder sie behindert.

## Vier Perspektiven

### Produkt- und Delivery-Teams

Delivery-Teams begegnen diesen Frameworks als Anforderungen von Kunden und Prüfern. Lernen Sie, welche Anforderung gilt, und fragen Sie, welche Nachweise akzeptabel sind. Viele Anforderungen lassen sich aus den Werkzeugen erfüllen, die Sie bereits nutzen. Bieten Sie an, Ihren Release-Prozess in der Sprache des Standards zu erklären.

### Service- und Betriebsteams

Betriebsteams tragen meist das Managementsystem. Halten Sie Aufzeichnungen nützlich, mit einem erklärten Zweck für jede. Achten Sie auf Anforderungen, die sich über Frameworks hinweg doppeln, und ordnen Sie sie einmal zu. Teilen Sie den Plan mit Delivery-Teams, damit Aufzeichnungen ein Nebenprodukt der Arbeit sind und keine eigene Aufgabe.

### Führung und Governance

Führungskräfte entscheiden, welche Frameworks sie übernehmen und wie viel sie in Zertifizierung investieren. Fragen Sie nach dem Business Case und danach, was Kunden tatsächlich verlangen. Seien Sie vorsichtig, Zertifizierung als Etikett zu kaufen. Stellen Sie sicher, dass das System der Organisation hilft, sich zu verbessern, und dass jemand es verantwortet.

### Kunden und Nutzer

Kunden, die nach Zertifizierung fragen, wollen oft Zusicherung. Fragen Sie Anbieter, welchen Standard und welchen Geltungsbereich ihr Zertifikat abdeckt und was außerhalb liegt. Ein Zertifikat ist ein Nachweis für ein Managementsystem, keine Garantie für irgendein einzelnes Ergebnis.

## Typische Fehlerbilder

- **Zertifizierung von Einzelpersonen und von Organisationen verwechseln.** Teams behaupten "ITIL-zertifiziert" für ein Unternehmen. Nennen Sie stattdessen genau, was von wem zertifiziert ist.
- **Zertifizierung als Etikett jagen.** Das System existiert für das Audit, nicht für Verbesserung. Machen Sie die Aufzeichnungen stattdessen zuerst für das Team nützlich.
- **Dokumente über Frameworks hinweg doppeln.** Jeder Standard bekommt seinen eigenen Ordner. Beschreiben Sie stattdessen Ihre Praxis einmal und ordnen Sie sie zu.
- **Den Geltungsbereich verengen, um schwierige Teile zu vermeiden.** Das Zertifikat schließt die Services aus, die Kunden wichtig sind. Wählen Sie stattdessen einen Geltungsbereich, der echte Services widerspiegelt.
- **Sich auf Zusammenfassungen verlassen.** Konformitätsbehauptungen stützen sich auf Blogbeiträge. Arbeiten Sie stattdessen vom Text des Standards oder des Framework-Eigners aus.
- **Anleitung zu Agilität ignorieren.** Teams streiten mit Prüfern, ohne den Teil des Standards zu lesen, der Agilität und DevOps behandelt. Lesen Sie ihn stattdessen und bereiten Sie Beispiele vor.
- **Überdokumentieren.** Das System erzeugt mehr Aufzeichnungen, als jemand liest. Verbinden Sie stattdessen jede Aufzeichnung mit einem Zweck und automatisieren Sie Nachweise.
- **Änderungen vergessen.** Der Standard entwickelt sich weiter, und das Team merkt es nicht. Benennen Sie stattdessen jemanden, der Aktualisierungen verfolgt.

## Reifegradmodell

| Dimension | Beginn | Aufbau | Standardisierung | Steuerung | Orchestrierung |
|---|---|---|---|---|---|
| Verständnis der Frameworks | Namen werden locker verwendet | Einige Mitarbeitende können sagen, wofür jedes Framework da ist | Teams teilen eine kurze, zutreffende Beschreibung der genutzten Frameworks | Die Nutzung von Frameworks wird an Anforderungen und Ergebnissen überprüft | Teams, Kunden und Lieferanten teilen ein zutreffendes Verständnis |
| Anforderungen und Geltungsbereich | Anforderungen werden angenommen | Einige Anforderungen sind auf Dokumente zurückgeführt | Anforderungen und Geltungsbereich sind dokumentiert | Compliance und Geltungsbereich werden überprüft und Lücken verfolgt | Anforderungen werden mit Partnern und Kunden abgestimmt |
| Nachweise | Nachweise werden für jede Anfrage von Hand zusammengestellt | Einige Aufzeichnungen werden aus Werkzeugen erzeugt | Nachweise stammen überwiegend aus Werkzeugen und sind einheitlich beschrieben | Die Qualität der Nachweise wird gemessen und verbessert | Nachweise werden automatisch mit Prüfern und Partnern geteilt |
| Aktualität | Änderungen an Frameworks bleiben unbemerkt | Einige Personen verfolgen Ankündigungen | Eine benannte Person berichtet Änderungen in festen Abständen | Änderungen werden bewertet und es wird danach gehandelt | Änderungen werden vorausgesehen und mit Partnern angegangen |

## Checkliste

- [ ] Wir können benennen, welche Frameworks und Standards Kunden, Verträge oder Aufsichtsbehörden tatsächlich verlangen.
- [ ] Wir wissen, welche Anleitung, welche zertifizierbare Standards und welche Governance-Modelle sind.
- [ ] Unsere Aussagen zur Zertifizierung sind zutreffend und nennen den Geltungsbereich.
- [ ] Für jede Compliance-Behauptung arbeiten wir mit dem Text des Standards oder des Eigners.
- [ ] Unsere Praxis ist einmal beschrieben und jedem Framework zugeordnet, das wir erfüllen müssen.
- [ ] Nachweise für Audits stammen überwiegend aus unseren Werkzeugen.
- [ ] Wir haben die Anleitung zu Agilität und DevOps in den Standards gelesen, die für uns gelten.
- [ ] Jemand ist benannt, der Aktualisierungen verfolgt und berichtet.
- [ ] Unsere Entscheidungen zur Anpassung sind aufgeschrieben.
- [ ] Wir haben überprüft, ob unser Geltungsbereich zu den echten Services passt.

## KI-Prompts

**Zweck: eine Kundenanforderung dem Framework-Text zuordnen, der sie stützt.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: Ihre Praxis einmal beschreiben, damit sie mehreren Frameworks zugeordnet werden kann.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Zweck: sich darauf vorbereiten, "Sind Sie ITIL-zertifiziert?" ehrlich zu beantworten.**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Zweck: die Nachweise planen, nach denen ein Audit des Service-Managements fragen könnte.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## KI-Skills

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): nutzen Sie ihn, um Service-Management-Frameworks im weiteren Bild von Unternehmensarchitektur und Governance zu verorten.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): nutzen Sie ihn, um zu planen, wie Sie sich auf ein Audit gegen einen Standard oder eine Vertragsanforderung vorbereiten.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): nutzen Sie ihn, um Prüfungen zu entwerfen, die Nachweise der Konformität automatisch erzeugen.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): nutzen Sie ihn, wenn der Geltungsbereich einer Zertifizierung von Lieferanten abhängt und Sie Lieferantenreviews planen müssen.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): nutzen Sie ihn, wenn Frameworks wie COBIT oder der PMBOK Guide auf Ihr Projektbüro treffen.

## Wichtige Quellen

- **ISO/IEC 20000-1** (International Organization for Standardization): der Standard selbst; lesen Sie Geltungsbereich und Abschnittsüberschriften im ISO-Katalog, bevor Sie Behauptungen aufstellen.
- **ISO/IEC 20000** (Wikipedia): Geschichte, Teile und Zertifizierungslandschaft des Standards, mit Belegen.
- **COBIT** (ISACA und Wikipedia): die eigenen Veröffentlichungen von ISACA sind maßgeblich; der Wikipedia-Artikel gibt Geschichte und Struktur, hat aber schwache Belege.
- **FitSM** (Wikipedia und das FitSM-Projekt): eine kurze, frei lizenzierte Alternative; prüfen Sie die Seiten des Projekts auf die aktuelle Version.

## Referenzen

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
