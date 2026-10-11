# Développement logiciel agile

**Le développement logiciel agile est une famille de méthodes de livraison continue de logiciels qui livrent par petites étapes et apprennent des retours, et les pratiques qu'il a produites, comme les tests automatisés et l'intégration continue, sont le fondement pratique pour exploiter en sécurité des services qui évoluent.**

## Pourquoi c'est important

La plupart des équipes qui exploitent un service informatique le construisent et le modifient aussi. La manière dont le logiciel est construit détermine la fréquence des changements du service, le risque de chaque changement et la confiance que les personnes d'astreinte peuvent accorder à ce qu'on leur remet. Une équipe qui construit par gros lots et transmet rarement donnera à l'exploitation quelques grosses mises en production effrayantes. Une équipe qui construit par petites étapes, avec des tests et des retours rapides, peut lui en donner beaucoup de petites et comprises.

Le développement logiciel agile est l'ensemble d'idées le plus connu pour la seconde manière de travailler. Il est aussi très mal compris. Certains emploient « agile » pour dire « pas de plans et pas de documents », d'autres l'utilisent pour tout processus doté d'une réunion quotidienne. Ce sujet vous donne une image plus claire : d'où viennent les méthodes agiles, ce qu'elles ont en commun, ce qu'elles ne prétendent pas, et quelles pratiques comptent le plus pour une équipe qui doit maintenir un service en marche.

Les preuves demandent une lecture prudente. L'[article de Wikipédia sur le développement logiciel agile](https://en.wikipedia.org/wiki/Agile_software_development) dit que les témoignages anecdotiques en faveur de l'agile sont solides, mais que les preuves empiriques sont « limitées et peu concluantes », et renvoie à des enquêtes, comme l'enquête annuelle State of Agile, qui rapportent des bénéfices mais reposent sur des opinions déclarées. Considérez les méthodes agiles comme des approches prometteuses à tester dans votre propre contexte.

## Concepts clés

### Ce que couvre le terme

« Développement logiciel agile » est un terme générique. L'article de Wikipédia le décrit comme couvrant des approches nées des valeurs et principes convenus en 2001 par 17 praticiens (voir Sujet 1.1 — Manifeste agile et Sujet 1.2 — Principes agiles). Un « Agile » avec majuscule désigne souvent les pratiques issues de cet état d'esprit, et un « agile » en minuscule la qualité de pouvoir s'adapter. La distinction n'est pas stricte, et vous entendrez les deux.

Les méthodes agiles visent la livraison continue de logiciels. Elles reposent sur une collaboration continue entre parties prenantes et développeurs, bâtissent les projets autour d'individus motivés et poursuivent l'amélioration continue par le retour d'information, avec un souci de qualité. Elles diffèrent par ce qu'elles mettent en avant. Certaines, comme la programmation extrême, portent sur les pratiques d'ingénierie, et d'autres, comme Scrum et Kanban, sur la façon de gérer le travail.

### Un bref historique

L'article de Wikipédia fait remonter le développement itératif et incrémental à 1957, la gestion de projet évolutive et le développement logiciel adaptatif apparaissant au début des années 1970. Dans les années 1990, un groupe de méthodes légères est apparu en réaction aux processus lourds, dirigés par un plan, souvent appelés le [modèle en cascade](https://en.wikipedia.org/wiki/Waterfall_model). L'article cite le développement rapide d'applications (1991), le processus unifié et la méthode de développement de systèmes dynamiques, DSDM (1994), Scrum (1995), Crystal Clear et la programmation extrême (1996) et le développement piloté par les fonctionnalités (1997).

En février 2001, dix-sept praticiens se sont réunis à Snowbird, dans l'Utah, et ont rédigé le Manifeste. Des textes ultérieurs s'y sont appuyés : la PM Declaration of Interdependence en 2005, le Software Craftsmanship Manifesto en 2009 et le *Guide to Agile Practices* de l'Agile Alliance en 2011, rebaptisé *Agile Glossary* en 2016.

### Approches adaptatives et prédictives

L'article décrit un continuum entre approches prédictives et adaptatives. Une méthode prédictive planifie la majeure partie du travail en détail avant de commencer, et fonctionne bien quand les exigences sont stables et bien comprises. Une méthode adaptative s'attend au changement et planifie sur de courts horizons. Boehm et Turner, cités dans l'article, soutiennent que chaque camp a son « terrain de prédilection », c'est-à-dire qu'aucun n'a raison partout.

Cela compte pour une équipe de service parce que son travail est mixte. Remplacer le réseau d'un centre de données relève davantage du travail prédictif. Améliorer une application destinée aux clients relève davantage du travail adaptatif. Choisissez l'approche par type de travail, pas une fois pour toute l'organisation.

### Méthodes courantes

L'article cite de nombreuses méthodes. Celles que vous êtes le plus susceptible de rencontrer :

| Méthode | Accent principal | Traité dans |
|---|---|---|
| Scrum | Rôles définis, événements réguliers et cadence fixe | Sujet 1.4 — Prévision de livraison et indicateurs de planification |
| Kanban | Visualiser le travail et limiter ce qui est en cours | Sujet 1.5 — Kanban |
| Programmation extrême (XP) | Pratiques d'ingénierie comme la programmation en binôme et le développement piloté par les tests | Sujet 1.6 — Programmation extrême |
| Développement logiciel lean | Appliquer au logiciel des idées lean, comme éliminer le gaspillage | Sujet 1.7 — Développement logiciel lean |
| Développement piloté par les fonctionnalités, DSDM, Crystal et développement logiciel adaptatif | Autres méthodes légères de livraison continue avec leurs propres rôles et pratiques | Ce sujet |
| Scrumban | Un mélange d'événements Scrum et de flux Kanban | Sujet 1.4 — Prévision de livraison et indicateurs de planification et Sujet 1.5 — Kanban |

Aucune méthode n'est « la » méthode agile. L'article cite l'idée de Ken Schwaber selon laquelle les équipes s'enlisent à chercher une méthodologie parfaite alors que c'est l'entreprise elle-même qui doit changer, et la suggestion de Bas Vodde que Scrum fournit des bases que les équipes prolongent localement.

### Pratiques courantes

L'article liste des pratiques que beaucoup d'équipes agiles utilisent. Une sélection, avec leur utilité :

- **Récits utilisateur et carnets :** décrire le travail du point de vue de l'utilisateur et tenir une liste priorisée de ce qu'il faut faire ensuite.
- **Réunion quotidienne debout :** une courte réunion quotidienne, souvent d'une quinzaine de minutes, pour partager l'avancement et les blocages.
- **Développement piloté par les tests (TDD) et par les tests d'acceptation (ATDD) :** écrire les tests d'abord, de sorte que « terminé » soit défini avant le début du travail.
- **Intégration continue (CI) :** fusionner fréquemment les changements et construire et tester automatiquement. L'article note que Grady Booch a proposé le terme pour la première fois en 1991.
- **Programmation en binôme et refactorisation :** deux personnes partagent le travail pour améliorer la qualité et diffuser la connaissance, et le code est amélioré en continu sans changer ce qu'il fait.
- **Rétrospectives :** l'équipe réfléchit à intervalles réguliers à la manière de s'améliorer.

Pour une équipe de service, trois d'entre elles méritent une attention particulière. Les tests automatisés et l'intégration continue rendent le changement fréquent sûr. Les rétrospectives offrent un lieu permanent pour améliorer la façon de travailler. Les carnets fournissent une seule liste ordonnée où les améliorations de service rivalisent loyalement avec les nouvelles fonctionnalités.

### Expérience, mesure et écueils

L'article rapporte que des enquêtes, dont une enquête de Shine Technologies en 2002–2003 et l'enquête State of Agile depuis 2006, constatent des gains perçus en qualité, productivité et satisfaction du métier. Il note aussi qu'une enquête de VersionOne a trouvé que l'insuffisance de formation était la cause la plus citée des échecs de mise en œuvre, et cite des écueils comme confier le rôle de responsable de produit à un membre de l'équipe de développement et le manque de soutien du sponsor.

Mesurer le degré d'« agilité » d'une équipe a produit plusieurs auto-évaluations, comme le test Nokia, et un indice qui note les projets selon la durée, le risque, la nouveauté, l'effort et l'interaction. Soyez prudent avec tout score de ce genre. Un nombre est un point de départ de conversation, et une équipe qui optimise le score peut perdre le sens.

### Travail à grande échelle, distribué et réglementé

L'article dit qu'au-delà d'une vingtaine de développeurs, ou entre plusieurs sites, des difficultés apparaissent, et que plusieurs cadres ont été proposés, même si les avis divergent sur leur efficacité (voir Sujet 1.8 — Agilité à grande échelle). Il rapporte aussi que les domaines réglementés comme les dispositifs médicaux, la pharmacie, la finance, le nucléaire, l'automobile et l'avionique ont d'abord été jugés inadaptés à l'agile, et qu'il existe maintenant des adaptations. Les préoccupations qu'il liste sont l'assurance qualité, la sûreté et la sécurité, la traçabilité, et la vérification et la validation.

Ce sont exactement les préoccupations de la gestion des services. Quand un régulateur ou un auditeur demande des preuves, une équipe agile peut les fournir à partir des outils qu'elle utilise déjà, comme l'historique du contrôle de version, les résultats de tests automatisés et les enregistrements de changements (voir Sujet 5.7 — Gouvernance, risques et conformité).

### Une critique à connaître

Steven Rakitin, dans une lettre à *IEEE Computer* en 2001, qualifiait l'agile de « une nouvelle tentative de saper la discipline du génie logiciel » et lisait la préférence du Manifeste pour un logiciel opérationnel comme un permis de se passer de documentation. Les partisans répondent que la documentation doit être « à peine assez bonne », selon l'expression de Scott Ambler. Les équipes de service connaissent les deux côtés : trop peu de documentation ralentit les transferts et la réponse aux incidents, et trop de documentation devient périmée.

## Bonnes pratiques

1. **Adaptez la méthode au type de travail.** Utilisez la livraison continue et des retours fréquents là où les exigences changent, et davantage de planification en amont là où elles sont fixes et où le coût d'une erreur est élevé. Décidez-le pour chaque type de travail et revoyez-le quand les circonstances changent.
2. **Commencez par le plus petit lot utile.** Découpez le travail en morceaux qui peuvent être construits, testés et livrés en quelques jours. Les petits lots donnent des retours plus rapides et rendent un changement raté plus facile à comprendre et à annuler.
3. **Automatisez les tests avant d'accélérer les mises en production.** Des mises en production fréquentes sans tests automatisés reportent le risque sur vos utilisateurs. Construisez une suite qui s'exécute à chaque changement et échoue bruyamment, et traitez une construction cassée comme la première priorité de l'équipe.
4. **Intégrez en continu.** Fusionnez souvent le travail dans une branche partagée et construisez-la automatiquement. Les branches de longue durée cachent les conflits jusqu'à ce qu'ils soient coûteux à corriger.
5. **Faites inclure l'exploitation dans « terminé ».** Un récit n'est pas fini tant qu'il ne peut pas être surveillé, supporté et annulé. Ajoutez ces vérifications à votre définition de terminé et demandez au personnel d'exploitation de l'aider à l'écrire (voir Sujet 3.5 — Gestion des mises en production et des déploiements).
6. **Gardez un carnet ordonné par équipe.** Mettez fonctionnalités, défauts et améliorations de service dans la même liste priorisée pour qu'ils rivalisent ouvertement. Les files parallèles cachées sont l'endroit où le travail d'exploitation meurt discrètement de faim.
7. **Écrivez juste assez de documentation.** Gardez les documents que les gens utilisent, comme les guides d'exploitation, les descriptions de service et les notes d'architecture, et donnez à chacun un responsable et une date de revue. Supprimez le reste. Cela répond à la préoccupation de Rakitin sans retomber dans les documents lourds.
8. **Tenez des rétrospectives régulières et agissez.** Choisissez un changement dans chacune, avec un responsable et une date. Une rétrospective qui ne produit que de la discussion devient un rituel.
9. **Investissez dans la formation et le parrainage.** Les enquêtes citées dans l'article de Wikipédia pointent la formation et le soutien du sponsor comme faiblesses courantes. Prévoyez les deux avant de demander aux équipes de changer leur façon de travailler.
10. **Adaptez, et dites pourquoi.** Adaptez une méthode à votre contexte et notez ce que vous avez changé et pourquoi. Changer une pratique parce qu'elle gêne, sans raison, est la manière dont les équipes s'éloignent des bénéfices.
11. **Mesurez les résultats, pas les scores d'agilité.** Suivez des choses comme le délai d'un changement, la fréquence à laquelle les mises en production causent des incidents et la rapidité de rétablissement du service (voir Sujet 5.6 — Indicateurs et mesure). N'utilisez les auto-évaluations que comme prétextes à discussion.
12. **Ramenez les données de service vers le développement.** Alimentez le carnet avec les incidents récurrents et les enregistrements de problèmes, pour que le développement apprenne de l'exploitation (voir Sujet 3.3 — Gestion des problèmes).

## Questions à discuter avec votre équipe

**Quelles pratiques agiles utilisons-nous réellement, et lesquelles ne connaissons-nous que de nom ?**

Listez les pratiques que vous croyez suivre : réunions quotidiennes, rétrospectives, carnets, tests automatisés. Pour chacune, demandez la dernière fois qu'elle a changé une décision. Les pratiques que personne ne peut relier à une décision sont des rituels. L'animateur doit demander des preuves sans sous-entendre de blâme. Poursuivez en choisissant un rituel à améliorer ou à abandonner.

**Pour quel travail une approche plus prédictive serait-elle plus sage, et pourquoi ?**

L'article de Wikipédia rapporte que chaque approche a son « terrain de prédilection ». Demandez aux gens de trier le travail récent en stable et en évolution rapide. Le travail stable typique inclut les renouvellements de matériel, les déménagements de centres de données et les grands renouvellements de contrats. Demandez ce qu'un plan plus soigné aurait apporté dans chaque cas. Le but est d'éviter d'appliquer un seul style à tout.

**À quelle vitesse découvrons-nous que ce que nous avons construit ne fonctionne pas, et qu'est-ce qui accélérerait cela ?**

Suivez le chemin entre l'écriture d'un changement et la découverte de son comportement en usage. Comptez les étapes et les attentes : revue, construction, test, mise en production, surveillance. Demandez à quelle étape l'équipe fait le moins confiance. Souvent, la réponse est un test manuel ou une étape de mise en production qui dépend d'une seule personne. Choisissez une étape à raccourcir et convenez de la manière dont vous saurez qu'elle s'est raccourcie.

**Que devraient voir de notre part un auditeur ou un régulateur, et notre façon de travailler le produit-elle déjà ?**

Demandez à quelqu'un qui a une expérience de l'audit ou de la sécurité de se joindre à vous. Rassemblez les preuves que vos outils produisent déjà : historique des changements, résultats de tests, approbations. Listez ensuite ce qui manque. Les équipes sont souvent surprises de constater que des changements petits et fréquents avec des vérifications automatisées produisent de meilleures preuves que des gros changements rares. Consignez les lacunes pour la discussion de gouvernance du Sujet 5.7 — Gouvernance, risques et conformité.

**Où notre documentation aide-t-elle les gens, et où n'existe-t-elle que parce qu'on nous a dit de l'écrire ?**

Demandez aux gens quels documents ils ont utilisés le mois dernier. Un guide d'exploitation utilisé et tenu à jour compte. Un document de conception que personne n'a lu depuis le jour de son approbation, non. Faites décider à l'équipe lesquels garder, lesquels fusionner et lesquels supprimer, et attribuez des responsables. C'est une manière sûre d'appliquer l'idée du « à peine assez bon ».

**Qu'avons-nous changé la dernière fois dans notre façon de travailler à cause de ce que nous avons appris, et quel est le prochain changement ?**

Demandez le changement concret le plus récent issu d'une rétrospective et s'il a fonctionné. Si personne ne peut en nommer un, la rétrospective ne remplit pas son rôle. Cherchez pourquoi : les actions sont peut-être trop grosses, sans responsable ou en concurrence avec le travail de livraison. Terminez en choisissant un petit changement à faire dans les deux prochaines semaines.

## En pratique : un exemple d'ITIL agile

Un détaillant en ligne de taille moyenne a une équipe de développement de dix personnes qui construit son système de gestion des commandes, et une équipe d'exploitation distincte de six personnes qui l'exploite. L'équipe de développement a choisi de travailler en sprints et de livrer toutes les deux semaines. L'équipe d'exploitation reçoit chaque version avec une courte note et une demande de la déployer dans une fenêtre le jeudi soir. Le personnel d'exploitation se plaint de ne savoir ce qui a changé que lorsque quelque chose casse, et les développeurs se plaignent qu'une fenêtre le jeudi arrive trop tard pour corriger quoi que ce soit trouvé en test.

Lors d'une rétrospective commune, les deux équipes cartographient pas à pas une mise en production récente. Elles constatent que les seuls tests automatisés couvrent environ la moitié du flux de commande, que personne côté exploitation n'avait vu la version avant la note du jeudi et que l'étape de retour arrière n'a jamais été essayée. Elles conviennent de trois changements. L'équipe de développement ajoutera une vérification de surveillance et un test de retour arrière à sa définition de terminé. Un ingénieur d'exploitation participera à chaque revue de sprint. Les versions qui passent toute la suite automatisée seront déployées dès qu'elles seront prêtes, pas seulement le jeudi.

Pendant les deux mois suivants, deux des quatre versions suivantes sont déployées en milieu de semaine. L'ingénieur d'exploitation repère un message de journal manquant lors d'une revue de sprint, ce qui épargne une heure de recherche lors d'un incident ultérieur. Tout ne s'améliore pas : la suite automatisée ignore encore le parcours de remboursement, et un défaut de remboursement atteint des clients. Les équipes ajoutent des tests de remboursement au sprint suivant et conviennent de revoir chaque mois les lacunes de couverture. L'ingénieur d'exploitation dit aussi que participer à la revue de sprint prend un temps que le tableau d'astreinte ne permet pas, si bien que le responsable de l'exploitation déplace une partie de ses autres tâches.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison possèdent les pratiques qui rendent le changement sûr : tests, intégration continue, petits lots et définition claire de terminé. Traitez l'exploitation comme un client de votre travail. Demandez ce dont elle a besoin pour exploiter une version et intégrez-le au carnet comme vous le feriez pour une fonctionnalité.

### Équipes de service et d'exploitation

Le personnel d'exploitation peut appliquer des pratiques agiles à son propre travail : un carnet visible d'améliorations, des cycles de retour courts sur les incidents et des rétrospectives régulières. Demandez à participer tôt aux sessions de planification et de revue. Apportez la connaissance de la façon dont les services tombent en panne, qui est l'apport le plus utile qu'une équipe de livraison puisse recevoir.

### Direction et gouvernance

Les dirigeants décident si les équipes reçoivent le temps et la formation pour travailler ainsi. Les enquêtes citées dans l'article de Wikipédia pointent la formation et le parrainage comme faiblesses courantes. Demandez quels contrôles vous sont nécessaires et comment une équipe peut y satisfaire avec ses propres outils, au lieu d'ajouter un processus parallèle.

### Clients et utilisateurs

Les clients voient le bénéfice des méthodes agiles comme une amélioration visible à un rythme régulier, pas comme une cérémonie. Attendez-vous à revoir régulièrement des changements opérationnels et à ce qu'on vous demande ce qui compte le plus. En retour, l'équipe a besoin de réponses rapides et de votre acceptation de petites versions imparfaites qui s'améliorent avec le temps.

## Modes d'échec courants

- **Adopter les rituels sans les pratiques d'ingénierie.** Des réunions quotidiennes et des tableaux apparaissent, mais sans tests automatisés, donc les mises en production restent risquées. À la place, investissez dans les tests, l'intégration et l'automatisation des mises en production en même temps que les cérémonies.
- **Appeler « agile » un processus de changement sans modifier les droits de décision.** Les équipes attendent encore des approbations lointaines. À la place, rapprochez les décisions des personnes qui ont la connaissance et fixez des limites claires.
- **Utiliser l'agile comme excuse pour ne pas documenter.** Les transferts et les incidents en souffrent. À la place, gardez les courts documents que les gens utilisent et donnez à chacun un responsable.
- **Sauter la formation.** Le constat de VersionOne dans l'article de Wikipédia désigne l'insuffisance de formation comme la cause la plus citée des échecs de mise en œuvre. À la place, formez équipes et dirigeants avant et pendant le changement.
- **Mettre un membre de l'équipe de développement dans le rôle de responsable de produit.** L'article le liste comme un écueil. À la place, choisissez quelqu'un qui représente le métier et a le temps de décider.
- **Passer à l'échelle en copiant un cadre.** Un grand cadre installé sans le comprendre ajoute du processus et ralentit les équipes. À la place, partez du problème que vous avez et n'adoptez que ce qui aide (voir Sujet 1.8 — Agilité à grande échelle).
- **Courir après un score d'agilité.** Les équipes optimisent la mesure. À la place, suivez des résultats comme le délai, les échecs de mise en production et le temps de rétablissement du service.
- **Garder le développement et l'exploitation séparés.** L'équipe de livraison livre et l'équipe d'exploitation hérite. À la place, rassemblez-les dans une planification, des revues et un apprentissage des incidents communs (voir Sujet 5.2 — DevOps).

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Livraison continue de logiciels | Le travail est livré en grosses versions | Certaines équipes livrent en cycles courts | Les équipes partagent une cadence de livraison commune et une définition de terminé | Le délai et les résultats des mises en production sont mesurés et revus | Les rythmes de livraison sont coordonnés entre équipes et fournisseurs |
| Pratiques d'ingénierie | Tests et constructions sont surtout manuels | Certaines équipes ont des tests et des constructions automatisés | Une chaîne partagée exécute les tests à chaque changement | La couverture des tests et les taux d'échec sont suivis et les lacunes corrigées | Chaînes et pratiques sont améliorées entre équipes à partir de preuves partagées |
| Carnet et priorisation | Les demandes arrivent par courriel et au coup par coup | Les équipes tiennent leur propre carnet | Chaque équipe a un carnet ordonné qui inclut le travail de service | Le flux et l'ancienneté du carnet sont revus avec les parties prenantes | Les priorités sont alignées entre équipes, clients et fournisseurs |
| Apprentissage et adaptation | Les revues suivent seulement les défaillances majeures | Certaines équipes tiennent des rétrospectives | Toutes les équipes tiennent des rétrospectives régulières et consignent des actions | Les actions sont suivies jusqu'au bout et leurs effets vérifiés | Les leçons circulent entre équipes et dans la politique sans pilotage central |

## Liste de contrôle

- [ ] L'équipe sait dire quelle méthode ou quelles pratiques agiles elle utilise et pourquoi elle les a choisies.
- [ ] Le travail est trié en types prédictif et adaptatif, avec une approche annoncée pour chacun.
- [ ] Des tests automatisés s'exécutent à chaque changement, et une construction en échec arrête la chaîne.
- [ ] Notre définition de terminé inclut la surveillance, les notes de support et un retour arrière testé.
- [ ] Chaque équipe a un carnet ordonné qui inclut les améliorations de service et les défauts.
- [ ] Les guides d'exploitation et les descriptions de service ont des responsables et des dates de revue.
- [ ] Les rétrospectives ont lieu à un rythme régulier et chacune se termine par une action avec responsable.
- [ ] Équipes et dirigeants ont reçu une formation à la manière de travailler que nous leur demandons.
- [ ] Nous savons de quelles preuves les auditeurs ont besoin et comment nos outils les fournissent.
- [ ] Les indicateurs de résultat, comme le délai et le temps de rétablissement du service, sont revus régulièrement.

## Prompts d'IA

**Objectif : rapprocher vos pratiques actuelles des pratiques agiles courantes et trouver les lacunes.**

```text
Vous aidez une équipe à comprendre quelles pratiques de développement logiciel agile elle utilise réellement.

Pratiques à considérer : récits utilisateur et carnets, réunions quotidiennes, rétrospectives, développement piloté par les tests, intégration continue, programmation en binôme, refactorisation, définition de terminé, revues régulières avec les clients.

Notre équipe : [taille de l'équipe et ce que vous construisez et exploitez].
Ce que nous faisons aujourd'hui, dans nos propres mots : [collez une courte description d'une semaine type, y compris réunions, outils et chemin d'un changement jusqu'en production].

Pour chaque pratique, dites si la description la montre en usage, partiellement en usage ou non mentionnée, et citez les mots sur lesquels vous vous fondez. Ne supposez pas qu'une pratique existe si elle n'est pas décrite. Listez ensuite trois questions que je devrais poser à mon équipe pour combler les lacunes. Posez-moi d'abord des questions de clarification si la description est trop mince, et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une définition de terminé qui inclut l'exploitation.**

```text
Aidez-nous à écrire une définition de terminé pour [type de travail, par ex. « les changements back-end de notre service de commandes »] qui couvre à la fois la construction et l'exploitation du service.

Notre définition de terminé actuelle est : [collez-la, ou écrivez « aucune »].
Ce que le personnel d'exploitation nous dit lui falloir avant d'accepter une version : [collez une liste, ou écrivez « inconnu »].
Règles que nous devons respecter : [listez les règles d'audit, de sécurité ou de sûreté connues, ou écrivez « aucune connue »].

Produisez une liste de contrôle de 8 à 12 éléments, regroupés en qualité de construction, préparation à la mise en production et préparation à l'exploitation. Marquez chaque élément que vous avez ajouté par hypothèse. N'affirmez pas qu'une norme exige un élément à moins que j'en aie collé le texte. Posez-moi d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer des preuves pour un auditeur à partir de vos outils agiles.**

```text
Un auditeur a demandé : [collez la question, par ex. « montrez-moi comment les changements sont revus et approuvés »].

Nos outils et enregistrements : [listez vos outils de contrôle de version, de construction, de test, de tickets et de mise en production, et ce que chacun enregistre].
Notre pratique : [décrivez comment un changement va de l'idée à la production].

Listez les preuves que chaque outil produit déjà en rapport avec la question, les lacunes restantes et trois moyens légers de combler chacune. N'affirmez pas qu'une loi ou une norme exige quelque chose à moins que j'en aie collé le texte. Séparez les faits des hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une rétrospective sur la façon dont votre équipe adopte les pratiques agiles.**

```text
Planifiez une rétrospective de 60 minutes pour une équipe de [nombre] personnes qui [adoptent / améliorent] des pratiques agiles. Le principal problème actuel est [problème].

Incluez : un ordre du jour minuté, une manière de rassembler d'abord les faits, une courte discussion de deux ou trois de ces questions : [collez des questions de la section « Questions à discuter avec votre équipe »] et une étape finale qui consigne exactement une action avec un responsable et une date.

Restez libre de tout outil précis. S'il manque quelque chose, posez-moi d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [scrum](../../../../skills/scrum/SKILL.md) : à utiliser pour mettre en place ou revoir les rôles, événements et artefacts d'une équipe Scrum.
- [kanban](../../../../skills/kanban/SKILL.md) : à utiliser pour concevoir un tableau visuel avec des limites de travail en cours pour une équipe de service ou d'exploitation.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md) : à utiliser pour revoir ou adopter des pratiques d'ingénierie comme le développement piloté par les tests et l'intégration continue.
- [user-story](../../../../skills/user-story/SKILL.md) : à utiliser pour écrire des récits utilisateur avec des critères d'acceptation qui incluent les besoins d'exploitation.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour tenir une rétrospective qui se termine par un changement avec responsable.

## Sources principales

- **Manifesto for Agile Software Development** et **Principles behind the Agile Manifesto** (agilemanifesto.org) : l'énoncé primaire des valeurs et des principes.
- **Agile software development** (Wikipedia) : une large vue d'ensemble de l'histoire, des méthodes, des pratiques, de l'adoption et des critiques, avec de nombreuses sources citées.
- **Agile Glossary** (Agile Alliance) : définitions des pratiques et termes agiles, tenues par la communauté née du Manifeste.

## Références

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
