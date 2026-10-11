# Gestion des demandes de service

**La gestion des demandes de service traite les choses courantes que demandent les utilisateurs, comme des accès, du matériel et de l'information, et l'objectif agile est de rendre chaque demande courante rapide, prévisible et en grande partie automatique, afin que des personnes qualifiées passent leur temps sur les problèmes.**

## Pourquoi c'est important

Une grande partie du travail qui arrive à un centre de services n'est pas du tout un échec. C'est un utilisateur qui demande quelque chose que le service est censé fournir : un nouveau compte, l'accès à un dossier, un ordinateur portable, une licence, une réinitialisation de mot de passe. Ces demandes sont prévisibles et répétitives. Bien traitées, elles sont rapides et personne ne le remarque. Mal traitées, elles sont la source de longues attentes, de questions répétées et d'une frustration sourde qui abîme la réputation d'une équipe plus que n'importe quelle panne isolée.

Le traitement des demandes est aussi l'endroit où l'automatisation et le libre-service rapportent le plus. Une demande qui suit chaque fois les mêmes étapes peut être conçue une fois, testée et en grande partie automatisée. L'[article de Wikipédia sur la gestion des services informatiques](https://en.wikipedia.org/wiki/IT_service_management) définit une demande de service comme une demande courante pour un service et mentionne l'automatisation des processus informatiques, qui remplace les étapes manuelles courantes par des étapes automatisées pour que le personnel puisse se concentrer sur un travail plus prioritaire. C'est le but de cette pratique en une phrase.

L'article n'en dit guère plus sur les demandes. Ce sujet combine donc cette définition avec des conseils pratiques tirés de la pratique courante de la gestion des services, offerts comme tels, et avec les autres sujets du guide sur le centre de services, le catalogue de services et la connaissance. Quand une chose relève de la pratique courante et non d'un constat tiré d'une source, le texte le dit.

## Concepts clés

### Ce qu'est une demande de service

Une **demande de service** est une demande courante pour quelque chose qu'un service fournit normalement. Elle diffère d'un **incident**, qui est une interruption ou une interruption potentielle d'un service, et d'un **changement**, qui modifie un service (voir Sujet 3.2 — Gestion des incidents et Sujet 3.4 — Habilitation des changements). La frontière peut se brouiller : « j'ai besoin d'accéder au système financier » est une demande ; « j'ai accès mais le système affiche une erreur » est un incident ; « ajoutez un nouveau champ au système financier » est probablement un changement.

Un test pratique : si le travail suit une procédure connue, a un coût et un risque connus, et si la réponse à « est-ce permis ? » est déjà décidée à l'avance, c'est une demande. Tout ce qui exige un jugement neuf sur le risque relève plus probablement d'un changement ou d'un projet.

### Pourquoi la distinction compte

Mélanger demandes et incidents fausse les deux. Les comptes de « tickets » mêlent deux types de demande différents. Les priorités s'opposent, car un incident qui arrête le travail doit passer avant une demande qui peut attendre. Les mesures de réponse trompent : un long délai moyen de clôture peut cacher que les demandes attendent des approbations alors que les incidents sont corrigés vite. Garder les deux séparés permet de fixer des objectifs adaptés et de voir où est le retard (voir Sujet 2.1 — Gestion des services informatiques).

### Modèles de demande

Un **modèle de demande** est un schéma répétable pour un type de demande : quelle information est nécessaire, qui doit approuver, quelles étapes sont faites par qui ou par l'automatisation et quel est le délai attendu. Les modèles de demande sont une idée largement employée en gestion des services. Ils donnent à une équipe un moyen de concevoir une fois les demandes courantes et de les exécuter de nombreuses fois. Un catalogue de services liste les demandes disponibles (voir Sujet 3.8 — Gestion du catalogue de services).

Un modèle pour « ordinateur portable d'un nouvel arrivant » peut préciser : l'information nécessaire de la part du responsable, l'approbation (aucune, si le rôle figure sur une liste standard), les étapes (commander, configurer, expédier) et le délai attendu. Un modèle pour « accès à un système restreint » comprendra une approbation par le propriétaire du système et un enregistrement pour l'audit.

### Approbation

Certaines demandes exigent une approbation avant d'avancer : dépenses, accès à des données sensibles ou utilisation de ressources rares. La question de conception est de savoir si l'approbation apporte un vrai contrôle. Une approbation qui dit toujours oui est un retard. Là où des approbations sont nécessaires, rendez-les rapides et visibles, dites à l'approbateur exactement ce qui est demandé et prévoyez une solution de repli s'il ne répond pas. Quand l'approbation dépend d'un rôle, comme un responsable approuvant la demande d'un membre de son équipe, envisagez de préapprouver les éléments standard pour le rôle.

### Exécution et automatisation

L'exécution est le travail de livraison de la demande. L'article sur l'ITSM décrit l'automatisation des processus informatiques comme l'automatisation des tâches courantes pour que le personnel puisse se concentrer sur un travail plus prioritaire. Les candidates à l'automatisation sont les demandes fréquentes, qui suivent une procédure stable et comportent peu de risque : réinitialisations de mot de passe, appartenances à des groupes, installations de logiciels standard. L'automatisation doit être construite avec le même soin que n'importe quel changement, avec des tests et un moyen de voir ce qu'elle a fait.

### Libre-service

Beaucoup d'organisations proposent un portail où les utilisateurs peuvent trouver le service dont ils ont besoin, voir quelle information est requise et déposer une demande sans parler à personne. Un bon libre-service dépend d'une liste claire de services écrite avec les mots des utilisateurs et de formulaires clairs. Un portail qui reproduit l'organigramme et demande une information que l'utilisateur n'a pas renverra les gens vers le courriel et le téléphone.

### Gestion des services d'entreprise

L'article sur l'ITSM note que la gestion des services d'entreprise applique les outils et les idées de l'ITSM à d'autres domaines de l'entreprise comme les ressources humaines ou les installations. La gestion des demandes est l'endroit le plus facile pour commencer, car beaucoup de fonctions reçoivent des demandes courantes : accueil, voyages, équipement, déménagements. Une plateforme de demandes partagée peut servir plusieurs fonctions, chacune avec ses propres modèles de demande et responsables.

### Mesures

Les mesures courantes incluent le temps que prennent les demandes entre le dépôt et l'exécution, la fréquence à laquelle le demandeur doit revenir avec des questions, le nombre de demandes exécutées sans effort humain et la satisfaction des demandeurs. Comme pour toute mesure, évitez les objectifs qui récompensent la clôture précoce des demandes. Cherchez le temps d'attente, car l'essentiel du temps écoulé d'une demande est généralement de l'attente d'approbation ou d'information et non du travail (voir Sujet 1.7 — Développement logiciel lean et Sujet 5.6 — Indicateurs et mesure).

### Sécurité et conformité

Les demandes contrôlent souvent les accès et les dépenses ; elles ont donc des implications de sécurité et d'audit. Les enregistrements doivent montrer qui a demandé, qui a approuvé, ce qui a été fait et quand. Retirez l'accès quand il n'est plus nécessaire, dans le cadre d'un modèle de demande de départ, et non après coup (voir Sujet 3.13 — Gestion de la sécurité des informations).

## Bonnes pratiques

1. **Commencez par les demandes les plus courantes.** Listez les dix principales demandes par volume à partir de vos enregistrements. Concevez-les d'abord. Quelques modèles bien conçus couvrent une grande part de la demande.
2. **Définissez un modèle de demande pour chacune.** Écrivez l'information nécessaire, qui approuve, les étapes, qui fait chacune et le délai attendu. Gardez chaque modèle à une page.
3. **Utilisez les mots de l'utilisateur.** Nommez les demandes comme le feraient les utilisateurs (« Obtenir un nouvel ordinateur portable », et non « Demande de provisionnement matériel type 2 »). Testez les noms auprès d'utilisateurs.
4. **Ne demandez que ce dont vous avez besoin.** Chaque champ d'un formulaire doit avoir un but. Récupérez ce que vous pouvez dans des systèmes déjà disponibles, comme le service de l'utilisateur, au lieu de le lui demander.
5. **Préapprouvez ce qui est courant.** Convenez avec les approbateurs d'une liste standard d'éléments et de rôles qui n'exigent pas d'approbation au cas par cas. Revoyez la liste périodiquement.
6. **Rendez les vraies approbations faciles et rapides.** Montrez à l'approbateur ce qui est demandé et pourquoi, permettez l'approbation depuis un téléphone ou par courriel, et prévoyez un rappel automatique et un suppléant en cas d'absence.
7. **Automatisez ce qui est stable et fréquent.** Choisissez les demandes qui suivent chaque fois les mêmes étapes et comportent peu de risque. Testez l'automatisation et consignez ce qu'elle a fait.
8. **Gardez une voie humaine.** Permettez aux utilisateurs de demander de l'aide quand un formulaire ne correspond pas à leur besoin. Traitez ces cas comme des retours sur le modèle.
9. **Séparez les demandes des incidents et des changements.** Donnez à chacun sa propre catégorie, sa file et ses mesures. Apprenez au centre à reclasser quand une demande se révèle être un défaut ou un changement.
10. **Surveillez les attentes.** Mesurez le temps passé à attendre l'approbation ou l'information, pas seulement le temps total. Choisissez d'abord de réduire la plus longue attente.
11. **Bouclez la boucle avec le demandeur.** Confirmez l'exécution, demandez si cela a fonctionné et offrez un moyen de dire que non. Une demande marquée faite mais non livrée est pire qu'une demande encore ouverte.
12. **Revoyez régulièrement le catalogue des demandes.** Retirez les demandes que personne ne fait, fusionnez les quasi-doublons et ajoutez-en de nouvelles à partir des preuves (voir Sujet 3.8 — Gestion du catalogue de services).

## Questions à discuter avec votre équipe

**Quelles demandes traitons-nous le plus souvent, et combien de temps chacune prend-elle du début à la fin ?**

Prenez les dix premières du dernier trimestre et retracez le temps écoulé de chacune. Marquez où chaque demande attend. La surprise est généralement que l'essentiel du temps est de l'attente, pas du travail. Demandez qui attend qui. L'animateur peut demander quelle demande serait la plus facile à améliorer en premier.

**Quelles approbations de nos demandes n'ont jamais dit non ?**

Passez en revue un échantillon d'approbations et comptez les refus. Une approbation qui ne refuse jamais peut être un retard sans bénéfice. Demandez à quoi sert l'approbation et qui en bénéficie. Certaines approbations existent pour l'audit ou la responsabilité, ce qui est un but légitime qui peut être atteint plus légèrement, par exemple en informant l'approbateur après coup. Choisissez-en une à simplifier.

**Qu'est-ce que les utilisateurs doivent nous dire que nous savons déjà ?**

Regardez un formulaire de demande et marquez les champs dont les réponses existent dans un autre système. Chaque champ de ce type est un effort pour l'utilisateur et une source d'erreurs. Demandez ce qu'il faudrait pour les préremplir. Choisissez un champ à retirer ou à préremplir.

**Lesquelles de nos demandes pourraient être faites sans qu'une personne n'y touche ?**

Listez les demandes qui suivent une procédure fixe. Pour chacune, demandez ce qui empêche l'automatisation : outils, accès, peur de l'erreur. Discutez des garanties qui rendraient l'automatisation acceptable, comme des limites et des journaux. Choisissez-en une à automatiser à titre d'expérience.

**Comment les utilisateurs découvrent-ils ce qu'ils peuvent demander ?**

Demandez à quelques utilisateurs comment ils demanderaient quelque chose d'inhabituel. Si la réponse est « je demande à quelqu'un que je connais », la liste de services ne fonctionne pas. Discutez de la manière dont la liste est présentée et si les noms ont du sens pour les utilisateurs. Testez un brouillon avec deux ou trois utilisateurs.

**Quand une demande se révèle être autre chose, que se passe-t-il ?**

Recueillez des exemples de demandes qui étaient en réalité des incidents ou des changements. Demandez ce que la mauvaise classification a coûté. Discutez de la manière dont le centre reconnaît et reclasse, et si le formulaire de demande aide les utilisateurs à bien choisir. Convenez d'une étape simple de reclassement.

## En pratique : un exemple d'ITIL agile

Un institut national de statistique compte 3 000 agents et un service informatique de 80 personnes. Les nouveaux agents attendent couramment dix jours un ordinateur portable et des comptes qui fonctionnent, et les responsables se plaignent que les nouveaux arrivants restent inactifs. Le centre de services traite les demandes d'accueil comme des tickets individuels, chacune des cinq équipes accomplissant une étape et transmettant le ticket.

Une responsable de l'amélioration cartographie une demande d'accueil. Elle constate que le travail réel prend environ trois heures et que le reste est de l'attente : que le responsable fournisse les détails, une approbation budgétaire pour un ordinateur portable standard et que chaque équipe remarque le ticket. L'équipe conçoit un modèle de demande pour les nouveaux arrivants. Le responsable remplit un court formulaire trois semaines avant la date d'arrivée, la plupart des champs étant remplis depuis le système des ressources humaines. Les ordinateurs portables standard et les comptes pour le rôle sont préapprouvés. Un script crée les comptes et les groupes ; le matériel est commandé automatiquement dans une liste de stock ; le centre reçoit une seule liste de tâches. Le responsable du nouvel arrivant reçoit des points d'étape et une confirmation.

Après deux mois, le délai médian entre la demande et l'ordinateur portable prêt tombe à trois jours quand le formulaire est déposé à temps. Certaines difficultés demeurent. Environ un tiers des responsables déposent encore le formulaire en retard, si bien que les nouveaux arrivants attendent toujours, et le script échoue quand l'enregistrement des ressources humaines n'a pas de code de service, produisant du travail de réparation manuel. L'équipe ajoute un rappel à la liste de contrôle d'accueil des ressources humaines, met en place une alerte sur les scripts en échec et commence à discuter avec les ressources humaines de l'amélioration des données. Elle garde aussi une voie humaine pour les rôles qui n'entrent pas dans la liste standard.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison reçoivent souvent des demandes qui sont en réalité des changements : un nouveau champ, un nouveau rapport. Aidez le centre à les reconnaître et à les acheminer vers votre carnet. Là où les demandes pour votre service sont fréquentes, comme les accès, construisez une voie en libre-service avec des limites claires et une journalisation.

### Équipes de service et d'exploitation

L'exploitation et le centre possèdent la plupart des modèles de demande. Concevez d'abord les plus courants, supprimez l'attente et automatisez là où c'est sûr. Protégez le temps pour construire et revoir les modèles, car le travail de demandes évince facilement le travail d'amélioration. Partagez les données sur les attentes avec les approbateurs et les responsables.

### Direction et gouvernance

Les dirigeants et les approbateurs façonnent une grande part de l'attente. Demandez quelles approbations apportent du contrôle et lesquelles apportent du retard, et acceptez la préapprobation là où le risque est faible. Soutenez une plateforme de demandes partagée entre fonctions et demandez des mesures du temps d'attente plutôt que des comptes de tickets.

### Clients et utilisateurs

Les utilisateurs profitent de noms clairs, de formulaires courts et d'estimations honnêtes. Fournissez une information complète quand vous demandez, et dites si c'est urgent et pourquoi. Dites à l'équipe quand une demande n'a pas livré ce dont vous aviez besoin, car cela améliore le modèle pour la personne suivante.

## Modes d'échec courants

- **Traiter les demandes comme des incidents ou l'inverse.** Priorités et rapports sont faussés. À la place, séparez-les et apprenez le reclassement.
- **Des formulaires qui demandent trop.** Les utilisateurs abandonnent le portail. À la place, ne demandez que le nécessaire et préremplissez le reste.
- **Des approbations de pure forme.** Chaque demande attend une signature qui ne refuse jamais. À la place, préapprouvez les éléments courants et gardez les vraies approbations rapides.
- **Automatisation sans garde-fous.** Un script fait le mauvais changement à grande échelle. À la place, testez, limitez et journalisez l'automatisation, et surveillez les échecs.
- **Des noms internes.** Les utilisateurs ne trouvent pas ce dont ils ont besoin. À la place, nommez les demandes avec les mots des utilisateurs et testez-les.
- **Pas de voie humaine.** Les besoins inhabituels passent entre les mailles. À la place, offrez de l'aide et traitez les demandes étranges comme des retours.
- **Ne compter que la vitesse.** Les demandes sont fermées trop tôt. À la place, confirmez avec le demandeur et surveillez les demandes répétées.
- **Ne jamais retirer de demandes.** La liste devient périmée. À la place, revoyez régulièrement l'usage et retirez ce que personne ne demande.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Modèles de demande | Chaque demande est traitée au coup par coup | Des modèles existent pour quelques demandes fréquentes | Des modèles existent pour les principales demandes avec responsables et délais attendus | La performance des modèles est mesurée et ajustée | Les modèles sont partagés entre fonctions et fournisseurs |
| Approbation | L'approbation est informelle ou par habitude | Certains éléments courants sont préapprouvés | Les listes de préapprobation et les voies d'approbation rapides sont la norme | Les résultats et les attentes d'approbation sont revus | Les règles d'approbation sont alignées entre fonctions d'après des données de risque |
| Automatisation et libre-service | Les demandes sont traitées à la main par courriel | Certaines demandes sont disponibles dans un portail ou automatisées | Les demandes fréquentes et peu risquées sont automatisées et le libre-service est la norme | Le succès de l'automatisation et l'effort de l'utilisateur sont mesurés | Automatisation et libre-service couvrent informatique, RH et installations |
| Apprentissage et amélioration | Les demandes ne sont pas analysées | Quelques comptes sont recueillis | Les attentes et les demandes répétées sont revues régulièrement | Les améliorations sont planifiées à partir de données et leurs effets vérifiés | Les idées d'amélioration viennent des utilisateurs et des équipes de toute l'organisation |

## Liste de contrôle

- [ ] Nous connaissons nos dix demandes les plus courantes et la durée de chacune.
- [ ] Chacune a un modèle de demande : information nécessaire, approbateur, étapes, responsable, délai attendu.
- [ ] Les demandes sont nommées avec les mots des utilisateurs.
- [ ] Les formulaires ne demandent que l'information nécessaire et préremplissent ce que nous savons.
- [ ] Les éléments courants sont préapprouvés, et les vraies approbations ont une voie rapide et un suppléant.
- [ ] Les demandes fréquentes et peu risquées sont automatisées avec des tests et des journaux.
- [ ] Demandes, incidents et changements sont séparés, avec une étape de reclassement.
- [ ] Nous mesurons le temps d'attente aussi bien que le temps total.
- [ ] Les demandeurs sont invités à confirmer l'exécution.
- [ ] La liste des demandes est revue au moins deux fois par an.

## Prompts d'IA

**Objectif : trouver les demandes les plus courantes et les plus longues attentes.**

```text
Voici des données sur les demandes de service des [période] dernières : [collez un tableau avec type de demande, date de dépôt, date d'approbation le cas échéant, date d'exécution et éventuelles notes ; retirez les données personnelles].

En n'utilisant que mes données, listez les dix types de demande les plus courants avec les effectifs, le délai écoulé typique de chacun (donnez la valeur médiane et l'étendue) et la part de ce temps passée à attendre l'approbation, si les données la montrent. Mettez en évidence les trois demandes aux plus longues attentes. Suggérez des questions à poser aux responsables. N'inventez ni chiffres ni causes. Si les données sont trop minces, dites-moi quoi recueillir. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger un modèle de demande pour une demande.**

```text
Aidez-moi à rédiger un modèle de demande pour [demande, par ex. « accès à un dossier partagé d'équipe »].

Comment elle est traitée aujourd'hui, étape par étape, avec qui fait chacune : [collez].
Information que le demandeur doit fournir aujourd'hui : [listez].
Approbations actuelles et qui les donne : [listez].
Règles que nous devons respecter, avec le texte de la source si disponible : [collez, ou écrivez « aucune connue »].

Produisez un modèle d'une page : but, qui peut demander, information nécessaire (marquez ce qui pourrait être prérempli depuis des systèmes existants), approbation (et une suggestion de préapprobation là où le risque est faible), étapes avec qui ou quoi fait chacune, délai attendu marqué [à convenir] et comment l'exécution est confirmée. Signalez les hypothèses. N'inventez pas de règles. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : réécrire un formulaire de demande pour qu'il soit plus court et plus clair.**

```text
Voici un formulaire de demande que nous utilisons : [collez les champs et les instructions].
Voici ce que nous savons déjà du demandeur par d'autres systèmes : [listez, comme nom, service, responsable].

Pour chaque champ, dites s'il est nécessaire, s'il pourrait être prérempli ou s'il pourrait être retiré, et donnez une raison tirée du texte. Réécrivez le formulaire avec des libellés clairs en langage simple. Ne retirez aucun champ que j'ai marqué comme exigé par une règle : [listez, ou écrivez « aucune connue »]. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : décider quoi automatiser en premier.**

```text
Voici une liste de nos demandes avec le volume mensuel, les étapes et le risque de chaque étape (mon jugement) : [collez].
Outils avec lesquels nous pouvons automatiser : [listez, ou écrivez « inconnu »].
Garanties que nous pouvons mettre en place : [listez, comme journaux, limites, approbations pour les exceptions].

Classez les demandes comme candidates à l'automatisation, en n'utilisant que mes données, et expliquez chaque rang en une phrase. Pour les deux premières, listez ce qui pourrait mal tourner et une garantie pour chacune. N'inventez pas de volumes. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md) : à utiliser pour lister, avec les mots des utilisateurs et des responsables, les demandes que les utilisateurs peuvent faire.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md) : à utiliser pour trouver les demandes les plus courantes et leurs volumes.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour analyser les étapes et les attentes d'une demande.
- [user-story](../../../../skills/user-story/SKILL.md) : à utiliser pour décrire une demande du point de vue de l'utilisateur avec des critères d'acceptation.
- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour documenter les étapes des demandes qui restent manuelles.

## Sources principales

- **IT service management** (Wikipedia) : définit une demande de service, la gestion des services d'entreprise et l'automatisation des processus informatiques.
- **Help desk** (Wikipedia) : contexte sur la gestion des files et l'acheminement des demandes qui arrivent à un centre.
- **Business process automation** (Wikipedia) : contexte général sur l'automatisation du travail courant.
- **ITIL** (Wikipedia) : le contexte de la gestion des demandes de service dans ITIL.

## Références

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
