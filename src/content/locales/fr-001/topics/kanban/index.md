# Kanban

**Kanban gère le travail comme un flux : il rend le flux de travail visible, limite ce qui est en cours et utilise des mesures de flux pour s'améliorer, ce qui convient aux équipes de service dont le travail arrive en continu et ne peut pas être planifié en cycles fixes.**

## Pourquoi c'est important

Un centre de services, une équipe d'exploitation et une équipe plateforme ont un trait commun : le travail arrive quand il arrive. Incidents, demandes et petits changements affluent en continu, et l'équipe ne peut pas en planifier un mois à l'avance. Les cadres construits autour de cycles fixes, comme Scrum, ne conviennent à ce travail qu'avec des ajustements (voir Sujet 1.4 — Prévision de livraison et indicateurs de planification). Kanban a été conçu pour le flux ; il y convient donc plus naturellement.

Kanban parle aussi le langage de la gestion des services. Il demande combien de temps prend le travail, combien attend et quelle étape est le goulot d'étranglement, et ce sont les questions qui sous-tendent les niveaux de service, la gestion des files et la planification de la capacité. Une équipe qui suit l'âge et le temps de cycle de son travail peut parler de niveaux de service avec des données plutôt que des impressions.

Kanban est simple à démarrer et étonnamment facile à mal pratiquer. Un tableau avec des colonnes n'est pas du Kanban si rien ne limite le travail en cours et que personne n'utilise les mesures. Ce sujet explique ce que le Guide Kanban demande à une équipe, d'où vient la méthode et comment l'appliquer au travail de service.

## Concepts clés

### Ce qu'est Kanban

Le [Guide Kanban](https://kanbanguides.org/english/), dont la version actuelle date de mai 2025 et qui cite John Coleman et Daniel Vacanti parmi ses auteurs, définit Kanban comme une stratégie d'optimisation du flux de valeur dans un processus. Il décrit le flux comme le mouvement de valeur potentielle dans un système. Le but est un équilibre entre trois choses : l'efficacité au sens d'efficacité de résultat (livrer ce que les parties prenantes veulent, quand elles le veulent), l'efficience (bien utiliser les ressources) et la prévisibilité (prévoir la livraison avec un niveau d'incertitude acceptable). Le guide dit qu'il s'applique au travail de la connaissance dans tout secteur.

Le mot « kanban » est japonais et signifie une enseigne ou un panneau d'affichage. L'[article de Wikipédia sur Kanban en développement](https://en.wikipedia.org/wiki/Kanban_(development)) dit que la méthode vient de la production au plus juste et du [système de production Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System), avec un système de juste-à-temps lancé chez Toyota à la fin des années 1940. Le livre de David J. Anderson de 2010 fait remonter la version logicielle à un projet de 2004 chez Microsoft et un projet de 2006–2007 chez Corbis.

### Les trois pratiques

Le Guide Kanban nomme trois pratiques. Une équipe qui fait les trois, et utilise les mesures ci-dessous, pratique Kanban au sens du guide.

| Pratique | Ce que fait l'équipe | Une note pour les équipes de service |
|---|---|---|
| **Définir et visualiser le flux de travail** | Convenir d'une Définition du flux de travail (DoW) : ce qu'est un élément de travail, où il commence et finit, les états intermédiaires, comment le travail en cours est limité, les politiques de passage du travail, et une attente de niveau de service (SLE). L'afficher sur un tableau. | La DoW d'un centre de services peut définir des éléments incident, demande et changement, avec des états et des politiques différents pour chacun |
| **Gérer activement les éléments dans le flux de travail** | Maîtriser le nombre d'éléments en cours, surveiller ceux qui vieillissent et débloquer ceux qui sont arrêtés. | Une limite d'incidents ouverts par ingénieur oblige l'équipe à terminer ou à transmettre le travail avant d'en commencer davantage |
| **Améliorer le flux de travail** | Modifier la DoW dans le temps pour améliorer l'efficacité, l'efficience et la prévisibilité, à intervalles fixes ou en cas de besoin. | Une revue de la DoW après un incident majeur peut changer des politiques, des limites ou des états |

Le guide ne prescrit ni disposition de tableau ni réunions. Les équipes sont libres d'ajouter des pratiques, pourvu que les pratiques de base, les mesures et l'objectif d'optimiser la valeur restent intacts.

### Limites de travail en cours et flux tiré

Maîtriser le travail en cours (WIP) crée ce que le guide appelle un système en flux tiré : le nouveau travail ne commence que lorsqu'il y a de la capacité pour lui. L'article de Wikipédia donne l'exemple d'une étape « déploiement » avec une limite de cinq. Quand l'étape est pleine, rien d'autre n'y entre tant que quelque chose n'est pas terminé ; un blocage devient donc visible et les gens peuvent aider à le lever. Sans limites, un tableau n'est que l'image du désordre.

### Quatre mesures de flux

Le guide liste quatre mesures que suit une équipe utilisant Kanban :

- **Travail en cours :** le nombre d'éléments commencés mais pas encore terminés.
- **Débit :** le nombre d'éléments terminés sur une période donnée.
- **Âge de l'élément de travail :** depuis combien de temps un élément non terminé est en cours.
- **Temps de cycle :** combien de temps un élément terminé a pris du début à la fin.

Le guide dit que les équipes peuvent les renommer et doivent ajouter d'autres mesures là où c'est utile, et que les mesures ne comptent que lorsqu'elles éclairent les trois pratiques. Une attente de niveau de service est une prévision du temps qu'un élément devrait prendre, fondée sur les temps de cycle passés. Ce n'est pas une promesse, et elle diffère d'un accord de niveau de service (SLA) négocié avec un client. Voir Sujet 3.7 — Gestion des niveaux de service.

### La littérature Kanban plus large

D'autres auteurs ont décrit la méthode plus largement. L'article de Wikipédia cite les travaux de Don Reinertsen sur le flux, *Personal Kanban* de Jim Benson et Tonianne DeMaria Barry, *Kanban From the Inside* de Mike Burrows et *Scrumban* de Corey Ladas, qui proposait Kanban comme moyen d'améliorer Scrum. Certaines de ces sources listent des pratiques au-delà des trois du guide, comme rendre les politiques explicites, mettre en place des boucles de rétroaction et améliorer en collaboration. Considérez-les comme des ajouts utiles, pas comme des exigences du guide.

L'article de Wikipédia porte un bandeau signalant qu'un contributeur important peut avoir un lien étroit avec le sujet ; vérifiez donc ses affirmations auprès des sources primaires.

### Ce que Kanban ne dit pas

Kanban n'est ni un plan de projet, ni un ensemble de rôles, ni un processus de mise en production. Il ne vous dit pas comment concevoir un service ou conduire un incident. Il vous donne une façon de voir et de gérer le flux et compte sur vous pour apporter le contenu de votre travail. C'est aussi sa force : vous pouvez partir du processus que vous avez et l'améliorer par petites étapes (voir Sujet 3.15 — Amélioration continue).

## Bonnes pratiques

1. **Partez de ce que vous faites maintenant.** Dessinez le flux de travail réel, avec les états par lesquels le travail passe vraiment, y compris les attentes. Ne dessinez pas le processus dont vous rêvez. Vous ne pouvez améliorer que ce que vous voyez.
2. **Définissez ce qu'est un élément de travail.** Décidez si incidents, demandes et changements forment un type d'élément ou plusieurs, et donnez à chacun un début et une fin clairs. Des définitions mélangées rendent les mesures insignifiantes.
3. **Fixez des limites de WIP et tenez-les.** Commencez par une limite qui semble un peu serrée, comme un ou deux éléments par personne, et ajustez selon l'expérience. Une limite régulièrement enfreinte ne donne aucune information ; discutez donc chaque dépassement.
4. **Rendez les politiques explicites.** Écrivez sur le tableau quand un élément peut passer à l'état suivant, qui peut le tirer et ce qui compte comme bloqué. Des politiques visibles réduisent les disputes et facilitent l'accueil des nouveaux.
5. **Surveillez l'âge de l'élément de travail, pas seulement le temps de cycle.** Le temps de cycle n'est connu qu'une fois l'élément terminé, alors que l'âge révèle les problèmes tant qu'il est encore temps d'agir. Examinez chaque jour les éléments les plus anciens.
6. **Utilisez une attente de niveau de service fondée sur l'historique.** Prenez les temps de cycle des éléments récemment terminés et énoncez, par exemple, que la plupart des éléments d'un type se terminent en un nombre de jours donné. Révisez-la quand les données changent. Ne promettez pas aux clients un chiffre que vous n'avez pas mesuré.
7. **Traitez le travail accéléré comme une exception explicite.** Les incidents urgents passeront devant la file. Définissez une politique, comme une voie avec sa propre limite, pour que les exceptions soient visibles et ne détruisent pas le flux en silence (voir Sujet 3.2 — Gestion des incidents).
8. **Cherchez le goulot d'étranglement et aidez-le.** Quand un état est toujours plein, demandez s'il lui faut plus de capacité, une politique modifiée ou un flux amont différent. Déplacer des personnes vers le goulot vaut généralement mieux que d'y pousser plus de travail.
9. **Tenez des revues à un rythme régulier.** Le guide permet d'améliorer à intervalles fixes ou en cas de besoin. Une courte revue hebdomadaire des mesures et un regard mensuel sur la DoW conviennent à beaucoup d'équipes.
10. **Reliez le tableau au reste de l'organisation.** Rendez le tableau visible aux clients et aux équipes voisines. Convenez de la façon dont les éléments passent d'un tableau à l'autre, par exemple d'un centre de services vers une équipe de développement.
11. **Gardez les mesures pour apprendre.** Utilisez les chiffres pour poser des questions, pas pour classer les gens. Quand les données de flux deviennent un objectif, les équipes les truquent (voir Sujet 5.6 — Indicateurs et mesure).
12. **Combinez avec d'autres cadres de façon délibérée.** Si l'équipe utilise les événements Scrum pour planifier et Kanban pour le flux, dites à quoi sert chacun et vérifiez que la combinaison réduit la confusion (voir Sujet 1.8 — Agilité à grande échelle pour la coordination de plusieurs équipes).

## Questions à discuter avec votre équipe

**Si nous dessinions notre flux de travail réel, attentes comprises, à quoi ressemblerait-il ?**

Demandez à chaque personne de dessiner le chemin d'un élément récent, puis rassemblez les dessins sur un mur. Les différences entre les dessins montrent les étapes cachées et les transferts informels. Attendez-vous à des surprises : des approbations dont personne n'avait parlé, des éléments qui attendent une autre équipe et des boucles de reprise. Poursuivez en marquant les trois plus longues attentes.

**Combien de travail est en cours pour chacun de nous en ce moment, et combien de celui-ci est en attente ?**

Comptez les éléments ouverts par personne et marquez ceux qui sont bloqués ou inactifs. Beaucoup d'équipes constatent que la plupart des éléments attendent et que peu sont en cours de traitement. Demandez ce que fait chacun quand il est bloqué et si commencer un nouvel élément est la réponse habituelle. Le but est de discuter pourquoi commencer est récompensé et finir ne l'est pas.

**Quel est le plus ancien élément de notre tableau, et pourquoi y est-il encore ?**

Prenez les trois plus anciens éléments et retracez ce qui s'est passé. Les réponses courantes sont un responsable flou, une dépendance envers une autre équipe ou un élément que personne ne veut annuler. Demandez si l'élément doit être terminé, annulé ou remonté. L'animateur peut demander quelle politique l'aurait repéré plus tôt.

**Que promettons-nous à nos clients sur la durée des choses, et que disent nos propres chiffres ?**

Comparez les niveaux de service convenus avec les temps de cycle réels des éléments terminés. Si vous n'avez pas de données, recueillez-en d'abord pendant un mois. Discutez ouvertement de tout écart. Demandez si l'objectif doit changer, ou si c'est la façon de travailler. Rappelez-vous qu'une attente de niveau de service fondée sur des données est une prévision, alors qu'un SLA est un accord.

**Quand du travail urgent arrive, qu'advient-il de tout le reste ?**

Repassez le dernier incident urgent et voyez quels éléments se sont arrêtés. Demandez si l'équipe a une politique pour le travail urgent et si quelqu'un sait combien d'éléments urgents elle traite par mois. Les équipes découvrent souvent que le travail urgent est la routine, pas l'exception, et que la politique doit en tenir compte. Poursuivez en convenant d'une limite pour les éléments accélérés.

**Lesquelles de nos mesures croirions-nous assez pour fonder une décision, et lesquelles ignorerions-nous ?**

Demandez aux gens de classer les mesures disponibles selon la confiance qu'ils leur accordent et pourquoi. La méfiance vient souvent de définitions d'éléments incohérentes ou de trous dans les données. N'en faites pas une dispute sur les personnes ; concentrez-vous sur la qualité des données. Terminez en choisissant une mesure à améliorer le mois suivant.

## En pratique : un exemple d'ITIL agile

Le centre de services informatiques d'une université compte huit analystes qui traitent les incidents et les demandes des étudiants et du personnel. L'équipe a un outil de tickets avec des files, mais sans limites, et chaque analyste a entre 20 et 40 tickets ouverts. Les clients se plaignent que les tickets semblent disparaître, et le responsable du centre ne peut pas dire combien de temps prend une demande typique.

Le responsable et les analystes construisent un tableau qui reflète l'outil : nouveau, trié, en cours, en attente du client, en attente d'une autre équipe et résolu. Ils conviennent d'une limite de huit éléments actifs par analyste et d'une règle selon laquelle les tickets en attente d'autres personnes doivent nommer la personne responsable de l'étape suivante. Ils réservent une voie aux incidents urgents, avec une limite de deux. Pendant un mois, ils ne font que recueillir des données sur le temps de cycle et l'âge.

Après ce mois, les données montrent que la plupart des demandes sont résolues en quelques jours, mais qu'une longue traîne attend des semaines, surtout « en attente d'une autre équipe ». L'équipe fixe une attente de niveau de service à partir des données et commence une revue quotidienne des plus anciens éléments. Plusieurs tickets en attente depuis longtemps sont fermés ou remontés dès la première semaine. Un problème subsiste : l'équipe réseau, propriétaire de beaucoup des tickets en attente, n'a pas de tableau propre et le centre de services ne voit pas sa file. Le responsable du centre organise une conversation hebdomadaire avec le responsable de l'équipe réseau, et les deux équipes commencent à discuter d'une vue partagée des éléments qui circulent entre elles.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison peuvent utiliser Kanban pour voir où le travail attend entre conception, construction, test et mise en production. Les limites de travail en cours réduisent le nombre de changements à moitié finis, et les données de flux peuvent montrer où un processus de mise en production demande de l'attention. Traitez les demandes de l'exploitation comme des éléments du même flux, avec leur propre politique.

### Équipes de service et d'exploitation

Les équipes d'exploitation sont le foyer naturel de Kanban. Visualisez les incidents, demandes et changements dans leurs propres états, fixez des limites et surveillez le vieillissement. Utilisez les données de temps de cycle pour fixer des attentes réalistes avec les clients, et utilisez les états bloqué et en attente pour engager des conversations avec d'autres équipes.

### Direction et gouvernance

Les dirigeants tirent des mesures de flux une image plus honnête que des rapports d'état. Demandez le temps de cycle, le débit et l'âge par type de travail, et demandez ce que l'équipe a changé grâce à eux. Évitez de viser des chiffres individuels, ce qui produit du trucage. Soutenez les limites de travail en cours même quand les parties prenantes veulent démarrer davantage.

### Clients et utilisateurs

Les clients gagnent des prévisions plus claires et moins de demandes perdues. Demandez à l'équipe l'attente de niveau de service pour votre type de demande, et attendez-vous à ce qu'elle repose sur l'historique. Si votre demande est urgente, attendez-vous à ce qu'on vous demande pourquoi, car l'équipe doit protéger le flux des autres.

## Modes d'échec courants

- **Un tableau sans limites.** Le tableau montre le désordre mais ne le réduit pas. À la place, fixez et appliquez des limites de travail en cours, et examinez chaque dépassement.
- **Définitions d'éléments mélangées.** Incidents, projets et tâches partagent un même jeu de colonnes, et les mesures ne signifient rien. À la place, définissez des types d'éléments avec des états et des politiques distincts.
- **Ignorer le vieillissement.** Les vieux éléments dorment inaperçus jusqu'à la plainte d'un client. À la place, examinez chaque jour les éléments les plus anciens et décidez pour chacun.
- **Transformer les mesures en objectifs.** Les équipes découpent ou ferment des éléments pour améliorer les chiffres. À la place, utilisez les mesures pour poser des questions et revoyez-les avec l'équipe.
- **Voies accélérées cachées.** Le travail urgent contourne les limites sans laisser de trace. À la place, donnez au travail urgent une voie visible, une limite et une politique.
- **Copier une disposition de tableau.** Une équipe adopte les colonnes d'une autre sans comprendre son propre flux. À la place, cartographiez d'abord le flux de travail réel.
- **Traiter Kanban comme un outil de reporting.** Les responsables s'en servent pour surveiller les gens et non pour améliorer le flux. À la place, utilisez-le comme l'outil de l'équipe pour décider quoi faire ensuite.
- **Ne jamais améliorer le flux de travail.** Le tableau reste identique pendant des années. À la place, tenez des revues régulières de la Définition du flux de travail et changez-la quand les données l'exigent.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Visualiser le flux de travail | Le travail vit dans des boîtes de réception individuelles et dans les têtes | Certaines équipes ont des tableaux qui montrent leurs états | Les équipes partagent une Définition du flux de travail avec types d'éléments et politiques | Le tableau est revu et corrigé selon ce qui se passe réellement | Les tableaux entre équipes montrent les éléments et transferts entre équipes |
| Limiter le travail en cours | Pas de limites ; on commence plus qu'on ne termine | Certaines équipes fixent des limites informelles | Les limites sont fixées et les dépassements discutés | Les limites sont ajustées d'après les données de flux | Limites et capacité sont équilibrées entre équipes et fournisseurs |
| Mesures de flux | Peu de mesures sont recueillies | Certaines équipes consignent le temps de cycle ou le débit | Les quatre mesures sont recueillies de façon cohérente | Les mesures sont revues et servent à fixer des attentes de niveau de service | Les données de flux sont partagées entre équipes et servent à planifier la capacité ensemble |
| Amélioration | Les changements suivent les crises | Les équipes ajustent parfois le tableau | Les équipes revoient le flux de travail à un rythme régulier | Les changements sont reliés aux mesures et leurs résultats vérifiés | Les améliorations se propagent entre équipes sans pilotage central |

## Liste de contrôle

- [ ] Nous avons dessiné notre flux de travail réel, attentes et transferts compris.
- [ ] Nos éléments de travail sont définis, avec un début et une fin clairs pour chaque type.
- [ ] Des limites de travail en cours existent et chaque dépassement est discuté.
- [ ] Les politiques de déplacement et de blocage des éléments sont écrites sur ou près du tableau.
- [ ] Nous suivons le temps de cycle, le débit, le travail en cours et l'âge de l'élément de travail.
- [ ] Nous examinons les plus anciens éléments chaque jour ou au moins chaque semaine.
- [ ] Nous avons une attente de niveau de service fondée sur notre propre historique.
- [ ] Le travail urgent a sa propre voie visible, sa limite et sa politique.
- [ ] La Définition du flux de travail est revue à un rythme régulier.
- [ ] Les équipes voisines et les clients peuvent voir les éléments qui les concernent.

## Prompts d'IA

**Objectif : décrire votre flux de travail réel et trouver où le travail attend.**

```text
Vous m'aidez à cartographier le flux de travail réel d'une équipe qui traite [type de travail, par ex. « les incidents et demandes d'un centre de services »].

Voici les états par lesquels passe un élément typique, du mieux que je peux les décrire : [collez les étapes dans l'ordre, y compris attentes et transferts].
Voici ce qui est arrivé à trois éléments récents, avec les dates de chaque changement d'état : [collez trois courtes chronologies, en n'utilisant que des données réelles].

Dessinez le flux de travail sous forme de schéma texte simple. Identifiez où chaque élément a attendu le plus longtemps, en n'utilisant que les dates que j'ai fournies. Suggérez trois questions que je devrais poser à l'équipe sur ces attentes. N'inventez pas de chiffres. Si les données sont trop minces, demandez-m'en d'abord davantage, signalez vos hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une Définition du flux de travail pour une équipe.**

```text
Aidez-moi à écrire une première Définition du flux de travail pour [nom de l'équipe et ce qu'elle fait].

Types d'éléments que nous traitons : [listez-les, par ex. incidents, demandes, changements].
États dans lesquels un élément peut se trouver : [listez, ou écrivez « inconnu »].
Politiques actuelles pour commencer, terminer et bloquer les éléments : [collez, ou écrivez « aucune écrite »].
Environ combien d'éléments chaque personne a ouverts en même temps : [nombre, ou « inconnu »].

Produisez un brouillon avec : les types d'éléments, les points de début et de fin, les états, une approche proposée pour la limite de WIP, des politiques de déplacement des éléments, une politique pour le travail urgent et la manière dont une attente de niveau de service serait fixée à partir de notre propre historique. Marquez chaque proposition qui est une supposition. N'énoncez aucun chiffre que je ne vous ai pas donné. Posez-moi d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : analyser les données de flux issues de votre système de tickets.**

```text
Ci-dessous figurent les dates de début et de fin de [nombre] éléments que notre équipe a terminés récemment, et les dates de début de [nombre] éléments encore ouverts : [collez sous forme de tableau, données réelles uniquement].

Calculez le temps de cycle de chaque élément terminé et l'âge actuel de chaque élément ouvert. Décrivez la dispersion : ce que prennent la plupart des éléments, ce que prennent les plus lents et quels éléments ouverts sont plus anciens que la plupart des éléments terminés. N'extrapolez pas au-delà des données. Suggérez deux questions à poser à l'équipe sur les plus anciens éléments. Dites-moi quelles données supplémentaires rendraient l'analyse plus fiable et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une revue du tableau avec l'équipe.**

```text
Planifiez une revue de flux hebdomadaire de 30 minutes pour une équipe de [nombre] personnes qui utilise un tableau Kanban pour [type de travail].

Nos mesures : [listez lesquelles parmi le travail en cours, le débit, le temps de cycle et l'âge de l'élément de travail vous suivez].
Frustration actuelle : [décrivez en une ou deux phrases].

Incluez un ordre du jour minuté, cinq questions à poser sur les mesures et les plus anciens éléments, et une étape finale qui consigne au plus deux changements avec des responsables. Restez libre de tout outil précis. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [kanban](../../../../skills/kanban/SKILL.md) : à utiliser pour concevoir ou revoir un tableau, des limites de travail en cours et des politiques pour une équipe de service ou d'exploitation.
- [scrumban](../../../../skills/scrumban/SKILL.md) : à utiliser quand une équipe veut les événements de planification de Scrum avec la gestion de flux de Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md) : à utiliser pour cartographier le cheminement du travail entre équipes et ses attentes avant de concevoir le tableau.
- [kaizen](../../../../skills/kaizen/SKILL.md) : à utiliser pour planifier de petites améliorations du flux de travail après une revue de flux.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md) : à utiliser pour comprendre quels types de travail arrivent et en quel volume avant de fixer limites et capacité.

## Sources principales

- **The Kanban Guide** (John Coleman et Daniel Vacanti et autres, kanbanguides.org) : la définition concise et de référence des trois pratiques et des quatre mesures.
- **Kanban (development)** (Wikipedia) : une vue d'ensemble de l'histoire et des pratiques élargies, avec des renvois aux principaux ouvrages.
- **Kanban : Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010) : le récit de l'application de Kanban au travail logiciel.
- **Toyota Production System** (Wikipedia) : contexte sur les origines de kanban dans la production au plus juste.

## Références

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
