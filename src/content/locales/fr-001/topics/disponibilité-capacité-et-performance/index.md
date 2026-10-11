# Disponibilité, capacité et performance

**Disponibilité, capacité et performance sont trois vues pour savoir si un service est là, assez grand et assez rapide quand les utilisateurs en ont besoin, et l'approche agile consiste à choisir les objectifs d'après les besoins des utilisateurs, à les chiffrer honnêtement et à les tester avant que la demande n'arrive.**

## Pourquoi c'est important

Les utilisateurs ne séparent pas les trois. Un service « en ligne » mais trop lent pour être utilisé les a déçus, et un service rapide un jour calme qui s'effondre à la pointe les a déçus au moment où ils en ont le plus besoin. Les équipes qui regardent séparément disponibilité, capacité et performance manquent souvent la manière dont elles interagissent : ajouter de la capacité change le coût et la complexité, poursuivre une disponibilité parfaite limite la vitesse à laquelle vous pouvez changer, et optimiser la vitesse peut réduire la résilience.

Les équipes agiles rencontrent une version particulière du problème. Elles changent souvent le service, et chaque changement peut altérer la performance ou les besoins en ressources de façons que personne n'a testées. Elles travaillent aussi volontiers sur de courts horizons, si bien que des besoins de capacité qui demandent des mois pour être organisés, comme le matériel, les contrats ou les licences, peuvent être manqués. Les pratiques de ce sujet offrent un moyen de regarder en avant sans revenir à une planification à long terme pour elle-même.

Le livre *Site Reliability Engineering* de Google, dans son chapitre « Embracing Risk », est une source claire sur l'économie de la disponibilité : il dit que son approche ne vise pas une fiabilité de 100 %, car au-delà d'un certain point, maximiser la stabilité limite la vitesse à laquelle de nouvelles fonctionnalités peuvent être développées, et les coûts de fiabilité montent fortement. L'[article de Wikipédia sur la planification de la capacité](https://en.wikipedia.org/wiki/Capacity_planning) donne des définitions générales et des stratégies. Les deux sont partiels, et le vocabulaire ITIL employé ici vient de descriptions largement publiées que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre.

## Concepts clés

### Disponibilité

La **disponibilité** est la capacité d'un service à faire ce dont les utilisateurs ont besoin quand ils en ont besoin. Une manière courante de l'exprimer est un pourcentage sur une période. Le chapitre SRE note deux façons de la mesurer. Pour un système unique, la disponibilité se mesure dans le temps : 99,99 % autorise environ 52,56 minutes d'indisponibilité non planifiée par an. Pour des services distribués qui sont partiellement en ligne en permanence, il vaut mieux la mesurer comme le taux de réussite des requêtes sur une fenêtre glissante ; l'exemple du chapitre est un service avec 2,5 millions de requêtes quotidiennes et un objectif de 99,99 %, qui autorise jusqu'à 250 erreurs. Le chapitre se concentre sur l'indisponibilité non planifiée. L'indisponibilité planifiée exige son propre accord avec les utilisateurs.

### Le prix de chaque « neuf » supplémentaire

Le chapitre dit que les coûts de fiabilité montent de façon non linéaire : un neuf supplémentaire peut coûter 100 fois l'incrément précédent, y compris les ressources redondantes et le coût d'opportunité d'ingénieurs qui ne construisent pas de fonctionnalités pour les utilisateurs. Il en donne une illustration : faire passer la disponibilité de 99,9 % à 99,99 % sur un service qui génère 1 million de dollars de revenus vaut environ 900 dollars de valeur, si bien que l'investissement ne rapporte que si le neuf supplémentaire coûte moins que cela. Les chiffres sont l'exemple de la source, et les vôtres doivent venir de vos propres revenus ou valeur. Le principe tient : choisissez la disponibilité dont les utilisateurs ont besoin et chiffrez tout ce qui la dépasse.

### Tolérance au risque

Le chapitre décrit un travail avec les responsables de produit pour transformer des objectifs métier en objectifs explicites. Les facteurs incluent la disponibilité requise, la forme des défaillances (un faible taux d'erreurs constant contre des pannes complètes occasionnelles, l'exposition de données étant particulièrement grave), le coût et d'autres mesures comme la latence. Il note que l'infrastructure qui sert de nombreux clients peut être offerte à des niveaux de service explicitement définis, de sorte que chaque client choisit le niveau le moins cher qui répond à ses besoins.

### Budgets d'erreurs

Le chapitre explique le budget d'erreurs comme une mesure partagée et objective entre les équipes de produit, mesurées sur la vélocité, et les équipes de fiabilité, mesurées sur la fiabilité. Tant qu'il reste du budget, les mises en production continuent. Quand il est épuisé, elles ralentissent et l'effort passe à la fiabilité (voir Sujet 3.7 — Gestion des niveaux de service).

### Capacité

L'article de Wikipédia définit la planification de la capacité comme la détermination de la capacité de production dont une organisation a besoin pour répondre à une demande changeante, et dit qu'en informatique c'est un synonyme de gestion de la capacité : estimer les ressources de stockage, de matériel, de logiciel et de connectivité nécessaires sur une période future. L'article distingue la **capacité de conception**, la production maximale possible, de la **capacité effective**, la production après contraintes. En pratique, planifiez sur la capacité effective, toujours inférieure au chiffre de conception.

### Stratégies de capacité

L'article décrit quatre stratégies pour ajouter de la capacité :

| Stratégie | Ce que cela signifie | Arbitrage |
|---|---|---|
| **Anticipation (lead)** | Ajouter de la capacité avant la demande | Bon service et délais courts, mais risqué si la demande est imprévisible |
| **Retard (lag)** | N'ajouter de la capacité qu'après avoir tourné à pleine capacité ou au-delà | Moindre risque de surconstruire, mais peut faire perdre des clients |
| **Alignement (match)** | Ajouter de la capacité par petits incréments à mesure que la demande change | Équilibré, exige une bonne surveillance |
| **Ajustement (adjustment)** | Ajouter ou réduire la capacité par petites ou grandes quantités selon l'évolution de la demande ou de l'architecture | Flexible, exige un approvisionnement rapide |

L'article décrit une planification à court, moyen et long terme (opérationnelle, tactique et stratégique), de quelques jours à plusieurs années. Dans un contexte en nuage, « alignement » et « ajustement » sont souvent plus faciles parce que les ressources peuvent être ajoutées vite, mais le coût et les contrats demandent encore de la planification (voir Sujet 4.5 — Gestion financière informatique et FinOps).

### Performance

La **performance** est la rapidité et la qualité de réponse du service. Le chapitre du livre SRE sur la surveillance suggère de mesurer latence, trafic, erreurs et saturation, et met en garde contre le fait que les moyennes cachent les valeurs aberrantes lentes (voir Sujet 3.10 — Surveillance et gestion des événements). La saturation, à quel point le service est « plein », relie la performance à la capacité : le chapitre note que la performance se dégrade souvent avant 100 % d'utilisation.

### Comment les trois interagissent

- Plus de capacité peut améliorer la disponibilité et la performance, à un coût.
- Les objectifs de haute disponibilité exigent généralement de la redondance, qui est de la capacité supplémentaire.
- Optimiser pour la performance de pointe peut réduire la marge pour les défaillances.
- Les changements du service modifient les trois, c'est pourquoi les tests comptent.

Une discipline utile est d'énoncer ensemble les objectifs de chaque service : quelle disponibilité, quelle rapidité et quelle charge il doit porter.

### Demande et prévision

La capacité dépend de la demande. La demande vient des utilisateurs et du métier : campagnes de marketing, pics saisonniers, nouveaux clients. Le métier en sait plus que l'informatique sur l'avenir ; demandez-lui donc. Planifiez avec des fourchettes plutôt que des chiffres uniques et revoyez régulièrement la prévision (voir la compétence de prévision de la demande ci-dessous).

### Tests

Les affirmations de capacité et de performance sont des hypothèses tant qu'elles ne sont pas testées. Les tests de charge et de performance appliquent une demande réaliste pour voir comment le service se comporte, et les tests de chaos introduisent des défaillances pour voir si la disponibilité tient. Ils peuvent faire partie de la chaîne de livraison.

### Limites des sources

L'article de Wikipédia sur la planification de la capacité ne mentionne pas la gestion de la capacité d'ITIL et n'analyse pas la relation entre capacité, performance et disponibilité, et sa section sur les actifs est signalée comme manquant de citations. Le chapitre SRE décrit les pratiques d'une très grande organisation à l'économie distincte. Servez-vous-en pour les principes, pas pour les chiffres.

## Bonnes pratiques

1. **Énoncez ensemble les objectifs de disponibilité, de performance et de charge.** Pour chaque service, écrivez quelle disponibilité il doit avoir, avec quelle rapidité il doit répondre et quelle charge il doit porter. Fondez-les sur les besoins des utilisateurs et convenez-en avec le responsable du service et les clients.
2. **Chiffrez les objectifs.** Estimez ce que coûte un niveau supplémentaire de disponibilité ou de rapidité, en argent et en fonctionnalités retardées. Comparez avec ce que les utilisateurs et le métier y gagneraient. Utilisez vos propres chiffres, pas l'exemple d'un livre.
3. **Mesurez la disponibilité d'une manière qui correspond au service.** Pour les services partiellement en ligne en permanence, utilisez le taux de réussite sur une fenêtre glissante comme le fait le chapitre SRE. Pour les systèmes simples, utilisez des mesures dans le temps. Comptez séparément l'indisponibilité non planifiée et planifiée.
4. **Planifiez sur la capacité effective.** Estimez ce que le service peut porter après les vraies contraintes comme la surcharge, la défaillance de composants et la maintenance. Gardez une marge.
5. **Choisissez une stratégie de capacité de façon délibérée.** Décidez s'il faut anticiper, retarder ou aligner pour chaque ressource, d'après les délais, le coût de la pénurie et le coût de la surconstruction. Écrivez le choix et revoyez-le.
6. **Interrogez le métier sur la demande.** Rencontrez régulièrement les responsables du marketing, des ventes et de l'exploitation pour apprendre les campagnes, lancements et pics saisonniers. Consignez la charge attendue avec des fourchettes.
7. **Surveillez la saturation.** Suivez à quel point les ressources clés sont pleines et fixez des alertes bien avant le point où la performance se dégrade. Connaissez le niveau auquel votre service commence à ralentir.
8. **Testez avant la pointe.** Menez des tests de charge et de performance qui ressemblent au trafic réel, avant les pointes connues et après des changements importants. Corrigez ce que vous trouvez tant qu'il est temps.
9. **Testez la défaillance, pas seulement la charge.** Exercez-vous à perdre un composant, une zone ou un fournisseur dans un environnement sûr et voyez si la disponibilité tient (voir la compétence de test de chaos ci-dessous).
10. **Incluez la capacité dans le travail de changement et de mise en production.** Demandez, en conception et en revue, si un changement modifie les besoins en ressources. Ajoutez à la chaîne des contrôles de performance pour les chemins qui comptent (voir Sujet 3.5 — Gestion des mises en production et des déploiements).
11. **Utilisez le budget d'erreurs pour trancher les arbitrages.** Quand il y a du budget, dépensez-le en changement. Quand il est épuisé, dépensez l'effort en fiabilité et en capacité. Revoyez la règle avec la livraison et l'exploitation ensemble.
12. **Confrontez les prévisions aux réalisations.** Chaque trimestre, comparez la demande prévue et la demande réelle et ajustez votre méthode. Traitez les surprises comme de l'information.

## Questions à discuter avec votre équipe

**De quoi nos utilisateurs ont-ils vraiment besoin en disponibilité, rapidité et capacité, et qui l'a décidé ?**

Demandez les objectifs actuels et d'où ils viennent. Souvent ils ont été fixés il y a longtemps, ou par l'équipe sans demander aux utilisateurs. Demandez aux utilisateurs et aux clients ce qui fait le plus mal. Discutez si les objectifs correspondent. L'animateur peut demander ce qui se passerait si l'objectif était d'un cran plus bas et ce que cela libérerait.

**Que nous coûte le neuf suivant ?**

Choisissez un service à objectif de disponibilité élevé. Estimez ce qu'il en coûterait de le relever ou de l'abaisser d'un cran, en argent et en travail retardé. Comparez avec la valeur pour les utilisateurs. L'exemple du chapitre SRE montre à quelle vitesse l'arithmétique peut se retourner contre un objectif plus élevé. Faites le calcul avec vos propres chiffres et consignez les hypothèses.

**Quelle est la prochaine pointe de demande que nous connaissons, et qu'avons-nous fait pour nous y préparer ?**

Listez les pointes connues : une campagne, une échéance, une ruée saisonnière. Pour chacune, demandez qui connaît la charge attendue et si le service a été testé à ce niveau. Souvent personne n'a posé la question. Convenez d'une personne pour recueillir les chiffres et d'une date pour le test.

**Où notre service est-il le plus proche de la saturation, et que se passe-t-il quand il l'atteint ?**

Demandez la ressource la plus sollicitée. Regardez la tendance. Demandez ce que fait le service à cette limite : ralentit, produit des erreurs ou tombe. Si personne ne sait, testez. Choisissez un seuil auquel agir et une alerte pour celui-ci.

**Lesquels de nos derniers changements ont affecté la performance ou la capacité, et le savions-nous à l'avance ?**

Passez en revue les changements récents et demandez comment la performance a été vérifiée. Si elle ne l'a pas été, discutez de ce que serait un contrôle léger. Les options typiques sont un test sur le chemin critique ou une version canari avec surveillance. Convenez d'une option pour la prochaine version.

**Si un composant tombait en panne maintenant, que deviendrait la disponibilité ?**

Prenez un service clé et retracez une défaillance d'une base de données, d'une zone ou d'un fournisseur. Demandez ce que la conception suppose et ce qui a été testé. Les écarts entre hypothèse et preuve sont des risques. Prévoyez un test de défaillance contrôlé dans un environnement sûr.

## En pratique : un exemple d'ITIL agile

Une caisse nationale de retraite exploite un service en ligne où les citoyens consultent leurs droits et déposent des formulaires. Le service connaît une année calme, sauf les semaines qui suivent l'envoi des relevés annuels, quand le trafic monte à plusieurs fois le niveau normal. L'an dernier, le service a ralenti au point que beaucoup d'utilisateurs ont renoncé, et le centre d'appels a été submergé. L'équipe plateforme de neuf personnes et la directrice de l'exploitation veulent éviter une répétition.

L'équipe commence par demander au service de communication la charge attendue. Le service dit que les relevés seront envoyés en deux lots et donne les dates, mais pas de chiffres. L'équipe estime la fourchette à partir des données de l'an dernier et fixe un objectif : la page des formulaires doit répondre dans un délai acceptable pour la pointe attendue, et le service doit rester disponible pendant les deux lots. Elle mène un test de charge sur une copie de la production et constate que la base de données est la première ressource à saturer, bien en dessous de la pointe prévue. Elle adopte une stratégie d'« anticipation » pour la base de données, car le délai pour ajouter de la capacité est long, et une stratégie d'« alignement » pour les serveurs web, qui peuvent être ajoutés en quelques minutes. Un test de défaillance montre que perdre un nœud de base de données divise la capacité par deux, ce qui serait inacceptable à la pointe ; l'équipe ajoute donc un nœud de rechange.

À la pointe, le service reste en ligne et les temps de réponse tiennent lors du premier lot. Lors du deuxième lot, un composant de confirmation de paiement que personne n'avait testé ralentit sous la charge, et certains utilisateurs voient des délais. L'équipe ne connaissait pas la limite de cette dépendance et n'avait pas été prévenue que le second lot serait plus gros. Elle ajoute le composant au prochain test de charge, demande au service de communication le volume de chaque lot plus tôt et convient de revoir le processus de prévision le trimestre suivant.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison affectent les trois par la conception et le changement. Incluez performance et capacité dans les revues de conception et dans la chaîne. Dites à l'exploitation les changements qui modifient la charge et interrogez le métier sur la demande attendue.

### Équipes de service et d'exploitation

Les équipes d'exploitation portent généralement la surveillance et les plans de capacité. Suivez la saturation et la tendance, gardez une vue des délais d'obtention des ressources et apportez des preuves à la planification. Aidez le métier à comprendre ce que coûte chaque niveau de disponibilité.

### Direction et gouvernance

Les dirigeants fixent le prix qu'ils sont prêts à payer pour la fiabilité et la rapidité. Demandez des objectifs qui correspondent aux besoins des utilisateurs, avec les coûts, et acceptez que la disponibilité parfaite ne soit pas un but sensé. Soutenez les tests avant les pointes connues et le budget de résilience là où cela compte.

### Clients et utilisateurs

Les clients et utilisateurs en ressentent le résultat. Dites au fournisseur quand vous attendez une charge supplémentaire, comme une campagne ou une échéance, et ce qui compte le plus pour vous en rapidité et en disponibilité. Signalez la lenteur autant que les pannes, car les deux sont des défaillances de votre côté.

## Modes d'échec courants

- **Des objectifs par habitude.** On exige « cinq neuf » sans demander pourquoi. À la place, déduisez les objectifs des besoins des utilisateurs et chiffrez-les.
- **Des pointes surprises.** Le métier connaît une campagne et l'informatique non. À la place, rencontrez-vous à intervalles réguliers et consignez la charge attendue.
- **Moyennes pour la performance.** Les valeurs aberrantes lentes passent inaperçues. À la place, regardez les percentiles élevés et la saturation.
- **Capacité ajoutée seulement après les ennuis.** La stratégie de retard est utilisée par accident. À la place, choisissez une stratégie de façon délibérée, d'après les délais.
- **Résilience non testée.** La redondance existe sur le papier. À la place, testez la défaillance de composants dans un environnement sûr.
- **Des changements sans contrôle de performance.** Une version dégrade la rapidité. À la place, ajoutez à la chaîne des contrôles pour les chemins qui comptent.
- **Oublier les dépendances.** Un composant tiers limite tout le service. À la place, listez les dépendances et testez-les.
- **Traiter la prévision comme fixe.** Les plans ignorent l'erreur. À la place, utilisez des fourchettes et comparez les prévisions aux réalisations.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Objectifs et coût | Les objectifs sont informels ou copiés | Certains services ont des objectifs énoncés | Les services ont des objectifs convenus de disponibilité, de performance et de charge avec des coûts connus | Objectifs et coûts sont revus au regard des résultats | Les objectifs sont fixés conjointement avec clients et fournisseurs et ajustés sur preuves |
| Demande et planification de la capacité | La capacité est ajoutée après les ennuis | Certaines équipes prévoient les pointes connues | La demande est recueillie auprès du métier selon un cycle, avec une stratégie de capacité énoncée | La précision des prévisions est suivie et les méthodes améliorées | La planification est coordonnée entre équipes, fournisseurs et métier |
| Tests | Peu de tests de charge ou de défaillance | Quelques tests avant les grands événements | Les tests de charge et de défaillance sont routiniers pour les services clés | Les résultats des tests orientent des améliorations suivies | Les tests sont partagés et coordonnés entre services dépendants |
| Surveillance et réponse | Les problèmes sont remarqués tard | Une partie de la saturation est suivie | Saturation, latence et erreurs sont surveillées avec des alertes avant les limites | Tendances et seuils sont ajustés à partir de données | Signaux et réponses sont coordonnés entre équipes et fournisseurs |

## Liste de contrôle

- [ ] Chaque service a des objectifs énoncés de disponibilité, de performance et de charge, avec leur source.
- [ ] Nous avons estimé ce que coûterait le niveau de disponibilité suivant.
- [ ] Nous savons comment la disponibilité est mesurée pour chaque service et ce qui compte comme indisponibilité.
- [ ] Nous avons choisi une stratégie de capacité pour chaque ressource clé.
- [ ] Nous rencontrons régulièrement le métier pour connaître la demande attendue.
- [ ] La saturation des ressources clés est surveillée avec des alertes avant les limites.
- [ ] Des tests de charge ont été menés avant la dernière pointe connue.
- [ ] La défaillance d'au moins un composant clé a été testée dans un environnement sûr.
- [ ] Les changements qui affectent la performance ou la capacité sont signalés en revue.
- [ ] Les prévisions sont comparées à la demande réelle chaque trimestre.

## Prompts d'IA

**Objectif : transformer des données mesurées en vue de la marge de capacité.**

```text
Voici les mesures de [ressource, par ex. « processeur de la base de données »] pour [service] sur [période] : [collez de vraies valeurs ou des chiffres de synthèse comme le pic quotidien et la moyenne].
Limite connue à laquelle la performance se dégrade, si vous la connaissez : [collez, ou écrivez « inconnue »].
Évolution attendue de la demande : [décrivez, avec la source].

En n'utilisant que mes données, décrivez la tendance et la marge qui semble exister au pic observé, en mots simples. Montrez comment la marge évoluerait si la demande croissait des montants que j'ai donnés. N'inventez ni limites ni taux de croissance. Dites quelles données supplémentaires rendraient l'analyse plus fiable et listez ce dont vous n'êtes pas sûr.
```

**Objectif : chiffrer un objectif de disponibilité plus élevé.**

```text
Aidez-moi à comparer le coût et la valeur du passage de l'objectif de disponibilité de [service] de [objectif actuel] à [objectif proposé].

Ce que vaut le service, avec la source (revenus, coût d'une panne ou autre valeur ; n'utilisez que les chiffres que je fournis) : [collez].
Ce que la disponibilité supplémentaire exigerait (redondance, personnel, outils), avec les estimations de coût que j'ai : [collez, ou écrivez « inconnu »].
Disponibilité mesurée actuelle : [collez].

Calculez l'indisponibilité non planifiée autorisée ou le nombre d'erreurs à chaque objectif en n'utilisant que les chiffres que j'ai donnés, montrez la différence et comparez avec la valeur et les coûts si je les ai fournis. Énoncez vos hypothèses. N'inventez ni coûts ni revenus. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un test de charge avant une pointe connue.**

```text
Planifiez un test de charge de [service] avant cet événement : [décrivez la pointe, avec la date et la source de la charge attendue].

Architecture, en bref : [décrivez composants, dépendances et fournisseurs].
Fourchette de charge attendue, avec la source : [collez].
Environnement de test disponible : [décrivez].

Donnez un plan avec : objectifs, quoi mesurer (distribution de la latence, erreurs, saturation), scénarios à exécuter, comment monter en charge, que faire des résultats et risques pour la production ou pour les fournisseurs (par exemple des accords à conclure avant de tester). N'inventez pas de chiffres. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un test de défaillance.**

```text
Aidez-moi à concevoir un test de défaillance contrôlé pour [service].

Ce que je veux apprendre : [par exemple si la disponibilité tient quand un nœud de base de données tombe].
Environnement du test : [décrivez, par ex. un environnement de test proche de la production].
Garanties disponibles : [surveillance, retour arrière, personnes sur place].

Décrivez un plan de test pas à pas : hypothèse, quoi casser et comment, quoi observer, qui est présent, ce qui arrête le test et comment consigner ce qui s'est passé. Tenez-le éloigné de la production à moins que je dise que c'est sûr. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour estimer les ressources dont un service a besoin dans le temps et choisir une stratégie pour les ajouter.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md) : à utiliser pour estimer la charge future sous forme de fourchette à partir des données passées et des plans métier.
- [load-testing](../../../../skills/load-testing/SKILL.md) : à utiliser pour concevoir des tests qui appliquent une demande réaliste avant une pointe.
- [performance-testing](../../../../skills/performance-testing/SKILL.md) : à utiliser pour vérifier la rapidité et l'usage des ressources sur les chemins critiques dans le cadre de la livraison.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md) : à utiliser pour tester si la disponibilité tient quand des composants tombent en panne.

## Sources principales

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google) : l'économie de la disponibilité, la mesure fondée sur les requêtes et le budget d'erreurs.
- **Capacity planning** (Wikipedia) : définitions et stratégies d'anticipation, de retard, d'alignement et d'ajustement.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google) : les signaux d'or, dont la saturation.
- **High availability** (Wikipedia) : contexte sur la conception de systèmes pour un fonctionnement continu.

## Références

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
