# Quatre dimensions de la gestion des services

**Les quatre dimensions d'ITIL 4 sont une liste de contrôle pour trouver ce qui manque à un service : les bonnes personnes et la bonne structure, l'information et la technologie, les partenaires et fournisseurs, et des flux de travail définis ; une faiblesse dans l'une limite la valeur des autres.**

## Pourquoi c'est important

Quand un service déçoit, les équipes ont tendance à chercher la correction qu'elles connaissent le mieux. Les ingénieurs soupçonnent la technologie, les responsables le processus et les ressources humaines les compétences. Chacun peut avoir raison, et les chances de résoudre le problème sont meilleures si l'on regarde aux quatre endroits. Les quatre dimensions offrent un cadre simple pour le faire.

Les dimensions sont aussi un frein utile à un échec agile courant. Une équipe excellente pour livrer du code peut quand même livrer un mauvais service si personne n'a pensé au fournisseur dont elle dépend pour son API, aux compétences nécessaires pour le supporter la nuit ou à l'information dont le centre de services aura besoin en cas de panne. De même, un groupe de gestion des services qui perfectionne ses processus peut négliger la culture et les outils qui les font fonctionner.

Selon la page ITIL 4 Foundation de PeopleCert, les quatre dimensions sont les organisations et les personnes ; l'information et la technologie ; les partenaires et fournisseurs ; et les flux de valeur et processus. Cette liste est la seule partie de ce sujet tirée directement des pages publiques du propriétaire du cadre. Les descriptions ci-dessous viennent de sources d'organismes de formation et de commentaires, qui s'accordent entre elles mais sont secondaires. Vérifiez les publications d'ITIL 4 quand vous avez besoin de la formulation exacte.

## Concepts clés

### Les quatre dimensions

Le tableau donne chaque dimension, ce qu'elle couvre telle que largement résumée, et une question à poser sur un service.

| Dimension | Ce qu'elle couvre | Une question à poser |
|---|---|---|
| **Organisations et personnes** | La structure, la culture, les rôles, les compétences et le leadership nécessaires pour faire le travail ; s'étend au-delà du personnel informatique à tous ceux qui interagissent avec le service | Qui fait quoi, avec quelles compétences, et la culture le soutient-elle ? |
| **Information et technologie** | L'information et la connaissance que le service utilise et crée, ainsi que les outils et la technologie qui le soutiennent | Que devons-nous savoir, et sur quoi le faisons-nous tourner ? |
| **Partenaires et fournisseurs** | Les relations avec d'autres organisations qui contribuent au service, y compris la façon dont les fournisseurs sont choisis, gérés et intégrés | Qui d'autre est impliqué, et de quoi dépendons-nous d'eux ? |
| **Flux de valeur et processus** | Les activités et les flux de travail par lesquels la valeur est créée, et la façon dont ils sont organisés et contrôlés | Comment le travail circule-t-il, et où attend-il ? |

Les sources de formation soulignent que les dimensions sont interdépendantes. Accorder trop peu d'attention à l'une d'elles limite la valeur qu'une organisation peut livrer à ses parties prenantes.

### Relation avec le reste du cadre

Les dimensions s'appliquent à chaque partie du système de valeur des services (voir Sujet 2.3 — Le système de valeur des services ITIL). Une pratique, comme la gestion des incidents, peut être examinée à travers chacune : quelles personnes et quels rôles elle exige, quelle information et quels outils, quels fournisseurs et quels processus. Elles se relient aussi aux principes directeurs, en particulier « penser et travailler de façon holistique » (voir Sujet 2.4 — Les principes directeurs ITIL).

### Facteurs externes

Les sources de formation et de commentaires décrivent aussi des facteurs externes qui affectent les quatre dimensions. Elles emploient couramment le sigle **PESTLE** : politique, économique, social (certaines sources disent socioculturel), technologique, légal et environnemental. Ce sont des choses que l'organisation ne peut pas contrôler mais doit prendre en compte, car elles peuvent créer des risques ou déclencher un besoin de changer un service. Un changement de loi peut modifier l'information qu'un service a le droit de conserver ; un changement économique peut modifier les prix d'un fournisseur ; une nouvelle technologie peut modifier ce qu'attendent les clients. Les sources suggèrent de les examiner chaque fois que l'on réfléchit à la manière de répondre à l'évolution de la demande ou de l'opportunité.

### Les dimensions dans une équipe agile

Les équipes agiles travaillent déjà par habitude avec certaines dimensions et en négligent d'autres.

| Dimension | Ce que les équipes agiles font généralement bien | Ce qui est souvent manqué |
|---|---|---|
| Organisations et personnes | Équipes auto-organisées, rétrospectives, attention à la motivation | Charge d'astreinte, compétences extérieures à l'équipe, culture des groupes qui supportent le service |
| Information et technologie | Automatisation, outillage, contrôle de version | Connaissance pour le personnel de support, propriété des données, documentation que d'autres utilisent |
| Partenaires et fournisseurs | Utilisation rapide de services tiers et de logiciels libres | Qui supporte une dépendance, ce qui se passe quand un fournisseur change ses conditions ou fait défaut |
| Flux de valeur et processus | Cycles courts, tableaux visibles | Les parties du flux extérieures à l'équipe, comme les approbations, les revues de sécurité et le transfert à l'exploitation |

### Utiliser les dimensions pour diagnostiquer

Un usage pratique consiste à prendre un incident ou un changement raté et à demander dans quelle dimension résidait la faiblesse. Quelques exemples montrent l'idée, sans prétendre qu'ils soient typiques :

- Une correction a pris des heures parce qu'une seule personne comprenait le système : organisations et personnes.
- Une alerte a été ignorée parce qu'elle ne disait rien d'utile : information et technologie.
- Un rétablissement a calé parce que la ligne de support d'un fournisseur était fermée : partenaires et fournisseurs.
- Un changement a attendu trois jours une signature qui ne servait à rien : flux de valeur et processus.

La plupart des vrais problèmes touchent plus d'une dimension. L'intérêt de l'exercice est de remarquer quelle dimension vous négligez habituellement.

### Limites

Les dimensions sont un cadre et non une méthode. Elles ne disent pas comment réparer une dimension faible, et elles sont assez larges pour que presque tout problème puisse être placé dans plusieurs. L'article de Wikipédia sur ITIL ne les décrit pas, et ce guide n'a pas trouvé de preuve indépendante de leur efficacité en pratique. Considérez-les comme des incitations qui aident une équipe à poser de meilleures questions.

## Bonnes pratiques

1. **Examinez chaque service à travers les quatre dimensions.** Pour chaque service important, écrivez deux ou trois lignes sous chaque dimension : ce qui existe et ce qui manque. Faites-le à la conception d'un service, puis une fois par an.
2. **Mettez les personnes en tête de liste.** Vérifiez qui est d'astreinte, quelles compétences sont nécessaires et si la charge est équitable. Un service qui dépend de quelques personnes épuisées est à risque (voir Sujet 1.2 — Principes agiles sur le rythme durable).
3. **Traitez l'information comme une partie du service.** Identifiez l'information dont les utilisateurs, le personnel de support et les autres équipes ont besoin, et qui en est responsable. Rendez-la facile à trouver (voir Sujet 3.9 — Gestion des connaissances).
4. **Connaissez votre technologie et gardez-la supportable.** Tenez une liste des principaux composants et de qui peut supporter chacun. Retirez ce que personne ne comprend.
5. **Listez vos fournisseurs et ce pour quoi vous comptez sur eux.** Incluez les fournisseurs de nuage, les éditeurs de logiciels et les équipes internes extérieures à la vôtre. Notez qui appeler, comment et ce qu'ils ont promis (voir Sujet 3.14 — Gestion des fournisseurs).
6. **Incluez les fournisseurs dans vos revues.** Invitez les partenaires clés à la planification commune ou aux revues d'incidents. Un fournisseur qui apprend vos plans tard ne peut pas aider.
7. **Cartographiez le flux de valeur et les transferts.** Dessinez comment le travail circule de la demande à la valeur, en marquant où il franchit une équipe ou un fournisseur. Les transferts sont les endroits où l'information et le temps se perdent le plus souvent (voir Sujet 5.4 — Gestion du flux de valeur).
8. **Regardez d'abord la dimension la moins développée.** Quand vous améliorez un service, commencez par la dimension la plus faible, pas par celle que l'équipe préfère. Montrez les preuves de votre choix.
9. **Examinez les facteurs externes une ou deux fois par an.** Utilisez les rubriques PESTLE pour lister ce qui pourrait changer pour chaque service : lois, prix, technologie, attitudes du public. Notez quelle dimension chacun pourrait affecter.
10. **Utilisez les dimensions dans les revues d'incidents et de changements.** Ajoutez une question au modèle de revue : quelle dimension était la plus faible ici ? Avec le temps, des schémas apparaîtront.
11. **Restez léger.** Une page par service suffit. Si la revue prend plus d'une heure, vous recueillez probablement de l'information dont personne ne se servira.
12. **N'utilisez pas les dimensions pour assigner le blâme.** Le but est d'avoir une vue complète du service. Traitez une lacune comme un problème de conception à résoudre ensemble, pas comme l'échec d'une équipe.

## Questions à discuter avec votre équipe

**Pour notre principal service, que mettrions-nous sous chacune des quatre dimensions, et laquelle est la plus mince ?**

Divisez l'équipe en quatre groupes, un par dimension, et donnez-leur dix minutes. Comparez les listes. La plus mince surprend souvent : les équipes de livraison constatent souvent que « partenaires et fournisseurs » a peu de contenu, alors que les équipes d'exploitation peuvent constater la même chose pour l'information. L'animateur peut demander ce que la dimension mince a coûté ces six derniers mois.

**De qui dépendons-nous sans jamais lui avoir parlé ?**

Listez les fournisseurs et équipes internes dont le service dépend, y compris ceux cachés derrière un produit en nuage. Marquez ceux dont vous avez un contact et ceux dont vous n'en avez pas. Demandez ce qui se passerait si chacun défaillait. C'est un bon endroit pour trouver des risques dont personne n'est responsable. Choisissez une dépendance à mieux comprendre.

**Quelle connaissance n'existe que dans la tête d'une seule personne ?**

Demandez aux gens de nommer les tâches que seule une personne peut accomplir et l'information qui manque au centre de services pour supporter le service. Traitez les réponses comme une liste de risques. Demandez comment la connaissance pourrait être partagée en un mois, par exemple par le binôme ou la rédaction d'un court guide. Consignez la première étape et le responsable.

**Où le travail attend-il en dehors de notre équipe ?**

Retracez une demande récente à travers les équipes et marquez chaque attente. Les attentes aux approbations, aux revues de sécurité ou dans les files de fournisseurs échappent au contrôle de l'équipe mais pas à son influence. Demandez qui pourrait changer chaque attente et quelles preuves aideraient. Choisissez une attente à soumettre à son responsable.

**Que s'est-il passé la dernière fois que quelque chose hors de notre contrôle a changé, comme une loi, un prix ou une plateforme ?**

Demandez un cas réel. Regardez combien de temps il a fallu pour le remarquer, qui a décidé et quelle dimension a encaissé. Le but est d'apprendre comment l'équipe surveille le changement externe. Demandez qui est chargé de surveiller et ce qu'il surveille.

**Si nous ne pouvions renforcer qu'une seule dimension ce trimestre, laquelle apporterait le plus à nos utilisateurs ?**

Laissez les gens plaider pour une dimension avec un exemple récent. Évitez d'abord le vote ; demandez des preuves. Puis convenez d'une action dans la dimension choisie avec un responsable et une mesure. N'oubliez pas de dire quelles dimensions vous avez choisi de ne pas travailler, pour que le choix soit explicite.

## En pratique : un exemple d'ITIL agile

Une agence nationale de l'environnement exploite un portail de données publiques qui publie des relevés de qualité de l'air issus de milliers de capteurs. Une équipe de neuf personnes le construit et l'exploite. L'équipe livre des changements chaque semaine, et ses processus paraissent sains. Pourtant, lors d'une canicule, le portail ralentit à l'extrême, l'intérêt du public explose et le service de presse de l'agence apprend le problème par les réseaux sociaux.

Le responsable du portail utilise les quatre dimensions pour revoir l'incident. Sur les organisations et les personnes, seuls deux ingénieurs connaissent la chaîne d'ingestion des données, et l'un était en congé. Sur l'information et la technologie, la surveillance montrait que la base de données était occupée mais pas quels relevés étaient en retard, si bien que l'équipe n'a pas pu dire au service de presse ce qui était touché. Sur les partenaires et fournisseurs, les données des capteurs viennent d'agences régionales et d'un fournisseur de nuage, et personne n'avait demandé à l'un ni à l'autre à quoi s'attendre en période de pointe. Sur les flux de valeur et processus, le service de presse n'a aucune voie d'entrée dans le processus d'incident ; son premier contact est donc venu par un journaliste.

L'équipe fait quatre changements, un par dimension : un troisième ingénieur est formé sur la chaîne, le tableau de bord montre la fraîcheur des données par région, les agences régionales et le fournisseur de nuage sont invités à une courte revue de capacité, et le service de presse est ajouté aux notifications d'incident. Une canicule ultérieure est traitée sans plainte du public. Certains problèmes subsistent : une agence régionale envoie encore des données dans un ancien format qui casse la chaîne, et le service de presse trouve que les messages d'état techniques sont difficiles à traduire en langage simple. L'équipe convient de demander à l'agence régionale un calendrier pour changer de format et de rédiger avec le service de presse un court modèle de message d'état.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison contrôlent généralement la technologie et le processus mais peuvent négliger les personnes et les fournisseurs. Demandez qui supportera ce que vous construisez, de quelles compétences ils ont besoin et de quelles parties extérieures votre service dépend. Fournissez l'information dont les autres ont besoin et invitez-les à vos revues.

### Équipes de service et d'exploitation

Les équipes d'exploitation voient souvent d'abord les faiblesses des dimensions parce qu'elles en vivent les conséquences. Utilisez les dimensions pour décrire les problèmes de manière que les équipes de livraison et les responsables puissent agir, et pour plaider en faveur du temps consacré au partage des connaissances et aux relations avec les fournisseurs.

### Direction et gouvernance

Les dirigeants contrôlent la structure, les compétences, les contrats de fournisseurs et les processus qui traversent les équipes. Demandez une revue à quatre dimensions des services importants et regardez la dimension mince. Soyez prêt à financer les parties peu glorieuses, comme la formation et les relations avec les fournisseurs.

### Clients et utilisateurs

Les clients et utilisateurs vivent le résultat des quatre dimensions sans les voir. Quand quelque chose va mal, dites au fournisseur ce que vous avez vu et ce dont vous aviez besoin. Cette information l'aide à trouver la dimension faible. Demandez aux fournisseurs comment ils organisent le support, les fournisseurs et l'information pour les services que vous utilisez.

## Modes d'échec courants

- **Corriger la dimension familière.** Les ingénieurs ajoutent de la technologie à chaque problème. À la place, demandez vers quelle dimension les preuves pointent.
- **Oublier les fournisseurs.** Le service dépend de parties que personne n'a rencontrées. À la place, listez les fournisseurs et consignez contacts, engagements et risques.
- **Traiter les personnes comme acquises.** Compétences et charge d'astreinte sont supposées. À la place, revoyez-les comme partie du service.
- **Des processus qui s'arrêtent à la frontière de l'équipe.** Les transferts ne sont pas gérés. À la place, cartographiez le flux entre équipes et convenez des transferts.
- **Une information que personne ne trouve.** La documentation existe mais le personnel de support ne peut pas l'utiliser. À la place, demandez aux utilisateurs de l'information ce dont ils ont besoin.
- **La suranalyse.** La revue devient un gros document. À la place, limitez-la à une page par service.
- **Utiliser le cadre pour blâmer.** Les équipes sont jugées sur leurs lacunes. À la place, traitez les lacunes comme des problèmes de conception partagés.
- **Ignorer le changement externe.** Lois, prix et technologie changent sans préavis. À la place, examinez régulièrement les facteurs PESTLE et notez quelle dimension chacun affecte.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Organisations et personnes | Rôles et compétences sont informels | Certaines équipes listent compétences et charge d'astreinte | Rôles, compétences et charge sont décrits pour chaque service | Compétences et charge sont mesurées et revues | Dotation et compétences sont planifiées entre équipes et partenaires |
| Information et technologie | Connaissance et outils sont dispersés | Certaines équipes tiennent des listes de composants et de connaissances | Composants et information ont des responsables et se trouvent facilement | L'usage de l'information et des outils est suivi et les lacunes corrigées | Information et outils sont partagés et améliorés entre équipes et fournisseurs |
| Partenaires et fournisseurs | Les fournisseurs sont gérés par des individus | Quelques fournisseurs clés sont listés avec contacts | Tous les fournisseurs clés ont des responsables, des contacts et des attentes | La performance et le risque des fournisseurs sont revus | Les fournisseurs participent à la planification et à l'amélioration |
| Flux de valeur et processus | Le travail circule par habitude | Certains flux sont dessinés | Les flux clés sont cartographiés entre équipes avec des responsables | Le flux et l'attente sont mesurés et réduits | Les flux sont améliorés conjointement avec clients et fournisseurs |

## Liste de contrôle

- [ ] Pour chaque service important, nous avons écrit ce qui existe et ce qui manque dans chaque dimension.
- [ ] Les personnes et compétences nécessaires pour exploiter chaque service sont identifiées, la charge d'astreinte revue.
- [ ] L'information dont les utilisateurs et le personnel de support ont besoin a un responsable et se trouve facilement.
- [ ] Les principaux composants du service sont listés, avec quelqu'un capable de supporter chacun.
- [ ] Les fournisseurs clés et fournisseurs internes sont listés avec contacts et attentes.
- [ ] Le flux de travail d'un service a été cartographié entre équipes.
- [ ] Nous avons examiné les facteurs externes (PESTLE) au moins une fois dans l'année écoulée.
- [ ] Les revues d'incidents et de changements demandent quelle dimension était la plus faible.
- [ ] La revue de chaque service tient sur une page.
- [ ] Nous avons choisi une dimension faible à renforcer ce trimestre.

## Prompts d'IA

**Objectif : rédiger une revue à quatre dimensions d'un service.**

```text
Aidez-moi à rédiger une revue à quatre dimensions du service [nom]. Les dimensions sont : organisations et personnes ; information et technologie ; partenaires et fournisseurs ; flux de valeur et processus.

À propos du service : [décrivez ce qu'il fait et qui l'utilise].
Pour chaque dimension, ce que je sais : [écrivez quelques lignes chacune ; écrivez « inconnu » là où vous ne savez pas].

Pour chaque dimension, dites ce qui existe, ce qui semble manquer et une question que je devrais poser à l'équipe, en n'utilisant que mon texte. Mettez en évidence la dimension la plus mince et dites pourquoi. N'inventez ni fournisseurs, ni personnes, ni outils. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : classer la dimension la plus faible dans des incidents récents.**

```text
Voici de courtes descriptions factuelles de [nombre] incidents récents ou changements ratés : [collez, un par élément].

Pour chacun, dites dans laquelle des quatre dimensions d'ITIL (organisations et personnes ; information et technologie ; partenaires et fournisseurs ; flux de valeur et processus) la faiblesse résidait le plus probablement, avec une phrase de raisonnement tirée uniquement du texte. Quand plusieurs s'appliquent, dites-le. Comptez ensuite combien relèvent de chaque dimension, d'après ma seule liste, et suggérez deux questions sur le schéma. N'inventez pas de causes et listez ce dont vous n'êtes pas sûr.
```

**Objectif : lister fournisseurs et dépendances d'un service.**

```text
Aidez-moi à construire une liste de dépendances et de fournisseurs pour [service].

Ce que je sais de sa construction et de son exploitation : [décrivez composants, services en nuage, sources de données, autres équipes].
Contrats ou arrangements de support que je connais : [listez, ou écrivez « inconnu »].

Produisez un tableau avec les colonnes : dépendance, qui la fournit, ce pour quoi nous comptons sur elle, ce qui se passe si elle défaille (d'après mon seul texte) et la question que je devrais poser au fournisseur. Marquez tout ce que vous avez déduit. N'inventez ni contrats ni niveaux de service. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : examiner les facteurs externes d'un service.**

```text
Aidez-moi à préparer un examen des facteurs externes avec les rubriques PESTLE (politique, économique, social, technologique, légal, environnemental) pour le service [nom].

Contexte : [décrivez le secteur, les pays desservis et les utilisateurs].
Changements à venir connus : [listez les lois, changements de prix, évolutions technologiques que vous connaissez réellement, ou écrivez « aucun connu »].

Pour chaque rubrique, proposez des questions que nous devrions étudier (pas des réponses) et notez quelle dimension d'ITIL chaque facteur pourrait affecter. N'affirmez pas qu'une loi ou une réglementation existe ou s'applique à moins que je l'aie listée. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md) : à utiliser pour cartographier les partenaires, fournisseurs et groupes qui dépendent d'un service ou y contribuent.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour planifier comment vous choisissez, gérez et revoyez les fournisseurs.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md) : à utiliser pour cartographier le flux de travail entre équipes pour la dimension des flux de valeur et processus.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md) : à utiliser avec l'examen des facteurs externes pour résumer forces, faiblesses, opportunités et menaces.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md) : à utiliser pour trouver les lacunes de compétences dans la dimension organisations et personnes.

## Sources principales

- **ITIL 4 Foundation** (PeopleCert) : la page du propriétaire qui nomme les quatre dimensions parmi les sujets étudiés.
- **The ITIL Four Dimensions of Service Management** (itsm.tools) : un résumé de chaque dimension et de PESTLE sur un site de praticiens ; secondaire.
- **PESTLE analysis** (Wikipedia) : contexte sur l'outil d'examen des facteurs externes.
- **ITIL** (Wikipedia) : contexte sur ITIL 4 et sa place dans l'histoire du cadre.

## Références

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site ; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
