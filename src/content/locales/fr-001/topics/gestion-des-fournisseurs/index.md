# Gestion des fournisseurs

**La gestion des fournisseurs veille à ce que les tiers dont dépend un service soient choisis avec soin, tenus à des attentes claires et traités comme faisant partie du service, car une promesse faite à vos clients ne vaut que ce que valent les promesses qui la soutiennent.**

## Pourquoi c'est important

Presque aucun service moderne n'est construit et exploité par une seule équipe. Il dépend de plateformes de nuage, d'éditeurs de logiciels, de processeurs de paiement, d'opérateurs de réseau, de sous-traitants et de partenaires spécialisés. Quand l'un d'eux défaille, le client ne fait pas la différence entre votre défaillance et la leur. Leur panne est la vôtre, et le travail de l'expliquer aussi.

Les équipes agiles recourent facilement aux fournisseurs : une carte bancaire, quelques lignes de configuration, et une nouvelle capacité fonctionne. Cette rapidité a de la valeur, et elle crée un écart. Personne n'a peut-être demandé ce qui se passe si le service du fournisseur se dégrade, change ses conditions ou ferme. Personne ne sait peut-être qui est responsable de la relation. La gestion des fournisseurs est la pratique qui comble cet écart en proportion du risque, sans transformer chaque achat en projet.

L'[article de Wikipédia sur la gestion de la relation avec les fournisseurs](https://en.wikipedia.org/wiki/Supplier_relationship_management) décrit l'évaluation systématique, à l'échelle de l'entreprise, des forces, de la performance et des capacités des fournisseurs, alignée sur la stratégie métier, et note que ses sources sont minces et datées, avec plusieurs références de 2009 à 2012. L'[article sur l'intégration et la gestion des services](https://en.wikipedia.org/wiki/Service_integration_and_management) décrit une approche pour les organisations qui utilisent plusieurs fournisseurs. Ce sujet les combine avec les autres sujets du guide et avec la pratique courante de la gestion des services, et dit quand il fait cette dernière.

## Concepts clés

### Gestion de la relation avec les fournisseurs

Selon Wikipédia, la gestion de la relation avec les fournisseurs (SRM) coordonne les interactions avec les fournisseurs tout au long du cycle de vie de la relation, dans le but de bâtir des partenariats bilatéraux avec les fournisseurs stratégiques, de façon analogue à la gestion de la relation client. L'article fait plusieurs remarques utiles pour les équipes de service :

- **Segmentez les fournisseurs.** Les fournisseurs sont segmentés selon la valeur potentielle totale sur plusieurs dimensions, pas seulement la dépense, et selon le degré de risque qui affecte cette valeur. L'article critique une approche « taille unique ».
- **Mesurez la performance dans les deux sens.** Les organisations utilisent des tableaux de bord équilibrés conjoints et bilatéraux avec des mesures quantitatives et qualitatives, et certaines utilisent des tableaux à 360 degrés qui interrogent aussi les fournisseurs.
- **Collaborez.** Les activités conjointes incluent des sommets de fournisseurs, des réunions de dirigeants, la planification conjointe des activités, des revues opérationnelles et la prévision conjointe de la demande. L'article affirme que la prévision conjointe et la refonte des processus ont dégagé des économies de 10 à 30 pour cent pour des organisations de pointe, mais l'article porte des bandeaux de maintenance pour formulation faible et citations manquantes ; traitez donc le chiffre comme une affirmation, non comme un constat.

### Pourquoi la segmentation compte

Vous ne pouvez pas gérer étroitement chaque fournisseur. Une segmentation utile pose deux questions : dans quelle mesure le service dépend-il de ce fournisseur, et à quel point serait-il difficile de le remplacer ? Une grille approximative suit.

| Dépendance et remplaçabilité | Exemples | Approche |
|---|---|---|
| **Critique et difficile à remplacer** | La plateforme de nuage, le processeur de paiement | Relation étroite : responsable nommé, revues régulières, planification conjointe, plans de sortie et de continuité |
| **Important mais remplaçable** | Un outil de surveillance, un service de messagerie | Revue régulière, niveaux de service clairs et plan de bascule si nécessaire |
| **Courant et facile à remplacer** | Fournitures de bureau, une bibliothèque mineure | Contrat léger et vérification périodique |

La grille est l'illustration de ce guide, non d'une source.

### Performance des fournisseurs et service que vous promettez

Vos niveaux de service dépendent de ceux de vos fournisseurs (voir Sujet 3.7 — Gestion des niveaux de service). Si vous promettez 99,9 % de disponibilité et que votre seul fournisseur de nuage en promet moins, l'arithmétique ne tient pas. La gestion des fournisseurs inclut de comparer ce que les fournisseurs se sont engagés à fournir avec ce que vous avez promis, et de concevoir autour de l'écart par la redondance ou en ajustant votre propre promesse.

Dans le vocabulaire ITIL, un accord avec un fournisseur externe qui soutient un accord de niveau de service s'appelle un contrat de soutien (underpinning contract), et un accord entre équipes internes qui le soutient s'appelle un accord de niveau opérationnel (operational-level agreement). Les sources lues pour ce guide ne les définissent pas ; vérifiez donc les termes exacts dans les publications d'ITIL.

### Environnements multi-fournisseurs et SIAM

L'article sur l'intégration et la gestion des services (SIAM) décrit une approche pour gérer plusieurs fournisseurs et les intégrer dans un seul service tourné vers le métier. Il note que les organisations s'approvisionnent de plus en plus en capacités informatiques auprès de plusieurs fournisseurs externes, un modèle appelé multisourcing, qui peut réduire les coûts et encourager la concurrence mais ajoute des frais de gestion et complique la gestion des services de bout en bout. Un **intégrateur de services** assure la gouvernance et la coordination pour que les fournisseurs travaillent ensemble.

L'article liste quatre modèles pour l'intégrateur (interne, fournisseur principal, externe et hybride) et trois couches : l'organisation cliente, l'intégrateur de services et les fournisseurs de services. Il dit que le SIAM est né vers 2005 dans le secteur public britannique, d'abord conçu pour le Department for Work and Pensions, et liste des jalons dont un corpus de connaissances en 2016 et des révisions en 2019 pour COBIT 2019 et ITIL 4. Il note qu'ITIL fournit une base et un langage commun pour travailler avec les fournisseurs mais n'aborde pas en profondeur les environnements multi-fournisseurs. Les difficultés de mise en œuvre qu'il liste incluent des accords de niveau de service désalignés, des fournisseurs qui se rejettent la faute, une responsabilité floue des décisions sur les causes racines et des lacunes de communication.

Peu d'équipes agiles ont besoin d'un SIAM formel, mais les leçons sont utiles : quand plusieurs parties contribuent à un service, quelqu'un doit être responsable de l'ensemble, convenir de la manière dont les problèmes sont traités au-delà des frontières et garder cohérents entre eux les niveaux de service des fournisseurs.

### Contrats et agilité

Les contrats peuvent aider ou gêner le travail agile. Les contrats à périmètre fixe et à prix fixe conviennent mal à l'apprentissage en marchant (voir Sujet 1.1 — Manifeste agile sur la collaboration avec les clients plus que la négociation contractuelle). Les accords qui permettent le changement, avec des moyens clairs d'ajuster le périmètre et de mesurer la valeur, conviennent mieux. Un contrat doit aussi couvrir ce qui intéresse la gestion des services : niveaux de service, heures de support, traitement des incidents, protection des données, obligations de sécurité, droits d'audit, sortie et continuité. Vos collègues du juridique et des achats doivent mener sur les termes juridiques.

### Risque

Les fournisseurs apportent des risques : défaillance, changement de conditions ou de prix, faiblesses de sécurité, concentration chez un seul fournisseur, enfermement et dépendances propres du fournisseur. L'article SRM liste la réduction du risque de défaillance comme un but sans décrire de méthodes. Les mesures pratiques incluent de connaître les dispositifs de continuité du fournisseur lui-même, de répartir les dépendances critiques, de garder les données portables et de répéter la sortie (voir Sujet 3.12 — Gestion de la continuité des services et Sujet 3.13 — Gestion de la sécurité des informations).

### La relation, pas seulement le contrat

L'article SRM souligne les partenariats bilatéraux. Les fournisseurs qui comprennent vos plans peuvent aider ; les fournisseurs traités seulement comme des sources de factures ne le feront pas. Partagez les prévisions, impliquez-les dans les revues d'incidents qui les concernent et écoutez leurs retours sur votre comportement, comme des paiements tardifs ou des demandes floues.

### Limites des sources

L'article SRM ne donne ni critères de sélection, ni clauses de contrat, ni calendriers de mise en œuvre. L'article SIAM n'a pas de section de critiques. Les deux sont généraux. Pour les termes juridiques et financiers, appuyez-vous sur vos fonctions des achats et du juridique et sur le contrat lui-même.

## Bonnes pratiques

1. **Listez vos fournisseurs et ce pour quoi vous dépendez d'eux.** Incluez nuage, logiciel, réseau, paiement et sous-traitants. Pour chacun, notez quel service il soutient et qui, dans votre équipe, est responsable de la relation.
2. **Segmentez par dépendance et remplaçabilité.** Décidez quels rares fournisseurs sont critiques et investissez-y votre attention. Gardez une main légère pour les autres.
3. **Nommez un responsable pour chaque fournisseur important.** Une personne doit connaître le contrat, les contacts, la performance et les plans. Sans responsable, les relations se dégradent.
4. **Vérifiez que les engagements des fournisseurs soutiennent vos promesses.** Comparez ce que chaque fournisseur critique s'est engagé à fournir avec ce que vous avez dit aux clients. Comblez l'écart par la conception, par la négociation ou en changeant votre promesse.
5. **Convenez à l'avance du traitement des incidents.** Sachez comment signaler un problème au fournisseur, avec quelle rapidité il répond, qui peut escalader et comment il communiquera. Testez la voie avant d'en avoir besoin.
6. **Incluez la sécurité et la protection des données.** Demandez aux fournisseurs comment ils protègent votre information et ce qu'ils vous diront après une atteinte. Mettez-le dans le contrat, avec l'équipe juridique.
7. **Planifiez la sortie et la défaillance.** Pour les fournisseurs critiques, gardez les données portables, connaissez les alternatives et rédigez un court plan pour la défaillance du fournisseur ou votre départ. Répétez la partie que vous pouvez.
8. **Revoyez la performance ensemble.** Tenez des revues régulières avec les fournisseurs critiques, partagez les données dans les deux sens et convenez d'actions. Demandez au fournisseur comment vous pourriez être un meilleur client.
9. **Incluez les fournisseurs dans l'apprentissage.** Invitez-les aux revues d'incidents et aux séances de planification qui les concernent. Partagez les leçons qui les aident à vous aider.
10. **Rendez les contrats flexibles là où l'on attend de l'apprentissage.** Pour le travail de développement, préférez des accords qui permettent au périmètre de changer, avec des points de revue clairs, aux promesses à périmètre fixe. Gardez fermes les obligations de service.
11. **Utilisez un seul intégrateur quand de nombreux fournisseurs contribuent.** Pour un service qui dépend de plusieurs prestataires, nommez qui est responsable du résultat de bout en bout et comment les problèmes inter-fournisseurs sont résolus. Ne le laissez pas au client.
12. **Revoyez régulièrement le portefeuille de fournisseurs.** Une fois par an, vérifiez quels fournisseurs sont encore nécessaires, lesquels sont des risques concentrés et lesquels sont moins chers ou meilleurs ailleurs.

## Questions à discuter avec votre équipe

**Quels fournisseurs pourraient arrêter notre service s'ils défaillaient, et que ferions-nous ?**

Demandez à chaque personne de nommer les dépendances qui l'inquiéteraient le plus. Compilez la liste et marquez chacune comme critique, importante ou courante. Pour chaque critique, demandez ce que l'équipe ferait dans la première heure d'une défaillance. Les réponses typiques révèlent des lacunes de contacts, d'alternatives et de données. Choisissez-en une à planifier.

**Qu'ont promis nos fournisseurs, et qu'avons-nous promis à nos clients ?**

Mettez les deux côte à côte pour un service clé. Là où la promesse du fournisseur est plus faible, la promesse au client est menacée. L'animateur peut demander si quelqu'un a lu récemment les niveaux de service du fournisseur. Convenez d'un écart à combler.

**Qui est responsable de chaque relation importante avec un fournisseur ?**

Parcourez la liste et nommez un responsable pour chacun. Les lacunes sont courantes : la personne qui a signé le contrat est partie, ou un outil a été acheté par carte et personne ne le gère. Demandez ce dont le responsable aurait besoin pour faire le travail, comme du temps et un contact. Attribuez des responsables là où il en manque.

**Comment apprenons-nous un problème chez un fournisseur, et comment le disons-nous à nos utilisateurs ?**

Retracez la dernière fois qu'un fournisseur a eu une panne. Demandez comment vous l'avez appris, combien de temps cela a pris et ce que vous avez dit aux clients. Discutez des pages d'état, des contacts et des canaux convenus. Planifiez une amélioration, comme un abonnement au flux d'état du fournisseur ou un contact d'escalade désigné.

**Que faudrait-il pour quitter ce fournisseur, et voudrions-nous jamais le faire ?**

Pour un fournisseur critique, interrogez l'exportation des données, les produits alternatifs et les conditions du contrat. Les équipes découvrent souvent un enfermement qu'elles n'avaient pas voulu. Discutez de la façon de le réduire là où le risque justifie le coût. Consignez une courte note de sortie.

**Nos fournisseurs savent-ils ce que nous planifions, et savons-nous ce qu'ils planifient ?**

Demandez quand chaque fournisseur critique a entendu parler de vos plans pour la dernière fois et quand vous avez entendu parler des leurs. Les surprises dans les deux sens causent des ennuis. Discutez d'une conversation régulière. Convenez d'un fournisseur par lequel commencer.

## En pratique : un exemple d'ITIL agile

Un diffuseur régional exploite une application et un site d'actualités avec une équipe de quatorze personnes. Le service dépend d'un fournisseur de nuage, d'un réseau de diffusion de contenu, d'un service de notifications poussées, d'un outil de modération des commentaires et d'une petite entreprise qui fournit un module de direct. Quand le service du fournisseur du module de direct est tombé en panne pendant une soirée électorale, l'application a affiché des erreurs pendant deux heures et la réputation du diffuseur en a souffert. Personne dans l'équipe ne pouvait dire qui était le contact chez le fournisseur ; le module avait été ajouté par un développeur qui était parti depuis.

Le responsable de la plateforme mène une revue. L'équipe liste tous les fournisseurs, en les classant selon la dépendance du service à leur égard et la facilité de les remplacer. Le fournisseur de nuage et le réseau de diffusion de contenu sont critiques, et le service de notifications et le module sont importants mais remplaçables. Chacun reçoit un responsable dans l'équipe. Pour le fournisseur du module, l'équipe obtient des contacts, lit les conditions et constate qu'aucun niveau de service n'est promis. Elle décide de garder le fournisseur mais d'ajouter une solution de repli : si le module ne se charge pas, la page montre un lien statique vers le direct. Pour le fournisseur de nuage, elle compare ses engagements avec la disponibilité promise aux rédacteurs en chef du diffuseur et trouve un écart dans une région, qu'elle comble en répartissant le service sur deux.

Six mois plus tard, une deuxième panne chez le fournisseur de notifications est détectée par la surveillance en quelques minutes, le responsable la signale au fournisseur par la voie convenue et l'application continue de fonctionner avec des notifications retardées. Des difficultés subsistent. Les rédacteurs veulent que le module de direct fasse plus, mais le fournisseur est trop petit pour s'engager sur un niveau de service, et les règles d'achat du diffuseur rendent un remplacement lent. Le responsable de la plateforme convient avec les achats de mener un petit essai d'une alternative et de revoir la liste de fournisseurs chaque année.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison choisissent et intègrent de nombreux fournisseurs. Consignez chaque dépendance quand vous l'ajoutez, nommez un responsable et interrogez les niveaux de service et la sortie avant de vous y fier. Construisez des solutions de repli pour les défaillances que vous pouvez imaginer.

### Équipes de service et d'exploitation

Les équipes d'exploitation traitent avec les fournisseurs lors des incidents. Gardez à jour les contacts et les voies d'escalade, testez-les et consignez la performance des fournisseurs. Apportez ces preuves aux revues et aux achats.

### Direction et gouvernance

Les dirigeants et les achats façonnent les termes et la relation. Demandez une liste des fournisseurs critiques et de leurs risques, soutenez des contrats flexibles pour le travail fondé sur l'apprentissage et veillez à ce que le contrat couvre niveaux de service, sécurité et sortie. Demandez qui est responsable du résultat de bout en bout quand de nombreux fournisseurs contribuent.

### Clients et utilisateurs

Les clients et utilisateurs comptent sur toute la chaîne, pas sur un seul maillon. Demandez aux fournisseurs quels prestataires comptent pour le service que vous utilisez et comment ils le protègent. Quand quelque chose va mal, attendez de l'honnêteté sur la partie qui a failli et sur ce qui est fait.

## Modes d'échec courants

- **Dépendances cachées.** Un outil ajouté par un développeur devient critique et personne n'en est responsable. À la place, consignez chaque dépendance et nommez un responsable.
- **Taille unique.** Chaque fournisseur reçoit le même lourd processus, ou aucun n'en reçoit. À la place, segmentez par dépendance et remplaçabilité.
- **Des promesses qui ne s'additionnent pas.** La promesse au client est plus forte que celle du fournisseur. À la place, comparez les engagements et comblez l'écart.
- **Aucune voie testée.** La ligne de support du fournisseur est découverte pendant une panne. À la place, convenez des contacts et de l'escalade à l'avance et testez-les.
- **Enfermement par accident.** Les données ne peuvent pas être exportées. À la place, vérifiez tôt la portabilité et consignez une note de sortie.
- **Un contrat, pas de relation.** Le fournisseur est un inconnu quand les ennuis arrivent. À la place, tenez des revues régulières et partagez les plans.
- **Personne n'est responsable de l'ensemble.** Plusieurs fournisseurs se rejettent la faute. À la place, nommez un intégrateur du service de bout en bout et convenez du traitement inter-fournisseurs.
- **Contrats à périmètre fixe pour un travail incertain.** Le contrat lutte contre l'apprentissage. À la place, utilisez des accords qui laissent le périmètre changer dans des limites claires.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Connaître les fournisseurs | Les fournisseurs sont connus d'individus | Certaines équipes listent leurs fournisseurs | Une liste partagée avec dépendance, remplaçabilité et responsables | La liste est revue au regard des incidents et des changements | La liste est partagée entre équipes et reliée aux services |
| Engagements et service | Les niveaux de service des fournisseurs sont inconnus | Les conditions des fournisseurs clés sont lues | Les engagements des fournisseurs sont comparés aux promesses aux clients | La performance des fournisseurs est mesurée et revue | Les engagements sont alignés tout au long de la chaîne avec revue conjointe |
| Incidents et risque | Les problèmes de fournisseurs sont découverts par hasard | Certains contacts sont connus | Les voies d'escalade sont convenues et testées ; les risques sont consignés | Incidents et risques liés aux fournisseurs sont suivis et traités | Traitement des incidents et plans de risque sont conjoints avec les fournisseurs |
| Relation et sortie | Les fournisseurs sont transactionnels | Quelques réunions avec des fournisseurs | Revues régulières avec les fournisseurs critiques et courtes notes de sortie | La santé de la relation et la préparation à la sortie sont revues | Les fournisseurs participent à la planification et à l'amélioration |

## Liste de contrôle

- [ ] Nous avons une liste de fournisseurs et de ce que chacun soutient.
- [ ] Les fournisseurs sont triés par dépendance et remplaçabilité.
- [ ] Chaque fournisseur important a un responsable nommé.
- [ ] Nous avons comparé les engagements des fournisseurs avec nos promesses aux clients pour les services clés.
- [ ] Les contacts et voies d'escalade des fournisseurs critiques sont connus et testés.
- [ ] Les attentes de sécurité et de protection des données figurent au contrat ou sont convenues par écrit.
- [ ] Une courte note de sortie ou de défaillance existe pour chaque fournisseur critique.
- [ ] Nous tenons des revues régulières avec les fournisseurs critiques.
- [ ] Là où plusieurs fournisseurs contribuent, quelqu'un est responsable du résultat de bout en bout.
- [ ] La liste de fournisseurs est revue au moins une fois par an.

## Prompts d'IA

**Objectif : construire une liste de fournisseurs et de dépendances à partir de ce que vous savez.**

```text
Aidez-moi à construire une liste de fournisseurs et de dépendances pour [service].

Ce que fait le service et sur quoi il est construit : [décrivez composants, services en nuage, outils et sous-traitants].
Ce que je sais de chacun : [par exemple nom, ce pour quoi nous l'utilisons, qui l'a mis en place, état du contrat].

Produisez un tableau avec : fournisseur, ce qu'il soutient, qui est responsable de la relation (ou « inconnu »), à quel point il semble critique (critique, important, courant, avec une raison tirée de mon texte) et une question à poser. Marquez les suppositions. N'inventez ni fournisseurs ni conditions. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : comparer les engagements des fournisseurs avec vos promesses aux clients.**

```text
Voici les engagements que nous avons pris envers les clients pour [service] : [collez, par exemple disponibilité et délai de réponse].
Voici les engagements pris par nos fournisseurs, avec la formulation exacte de leurs conditions : [collez pour chaque fournisseur].

Comparez-les. Pour chaque engagement envers un client, listez de quels fournisseurs il dépend, si leurs engagements semblent soutenir les nôtres (en n'utilisant que le texte collé) et quelles lacunes existent. Suggérez des changements de conception ou d'accord sous forme de questions à considérer. N'interprétez pas les termes juridiques ; signalez tout ce qui est ambigu pour une revue juridique. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une réunion de revue avec un fournisseur.**

```text
Planifiez une revue de 45 minutes avec [fournisseur] au sujet de [service qu'il nous fournit].

Données que nous avons : [incidents qui le concernent, délais de réponse, demandes, avec les dates ; uniquement de vraies données].
Préoccupations que nous voulons soulever : [listez].
Choses que nous voulons demander sur ses plans : [listez].
Choses qu'il pourrait attendre de nous : [listez, ou écrivez « inconnu »].

Donnez un ordre du jour minuté, un résumé d'une page de nos données, cinq questions pour lui, trois choses que nous devrions offrir et une étape finale qui consigne des actions avec des responsables et des dates. N'inventez pas de données. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une courte note de sortie pour un fournisseur critique.**

```text
Aidez-moi à rédiger une note de sortie pour [fournisseur], qui fournit [service].

Ce que nous stockons chez lui ou par lui, et comment nous pourrions l'exporter : [décrivez].
Alternatives que nous connaissons : [listez, ou écrivez « inconnu »].
Conditions du contrat sur le préavis et la restitution des données, si connues (collez le texte exact) : [collez, ou écrivez « non lu »].

Rédigez une note d'une page avec : ce qui dépend de lui, ce dont nous aurions besoin pour partir (données, configuration, compétences), une séquence approximative d'étapes (laissez les délais comme [à estimer]), les risques et les questions à poser au fournisseur. N'interprétez pas le contrat. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour planifier le choix, la revue et la relation avec un fournisseur.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner les risques liés aux fournisseurs et la manière dont ils sont gérés.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md) : à utiliser pour comprendre qui, dans votre organisation et chez le fournisseur, compte pour la relation.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md) : à utiliser pour vérifier que les engagements des fournisseurs soutiennent ce que vous promettez.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour clarifier qui est responsable de chaque relation avec un fournisseur et qui est consulté.

## Sources principales

- **Supplier relationship management** (Wikipedia) : un aperçu de la segmentation, des tableaux de bord et de la collaboration avec les fournisseurs, avec des bandeaux de maintenance qui montrent où les sources sont faibles.
- **Service integration and management** (Wikipedia) : l'approche multi-fournisseurs, avec ses couches, ses modèles et ses difficultés de mise en œuvre.
- **Service-level agreement** (Wikipedia) : contexte sur les accords que signent fournisseurs et clients.
- **ITIL** (Wikipedia) : contexte sur la façon dont ITIL traite les fournisseurs.

## Références

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
