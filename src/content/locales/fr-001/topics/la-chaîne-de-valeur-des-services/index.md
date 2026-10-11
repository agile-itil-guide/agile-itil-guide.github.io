# La chaîne de valeur des services

**La chaîne de valeur des services est un ensemble de six activités que les équipes combinent dans des ordres différents pour créer des flux de valeur, et elle décrit comment la livraison continue et l'exploitation du service s'inscrivent dans un seul flux au lieu de deux flux séparés.**

## Pourquoi c'est important

Beaucoup d'organisations traitent construire et exploiter comme deux étapes : d'abord un projet construit le service, puis un groupe d'exploitation le reprend. Le transfert est l'endroit où la connaissance se perd, où les responsabilités se brouillent et où les clients ressentent l'écart. La chaîne de valeur des services d'ITIL 4 a été conçue pour remplacer ce tableau par un autre où les mêmes activités peuvent avoir lieu dans n'importe quel ordre et aussi souvent que nécessaire, selon la situation.

C'est proche de la façon dont les équipes agiles travaillent déjà. En une semaine, une équipe peut planifier une fonctionnalité, en construire une partie, la publier, répondre à la question d'un client à son sujet et corriger un problème découvert en production. Chacune de ces tâches est une activité différente de la chaîne. Les voir comme les parties d'un seul flux aide une équipe à demander où le travail attend, qui accomplit chaque activité et quelles activités sont négligées.

Ce sujet décrit les six activités, la façon dont elles se combinent en flux de valeur et la manière dont une équipe agile peut se servir de l'idée. Les résumés viennent d'un organisme de formation et d'un éditeur de logiciels, car les pages publiques du propriétaire du cadre lues pour ce guide ne nomment la chaîne de valeur des services qu'en passant. La page de l'éditeur liste les activités sans les décrire ; considérez donc les descriptions ci-dessous comme des lectures largement répandues et vérifiez les publications d'ITIL 4 pour la formulation du propriétaire (voir Sujet 2.2 — ITIL).

## Concepts clés

### Où se situe la chaîne

Dans le système de valeur des services, la chaîne est le modèle opérationnel au centre (voir Sujet 2.3 — Le système de valeur des services ITIL). Une page d'éditeur la décrit comme la partie du système qui concerne la chaîne de livraison ou le cycle de vie d'un produit ou d'un service, prenant la demande en entrée et produisant de la valeur en sortie. Elle note aussi qu'en pratique le cycle de vie est rarement linéaire.

### Les six activités

Le tableau donne chaque activité, le but que lui assigne la page d'un organisme de formation, et ce à quoi l'activité ressemble dans une équipe agile. La colonne de droite est la lecture de ce guide.

| Activité | But, tel que le résume un organisme de formation | À quoi cela peut ressembler dans une équipe agile |
|---|---|---|
| **Planifier** | Définit les politiques, objectifs et lignes directrices de la direction de l'organisation, afin que chacun partage une compréhension de la vision, de l'état actuel et de la direction d'amélioration | Objectifs de produit, feuilles de route, planification trimestrielle et choix de portefeuille |
| **Améliorer** | Améliore continuellement les services, pratiques et processus dans toutes les activités | Rétrospectives, revues post-incident et éléments d'amélioration dans le carnet |
| **Impliquer** | Interagit avec les parties prenantes pour comprendre les besoins, fournir de l'information, recueillir retours et exigences et gérer les relations | Recherche utilisateur, revues de sprint, centre de services et conversations avec les clients |
| **Concevoir et faire la transition** | Veille à ce que les services nouveaux ou modifiés répondent aux attentes des parties prenantes, de la conception à l'environnement en production | Concevoir un changement, le tester et le préparer pour la mise en production et le support |
| **Obtenir/construire** | Acquiert ou crée les composants nécessaires aux services, comme ressources physiques, infrastructure, connaissance ou logiciel | Développer du logiciel, acheter un outil, préparer l'infrastructure, former le personnel |
| **Fournir et soutenir** | Fournit les services comme convenu et assure un support continu pour résoudre les problèmes et satisfaire les demandes | Exploiter le service, traiter incidents et demandes, déployer des versions |

### Les activités ne sont pas des étapes

La page de l'organisme de formation dit que les activités « ne sont pas linéaires mais interreliées et peuvent être combinées de diverses façons pour former de multiples flux de valeur ». Un **flux de valeur**, selon ses mots, est un ensemble précis d'activités qui créent et livrent aux clients un service ou produit particulier. C'est l'idée centrale. La chaîne est un menu d'activités, et un flux de valeur est un chemin à travers elle choisi dans un but particulier.

### Flux de valeur illustratifs

Les pages lues pour ce guide ne donnent aucun exemple de flux de valeur ; les suivants sont donc les illustrations de ce guide sur la manière dont les activités pourraient se combiner. Ils ne viennent pas de publications ITIL, et un flux réel différera.

| Flux de valeur | Un chemin possible à travers les activités |
|---|---|
| **Traiter un incident** | Impliquer (un utilisateur le signale) → fournir et soutenir (rétablir le service) → améliorer (revoir et corriger la cause) |
| **Publier une fonctionnalité** | Planifier (décider de l'objectif) → concevoir et faire la transition (concevoir, tester, préparer le support) → obtenir/construire (développer) → fournir et soutenir (publier) → impliquer (recueillir des retours) → améliorer |
| **Satisfaire une demande d'accès** | Impliquer (demande reçue) → fournir et soutenir (vérifier et accorder l'accès) → impliquer (confirmer avec l'utilisateur) |
| **Intégrer un nouveau fournisseur** | Planifier (décider du besoin) → impliquer (choisir et convenir des conditions) → obtenir/construire (intégrer) → fournir et soutenir (exploiter) → améliorer (revoir la performance) |

### Pratiques et chaîne

Les pratiques sont les capacités auxquelles puisent les activités. La gestion des incidents, par exemple, est une pratique utilisée dans plusieurs flux de valeur. Les sources ne s'accordent pas sur tous les détails de la correspondance entre pratiques et activités ; évitez donc un tableau rigide. Un meilleur test est de savoir si une pratique contribue au flux de valeur que vous examinez (voir Partie 3).

### Flux de valeur et flux agile

La pensée agile et lean utilise déjà les flux de valeur (voir Sujet 1.7 — Développement logiciel lean). Une carte de flux de valeur montre les étapes, les durées et les attentes d'un chemin. L'idée d'ITIL ajoute un vocabulaire pour classer les étapes et un rappel que le chemin inclut le support et l'amélioration en plus de la construction. Pour le travail numérique, cela renvoie à la gestion du flux de valeur (voir Sujet 5.4 — Gestion du flux de valeur).

### Limites

Les pages lues pour ce guide ne donnent aucune méthode pour concevoir ou choisir des flux de valeur, et la page de l'éditeur n'explique pas comment la chaîne se rapporte à l'amélioration continue au-delà de qualifier l'amélioration de cruciale. La chaîne est une manière de décrire le travail, pas une manière de décider comment le faire. Sa valeur dépend de ce que vous l'utilisiez pour regarder de vrais flux.

## Bonnes pratiques

1. **Choisissez un flux de valeur et dessinez-le.** Choisissez un flux qui compte pour les clients, comme publier un changement ou traiter une demande. Listez les étapes dans l'ordre et étiquetez chacune avec la plus proche des six activités.
2. **Incluez le support et l'amélioration dans l'image.** N'arrêtez pas le flux à la mise en production. Montrez ce qui se passe ensuite : traiter les incidents et en tirer des leçons.
3. **Cherchez les activités manquantes.** Si un flux n'a pas d'étape « impliquer », personne ne parle aux utilisateurs. S'il n'a pas d'étape « améliorer », rien n'est appris. Ajoutez-les là où elles comptent.
4. **Chronométrez les attentes.** Pour un flux, notez combien de temps le travail attend entre les activités et où il franchit une frontière d'équipe. La plus longue attente est la première chose à examiner (voir Sujet 5.4 — Gestion du flux de valeur).
5. **Combinez librement les activités.** Laissez différents flux emprunter différents chemins. Une correction de bogue mineur peut aller directement de « fournir et soutenir » à « obtenir/construire » et revenir, sans étape de planification.
6. **Mettez la conception et la transition dans le travail de l'équipe.** Intégrez notes de support, surveillance et formation à la construction, et non comme un transfert à la fin (voir Sujet 3.5 — Gestion des mises en production et des déploiements).
7. **Faites d'« impliquer » une activité continue.** Ne limitez pas le contact avec les utilisateurs au début et à la fin d'un projet. Intégrez le centre de services et les retours des clients à la planification.
8. **Reliez la planification aux preuves de l'exploitation.** Utilisez les données d'incidents et de demandes dans les conversations de planification pour que les objectifs reflètent ce que vivent réellement les utilisateurs (voir Sujet 5.1 — Gestion agile des services).
9. **Nommez un responsable pour chaque flux.** Une personne doit pouvoir dire comment le flux se comporte et pouvoir réunir les équipes pour l'améliorer.
10. **Utilisez la chaîne comme liste de contrôle des lacunes.** Quand quelque chose échoue, demandez quelle activité était faible : plan flou, mauvaise implication, transition bâclée, construction faible, support fragile ou pas d'amélioration.
11. **Gardez le schéma simple.** Un croquis avec six étiquettes suffit. Si le dessin a besoin d'une légende, simplifiez-le.
12. **Revoyez les flux après les changements.** Quand les structures d'équipes, les fournisseurs ou les outils changent, vérifiez si les flux fonctionnent encore comme dessinés.

## Questions à discuter avec votre équipe

**Quels sont les trois flux de valeur les plus importants pour nos utilisateurs, et qui est responsable de chacun ?**

Demandez aux gens de nommer les flux qui comptent le plus, comme un utilisateur qui obtient un nouveau compte ou une correction qui arrive en production. Comparez les listes. Les différences montrent que l'équipe a des images différentes de ce qui compte. L'animateur peut demander qui pourrait répondre de chaque flux de bout en bout. Souvent personne ne le peut, ce qui est un constat.

**Pour un flux, lesquelles des six activités faisons-nous bien, et lesquelles sautons-nous ?**

Dessinez le flux et étiquetez les étapes. Cherchez ensuite les activités manquantes. Les équipes constatent souvent qu'elles planifient et construisent bien, et impliquent et améliorent mal. Demandez ce qu'apporterait l'activité manquante et ce qu'elle coûterait. Choisissez-en une à ajouter à petite échelle.

**Où le travail attend-il entre les activités, et qui est responsable de l'attente ?**

Marquez les transferts et notez les attentes typiques. Beaucoup d'attentes se trouvent à la frontière entre équipes. Demandez si l'attente est nécessaire, par exemple pour un contrôle de risque, ou si elle résulte d'un accident d'organisation des équipes. Choisissez-en une à raccourcir.

**Comment savons-nous ce que les utilisateurs pensent de ce que nous livrons, et à quelle vitesse cela change-t-il nos plans ?**

Retracez un retour récent depuis l'utilisateur jusqu'au carnet. Comptez les étapes. S'il a fallu des semaines ou s'il n'est jamais arrivé, l'activité « impliquer » est faible. Demandez ce qui raccourcirait le chemin, comme un canal partagé avec le centre de services. Convenez d'un changement.

**Que faisons-nous après un incident ou une mise en production pour améliorer la suivante ?**

Regardez les derniers incidents et mises en production à la recherche d'une amélioration consignée. S'il n'y en a pas, l'activité « améliorer » est informelle. Demandez qui est responsable des actions d'amélioration et comment elles sont suivies. Convenez d'un endroit simple pour les consigner.

**Quels flux franchissent les frontières organisationnelles, et qui parle pour l'ensemble ?**

Listez les flux qui impliquent des fournisseurs, d'autres services ou des clients. Demandez qui est responsable du flux de bout en bout et ce qui se passe aux frontières. Un bon résultat est de nommer un coordinateur et d'instaurer une conversation régulière de part et d'autre de la frontière.

## En pratique : un exemple d'ITIL agile

Un groupe hospitalier régional exploite un service de portail patient utilisé pour prendre rendez-vous et consulter les résultats d'examens. Une équipe de dix personnes le construit et l'exploite. L'équipe livre de nouvelles fonctionnalités toutes les deux semaines, mais les patients se plaignent que les corrections des défauts signalés prennent des mois et qu'ils ne reçoivent aucune réponse à leurs messages de retour.

La directrice des services numériques demande à l'équipe de dessiner le flux de valeur d'un défaut signalé, du message du patient jusqu'à la correction en production. Ils étiquettent les étapes avec les six activités. Le message arrive par un formulaire de contact (impliquer) et reste des jours dans une boîte partagée avant que quiconque le trie. Un défaut trié entre dans le même carnet que les nouvelles fonctionnalités (planifier), où il fait mauvaise figure. Une correction est construite (obtenir/construire), testée et publiée avec le lot de fonctionnalités suivant (concevoir et faire la transition, fournir et soutenir). Personne n'informe le patient (impliquer), et personne ne consigne ce que le défaut a appris à l'équipe (améliorer).

L'équipe change le flux. La boîte partagée est consultée chaque jour par un tour de rôle, les défauts sont étiquetés et reçoivent une voie séparée dans le carnet avec pour cible la prochaine version, le patient reçoit une réponse à la réception et une autre quand la correction est en ligne, et chaque défaut de plus d'un mois est discuté à la revue de quinzaine. Après deux mois, le délai médian de correction baisse et les plaintes de patients sur le silence diminuent. Des problèmes subsistent : les défauts qui touchent le système de rendez-vous de l'hôpital, exploité par un fournisseur, attendent encore dans la file du fournisseur, et les messages de réponse sont rédigés par des développeurs dans un langage que certains patients ont du mal à suivre. L'équipe invite le fournisseur à la revue et demande à l'équipe de communication de rédiger des modèles en langage simple.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison passent généralement le plus de temps sur planifier, concevoir et faire la transition, et obtenir/construire. Regardez les trois autres : comment vous impliquez les utilisateurs, comment vous supportez ce que vous livrez et comment vous améliorez. Traitez les demandes de support et les leçons des incidents comme des entrées de la planification.

### Équipes de service et d'exploitation

Les équipes d'exploitation passent le plus de temps sur fournir et soutenir, et sur une partie d'impliquer. Utilisez la chaîne pour montrer comment votre travail dépend d'activités antérieures, comme concevoir et faire la transition, et pour demander ce dont vous avez besoin de leur part. Participez à la planification pour que la connaissance opérationnelle atteigne le début du flux.

### Direction et gouvernance

Les dirigeants peuvent utiliser la chaîne pour demander où le flux casse pour les services importants. Soutenez la désignation de responsables de flux et donnez-leur l'autorité de réunir les équipes. Évitez de transformer les six activités en six services hiérarchiques ; l'enjeu est de les relier.

### Clients et utilisateurs

Les clients et utilisateurs participent surtout à « impliquer », et ils profitent de ce que les retours cheminent jusqu'aux plans et aux corrections. Attendez-vous à des réponses et à des résultats visibles. Dites au fournisseur quel flux compte le plus pour vous et quels retards vous nuisent.

## Modes d'échec courants

- **Lire la chaîne comme une séquence.** Les équipes forcent chaque travail à passer par les six dans l'ordre. À la place, choisissez des chemins adaptés au travail.
- **Cartographier les services hiérarchiques, pas les flux.** Chaque activité est attribuée à un service et le flux est perdu. À la place, retracez un travail à travers eux.
- **Oublier « impliquer » et « améliorer ».** Le flux s'arrête à la mise en production. À la place, incluez le contact avec les utilisateurs et l'apprentissage dans chaque flux.
- **Transfert au lieu de conception et transition.** Notes de support, surveillance et formation sont laissées pour la fin. À la place, intégrez-les au travail dès le départ.
- **Pas de responsable du flux.** Personne ne peut dire comment un flux se comporte. À la place, nommez un responsable avec l'autorité de réunir les équipes.
- **Schémas trop détaillés.** La carte devient une affiche que personne ne lit. À la place, limitez-la à une page et mettez-la à jour quand quelque chose change.
- **Prendre le vocabulaire pour le but.** Les équipes passent du temps à étiqueter et non à améliorer. À la place, n'étiquetez que ce qui aide à trouver une lacune.
- **S'en remettre aux résumés secondaires.** Les descriptions des activités diffèrent selon les sources. À la place, vérifiez les publications du propriétaire quand la précision compte.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Visibilité des flux de valeur | Les flux ne sont connus qu'informellement | Certains flux sont dessinés par leurs équipes | Les flux clés sont cartographiés avec des responsables | Les flux sont mesurés pour les attentes et les résultats | Les flux franchissent les frontières organisationnelles et sont améliorés ensemble |
| Couverture des activités | Planification et construction dominent | Certaines équipes ajoutent des activités « impliquer » et « améliorer » | Les six activités apparaissent dans les flux clés | Les lacunes de couverture sont suivies et comblées | La couverture est équilibrée entre équipes et fournisseurs sur preuves |
| Transferts et transition | Les transferts sont tardifs et non gérés | Certaines équipes incluent le support dans la construction | Support, surveillance et formation font partie de chaque mise en production | Les problèmes de transition sont mesurés et réduits | La transition est partagée entre livraison, exploitation et fournisseurs |
| Retour d'information et amélioration | Les retours arrivent par la plainte | Certains retours atteignent le carnet | Retours et éléments d'amélioration sont suivis avec des responsables | Les effets des améliorations sont vérifiés | Retours et apprentissage circulent continuellement entre équipes et clients |

## Liste de contrôle

- [ ] Nous avons dessiné au moins un flux de valeur qui compte pour les utilisateurs.
- [ ] Chaque étape du dessin est étiquetée avec l'activité de la chaîne de valeur la plus proche.
- [ ] Le flux inclut l'implication des utilisateurs et une étape qui consigne les améliorations.
- [ ] Nous savons où le travail attend et combien de temps, au moins grossièrement.
- [ ] Le travail de conception et de transition, comme la surveillance et les notes de support, fait partie de la construction.
- [ ] Une personne désignée est responsable du flux de bout en bout.
- [ ] Les retours des utilisateurs atteignent le carnet et reçoivent une réponse.
- [ ] Les données d'incidents et de demandes sont utilisées dans la planification.
- [ ] Le flux est revu après des changements importants.
- [ ] Nous avons vérifié dans la publication du propriétaire la définition exacte de chaque activité.

## Prompts d'IA

**Objectif : étiqueter les étapes d'un flux réel avec les six activités.**

```text
Aidez-moi à étiqueter les étapes d'un flux de valeur avec les six activités de la chaîne de valeur des services ITIL : planifier ; améliorer ; impliquer ; concevoir et faire la transition ; obtenir/construire ; fournir et soutenir.

Le flux (ce qu'il livre et à qui) : [décrivez].
Les étapes dans l'ordre, avec qui fait chacune et combien de temps elle a attendu avant, si connu : [collez].

Pour chaque étape, suggérez l'activité la plus proche et donnez une phrase de raisonnement en n'utilisant que mon texte. Listez ensuite quelles activités parmi les six n'apparaissent pas, et ce que cela pourrait signifier, sous forme de questions et non de conclusions. N'inventez ni étapes ni durées. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver où le retour d'information se perd en chemin vers le carnet.**

```text
Je veux retracer comment les retours des utilisateurs atteignent notre carnet.

Où arrivent les retours (canaux) : [listez].
Ce qui arrive à un retour une fois arrivé, étape par étape, avec qui fait chaque étape : [collez].
Un exemple récent, avec les dates : [collez].

Décrivez le chemin dans l'ordre et identifiez les étapes où le retour pourrait se perdre ou être retardé, en n'utilisant que mon texte. Suggérez trois questions pour les personnes concernées et un petit changement pour raccourcir le chemin. N'inventez pas de causes. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un atelier sur les flux de valeur avec le personnel de livraison et d'exploitation.**

```text
Planifiez un atelier de 90 minutes pour [nombre] personnes de la livraison et de l'exploitation afin de dessiner un flux de valeur : [nom du flux].

Préparation : elles apporteront [données, comme les dates d'exemples récents].
Contraintes : [par exemple à distance, fuseaux horaires différents].

Donnez un ordre du jour minuté, des instructions pour dessiner le flux étape par étape, la manière d'étiqueter les étapes avec les six activités de la chaîne de valeur, un moyen de marquer les attentes et les transferts, et une étape finale pour convenir d'un changement avec un responsable et une date. Restez libre de tout outil précis. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger un court guide de la chaîne de valeur pour les nouveaux membres de l'équipe.**

```text
Rédigez un guide d'une page sur la chaîne de valeur des services ITIL pour les nouveaux membres de l'équipe.

N'utilisez que ces notes, que j'ai vérifiées : [collez les noms des six activités et les descriptions que vous avez vérifiées dans des sources officielles, ainsi que des exemples tirés de notre propre travail].

Incluez : à quoi sert la chaîne, un exemple de flux tiré de notre travail et trois questions qu'une nouvelle personne peut poser pour trouver à quelle activité appartient une tâche. Gardez un langage simple. N'ajoutez pas d'affirmations sur ITIL au-delà de mes notes. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md) : à utiliser pour dessiner un flux, chronométrer ses attentes et étiqueter ses étapes.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour analyser comment le travail circule entre les rôles et trouver les problèmes de transfert.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md) : à utiliser pour planifier comment une équipe livre par petites étapes à travers les activités de construction et de mise en production.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md) : à utiliser pour concevoir des moyens de recueillir les retours des utilisateurs pour l'activité « impliquer ».
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour tenir les revues qui rendent l'activité « améliorer » réelle.

## Sources principales

- **ITIL 4 Foundation** (PeopleCert) : la page du propriétaire qui nomme la chaîne de valeur des services parmi les sujets étudiés.
- **ITIL service value system** (Purple Griffon) : le résumé par un organisme de formation des six activités et des flux de valeur ; secondaire.
- **The ITIL 4 Service Value System** (ManageEngine) : le résumé d'un éditeur qui nomme les activités ; secondaire.
- **Value-stream mapping** (Wikipedia) : contexte sur la technique de cartographie que la pratique lean utilise pour trouver le gaspillage.

## Références

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider ; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor ; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
