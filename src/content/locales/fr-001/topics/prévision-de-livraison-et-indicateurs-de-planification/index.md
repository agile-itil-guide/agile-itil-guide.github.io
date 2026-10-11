# Prévision de livraison et indicateurs de planification

**La prévision de livraison et les indicateurs de planification permettent à une équipe de dire, avec des fourchettes honnêtes, quand le travail devrait se terminer et ce qu'elle peut prendre en charge, en observant le flux continu du travail terminé et la capacité de l'équipe ; ils fonctionnent pour les équipes de service quand le travail planifié et le travail dicté par les interruptions sont comptés ensemble.**

## Pourquoi c'est important

Les équipes agiles visent la livraison continue de logiciels, et tous ceux qui dépendent de cette livraison posent les mêmes questions : quand cela sera-t-il fini, combien l'équipe peut-elle prendre en charge, et que se passe-t-il quand quelque chose d'urgent arrive ? Une équipe qui ne peut pas répondre à ces questions avec des preuves se rabat sur des promesses qu'elle ne peut pas tenir, et ceux qui dépendent d'elle apprennent à se méfier de toutes les dates.

Une équipe qui exploite des services le ressent plus vivement que la plupart. Le travail d'amélioration planifié, les demandes de service et les incidents partagent les mêmes personnes. Un plan qui ignore la part non planifiée échouera dès la première semaine où survient un incident. Une prévision issue de l'historique de l'équipe, qui énonce sa fourchette, résiste mieux au contact de la réalité qu'une date issue de l'espoir.

Ce sujet décrit comment prévoir à partir du flux de travail terminé, comment planifier autour de la capacité de l'équipe et quels indicateurs de planification aident ou égarent. Scrum, les sprints et la vélocité sont une manière de planifier ; une courte section vers la fin les couvre pour les équipes qui les utilisent. Les mesures ici s'appuient sur les mesures de flux du Sujet 1.5 — Kanban et sur les conseils de mesure plus larges du Sujet 5.6 — Indicateurs et mesure.

## Concepts clés

### Prévoir à partir du flux, pas à partir de promesses

Une prévision est un énoncé sur l'avenir fondé sur des preuves du passé, et elle comporte de l'incertitude. Le Guide Kanban définit une attente de niveau de service comme une prévision du temps qu'un élément de travail devrait mettre à parcourir le flux de travail, fondée sur les temps de cycle passés, et précise que ce n'est pas un accord. Cette définition est un bon modèle pour toute prévision de livraison : utilisez l'historique réel, dites ce qu'il couvre et évitez de promettre plus que ce que vous avez mesuré (voir Sujet 1.5 — Kanban).

Deux types de prévision sont courants :

- **Combien de temps prendra un élément ?** Regardez combien de temps ont pris des éléments similaires terminés et énoncez une fourchette ou une formule du type « la plupart des éléments de ce type se terminent en moins d'un certain nombre de jours ».
- **Combien aurons-nous terminé à une date donnée, ou quand un ensemble d'éléments sera-t-il terminé ?** Regardez combien d'éléments l'équipe termine habituellement par période et appliquez cette fourchette au travail restant.

### Les mesures de flux derrière une prévision

Le Guide Kanban définit quatre mesures, qui sont la matière première de la prévision de livraison :

| Mesure | Ce qu'elle vous dit | Comment elle alimente une prévision |
|---|---|---|
| **Temps de cycle** | Combien de temps un élément terminé a pris du début à la fin | La dispersion des temps de cycle récents donne une fourchette du temps qu'un nouvel élément prendra |
| **Débit** | Combien d'éléments ont été terminés sur une période | La fourchette du débit récent donne une fourchette de ce qui sera terminé sur une période future |
| **Travail en cours (WIP)** | Combien d'éléments sont commencés mais non terminés | Trop de WIP allonge les temps de cycle et rend chaque prévision moins fiable |
| **Âge de l'élément de travail** | Depuis combien de temps un élément non terminé est en cours | Montre les éléments déjà plus anciens que la plupart des éléments terminés, tant qu'il est temps d'agir |

Le guide note que les équipes peuvent renommer ces mesures et doivent en ajouter d'autres là où c'est utile, et que les mesures ne comptent que lorsqu'elles éclairent la façon de travailler de l'équipe. Utilisez des percentiles et des fourchettes, pas seulement des moyennes, car les longues traînes se cachent dans les moyennes (voir Sujet 5.6 — Indicateurs et mesure).

### Une méthode de prévision simple

Une équipe peut prévoir sans outils particuliers :

1. Recueillez le débit de chacune des huit à douze dernières semaines, ou périodes similaires, à partir d'éléments réellement terminés.
2. Prenez le plus bas, un typique et le plus haut de ces chiffres.
3. Divisez le nombre d'éléments restants par chacun de ces chiffres pour obtenir une fourchette de périodes avant la fin.
4. Énoncez la fourchette, les données dont elle provient et ce qui la changerait, comme du travail nouveau, un changement d'équipe ou une dépendance.

C'est une règle empirique, pas une norme. Elle suppose que le travail futur ressemble au travail passé et que les éléments ont des tailles à peu près comparables. Quand c'est faux, dites-le et traitez la fourchette comme plus large. Comparez chaque prévision à ce qui s'est passé et ajustez la méthode, comme le conseille le Sujet 3.11 — Disponibilité, capacité et performance pour les prévisions de demande.

### Capacité de l'équipe

La capacité est la quantité de travail qu'une équipe peut absorber sur une période. Pour une équipe de livraison, ce n'est pas le nombre de personnes multiplié par les jours de la période. Les congés, les tâches de support, les réunions et le travail non planifié réduisent tous ce qui reste pour les éléments planifiés. Un énoncé de capacité utile liste les personnes et les jours disponibles, puis retranche une part réservée au travail non planifié, d'après ce qu'ont montré les dernières périodes.

La compétence capacity-planning et le Sujet 3.11 — Disponibilité, capacité et performance décrivent la capacité pour les services et l'infrastructure. La même logique s'applique à une équipe : planifiez avec des fourchettes, vérifiez par rapport à ce qui s'est passé et revoyez le plan quand les faits changent.

### Travail planifié et non planifié ensemble

Les équipes de service reçoivent des incidents, des demandes urgentes et des changements que personne n'avait programmés. Si on ne les compte pas, la prévision du travail planifié sera trop optimiste. Donnez au travail non planifié ses propres types d'éléments, comptez combien arrivent et combien de temps ils prennent, et conservez les données à côté du travail planifié. Cela donne aussi au Product Owner ou au responsable de service des preuves sur les incidents récurrents qui consomment la capacité, ce qui appuie les décisions de corriger les causes (voir Sujet 3.3 — Gestion des problèmes).

### Flux de livraison continue et cadence de mise en production

Les équipes qui livrent en continu publient de petits changements quand ils sont prêts, au lieu d'attendre la fin d'une période de planification. Cela raccourcit le temps entre la fin et la livraison et rend les prévisions plus simples à vérifier : chaque élément terminé est un point de données. Les changements suivent toujours l'approche d'habilitation des changements de l'organisation, et les changements standard pré-autorisés aident ici (voir Sujet 3.4 — Habilitation des changements et Sujet 3.5 — Gestion des mises en production et des déploiements).

### Si vous utilisez Scrum, les sprints et la vélocité

Certaines équipes planifient en cycles de durée fixe. Le Guide Scrum 2020, de Ken Schwaber et Jeff Sutherland, définit Scrum comme un cadre léger pour des solutions adaptatives à des problèmes complexes. Ses événements ont lieu au sein du Sprint, un intervalle de temps d'un mois ou moins. Cette section couvre le minimum dont une équipe a besoin si elle les utilise ; lisez le guide lui-même avant de changer la façon de travailler d'une équipe.

- **Sprint et Objectif du Sprint :** le Sprint est l'intervalle de temps, et l'Objectif du Sprint est l'objectif unique qui lui est assigné. Un objectif qu'une personne extérieure à l'équipe peut comprendre guide mieux les choix qu'une liste de tickets.
- **Carnet de produit, Product Owner et Scrum Master :** le Carnet de produit est une liste ordonnée de ce dont le produit a besoin. Le Product Owner est la personne unique responsable de son ordre, et le Scrum Master est responsable de l'établissement de Scrum et d'aider l'équipe à l'appliquer.
- **Incrément et Définition de terminé :** un Incrément est un pas utilisable et vérifié vers l'Objectif du Produit, et la Définition de terminé est la norme de qualité que le travail doit satisfaire pour compter. Une équipe de service peut y inclure la surveillance, un guide d'exploitation et un retour arrière testé.
- **Événements :** la planification du Sprint, la mêlée quotidienne (Daily Scrum), la revue du Sprint et la rétrospective du Sprint. La rétrospective est le moment où l'équipe examine sa façon de travailler et planifie des améliorations (voir Sujet 6.1 — Conversations en équipe).
- **Vélocité :** un chiffre fondé sur des estimations que certaines équipes utilisent pour planifier la quantité de travail à prendre. Utilisez-le uniquement pour la planification de l'équipe elle-même. S'il devient un objectif, les équipes gonflent les estimations ; préférez donc les mesures de flux, qui comptent les éléments terminés, et les mesures de résultat.

Le guide dit que Scrum est un cadre, pas une méthode complète. Il ne couvre ni la réponse aux incidents, ni les niveaux de service, ni le processus de changement, et n'en utiliser que des parties ne fait pas du résultat du Scrum. Si vous l'adaptez, nommez honnêtement la variante. Un mélange d'événements Scrum et de flux Kanban est parfois appelé [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Bonnes pratiques

1. **Prévoyez à partir de votre propre historique.** Utilisez les temps de cycle et le débit des éléments récemment terminés et indiquez la période couverte par les données. N'empruntez pas les chiffres d'une autre équipe.
2. **Donnez une fourchette, pas une date unique.** Montrez un cas bas, un typique et un haut, et dites ce qui ferait bouger le résultat. Une date sans fourchette promet une certitude que vous n'avez pas.
3. **Comptez le travail non planifié.** Consignez les incidents, demandes urgentes et interruptions comme des éléments de travail avec leurs propres types. Mesurez combien arrivent et combien de temps ils prennent.
4. **Fixez la capacité à partir des données.** Listez les personnes et les jours disponibles, retranchez les congés et les tâches de support, et réservez une part pour le travail non planifié d'après les périodes récentes. Revoyez cette part régulièrement.
5. **Limitez le travail en cours.** Trop de travail commencé allonge les temps de cycle et affaiblit chaque prévision. Fixez une limite et revoyez-la quand les données changent (voir Sujet 1.5 — Kanban).
6. **Surveillez chaque jour l'âge des éléments de travail.** L'âge révèle des problèmes dans les éléments non terminés alors qu'il est encore temps d'agir. Examinez d'abord les plus anciens.
7. **Utilisez des percentiles et des distributions.** Dites que la plupart des éléments d'un type se terminent en un certain nombre de jours et montrez la longue traînée lente. Les moyennes la cachent.
8. **Comparez les prévisions aux réalisations.** Après chaque période, consignez ce qui avait été prévu et ce qui s'est passé. Ajustez la méthode, pas seulement le chiffre.
9. **Gardez les estimations pour planifier, pas pour juger.** Si l'équipe estime les éléments, utilisez les chiffres pour sa propre planification et ne classez ni personnes ni équipes d'après eux (voir Sujet 5.6 — Indicateurs et mesure).
10. **Rendez les prévisions visibles à ceux qui en dépendent.** Partagez la fourchette et les hypothèses avec les clients et les parties prenantes, et mettez-les à jour quand les faits changent.
11. **Intégrez le travail d'amélioration dans le même flux.** Mettez les corrections de problèmes, le travail de surveillance et l'automatisation à côté des fonctionnalités, pour que les arbitrages soient visibles (voir Sujet 3.15 — Amélioration continue).
12. **Si vous utilisez des sprints et la vélocité, gardez-les petits et honnêtes.** Convenez des parties de Scrum que vous suivez, nommez la variante et testez une approche fondée sur le flux si les interruptions dominent.

## Questions à discuter avec votre équipe

**Comment répondons-nous aujourd'hui à « quand cela sera-t-il fini ? », et sur quoi repose la réponse ?**

Demandez les trois dernières réponses données par l'équipe et sur quoi chacune reposait. Comparez avec ce qui s'est passé. Les équipes constatent souvent que les dates venaient de l'espoir ou de l'avis de la personne la plus senior. Poursuivez en demandant quel historique l'équipe pourrait utiliser à la place.

**Quelle part de notre temps va à du travail que personne n'avait planifié, et le savons-nous d'après des données ?**

Comptez les éléments planifiés, les demandes urgentes et les incidents des dernières semaines. L'animateur peut demander si la part est stable ou varie selon la saison, et qui décide quand une interruption l'emporte sur le travail planifié. Convenez de la façon de le consigner désormais.

**À quoi ressemblent nos temps de cycle, et que dirions-nous si un client demandait combien de temps prend une demande typique ?**

Tracez ou listez les temps de cycle des derniers éléments terminés. Demandez ce que prennent la plupart, ce que prennent les plus lents et ce qui explique les lents. Discutez si une attente de niveau de service fondée sur cet historique serait juste, et qui devrait l'entendre.

**Lesquels de nos éléments actuels sont déjà plus anciens que la plupart des éléments terminés ?**

Regardez les plus anciens éléments ouverts. Demandez pourquoi chacun est bloqué, qui peut le débloquer et ce que l'équipe fera aujourd'hui. Terminez en décidant à quelle fréquence l'équipe passera l'âge en revue.

**Quand l'une de nos prévisions s'est-elle révélée fausse pour la dernière fois, et qu'avons-nous changé ensuite ?**

Demandez un exemple récent, la prévision et le résultat. Cherchez ce que la prévision a manqué : travail non planifié, dépendance ou éléments plus gros que prévu. Convenez d'un changement de méthode et de la manière dont l'équipe le vérifiera.

**Si nous utilisons des sprints ou la vélocité, que nous apportent-ils, et que perdrions-nous en les abandonnant ?**

Demandez honnêtement quel problème chacun résout. Cherchez des preuves, comme une meilleure concentration ou des objectifs plus clairs, et des méfaits, comme des estimations gonflées ou des interruptions ignorées. L'animateur doit surveiller tout changement qui supprime des boucles de rétroaction, qui sont les parties utiles. Convenez d'une expérience et de la manière de comparer les résultats.

## En pratique : un exemple d'ITIL agile

Le service informatique d'un hôpital régional a une équipe de sept personnes qui maintient l'application de planification des patients. Les responsables des consultations demandent des dates, et l'équipe en donne. La plupart des dates sont manquées, parce que les incidents des services, les demandes des consultations et les correctifs de sécurité continuent d'arriver, et que l'équipe y passe la plupart des journées.

Le responsable d'équipe commence à consigner chaque élément, planifié ou non, avec ses dates de début et de fin. Après huit semaines, les données montrent qu'environ la moitié du temps de l'équipe va au travail non planifié et que la plupart des éléments planifiés se terminent en moins de deux semaines, avec une longue traîne d'éléments qui attendent une autre équipe. L'équipe convient de trois changements. Elle énoncera chaque prévision comme une fourchette, d'après le débit et les temps de cycle récents. Elle réservera la moitié de sa capacité au travail non planifié et ne planifiera que sur le reste. Elle passera en revue chaque matin les plus anciens éléments ouverts.

Pendant les deux mois suivants, les prévisions sont le plus souvent justes, et les responsables des consultations, qui voient maintenant une fourchette et ses hypothèses, planifient en conséquence. Le responsable de service, un directeur des opérations de consultation, voit quels incidents récurrents consomment de la capacité, et relève la priorité d'un correctif pour un échec récurrent de synchronisation des rendez-vous ; l'échec cesse. Des difficultés subsistent. Un incident majeur repousse encore une partie du travail, et les responsables qui aimaient les réponses rapides de l'ancien arrangement trouvent les fourchettes moins satisfaisantes. L'équipe convient de leur dire ce qui a changé dans la prévision chaque fois qu'elle bouge, et de comparer son approche avec une méthode à cycle fixe pour le travail d'amélioration à la prochaine revue.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison gagnent le plus à prévoir avec leurs propres données de flux. Consignez le travail au démarrage et à la fin, limitez le travail en cours et livrez continuellement de petits changements. Partagez la fourchette avec ceux qui attendent et utilisez la Définition de terminé, si vous en avez une, pour inclure le travail d'exploitation qui rend une version supportable.

### Équipes de service et d'exploitation

Les équipes d'exploitation possèdent le travail non planifié qui fait échouer les prévisions. Consignez les incidents, demandes et changements comme éléments de travail et partagez les schémas récurrents pour qu'ils influencent l'ordre du travail. Utilisez les données de temps de cycle pour fixer des attentes réalistes avec les clients et soyez explicite sur la part de capacité consacrée à l'amélioration planifiée.

### Direction et gouvernance

Les dirigeants obtiennent une image plus honnête avec des fourchettes de prévision et des mesures de flux qu'avec des rapports d'état. Demandez des fourchettes avec leurs hypothèses, la précision des prévisions dans le temps et ce que l'équipe a changé grâce aux données. Évitez de viser des chiffres individuels, ce qui produit du trucage, et acceptez qu'une prévision bouge quand les faits bougent.

### Clients et utilisateurs

Les clients et utilisateurs bénéficient d'attentes plus claires et de moins de dates manquées. Demandez à l'équipe le délai prévu pour votre type de demande et attendez-vous à ce qu'il repose sur l'historique. Si votre demande est urgente, attendez-vous à ce qu'on vous demande pourquoi, car la faire passer devant affecte le travail de tous les autres.

## Modes d'échec courants

- **Promettre des dates par espoir.** Les dates viennent de l'opinion et sont manquées. À la place, prévoyez à partir des éléments récemment terminés et montrez la fourchette.
- **Ignorer le travail non planifié.** Les interruptions ruinent le plan à chaque période. À la place, comptez-les comme éléments de travail et réservez de la capacité d'après les données.
- **Prévisions à nombre unique.** Une date cache l'incertitude. À la place, donnez un cas bas, un typique et un haut avec les hypothèses.
- **N'utiliser que des moyennes.** La longue traîne des éléments lents est cachée. À la place, regardez les distributions et les percentiles.
- **Commencer trop de choses.** Un travail en cours élevé allonge tous les temps de cycle. À la place, limitez-le et finissez avant de commencer.
- **Utiliser la vélocité ou le débit comme objectif de performance.** Les équipes gonflent les estimations ou découpent les éléments pour paraître bien. À la place, utilisez les chiffres pour planifier et jugez les résultats (voir Sujet 5.6 — Indicateurs et mesure).
- **Ne jamais vérifier la prévision.** La méthode ne s'améliore jamais. À la place, comparez chaque prévision à ce qui s'est passé.
- **Appliquer des cycles fixes à un travail qui ne s'y prête pas.** Une file de demandes imprévisibles forcée dans des périodes fixes crée de la frustration. À la place, testez une approche fondée sur le flux et comparez les résultats.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Prévision | Les dates viennent de l'opinion | Certaines équipes utilisent les données passées | Les équipes prévoient en fourchettes à partir de leurs propres données de flux | La précision des prévisions est suivie et la méthode améliorée | Les prévisions sont coordonnées entre équipes et fournisseurs |
| Mesures de flux | Peu de mesures sont recueillies | Certaines équipes consignent le temps de cycle ou le débit | Les quatre mesures de flux sont recueillies de façon cohérente | Les mesures sont revues et servent à fixer les attentes | Les données de flux sont partagées entre équipes et servent à planifier ensemble |
| Capacité et travail non planifié | Les interruptions ne sont pas comptées | Certaines équipes suivent le travail non planifié | La capacité pour le travail non planifié est fixée d'après les données | La part et les causes du travail non planifié sont revues et réduites | Exploitation et livraison planifient la capacité ensemble |
| Usage des estimations et des cycles fixes | Les estimations servent à juger les personnes | Certaines équipes utilisent les estimations pour leur propre planification | Les équipes conviennent des pratiques qu'elles utilisent et nomment les variantes | Les effets des pratiques sont revus au regard du flux et des résultats | Les pratiques sont ajustées entre équipes grâce à l'apprentissage partagé |

## Liste de contrôle

- [ ] Les prévisions viennent de l'historique propre de l'équipe en éléments terminés.
- [ ] Chaque prévision est une fourchette avec des hypothèses énoncées.
- [ ] Incidents, demandes et travail d'amélioration sont tous consignés comme éléments de travail.
- [ ] La capacité pour le travail non planifié est fixée d'après les données et revue.
- [ ] Le temps de cycle, le débit, le travail en cours et l'âge des éléments de travail sont suivis.
- [ ] Le travail en cours a une limite que l'équipe revoit.
- [ ] Les plus anciens éléments ouverts sont revus régulièrement.
- [ ] Les prévisions sont comparées aux réalisations après chaque période.
- [ ] Les estimations et la vélocité, s'il y en a, ne sont pas des objectifs.
- [ ] Tout usage de Scrum, de sprints ou d'une variante est consigné et nommé honnêtement.

## Prompts d'IA

**Objectif : construire une fourchette de prévision à partir de vos propres données de débit.**

```text
Aidez-moi à prévoir la livraison pour une équipe de [nombre et type de personnes].

Débit (éléments terminés) pour chacune des [nombre] dernières semaines : [collez les chiffres réels sous forme de liste].
Éléments restants : [nombre], et une note sur leur similarité de taille : [collez].
Changements connus pouvant affecter les prochaines semaines (congés, travail nouveau, dépendances) : [collez, ou écrivez « aucun connu »].

Calculez le débit hebdomadaire le plus bas, un typique et le plus haut d'après les chiffres, et divisez les éléments restants par chacun pour obtenir une fourchette en semaines. Énoncez les hypothèses. N'extrapolez pas au-delà des données et n'inventez pas de chiffres. Si les données sont trop minces, dites-le et demandez quoi ajouter. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : analyser les temps de cycle et proposer une attente de niveau de service.**

```text
Voici les dates de début et de fin des [nombre] derniers éléments de travail terminés de type [type] : [collez sous forme de tableau ; n'utilisez que des données réelles].

Calculez le temps de cycle de chaque élément. Décrivez la dispersion : ce que prennent la plupart des éléments, ce que prennent les plus lents et ce qui pourrait expliquer les lents. Suggérez une attente de niveau de service sous la forme « la plupart des éléments de ce type se terminent en N jours » et dites quel degré de confiance les données permettent. Ne l'énoncez pas comme une promesse. Si les données sont trop peu nombreuses, dites-le et demandez quoi recueillir. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : mesurer la part de capacité consacrée au travail non planifié.**

```text
Voici la liste des éléments de travail que notre équipe a terminés au cours des [nombre] dernières semaines, chacun marqué comme planifié ou non planifié, avec le temps qu'il a pris : [collez sous forme de tableau ; n'utilisez que des données réelles].

Calculez la part de temps passée sur le travail planifié et non planifié pour chaque semaine, en n'utilisant que les chiffres que j'ai donnés. Décrivez le schéma, suggérez quelle part de capacité réserver au travail non planifié et nommez deux hypothèses derrière la suggestion. Posez d'abord des questions de clarification si les données sont minces et listez ce dont vous n'êtes pas sûr.
```

**Objectif : passer en revue les plus anciens éléments ouverts et planifier le déblocage.**

```text
Nos éléments de travail ouverts, avec dates de début et état actuel : [collez sous forme de tableau ; n'utilisez que des données réelles].
Temps de cycle de nos [nombre] derniers éléments terminés : [collez].

Calculez l'âge actuel de chaque élément ouvert et signalez ceux qui sont plus anciens que la plupart des éléments terminés. Pour chaque élément signalé, suggérez deux questions à poser sur ce qui le bloque. Ne devinez pas la cause. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [kanban](../../../../skills/kanban/SKILL.md) : à utiliser pour mettre en place les mesures de flux, les limites de travail en cours et une attente de niveau de service.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour vérifier si la capacité disponible répond à la demande prévue et quoi faire face à un écart.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md) : à utiliser pour estimer la charge future sous forme de fourchette à partir des données passées et des plans métier.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md) : à utiliser pour choisir une métrique, nommer son vecteur de trucage et son garde-fou, et remplir une charte de métriques.
- [scrum](../../../../skills/scrum/SKILL.md) : à utiliser si l'équipe planifie en sprints, pour mettre en place ou revoir ses rôles, événements et artefacts.

## Sources principales

- **The Kanban Guide** (kanbanguides.org) : définit les mesures de flux et l'attente de niveau de service comme une prévision fondée sur les temps de cycle passés.
- **The Scrum Guide** (Ken Schwaber et Jeff Sutherland, scrumguides.org) : la définition de référence, brève, de Scrum, pour les équipes qui utilisent des sprints.
- **Kanban (development)** (Wikipedia) : une vue d'ensemble des mesures de flux et du système en flux tiré de Kanban.
- **Scrum (software development)** (Wikipedia) : une vue d'ensemble de l'histoire, des rôles, des événements et des critiques de Scrum.

## Références

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
