# Indicateurs et mesure

**Une bonne mesure aide une équipe à voir si son travail aide les utilisateurs et s'améliore, et la manière la plus sûre d'utiliser une mesure est comme une question à discuter, jamais comme une cible à atteindre.**

## Pourquoi c'est important

Les équipes ont besoin de chiffres pour s'orienter. Sans eux, les décisions reposent sur la mémoire, les voix fortes et la dernière personne qui a parlé. Avec de mauvais chiffres, les décisions peuvent être pires que rien : une équipe qui compte les tickets clos apprend à clore vite les tickets, que les problèmes des utilisateurs soient résolus ou non. La mesure est puissante, et elle change les comportements d'une manière que ses concepteurs n'ont pas toujours voulue.

Ce guide a déjà employé beaucoup de mesures : les mesures de livraison logicielle de DORA (voir Sujet 3.4 — Habilitation des changements), les quatre mesures de flux du Guide Kanban (voir Sujet 1.5 — Kanban), les indicateurs et objectifs de niveau de service (voir Sujet 3.7 — Gestion des niveaux de service) et la charge d'appels (voir Sujet 3.10 — Surveillance et gestion des événements). Ce sujet les rassemble, ajoute la fixation de buts par objectifs et résultats clés et les mesures de satisfaction des clients, et les oppose au plus ancien avertissement du domaine : la loi de Goodhart.

L'[article de Wikipédia sur la loi de Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) donne l'adage sous sa forme habituelle, « quand une mesure devient une cible, elle cesse d'être une bonne mesure », et l'attribue à l'économiste britannique Charles Goodhart, qui écrivit dans un article de 1975 sur la politique monétaire du Royaume-Uni que toute régularité statistique observée tend à s'effondrer dès qu'on exerce une pression sur elle à des fins de contrôle. La formulation habituelle est plus tardive, et l'article l'attribue à Keith Hoskin (1996) et à l'article de 1997 de Marilyn Strathern. Le point a une longue histoire dans divers domaines, et c'est le bon point de départ pour ce sujet.

## Concepts clés

### Mesures, cibles et loi de Goodhart

Une **mesure** décrit quelque chose. Une **cible** est un chiffre que quelqu'un est censé atteindre. Le passage de la première à la seconde est le point où les ennuis commencent. Dès que les gens sont récompensés ou punis pour un chiffre, ils trouvent des moyens de faire bouger le chiffre qui ne reviennent pas à améliorer la chose qu'il décrit. L'article donne des exemples tirés de la politique monétaire, des systèmes scolaires et des soins de santé. Dans une organisation de services, des exemples faciles sont : le temps de clôture des tickets qui baisse parce que les tickets sont clos trop tôt, le nombre de déploiements qui monte parce que les changements sont fragmentés, et la disponibilité qui semble monter parce que les pannes sont reclassées.

Le remède n'est pas d'éviter de mesurer mais de mesurer avec soin :

- Utilisez plusieurs mesures qui tirent en sens contraire, comme la vitesse et la qualité.
- Discutez des chiffres avec les personnes dont ils décrivent le travail.
- Ne liez pas des récompenses ou des sanctions individuelles à un seul chiffre.
- Changez de mesures quand elles cessent d'être informatives.

### Sortes de mesures

| Sorte | Question à laquelle elle répond | Exemples |
|---|---|---|
| **Résultat** | Les utilisateurs et le métier s'en trouvent-ils mieux ? | Satisfaction des utilisateurs, réussite des tâches, revenus, incidents qui nuisent aux utilisateurs |
| **Flux** | Le travail circule-t-il bien ? | Temps de cycle, débit, âge de l'élément, travail en cours |
| **Performance de livraison** | Les changements arrivent-ils bien en production ? | Délai de livraison d'un changement, fréquence de déploiement, taux d'échec des changements, temps de rétablissement |
| **Niveau de service** | Le service répond-il aux besoins des utilisateurs ? | Disponibilité, latence, taux d'erreur par rapport aux objectifs |
| **Santé et durabilité** | Cela peut-il durer ? | Charge d'appels, labeur, heures supplémentaires, sentiment du personnel |
| **Coût** | Combien cela coûte-t-il par unité de valeur ? | Coût par transaction ou par utilisateur |

Un ensemble équilibré puise dans plusieurs lignes, pour que l'amélioration de l'une ne soit pas payée aux dépens d'une autre.

### Mesures DORA

Les mesures de performance de livraison logicielle de DORA sont le délai de livraison d'un changement, la fréquence de déploiement, le temps de rétablissement après un déploiement raté, le taux d'échec des changements et le taux de reprise des déploiements. Le guide de DORA sur les indicateurs dit que vitesse et stabilité ne sont pas des compromis, car les mesures sont corrélées pour la plupart des équipes. Il met en garde contre le fait de les fixer comme buts, de s'appuyer sur une seule, de comparer des applications très différentes et de rivaliser avec d'autres équipes, et conseille de s'améliorer par rapport à sa propre performance passée. L'article de Wikipédia sur DevOps ajoute que certains experts ont critiqué la méthodologie et les indicateurs de la recherche DORA ; traitez-les donc comme des questions utiles aux limites connues (voir Sujet 5.2 — DevOps).

### Mesures de flux

Le Guide Kanban définit quatre mesures : le travail en cours, le débit, l'âge de l'élément et le temps de cycle. Il note que les équipes peuvent les renommer et devraient en ajouter d'autres au besoin, et dit que les mesures ne comptent que si elles informent les pratiques de définition du flux de travail, de gestion des éléments qui s'y trouvent et d'amélioration. L'âge de l'élément est particulièrement utile car il montre les ennuis alors qu'il est encore temps d'agir (voir Sujet 5.4 — Gestion du flux de valeur).

### Mesures de niveau de service

Les indicateurs et objectifs de niveau de service (voir Sujet 3.7 — Gestion des niveaux de service) donnent la vue la plus directe de ce que vivent les utilisateurs. Le livre sur la SRE plaide pour quelques indicateurs choisis d'après ce qui importe aux utilisateurs, pour des percentiles et pas seulement des moyennes, et pour des objectifs qui ne sont pas la perfection. Les budgets d'erreur transforment l'écart en règle de décision partagée (voir Sujet 5.3 — Ingénierie de la fiabilité des sites).

### Objectifs et résultats clés

Les **objectifs et résultats clés (OKR)** sont un cadre de fixation de buts. L'article de Wikipédia décrit un OKR comme un objectif, un but significatif, concret et clairement défini, associé à trois à cinq résultats clés, qui sont des critères de réussite mesurables. Il crédite Andrew Grove d'avoir popularisé l'approche chez Intel dans les années 1970 et de l'avoir documentée dans *High Output Management* (1983), et John Doerr de l'avoir apportée à Google en 1999. L'article dit que les OKR sont notés de 0,0 à 1,0, que les résultats clés ambitieux visent environ 0,7 et que Doerr recommande un taux de réussite cible d'environ 70 pour cent, de sorte qu'un résultat clé toujours atteint devrait être réévalué. Il conseille d'éviter les objectifs de routine et de privilégier les indicateurs avancés plutôt que les indicateurs retardés.

L'article consigne aussi des critiques : la plupart des organisations ont cessé de fixer des OKR aux contributeurs individuels, qui tendent à ressembler à des listes de tâches et à se confondre avec les évaluations de performance, et les OKR à plusieurs niveaux peuvent créer une approche en cascade. Il ne donne aucune preuve indépendante d'efficacité et porte un bandeau de maintenance sur le recours à des sources proches du sujet. Pour les équipes de service, les OKR peuvent relier des résultats (par exemple « les utilisateurs terminent l'inscription sans aide ») à des résultats clés mesurables, pourvu qu'ils ne soient pas transformés en cibles individuelles.

### Satisfaction des clients

Mesurer ce que pensent les utilisateurs est difficile à bien faire. Un instrument courant est l'**indice de recommandation net (NPS)**. Selon Wikipédia, il repose sur une question sur la probabilité que les répondants recommandent une entreprise, un produit ou un service, les promoteurs donnant 9 ou 10, les passifs 7 ou 8 et les détracteurs 6 ou moins ; le score est le pourcentage de promoteurs moins le pourcentage de détracteurs. Fred Reichheld de Bain & Company l'a popularisé dans un article de 2003 de la *Harvard Business Review*. L'article consigne des limites : les chercheurs doutent qu'il prédise fiablement la croissance d'une entreprise, une question unique demande un grand nombre de réponses, il dit peu de choses sur des problèmes précis, le sursollicitation par des enquêtes suscite des plaintes, et le lier à la rémunération peut fausser les comportements, si bien que Reichheld a recommandé de dissocier les deux. D'autres instruments existent, comme les scores de satisfaction des clients et les scores d'effort des clients, mais l'article ne les discute pas.

Quel que soit l'instrument, posez une question courte, permettez toujours une réponse en texte libre, lisez les commentaires et donnez suite à ce que vous apprenez.

### Mesurer les personnes et la durabilité

Les mesures de charge et de santé du personnel, comme la charge d'appels, le labeur, les heures supplémentaires et le sentiment, sont des mesures de la durabilité du service (voir Sujet 5.3 — Ingénierie de la fiabilité des sites). Traitez-les comme de l'information sur le système et non comme des mesures de la performance des individus.

### Mesurer l'IA et l'automatisation

Quand une étape automatisée ou assistée par IA est introduite, ajoutez des mesures de sa qualité : à quelle fréquence les humains la contredisent, à quelle fréquence elle se trompe et ce qu'elle coûte (voir Sujet 6.2 — IA dans la gestion des services informatiques).

### Limites

Les mesures sont partielles. Elles omettent ce qui est difficile à compter, comme la confiance, le sens du métier et le jugement. Elles peuvent induire en erreur quand les données sont incomplètes ou que les définitions diffèrent entre équipes. Les articles lus ici offrent peu de preuves empiriques sur la question de savoir si les programmes de mesure améliorent les résultats. Traitez tout programme comme une expérience, et revoyez-le.

## Bonnes pratiques

1. **Partez de la question.** Demandez quelle décision une mesure éclairerait et qui agirait en conséquence. Si personne, ne la collectez pas.
2. **Choisissez un petit ensemble équilibré.** Prenez quelques mesures parmi résultat, flux, livraison, niveau de service et santé. Veillez à ce que certaines tirent en sens contraire.
3. **Définissez chaque mesure précisément.** Écrivez ce qui est compté, d'où et ce qui est exclu. Deux équipes qui emploient le même mot pour des choses différentes produisent des chiffres incomparables.
4. **Mesurez par service ou par équipe, et comparez avec son propre passé.** Évitez de classer les équipes. DORA conseille de s'améliorer par rapport à sa propre performance passée et d'être prudent en comparant des applications différentes.
5. **Ne faites pas d'un seul chiffre une cible.** Utilisez les mesures comme amorces de discussion et fixez les buts comme des résultats. Quand une mesure est une cible, guettez la triche (voir la loi de Goodhart).
6. **Associez les chiffres à des histoires.** Pour toute tendance, regardez quelques cas réels. Les chiffres disent où regarder ; les cas disent pourquoi.
7. **Regardez les distributions.** Utilisez percentiles et étendues, pas seulement des moyennes, pour les mesures de temps et de taille.
8. **Préférez les indicateurs avancés quand vous le pouvez.** Des mesures comme l'âge de l'élément montrent les ennuis avant qu'ils arrivent, contrairement aux mesures de résultats passés.
9. **Fixez les buts avec des objectifs et résultats clés avec soin.** Si vous utilisez des OKR, gardez-les au niveau de l'équipe et de l'organisation, évitez les objectifs de routine et traitez un résultat toujours atteint comme un signe qu'il faut viser plus haut.
10. **Interrogez les utilisateurs, brièvement et souvent.** Utilisez une question courte avec texte libre, lisez les commentaires et répondez. Ne liez pas les scores d'enquête à la rémunération individuelle.
11. **Surveillez le coût de la mesure.** Préférez les données que les outils produisent en sous-produit du travail. Abandonnez les rapports manuels que personne n'utilise.
12. **Revoyez les mesures elles-mêmes.** Une ou deux fois par an, demandez quelles mesures ont mené à des décisions et lesquelles non, et retirez les secondes.

## Questions à discuter avec votre équipe

**Laquelle de nos mesures a mené à une décision au cours des six derniers mois ?**

Listez les mesures et demandez une décision liée à chacune. Les mesures sans lien sont candidates au retrait. L'animateur peut demander quelle mesure les gens croient le moins et pourquoi. Retirez-en ou corrigez-en une.

**Que devient notre comportement quand un chiffre est une cible ?**

Demandez un exemple récent où un chiffre était une cible. Sondez ce que les gens ont fait pour l'atteindre. L'adage de Goodhart est le cadre. Demandez à quoi ressemblerait une meilleure mesure ou un appariement de mesures. Convenez d'un changement.

**Mesurons-nous ensemble la vitesse et la qualité ?**

Listez les mesures de vitesse et les mesures de qualité. Si les listes sont déséquilibrées, discutez de l'effet. Par exemple, mesurer le temps de clôture des tickets sans les contacts répétés invite à clore tôt. Choisissez un appariement.

**Que nous disent les utilisateurs de la manière dont cela se passe, et comment le demandons-nous ?**

Regardez les questions que vous posez aux utilisateurs et leur fréquence. Lisez à voix haute quelques réponses en texte libre. Demandez ce qui a changé grâce à elles. Convenez d'une question courte à essayer.

**Lesquelles de nos mesures pourraient servir à juger des individus, et que devons-nous faire à ce sujet ?**

Identifiez les mesures que les gens pourraient craindre. Discutez des risques et convenez de règles explicites sur ce à quoi les chiffres ne serviront pas. Écrivez-les.

**Si nous ne pouvions garder que cinq mesures, lesquelles garderions-nous ?**

Demandez à chacun d'en choisir cinq et comparez. Le recoupement montre le noyau ; les différences montrent des besoins différents. Le résultat est un ensemble de départ. Vérifiez qu'il couvre résultats, flux, niveaux de service et santé.

## En pratique : un exemple d'ITIL agile

Le groupe informatique d'une compagnie ferroviaire nationale exploite les systèmes derrière l'information aux voyageurs. Le groupe présente chaque mois à l'équipe de direction un tableau de bord de 40 mesures. Le tableau de bord est lu par peu de gens, et deux mesures dominent la discussion : le nombre d'incidents clos dans le délai cible et le nombre de mises en production par trimestre. L'équipe des incidents a appris à clore vite les incidents et à en rouvrir de nouveaux pour la même panne, et plusieurs équipes de livraison fragmentent leur travail en mises en production triviales pour respecter le compte.

Le chef du groupe informatique demande à une petite équipe de reconstruire les mesures. Elle commence par demander quelles décisions le tableau de bord devrait éclairer. Pour chaque service, elle choisit une poignée de mesures : un indicateur et un objectif de niveau de service orientés utilisateur, le délai de livraison d'un changement et le taux d'échec des changements, l'âge de l'élément pour les éléments de problème ouverts, la charge d'appels par ingénieur et un sondage mensuel d'une question sur la satisfaction du personnel des gares avec une zone de texte libre. Les anciens comptes sont retirés. L'équipe de direction convient qu'aucune mesure ne servira à classer les équipes ni à fixer des primes individuelles, et le chef de l'informatique l'écrit comme une règle sur le tableau de bord. On demande aux équipes de fixer des buts d'amélioration pour les services dont elles sont responsables sous forme d'objectifs avec résultats clés, au niveau de l'équipe seulement.

Au bout d'un an, le tableau de bord compte douze mesures, et la revue mensuelle est devenue une conversation sur les plus vieux problèmes ouverts et sur les commentaires en texte libre. Les incidents répétés diminuent et les mises en production ont plus de sens. Certaines difficultés subsistent. Le sondage de satisfaction reçoit peu de réponses du personnel de nuit, le délai d'une équipe paraît mauvais parce qu'elle est la seule à compter le temps depuis l'idée et non depuis la validation, et un responsable a commencé à citer le score du sondage dans une évaluation de performance. Le chef de l'informatique demande à l'équipe d'harmoniser les définitions, rappelle la règle aux responsables et organise un court sondage lors de la relève de l'équipe de nuit.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison devraient choisir des mesures qui les aident à s'orienter, tirer les chiffres de leurs outils et en discuter en rétrospective. Guettez les mesures qui récompensent la fragmentation du travail ou la dissimulation des échecs. Partagez ce que vous apprenez avec les autres équipes.

### Équipes de service et d'exploitation

Les équipes d'exploitation portent beaucoup de mesures de niveau de service et de santé. Gardez des définitions claires et des données fiables, incluez charge d'appels et labeur, et présentez les chiffres avec des cas et des commentaires. Résistez quand une mesure est utilisée comme une cible.

### Direction et gouvernance

Les dirigeants façonnent la culture de la mesure. Dites à quoi les chiffres serviront et ne serviront pas, demandez des tendances et des histoires plutôt que des classements, et résistez à l'ajout de mesures pour chaque nouvelle inquiétude. Revoyez l'ensemble de temps en temps.

### Clients et utilisateurs

Les clients et utilisateurs sont à la fois une source de mesures et leur objet. Répondez aux courts sondages quand vous le pouvez et dites ce qui compte. Demandez aux fournisseurs ce qu'ils mesurent de votre expérience et ce qu'ils ont fait des résultats.

## Modes d'échec courants

- **Des mesures comme cibles.** La triche suit. À la place, utilisez les mesures pour discuter et fixez les buts comme des résultats.
- **Un seul chiffre.** Une mesure unique fausse les comportements. À la place, utilisez un ensemble équilibré qui tire en sens contraire.
- **Des définitions incohérentes.** Les équipes comptent différemment. À la place, définissez chaque mesure et sa source.
- **Des classements.** Les équipes rivalisent et cachent les problèmes. À la place, comparez chaque équipe à son propre historique.
- **Des moyennes seulement.** Les longues traînes sont cachées. À la place, regardez distributions et percentiles.
- **Mesurer ce qui est facile.** Des chiffres commodes remplacent les importants. À la place, partez des décisions et des résultats pour les utilisateurs.
- **Des OKR individuels comme listes de tâches.** Les buts deviennent des évaluations de performance. À la place, gardez les OKR au niveau de l'équipe et de l'organisation.
- **Lassitude des sondages et liens avec la paie.** Les utilisateurs cessent de répondre, ou les scores sont manipulés. À la place, gardez les sondages courts et dissociés de la rémunération.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Choix et définition | Les mesures sont ponctuelles | Certaines équipes définissent quelques mesures | Un ensemble équilibré aux définitions claires est utilisé par service | L'ensemble est revu pour son utilité et ses lacunes | Les mesures sont alignées entre équipes, fournisseurs et clients |
| Usage dans les décisions | Les chiffres sont rapportés mais rarement utilisés | Certaines équipes en discutent en revue | Les mesures alimentent les décisions régulières et l'amélioration | Les décisions liées aux mesures sont suivies et en tirent des leçons | Les mesures guident les décisions dans toute l'organisation |
| Protection contre la triche | Des cibles sont fixées sur des chiffres uniques | Une certaine conscience de la distorsion | Des règles sur l'usage des mesures sont écrites et suivies | Les signes de triche sont surveillés et les mesures ajustées | La culture de la mesure est partagée dans l'organisation |
| Mesures d'utilisateurs et de santé | Peu de données d'utilisateurs ou du personnel | Quelques sondages ou données de charge | Courts sondages d'utilisateurs et mesures de durabilité sont routiniers | Les résultats mènent à des actions planifiées et sont vérifiés | Les voix des utilisateurs et du personnel façonnent les priorités entre services |

## Liste de contrôle

- [ ] Chaque mesure que nous rapportons a une décision déclarée qu'elle éclaire.
- [ ] Nous utilisons un petit ensemble équilibré qui comprend des mesures de résultat, de flux, de niveau de service, de livraison et de santé.
- [ ] Chaque mesure a une définition et une source écrites.
- [ ] Les équipes sont comparées à leur propre historique, non classées.
- [ ] Nous avons écrit à quoi les mesures ne serviront pas.
- [ ] Les mesures de temps montrent des distributions ou des percentiles.
- [ ] Les utilisateurs reçoivent régulièrement une question courte avec place pour des commentaires, et les réponses sont lues.
- [ ] Si nous utilisons des OKR, ils sont au niveau de l'équipe ou de l'organisation et non des cibles individuelles.
- [ ] Les données sont tirées des outils en sous-produit du travail quand c'est possible.
- [ ] Nous revoyons les mesures elles-mêmes au moins une fois par an.

## Prompts d'IA

**Objectif : choisir un ensemble équilibré de mesures pour un service.**

```text
Aidez-moi à choisir un petit ensemble équilibré de mesures pour [service].

Ce que fait le service et qui l'utilise : [décrivez].
Décisions que l'équipe et son propriétaire doivent prendre le trimestre prochain : [listez].
Données dont nous disposons déjà : [listez outils et enregistrements].
Mesures que nous rapportons actuellement : [listez].

Proposez de cinq à huit mesures parmi résultat, flux, performance de livraison, niveau de service et santé (par exemple âge de l'élément, délai de livraison d'un changement, un indicateur de disponibilité, charge d'appels et une courte question de satisfaction). Pour chacune, dites quelle décision elle éclaire, de quelles données elle a besoin et une façon dont elle pourrait être truquée. Ne fixez pas de cibles. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver comment une mesure pourrait être truquée.**

```text
Voici une mesure que nous utilisons et comment elle est utilisée : [décrivez la mesure, sa définition et qui la voit ou est récompensé pour elle].

Listez les façons dont les gens pourraient changer leur comportement pour améliorer le chiffre sans améliorer le travail sous-jacent, en n'utilisant que la description. Suggérez une mesure appariée qui révélerait chaque distorsion et une question à poser à l'équipe. N'accusez personne. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger des OKR pour une équipe de service sans en faire des tâches.**

```text
Aidez-moi à rédiger des OKR pour [équipe] pour le trimestre prochain.

Contexte : [décrivez le service et le principal problème des utilisateurs].
Résultats que nous voulons pour les utilisateurs : [listez].
Mesures que nous collectons déjà : [listez].
Risques que nous avons vus avec des buts par le passé : [par exemple triche ou listes de tâches].

Rédigez deux ou trois objectifs, chacun avec trois à cinq résultats clés qui sont des résultats mesurables (non des tâches), en n'utilisant que des mesures que nous pouvons collecter, et laissez les valeurs cibles comme [à convenir avec l'équipe]. Pour chaque résultat clé, nommez la source de données et une distorsion possible. Ne fixez pas d'OKR individuels. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : analyser les commentaires en texte libre d'un sondage.**

```text
Voici les commentaires en texte libre de notre dernier sondage d'utilisateurs : [collez des commentaires anonymisés].

Regroupez les commentaires en thèmes d'après ce qu'ils disent uniquement. Pour chaque thème, donnez un nom, le nombre de commentaires de ma liste, deux courtes citations d'exemple et une question pour l'équipe. Mettez en évidence les thèmes qui apparaissent à la fois dans des commentaires positifs et négatifs. N'en déduisez ni données démographiques ni sentiment au-delà du texte. Si l'échantillon est petit, dites-le. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md) : à utiliser pour choisir et interpréter des mesures de livraison et de performance de service.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md) : à utiliser pour choisir des mesures d'alerte précoce des risques pour un service.
- [survey-design](../../../../skills/survey-design/SKILL.md) : à utiliser pour concevoir de courts sondages d'utilisateurs et du personnel qui produisent des réponses exploitables.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md) : à utiliser pour recueillir les retours des utilisateurs et des collègues et y répondre.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md) : à utiliser pour relier les mesures de résultats à ce sur quoi l'équipe travaille ensuite.

## Sources principales

- **DORA's software delivery performance metrics** (dora.dev) : définitions des cinq mesures et mises en garde sur leur usage.
- **Goodhart's law** (Wikipedia) : l'origine et la formulation de l'adage selon lequel une mesure utilisée comme cible cesse d'être une bonne mesure.
- **Objectives and key results** (Wikipedia) : le cadre, ses origines, la notation et les critiques.
- **Net promoter score** (Wikipedia) : la définition, les usages et les critiques d'une mesure de satisfaction.

## Références

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
