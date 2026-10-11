# Ingénierie de la fiabilité des sites

**L'ingénierie de la fiabilité des sites traite l'exploitation comme un problème d'ingénierie, en utilisant des objectifs de niveau de service, des budgets d'erreur et un plafond sur le travail manuel répétitif pour garder les services fiables tout en continuant de changer rapidement.**

## Pourquoi c'est important

Beaucoup de pratiques de gestion des services ont été conçues pour un monde où le personnel d'exploitation faisait tourner des logiciels écrits par d'autres, et où le coût d'exploitation croissait avec la taille du service. L'ingénierie de la fiabilité des sites (SRE) est la réponse d'une organisation à ce qui arrive quand ce modèle atteint une très grande échelle : demander à des ingénieurs logiciels de concevoir et de faire fonctionner la fonction d'exploitation, et faire en sorte que le système fasse le travail que les gens feraient autrement à la main.

Pour les lecteurs de ce guide, la SRE est utile pour trois raisons. Elle rend explicite le compromis entre vitesse et fiabilité, avec des chiffres que les équipes produit et d'exploitation peuvent toutes deux lire. Elle donne une idée ferme de la quantité de travail manuel qui est trop. Et elle montre comment beaucoup de pratiques d'ITIL, comme la gestion des incidents, des problèmes, des changements et de la capacité, peuvent se faire en termes d'ingénierie. La SRE n'est pas la seule manière de les faire, et elle vient des circonstances d'une très grande entreprise d'Internet ; ce qui se transpose dépend donc de votre situation.

Ce sujet s'appuie principalement sur trois chapitres du livre *Site Reliability Engineering* de Google, complétés par l'article de Wikipédia sur la SRE. Le livre décrit la pratique dans une organisation et plaide pour son approche ; l'article de Wikipédia donne un tableau plus large mais plus mince et ne nomme aucune critique. Lisez les deux comme des sources d'idées à tester, non comme une norme.

## Concepts clés

### Ce qu'est la SRE

L'introduction du livre définit la SRE comme « ce qui arrive quand on demande à un ingénieur logiciel de concevoir une équipe d'exploitation ». L'[article de Wikipédia sur l'ingénierie de la fiabilité des sites](https://en.wikipedia.org/wiki/Site_reliability_engineering) la décrit comme une discipline du génie logiciel et du soutien à l'infrastructure informatique qui surveille et améliore la disponibilité et la performance des logiciels déployés et des grands services, en mettant l'accent sur l'automatisation et l'infrastructure en tant que code. L'article appelle la SRE une mise en œuvre spécifique de DevOps, plus étroite par sa portée parce qu'elle se concentre sur la construction de systèmes fiables (voir Sujet 5.2 — DevOps). Le livre décrit DevOps comme un ensemble de principes plus large que la SRE met en œuvre d'une façon précise.

Selon l'article, la pratique SRE de Google a commencé en 2003 quand Benjamin Treynor Sloss est arrivé et a formé une équipe à partir de sept ingénieurs de production ; en 2016, l'équipe comptait plus de 1 000 SRE, et d'autres grandes entreprises d'Internet avaient adopté la pratique. Une enquête de 2020 auprès de 572 professionnels a trouvé des équipes SRE dans 64 pour cent des organisations de 10 000 employés ou plus, 44 pour cent de celles de 101 à 1 000 et 32 pour cent de celles de 100 ou moins. La série de conférences SREcon a lieu chaque année depuis 2014.

### Le problème que traite la SRE

L'introduction décrit le modèle traditionnel : développeurs et administrateurs système sont répartis en équipes distinctes. Elle nomme deux sortes de coûts :

- **Coûts directs.** La gestion manuelle des changements et le traitement des événements deviennent coûteux, car l'équipe d'exploitation grandit avec la charge.
- **Coûts indirects.** Les équipes ont des vocabulaires, des incitations et des hypothèses sur le risque différents, ce qui conduit à des conflits sur les mises en production. L'exploitation ajoute des portes de lancement, et les développeurs répondent par des contournements.

La SRE vise à éviter cette scission en traitant l'exploitation comme un problème d'ingénierie. Le chapitre dit que la taille de l'équipe croît plus lentement que le système, parce que l'ingénierie empêche la charge d'exploitation de croître au rythme du trafic.

### Les principes

L'introduction liste les domaines dont les équipes SRE sont responsables : disponibilité, latence, performance, efficacité, gestion des changements, surveillance, réponse aux urgences et planification de la capacité. L'article de Wikipédia liste des pratiques centrales qui incluent l'automatisation du travail répétitif, la définition d'objectifs de fiabilité par des indicateurs de niveau de service (SLI), des objectifs (SLO) et des budgets d'erreur, la conception de systèmes pour réduire le risque, l'observabilité et la surveillance, la gestion du labeur (toil), un processus de gestion des incidents testé, ainsi que la planification de la capacité, la gestion des mises en production et l'ingénierie du chaos.

### Objectifs de niveau de service et budgets d'erreur

La SRE relie la fiabilité à des cibles explicites (voir Sujet 3.7 — Gestion des niveaux de service pour le traitement complet). En bref :

- Choisissez quelques indicateurs qui reflètent ce qui importe aux utilisateurs.
- Fixez un objectif qui n'exige pas la perfection.
- Admettez un **budget d'erreur** : la marge entre la perfection et l'objectif.
- Servez-vous du budget pour décider du rythme des mises en production : tant qu'il reste du budget, les mises en production continuent ; quand il est épuisé, elles ralentissent et l'effort se déplace vers la fiabilité.

Le chapitre « Embracing Risk » explique pourquoi : les équipes produit sont mesurées sur la vélocité et les équipes de fiabilité sur la fiabilité, ce qui crée une tension, et le budget donne aux deux une mesure partagée et objective. Le même chapitre dit que les coûts de fiabilité montent fortement et que le but est d'aligner le risque d'un service sur ce que le métier acceptera (voir Sujet 3.11 — Disponibilité, capacité et performance).

### Le labeur (toil)

Le chapitre « Eliminating Toil » définit le **labeur** comme le travail opérationnel lié à l'exploitation d'un service de production, et dit qu'il n'est pas simplement un travail que quelqu'un n'aime pas et qu'il se distingue des frais généraux comme les réunions. Le labeur tend à être :

| Caractéristique | Signification |
|---|---|
| **Manuel** | Demande un effort humain direct, même si un script exécute les étapes |
| **Répétitif** | Fait encore et encore, non un problème nouveau |
| **Automatisable** | Une machine pourrait le faire, ou le besoin pourrait être supprimé par la conception |
| **Tactique** | Dicté par les interruptions et réactif, comme répondre aux appels |
| **Sans valeur durable** | Le service est dans le même état après |
| **Linéaire avec la croissance** | L'effort croît avec la taille du service, le trafic ou les utilisateurs |

Le livre dit que les SRE visent à garder le labeur sous 50 pour cent de leur temps, au moins la moitié étant consacrée à des projets d'ingénierie, et l'introduction place un plafond de 50 pour cent sur le travail « d'exploitation » agrégé, renvoyant l'excédent aux équipes de développement. Il dit que trop de labeur cause stagnation de carrière, moral bas et épuisement, ralentit le travail sur les fonctionnalités et provoque des départs ; « le labeur devient toxique quand il est vécu en grande quantité », bien que de petites quantités puissent être apaisantes et qu'une part soit inévitable. Le chapitre donne un moyen de calculer le plancher qu'impose l'astreinte (par exemple une borne inférieure de 33 pour cent pour un tour de six personnes selon les hypothèses de son exemple) et rapporte que les interruptions étaient la plus grande source de labeur, suivies de la réponse d'astreinte puis des mises en production. Il définit le travail d'ingénierie comme nouveau, exigeant du jugement, produisant une amélioration permanente et suivant une stratégie.

### Réponse aux urgences et surveillance

L'introduction dit que la surveillance ne devrait pas exiger qu'un humain interprète les alertes : le logiciel interprète les données et les humains ne sont prévenus que lorsqu'une action est nécessaire (voir Sujet 3.10 — Surveillance et gestion des événements). Elle dit que les SRE d'astreinte devraient recevoir au plus environ deux événements par quart. Elle affirme que les manuels d'intervention (playbooks) produisent une amélioration d'environ un facteur trois du temps moyen de réparation par rapport à l'improvisation. Le traitement des incidents suit une approche de commandement d'incident, et les analyses post-incident sont sans blâme et rédigées pour tous les incidents significatifs (voir Sujet 3.2 — Gestion des incidents).

### Gestion des changements

L'introduction affirme qu'environ 70 pour cent des pannes viennent de changements apportés à un système en production, et recommande des déploiements progressifs, une détection rapide des problèmes et des retours arrière sûrs. C'est l'affirmation du livre lui-même, tirée de l'expérience de Google, qui peut ne pas valoir pour toutes les organisations. Son message est cohérent avec les orientations de DORA sur le changement (voir Sujet 3.4 — Habilitation des changements et Sujet 3.5 — Gestion des mises en production et des déploiements).

### SRE et ITIL

La SRE peut se lire comme une manière d'ingénierie d'exécuter plusieurs pratiques d'ITIL :

| Pratique ITIL | Approche SRE |
|---|---|
| Gestion des incidents | Rôles de commandement d'incident, enregistrement d'incident en direct, analyses post-incident sans blâme |
| Gestion des problèmes | Actions d'analyse post-incident dans le carnet, suppression du labeur à la cause |
| Habilitation des changements | Déploiements progressifs, détection rapide, retour arrière sûr, contrôles automatisés |
| Gestion des niveaux de service | SLI, SLO, budgets d'erreur |
| Surveillance et gestion des événements | Alertes fondées sur les symptômes, les quatre signaux d'or |
| Gestion de la capacité | Planification de la capacité comme tâche d'ingénierie, avec tests de charge |
| Amélioration continue | Un plafond sur le labeur, des projets d'ingénierie comme travail principal |

La correspondance est celle de ce guide, non celle des sources. Ni le livre ni l'article de Wikipédia ne prétendent mettre en œuvre ITIL.

### Modèles de déploiement

L'article de Wikipédia décrit six modèles d'organisation pour la SRE : « Kitchen Sink », infrastructure, outils, produit ou application, intégré et conseil. Il dit qu'un hybride est courant dans les grandes organisations, mais marque cette affirmation comme nécessitant une citation. Le modèle qui vous convient dépend de votre taille et du nombre de services.

### Limites et critiques

L'article de Wikipédia n'énonce ni critiques, ni coûts, ni modes d'échec, et le livre décrit le succès d'une organisation. Les limites pratiques sont bien connues par l'expérience, et offertes ici comme telles : la SRE a besoin d'ingénieurs capables d'écrire du logiciel et prêts à faire de l'exploitation ; le plafond de 50 pour cent a besoin du soutien de la direction ; les budgets d'erreur ne fonctionnent que si les équipes produit les respectent ; et l'approche est difficile à copier sans l'échelle et l'outillage qui l'ont produite. Les petites organisations peuvent adopter les idées, comme les objectifs, les budgets, la mesure du labeur et la revue sans blâme, sans créer d'équipe.

## Bonnes pratiques

1. **Choisissez un service et fixez un objectif.** Choisissez deux à quatre indicateurs qui reflètent l'expérience des utilisateurs, fixez un premier objectif souple et mesurez pendant quelques mois avant de le resserrer.
2. **Convenez d'une politique de budget d'erreur.** Écrivez ce qui se passe quand le budget est presque épuisé et quand il l'est, et qui peut passer outre. Faites-en une règle commune du produit et de l'exploitation.
3. **Mesurez le labeur.** Demandez aux gens de consigner la part de leur temps consacrée au travail opérationnel manuel et répétitif. Utilisez les six caractéristiques pour le classer. Regardez les principales sources.
4. **Plafonnez le travail manuel.** Fixez un plafond pour le labeur, comme la moitié du temps d'une personne, et revoyez-le. Quand le plafond est dépassé, renvoyez l'excédent aux équipes qui possèdent les causes ou réduisez le périmètre.
5. **Automatisez d'abord le plus gros labeur.** Choisissez l'élément qui coûte le plus de temps et est le plus répétable, automatisez-le avec des tests et mesurez l'économie. Préférez supprimer le besoin par la conception plutôt que l'automatiser.
6. **Protégez le temps d'ingénierie.** Planifiez les projets des ingénieurs d'exploitation comme du vrai travail avec responsables et dates. Sans cela, le labeur s'étend.
7. **Limitez les interruptions.** Visez peu d'événements par quart d'astreinte, réglez les alertes pour que les appels soient exploitables et corrigez les causes récurrentes. L'orientation du livre est d'environ deux événements par quart au plus.
8. **Écrivez des manuels d'intervention.** Pour les défaillances courantes, écrivez des étapes de réponse courtes et testées. Le livre affirme qu'ils améliorent le temps de réparation par rapport à l'improvisation.
9. **Rendez les changements progressifs et réversibles.** Déployez graduellement, détectez vite les problèmes et revenez en arrière en sécurité. Puisque les changements sont la cause la plus courante de pannes dans l'expérience du livre, investissez d'abord ici.
10. **Menez des analyses post-incident sans blâme pour les incidents significatifs,** y compris les quasi-accidents qui n'ont pas déclenché d'appel. Transformez les actions en éléments de carnet.
11. **Commencez par les idées, pas par l'équipe.** Les petites organisations peuvent adopter objectifs, budgets, mesures du labeur et analyses post-incident avec le personnel existant avant de créer une équipe dédiée.
12. **Choisissez un modèle d'organisation à dessein.** Si vous créez une fonction SRE, décidez si elle fournit des outils, s'intègre aux équipes produit ou conseille, et revoyez le choix en grandissant.

## Questions à discuter avec votre équipe

**Sur quel service mettrions-nous d'abord un objectif, et quel serait l'objectif ?**

Demandez à chacun de nommer le service et l'indicateur qui reflète le mieux l'expérience de l'utilisateur. Comparez. Les différences montrent des priorités floues. L'animateur peut demander ce qui se passe aujourd'hui quand le service est plus lent ou moins disponible que les utilisateurs l'attendent. Convenez d'un service pour commencer et de ce qu'il faut mesurer.

**Que ferions-nous si nous dépensions tout notre budget d'erreur ce mois-ci ?**

Demandez à l'équipe et à un représentant du produit de décrire les actions, qui décide et ce qui est protégé. Beaucoup d'équipes n'en ont jamais convenu. Discutez si une pause sur les mises en production risquées serait acceptée. Rédigez une politique d'une page.

**Quelle part de notre semaine est du labeur, et quelles en sont les trois principales sources ?**

Demandez aux gens d'estimer puis de tenir un relevé pendant deux semaines. Comparez les estimations avec les relevés. Le but est de voir la forme du travail, non de blâmer. Choisissez la plus grosse source et demandez si elle peut être supprimée par la conception.

**Quelle tâche manuelle récurrente un script ou un changement de conception pourrait-il supprimer ?**

Listez les tâches que les gens redoutent. Pour chacune, estimez la fréquence et le temps. Les meilleurs candidats sont fréquents, stables et à faible risque. Demandez ce qui rendrait l'automatisation sûre, comme des limites et des journaux. Choisissez-en une à automatiser.

**Combien d'événements chaque quart d'astreinte reçoit-il, et combien nécessitent une action ?**

Comptez pour le dernier trimestre. Si le nombre est élevé, discutez d'où il vient. L'introduction suggère de viser environ deux événements par quart. Choisissez une source d'alertes à corriger.

**Que perdrions-nous et gagnerions-nous si nous créions une équipe de fiabilité dédiée ?**

Demandez des avis honnêtes. Les gains pourraient être la concentration et les compétences ; les pertes un nouveau silo ou le déversement du travail opérationnel. Discutez d'alternatives comme des ingénieurs intégrés ou une rotation. Décidez de ce qu'il faut essayer à petite échelle.

## En pratique : un exemple d'ITIL agile

Un distributeur régional d'électricité exploite une application de signalement de pannes et un système de répartition des équipes de terrain. Une équipe combinée de dix-huit personnes construit et exploite les deux. Le personnel d'exploitation de l'équipe passe l'essentiel de son temps sur du travail manuel : relancer des tâches bloquées, ajuster des flux de données et répondre aux appels. Le chef du groupe note qu'il leur reste peu de temps pour l'amélioration, et deux d'entre eux ont demandé à passer dans d'autres équipes.

Le chef d'équipe propose une approche inspirée de la SRE. Pour l'application de signalement de pannes, l'équipe fixe deux indicateurs : la part des signalements qui aboutissent et le temps d'affichage d'une confirmation. Elle convient d'un objectif souple et d'un budget d'erreur mensuel avec le responsable du service à la clientèle, et rédige une politique d'une page : quand plus des trois quarts du budget sont dépensés, les mises en production risquées attendent. L'équipe demande aux ingénieurs de consigner leur labeur pendant un mois. Le relevé montre qu'un tiers de leur temps va à relancer une tâche d'import de données défaillante et à des ajustements manuels après les tempêtes, quand la demande bondit. Ils fixent un plafond de la moitié de leur temps pour le labeur, décident de corriger d'abord la cause de la tâche d'import et d'automatiser les ajustements après tempête avec un script doté de limites et d'un journal. Les appels sont réglés pour que seuls les symptômes visibles des utilisateurs alertent l'ingénieur d'astreinte.

Quatre mois plus tard, le labeur tombe à environ un tiers du temps de l'équipe, la tâche d'import n'échoue plus et la politique de budget d'erreur a servi une fois, un mois de panne d'un fournisseur, à reporter la mise en production d'une fonctionnalité. Des difficultés subsistent. Le système de répartition n'a pas encore d'objectifs, et le responsable du service à la clientèle a été tenté deux fois de passer outre à la politique de budget pour des fonctionnalités urgentes. Le chef d'équipe et le responsable conviennent de revoir les dérogations chaque mois et de fixer ensuite des objectifs pour la répartition. Ils apprennent aussi que le « plafond » est un guide, non une promesse : après une grosse tempête, le labeur a dépassé largement la moitié pendant deux semaines, et ils doivent décider quoi couper.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison participent à la fixation des objectifs et respectent le budget. Intégrez l'exploitabilité aux fonctionnalités, acceptez que le labeur retourne à l'équipe qui le cause et aidez à automatiser. Traitez un budget dépensé comme une information sur le service, non comme une punition.

### Équipes de service et d'exploitation

Les équipes d'exploitation peuvent faire le travail de SRE ou adopter ses idées. Mesurez le labeur, protégez le temps d'ingénierie et renvoyez le travail répété à sa source. Servez-vous des objectifs pour expliquer pourquoi certains travaux devraient être refusés.

### Direction et gouvernance

Les dirigeants doivent soutenir le plafond de labeur et la règle du budget d'erreur ; sans soutien, ils échouent. Demandez les objectifs et l'état du budget, non un décompte d'incidents. Donnez du temps pour le travail d'ingénierie et soyez prêt à dire non à des fonctionnalités quand le budget est dépensé.

### Clients et utilisateurs

Les clients et utilisateurs profitent de niveaux de service clairs et d'un rétablissement plus rapide quand les choses échouent. Dites à l'équipe ce qui compte le plus, pour que les objectifs reflètent votre expérience. Attendez-vous à des conversations honnêtes sur les compromis entre nouvelles fonctionnalités et fiabilité.

## Modes d'échec courants

- **Copier l'intitulé.** L'exploitation est rebaptisée et rien ne change. À la place, adoptez d'abord objectifs, budgets et mesures du labeur.
- **Un budget d'erreur que personne ne respecte.** Les fonctionnalités passent outre chaque fois. À la place, convenez de la règle avec les responsables produit et revoyez les dérogations.
- **Pas de temps pour l'ingénierie.** Le labeur remplit la semaine. À la place, plafonnez-le et protégez le temps de projet.
- **Automatiser la mauvaise chose.** Une tâche rare est automatisée tandis que la fréquente demeure. À la place, classez par temps et fréquence.
- **Des cibles de perfection.** Les objectifs exigent 100 pour cent. À la place, fixez des cibles souples à partir des besoins des utilisateurs et resserrez avec des données.
- **Une équipe de fiabilité comme dépotoir.** Le développement lui envoie tout le travail opérationnel. À la place, renvoyez l'excédent à sa source.
- **Copier l'échelle de Google.** Des pratiques qui exigent une grande organisation sont adoptées par une petite. À la place, prenez les idées qui conviennent, comme objectifs et analyses post-incident.
- **Ignorer les personnes.** La charge d'astreinte épuise les gens. À la place, limitez les événements par quart et partagez le tour.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Objectifs et budgets | Les buts de fiabilité sont informels | Certains services ont des objectifs | Les services clés ont des objectifs et une politique de budget d'erreur convenue | Les budgets guident les mises en production et les dérogations sont revues | Objectifs et budgets sont alignés entre services dépendants |
| Labeur et automatisation | Le labeur n'est pas mesuré | Certaines équipes estiment le labeur | Le labeur est mesuré et plafonné ; le travail d'automatisation est planifié | Sources de labeur et économies sont suivies et réduites | L'automatisation est partagée et le labeur réduit entre équipes |
| Réponse aux urgences | La réponse est improvisée | Quelques manuels d'intervention et un tour existent | Rôles, manuels d'intervention et analyses post-incident sans blâme sont standard | La charge d'événements et les temps de réparation sont mesurés et améliorés | La réponse est répétée et coordonnée entre équipes et fournisseurs |
| Changement et capacité | Les changements sont risqués et manuels | Certains déploiements sont étagés | Déploiement progressif et planification de la capacité sont routiniers | Échecs de changement et prévisions de capacité sont mesurés | Les pratiques de changement et de capacité sont partagées dans l'organisation |

## Liste de contrôle

- [ ] Au moins un service a des indicateurs et un objectif souple, mesurés dans le temps.
- [ ] Une politique de budget d'erreur est convenue avec les responsables produit et écrite.
- [ ] Le labeur est mesuré avec une définition cohérente, et les principales sources sont connues.
- [ ] Un plafond de labeur existe et est revu.
- [ ] Le temps pour les projets d'ingénierie est planifié et protégé.
- [ ] La charge d'astreinte est mesurée et les appels sont exploitables.
- [ ] Des manuels d'intervention existent pour les défaillances les plus courantes et ont été testés.
- [ ] Les déploiements sont progressifs et les retours arrière testés.
- [ ] Les incidents significatifs et les quasi-accidents donnent lieu à des analyses post-incident sans blâme avec des actions attribuées.
- [ ] Nous avons choisi à dessein comment le travail de fiabilité est organisé.

## Prompts d'IA

**Objectif : classer votre travail en labeur, ingénierie ou frais généraux.**

```text
Voici une liste de ce que nos ingénieurs d'exploitation ont fait au cours des deux dernières semaines, avec le temps passé sur chaque élément : [collez de vraies données].

Classez chaque élément en labeur, travail d'ingénierie ou frais généraux, selon ces définitions. Labeur : manuel, répétitif, automatisable, tactique, sans valeur durable et croissant linéairement avec le service. Travail d'ingénierie : nouveau, exige du jugement, produit une amélioration permanente. Frais généraux : travail administratif non lié à l'exploitation d'un service. Donnez une raison d'une phrase tirée de mon texte pour chacun. Calculez la part de temps de chaque classe à partir de mes seuls chiffres et listez les trois plus gros éléments de labeur. Marquez les éléments que vous n'avez pas pu classer. N'inventez pas de durées. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une politique de budget d'erreur.**

```text
Rédigez une politique de budget d'erreur d'une page pour [service].

Objectif et période : [par exemple « 99,9 % des demandes d'achat aboutissent, par mois »].
Rythme de mise en production et qui décide : [décrivez].
Préoccupations des clients et du produit : [listez].

Écrivez des sections : comment le budget est calculé et affiché, ce qui se passe à trois stades de consommation (laissez les seuils comme [à convenir]), qui peut passer outre et comment les dérogations sont consignées, comment la politique est revue et ce que nous faisons après l'épuisement du budget. N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : choisir un élément de labeur à automatiser en premier.**

```text
Voici nos principaux éléments de labeur avec leur fréquence, le temps par occurrence, le risque si l'automatisation échoue et si la cause pourrait être supprimée par la conception : [collez].

Classez-les par temps total économisé par mois (calculé à partir de mes seuls chiffres). Pour les trois premiers, dites si je devrais supprimer le besoin par la conception ou l'automatiser, et quelles garanties l'automatisation exige (tests, limites, journaux). N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une entrée de manuel d'intervention.**

```text
Rédigez une entrée de manuel d'intervention pour cette défaillance récurrente : [décrivez symptôme et impact].

Ce que je sais des causes et des correctifs : [collez].
À qui escalader : [rôle, ou « inconnu »].

Fournissez une courte entrée : comment confirmer la défaillance, les premières vérifications, le correctif habituel, comment confirmer le rétablissement, quand escalader et quoi consigner. Marquez par [À VÉRIFIER] toute étape que vous avez déduite. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md) : à utiliser pour concevoir un tour équitable avec des limites d'événements par quart.
- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour écrire les manuels d'intervention qui accélèrent la réparation.
- [postmortem](../../../../skills/postmortem/SKILL.md) : à utiliser pour mener des revues sans blâme et suivre les actions.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md) : à utiliser pour tester que les conceptions de fiabilité fonctionnent en causant des défaillances de façon sûre.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour planifier la capacité comme une tâche d'ingénierie liée à la demande.

## Sources principales

- **Introduction** (*Site Reliability Engineering*, Google, sre.google) : la définition de la SRE, le plafond de 50 pour cent, les principes et la scission développement/exploitation qu'elle vise à éviter.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google) : la définition du labeur et les raisons de le plafonner.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google) : l'économie de la fiabilité et le budget d'erreur.
- **Site reliability engineering** (Wikipedia) : un résumé plus large de la discipline, des modèles de déploiement, de l'enquête d'adoption et des lectures complémentaires.

## Références

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
