# Amélioration continue

**L'amélioration continue est l'habitude de rendre les services et les façons de travailler un peu meilleurs, encore et encore, et elle ne devient réelle que lorsque le travail d'amélioration est visible, pris en charge, planifié et vérifié, comme tout autre travail.**

## Pourquoi c'est important

Chaque pratique de ce guide aboutit au même endroit : apprendre de ce qui s'est passé et changer quelque chose. Les incidents mènent aux problèmes, les problèmes mènent aux corrections, les rétrospectives mènent à des expériences et les revues de niveaux de service mènent à de nouveaux objectifs. L'amélioration continue est la pratique qui les relie et les fait avancer. Sans elle, chaque pratique produit des enseignements sur lesquels personne n'agit.

Dans beaucoup d'organisations, l'amélioration est la première chose qu'on écrase. La pression de la livraison remplit chaque journée, et les idées d'amélioration s'empilent dans un document que personne n'ouvre. Les équipes agiles ont une longueur d'avance, car les rétrospectives sont intégrées, mais les rétrospectives qui ne produisent aucun changement sont courantes. Le test d'une pratique d'amélioration continue est simple : pouvez-vous citer trois choses qui vont mieux ce trimestre grâce à elle ?

L'[article de Wikipédia sur le processus d'amélioration continue](https://en.wikipedia.org/wiki/Continual_improvement_process) le décrit comme un effort permanent pour améliorer produits, services ou processus, qu'il soit incrémental ou de rupture, avec le retour d'information, l'efficience et l'évolution par petites étapes comme caractéristiques clés. L'[article sur la PDCA](https://en.wikipedia.org/wiki/PDCA) décrit le cycle planifier–faire–vérifier–agir derrière de nombreuses méthodes d'amélioration. Les deux sont généraux. ITIL traite l'amélioration continue comme un composant du système de valeur des services (voir Sujet 2.3 — Le système de valeur des services ITIL) et comme une pratique, mais le texte du propriétaire du cadre n'était pas disponible pour ce guide ; ce sujet ne décrit donc pas en détail le modèle d'amélioration d'ITIL.

## Concepts clés

### Ce que c'est

Selon Wikipédia, un processus d'amélioration continue (CIP), aussi appelé amélioration continue, est un effort permanent pour améliorer produits, services ou processus. L'article le décrit comme un méta-processus pour des systèmes de management comme la qualité, la gestion de projet et de programme, avec trois caractéristiques clés : le retour d'information, l'efficience et l'évolution par petites étapes incrémentales. Il en attribue la paternité à W. Edwards Deming, qui voyait le CIP comme partie d'un système qui évalue le processus et le retour des clients au regard des objectifs de l'organisation.

### Continual ou continuous

L'article note un point de terminologie : à la fin des années 1990, les concepteurs de l'ISO 9001:2000 ont remplacé « continuous » par « continual », apparemment parce que le comité préférait une amélioration par paliers et pensait que « continuous » pouvait suggérer un changement à la minute. ITIL emploie « continual ». En pratique, les termes sont employés indifféremment. Ce qui compte est une amélioration régulière et répétée.

### Kaizen

Le **kaizen** est un terme japonais qui signifie à peu près « changer pour le mieux ». Selon l'article, le livre de Masaaki Imai de 1986 *Kaizen : The Key to Japan's Competitive Success* l'a popularisé, et ses caractéristiques incluent de nombreux petits changements, des idées venant des travailleurs en place, un faible coût et l'appropriation par les employés. Cela convient aux équipes agiles, où les personnes qui font le travail sont les mieux placées pour voir ce qu'il faut améliorer (voir Sujet 1.7 — Développement logiciel lean).

### Le cycle PDCA

La PDCA (planifier, faire, vérifier, agir) est, selon les termes de Wikipédia, une méthode itérative pour maîtriser et améliorer continuellement processus et produits. On l'appelle aussi cycle de Shewhart, d'après Walter Shewhart aux Bell Telephone Laboratories dans les années 1920 ; W. Edwards Deming l'a modifié dans les années 1940 et l'a appliqué à la gestion au Japon dans les années 1950. Les étapes :

| Étape | Ce que vous faites |
|---|---|
| **Planifier** | Établir les objectifs et les processus nécessaires pour obtenir les résultats voulus |
| **Faire** | Exécuter le plan, de préférence à petite échelle |
| **Vérifier** | Comparer les données recueillies avec les résultats attendus et chercher des tendances |
| **Agir** | Rechercher les causes racines des problèmes, ajuster le processus et lancer le cycle suivant |

L'article relie la PDCA à la méthode scientifique et à son schéma hypothèse, expérience, évaluation. Une variante, la PDSA, remplace « vérifier » par « étudier », ce que Deming préférait. L'article dit que l'itération est centrale : chaque cycle affine la connaissance. Les équipes qui appellent un changement une « expérience » avec une attente énoncée et une vérification utilisent ce schéma.

### D'où vient l'amélioration

Les idées d'amélioration viennent de nombreuses sources dans une organisation de services :

| Source | Exemple | Où c'est traité |
|---|---|---|
| Incidents et postmortems | Un défaut montre une alerte manquante | Sujet 3.2 — Gestion des incidents |
| Enquête sur un problème | Des pannes répétées montrent un défaut de conception | Sujet 3.3 — Gestion des problèmes |
| Thèmes du centre de services | La même question revient chaque semaine | Sujet 3.1 — Centre de services |
| Rétrospectives | L'équipe trouve son transfert lent | Sujet 1.4 — Prévision de livraison et indicateurs de planification |
| Données de flux | Une file s'allonge à une étape | Sujet 1.5 — Kanban |
| Retours des clients | Les utilisateurs trouvent un formulaire déroutant | Sujet 3.6 — Gestion des demandes de service |
| Revues de niveaux de service | Un objectif est manqué à répétition | Sujet 3.7 — Gestion des niveaux de service |
| Audits et revues de risques | Un contrôle se révèle faible | Sujet 5.7 — Gouvernance, risques et conformité |

La pratique de l'amélioration continue rassemble ces sources en une seule liste visible, choisit quoi faire et vérifie les résultats.

### L'amélioration comme travail

La discipline centrale est de traiter l'amélioration comme du travail : des éléments dans un carnet avec des responsables, des bénéfices attendus et des dates. Sans cela, l'amélioration dépend de l'enthousiasme et du temps libre. Cela signifie aussi de faire ouvertement l'arbitrage avec le travail de livraison, de sorte que la capacité soit protégée délibérément. Un arrangement courant consiste à réserver une part de chaque cycle à l'amélioration, ou à mener de courts cycles d'amélioration parallèlement à la livraison.

### Mesurer l'amélioration

Pour savoir que quelque chose s'est amélioré, il faut un avant et un après. Choisissez une mesure liée au changement, comme le temps de rétablissement du service, les incidents répétés ou le temps d'attente, et regardez-la avant et après. Évitez les mesures faciles à faire bouger sans rien améliorer. Utilisez-en plusieurs et discutez de ce que signifient les chiffres (voir Sujet 5.6 — Indicateurs et mesure). Les articles consultés ne donnent aucune preuve de l'efficacité des programmes d'amélioration ; les résultats propres des équipes sont donc la preuve.

### Méthodes

De nombreuses méthodes soutiennent l'amélioration : l'analyse des causes racines, Six Sigma et DMAIC pour la réduction des défauts fondée sur les données, la cartographie du flux de valeur et les événements kaizen. L'article de Wikipédia sur l'amélioration continue ne mentionne ni Six Sigma, ni DMAIC, ni le modèle d'amélioration d'ITIL ; ce guide ne les lui attribue donc pas. Choisissez les méthodes selon la taille du problème : une action de rétrospective pour une petite friction, un projet fondé sur les données pour un défaut persistant.

### Limites

L'article ne consigne aucune critique de l'amélioration continue, et certaines de ses sources sont faibles ou datées. Les risques pratiques sont bien connus : la fatigue d'amélioration quand trop de changements arrivent, le théâtre d'amélioration où les listes grossissent sans que rien ne change, et l'optimisation locale où une équipe améliore sa partie et aggrave l'ensemble. Prémunissez-vous avec une liste courte et visible et une vérification régulière des résultats.

## Bonnes pratiques

1. **Gardez une liste d'améliorations visible.** Rassemblez en un endroit les idées issues des incidents, des rétrospectives, des retours et des revues. Donnez à chaque élément un responsable, le problème qu'il traite et le bénéfice attendu.
2. **Traitez les éléments d'amélioration comme du travail.** Mettez-les dans le carnet à côté des éléments de livraison et décidez en planification de la capacité qu'ils obtiennent. Protégez cette part quand la pression monte.
3. **Choisissez peu d'éléments et finissez-les.** Travaillez sur les un à trois éléments les plus précieux à la fois. Une longue liste d'éléments commencés est un signe de théâtre d'amélioration.
4. **Utilisez le cycle.** Pour chaque changement, énoncez le plan et le résultat attendu, faites le changement à petite échelle, vérifiez les données et décidez d'adopter, d'ajuster ou d'abandonner. Consignez la décision.
5. **Définissez le succès avant de commencer.** Choisissez la mesure et ce que vous vous attendez à voir avant le changement. Cela évite d'expliquer tout résultat comme un succès après coup.
6. **Commencez petit et local.** Laissez les équipes améliorer leur propre travail sans attendre la permission, dans des limites claires. Réservez les programmes plus grands aux problèmes qui traversent les équipes.
7. **Partagez ce que vous apprenez.** Publiez de courtes notes sur ce qui a changé et ce qui s'est passé, échecs compris. Les autres équipes pourront le réutiliser ou l'éviter.
8. **Regardez le système entier.** Avant d'adopter une amélioration, demandez qui elle touche. Un gain local qui ajoute du travail à une autre équipe n'est pas une amélioration globale (voir Sujet 2.4 — Les principes directeurs ITIL sur la pensée holistique).
9. **Revoyez la liste régulièrement.** Une fois par mois, regardez la liste avec l'équipe et le responsable du service : ce qui est fait, ce qui est bloqué, ce qu'il faut abandonner. Retirez les éléments qui ont perdu leur sens.
10. **Célébrez les résultats, pas l'activité.** Reconnaissez les améliorations qui ont rendu les choses meilleures pour les utilisateurs ou le personnel, avec des preuves. Ne récompensez ni le nombre d'idées ni celui des réunions.
11. **Adaptez la méthode au problème.** Utilisez des expériences rapides pour les petits problèmes, des méthodes fondées sur les données pour les défauts persistants, et faites appel à une aide spécialisée pour les problèmes complexes.
12. **Impliquez les utilisateurs et les fournisseurs.** Demandez-leur ce qu'il faut améliorer et invitez-les à revoir les résultats là où ils sont concernés (voir Sujet 3.14 — Gestion des fournisseurs).

## Questions à discuter avec votre équipe

**Qu'est-ce qui s'est amélioré le dernier trimestre grâce à quelque chose que nous avons décidé de changer ?**

Demandez des exemples précis avec des preuves. Si les gens ont du mal, c'est le constat. S'il y a des exemples, demandez ce qui les a fait fonctionner : un responsable, du temps, une mesure claire. Comparez avec les améliorations qui ont calé. L'animateur peut demander quel schéma est le plus courant dans votre équipe.

**Où vont nos idées d'amélioration ?**

Retracez plusieurs idées récentes : d'une revue d'incident, d'une rétrospective, d'un commentaire de client. Découvrez où chacune a fini. Souvent elles sont dispersées entre documents et tickets. Discutez d'une liste unique, de qui la tient et de la manière dont elle est revue. Créez la première version pendant la séance.

**Quelle part de notre capacité va à l'amélioration, et qui l'a décidé ?**

Regardez les derniers cycles et estimez la part. Souvent elle est bien plus petite que ce que croient les gens, et personne ne l'a choisie. Demandez ce que l'équipe et les responsables pensent qu'elle devrait être. Convenez d'une part de départ et d'une manière de la protéger.

**Lesquels de nos changements avons-nous vérifiés après coup ?**

Interrogez les trois derniers changements et la preuve qu'ils ont fonctionné. Beaucoup n'ont jamais été vérifiés. Discutez d'une habitude simple : avant le changement, énoncez ce que vous attendez de voir et quand vous regarderez. Choisissez un changement en cours auquel l'appliquer.

**Quelle amélioration nous a aidés et a nui à quelqu'un d'autre ?**

Recueillez des exemples d'améliorations locales qui ont déplacé un problème ailleurs. Elles viennent souvent de changements de transferts ou d'approbations. Discutez de la façon de demander plus tôt aux personnes concernées. Le but est une question simple à poser avant un changement.

**Quel est le plus ancien élément de notre liste d'améliorations, et pourquoi y est-il encore ?**

Choisissez l'élément le plus ancien et retracez son histoire. Les raisons incluent l'absence de responsable, de temps, un désaccord ou le dépassement par les événements. Décidez de le faire, de le planifier ou de l'abandonner ouvertement. Abandonner un élément délibérément est le signe d'une liste en bonne santé.

## En pratique : un exemple d'ITIL agile

Un distributeur régional d'eau a une plateforme de facturation et de relevé de compteurs exploitée par une équipe de onze personnes. Des rétrospectives sont tenues toutes les deux semaines et produisent des listes d'actions, mais peu sont menées à terme. Les incidents sont revus, et les actions de ces revues sont classées dans un autre système. Le régulateur du distributeur lui a demandé des preuves de la manière dont il tire des leçons des défaillances de service.

Le responsable du service et la responsable de l'équipe décident de rendre l'amélioration visible. Ils créent une liste d'améliorations unique qui rassemble les actions des rétrospectives, des revues d'incidents et des retours de clients. Chaque élément a un responsable, un énoncé du problème, le bénéfice attendu et une mesure. Ils réservent 15 pour cent de chaque cycle de deux semaines aux éléments d'amélioration et plafonnent à trois le nombre en cours. Pour chacun, ils suivent planifier, faire, vérifier et agir : ils écrivent ce qu'ils s'attendent à voir, essaient le changement sur un sous-ensemble, regardent les chiffres après une durée fixée et consignent la décision. Une revue mensuelle avec le responsable du service et un représentant du service client regarde ce qui a été fait et ce qui a été appris.

Au bout de six mois, l'équipe a mené à terme neuf éléments, dont une correction d'un échec répété d'importation de données de compteurs qui a ramené presque à zéro les incidents répétés pour cette cause, et une explication de facture plus claire qui a réduit les appels sur le sujet. Elle a aussi des preuves pour le régulateur sous la forme de la liste et des vérifications. Certaines difficultés demeurent. Deux éléments ont été menés à terme sans être vérifiés parce que le cycle est passé, et une amélioration du processus d'importation a ralenti le travail d'une équipe de rapports en aval, ce qui n'est apparu qu'un mois plus tard. L'équipe ajoute au modèle de liste une question « qui d'autre est touché » et un rappel au calendrier pour chaque vérification.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison possèdent une grande part de la liste d'améliorations. Rassemblez en un endroit les idées des rétrospectives et des incidents, finissez ce que vous commencez et vérifiez les résultats. Soyez prêt à dépenser de la capacité en amélioration plutôt que seulement en nouvelles fonctionnalités.

### Équipes de service et d'exploitation

Les équipes d'exploitation voient la friction en premier. Alimentez la liste avec les thèmes d'incidents, les contacts du centre et les données de flux, et participez à la vérification des résultats. Plaidez pour les améliorations qui réduisent le travail répétitif et les incidents répétés.

### Direction et gouvernance

Les dirigeants protègent la capacité d'amélioration et interrogent sur les résultats. Demandez ce qui s'est amélioré et comment cela a été vérifié, et non combien d'idées il y a. Levez les obstacles que les équipes nomment et montrez que vous l'avez fait. Soutenez les améliorations qui traversent les frontières d'équipes.

### Clients et utilisateurs

Les clients et utilisateurs fournissent certaines des meilleures idées. Dites à l'équipe ce qui vous frustre et demandez à savoir ce qui a changé à la suite. Participez aux revues là où votre service est concerné. Votre retour sur l'utilité d'un changement est la vérification la plus directe qui soit.

## Modes d'échec courants

- **Des idées sans responsables.** La liste grossit et rien n'est fait. À la place, exigez un responsable et un bénéfice attendu pour chaque élément.
- **L'amélioration comme temps libre.** La livraison l'évince. À la place, réservez de la capacité et protégez-la.
- **Trop à la fois.** Tout est commencé et peu est fini. À la place, limitez le travail en cours des éléments d'amélioration.
- **Aucune vérification.** Les changements sont adoptés parce qu'ils étaient planifiés. À la place, énoncez à l'avance le résultat attendu et regardez les données.
- **Optimisation locale.** Une équipe s'améliore et une autre en souffre. À la place, demandez qui d'autre est touché avant et après.
- **Théâtre d'amélioration.** Ateliers et affiches remplacent les résultats. À la place, comptez les améliorations menées à terme et vérifiées.
- **Des mesures truquables.** Le chiffre bouge et rien ne s'améliore. À la place, utilisez plusieurs mesures et regardez le travail sous-jacent.
- **Oublier de partager.** Les leçons restent dans l'équipe. À la place, publiez de courtes notes et invitez les autres à les réutiliser.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Recueillir et prioriser | Les idées sont dispersées et non priorisées | Certaines équipes tiennent des listes | Une liste visible par équipe avec responsables et bénéfices attendus | Les priorités s'appuient sur des données d'impact et d'effort | Les listes d'améliorations sont alignées entre équipes et avec les clients |
| Capacité et flux | L'amélioration se fait sur le temps libre | Une partie de la capacité est réservée | Une part protégée de la capacité et des limites au travail en cours | La capacité et le débit de l'amélioration sont revus | La capacité est partagée entre équipes pour les améliorations transversales |
| Vérifier les résultats | Les résultats ne sont pas vérifiés | Certains changements sont revus | Chaque changement a une attente énoncée et une vérification | Les résultats sont mesurés et reliés aux décisions | Les preuves sont partagées entre équipes et servent à orienter l'organisation |
| Apprentissage et diffusion | Les leçons restent locales | Quelques notes sont partagées | Les leçons sont publiées et revues | La réutilisation des améliorations est suivie | Les améliorations se diffusent routinièrement entre équipes et fournisseurs |

## Liste de contrôle

- [ ] Nous avons une liste d'améliorations visible avec responsables et bénéfices attendus.
- [ ] Les idées des rétrospectives, revues d'incidents, thèmes du centre et retours l'alimentent toutes.
- [ ] Une part protégée de chaque cycle va aux éléments d'amélioration.
- [ ] Nous limitons le nombre d'éléments d'amélioration en cours.
- [ ] Chaque changement énonce un résultat attendu et un moment pour le vérifier.
- [ ] Nous vérifions les résultats et consignons la décision d'adopter, d'ajuster ou d'abandonner.
- [ ] Nous demandons qui d'autre est touché avant de faire un changement.
- [ ] La liste est revue au moins chaque mois.
- [ ] Nous partageons de courtes notes sur ce qui a changé et ce que nous avons appris.
- [ ] Nous pouvons citer trois choses qui vont mieux ce trimestre grâce au travail d'amélioration.

## Prompts d'IA

**Objectif : fusionner les idées d'amélioration en une seule liste priorisée.**

```text
Voici des idées d'amélioration de plusieurs sources au cours des [période] dernières : [collez des éléments issus des rétrospectives, revues d'incidents, thèmes du centre et retours, un par ligne, avec leur source].

Fusionnez les doublons, regroupez les éléments apparentés et produisez une liste avec : un énoncé du problème en une ligne pour chacun, la source, le bénéfice qu'il pourrait apporter (n'utilisez que ce que le texte laisse entendre, sinon écrivez « inconnu ») et une question sur l'effort. Ne classez pas au jugé ; proposez plutôt une manière de classer (par exemple par nombre de répétitions et impact sur les utilisateurs) et appliquez-la uniquement aux données que j'ai données. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : transformer une idée d'amélioration en petite expérience.**

```text
Aidez-moi à transformer cette idée d'amélioration en petite expérience selon planifier, faire, vérifier, agir.

L'idée : [décrivez].
Le problème qu'elle traite, avec des preuves : [collez des faits].
Qui est touché : [listez équipes et utilisateurs].
Mesures que nous avons déjà : [listez].

Rédigez : une hypothèse en une phrase, le plus petit changement qui pourrait la tester, combien de temps le mener, ce que nous mesurerons avant et après (laissez les objectifs comme [à convenir]), qui d'autre consulter avant de commencer et quelle règle de décision nous utiliserons à la fin. N'inventez pas de données de référence. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : passer en revue l'état d'une liste d'améliorations.**

```text
Voici notre liste d'améliorations avec l'état, le responsable, l'ancienneté et le bénéfice attendu : [collez].

En n'utilisant que ce texte, identifiez : les éléments sans responsable ; les éléments de plus de [période] sans progrès ; les éléments dont le bénéfice attendu est flou ; et les éléments qui semblent liés et pourraient être combinés. Pour chacun, suggérez une question à poser à la revue mensuelle. Ne décidez pas à notre place de ce qu'il faut abandonner. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : vérifier si une amélioration a fonctionné.**

```text
Nous avons fait ce changement : [décrivez] le [date].

Mesure avant le changement, avec dates et valeurs : [collez de vraies données].
Mesure après, avec dates et valeurs : [collez de vraies données].
Ce qui a changé d'autre sur la même période : [listez, ou écrivez « inconnu »].

Décrivez en mots simples ce que montrent les données, sans prétendre que le changement en est la cause si d'autres changements pourraient l'expliquer. Suggérez des vérifications supplémentaires et dites si les données suffisent pour décider d'adopter, d'ajuster ou d'abandonner. N'inventez ni chiffres ni statistiques. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [kaizen](../../../../skills/kaizen/SKILL.md) : à utiliser pour planifier et revoir de petites améliorations continues.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour tenir des rétrospectives qui produisent des actions avec responsables.
- [dmaic](../../../../skills/dmaic/SKILL.md) : à utiliser pour l'amélioration fondée sur les données de défauts persistants, par définir, mesurer, analyser, améliorer et contrôler.
- [six-sigma](../../../../skills/six-sigma/SKILL.md) : à utiliser quand la variation et les défauts sont le principal problème et que vous avez besoin d'une approche statistique.
- [futurespective](../../../../skills/futurespective/SKILL.md) : à utiliser pour regarder ensemble vers l'avant et convenir d'améliorations pour la période suivante.

## Sources principales

- **Continual improvement process** (Wikipedia) : la définition, le kaizen, la PDCA et la terminologie continual contre continuous.
- **PDCA** (Wikipedia) : le cycle planifier–faire–vérifier–agir, ses origines et des variantes comme la PDSA.
- **Kaizen** (Wikipedia) : contexte sur l'amélioration petite et continue et ses origines dans l'industrie japonaise.
- **Lean software development** (Wikipedia) : les idées lean derrière l'amélioration continue dans le travail logiciel.

## Références

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
