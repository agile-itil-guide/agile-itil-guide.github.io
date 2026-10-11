# Manifeste agile

**Le Manifeste pour le développement logiciel agile tient en quatre courtes déclarations de valeurs qui disent à une équipe quoi privilégier lorsque deux bonnes choses s'opposent, et ces choix comptent autant pour exploiter un service en production que pour le construire.**

## Pourquoi c'est important

Le Manifeste agile est la racine de presque tout le reste de ce guide. Scrum, Kanban, la programmation extrême et DevOps sont autant de façons de mettre en œuvre les valeurs qu'il énonce. Si vous ne connaissez que les pratiques, vous copierez les rituels sans en saisir la logique, et lorsqu'un rituel cessera de fonctionner, vous n'aurez rien pour vous guider.

Il compte pour la gestion des services informatiques (ITSM) pour une raison pratique. La plupart des équipes qui exploitent des services aujourd'hui les construisent aussi, et les deux métiers tirent dans des directions différentes. Construire récompense le changement et la vitesse. Exploiter récompense la stabilité et la prévisibilité. Le Manifeste ne supprime pas cette tension, mais il donne à l'équipe une manière commune d'en parler : quelle valeur privilégions-nous ici, et que payons-nous en échange ?

Il aide aussi de savoir ce que le Manifeste n'est pas. Ce n'est ni un processus, ni une certification, ni la promesse que le suivre fait réussir les projets. L'[article de Wikipédia sur le développement logiciel agile](https://en.wikipedia.org/wiki/Agile_software_development) note que les preuves des bénéfices des méthodes agiles sont limitées et peu concluantes. Considérez le Manifeste comme un ensemble d'hypothèses bien argumentées que vous testez dans votre propre contexte, pas comme une écriture sacrée.

## Concepts clés

### D'où il vient

Dix-sept praticiens se sont réunis à la station de ski de Snowbird, dans les montagnes Wasatch de l'Utah, du 11 au 13 février 2001, et ont rédigé le Manifeste ensemble. Selon le [récit publié sur agilemanifesto.org](https://agilemanifesto.org/history.html), ils venaient de méthodes comme la programmation extrême, Scrum et Crystal, et voulaient une alternative aux processus lourds, centrés sur la documentation. Le mot « Light » avait été avancé, Alistair Cockburn s'y était opposé, et le groupe a fini par s'appeler l'Agile Alliance.

Les signataires étaient Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland et Dave Thomas. Plusieurs d'entre eux avaient déjà créé les méthodes qu'ils apportaient : Beck et Cunningham avaient travaillé sur la [programmation extrême](https://en.wikipedia.org/wiki/Extreme_programming), et Schwaber et Sutherland sur [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Le Manifeste était une réaction à une manière de travailler où l'équipe planifie tout le projet à l'avance, construit en longues phases et découvre tard si le résultat est souhaité. Ce style est souvent appelé le [modèle en cascade](https://en.wikipedia.org/wiki/Waterfall_model). Les auteurs n'ont pas inventé le travail itératif (l'article de Wikipédia fait remonter les méthodes itératives et incrémentales à 1957), mais ils lui ont donné un nom commun et un court énoncé de valeurs.

### Les quatre valeurs

Le Manifeste énonce ses valeurs intégralement comme suit. Sa mention de droit d'auteur autorise sa copie libre sous toutes les formes, mais seulement dans son intégralité ; il est donc cité ici en entier :

> Nous découvrons de meilleures approches du développement logiciel en le pratiquant et en aidant les autres à le faire. Ces expériences nous ont amenés à valoriser :
>
> **Les individus et leurs interactions** plus que les processus et les outils
> **Des logiciels opérationnels** plus qu'une documentation exhaustive
> **La collaboration avec les clients** plus que la négociation contractuelle
> **L'adaptation au changement** plus que le suivi d'un plan
>
> Nous reconnaissons la valeur des seconds éléments, mais privilégions les premiers.

Trois détails de la formulation sont faciles à manquer et changent le sens :

- **« Plus que » ne veut pas dire « à la place de ».** La dernière phrase dit que les éléments de droite ont encore de la valeur. Une équipe qui abandonne toute documentation ou toute planification a mal lu le Manifeste.
- **C'est une préférence pour les moments où il faut choisir.** Les valeurs ne disent pas quoi faire chaque jour. Elles disent de quel côté pencher lorsqu'un processus, un document, un contrat ou un plan fait obstacle à un meilleur résultat.
- **« En le pratiquant ».** La phrase d'ouverture dit que les auteurs ont trouvé ces valeurs par la pratique. L'affirmation est empirique, c'est pourquoi vous êtes invité à la vérifier à l'aune de votre propre expérience.

### Lire chaque valeur pour le travail de service

Les valeurs ont été écrites à propos du développement logiciel. Voici ce que chacune peut signifier pour une équipe qui exploite aussi des services.

| Valeur | Ce qu'elle protège | Ce qu'elle peut signifier dans le travail de service |
|---|---|---|
| Les individus et leurs interactions plus que les processus et les outils | Un processus qui fonctionne sur le papier mais que personne ne peut suivre sous pression | Lors d'un incident majeur, les personnes qui connaissent le système se parlent directement. Le processus d'incident soutient cette conversation et ne la remplace pas. |
| Des logiciels opérationnels plus qu'une documentation exhaustive | Des documents qui décrivent un système qui n'existe plus | Un guide d'exploitation testé par l'ingénieur d'astreinte qui l'utilise vaut mieux qu'un long manuel que personne n'a ouvert. |
| La collaboration avec les clients plus que la négociation contractuelle | Se disputer sur un accord de niveau de service (SLA) alors que le vrai besoin du client reste non satisfait | Revoir régulièrement les niveaux de service avec les clients et les modifier quand leurs besoins changent. |
| L'adaptation au changement plus que le suivi d'un plan | Figer un plan alors que la situation a évolué | Un processus de changement capable d'approuver en quelques minutes un changement petit et peu risqué permet à l'équipe de s'adapter. Un processus qui traite tous les changements de la même façon ne le peut pas. |

### Les douze principes

Le Manifeste est accompagné de douze principes qui explicitent les valeurs. Ils font l'objet du sujet suivant (voir Sujet 1.2 — Principes agiles). Ensemble, les valeurs et les principes sont parfois appelés l'état d'esprit agile.

### Les critiques à connaître

Des critiques ont objecté que le Manifeste mine la rigueur de l'ingénierie. L'article de Wikipédia cite Stephen Rakitin, qui, dans une lettre à *IEEE Computer*, qualifiait l'agile de « une nouvelle tentative de saper la discipline du génie logiciel » et lisait « des logiciels opérationnels plus qu'une documentation exhaustive » comme une permission de se passer de documentation. Les défenseurs répondent que la documentation doit être « à peine assez bonne », une expression de Scott Ambler, et que trop peu de documentation nuit à la maintenance et au partage des connaissances.

Pour une équipe de service, la critique porte. Le personnel d'exploitation hérite de ce que laissent les équipes de livraison, et une documentation mince se traduit par une réponse lente aux incidents et de longs transferts. Une lecture honnête du Manifeste est que la documentation doit mériter sa place, pas qu'elle n'en a aucune.

## Bonnes pratiques

1. **Traitez les valeurs comme une aide à la décision, pas comme un règlement.** Quand l'équipe n'est pas d'accord, demandez quelle valeur est en tension et de quel côté l'équipe doit pencher. Cela transforme une dispute de préférences en une conversation sur des compromis.
2. **Lisez la phrase qui suit les valeurs.** Rappelez souvent à l'équipe que les éléments de droite ont encore de la valeur. Notez quels processus, documents, contrats et plans vous gardez, et pourquoi.
3. **Testez chaque valeur sur un événement récent.** Choisissez un incident ou une mise en production réels et demandez comment le travail se serait passé si l'équipe avait penché de l'autre côté. Les preuves tirées de votre propre travail convainquent mieux qu'une citation.
4. **Gardez la documentation, et gardez-la vivante.** Préférez des documents courts, utilisés, testés et avec un responsable, comme les guides d'exploitation et les descriptions de service, aux longs documents écrits une fois. Supprimez ce que personne ne lit.
5. **Faites de la collaboration avec les clients une routine.** Tenez des conversations régulières avec les personnes qui utilisent vos services et intégrez ce que vous apprenez au carnet de produit. N'attendez pas la révision du contrat.
6. **Faites des plans qui s'attendent à changer.** Planifiez sur de courts horizons avec des points de revue explicites. Gardez une direction à plus long terme et acceptez que les étapes pour y aller bougent.
7. **Donnez un responsable à chaque processus et laissez-le évoluer.** Chaque processus de votre système de gestion des services doit avoir un responsable désigné et un moyen pour ceux qui l'utilisent de proposer des changements. Un processus que personne ne peut changer sera contourné.
8. **Utilisez les valeurs à l'embauche et à l'intégration.** Décrivez-les aux nouveaux avec des exemples de votre propre équipe pour qu'ils voient comment les valeurs se manifestent dans les choix quotidiens.
9. **Revisitez les valeurs après le passage à l'échelle.** Les grandes organisations dérivent vers les processus et les outils. Tenez une conversation périodique, peut-être deux fois par an, pour demander si l'équilibre sert encore les clients.
10. **N'utilisez pas le Manifeste comme une arme.** Citer « les individus avant les processus » pour balayer la préoccupation d'un collègue sur l'audit ou la sécurité met fin à une conversation qui aurait dû commencer. Utilisez-le pour ouvrir la discussion, pas pour la gagner.

## Questions à discuter avec votre équipe

**Laquelle des quatre valeurs notre équipe privilégie-t-elle déjà en pratique, et laquelle ne prétendons-nous privilégier qu'en paroles ?**

Commencez par lister des décisions récentes : une mise en production retardée pour de la paperasse, une demande refusée parce qu'elle n'était pas dans le contrat, un plan maintenu alors qu'il n'avait plus de sens. Rattachez chacune à une valeur. Les équipes constatent souvent un écart entre ce qu'elles disent et ce qu'elles font, et cet écart est la découverte utile. L'animateur doit éviter le blâme et demander quelle pression a produit chaque choix. Poursuivez en demandant lesquelles de ces pressions l'équipe peut changer.

**Où nos processus et nos outils aident-ils les gens à se parler, et où font-ils obstacle ?**

Demandez aux gens de nommer un processus qui leur épargne de l'effort et un autre qui leur en coûte. Le coûteux est souvent un bon processus appliqué rigidement, comme un flux de tickets qui exige quatre approbations pour un changement trivial. Cherchez les endroits où les gens évitent l'outil et utilisent la messagerie ou la conversation de couloir, car cela signale généralement un décalage. Terminez par un processus à simplifier ce mois-ci.

**Quelle documentation regretterions-nous de perdre, et que pourrions-nous supprimer demain ?**

Cette question teste la valeur « des logiciels opérationnels plus qu'une documentation exhaustive » sans la pousser à l'extrême. Demandez aux gens quels documents ils ont utilisés le mois dernier. Les guides d'exploitation, les schémas d'architecture et les descriptions de service destinées aux clients reviennent souvent. Les documents que personne ne mentionne sont candidats à la suppression ou à la fusion. Rappelez à l'équipe que supprimer est une décision, et attribuez-en la responsabilité.

**Comment nos clients participent-ils à la définition de nos services, et comment savons-nous que c'est suffisant ?**

Rassemblez des exemples où l'avis d'un client a changé une décision. Si la liste est courte, demandez pourquoi. Les causes sont généralement structurelles : un chargé de compte au milieu, une revue du SLA une fois par an, ou un centre de services qui enregistre les plaintes sans les transmettre. Demandez directement aux clients, si possible, ce qu'ils changeraient. La consigne pour l'animateur est de chercher une manière concrète de raccourcir le chemin entre un client et l'équipe.

**Que faudrait-il pour approuver un changement petit et peu risqué dans l'heure, et devrions-nous le faire ?**

Cette question relie la quatrième valeur au contrôle des changements (voir Sujet 3.4 — Habilitation des changements). Demandez ce qui ralentit aujourd'hui les petits changements : une réunion hebdomadaire, un formulaire de risque manuel, un test manquant. Demandez quelles preuves rassureraient l'équipe, comme des tests automatisés ou un retour arrière rapide. Ne poussez pas vers un « oui ». Le but est de découvrir ce que l'équipe pense devoir obtenir, ce qui est le début d'un plan.

**Si un régulateur, un auditeur ou un client important lisait le Manifeste, de quoi s'inquiéterait-il, et aurait-il raison ?**

Certaines inquiétudes sont justifiées. Les auditeurs veulent des preuves et les clients veulent des engagements. Invitez l'équipe à prendre ces préoccupations au sérieux et à demander quelles preuves et quels engagements légers les satisferaient. Les équipes qui savent montrer comment le travail agile produit une piste d'audit gagnent généralement plus de liberté, pas moins. Consignez les préoccupations pour la discussion de gouvernance du Sujet 5.7 — Gouvernance, risques et conformité.

## En pratique : un exemple d'ITIL agile

Un détaillant en ligne de taille moyenne a une équipe plateforme de huit personnes qui construit et exploite son service de paiement. L'équipe est récemment passée de mises en production trimestrielles à des mises en production hebdomadaires, et elle a maintenant un problème : le centre de services se plaint que les changements arrivent sans avertissement, et l'équipe plateforme se plaint que la réunion d'approbation des changements met une semaine à approuver des changements prêts le lundi.

Le responsable de l'équipe anime une session d'une heure avec les quatre valeurs comme cadre. Ils listent les événements récents sur un mur. Une correction de code promotionnel a attendu neuf jours son approbation. Un changement de base de données approuvé rapidement a provoqué une panne. Un guide d'exploitation pour les échecs de paiement s'est révélé décrire un système retiré l'année précédente. Le groupe place chaque événement face à une valeur. La plupart des cas de retard relèvent de « les processus et les outils plus que les individus et leurs interactions », c'est-à-dire que le processus était exécuté pour lui-même. La panne relève de « l'adaptation au changement plus que le suivi d'un plan », puisque la réunion d'approbation traitait tous les changements de la même façon et n'examinait pas de près celui qui était risqué.

Ils conviennent de trois changements. Premièrement, les changements qui correspondent à une courte liste de schémas peu risqués, avec des tests automatisés réussis et un retour arrière testé, seront pré-approuvés et consignés automatiquement. Deuxièmement, les changements risqués seront revus en une journée par un pair et un représentant de l'exploitation. Troisièmement, chaque guide d'exploitation aura un responsable désigné et sera vérifié chaque fois qu'il sert lors d'un incident.

Deux mois plus tard, le responsable fait le point avec le centre de services. Les changements pré-approuvés circulent vite, et le centre de services voit désormais chaque changement dans un flux partagé. Un problème subsiste : deux des schémas pré-approuvés étaient dessinés trop largement, et un incident mineur s'en est suivi. L'équipe resserre les schémas et garde l'approche. Elle constate aussi que le flux partagé ne remplace pas la conversation ; le responsable du centre de services rejoint donc la planification hebdomadaire de l'équipe plateforme.

## Quatre points de vue

### Équipes produit et de livraison

Pour les équipes de livraison, le Manifeste rappelle qu'un logiciel opérationnel inclut un fonctionnement opérationnel. Une fonctionnalité qui ne peut pas être surveillée, supportée ou annulée n'est pas terminée. Utilisez les valeurs pour plaider en faveur du travail d'exploitation qui rend les mises en production sûres, et invitez tôt le personnel d'exploitation à la planification.

### Équipes de service et d'exploitation

Le personnel d'exploitation a souvent l'impression que le Manifeste parle pour les développeurs. Lisez-le autrement : les valeurs favorisent le dialogue entre les personnes, les artefacts testés et la réaction rapide au changement, ce qui convient à une bonne exploitation. Apportez les pratiques ITIL à la table comme une expérience accumulée sur ce qui tourne mal, et proposez des versions plus légères qui conservent le but.

### Direction et gouvernance

Les dirigeants fixent les conditions qui permettent aux valeurs de fonctionner. Si chaque mise en production exige cinq signatures, une équipe ne peut pas privilégier l'adaptation au changement, quel que soit le nombre d'affiches au mur. Demandez à vos équipes où vos propres règles les ralentissent, et soyez prêt à changer une règle quand son but peut être atteint autrement.

### Clients et utilisateurs

Les clients sont nommés dans deux des quatre valeurs. Pour eux, le Manifeste promet de la collaboration, pas seulement de la livraison. Attendez-vous à ce qu'on vous demande ce dont vous avez besoin, à voir souvent des changements opérationnels et à pouvoir changer d'avis. En retour, une équipe a besoin de vos retours et de vos décisions en temps utile.

## Modes d'échec courants

- **Utiliser « plus que » comme « à la place de ».** Les équipes abandonnent entièrement documentation, planification ou contrats, puis en souffrent. À la place, décidez ce que chacun doit permettre d'atteindre et gardez la forme la plus légère qui y parvient.
- **Traiter les valeurs comme un permis de se passer de rigueur.** « Nous sommes agiles » devient une excuse pour ne pas tester, ne pas garder de traces, ne pas transmettre. À la place, reliez chaque valeur à une pratique concrète et vérifiez que la pratique a bien lieu.
- **Réciter le Manifeste sans le vérifier.** Les slogans remplacent la réflexion. À la place, confrontez les événements réels aux valeurs à intervalles réguliers.
- **L'utiliser contre des collègues.** Citer une valeur pour écarter la préoccupation de l'audit, de la sécurité ou de l'exploitation abîme la confiance. À la place, demandez ce que la préoccupation protège et comment y répondre légèrement.
- **Adopter les pratiques sans les valeurs.** Des réunions quotidiennes et des tableaux apparaissent, mais les décisions attendent encore des chaînes d'approbation. À la place, demandez quelles décisions devraient se rapprocher des personnes qui font le travail.
- **Supposer que le Manifeste répond aux questions d'exploitation.** Il a été écrit à propos du développement logiciel en 2001 et dit peu de choses sur l'exploitation de services. À la place, combinez-le avec les pratiques de gestion des services et adaptez les deux.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Compréhension partagée des valeurs | Quelques personnes ont lu le Manifeste | Certaines équipes en discutent, avec des lectures divergentes | Les équipes partagent une courte lecture écrite des valeurs pour leur contexte | Les équipes confrontent les décisions récentes aux valeurs lors de revues régulières | Équipes, fournisseurs et clients utilisent un vocabulaire commun de compromis |
| Équilibre entre processus et personnes | Les processus sont suivis ou ignorés selon la personne | Certains processus sont simplifiés par des équipes individuelles | Chaque processus a un responsable et une voie pour les demandes de changement | La friction des processus est mesurée, par exemple le temps d'attente par changement | Les processus sont ajustés entre équipes à partir de preuves partagées |
| Collaboration avec les clients | Les retours arrivent par la plainte | Certaines équipes rencontrent régulièrement les clients | Chaque service a une manière définie de recueillir l'avis des clients | L'avis des clients est suivi et relié aux changements effectués | Les clients aident à fixer les priorités entre services |
| Documentation et plans | Les documents sont rares ou périmés | Les équipes gardent les documents qu'elles jugent utiles | Les documents exigés sont peu nombreux, ont un responsable et sont revus | L'usage des documents est observé et ceux qui ne servent pas sont retirés | La documentation est générée ou vérifiée dans le cadre de la livraison |

## Liste de contrôle

- [ ] Chaque membre de l'équipe a lu une fois le Manifeste et ses douze principes.
- [ ] L'équipe sait énoncer chaque valeur avec ses propres mots, avec un exemple tiré de son travail.
- [ ] Nous avons listé les processus, documents, contrats et plans que nous gardons, et pourquoi.
- [ ] Chaque processus utilisé a un responsable désigné et un moyen de proposer des changements.
- [ ] Les guides d'exploitation et les descriptions de service ont des responsables et une date de revue.
- [ ] Nous tenons une conversation régulière avec les clients d'au moins un service.
- [ ] Nous avons confronté au moins un incident ou une mise en production récents aux quatre valeurs.
- [ ] Les règles fixées par la direction qui ralentissent l'équipe ont été listées et discutées.
- [ ] Nous avons noté comment nous montrerons aux auditeurs et aux régulateurs ce que nous faisons.

## Prompts d'IA

**Objectif : transformer les quatre valeurs en une courte lecture pour votre propre équipe.**

```text
Vous aidez une équipe de [taille et type d'équipe, par ex. « huit ingénieurs qui construisent et exploitent un service de paiement »] à rédiger en langage simple une lecture des quatre valeurs du Manifeste agile pour leur propre contexte.

Voici les quatre valeurs telles qu'elles sont écrites :
- Les individus et leurs interactions plus que les processus et les outils
- Des logiciels opérationnels plus qu'une documentation exhaustive
- La collaboration avec les clients plus que la négociation contractuelle
- L'adaptation au changement plus que le suivi d'un plan

Contexte sur notre équipe et notre travail : [collez 3 à 5 phrases sur ce que vous construisez, ce que vous exploitez, qui sont vos clients et les règles à respecter, comme des règles d'audit ou de sécurité].

Pour chaque valeur, écrivez deux ou trois phrases sur ce qu'elle pourrait signifier pour nous, et un exemple tiré uniquement du contexte ci-dessus. Signalez clairement tout point où vous devinez. Posez-moi d'abord jusqu'à trois questions de clarification si le contexte est trop mince. N'inventez ni statistiques ni citations de sources. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : confronter un événement récent aux valeurs.**

```text
Ci-dessous se trouve une courte description d'un événement récent dans notre équipe (un incident, une mise en production ou un changement retardé). Aidez-moi à le confronter aux quatre valeurs du Manifeste agile.

Événement : [collez une description factuelle de ce qui s'est passé, dans l'ordre, sans blâmer personne].

Pour chaque valeur, dites si l'événement montre l'équipe penchant vers la valeur de gauche, vers l'élément de droite, ou ni l'un ni l'autre, et expliquez votre raisonnement en deux phrases. Suggérez ensuite jusqu'à trois questions que notre équipe pourrait discuter. Séparez ce que vous voyez dans le texte de ce que vous supposez, et listez ce dont vous n'êtes pas sûr.
```

**Objectif : se préparer à répondre à la préoccupation d'un auditeur sur les méthodes agiles.**

```text
Je dois expliquer à un auditeur comment notre équipe agile tient des enregistrements adéquats. La préoccupation de l'auditeur est : [collez la préoccupation, par ex. « aucune preuve de qui a approuvé les changements »].

Notre pratique actuelle est : [décrivez ce que vous faites aujourd'hui : outils, revues, approbations, lieu de conservation des enregistrements].

Listez les preuves que notre pratique actuelle produit déjà, les lacunes que l'auditeur pourrait remarquer, et trois moyens légers de combler chaque lacune sans ajouter de processus manuel lourd. N'affirmez pas qu'une loi, une norme ou une réglementation exige quelque chose à moins que j'en aie collé le texte ci-dessus. Listez vos hypothèses et ce dont vous n'êtes pas sûr à la fin.
```

**Objectif : concevoir une session d'équipe d'une heure sur le Manifeste.**

```text
Concevez une session animée d'une heure pour une équipe de [nombre] personnes sur le Manifeste agile. L'équipe travaille sur [services ou produits] et sa plus grande frustration actuelle est [frustration].

Incluez : une ouverture de cinq minutes, une activité de 20 minutes où l'équipe rattache des événements réels récents aux quatre valeurs, une discussion de 20 minutes sur deux ou trois des six questions ci-dessous, et une clôture de 10 minutes avec une action convenue.

Questions disponibles : [collez les questions que vous voulez utiliser dans la section « Questions à discuter avec votre équipe »].

Donnez un ordre du jour minuté, ce que dit l'animateur et les points de vigilance. Restez pratique et ne supposez aucun outil. Posez des questions de clarification si des informations manquent, et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md) : à utiliser pour confronter une pratique d'équipe ou une décision de processus aux principes du Manifeste.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour animer une rétrospective qui confronte les événements récents aux valeurs et débouche sur un vrai changement.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md) : à utiliser au lancement d'une nouvelle équipe ou d'un nouveau projet, pour une lecture partagée des valeurs dès le premier jour.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md) : à utiliser lorsque vous aidez une équipe à passer de la copie de rituels à la compréhension de leurs raisons.

## Sources principales

- **Manifesto for Agile Software Development** (agilemanifesto.org) : le texte primaire. Lisez-le en entier ; cela prend deux minutes.
- **Principles behind the Agile Manifesto** (agilemanifesto.org) : les douze principes, le compagnon le plus utile des valeurs.
- **History : The Agile Manifesto** (agilemanifesto.org) : le court récit des auteurs eux-mêmes sur la réunion de Snowbird.
- **Agile software development** (Wikipedia) : une vue d'ensemble large avec l'histoire, les méthodes, les pratiques et les critiques, utile comme carte pour des lectures complémentaires.

## Références

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History : The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
