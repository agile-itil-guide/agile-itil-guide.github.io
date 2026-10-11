# Gestion des niveaux de service

**La gestion des niveaux de service transforme ce dont les utilisateurs ont besoin en objectifs qu'une équipe peut mesurer et défendre, et la forme la plus utile pour les équipes agiles est un petit nombre d'objectifs tournés vers l'utilisateur avec un budget explicite pour l'échec.**

## Pourquoi c'est important

Chaque service a un niveau de qualité, que quelqu'un l'ait mesuré ou non. S'il n'est pas énoncé, les utilisateurs en supposent un et l'équipe un autre, et l'écart se découvre pendant une panne. La gestion des niveaux de service est la pratique qui consiste à énoncer le niveau, à le mesurer et à agir sur les résultats. Elle donne à l'équipe un repère pour se guider et aux clients quelque chose sur quoi compter.

Les équipes agiles résistent souvent aux niveaux de service parce qu'elles les associent à des contrats et à des pénalités. Pourtant, une équipe agile qui publie chaque semaine prend une décision, qu'elle le sache ou non, sur la part de risque qu'elle prend avec la disponibilité. Un objectif clair rend cette décision explicite. Le livre *Site Reliability Engineering* de Google, dans son chapitre sur les objectifs de niveau de service, décrit comment le faire d'une façon qui convient aux équipes qui avancent vite : choisir quelques indicateurs qui comptent pour les utilisateurs, fixer des objectifs et utiliser la marge entre parfait et acceptable, le budget d'erreurs, pour décider quand publier.

Ce sujet combine ce chapitre avec l'[article de Wikipédia sur les accords de niveau de service](https://en.wikipedia.org/wiki/Service-level_agreement) pour les définitions des accords, et avec un vocabulaire ITIL largement employé que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre. Le chapitre SRE reflète la pratique d'une seule organisation et plaide pour une approche précise ; lisez-le comme une option bien expliquée, pas comme une règle universelle.

## Concepts clés

### Indicateur, objectif, accord

Le chapitre SRE distingue trois termes souvent confondus :

| Terme | Sens | Exemple |
|---|---|---|
| **Indicateur de niveau de service (SLI)** | Une mesure quantitative soigneusement définie d'un aspect du niveau de service | La proportion de requêtes bien formées qui réussissent |
| **Objectif de niveau de service (SLO)** | Une valeur ou plage cible pour un SLI | Au moins 99,9 % des requêtes réussissent sur un mois |
| **Accord de niveau de service (SLA)** | Un contrat explicite ou implicite avec les utilisateurs qui comporte des conséquences pour le respect ou le non-respect des objectifs, le plus souvent financières | Un remboursement si la disponibilité tombe sous un niveau énoncé |

Le test du chapitre pour distinguer un SLA d'un SLO est de savoir s'il y a une conséquence explicite. Sinon, c'est un SLO. Les chiffres d'exemple du tableau sont des illustrations, pas des recommandations.

L'article de Wikipédia décrit un SLA comme un accord, généralement un contrat contraignant, entre un fournisseur et un client qui définit des aspects du service comme la qualité, la disponibilité et les responsabilités. Il liste le contenu typique : une description du service, des niveaux de performance, la surveillance et le reporting, la manière de signaler les problèmes, les délais de réponse et de résolution, et les conséquences du non-respect. Il nomme des mesures courantes comme le temps moyen entre pannes, le temps moyen de réparation, le temps de disponibilité, la résolution au premier appel et le délai de traitement. Il note que les grandes organisations utilisent souvent des SLA internes entre unités. Il décrit des types selon le périmètre : par client, par service et à plusieurs niveaux.

### Choisir les indicateurs

Le chapitre SRE conseille de choisir quelques indicateurs qui reflètent ce qui compte pour les utilisateurs, et non toutes les mesures que l'on peut suivre. Les systèmes tournés vers l'utilisateur se concentrent généralement sur la disponibilité, la latence et le débit. Les systèmes de stockage ajoutent la durabilité, et tous les systèmes devraient suivre l'exactitude. Il suggère que la mesure côté client peut attraper des problèmes que les mesures côté serveur manquent. Une conséquence pratique pour les équipes de service : partez de l'expérience de l'utilisateur, comme « je peux prendre rendez-vous et cela prend quelques secondes », puis trouvez un indicateur qui l'approche.

### Les moyennes cachent la douleur

Le chapitre argumente contre le recours aux moyennes : « La plupart des mesures se pensent mieux comme des distributions que comme des moyennes. » Les percentiles élevés, comme le 99e ou le 99,9e, montrent les pires cas plausibles, tandis que la médiane montre le cas typique. Les moyennes peuvent cacher une longue traîne de requêtes lentes. Si votre mesure est une moyenne, quelques utilisateurs pourraient passer un très mauvais moment sans que le chiffre bouge.

### Choisir les objectifs

Les conseils du chapitre sur les objectifs sont directs et utiles :

- **Partez des utilisateurs.** « Commencez par penser à (ou découvrir !) ce qui compte pour vos utilisateurs, pas ce que vous pouvez mesurer. »
- **Ne vous ancrez pas sur la performance actuelle.** Choisir un objectif d'après ce que vous atteignez maintenant peut verrouiller un effort héroïque.
- **Restez simple.** Les agrégations compliquées masquent les changements et sont plus difficiles à raisonner.
- **Évitez les absolus.** Promettre « toujours » disponible est irréaliste.
- **Ayez aussi peu de SLO que possible.** Chacun doit valoir la peine d'être défendu dans une discussion de priorités.
- **La perfection peut attendre.** Il vaut mieux commencer par un objectif lâche que l'on resserre que par un objectif qu'il faudra assouplir plus tard.

### Budgets d'erreurs

Le chapitre dit qu'exiger une conformité de 100 % est irréaliste et ralentit l'innovation. À la place, les équipes admettent un **budget d'erreurs** : le taux auquel un SLO peut être manqué, suivi chaque jour, semaine ou mois. Le budget éclaire les décisions de mise en production. Quand il reste beaucoup de budget, une équipe peut prendre plus de risque avec le changement ; quand il est presque épuisé, l'équipe ralentit le changement et investit dans la fiabilité. Cela donne aux équipes agiles et à l'exploitation une manière commune, chiffrée, de débattre vitesse contre stabilité, à la place de l'argument d'autorité.

### Fixer les attentes

Le chapitre note que publier un SLO fixe les attentes des utilisateurs. Les équipes peuvent garder une marge de sécurité avec un objectif interne plus serré. Il met aussi en garde contre le dépassement excessif, car les utilisateurs en viennent à dépendre de la performance qu'ils observent. Si un service est bien meilleur que son objectif énoncé, les utilisateurs bâtiront dessus et l'objectif ne protège plus l'équipe.

### La boucle de contrôle

Le chapitre décrit les SLI et les SLO comme la base d'une boucle de contrôle : surveiller les SLI, les comparer aux SLO, décider si une action est nécessaire, déterminer quelle action atteindra l'objectif et la mener. Sans SLO, une équipe ne peut pas dire si ou quand agir (voir Sujet 3.10 — Surveillance et gestion des événements).

### Accords internes et externes

Un SLA lie un fournisseur et un client. À l'intérieur d'un fournisseur, les équipes dépendent les unes des autres et de fournisseurs. L'article de Wikipédia mentionne que les SLA peuvent être soutenus par des accords de niveau opérationnel (OLA) mais ne les explique pas. Dans le vocabulaire ITIL, un OLA est un accord entre équipes internes qui soutient un SLA, et un contrat de soutien (underpinning contract) est l'équivalent avec un fournisseur externe. Les sources lues ici ne confirment pas ces définitions ; vérifiez-les donc dans les publications d'ITIL. Le point pratique est qu'une promesse à un client ne vaut que ce que valent les promesses qui la soutiennent (voir Sujet 3.14 — Gestion des fournisseurs).

### Attentes de niveau de service dans Kanban

Dans Kanban, une **attente de niveau de service** est une prévision du temps qu'un élément de travail devrait prendre, fondée sur les temps de cycle passés (voir Sujet 1.5 — Kanban). Ce n'est pas un accord, mais elle sert un but semblable pour les éléments de travail et peut alimenter des objectifs pour les demandes et les incidents.

## Bonnes pratiques

1. **Partez de ce dont les utilisateurs ont besoin.** Demandez aux utilisateurs et aux clients ce qui compte le plus et ce qui fait mal quand cela échoue. Écrivez-le avec leurs mots avant de choisir une mesure.
2. **Choisissez quelques indicateurs.** Pour chaque service, choisissez deux à quatre indicateurs qui reflètent l'expérience de l'utilisateur, comme le taux de réussite et la rapidité. Résistez à l'envie d'en ajouter avant d'avoir utilisé ceux-ci.
3. **Utilisez des percentiles pour la rapidité.** Mesurez l'extrémité lente de la distribution, pas seulement la moyenne, pour que les utilisateurs qui vivent une mauvaise expérience soient visibles.
4. **Fixez d'abord des objectifs lâches, puis resserrez.** Commencez par un objectif que vous pouvez tenir et défendre, et resserrez-le une fois que vous avez des données et de la confiance. Cela suit le conseil du chapitre que la perfection peut attendre.
5. **Ne copiez pas la performance actuelle.** Si votre service est actuellement excellent, ne fixez pas un objectif à ce niveau à moins que les utilisateurs en aient besoin. Un objectif plus lâche laisse de la marge pour le changement et évite l'effort héroïque.
6. **Convenez d'un budget d'erreurs et utilisez-le.** Définissez combien d'échec est acceptable sur une période et laissez le budget restant guider les décisions de mise en production. Revoyez-le dans une réunion régulière réunissant livraison et exploitation.
7. **Rédigez l'accord en langage simple.** Un SLA doit dire ce qui est fourni, comment c'est mesuré, comment les problèmes sont signalés, ce qui se passe quand les objectifs sont manqués et quand il est revu. Évitez les termes que seul un juriste ou un ingénieur sait lire.
8. **Séparez les objectifs des accords.** Gardez des objectifs internes plus serrés que les accords que vous signez. La marge vous laisse la possibilité de réagir avant de devoir quoi que ce soit.
9. **Sachez de quoi dépend votre promesse.** Listez les équipes et fournisseurs dont repose votre niveau de service et vérifiez que leurs engagements soutiennent les vôtres.
10. **Rendez compte sous une forme que les clients peuvent utiliser.** Partagez régulièrement les résultats, avec un court commentaire sur ce qui s'est passé et sur ce que vous faites. Évitez les tableaux de bord sans commentaire.
11. **Revoyez les objectifs avec les clients.** Au moins chaque année, demandez si les niveaux correspondent toujours à ce dont les clients ont besoin et à ce que vous pouvez fournir. Changez-les quand la réponse est non.
12. **N'utilisez pas les niveaux de service pour punir les gens.** Utilisez-les pour lancer des conversations et des décisions. Un objectif utilisé comme un bâton sera truqué (voir Sujet 5.6 — Indicateurs et mesure).

## Questions à discuter avec votre équipe

**À quoi ressemble une bonne journée pour nos utilisateurs, et comment le saurions-nous ?**

Demandez à l'équipe de décrire, avec les mots de l'utilisateur, ce qu'est une bonne expérience du service. Demandez ensuite ce que nous mesurons qui y corresponde. Souvent les mesures que nous avons décrivent nos systèmes et non l'expérience de l'utilisateur. L'animateur peut demander si nous remarquerions qu'un groupe d'utilisateurs passe une mauvaise journée. Choisissez un indicateur à ajouter ou à changer.

**Avons-nous un chiffre que nous promettons ou visons, et qui l'a accepté ?**

Listez les objectifs qui existent, formels ou informels. Pour chacun, demandez qui l'a fixé, quand et sur quelle base. Beaucoup s'avèrent avoir été fixés par habitude ou par quelqu'un qui est parti. Discutez lesquels confirmer, changer ou abandonner. Convenez de qui est responsable de chacun.

**Combien d'échec pouvons-nous nous permettre, et que ferions-nous de la marge ?**

Introduisez l'idée d'un budget d'erreurs. Demandez quel niveau d'indisponibilité les utilisateurs tolèreraient et ce que l'équipe pourrait faire de la marge, comme des mises en production plus rapides. Le but est de voir l'arbitrage en chiffres. N'attendez pas de réponses précises ; demandez une première estimation à tester.

**Où nos moyennes cachent-elles de mauvaises expériences ?**

Regardez une mesure qui rapporte une moyenne. Demandez ce que vit le pour cent d'utilisateurs le plus lent. Si vous ne le savez pas, discutez de la manière de le découvrir. Souvent un petit groupe d'utilisateurs ou une heure particulière de la journée a une expérience bien pire. Prévoyez d'examiner un percentile pendant un mois.

**De quoi dépendons-nous sans avoir posé la question ?**

Listez les services, fournisseurs et équipes dont dépend votre service. Pour chacun, demandez ce qu'il a promis et comment vous sauriez s'il avait manqué. Beaucoup de dépendances n'ont aucun niveau énoncé. Choisissez la plus importante et ouvrez une conversation.

**Quand un objectif a-t-il changé pour la dernière fois, et qu'est-ce qui l'a déclenché ?**

Demandez le dernier changement. S'il date de longtemps, demandez ce qui a changé depuis dans les besoins des utilisateurs ou la capacité de l'équipe. Discutez d'une revue régulière. De bons déclencheurs sont de nouveaux besoins des utilisateurs, des incidents qui ont révélé un objectif irréaliste ou un changement d'architecture.

## En pratique : un exemple d'ITIL agile

Un opérateur national de loterie exploite un service en ligne d'achat de billets. Une équipe de douze personnes le construit et l'exploite. L'entreprise a une règle informelle selon laquelle le service doit être « toujours disponible », alors que l'équipe publie deux fois par semaine et a connu quatre brèves pannes en un an. Après un mauvais week-end, le parrain exécutif exige « 100 % de disponibilité », et la responsable de l'équipe craint que cela mette fin aux mises en production fréquentes.

La responsable de l'équipe et le parrain tiennent un atelier avec le responsable du service client. Ils demandent ce qui compte pour les joueurs. La réponse est que les joueurs doivent pouvoir acheter un billet dans l'heure qui précède la clôture d'un tirage ; en dehors de cette heure, le service peut tomber pendant quelques minutes sans dommage. Ils définissent un indicateur : la part des tentatives d'achat qui réussissent dans les deux heures qui précèdent la clôture de chaque tirage. Ils fixent un objectif que l'équipe croit pouvoir tenir, un peu en dessous de sa performance récente, et conviennent d'un budget d'erreurs pour chaque mois. Ils conviennent aussi que, lorsque le budget est presque épuisé, les versions qui touchent l'achat s'arrêtent jusqu'au mois suivant, et que l'équipe investit dans la fiabilité.

Trois mois plus tard, le budget est épuisé une fois, un mois où le prestataire de paiement a connu une défaillance, et l'équipe suspend les versions risquées pendant deux semaines sans conflit. L'objectif donne à l'équipe et au parrain une manière commune de parler. Certaines difficultés demeurent. L'engagement propre du prestataire de paiement est plus faible que l'objectif de l'équipe ; la promesse de l'équipe dépend donc d'un fournisseur qui ne l'a pas acceptée. La mesure ignore aussi une page de paiement lente dont se plaignent les utilisateurs, car elle ne compte que le succès. L'équipe ajoute un indicateur de rapidité au 99e percentile et ouvre des discussions avec le prestataire sur ses niveaux de service.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison doivent aider à choisir les indicateurs et utiliser le budget d'erreurs dans la planification. Intégrez la mesure au service pour que les chiffres soient fiables. Traitez un budget épuisé comme une raison de travailler sur la fiabilité, pas comme une punition.

### Équipes de service et d'exploitation

Les équipes d'exploitation gèrent généralement la surveillance et rendent compte des niveaux. Gardez l'ensemble de mesures petit, présentez-le avec des commentaires et apportez les données aux conversations de planification. Tenez une liste de ce dont dépend votre service et vérifiez que les engagements s'alignent.

### Direction et gouvernance

Les dirigeants et les parrains fixent les attentes. Évitez de demander la perfection ; demandez ce dont les utilisateurs ont besoin et ce que l'arbitrage coûte. Soutenez l'usage d'un budget d'erreurs comme règle partagée et veillez à ce qu'il s'applique aussi à vos propres demandes. Revoyez les niveaux de service avec les clients selon un calendrier.

### Clients et utilisateurs

Les clients et utilisateurs profitent d'un niveau de service énoncé et tenu. Dites ce qui compte pour vous, y compris quand. Demandez des rapports sous une forme que vous comprenez et dites au fournisseur quand le niveau énoncé ne correspond plus à vos besoins.

## Modes d'échec courants

- **Trop de mesures.** Personne ne sait laquelle compte. À la place, choisissez-en quelques-unes qui reflètent l'expérience de l'utilisateur.
- **Moyennes seulement.** Un groupe d'utilisateurs souffre alors que la moyenne paraît bonne. À la place, incluez une mesure à percentile élevé.
- **Objectifs copiés de la performance actuelle.** L'équipe est enfermée dans l'héroïsme. À la place, fixez les objectifs d'après les besoins des utilisateurs et resserrez avec des données.
- **Exiger 100 %.** Les mises en production s'arrêtent et l'innovation ralentit. À la place, convenez d'un budget d'erreurs et d'une règle pour l'utiliser.
- **Des promesses que l'on ne peut pas tenir.** Le niveau de service dépend de fournisseurs qui n'ont pas accepté. À la place, vérifiez les dépendances et alignez les engagements.
- **Des accords que personne ne lit.** Les conditions sont en langage juridique. À la place, écrivez simplement et revoyez avec les clients.
- **Des tableaux de bord sans commentaire.** Les chiffres sont rapportés sans sens. À la place, ajoutez une courte explication de ce qui s'est passé et de ce qui va changer.
- **Punir les manquements.** Les gens cachent les problèmes. À la place, utilisez les manquements pour provoquer décisions et apprentissage.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Définir les niveaux | Les niveaux sont supposés ou informels | Certains services ont des objectifs énoncés | Chaque service a des indicateurs et objectifs fondés sur l'utilisateur avec des responsables | Les objectifs sont revus au regard des besoins des utilisateurs et des données | Les niveaux sont fixés conjointement avec clients et fournisseurs |
| Mesurer | Les mesures sont ponctuelles | Certains indicateurs sont mesurés | Les indicateurs sont mesurés de façon fiable, percentiles compris | La qualité de la mesure est revue et les lacunes corrigées | La mesure est partagée et validée entre équipes et fournisseurs |
| Utiliser les budgets d'erreurs | L'échec n'est pas planifié | Certaines équipes discutent de l'échec acceptable | Les budgets guident les décisions de mise en production sur les services clés | L'usage du budget est revu et les règles ajustées | Les budgets sont coordonnés entre services dépendants |
| Accords et dépendances | Les promesses sont informelles | Certains accords existent | Les accords sont en langage simple, avec dépendances connues | Accords et engagements des fournisseurs sont confrontés aux résultats | Les accords forment une chaîne cohérente entre équipes, fournisseurs et clients |

## Liste de contrôle

- [ ] Pour chaque service, nous avons décrit avec les mots des utilisateurs à quoi ressemble le bon niveau.
- [ ] Chaque service a de deux à quatre indicateurs qui reflètent l'expérience de l'utilisateur.
- [ ] Au moins une mesure de rapidité utilise un percentile élevé, pas seulement une moyenne.
- [ ] Les objectifs sont fixés d'après les besoins des utilisateurs, pas seulement d'après la performance actuelle.
- [ ] Un budget d'erreurs existe et guide les décisions de mise en production pour au moins un service.
- [ ] Les accords sont rédigés en langage simple et revus avec les clients.
- [ ] Les dépendances envers d'autres équipes et fournisseurs sont listées avec leurs engagements.
- [ ] Les résultats sont rapportés régulièrement avec des commentaires.
- [ ] Les objectifs sont revus au moins une fois par an.
- [ ] Les données de niveau de service servent à la planification et non de bâton.

## Prompts d'IA

**Objectif : transformer les besoins des utilisateurs en indicateurs et objectifs candidats.**

```text
Aidez-moi à passer des besoins des utilisateurs aux indicateurs et objectifs pour [service].

Ce que les utilisateurs font du service et ce qui compte pour eux (avec leurs mots, avec tout retour ou plainte) : [collez].
Mesures que nous pouvons déjà recueillir : [listez].
Règles ou contrats qui fixent des niveaux, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Proposez de deux à quatre indicateurs candidats qui reflètent l'expérience de l'utilisateur, dites comment chacun serait mesuré avec les données que j'ai listées et suggérez comment exprimer un objectif pour chacun, en laissant les objectifs chiffrés comme [à convenir avec les utilisateurs et les données]. Marquez tout indicateur que nous ne pouvons pas encore mesurer. N'inventez ni objectifs ni chiffres de performance. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : analyser si les moyennes cachent de mauvaises expériences.**

```text
Voici des temps de réponse (ou d'autres mesures) de [service] sur [période] : [collez une colonne de vraies valeurs, ou des chiffres de synthèse comme la médiane, le 90e et le 99e percentile si vous les avez].

En n'utilisant que mes données, calculez ou décrivez la moyenne, la médiane et les percentiles élevés si les données le permettent. Expliquez en mots simples ce que l'écart entre la moyenne et les percentiles élevés suggère pour les utilisateurs. Suggérez un indicateur et une question à poser. N'inventez pas de données et dites si les données sont trop minces. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger le plan d'un accord de niveau de service en langage simple.**

```text
Rédigez le plan d'un accord de niveau de service pour [service] entre [fournisseur] et [client].

Ce que nous fournissons : [décrivez].
Mesures et objectifs déjà convenus ou proposés : [collez, ou écrivez « à convenir »].
Heures de support et contacts : [décrivez].
Dépendances envers des fournisseurs : [listez].
Conditions que nous devons inclure à cause d'un contrat ou de la loi, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Produisez un plan avec des sections en langage simple : description du service, horaires, mesures et manière de les mesurer, comment signaler un problème, attentes de réponse et de résolution (marquées [à convenir]), ce qui se passe si les objectifs sont manqués, reporting, date de revue. N'inventez pas de termes juridiques. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une politique de budget d'erreurs.**

```text
Aidez-moi à rédiger une politique de budget d'erreurs pour [service].

Objectif et période : [par exemple « taux de réussite des tentatives d'achat dans les deux heures avant la clôture d'un tirage, mesuré mensuellement »].
Performance actuelle si connue : [collez, ou écrivez « inconnue »].
Rythme de mise en production : [décrivez].
Qui décide et qui est concerné : [rôles].

Rédigez une politique d'une page : comment le budget est calculé à partir de l'objectif, comment son usage est suivi et montré, ce qui se passe à trois stades de consommation (utilisez [à convenir] pour les seuils), qui peut passer outre et comment, et comment la politique est revue. N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md) : à utiliser pour rédiger ou revoir un accord en langage simple.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md) : à utiliser pour choisir et interpréter des mesures de livraison et de performance du service.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md) : à utiliser pour sélectionner des indicateurs d'alerte précoce qui montrent qu'un niveau de service est menacé.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour vérifier que la capacité soutient les niveaux que vous promettez.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour aligner les engagements des fournisseurs sur les niveaux que vous offrez.

## Sources principales

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google) : l'explication publique la plus claire des indicateurs, objectifs, accords, percentiles et budgets d'erreurs.
- **Service-level agreement** (Wikipedia) : la définition, le contenu typique, les types et l'histoire des SLA.
- **DORA's software delivery performance metrics** (dora.dev) : mesures apparentées de rapidité et de stabilité de la livraison.
- **Quality of service** (Wikipedia) : contexte sur la façon dont la qualité de service est décrite et mesurée.

## Références

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
