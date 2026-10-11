# Propriété des produits et des services

**La propriété des produits et des services donne à chaque produit ou service une personne responsable et une équipe qui le construit et l'exploite, afin que les décisions sur la valeur, la qualité et le coût soient prises par ceux qui vivent avec les résultats.**

## Pourquoi c'est important

Dans beaucoup d'organisations, personne ne possède un service dans son ensemble. Un projet le construit, une équipe d'exploitation le fait tourner, un fournisseur en livre une partie et un service des finances le paie. Quand quelque chose va mal, il y a quatre réunions et aucune décision. Quand les utilisateurs veulent une amélioration, la demande va dans une file qui n'appartient à personne. Le service se dégrade entre les équipes.

La propriété s'attaque directement à cela. Elle demande deux choses : une personne qui répond de la valeur du produit ou du service, et une équipe qui a les compétences et l'autorité pour le construire, l'exploiter et l'améliorer. L'idée est ancienne sous certaines formes et à la mode sous d'autres, et les détails diffèrent beaucoup d'une organisation à l'autre. Bien la réaliser est l'une des conditions les plus importantes pour que tout le reste de ce guide fonctionne.

Deux idées sous-tendent le sujet. La première est le Product Owner du Guide Scrum, qui est responsable de maximiser la valeur du produit et d'ordonner son carnet, et qui est une personne et non un comité (voir Sujet 1.4 — Prévision de livraison et indicateurs de planification). La seconde est le slogan « you build it, you run it » (vous le construisez, vous l'exploitez), associé à Werner Vogels, directeur technique d'Amazon, dans un entretien publié dans ACM Queue en 2006, que ce guide n'a pas pu lire directement (la page a renvoyé une erreur d'accès) et qu'il connaît par des descriptions secondaires. Selon ces descriptions, Vogels opposait l'ancien modèle, où les développeurs jettent le logiciel par-dessus un mur à l'exploitation, à un modèle où les développeurs restent en contact quotidien avec l'exploitation de leur logiciel et avec le client. L'[article de Wikipédia sur la gestion de produit](https://en.wikipedia.org/wiki/Product_management) donne une description générale de la discipline mais ne dit rien du rôle de product owner agile ni de la propriété des services ; ce sujet fait donc le travail de liaison et le dit.

## Concepts clés

### Produit, service, projet

| Terme | Sens, dans l'usage courant | Horizon temporel |
|---|---|---|
| **Projet** | Un effort temporaire avec un périmètre, un début et une fin définis | Se termine quand le périmètre est livré |
| **Produit** | Quelque chose offert aux clients ou utilisateurs, développé et amélioré dans le temps | Continue tant qu'il crée de la valeur |
| **Service** | Une manière de livrer de la valeur à d'autres sans qu'ils portent les coûts et les risques (voir Sujet 2.1 — Gestion des services informatiques) | Continue tant qu'il est offert |

Un produit numérique est souvent aussi un service : les utilisateurs dépendent de son bon fonctionnement. La distinction entre produit et service compte moins que le passage du projet à une responsabilité continue, comme le décrit le Sujet 1.9 — Gestion agile.

### La gestion de produit

L'article de Wikipédia décrit la gestion de produit comme le processus d'affaires de planification, de développement, de lancement et de gestion d'un produit ou service, veillant à ce que les produits répondent aux besoins du marché cible et soutiennent la stratégie de l'entreprise sur tout le cycle de vie du produit. Il liste des responsabilités des chefs de produit : gérer la gamme au quotidien, détenir l'analyse de rentabilité et la mise en marché, analyser la recherche sur les clients et la concurrence, documenter les exigences, fixer la stratégie et créer la feuille de route, et s'aligner avec la conception, le développement, le marketing, les ventes, le support et le juridique. Il fait remonter le concept à une note de 1931 de Neil H. McElroy, président de Procter & Gamble, demandant des « Brand Men » pour gérer les produits. Il dit que les chefs de produit sont souvent mesurés sur la responsabilité des profits et pertes.

L'article ne relie pas la gestion de produit au Product Owner agile ; le lien est donc la lecture de ce guide : un Product Owner répond de la valeur du produit et ordonne son carnet, et dans beaucoup d'organisations un chef de produit assume le rôle d'affaires plus large. Dans de petites équipes, une personne peut faire les deux.

### Le product owner et le propriétaire de service

| Rôle | Responsable de | Questions typiques |
|---|---|---|
| **Product owner** (Scrum) | Maximiser la valeur du produit ; ordonner le carnet de produit | Que devrions-nous construire ou améliorer ensuite, et pourquoi ? |
| **Chef de produit** | L'analyse de rentabilité, la stratégie et la feuille de route d'un produit | Est-ce le bon produit, pour le bon marché ? |
| **Propriétaire de service** (usage ITSM) | La performance et l'amélioration d'un service sur sa vie | Le service répond-il aux besoins des utilisateurs, à un coût et un risque acceptables ? |

Les rôles se recoupent. Pour un service informatique interne, une personne peut être à la fois product owner et propriétaire de service. Le Guide Scrum insiste sur le fait que le Product Owner est une personne, non un comité, de sorte que les décisions d'ordre aient un propriétaire clair. Quel que soit l'intitulé, le test est de savoir si une personne nommée peut arbitrer entre nouvelles fonctionnalités, fiabilité et coût.

### « You build it, you run it »

Tel que décrit dans des résumés secondaires de l'entretien de Vogels en 2006, l'expression traduit un modèle où l'équipe qui construit un service l'exploite aussi, et reste ainsi en contact quotidien avec les utilisateurs et avec les conséquences de sa conception. L'entretien a été mené par Jim Gray et publié dans ACM Queue en 2006 ; le blog d'Amazon lui-même a signalé l'entretien lors de sa parution. Ce guide n'a pas lu l'original ; il ne le cite donc pas. Le modèle a des coûts autant que des bénéfices :

| Bénéfice | Coût ou risque |
|---|---|
| Les constructeurs ressentent la peine d'une mauvaise exploitabilité et la corrigent | Les constructeurs portent la charge d'astreinte et peuvent s'épuiser |
| Retour plus court des utilisateurs et des incidents | Des compétences en exploitation, sécurité et conformité doivent exister dans l'équipe |
| Pas de passage de relais où perdre la connaissance | Les normes entre équipes demandent d'autres mécanismes |
| Responsabilité claire | De petites équipes peuvent trouver la charge entière trop lourde |

L'ingénierie de la fiabilité des sites et DevOps offrent des moyens de soutenir de telles équipes (voir Sujet 5.2 — DevOps et Sujet 5.3 — Ingénierie de la fiabilité des sites). Des équipes de plateforme peuvent fournir des outils communs pour que chaque équipe produit ne les reconstruise pas.

### Des équipes qui possèdent

La propriété demande une équipe qui a les compétences pour livrer et exploiter, et l'autorité d'agir. Scrum décrit une petite équipe pluridisciplinaire et autogérée qui ne dépend pas des autres pour l'ensemble de son travail. En pratique, les équipes produit dépendent aussi de plateformes partagées, de la sécurité et de services de données. Gérer ces dépendances fait partie de la propriété (voir Sujet 1.8 — Agilité à grande échelle).

### Financement et buts

La propriété demande un financement stable et des buts clairs. Une équipe financée projet par projet est dissoute quand le projet se termine, et un propriétaire de service n'a pas d'équipe. Une équipe permanente, financée pour un produit ou un service, avec des buts qui changent à mesure qu'elle apprend, est la réponse habituelle (voir Sujet 1.9 — Gestion agile). Les buts devraient porter sur des résultats pour les utilisateurs et le métier, et être fixés avec le propriétaire.

### La propriété dans la gestion des services

Les pratiques d'ITIL ont besoin de propriétaires : chaque service a un propriétaire, chaque pratique a un propriétaire et chaque processus majeur a un propriétaire (voir Sujet 5.1 — Gestion agile des services). Le propriétaire de service détient le niveau de service, l'entrée de catalogue, la liste d'améliorations et la relation avec les clients (voir Sujet 3.7 — Gestion des niveaux de service et Sujet 3.8 — Gestion du catalogue de services).

### Limites et précautions

Les sources lues pour ce guide n'offrent pas de preuves sur l'efficacité des modèles de propriété, et l'article de Wikipédia sur la gestion de produit ne liste aucune critique. Les précautions pratiques offertes par l'expérience incluent des propriétaires avec un titre mais sans autorité, des propriétaires surchargés de plusieurs produits, « you build it, you run it » sans soutien menant à l'épuisement, et une propriété qui s'arrête à la frontière de l'équipe alors que le flux de valeur la traverse (voir Sujet 5.4 — Gestion du flux de valeur).

## Bonnes pratiques

1. **Nommez une personne responsable pour chaque produit ou service.** Inscrivez le nom dans le catalogue de services. Veillez à ce qu'elle ait autorité sur les priorités et son mot à dire sur le financement.
2. **Définissez ce que le propriétaire décide.** Énoncez quelles décisions le propriétaire prend seul, lesquelles avec l'équipe et lesquelles nécessitent une escalade. Sans cela, la propriété est un titre.
3. **Donnez du temps au propriétaire.** Ne faites pas de propriétaires de plusieurs gros produits, ni de propriétaires ayant aussi un travail de livraison à plein temps. La propriété est un vrai travail.
4. **Financez l'équipe pour la vie du service.** Évitez de dissoudre les équipes à la fin des projets. Revoyez le financement selon un cycle régulier en regard des résultats.
5. **Fixez des buts de résultat avec le propriétaire.** Décrivez ce qui devrait s'améliorer pour les utilisateurs et le métier, avec quelques mesures que l'équipe peut produire elle-même (voir Sujet 5.6 — Indicateurs et mesure).
6. **Mettez construction et exploitation dans une seule équipe quand vous le pouvez.** Incluez les compétences de développement, d'exploitation et de support, et donnez à l'équipe accès aux données et outils de production dans des limites sûres. Là où vous ne le pouvez pas, créez de solides accords de travail.
7. **Soutenez l'équipe par une plateforme.** Fournissez un outillage partagé de déploiement, de surveillance et de sécurité pour que chaque équipe ne construise pas le sien. Traitez la plateforme comme un produit avec des utilisateurs.
8. **Partagez équitablement la charge d'astreinte.** Limitez les appels de nuit, réglez les alertes et surveillez l'épuisement. « You build it, you run it » échoue quand ceux qui exploitent sont épuisés.
9. **Gardez un seul carnet par produit.** Incluez fonctionnalités, défauts, travail d'exploitation et éléments d'amélioration dans une liste ordonnée, pour que le propriétaire puisse les peser les uns contre les autres.
10. **Reliez les propriétaires entre eux.** Tenez des conversations régulières entre propriétaires de produits et services dépendants, pour résoudre les conflits et aligner les plans.
11. **Revoyez la propriété chaque année.** Vérifiez que chaque service a encore un propriétaire actif, une équipe et un carnet, et que les rôles conviennent toujours.
12. **Prévoyez les petites équipes.** Là où une équipe possède beaucoup de petits services, regroupez-les raisonnablement et utilisez des pratiques légères. N'appliquez pas un modèle lourd à un petit service.

## Questions à discuter avec votre équipe

**Qui est responsable de chacun de nos services, et le dirait-il ?**

Listez les principaux services et nommez le propriétaire. Demandez ensuite à chaque personne nommée si elle se dirait propriétaire. Les écarts entre la liste et les réponses révèlent à quel point la propriété est nominale. L'animateur peut demander quel service n'a pas de propriétaire et ce que cela a coûté.

**Que peut décider notre propriétaire aujourd'hui sans demander à personne ?**

Demandez des exemples : priorités, dépenses, une mise en production, un engagement envers un client. Si la plupart des décisions nécessitent l'approbation d'autres, discutez de celles qui devraient être déléguées et dans quelles limites. Convenez d'une décision à déplacer.

**Quand quelque chose va mal en production, qui est réveillé, et a-t-il les moyens de réparer ?**

Demandez qui est d'astreinte et ce qu'il peut changer. Si ce ne sont pas les constructeurs, demandez pourquoi. Discutez de la manière dont le retour des incidents atteint ceux qui conçoivent le service. Convenez d'une voie à raccourcir.

**Comment finançons-nous ce service, et que se passe-t-il quand un projet se termine ?**

Retracez le financement d'un service principal. Demandez qui peut dépenser pour des améliorations et qui décide d'arrêter. Si l'équipe est dissoute après un projet, discutez du coût de la connaissance perdue. Proposez un essai de financement permanent pour un service.

**Quelles compétences nous manquent pour construire et exploiter notre service, et comment les obtenir ?**

Listez les compétences dont le travail a besoin : développement, exploitation, sécurité, données, support. Marquez les lacunes. Discutez de jumelage, de formation, d'emprunt d'un spécialiste ou d'une plateforme partagée. Choisissez une lacune à combler.

**De combien de propriétaires demandons-nous à une personne d'être le propriétaire ?**

Comptez les produits et services dont chaque propriétaire est responsable. Des propriétaires surchargés ne peuvent pas prendre de bonnes décisions. Discutez de scinder, déléguer ou retirer des services. Convenez d'un maximum et d'un plan pour un propriétaire qui le dépasse.

## En pratique : un exemple d'ITIL agile

Une agence nationale de l'emploi exploite un service en ligne d'appariement d'emplois utilisé par les chercheurs d'emploi et les employeurs. Le service a été construit par une équipe de projet, remis à un groupe d'exploitation et est maintenant financé par une série de petits projets. Le chef des services numériques constate que personne ne peut dire qui le possède : le promoteur du projet d'origine a pris sa retraite, l'exploitation traite les incidents et une unité de politiques demande des changements par une file qui prend des mois. Les employeurs se plaignent d'un formulaire d'inscription qui n'a pas changé depuis trois ans.

Le chef nomme une propriétaire de service issue de l'unité des relations avec les employeurs, une personne qui comprend à la fois les employeurs et le service, et lui donne son mot à dire sur le carnet et une part du budget. Une équipe permanente de huit personnes, réunissant des développeurs, un ingénieur d'exploitation, un testeur et un concepteur, est formée à partir des gens qui travaillaient déjà sur le service. L'équipe rejoint le tour d'astreinte, avec une limite d'appels de nuit, et utilise une plateforme partagée de déploiement et de surveillance entretenue par une équipe centrale. Les demandes de l'unité de politiques vont dans le carnet unique, où la propriétaire les classe par rapport aux améliorations et aux corrections. L'équipe et la propriétaire conviennent de trois buts de résultat pour l'année avec quelques mesures : la part des inscriptions d'employeurs menées à terme, le temps que mettent les chercheurs d'emploi à trouver un appariement et le nombre d'incidents répétés.

Au bout de huit mois, le formulaire d'inscription est reconstruit, le taux d'achèvement s'améliore et les incidents répétés diminuent. La propriétaire peut répondre aux questions des employeurs sur ce qui est prévu. Certaines difficultés subsistent. La propriétaire est aussi responsable d'un autre petit service et est surchargée, l'unité de politiques n'apprécie pas de devoir concourir pour des places dans le carnet, et les ingénieurs d'astreinte disent que la plateforme partagée manque d'un outil dont ils ont besoin. Le chef des services numériques réduit les autres tâches de la propriétaire, demande à l'unité de politiques et à la propriétaire d'organiser une réunion de planification mensuelle et met la demande de plateforme dans le carnet de l'équipe centrale.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison devraient travailler avec un propriétaire clair et assumer l'exploitation de ce qu'elles construisent. Offrez au propriétaire des preuves venant des utilisateurs, des incidents et des coûts, et soyez honnête sur les compromis. Demandez les outils et le soutien dont vous avez besoin pour porter l'astreinte équitablement.

### Équipes de service et d'exploitation

Les équipes d'exploitation soutiennent les équipes produit par l'expertise, les plateformes et des normes partagées. Là où elles exploitent des services pour d'autres, nommez des propriétaires et convenez de niveaux de service. Résistez à l'envie de confier chaque problème opérationnel à un groupe central qui ne possède rien.

### Direction et gouvernance

Les dirigeants créent la propriété en nommant des propriétaires, en leur donnant autorité et temps et en finançant des équipes permanentes. Demandez aux propriétaires des résultats et des preuves, et évitez de passer outre à leurs priorités sans discussion. Méfiez-vous des propriétaires qui ont le titre mais pas le pouvoir.

### Clients et utilisateurs

Les clients et utilisateurs profitent de savoir qui répond d'un service et de pouvoir le joindre. Dites au propriétaire ce qui compte le plus et ce qui fait mal. Attendez-vous à une information claire sur ce qui est prévu et à votre mot à dire sur la fixation des priorités.

## Modes d'échec courants

- **Un titre sans autorité.** Un propriétaire ne peut rien décider. À la place, énoncez ce que le propriétaire décide et soutenez-le.
- **Propriété par comité.** Personne n'est responsable. À la place, nommez une personne pour chaque produit ou service.
- **Propriétaires surchargés.** Une personne possède trop de produits. À la place, limitez le nombre et déléguez.
- **Dissoudre les équipes après les projets.** La connaissance s'en va. À la place, financez des équipes permanentes pour les services continus.
- **« You build it, you run it » sans soutien.** Les équipes s'épuisent. À la place, fournissez une plateforme, une astreinte partagée et des alertes réglées.
- **Une propriété qui s'arrête à l'équipe.** Le flux de valeur traverse les équipes. À la place, reliez les propriétaires de services dépendants.
- **Plusieurs carnets.** Fonctionnalités, défauts et exploitation se disputent des files cachées. À la place, gardez un carnet ordonné par produit.
- **Copier un modèle sans contexte.** Un schéma de grande entreprise est appliqué à un petit service. À la place, adaptez le modèle à la taille et au risque.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Responsabilité | Les services n'ont pas de propriétaire clair | Certains services ont des propriétaires informels | Chaque service a un propriétaire nommé avec droits de décision définis et du temps | L'efficacité des propriétaires et les résultats sont revus | Les propriétaires se coordonnent entre services dépendants et avec les clients |
| Équipe et compétences | Construction et exploitation sont des équipes séparées | Certaines équipes partagent l'astreinte | Des équipes permanentes possèdent construction et exploitation avec les compétences nécessaires | Lacunes de compétences et charge sont mesurées et traitées | Compétences et plateformes sont partagées entre équipes et fournisseurs |
| Financement et buts | Le financement se fait par projet | Quelques équipes permanentes existent | Les services ont un financement permanent et des buts de résultat | Le financement suit les résultats mesurés | Financement et buts sont alignés entre services et avec les clients |
| Carnet et priorités | Les priorités viennent de nombreuses files | Certains propriétaires tiennent une liste | Un carnet ordonné par produit inclut tous les types de travail | Le flux du carnet et les priorités sont revus avec les parties prenantes | Les priorités sont alignées entre propriétaires et avec les clients |

## Liste de contrôle

- [ ] Chaque produit ou service a un propriétaire nommé et responsable, inscrit dans le catalogue de services.
- [ ] Ce que chaque propriétaire décide seul, avec l'équipe et par escalade est écrit.
- [ ] Les propriétaires ont du temps pour le rôle et un nombre gérable de services.
- [ ] Une équipe permanente est financée pour chaque service continu.
- [ ] Chaque service a des buts de résultat avec quelques mesures.
- [ ] L'équipe qui construit un service a les compétences et l'accès pour l'exploiter, ou a des accords de travail clairs avec ceux qui le font.
- [ ] La charge d'astreinte est partagée équitablement, avec des limites et des alertes réglées.
- [ ] Une plateforme partagée soutient les équipes pour le déploiement, la surveillance et la sécurité.
- [ ] Chaque produit a un carnet ordonné couvrant fonctionnalités, défauts, exploitation et amélioration.
- [ ] La propriété est revue au moins une fois par an.

## Prompts d'IA

**Objectif : rédiger les droits de décision du propriétaire d'un produit ou d'un service.**

```text
Aidez-moi à rédiger les droits de décision du propriétaire de [produit ou service].

Ce que fait le service et qui l'utilise : [décrivez].
Décisions qui reviennent souvent : [listez 8 à 12, comme priorités, dépenses, mises en production, engagements envers les clients, choix de fournisseurs].
Règles que nous devons suivre (financières, de sécurité, juridiques), avec le texte de la source si vous l'avez : [collez, ou écrivez « aucune connue »].
Organisation actuelle : [décrivez].

Produisez un tableau à trois colonnes : le propriétaire décide seul, le propriétaire décide avec l'équipe et escalade. Placez chaque décision dans une colonne avec une raison d'une phrase. Marquez tout placement qui est une supposition. N'inventez pas de règles. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver les services sans propriétaire clair.**

```text
Voici une liste de nos services avec le propriétaire enregistré, l'équipe qui construit, l'équipe qui exploite et qui finance chacun : [collez].

En n'utilisant que cette liste, identifiez les services sans propriétaire, ceux dont des colonnes différentes nomment des personnes différentes comme propriétaire, ou dont la construction et l'exploitation sont réparties entre équipes. Pour chacun, suggérez une question à poser. Ne décidez pas qui devrait posséder quoi que ce soit. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un modèle d'astreinte pour une équipe qui construit et exploite.**

```text
Aidez-moi à planifier un modèle d'astreinte pour une équipe de [nombre] personnes qui construit et exploite [service].

Incidents et appels actuels (comptes par semaine, part hors heures) : [collez de vraies données].
Compétences de l'équipe : [listez].
Contraintes : [par exemple fuseaux horaires, règles de congé].

Proposez une conception de tour, des limites d'appels de nuit, la manière de régler les alertes, le soutien dont l'équipe a besoin d'une plateforme ou d'un groupe d'exploitation et ce qu'il faut revoir chaque trimestre. Laissez les limites chiffrées comme [à convenir]. N'inventez pas de données. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer un argumentaire pour un financement permanent d'un service.**

```text
Aidez-moi à préparer un court argumentaire pour financer [service] avec une équipe permanente plutôt que par projet.

Comment il est financé aujourd'hui et ce qui se passe à la fin de chaque projet : [décrivez].
Coûts de l'organisation actuelle, en faits (reprises, connaissance perdue, retards ; n'utilisez que de vrais exemples) : [collez].
Ce dont une équipe permanente aurait besoin : [décrivez rôles et taille approximative].
Buts de résultat proposés : [listez].

Rédigez un argumentaire d'une page avec le problème, la proposition, les risques (dont celui qu'une équipe permanente devienne complaisante), ce que nous mesurerons et comment le financement serait revu. N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour clarifier qui possède, soutient et est consulté pour chaque produit ou service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md) : à utiliser pour décrire l'orientation et les plans à court terme d'un produit ou service.
- [agile-charter](../../../../skills/agile-charter/SKILL.md) : à utiliser pour fixer au départ le but, les résultats et les limites d'une équipe.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md) : à utiliser pour aider un propriétaire à ordonner le carnet selon la valeur et le coût.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md) : à utiliser pour valider ce qu'un produit ou service devrait faire ensuite avant de le construire.

## Sources principales

- **The Scrum Guide** (Ken Schwaber et Jeff Sutherland, scrumguides.org) : la définition de la responsabilité du Product Owner et de l'équipe pluridisciplinaire et autogérée.
- **Product management** (Wikipedia) : une description générale de la discipline, de ses responsabilités et de son histoire.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006) : l'entretien où « you build it, you run it » est décrit ; lisez l'original pour la formulation exacte.
- **Site Reliability Engineering** (Google, sre.google) : une manière de soutenir les équipes qui exploitent ce qu'elles construisent.

## Références

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
