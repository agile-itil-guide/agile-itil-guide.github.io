# Gestion de la continuité des services

**La gestion de la continuité des services prépare une organisation à maintenir en marche ses services les plus importants, ou à les rétablir rapidement, après une perturbation grave ; sa valeur ne se prouve que par des exercices, pas par le plan posé sur l'étagère.**

## Pourquoi c'est important

La plupart des incidents sont petits et locaux. Quelques-uns ne le sont pas : un incendie de centre de données, la défaillance d'une région de nuage, une attaque par rançongiciel, l'effondrement d'un fournisseur, une pandémie, une inondation. Ces événements menacent la capacité même de l'organisation à livrer, et les traiter demande une planification que la gestion ordinaire des incidents ne couvre pas. Une équipe qui a réfléchi à l'avance à ce qui compte le plus et à la manière dont elle continuera a de bien meilleures chances de s'en sortir.

Les équipes agiles abordent ce sujet avec un défi particulier. Leurs systèmes changent chaque semaine, si bien qu'un plan de continuité écrit une fois et rangé est périmé en quelques mois. Des étapes de reprise qui dépendaient d'un serveur ou d'un script particulier peuvent ne plus être valables. La réponse agile n'est pas d'abandonner la planification mais de faire de la continuité une partie vivante de la façon dont les services sont construits et exploités : une reprise conçue dès le départ, testée souvent et gardée sous contrôle de version avec le code.

L'[article de Wikipédia sur la planification de la continuité d'activité](https://en.wikipedia.org/wiki/Business_continuity_planning) définit la continuité d'activité comme la capacité d'une organisation à continuer à livrer des produits ou des services à des niveaux acceptables après une perturbation, et traite la planification de la continuité comme un sous-ensemble de la gestion des risques. La page « Disaster recovery » de la Wikipédia anglaise n'est qu'une page d'homonymie, avec un avis qu'un article complet est souhaité ; ce sujet utilise donc l'article sur la continuité d'activité pour les définitions et ajoute des conseils pratiques tirés des autres sujets du guide, en précisant ce qui relève de la pratique et non du matériel de source rapporté.

## Concepts clés

### Continuité, reprise et résilience

Les termes sont employés avec laxisme ; utilisez-les donc avec soin :

| Terme | Sens, tel qu'il est largement employé | Accent |
|---|---|---|
| **Continuité d'activité** | La capacité de continuer à livrer des produits ou des services à des niveaux acceptables après une perturbation | Faire tenir l'organisation |
| **Planification de la continuité d'activité** | Créer des dispositifs de prévention et de reprise face aux menaces pour l'organisation | Les plans et les arrangements |
| **Reprise après sinistre informatique** | Maintenir ou rétablir l'infrastructure informatique vitale (la description donnée sur la page d'homonymie de Wikipédia) | La technologie |
| **Continuité des services (ITSM)** | Veiller à ce que les services informatiques puissent être rétablis aux niveaux convenus après une perturbation | Les services informatiques dans le plan plus large |

L'article de Wikipédia dit que la reprise après sinistre recoupe la planification de la continuité d'activité, en particulier dans la phase de solution, et que la continuité est le résultat visé de la mise en œuvre des deux. La gestion de la continuité des services est la vue « services informatiques » du même but.

### Analyse d'impact sur l'activité

Une **analyse d'impact sur l'activité (BIA)** est, selon l'article, une méthode pour identifier et évaluer la manière dont les perturbations affectent les opérations et pour fixer des priorités de reprise. Ses objectifs comprennent l'identification des activités et dépendances critiques, l'évaluation des impacts financiers, opérationnels, de réputation et juridiques, la détermination d'objectifs de reprise et l'information de l'évaluation des risques. Pour les services informatiques, la BIA demande de quels services l'organisation ne peut pas se passer, dans quel ordre ils doivent revenir et de quoi chacun dépend (voir Sujet 4.4 — Gestion de la configuration pour les dépendances).

### Objectifs de reprise

L'article définit deux termes clés :

- **Objectif de temps de reprise (RTO) :** le temps acceptable pour rétablir une fonction.
- **Objectif de point de reprise (RPO) :** la latence de données acceptable, c'est-à-dire la perte de données tolérable.

Il liste aussi la durée maximale tolérable de perturbation. L'article ne donne aucune méthode pour choisir ces valeurs pour une organisation particulière ; elles doivent donc venir du métier : demandez ce que coûtent une heure, un jour et une semaine de panne, et quelles données le métier peut se permettre de perdre. Les fixer est une décision métier avec un prix, car le coût de satisfaction d'un objectif plus serré monte (voir Sujet 3.11 — Disponibilité, capacité et performance).

### Plans

Un plan de continuité ou de reprise décrit qui fait quoi, dans quel ordre, pour rétablir les services critiques après une perturbation. Il doit couvrir : comment le plan est déclenché et par qui, comment les personnes sont informées et réunies, l'ordre de reprise des services, où la reprise aura lieu, d'où viennent les données, comment communiquer avec les clients et le personnel et comment revenir à la normale. Les plans pour les services informatiques doivent renvoyer à des guides d'exploitation pour chaque système (voir Sujet 3.9 — Gestion des connaissances).

### Tests et exercices

L'article cite un livre de 2008 de la British Standards Institution décrivant trois types d'exercices : un exercice **sur table** où un petit groupe discute d'un aspect du plan, un exercice **moyen** où plusieurs équipes travaillent sur plusieurs aspects avec des surprises scénarisées, et un exercice **complexe** qui ajoute l'activation sans préavis, l'évacuation réelle et l'usage d'un site de reprise après sinistre. Il décrit une maintenance sur un cycle annuel ou semestriel, comprenant le test des solutions techniques et des procédures de reprise, avec des constats qui reviennent à la phase d'analyse. Les exercices sont l'endroit où les plans découvrent qu'ils sont faux.

### Niveaux de reprise

L'article mentionne les sept niveaux de reprise après sinistre de SHARE (1992), plus tard mis à jour par IBM en huit niveaux (0 à 7). Les sources lues ici ne détaillent pas les niveaux. Par pratique générale, les organisations classent les services en niveaux selon la rapidité avec laquelle ils doivent être rétablis et adaptent l'approche de reprise et son coût au niveau.

### Normes

L'article cite l'ISO 22301:2019, *Sécurité et résilience — Systèmes de management de la continuité d'activité — Exigences*, qui a remplacé l'édition 2012 et exige des organisations qu'elles définissent des objectifs de continuité, des niveaux de service minimaux acceptables et une durée maximale tolérable de perturbation. L'ISO 22313:2020 donne des lignes directrices pour l'utiliser. Ce sont des normes pour un système de management qu'une organisation peut adopter ; elles ne remplacent pas la planification pratique. Consultez directement le texte de la norme si vos clients ou régulateurs exigent la conformité.

### Continuité agile

Les pratiques agiles et DevOps aident la continuité :

- **L'infrastructure et la configuration en code** permettent de reconstruire les environnements depuis le contrôle de version, ce qui rend la reprise plus rapide et testable.
- **Les chaînes automatisées** peuvent redéployer des services vers un site de reprise.
- **Les mises en production fréquentes** gardent l'équipe exercée au déploiement.
- **Les exercices réguliers** peuvent être traités comme une forme de test dans le carnet.

Elles créent aussi des risques : forte dépendance envers un seul compte de nuage, un système d'intégration continue qui est lui-même un point de défaillance unique et des secrets stockés là où l'on ne peut pas les atteindre en cas de sinistre. Planifiez pour les outils dont la reprise elle-même dépend.

### Facteurs humains

L'article mentionne l'épidémie de SRAS de 2002–2003 comme exemple d'équipes cloisonnées et en rotation, ce qui rappelle que la continuité inclut les personnes : compétences clés réparties entre individus, télétravail, communication quand les canaux normaux tombent en panne et soin du personnel sous stress.

### Limites des sources

L'article ne donne aucune méthode pour fixer des objectifs, aucune orientation sur la fréquence des tests au-delà du cycle de maintenance annuel ou semestriel et aucune recommandation d'outils. C'est un article général sur l'activité, pas un article informatique. Pour le détail technique de la reprise, utilisez la documentation de vos propres plateformes et les compétences du guide sur la planification et le test de la reprise après sinistre.

## Bonnes pratiques

1. **Commencez par une analyse d'impact sur l'activité.** Identifiez les services dont l'organisation ne peut pas se passer, le coût de leur perte dans le temps et ce dont ils dépendent. Faites-le avec les responsables métier, pas à leur place.
2. **Fixez les objectifs de reprise avec le métier.** Pour chaque service critique, convenez d'un temps de reprise et d'un point de reprise et consignez le coût de leur satisfaction. Revoyez-les quand le métier ou la technologie change.
3. **Classez vos services en niveaux.** Regroupez les services selon la rapidité avec laquelle ils doivent revenir et appliquez l'approche de reprise adaptée à chaque niveau. N'appliquez pas l'approche la plus coûteuse à tout.
4. **Rédigez un court plan que les gens peuvent utiliser.** Énoncez comment déclencher le plan, qui décide, qui fait quoi, comment communiquer et l'ordre de reprise. Gardez-le à quelques pages, avec des renvois aux guides d'exploitation.
5. **Gardez les plans avec le code et l'environnement.** Stockez les scripts de reprise, la configuration et les guides d'exploitation sous contrôle de version et revoyez-les quand les services changent. Un plan non mis à jour avec le système échouera.
6. **Planifiez pour les outils dont dépend la reprise.** Veillez à ce que l'accès à la chaîne, aux secrets, à la documentation et aux outils de communication survive à la perte des systèmes qu'ils soutiennent.
7. **Exercez-vous régulièrement.** Commencez par des discussions sur table, passez à des tests techniques de restaurations et de basculements et menez de plus grands exercices pour les services les plus critiques. Planifiez-les comme tout autre travail.
8. **Testez les restaurations, pas seulement les sauvegardes.** Une sauvegarde se prouve en restaurant à partir d'elle. Testez que les données reviennent, dans le point de reprise, et que le service fonctionne avec elles (voir la compétence de test de reprise après sinistre ci-dessous).
9. **Traitez les constats comme des éléments du carnet.** Chaque exercice produit des lacunes. Consignez-les avec des responsables et des dates et vérifiez qu'elles sont traitées avant l'exercice suivant.
10. **Planifiez la communication.** Décidez qui dit quoi aux clients, au personnel, aux régulateurs et au public, et préparez des modèles. Incluez des moyens hors bande de joindre les gens si les canaux normaux sont tombés (voir la compétence de communication de crise ci-dessous).
11. **Incluez les fournisseurs.** Interrogez les fournisseurs critiques sur leurs propres dispositifs de continuité et incluez-les dans les exercices quand vous le pouvez (voir Sujet 3.14 — Gestion des fournisseurs).
12. **Revoyez chaque année, et après tout incident grave ou changement majeur.** Mettez à jour l'analyse, les objectifs et les plans quand le métier ou la technologie change, et pas seulement selon le calendrier.

## Questions à discuter avec votre équipe

**Lesquels de nos services doivent revenir en premier, et comment le savons-nous ?**

Demandez à chaque personne de classer les services par ordre de priorité de reprise. Comparez. Le désaccord est instructif : il montre que l'ordre n'a jamais été convenu avec le métier. L'animateur peut demander ce qu'il en coûterait à l'organisation que chacun soit en panne une heure, un jour et une semaine. Portez la question aux responsables métier et convenez d'une liste.

**Combien de données pourrions-nous perdre, et quelqu'un l'a-t-il accepté ?**

Demandez quand a été faite la dernière sauvegarde des données clés et à quelle fréquence. Comparez avec ce que le métier tolérerait. Beaucoup d'équipes constatent que la réponse n'est pas ce qu'elles supposaient. Discutez de ce que coûterait un point de reprise plus serré. Consignez la décision et qui l'a prise.

**Quand avons-nous restauré une sauvegarde pour la dernière fois, et qu'est-il arrivé ?**

Demandez une vraie date et un vrai résultat. Si la réponse est « jamais », c'est le constat le plus important. Si cela a été fait, demandez ce qui s'est mal passé et ce qui a été corrigé. Planifiez un test de restauration pour un service critique le mois suivant.

**Que devons-nous rétablir qui dépend de la chose qui est tombée en panne ?**

Parcourez un scénario comme la perte d'un compte de nuage ou d'un centre de données. Demandez où vivent les guides d'exploitation, les secrets et la chaîne. Les dépendances envers le système défaillant sont courantes, comme un guide d'exploitation stocké sur un serveur en panne. Listez-les et prévoyez de déplacer ou de copier chacune.

**Qui a l'autorité de déclarer un sinistre et de lancer le plan ?**

Demandez aux gens qui déciderait et s'ils le savent. Tarder à déclencher un plan coûte du temps. Discutez d'une règle claire et d'un suppléant. Vérifiez comment la personne sera jointe si les canaux habituels sont tombés.

**Que ferions-nous si les personnes qui en savent le plus n'étaient pas disponibles ?**

Imaginez le personnel clé injoignable. Demandez qui d'autre pourrait mener la reprise et de quoi il aurait besoin. Cette question relie la continuité à la gestion des connaissances. Prévoyez un moyen de répartir la connaissance critique.

## En pratique : un exemple d'ITIL agile

Le registre foncier d'un gouvernement provincial exploite un service en ligne où avocats et géomètres déposent des transactions immobilières. Une équipe de douze personnes le construit et l'exploite, en utilisant une seule région d'un fournisseur de nuage. Une revue de continuité d'activité constate que le service est classé critique par le ministère, avec une attente qu'il puisse être rétabli en quatre heures, et que personne n'a jamais testé si c'est possible.

L'équipe commence par un exercice sur table. Le scénario : la région de nuage est indisponible pendant un jour. Ils découvrent que les guides d'exploitation sont stockés dans un wiki hébergé dans la même région, que le code d'infrastructure ne couvre qu'une partie de l'environnement et que les sauvegardes de la base de données sont copiées dans la même région. L'attente de quatre heures du ministère se révèle avoir été écrite par un responsable il y a des années et jamais chiffrée. L'équipe et la responsable métier du ministère se rencontrent. La responsable explique ce que signifierait une panne d'un jour pour les échéances de dépôt et convient que quatre heures sont nécessaires les jours de dépôt de fin de mois mais que huit heures sont acceptables le reste du temps.

L'équipe copie guides d'exploitation et sauvegardes dans une seconde région, complète le code d'infrastructure et reconstruit l'environnement à partir du code dans une région de test lors d'un exercice d'une journée. La première tentative prend onze heures, surtout à cause d'étapes manuelles et d'un secret manquant. Après correction, une seconde tentative en prend cinq. Des problèmes subsistent. L'objectif de quatre heures de fin de mois reste hors de portée, le fournisseur d'identité que le personnel utilise pour se connecter n'a aucun dispositif de reprise propre et l'équipe réalise qu'elle dépend d'un fournisseur dont elle n'a jamais vu le plan de continuité. L'équipe met le fournisseur d'identité et la question du fournisseur dans le carnet, et le ministère accepte un temps de reprise plus long pour les périodes hors pointe pendant que le travail se poursuit.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison rendent la reprise possible ou impossible par la conception. Construisez les services pour qu'ils puissent être reconstruits à partir du code, gardez les données répliquées et rédigez les étapes de reprise dans le cadre de « terminé ». Participez aux exercices et corrigez les lacunes qu'ils trouvent.

### Équipes de service et d'exploitation

Les équipes d'exploitation détiennent les plans et mènent les exercices. Gardez les plans courts et reliés aux guides d'exploitation, testez restaurations et basculements et rendez visibles les dépendances de la reprise. Suivez les constats de chaque exercice jusqu'à leur clôture.

### Direction et gouvernance

Les dirigeants fixent les objectifs et les financent. Demandez l'analyse d'impact sur l'activité et les objectifs de reprise, comprenez ce qu'ils coûtent et assistez à un exercice. Acceptez que certains services mettent plus longtemps à être rétablis, et prenez la décision de façon délibérée.

### Clients et utilisateurs

Les clients et utilisateurs dépendent de la continuité ou du retour du service. Dites au fournisseur combien de temps vous pouvez vous en passer et quelles données vous ne pouvez pas perdre. Interrogez-le sur ses dispositifs de continuité et sur ce que vous devriez faire en cas de sinistre, comme une autre manière de soumettre un travail urgent.

## Modes d'échec courants

- **Un plan que personne n'a testé.** Le premier test est le sinistre. À la place, commencez par des exercices sur table et progressez vers des restaurations techniques.
- **Des objectifs que personne n'a acceptés.** Le temps de reprise a été écrit par quelqu'un qui est parti. À la place, fixez le temps et le point de reprise avec les responsables métier et consignez le coût.
- **Des sauvegardes jamais restaurées.** Les sauvegardes existent mais la restauration échoue. À la place, testez les restaurations selon un calendrier et mesurez le temps.
- **La reprise dépend de ce qui est tombé.** Guides d'exploitation, secrets et outils sont dans le système défaillant. À la place, cartographiez les dépendances de la reprise et gardez des copies ailleurs.
- **Un seul niveau pour tout.** Tous les services reçoivent le traitement le plus coûteux, ou aucun. À la place, classez les services en niveaux selon le besoin.
- **Des plans périmés.** Les systèmes changent et pas les plans. À la place, gardez les plans avec le code et revoyez-les quand les services changent.
- **Ignorer les personnes.** Les plans supposent que le personnel habituel est disponible. À la place, planifiez l'absence et la communication quand les canaux sont tombés.
- **Ignorer les fournisseurs.** Des dépendances critiques n'ont aucun dispositif de continuité. À la place, interrogez les fournisseurs et incluez-les dans les exercices.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Analyse d'impact et objectifs | Les services critiques sont supposés | Certains services ont des objectifs de reprise approximatifs | Les services critiques ont des temps et points de reprise convenus, avec les coûts | Les objectifs sont revus au regard des résultats d'exercices et des changements du métier | Les objectifs sont alignés avec clients, fournisseurs et régulateurs |
| Plans et conception de la reprise | La reprise est improvisée | Certains services ont des notes de reprise | Plans et code de reprise existent pour les services critiques et sont gardés avec le système | L'actualité des plans et le temps de reprise sont mesurés et améliorés | La reprise est coordonnée entre services, équipes et fournisseurs |
| Exercices et tests | Peu ou pas de tests | Certaines restaurations sont testées | Des tests sur table et techniques ont lieu selon un calendrier | Les constats sont suivis jusqu'à clôture et les tests ajustés au risque | Les exercices incluent les fournisseurs et couvrent plusieurs organisations |
| Communication et personnes | La communication est ponctuelle | Quelques listes de contacts existent | Les plans couvrent qui prévient qui, avec des voies hors bande et des suppléants | Les lacunes de communication et d'effectifs sont mesurées et comblées | La communication est répétée avec clients, fournisseurs et régulateurs |

## Liste de contrôle

- [ ] Nous avons identifié nos services critiques avec les responsables métier.
- [ ] Chaque service critique a un temps de reprise et un point de reprise convenus, avec le coût connu.
- [ ] Les services sont regroupés en niveaux qui correspondent à leurs besoins de reprise.
- [ ] Un court plan de reprise existe, avec qui peut le déclencher et comment le joindre.
- [ ] Code de reprise, configuration et guides d'exploitation sont sous contrôle de version et revus avec les changements.
- [ ] Les guides d'exploitation, secrets et outils nécessaires à la reprise survivent à la perte de l'environnement principal.
- [ ] Une restauration à partir d'une sauvegarde a été testée pour chaque service critique dans l'année écoulée.
- [ ] Un exercice sur table a été tenu dans l'année écoulée, et les constats sont suivis.
- [ ] Des modèles de communication et des voies hors bande existent.
- [ ] Les fournisseurs critiques ont été interrogés sur leurs propres dispositifs de continuité.

## Prompts d'IA

**Objectif : rédiger les questions d'une analyse d'impact sur l'activité.**

```text
Aidez-moi à préparer une analyse d'impact sur l'activité pour ces services : [listez les services].

À propos de l'organisation : [décrivez le secteur et qui compte sur les services].
Périodes de pointe ou échéances : [listez, ou écrivez « inconnu »].
Règles ou contrats qui fixent des exigences de reprise, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Rédigez, pour chaque service, un court ensemble de questions à poser aux responsables métier sur l'impact d'une panne après une heure, un jour et une semaine (financier, opérationnel, de réputation, juridique), la perte de données qui serait tolérable, de quoi le service dépend et quelles solutions de contournement existent. N'inventez ni impacts ni chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un exercice sur table.**

```text
Concevez un exercice sur table de 90 minutes pour [nombre] personnes de [équipes] sur ce scénario : [décrivez, par exemple « notre région de nuage est indisponible pendant 24 heures »].

Services concernés : [listez].
Plans et guides d'exploitation existants : [décrivez, ou écrivez « aucun »].

Donnez un plan minuté avec : le scénario libéré en trois étapes, des indications pour chaque rôle, des questions sur les dépendances de la reprise (où vivent les guides d'exploitation, les secrets et les outils), les décisions à prendre et par qui, et une étape finale qui consigne les lacunes avec des responsables et des dates. N'utilisez pas d'accès réel à la production. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : transformer les notes d'un exercice en liste de lacunes.**

```text
Ci-dessous figurent les notes d'un exercice de continuité : [collez ce qui s'est passé, ce qui a mal tourné, ce que les gens ont dit].

Listez les lacunes trouvées, regroupées en : plan (ce qui manquait ou était flou), technologie (ce qui a échoué ou été lent), personnes (qui manquait ou hésitait) et dépendances (ce dont dépendait la reprise et qui était lui-même indisponible). Pour chaque lacune, suggérez un titre d'élément de carnet et une question sur la priorité. N'utilisez que les notes. N'inventez pas de causes. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger le plan d'un court plan de reprise pour un service.**

```text
Aidez-moi à esquisser un plan de reprise pour [service].

Ce qu'il fait et qui en dépend : [décrivez].
Temps de reprise et point de reprise convenus, le cas échéant : [collez, ou écrivez « non convenus »].
Où il tourne, où sont conservées les données et les sauvegardes : [décrivez].
Dépendances (autres services, fournisseurs, identité, réseaux) : [listez].
Personnes qui peuvent le rétablir : [rôles].

Rédigez une esquisse de plan de deux pages au plus : comment il est déclenché, qui décide, communication, ordre des étapes de reprise (avec renvois aux guides d'exploitation sous forme de [LIEN]), preuves de test nécessaires et comment revenir à la normale. Marquez chaque élément qui est une hypothèse. N'inventez pas de temps de reprise. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md) : à utiliser pour rédiger le plan, au niveau de l'organisation, de maintien des fonctions critiques.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md) : à utiliser pour planifier la reprise technique des services informatiques.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md) : à utiliser pour concevoir des tests de restauration et de basculement.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md) : à utiliser pour planifier ce que vous dites aux clients, au personnel et au public pendant une perturbation.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner les risques de continuité et la manière dont ils sont gérés.

## Sources principales

- **Business continuity planning** (Wikipedia) : définitions de la continuité, de l'analyse d'impact sur l'activité, des objectifs de reprise, des exercices et des normes.
- **ISO 22301** (International Organization for Standardization) : la norme d'exigences pour les systèmes de management de la continuité d'activité ; lisez la norme pour toute affirmation de conformité.
- **Incident management** (Wikipedia) : la vue d'ensemble multi-domaines qui place la continuité à côté de la réponse aux incidents.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google) : l'économie de la fiabilité qui encadre les objectifs de reprise.

## Références

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
