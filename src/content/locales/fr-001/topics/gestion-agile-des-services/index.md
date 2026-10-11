# Gestion agile des services

**La gestion agile des services applique les valeurs et les méthodes agiles à la conception et à l'amélioration de la gestion des services elle-même, en traitant chaque processus comme un produit avec un responsable, un carnet de produit et des utilisateurs qui peuvent dire s'il fonctionne.**

## Pourquoi c'est important

La plus grande partie de ce guide a regardé comment les équipes agiles peuvent utiliser les pratiques de gestion des services. Ce sujet retourne la question : comment bâtir et modifier de manière agile les pratiques de gestion des services ? Beaucoup d'organisations ont des processus pour les incidents, les changements et les demandes qui ont été conçus une fois, déployés dans un projet, puis laissés tels quels. Ils sont lents à changer, détestés par ceux qui doivent les suivre et en décalage avec la manière dont l'organisation construit désormais ses logiciels. C'est l'opposé de ce que suggérerait le principe du Manifeste d'accueillir le changement (voir Sujet 1.2 — Principes agiles).

Le remède n'est pas d'abandonner le processus mais de le traiter comme quelque chose qui est conçu avec ses utilisateurs, livré par petites étapes et amélioré à partir de preuves. Les principes directeurs d'ITIL 4 le disent : commencer là où l'on est, progresser de façon itérative avec des retours, collaborer et promouvoir la visibilité, et rester simple et pratique (voir Sujet 2.4 — Les principes directeurs ITIL). L'article de Wikipédia sur ITIL dit qu'ITIL 4 a été aligné sur les façons de travailler agiles, DevOps et lean lors de sa publication en 2019. L'article sur l'ISO/IEC 20000 liste des parties récentes de cette norme, dont des orientations sur l'agile et DevOps, sans en donner le contenu.

Il existe peu de recherche formelle sur la gestion agile des services en tant que telle, et les articles de Wikipédia consultés pour ce guide ne la couvrent pas. Ce sujet s'appuie donc sur la description des rôles et des artefacts du Guide Scrum, sur les principes agiles et d'ITIL et sur le reste de ce guide, et offre son approche comme une synthèse pratique à essayer, non comme une méthode établie.

## Concepts clés

### Les processus comme produits

Un **processus**, en ce sens, est toute manière de travailler répétable qu'une organisation de services demande aux gens de suivre : comment signaler un incident, comment demander un accès, comment approuver un changement. Vu comme un produit, un processus a :

- **Des utilisateurs :** les personnes qui le suivent et celles qu'il sert.
- **Un but :** le résultat qu'il existe pour atteindre.
- **Un responsable :** quelqu'un qui répond de sa valeur, comme le Guide Scrum décrit le Product Owner comme la personne unique responsable de maximiser la valeur du produit et d'ordonner son carnet (voir Sujet 1.4 — Prévision de livraison et indicateurs de planification).
- **Un carnet de produit :** une liste ordonnée d'améliorations.
- **Des versions :** des changements livrés par petites étapes, avec des notes.
- **Des mesures :** des preuves que cela fonctionne.

Penser ainsi change les questions. Non pas « avons-nous mis en œuvre le processus de changement ? » mais « le processus de changement aide-t-il les gens à faire leur travail, et quelle est la prochaine amélioration ? »

### Rôles

| Rôle | Dans une équipe produit | Pour un processus de gestion des services |
|---|---|---|
| **Product owner** | Ordonne le carnet et répond de la valeur | Le responsable du processus, qui décide quoi améliorer ensuite et pourquoi |
| **Développeurs / équipe** | Construisent l'incrément | Les personnes qui conçoivent et font fonctionner le processus, idéalement avec des utilisateurs de la livraison et de l'exploitation |
| **Scrum Master ou coach** | Aide l'équipe à appliquer le cadre et lève les obstacles | Un coach qui aide l'équipe à pratiquer la livraison logicielle continue et à recueillir des retours |
| **Parties prenantes** | Examinent l'incrément et donnent un retour | Équipes de livraison, centre de services, auditeurs, clients |

La correspondance est celle de ce guide, non une norme. Dans beaucoup d'organisations, les responsables de processus manquent d'autorité ou de temps ; la première étape est donc souvent de leur donner les deux.

### Le carnet de processus

Les idées d'amélioration d'un processus viennent de nombreux endroits : revues d'incidents, rétrospectives, constats d'audit, plaintes d'utilisateurs et indicateurs (voir Sujet 3.15 — Amélioration continue). Un carnet de processus les rassemble dans une seule liste ordonnée. Les éléments sont petits et décrits du point de vue de l'utilisateur : « En tant que développeur, je veux que les changements à faible risque soient approuvés automatiquement afin de pouvoir livrer quand je suis prêt. » Le responsable du produit ordonne la liste par valeur et effort, et l'équipe prend des éléments dans de courts cycles.

### Livraison continue des changements de processus

Au lieu de concevoir un processus complet et de le déployer, concevez la plus petite version qui pourrait fonctionner, essayez-la avec quelques utilisateurs et apprenez :

| Étape | Ce qui se passe |
|---|---|
| **Trouver le problème** | Observer comment les gens travaillent vraiment et où ils peinent |
| **Concevoir un petit changement** | Un nouveau formulaire, une voie d'approbation plus courte, une liste de contrôle |
| **L'essayer** | Avec une équipe, ou un type de travail, pendant une courte période |
| **Vérifier** | Comparer avec ce qui était attendu, avec des données et de la conversation |
| **Adopter, ajuster ou abandonner** | Étendre ce qui a marché ; corriger ou abandonner ce qui n'a pas marché |

C'est le cycle planifier–faire–vérifier–agir appliqué au processus lui-même (voir Sujet 3.15 — Amélioration continue).

### Concevoir avec les utilisateurs

Les concepteurs de processus qui ne l'utilisent pas font des erreurs évitables. Impliquez les gens qui le suivent : invitez des ingénieurs à concevoir le processus de changement, des analystes du centre à concevoir le formulaire d'incident et des clients à concevoir le catalogue de demandes. Observez le travail réel. Testez avec des cas réels. C'est « la collaboration avec les clients plutôt que la négociation contractuelle » appliquée à l'intérieur de l'organisation (voir Sujet 1.1 — Manifeste agile).

### Processus minimum viable

Un **processus minimum viable** est le plus petit ensemble d'étapes, d'enregistrements et de rôles qui atteint le but. Y ajouter demande une raison. Le principe directeur « rester simple et pratique » le soutient. Un test utile de chaque étape est de demander ce qui arriverait si on la retirait, et qui le remarquerait. Les contrôles exigés par la loi ou un contrat sont conservés, avec la source nommée ; les autres sont questionnés.

### Versions de processus et communication

Quand un processus change, les gens doivent le savoir. Traitez les changements comme des versions : une courte note décrivant ce qui a changé, pourquoi et ce qu'il faut faire autrement, avec un contact pour les questions. Livrez par petites étapes, à un rythme que les gens peuvent suivre, et évitez de surprendre les équipes avec de gros changements. Gardez un historique visible des changements.

### Normes, audits et agilité

Beaucoup d'organisations doivent satisfaire des normes ou des auditeurs. L'ISO/IEC 20000 est une norme pour les systèmes de gestion des services, et Wikipédia en liste une partie récente avec des orientations sur l'agile et DevOps (voir Sujet 2.7 — Cadres et normes ITSM). Un processus construit par petites étapes peut satisfaire les audits si les enregistrements montrent comment il fonctionne et comment il change : le carnet, les notes de version et les mesures sont eux-mêmes des preuves. Discutez tôt avec les auditeurs de ce dont ils ont besoin, et montrez-leur votre manière de travailler.

### Gestion agile des services et DevOps

Les pratiques de DevOps, comme l'automatisation et les chaînes de livraison, sont des outils pour mettre en œuvre les processus (voir Sujet 5.2 — DevOps). Là où une étape de processus peut être automatisée, comme l'enregistrement d'un changement depuis une chaîne, faites-le et traitez l'automatisation comme une partie du processus. La gestion agile des services et DevOps partagent un intérêt pour les cycles courts et le retour rapide.

### Limites

L'approche suppose que les gens ont le temps et le mandat d'améliorer le processus, ce qui n'est pas toujours vrai. Elle peut échouer quand la responsabilité du processus est nominale, quand les parties prenantes exigent une conception achevée avant d'essayer quoi que ce soit, ou quand chaque changement nécessite une longue approbation. Elle risque aussi un remue-ménage constant si les changements sont trop fréquents pour que les gens les absorbent. Équilibrez la livraison continue du changement avec la stabilité : changez à un rythme prévisible.

## Bonnes pratiques

1. **Nommez un responsable pour chaque processus.** Choisissez quelqu'un qui a l'autorité de le changer et le temps de le faire. Clarifiez son rôle : il répond de la façon dont le processus sert son but.
2. **Écrivez un but en une phrase.** Énoncez à quoi sert le processus et qui il sert. Si vous ne le pouvez pas, le processus est peut-être candidat à la suppression.
3. **Tenez un carnet de processus.** Rassemblez les idées issues des revues, audits, retours et données dans une liste ordonnée. Montrez-la à ceux qui suivent le processus.
4. **Impliquez les utilisateurs dans la conception.** Incluez ingénieurs, analystes du centre et clients dans les ateliers et essais. Observez le travail réel avant de le changer.
5. **Commencez par un processus minimum viable.** Concevez la plus petite version qui répond au but et aux besoins légaux. N'ajoutez des étapes que lorsqu'un problème le justifie.
6. **Essayez avant de déployer.** Pilotez avec une équipe ou un type de travail pendant une période courte et définie. Convenez de ce que vous regarderez avant de commencer.
7. **Livrez les changements par petites étapes, à un rythme.** Publiez une courte note pour chaque version du processus, avec un contact. Évitez les gros changements-surprises.
8. **Mesurez le processus.** Choisissez quelques mesures de son bon fonctionnement, comme le temps pris, les reprises et la satisfaction des utilisateurs (voir Sujet 5.6 — Indicateurs et mesure). Revoyez-les avec les utilisateurs.
9. **Automatisez là où cela aide.** Capturez les enregistrements depuis les outils, non depuis des formulaires ; faites de la voie facile la bonne voie. Vérifiez que l'automatisation ne cache pas un jugement que les gens devraient exercer.
10. **Conservez les preuves pour les auditeurs.** Stockez le carnet, les décisions, les notes de version et les mesures là où les auditeurs peuvent les voir. Invitez-les à une revue de la manière dont le processus change.
11. **Retirez du processus.** Supprimez les étapes, formulaires et enregistrements qui ne servent plus leur but. Traitez la suppression comme une amélioration.
12. **Revoyez chaque année la responsabilité des processus.** Vérifiez que chaque processus a encore un responsable actif, un carnet à jour et des utilisateurs qui peuvent le joindre.

## Questions à discuter avec votre équipe

**Qui est responsable de chacun de nos processus, et quelle autorité a-t-il pour le changer ?**

Listez les principaux processus et nommez le responsable de chacun. Demandez ce que le responsable peut changer sans demander à personne. Souvent la réponse est « très peu ». L'animateur peut demander ce qu'il faudrait pour que le responsable fasse rapidement de petits changements. Convenez d'un processus pour commencer.

**À quoi sert notre processus de changement ? Pouvons-nous le dire en une phrase ?**

Demandez à chacun d'écrire un but. Comparez. Les différences montrent la confusion sur la raison d'être du processus. Servez-vous de l'énoncé partagé pour juger chaque étape. Retirez ou questionnez les étapes qui ne le servent pas.

**Quand avons-nous changé un processus pour la dernière fois parce que les utilisateurs l'ont demandé, et comment l'avons-nous su ?**

Demandez des exemples. S'il n'y en a pas, demandez où vont les plaintes. Discutez de la manière dont les retours pourraient atteindre le responsable : un canal, une revue régulière, un court sondage. Choisissez une voie à essayer.

**À quoi ressemblerait un essai d'un mois d'un processus plus simple ?**

Choisissez un processus à friction connue. Décrivez une version plus légère, qui l'essaierait, ce que vous mesureriez et ce qui vous ferait arrêter. Cela transforme une discussion en expérience. Convenez des détails et de la date.

**Quelles preuves nos auditeurs accepteraient-ils d'un processus à livraison continue ?**

Demandez à un auditeur ou à un collègue de la conformité. Listez ce que produit le processus : un carnet, des notes de version, des mesures, des enregistrements. Discutez des lacunes. Les équipes sont souvent surprises de la bonne volonté des auditeurs à accepter une preuve claire de changement maîtrisé.

**Comment les gens apprennent-ils qu'un processus a changé ?**

Retracez le dernier changement. Beaucoup l'ont appris par un collègue ou en tombant dessus. Discutez de notes de version et d'un journal des changements visible. Convenez d'un moyen simple d'annoncer les changements et de l'endroit où ils vivent.

## En pratique : un exemple d'ITIL agile

Une agence nationale de sécurité routière a un service informatique de 90 personnes qui soutient une application utilisée par la police et les tribunaux. Le processus d'incident du service a été écrit il y a huit ans : un formulaire de 14 champs, trois approbations pour clore un incident de haute priorité et un rapport mensuel que personne ne lit. Les équipes de livraison sautent le formulaire pendant les pannes et le remplissent ensuite, si bien que ses enregistrements sont médiocres. Un constat d'audit dit que les enregistrements d'incidents sont incomplets.

La responsable de la gestion des services se nomme responsable du processus d'incident et forme une petite équipe de travail : deux analystes du centre de services, un ingénieur de chacune de deux équipes de livraison et un chargé de qualité de l'unité de gouvernance de l'agence. Elle écrit un but pour le processus : rétablir vite le service et apprendre de ce qui s'est passé. L'équipe observe trois incidents réels. Elle constate que le formulaire est rempli après coup, surtout avec les mêmes quelques valeurs, et que les approbations ajoutent du délai sans jamais changer un résultat. Elle construit un carnet et commence par les plus petits changements. Un essai avec deux équipes réduit le formulaire à six champs remplis automatiquement depuis l'outil de surveillance quand c'est possible, supprime deux des trois approbations et ajoute une courte revue sans blâme pour chaque incident de haute priorité.

Au bout de six semaines, les équipes de l'essai consignent les incidents pendant la panne plutôt qu'après, et le chargé de qualité trouve les enregistrements plus complets qu'avant. L'équipe publie une note de version d'une page, étend le changement à toutes les équipes et montre à l'auditeur le carnet, les résultats de l'essai et les mesures. Certaines difficultés subsistent. Une équipe de livraison n'a jamais rejoint l'essai et utilise toujours l'ancien formulaire, le contrat d'un fournisseur exige un champ que le nouveau formulaire omet, et le chargé de qualité craint que la suppression d'approbations soit remise en question lors du prochain audit. La responsable de la gestion des services ajoute un champ pour le cas du fournisseur, demande à l'équipe restante de rejoindre la prochaine série et convient avec l'auditeur de revoir les enregistrements d'incidents à la prochaine réunion trimestrielle.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison sont les utilisateurs de nombreux processus de gestion des services. Participez à la conception de ceux qui vous touchent, offrez des données sur leur fonctionnement en pratique et essayez des pilotes. Là où une étape de processus peut être automatisée dans votre chaîne, proposez de la construire.

### Équipes de service et d'exploitation

Les équipes d'exploitation sont souvent responsables des processus. Traitez chacun comme un produit : écrivez un but, tenez un carnet, interrogez les utilisateurs et livrez de petits changements. Prenez du temps pour l'amélioration des processus et défendez-le, car le travail de livraison l'écrasera.

### Direction et gouvernance

Les dirigeants donnent aux responsables de processus l'autorité et le temps, et posent l'attente que les processus changent à partir de preuves. Demandez le but et les mesures de chaque processus, ainsi que le carnet. Soutenez les essais et soyez prêt à accepter des preuves sous de nouvelles formes.

### Clients et utilisateurs

Les clients et utilisateurs de services suivent aussi des processus, comme les demandes et les approbations. Dites au responsable ce qui est confus ou lent. Proposez de participer à un essai. Attendez-vous à ce que les changements soient annoncés et expliqués.

## Modes d'échec courants

- **Un processus sans responsable.** Personne ne peut le changer. À la place, nommez un responsable avec autorité et temps.
- **Refonte d'un seul coup.** Un processus entièrement nouveau est déployé d'un coup et rejeté. À la place, changez par petites étapes et pilotez.
- **Conception par comité loin des utilisateurs.** Le processus convient aux concepteurs. À la place, incluez ceux qui le suivent et observez le travail réel.
- **Remue-ménage constant.** Les changements arrivent trop souvent pour être absorbés. À la place, livrez à un rythme prévisible.
- **Oublier les exigences légales.** Un contrôle nécessaire est supprimé. À la place, vérifiez pourquoi chaque étape est exigée et nommez la source.
- **Changements non annoncés.** Les gens les découvrent par hasard. À la place, publiez de courtes notes de version.
- **Preuves non conservées.** L'audit ne peut pas voir comment le processus a changé. À la place, gardez le carnet, les décisions et les mesures.
- **Pas de retrait.** Les étapes s'accumulent. À la place, traitez la suppression comme une amélioration.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Responsabilité et but | Les processus n'ont ni responsable ni but clairs | Certains processus ont des responsables | Chaque processus a un responsable avec autorité et un but écrit | L'efficacité des responsables est revue et ils sont soutenus | Les responsables travaillent ensemble entre équipes pour aligner les processus de bout en bout |
| Carnet et changement | Les changements sont des projets, rares et gros | Certains responsables tiennent des listes d'idées | Chaque processus a un carnet ordonné et livre ses changements par petites étapes | Le flux du carnet et les effets des versions sont mesurés | Les changements de processus sont coordonnés entre processus et avec les fournisseurs |
| Implication des utilisateurs | Les concepteurs consultent rarement les utilisateurs | Quelques essais sont menés avec des utilisateurs | Les utilisateurs participent à la conception et aux essais de manière standard | Le retour et la satisfaction des utilisateurs sont mesurés et suivis d'effet | Clients et fournisseurs participent à la conception des processus |
| Preuves et audit | Les enregistrements sont médiocres et les changements non consignés | Certains changements de processus sont journalisés | Carnet, notes de version et mesures servent de preuves d'audit | Les auditeurs revoient régulièrement l'enregistrement des changements | Les preuves sont partagées en continu avec auditeurs et partenaires |

## Liste de contrôle

- [ ] Chaque processus principal a un responsable nommé avec autorité et temps.
- [ ] Chaque processus a un but en une phrase et un ensemble défini d'utilisateurs.
- [ ] Chaque processus a un carnet d'améliorations visible et ordonné.
- [ ] Des utilisateurs de la livraison et de l'exploitation participent à la conception et aux essais.
- [ ] Les changements sont pilotés avant le déploiement, avec une vérification définie.
- [ ] Les changements de processus sont livrés à un rythme avec de courtes notes.
- [ ] Quelques mesures montrent si chaque processus fonctionne.
- [ ] Les contrôles légaux et contractuels sont identifiés avec leurs sources.
- [ ] Les auditeurs ont vu le carnet, les notes de version et les mesures.
- [ ] Les étapes qui ne servent plus un but sont retirées.

## Prompts d'IA

**Objectif : rédiger un énoncé de but et une liste d'utilisateurs pour un processus.**

```text
Aidez-moi à écrire un énoncé de but pour ce processus : [nom et brève description].

Qui le suit : [rôles].
Qui il sert : [rôles].
Ce qui ne va pas aujourd'hui : [exemples].
Règles ou contrats qui en exigent des parties, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Rédigez trois énoncés de but alternatifs d'une phrase, chacun centré sur un résultat et non sur les étapes. Listez ensuite des questions à poser aux utilisateurs pour tester lequel est le plus proche. N'inventez pas de règles. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : transformer retours et revues d'incidents en carnet de processus.**

```text
Voici des commentaires, plaintes, constats d'audit et actions de revue concernant [processus] : [collez un par ligne, avec la source].

Regroupez les éléments apparentés. Pour chaque groupe, rédigez un élément de carnet sous la forme « En tant que [rôle], je veux [changement] afin que [résultat] », en n'utilisant que ce que dit le texte. Ajoutez une note sur qui est touché et une question sur la preuve. Laissez la priorité vide. Listez les éléments qui ressemblent à des exigences de loi ou de contrat, en citant le texte, et ceux qui se contredisent. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un essai d'un mois d'un processus plus léger.**

```text
Concevez un essai d'un mois d'une version plus légère de [processus].

Étapes actuelles et endroits où les gens peinent : [décrivez].
Changement proposé : [décrivez].
Équipes pouvant participer : [listez].
Contrôles qui doivent rester, avec la source : [listez, ou écrivez « aucun connu »].

Donnez : le périmètre de l'essai, ce que nous nous attendons à voir, quoi mesurer avant et pendant (laissez les cibles comme [à convenir]), comment recueillir le retour des utilisateurs, les conditions d'arrêt et les preuves à conserver pour les auditeurs. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une note de version pour un changement de processus.**

```text
Rédigez une courte note de version pour un changement de [processus].

Ce qui a changé : [décrivez].
Pourquoi : [décrivez].
Qui est touché et à partir de quelle date : [décrivez].
Ce que les gens doivent faire autrement : [décrivez].
Où poser des questions : [contact].

Rédigez moins de 150 mots en langage simple, avec un titre, une courte liste de changements et ce qu'il faut faire. N'utilisez que mes informations. Posez d'abord des questions de clarification s'il manque quelque chose et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour clarifier qui est responsable de chaque processus et qui est consulté.
- [user-story](../../../../skills/user-story/SKILL.md) : à utiliser pour rédiger les éléments du carnet de processus du point de vue de l'utilisateur.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour étudier comment un processus fonctionne réellement et où il peine.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour revoir avec ses utilisateurs comment un processus fonctionne.
- [kaizen](../../../../skills/kaizen/SKILL.md) : à utiliser pour planifier des améliorations petites et continues d'un processus.

## Sources principales

- **The Scrum Guide** (Ken Schwaber et Jeff Sutherland, scrumguides.org) : la source des rôles et artefacts utilisés ici par analogie pour la responsabilité des processus et les carnets.
- **Principles behind the Agile Manifesto** (agilemanifesto.org) : le versant agile de l'approche de conception.
- **ITIL** (Wikipedia) : l'histoire de l'alignement d'ITIL 4 sur les façons de travailler agiles, DevOps et lean.
- **ISO/IEC 20000** (Wikipedia) : la liste des parties, dont des orientations récentes sur l'agile et DevOps.

## Références

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
