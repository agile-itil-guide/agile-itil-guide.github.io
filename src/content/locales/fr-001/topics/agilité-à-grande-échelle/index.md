# Agilité à grande échelle

**Passer l'agilité à l'échelle, c'est coordonner de nombreuses équipes, de nombreux services et fournisseurs sans perdre les boucles de retour courtes qui faisaient fonctionner l'agile, et le principal risque est d'ajouter des couches de processus avant de savoir quel problème vous résolvez.**

## Pourquoi c'est important

Une seule équipe agile d'une dizaine de personnes peut se parler chaque jour. Un vrai service en implique généralement davantage : plusieurs équipes de livraison, un groupe d'exploitation, un centre de services, la sécurité, une équipe réseau et des fournisseurs. Quand le travail de nombreux groupes doit s'emboîter, la conversation quotidienne d'une équipe ne suffit plus et de nouveaux problèmes apparaissent. Les priorités entrent en conflit, les dépendances bloquent le travail et chaque équipe améliore sa propre partie sans que l'ensemble du service s'améliore.

Plusieurs cadres prétendent résoudre cela. Ils diffèrent par la taille, le coût et la philosophie, et suscitent des opinions tranchées. Certaines organisations adoptent un grand cadre sous forme de programme et passent des années au déploiement. D'autres passent à l'échelle en levant les obstacles et en gardant un petit ensemble de règles. La position honnête, appuyée par l'[article de Wikipédia sur le développement logiciel agile](https://en.wikipedia.org/wiki/Agile_software_development), est que les avis divergent sur l'efficacité des cadres de passage à l'échelle et que les preuves sont limitées.

Pour les personnes de la gestion des services informatiques (ITSM), le passage à l'échelle compte parce qu'ITIL fonctionne déjà à grande échelle. Il décrit un système de valeur des services qui relie de nombreuses pratiques et parties (voir Sujet 2.3 — Le système de valeur des services ITIL). La question à laquelle ce sujet aide est comment combiner les deux : comment coordonner de nombreuses équipes agiles tout en gardant les pratiques de gestion des services qui protègent les utilisateurs, sans bâtir une seconde couche de bureaucratie par-dessus la première.

## Concepts clés

### Pourquoi une équipe est différente de plusieurs

L'article de Wikipédia sur le développement logiciel agile rapporte que le passage à l'échelle apporte des difficultés lorsqu'un projet implique plus d'une vingtaine de développeurs ou lorsque les équipes sont réparties sur plusieurs sites. Il existe des stratégies et des cadres pour ces cas, mais l'article note des avis contradictoires sur leur conformité à la définition de l'agile.

Trois problèmes reviennent quand on ajoute des équipes :

- **Alignement :** les équipes ont besoin d'une direction commune et de priorités cohérentes, sinon elles optimiseront des choses différentes.
- **Dépendances :** le travail d'une équipe attend celui d'une autre, et les attentes se multiplient avec le nombre d'équipes.
- **Intégration :** le produit de nombreuses équipes doit s'assembler en un service qui fonctionne, et plus on teste tard, plus les surprises coûtent cher.

### Quatre approches bien connues

Le tableau suivant résume quatre approches nommées. Les résumés s'appuient sur les articles de Wikipédia et sur les pages des propriétaires des cadres telles que lues pour ce guide ; vérifiez les versions actuelles aux sources avant de vous fier aux détails.

| Approche | Créateurs ou propriétaire | Idée principale | Taille et forme |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Décrit d'abord dans le livre de Dean Leffingwell de 2007 *Scaling Software Agility* ; documents publiés par Scaled Agile, Inc. | Un ensemble de schémas d'organisation et de flux de travail inspirés de l'agile, du développement de produit lean et de la pensée systémique | Des configurations allant du niveau équipe et programme (Agile Release Trains) jusqu'aux grandes solutions et portefeuilles |
| **Large-Scale Scrum (LeSS)** | Craig Larman et Bas Vodde | Faire passer Scrum lui-même à l'échelle : un Product Owner et un Carnet de produit pour un produit, de nombreuses équipes fonctionnelles pluridisciplinaires, avec aussi peu de rôles et d'artefacts supplémentaires que possible | LeSS pour environ deux à huit équipes ; LeSS Huge pour davantage, avec des Zones d'exigences de plusieurs équipes chacune |
| **Disciplined Agile (DA)** | Scott Ambler et Mark Lines ; racheté par le Project Management Institute (PMI) en août 2019 | Une boîte à outils d'objectifs de processus et d'options qui aide une équipe à choisir sa propre façon de travailler selon le contexte | Hybride et sensible au contexte, avec plusieurs cycles de vie et une couche pour l'entreprise |
| **Scrum@Scale et autres** | Nommés à côté de SAFe dans l'article de Wikipédia | D'autres cadres pour coordonner plusieurs équipes Scrum | Voir les sites des propriétaires |

### SAFe plus en détail

L'article de Wikipédia dit que SAFe a été formellement décrit pour la première fois en 2007, avec une première version en 2011 et la version 6.0 en mars 2023. Pour la version 5.1, il liste quatre configurations : Essential SAFe (niveau équipe et programme), Large Solution SAFe, Portfolio SAFe et Full SAFe. L'article liste aussi dix principes, dont adopter une vision économique et appliquer la pensée systémique.

SAFe a suscité des critiques ouvertes, que l'article consigne. Thoughtworks a soutenu que le contrôle descendant génère du gaspillage, Ken Schwaber l'a critiqué dans un billet de 2013 et Jeff Gothelf a soutenu en 2021 que SAFe n'est pas agile. Les critiques le disent hiérarchique et inflexible et affirment qu'il peut donner à une organisation l'apparence de l'agilité tout en conservant les anciens processus. Les partisans apprécient son vocabulaire commun et sa structure pour les grandes organisations. Lisez les deux camps avant de décider.

### LeSS : passer à l'échelle en retirant

Larman et Vodde décrivent LeSS comme Scrum appliqué à de nombreuses équipes travaillant sur un seul produit. Il n'ajoute aucune couche par-dessus Scrum. Selon l'introduction du cadre lui-même, un Product Owner gère un Carnet de produit et les équipes produisent un seul produit livrable dans un Sprint commun. LeSS énonce une idée de « plus avec moins » : moins de rôles, d'artefacts et de règles produisent des équipes plus responsables. Pour la méthode sous-jacente, voir Sujet 1.4 — Prévision de livraison et indicateurs de planification.

### Disciplined Agile : choisissez votre façon de travailler

L'article de Wikipédia sur Disciplined Agile Delivery décrit une boîte à outils hybride, centrée sur les personnes, qui couvre tout le cycle de vie de la livraison. Elle prend en charge six cycles de vie et décrit 21 objectifs de processus. L'approche consiste à aider les équipes à choisir les pratiques adaptées à leur situation, plutôt que de prescrire un cadre unique. L'article porte un avis de maintenance indiquant qu'il pourrait s'appuyer trop sur des sources proches du sujet.

### Scrum de scrums et coordination simple

Avant d'adopter un cadre, envisagez les outils les plus simples. Un « scrum de scrums » réunit des représentants de plusieurs équipes pour partager l'avancement et résoudre les dépendances. Une planification trimestrielle commune, un carnet commun pour un produit et une réunion régulière des responsables d'équipe sont d'autres options légères. Beaucoup d'organisations passent assez bien à l'échelle avec cela.

### Passage à l'échelle dans une organisation de services

Dans une organisation informatique, les équipes peuvent être organisées de plusieurs façons, et le choix influe sur la capacité de l'agile à passer à l'échelle :

| Organisation | Comment les équipes sont organisées | Effet sur le passage à l'échelle |
|---|---|---|
| **Par composant** | Une équipe par couche technique ou par système | Les fonctionnalités nécessitent plusieurs équipes, donc les dépendances sont nombreuses |
| **Par fonctionnalité ou produit** | Équipes pluridisciplinaires qui possèdent une tranche tournée vers le client | Moins de dépendances ; nécessite des normes partagées pour les plateformes |
| **Par service** | Une équipe par service, qui possède sa construction et son exploitation | Proche de la gestion des services ; nécessite un moyen de traiter les plateformes partagées |
| **Plateforme plus flux** | Équipes qui fournissent une plateforme et équipes qui l'utilisent | Nécessite des accords de service clairs entre elles |

Aucun schéma n'est le meilleur pour tous. Passer d'équipes par composant à des équipes organisées autour de produits ou de services est une étape courante, et elle est difficile, car elle change qui rend compte à qui.

### Ce que disent la recherche et la critique

L'article sur le développement logiciel agile affirme que les preuves empiriques en faveur des méthodes agiles en général sont limitées et peu concluantes. Pour les cadres de passage à l'échelle, les sources consultées offrent surtout des opinions et des documents de fournisseurs. Traitez avec prudence toute affirmation d'amélioration mesurée, demandez les preuves qui la fondent et testez tout cadre d'abord sur une petite partie de votre organisation.

## Bonnes pratiques

1. **Partez du problème, pas du cadre.** Nommez ce qui va mal : dépendances lentes, priorités contradictoires, intégration tardive. Choisissez l'approche la plus légère qui y répond et n'en adoptez davantage que si elle ne suffit pas.
2. **Essayez d'abord la coordination la plus simple.** Une planification commune, un scrum de scrums et un carnet commun pour chaque produit résolvent de nombreux problèmes à faible coût. N'ajoutez de la structure que lorsque ceux-ci cessent de fonctionner.
3. **Organisez les équipes autour de la valeur.** Préférez des équipes qui possèdent un produit ou un service de bout en bout, avec les compétences pour le construire et l'exploiter. Cela réduit les transferts et les dépendances et correspond à la façon dont ITIL conçoit les services (voir Sujet 2.6 — La chaîne de valeur des services).
4. **Gardez une liste ordonnée par produit.** Avoir un seul carnet de produit avec un responsable unique, comme le recommande LeSS, supprime une grande partie des conflits entre équipes. Là où ce n'est pas possible, rendez visible l'ordre des priorités entre équipes.
5. **Planifiez ensemble à un rythme régulier.** Réunissez équipes et parties prenantes clés tous les quelques mois pour s'aligner sur les objectifs, les dépendances et les risques. Gardez l'événement court et fondé sur des preuves, et évitez d'en faire une négociation sur des plans détaillés.
6. **Intégrez en continu.** Testez ensemble le produit de toutes les équipes aussi souvent que possible, idéalement chaque jour. L'intégration tardive est la raison la plus courante pour laquelle les grands programmes surprennent leurs sponsors (voir Sujet 1.6 — Programmation extrême).
7. **Rendez visibles les dépendances et réduisez-les.** Listez quelles équipes attendent lesquelles et comptez les attentes. Réduisez-les en changeant les frontières des équipes, en partageant des compétences ou en bâtissant des plateformes partagées avec des interfaces claires.
8. **Définissez des accords de service entre équipes.** Lorsqu'une équipe fournit une plateforme ou un service à une autre, convenez de ce qui est attendu : disponibilité, réponse, heures de support et façon de demander des changements (voir Sujet 3.7 — Gestion des niveaux de service).
9. **Adaptez et notez ce que vous avez changé.** Quel que soit le cadre adopté, consignez les parties que vous suivez, celles que vous laissez de côté et pourquoi. Des étiquettes honnêtes évitent qu'un hybride soit jugé au regard d'un cadre qu'il n'a jamais voulu suivre.
10. **Pilotez avant de déployer.** Essayez l'approche avec quelques équipes, mesurez les résultats qui vous importent et apprenez. Ne l'étendez que lorsque le pilote montre un bénéfice que vous savez décrire.
11. **Gardez une gouvernance légère et fondée sur les résultats.** Demandez des preuves comme le flux de livraison, les tendances d'incidents et les retours des utilisateurs, et non des rapports d'état que chaque équipe écrit dans un format différent (voir Sujet 5.7 — Gouvernance, risques et conformité).
12. **Revoyez régulièrement la structure.** Tenez une revue une ou deux fois par an pour demander si les frontières d'équipes, les rôles et les cérémonies servent encore le travail. Des structures qui convenaient à 30 personnes peuvent être inadaptées à 300.

## Questions à discuter avec votre équipe

**Quel problème attendons-nous que le passage à l'échelle résolve, et comment saurons-nous qu'il est résolu ?**

Demandez aux gens de nommer la douleur : intégration tardive, priorités contradictoires, longues attentes d'autres équipes. Notez chacune avec un exemple récent. Un cadre choisi sans problème énoncé est une solution en quête de problème. L'animateur peut demander quelle serait la correction la plus simple possible pour chaque problème, et quelles preuves montreraient qu'elle a fonctionné.

**Quelles autres équipes attendons-nous le plus, et combien de temps attendons-nous ?**

Cartographiez les dépendances sur un mur et ajoutez l'attente typique de chacune. Les équipes qui se croyaient indépendantes sont souvent surprises. Demandez quelles dépendances sont réelles et lesquelles viennent de frontières historiques entre équipes. Choisissez une dépendance à supprimer, soit en changeant l'organisation des équipes, soit en partageant des compétences.

**Qui décide de l'ordre du travail entre nos équipes, et comment le savons-nous ?**

Suivez un conflit de priorité récent du début à sa résolution. Cherchez les escalades, les réunions et les arrangements informels. Demandez si une personne responsable unique, comme dans LeSS, pourrait trancher. Considérez ce qui serait perdu ou gagné. Un bon résultat est une voie claire pour trancher les conflits, même si ce n'est pas un nouveau rôle.

**Qu'un cadre comme SAFe, LeSS ou Disciplined Agile nous apporterait-il que nous ne puissions obtenir à moindre coût ?**

Demandez à quelqu'un qui a lu sur chacun de l'expliquer en quelques phrases, et demandez les critiques les plus fortes. L'article de Wikipédia sur SAFe en liste plusieurs, et les sites des propriétaires des cadres listent des bénéfices. L'animateur doit garder la discussion pratique : que ferions-nous lundi si nous l'adoptions, et qui devrait changer quoi ? Décidez ce qu'il faut essayer, le cas échéant, et ce qu'il faut garder tel quel.

**Comment vérifions-nous que le travail de toutes nos équipes s'emboîte, et à quelle fréquence ?**

Comptez les jours entre un changement d'une équipe et son premier test avec les changements de toutes les autres. Des écarts plus longs signifient de plus grandes surprises. Demandez ce qui empêche l'intégration quotidienne, comme les environnements, les données de test ou la responsabilité. Choisissez un obstacle à lever.

**Lesquels de nos contrôles s'appliquent de la même façon à toutes les équipes, et lesquels devraient dépendre du risque ?**

Listez les contrôles standard, comme les revues, les approbations et les rapports. Demandez lesquels sont ajustés pour le travail peu risqué. Les contrôles uniformes sont faciles à administrer et lents pour tous. Les contrôles qui dépendent du risque ont besoin de critères clairs. Choisissez un contrôle à revoir.

## En pratique : un exemple d'ITIL agile

Le service informatique d'une grande banque de détail compte 14 équipes de livraison et un groupe d'exploitation central. Chaque équipe a adopté Scrum, mais les clients de la banque voient peu d'amélioration. Les mises en production de l'application de banque mobile nécessitent des changements de cinq équipes, et chaque version est coordonnée par un bureau de programme qui suit les dépendances dans un tableur. Une version récente a été retardée de trois semaines parce que deux équipes ont découvert à la dernière minute que leurs changements étaient incompatibles.

Un architecte et le responsable de l'exploitation mènent une étude sur six mois de mises en production. Ils constatent que la plupart des retards viennent de l'intégration tardive et de priorités floues entre les équipes qui partagent un carnet de fonctionnalités mobiles. Ils envisagent d'adopter un grand cadre, mais décident de commencer petit. Ils créent un carnet unique pour l'application mobile avec un responsable de produit unique, et fusionnent la planification des cinq équipes en une séance commune toutes les six semaines. Ils mettent en place une chaîne partagée qui construit et teste ensemble chaque nuit les changements de toutes les équipes, et ajoutent le groupe d'exploitation à la séance de planification commune.

Après deux trimestres, le nombre d'incompatibilités de dernière minute baisse et les versions sortent toutes les deux semaines. Certains problèmes persistent. La responsable de produit peine avec le volume des demandes et passe l'essentiel de son temps à arbitrer, et deux équipes dépendent encore d'une équipe centrale de bases de données dont la file est longue. La banque convient de rendre visible la file de l'équipe des bases de données dans la planification commune et d'essayer une voie en libre-service pour les changements de base de données courants. Elle décide aussi de reporter toute décision sur un cadre jusqu'à ce qu'un second domaine de produit ait essayé la même approche.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison portent l'essentiel du fardeau du passage à l'échelle : planification commune, chaînes partagées et accords avec les voisins. Travaillez à réduire les dépendances à la source, en apprenant les compétences de l'équipe voisine ou en construisant des interfaces qui n'exigent pas de coordination. Participez aux événements de planification avec de vraies informations sur l'avancement et le risque.

### Équipes de service et d'exploitation

Le personnel d'exploitation doit participer à la planification dès le départ, car beaucoup de dépendances entre équipes sont opérationnelles : environnements, accès, surveillance et support. Apportez les données de service à la séance de planification et convenez de niveaux de service avec les équipes qui dépendent de vous. Plaidez pour des plateformes qui donnent aux équipes de livraison du libre-service.

### Direction et gouvernance

Les dirigeants façonnent la structure qui détermine la réussite du passage à l'échelle. Résistez à la tentation d'acheter un cadre pour se dispenser de décider ce que l'organisation veut être. Demandez un énoncé clair du problème, un pilote et des preuves. Gardez le reporting léger et acceptez que les changements de structure puissent être inconfortables pour les responsables.

### Clients et utilisateurs

Les clients doivent voir un service cohérent et non les coutures entre équipes. Attendez-vous à un point de contact unique pour un produit et à une voie claire pour les demandes. Dites au responsable de produit ce qui compte le plus, et attendez-vous à ce que la réponse comporte des arbitrages entre exigences concurrentes.

## Modes d'échec courants

- **Acheter un cadre pour éviter une décision.** Une organisation adopte un cadre dans l'espoir qu'il réglera les désaccords sur les priorités. À la place, décidez qui a autorité sur les priorités, puis voyez quel cadre, le cas échéant, aide.
- **Copier un schéma.** On ajoute des rôles et des réunions sans en comprendre les raisons. À la place, n'adoptez que les éléments qui répondent à un problème nommé.
- **Ajouter des couches.** Coordinateurs, bureaux de programme et comités se multiplient pendant que les équipes perdent de l'autonomie. À la place, supprimez les dépendances pour qu'il y ait moins à coordonner.
- **Intégration tardive.** Les équipes intègrent à la fin d'un long cycle. À la place, intégrez et testez tous les changements ensemble chaque jour.
- **Contrôles uniformes.** Chaque équipe suit le même processus lourd quel que soit le risque. À la place, fondez les contrôles sur le risque et rendez rapides les voies peu risquées.
- **Ignorer l'exploitation.** La planification inclut développeurs et responsables de produit mais aucun personnel d'exploitation. À la place, incluez l'exploitation dans la planification commune et partagez les données de service.
- **Juger un hybride au regard du cadre.** Les critiques disent que ce n'est pas le cadre, les partisans disent que si. À la place, donnez à votre approche son propre nom et décrivez-la.
- **Ne jamais revoir la structure.** Des frontières tracées à 30 personnes persistent à 300. À la place, revoyez la structure des équipes et des rôles au moins une fois par an.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Alignement et priorités | Chaque équipe fixe ses propres priorités | Certaines équipes partagent un carnet ou se réunissent pour s'aligner | Les produits ont un carnet ordonné et une planification commune à un rythme régulier | L'alignement est vérifié au regard des résultats et les dépendances sont mesurées | Les priorités sont ajustées en continu entre équipes, clients et fournisseurs |
| Dépendances | Les attentes d'autres équipes ne sont pas gérées | Certaines équipes listent leurs dépendances | Les dépendances sont visibles et des accords existent entre équipes | Les délais d'attente des dépendances sont mesurés et réduits | Les frontières d'équipes sont remodelées à partir de preuves pour supprimer les dépendances |
| Intégration | L'intégration a lieu à la fin | Certaines équipes intègrent plus souvent | Des chaînes partagées intègrent et testent fréquemment les changements de tous | Les échecs d'intégration et leurs causes sont suivis et corrigés | Environnements et tests d'intégration sont partagés et améliorés entre équipes |
| Gouvernance et structure | Les contrôles sont uniformes et lents | Il existe quelques voies peu risquées | Les contrôles varient selon le risque avec des critères clairs | Les résultats et l'efficacité des contrôles sont revus | Structure et contrôles sont revus et ajustés routinièrement dans toute l'organisation |

## Liste de contrôle

- [ ] Nous pouvons énoncer en une phrase le problème que le passage à l'échelle doit résoudre.
- [ ] Nous avons cartographié les dépendances entre nos équipes et connaissons l'attente typique de chacune.
- [ ] Chaque produit a un carnet ordonné avec un responsable unique.
- [ ] Équipes et parties prenantes clés planifient ensemble à un rythme régulier.
- [ ] Le produit de toutes les équipes est construit et testé ensemble au moins une fois par jour.
- [ ] Les équipes qui fournissent des plateformes ou des services à d'autres ont des accords de service écrits.
- [ ] Le personnel d'exploitation participe à la planification entre équipes.
- [ ] Les contrôles varient selon le risque, et la voie peu risquée est rapide.
- [ ] Tout cadre que nous adoptons a d'abord été piloté à petite échelle.
- [ ] Nous avons noté quelles parties de tout cadre nous suivons et lesquelles non.
- [ ] La structure des équipes et des rôles est revue au moins une fois par an.

## Prompts d'IA

**Objectif : cartographier les dépendances entre équipes à partir d'une description d'un travail récent.**

```text
Aidez-moi à comprendre les dépendances entre équipes dans une livraison récente.

Équipes concernées : [listez les équipes et ce que fait chacune].
Livraison récente : [décrivez une mise en production ou un projet récent qui a nécessité le travail de plusieurs équipes, avec des dates approximatives de fin pour chaque équipe et ce qu'elle a attendu].

En n'utilisant que ce que j'ai écrit, produisez un tableau des dépendances (quelle équipe a attendu laquelle, pour quoi et à peu près combien de temps). Mettez en évidence les trois plus longues attentes. Pour chacune, suggérez un moyen de réduire la dépendance et une question à poser aux équipes. N'inventez pas de durées. Posez-moi d'abord des questions de clarification si la description est mince, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : comparer des options de passage à l'échelle à un problème énoncé.**

```text
Notre problème : [décrivez en 3 à 5 phrases, avec un exemple récent].
Nombre d'équipes et de personnes : [nombres].
Notre coordination actuelle : [par exemple réunion hebdomadaire des responsables d'équipe, un bureau de programme, aucune].

À partir du texte que je colle ci-dessous, résumez ce que propose chacune de ces approches : [collez de courts extraits ou résumés tirés des pages publiques des propriétaires pour les approches que vous envisagez, comme SAFe, LeSS, Disciplined Agile ou un simple scrum de scrums]. N'utilisez que le texte collé.

Puis, pour chaque approche, listez quelles parties de notre problème elle traite, ce qu'elle exigerait de nous et quelles questions nous devrions poser à son propriétaire. N'affirmez rien sur une approche qui ne figure pas dans le texte collé. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une séance de planification commune pour plusieurs équipes.**

```text
Planifiez une séance de planification commune d'une demi-journée pour [nombre] équipes travaillant sur [produit ou service].

Participants : [rôles].
Éléments disponibles : [par exemple le carnet de chaque équipe, une liste de dépendances, des données récentes d'incidents].
Contraintes : [par exemple des personnes dans des fuseaux horaires différents].

Donnez un ordre du jour minuté qui couvre les objectifs partagés, les dépendances, les risques et le plan pour la prochaine [période]. Incluez ce que chaque équipe apporte, ce que fait l'animateur et une étape finale qui consigne les engagements convenus et les questions ouvertes. Restez libre de tout outil précis. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger un accord entre une équipe plateforme et les équipes qui l'utilisent.**

```text
Aidez-moi à rédiger un accord de travail d'une page entre une équipe qui fournit [plateforme ou service] et les équipes qui l'utilisent.

Ce que fait aujourd'hui l'équipe plateforme : [décrivez].
Ce dont les équipes utilisatrices ont besoin : [listez, ou écrivez « inconnu »].
Contraintes connues : [heures de support, règles de sécurité, outils].

Rédigez des sections sur le périmètre, la façon de demander des changements, les attentes de disponibilité et de réponse (laissez les chiffres comme [à convenir] et ne les inventez pas), la gestion des incidents et la revue de l'accord. Marquez chaque élément qui est une hypothèse. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md) : à utiliser pour comprendre les rôles, événements et niveaux de SAFe et juger quelles parties vous sont nécessaires.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md) : à utiliser pour appliquer Scrum à plusieurs équipes travaillant sur un même produit.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md) : à utiliser pour choisir des pratiques par objectif de processus selon votre contexte.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md) : à utiliser comme moyen léger de coordonner quelques équipes avant d'adopter un cadre.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md) : à utiliser pour décider comment un ensemble de produits et d'initiatives sont choisis et financés.

## Sources principales

- **Scaled agile framework** (Wikipedia) : une vue d'ensemble de l'histoire, des configurations et des critiques de SAFe avec citations.
- **Introduction to LeSS** (less.works) : la brève description par les créateurs de Large-Scale Scrum et de son idée de « plus avec moins ».
- **Disciplined agile delivery** (Wikipedia) : un résumé de la boîte à outils, de ses cycles de vie et de ses objectifs.
- **Agile software development** (Wikipedia) : la section sur le travail à grande échelle, délocalisé et distribué et la discussion sur les avis contradictoires au sujet des cadres de passage à l'échelle.

## Références

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
