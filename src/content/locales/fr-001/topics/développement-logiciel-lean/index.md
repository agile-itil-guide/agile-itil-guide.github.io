# Développement logiciel lean

**Le développement logiciel lean applique au travail logiciel les idées lean d'éliminer le gaspillage, d'apprendre vite et d'optimiser le système entier, et il donne aux équipes de service une manière commune de voir où le temps et l'effort s'échappent du flux entre la demande et la valeur.**

## Pourquoi c'est important

Les méthodes agiles disent de livrer par petites étapes et d'apprendre. Le lean pose une question plus tranchante : où passe le temps ? Dans la plupart des organisations de services, le temps de travail effectif sur une demande est une petite part du temps écoulé. Le reste est de l'attente d'approbations, des transferts entre équipes, des reprises dues à des défauts et du travail que personne n'avait demandé. Le lean vous donne des mots et des outils pour voir ce gaspillage et l'éliminer.

Le lean met aussi l'accent sur le système entier. Une équipe qui accélère sa propre partie alors que la file avant ou après elle s'allonge n'a rien amélioré pour le client. Cette vision convient bien à la gestion des services. Un service est la somme de nombreuses équipes, outils et fournisseurs, et un retard n'importe où est un retard pour l'utilisateur. Le principe « optimiser l'ensemble » est un rappel permanent de regarder le flux de bout en bout.

Le lean est une source d'une grande partie de ce qui apparaît ailleurs dans ce guide. Kanban puise aux mêmes racines (voir Sujet 1.5 — Kanban), la gestion du flux de valeur applique la cartographie lean au travail numérique (voir Sujet 5.4 — Gestion du flux de valeur) et l'amélioration continue fait écho à l'habitude lean de petits gains constants (voir Sujet 3.15 — Amélioration continue). Ce sujet explique les idées et la manière de les utiliser sans les transformer en slogans.

## Concepts clés

### D'où vient le lean

Selon l'[article de Wikipédia sur la production au plus juste (lean manufacturing)](https://en.wikipedia.org/wiki/Lean_manufacturing), le lean est né du [système de production Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System). Après la Seconde Guerre mondiale, les fabricants japonais avaient peu de liquidités, d'espace ou de matières premières, et Taiichi Ohno et Shigeo Shingo ont redessiné le processus de Toyota autour de petites usines et de faibles stocks, en s'appuyant sur l'enseignement de W. Edwards Deming. John Krafcik a forgé le terme « lean » dans un article de 1988, et James Womack et Daniel Jones l'ont défini formellement dans leur livre de 1996 *Lean Thinking*.

Le terme « développement logiciel lean » vient du livre de 2003 *Lean Software Development : An Agile Toolkit* de Mary et Tom Poppendieck, selon l'[article de Wikipédia sur le développement logiciel lean](https://en.wikipedia.org/wiki/Lean_software_development). Le livre adapte au logiciel les principes de la production au plus juste et compare les outils lean aux pratiques agiles. Les conférences des Poppendieck dans les rencontres agiles ont aidé à faire entrer ces idées dans la communauté agile.

### Cinq principes de la pensée lean

Womack et Jones énoncent cinq principes de la pensée lean, tels que les consigne l'article sur la production :

1. **Valeur :** définir la valeur du point de vue du client.
2. **Flux de valeur :** identifier toute la séquence d'étapes qui crée cette valeur et remettre en cause celles qui n'en ajoutent aucune.
3. **Flux :** faire circuler les étapes restantes sans interruption.
4. **Flux tiré :** laisser la demande du client tirer le travail, au lieu de le pousser.
5. **Perfection :** continuer à s'améliorer, pour que le gaspillage continue d'être éliminé.

### Sept principes pour le logiciel

L'article de Wikipédia sur le développement logiciel lean énumère sept principes pour le logiciel :

| Principe | Ce qu'il demande | Dans le travail de service |
|---|---|---|
| **Éliminer le gaspillage** | Retirer tout ce qui n'ajoute pas de valeur pour le client | Abandonner les approbations qui ne refusent jamais, les rapports que personne ne lit et les fonctionnalités que personne n'utilise |
| **Amplifier l'apprentissage** | Raccourcir le cycle entre essayer quelque chose et apprendre comment cela s'est passé | Livrer de petits changements et observer ce que font les utilisateurs |
| **Décider le plus tard possible** | Retarder les engagements jusqu'à disposer de faits, tout en gardant des options ouvertes | Ne pas figer toute la conception future d'un service avant de savoir comment il est utilisé |
| **Livrer le plus vite possible** | Réduire le temps entre l'idée et la valeur ; une livraison rapide permet de voir et d'analyser plus tôt les résultats | Raccourcir le chemin des petits changements et des demandes courantes |
| **Responsabiliser l'équipe** | Laisser ceux qui font le travail prendre les décisions à son sujet | Donner au centre de services l'autorité de résoudre les problèmes courants sans escalade |
| **Intégrer la qualité** | Construire la qualité au fil du travail, au lieu de l'inspecter après coup | Tests automatisés, surveillance et guides d'exploitation clairs intégrés au travail |
| **Optimiser l'ensemble** | Améliorer le flux de bout en bout, pas la performance d'une partie | Mesurer le temps entre la demande et la résolution à travers les équipes, pas la file propre à chaque équipe |

L'article dit que ces principes ne réussissent que s'ils sont appliqués ensemble et avec un jugement sûr sur l'environnement. Il qualifie aussi de mythe la croyance que « la précipitation engendre le gaspillage », en soutenant qu'une livraison rapide aide les équipes à voir et à analyser plus tôt les résultats. Cette affirmation est un point de vue, pas une loi : la vitesse sans qualité intégrée produit bien du gaspillage, c'est pourquoi « intégrer la qualité » côtoie « livrer le plus vite possible ».

### Le gaspillage dans le travail logiciel et de service

Les sept gaspillages du lean (appelés *muda*) viennent de la liste de Shingo pour la production : stocks, surproduction, sur-traitement, transport, mouvements excessifs, attente et défauts. L'article sur le lean logiciel les transpose ainsi au logiciel :

| Gaspillage de production | Équivalent logiciel | Exemple dans une équipe de service |
|---|---|---|
| Stocks | Travail partiellement fait | Une longue liste de changements commencés mais pas terminés |
| Surproduction | Fonctionnalités en trop | Un rapport ou un service que personne n'a demandé |
| Sur-traitement | Processus en trop | Quatre approbations sur un changement peu risqué |
| Transport | Changements de tâche | Un ingénieur tiraillé entre incidents et travail de projet |
| Attente | Attente | Un ticket qui attend la file d'une autre équipe |
| Mouvements | Transferts | Une demande qui passe par cinq personnes |
| Défauts | Défauts | Un bogue qui cause des reprises et des incidents répétés |

Les termes japonais *mura* (irrégularité) et *muri* (surcharge) s'ajoutent parfois aux discussions sur le gaspillage. Les articles de Wikipédia consultés ici ne listent que les sept gaspillages ; utilisez donc ces termes supplémentaires avec précaution et définissez-les quand vous le faites.

### Cartographie du flux de valeur

L'article sur le lean logiciel nomme la cartographie du flux de valeur comme la technique pour trouver le gaspillage, qui est éliminé par tours successifs. Une carte montre chaque étape du chemin entre la demande et la valeur livrée, avec le temps pendant lequel le travail est effectivement traité et le temps pendant lequel il attend. Le résultat est souvent un choc : un chemin qui prend des semaines peut ne contenir que quelques heures de travail réel.

### Flux tiré, flux et kanban

Le principe de flux tiré du lean est derrière les limites de travail en cours de Kanban. L'article sur le logiciel décrit un développement au plus juste où le client énonce le résultat nécessaire et l'équipe organise ses propres tâches, tirant le travail selon sa capacité. Les cartes kanban sont une forme visible de ce flux tiré (voir Sujet 1.5 — Kanban).

### Kaizen : l'amélioration constante par petites touches

Kaizen signifie amélioration continue et incrémentale. L'article sur la production le fait remonter aux équipes d'amélioration de Toyota en 1936. Dans une équipe de service, il apparaît comme de petits changements faits souvent par les personnes les plus proches du travail, comme un modèle révisé, une nouvelle vérification automatique ou un transfert plus clair. Il diffère des grands programmes d'amélioration en ce qu'il n'attend jamais un cycle budgétaire.

### Limites du lean

Les articles consultés ne nomment aucune critique formelle, mais les limites pratiques sont bien connues. Le lean vient d'une production répétable, et le travail de la connaissance varie bien davantage. Compter le gaspillage peut réduire le mou dont une équipe a besoin pour faire face aux surprises, de sorte qu'une équipe pleinement chargée réagit lentement à un incident. Considérez le lean comme une lentille qui trouve le gaspillage et gardez de la capacité de réserve là où la variation est forte (voir Sujet 3.11 — Disponibilité, capacité et performance).

## Bonnes pratiques

1. **Définissez la valeur du côté du client.** Pour chaque service, écrivez ce que l'utilisateur obtient réellement et quand il l'obtient. Servez-vous-en pour juger chaque étape : ajoute-t-elle de la valeur pour l'utilisateur, ou ne sert-elle que notre propre processus ?
2. **Cartographiez le flux de valeur d'un type de demande réel.** Choisissez une demande ou un changement courant et suivez-le du premier contact à la livraison. Consignez le temps de travail et le temps d'attente à chaque étape. Une carte approximative dessinée en une heure est plus utile qu'une carte parfaite dessinée en un trimestre.
3. **Nommez les gaspillages que vous trouvez.** Utilisez les sept catégories comme liste de contrôle : travail partiellement fait, fonctionnalités en trop, processus en trop, changements de tâche, attente, transferts, défauts. Les nommer facilite d'en discuter sans accuser personne.
4. **Attaquez d'abord la plus longue attente.** Le plus grand retard de la carte se situe généralement entre les étapes, pas dedans. Le réduire vaut généralement mieux que peaufiner une étape déjà rapide.
5. **Limitez le travail en cours.** Terminer le travail est plus rapide que le jongler. Plafonnez le nombre d'éléments ouverts par équipe et observez ce qui arrive au temps que prend chacun.
6. **Intégrez la qualité.** Ajoutez des vérifications au moment du travail, comme les tests automatisés, la revue par les pairs et la surveillance avant mise en production, pour que les défauts soient trouvés tôt. Inspecter à la fin est plus lent et plus coûteux.
7. **Retardez les décisions que vous ne pouvez pas encore bien prendre.** Gardez les options ouvertes jusqu'à disposer de faits, mais fixez une date à laquelle vous déciderez. Cela évite à la fois l'engagement précoce dans une mauvaise conception et l'indécision sans fin.
8. **Responsabilisez les personnes les plus proches du travail.** Laissez les analystes du centre de services, les ingénieurs d'astreinte et les développeurs prendre des décisions dans des limites claires. Énoncez les limites, comme les seuils de dépense ou de risque, et revoyez-les après les incidents.
9. **Regardez l'ensemble, pas la partie.** Mesurez le temps de bout en bout entre la demande et la résolution et discutez-en avec toutes les équipes concernées. Un changement qui aide une équipe et en ralentit une autre n'est pas une amélioration.
10. **Faites de l'amélioration un geste petit, fréquent et local.** Encouragez chaque équipe à faire une petite amélioration toutes les semaines ou deux et à partager ce qu'elle a appris. Consignez le changement et son résultat.
11. **Gardez du mou là où la variation est forte.** Ne remplissez pas chaque heure d'une équipe d'astreinte. Laissez de la capacité pour les surprises et jugez-la à la rapidité avec laquelle l'équipe se rétablit quand quelque chose tourne mal.
12. **Utilisez le lean avec d'autres pratiques.** Combinez les cartes de flux de valeur avec les mesures de flux de Kanban et avec la gestion des problèmes pour les défauts récurrents (voir Sujet 3.3 — Gestion des problèmes).

## Questions à discuter avec votre équipe

**Si nous suivions une demande courante du début à la fin, quelle part du temps écoulé serait du travail réel ?**

Choisissez une demande typique et rassemblez les dates de chaque étape. Marquez le temps où quelqu'un y travaillait et le temps où elle attendait dans une file. La proportion est souvent un choc. Demandez aux gens où ils s'attendaient à voir les attentes et où elles étaient. L'animateur doit résister d'abord aux solutions et demander au groupe de convenir de ce que montre la carte.

**Lequel des sept gaspillages voyons-nous le plus souvent dans notre travail quotidien ?**

Donnez la liste aux gens et demandez un exemple récent de chacun. Attendez-vous à ce que le travail partiellement fait, les changements de tâche, l'attente et les transferts reviennent souvent. Demandez lesquels l'équipe peut changer seule et lesquels nécessitent d'autres équipes ou des responsables. Terminez en choisissant un gaspillage à réduire ce mois-ci.

**Que faisons-nous que nos clients ne regretteraient pas si nous l'arrêtions ?**

Listez rapports, réunions, formulaires et approbations. Pour chacun, demandez qui l'utilise et ce qui se passerait s'il s'arrêtait. Certains seront nécessaires pour l'audit ou la sûreté, ce qui est une bonne raison. D'autres s'avéreront n'être que de l'habitude. Chargez quelqu'un de vérifier chaque élément douteux avant de le retirer.

**Où inspectons-nous la qualité à la fin au lieu de l'intégrer ?**

Examinez vos processus de mise en production, de changement et d'incident à la recherche de contrôles en fin de ligne. Demandez quels défauts ces contrôles trouvent et quand ils auraient pu être trouvés plus tôt. Les réponses typiques incluent les tests après la fin du développement et la revue de documents après coup. Choisissez un contrôle à avancer et décrivez comment vous saurez s'il a aidé.

**Qui peut prendre des décisions dans notre équipe sans demander, et qui devrait le pouvoir ?**

Demandez aux gens de lister les cinq dernières décisions qu'ils voulaient prendre et n'ont pas pu, et pourquoi. Cherchez des schémas, comme des plafonds de dépense, des approbations de changement ou des arbitrages de priorité. Demandez ce qui permettrait de rapprocher du travail l'une de ces décisions en toute sécurité, comme un garde-fou ou une revue a posteriori. Ne poussez pas vers un oui ; le but est de trouver ce que les gens pensent nécessaire.

**Si tout ce que nous faisons maintenant allait plus vite, qu'est-ce qui casserait en premier ?**

Cette question teste ensemble « livrer le plus vite possible » et « intégrer la qualité ». Demandez où un flux plus rapide surchargerait une équipe, un outil ou une personne. Les réponses typiques sont les tests, les approbations et la charge d'astreinte. Considérez les réponses comme les prochaines choses à améliorer. Rappelez-vous que le lean valorise le flux de tout le système ; le goulot d'étranglement est donc l'endroit où investir.

## En pratique : un exemple d'ITIL agile

Le service informatique d'une administration fiscale nationale exploite un service interne permettant au personnel de demander l'accès à des logiciels. Une demande typique prend environ trois semaines, et le personnel se plaint bruyamment. L'équipe de cinq personnes qui traite les demandes pense travailler dur et est surprise par la plainte.

Un responsable anime une séance de cartographie du flux de valeur avec l'équipe, le groupe sécurité et deux utilisateurs métier. Ensemble, ils retracent dix demandes récentes. Chaque demande passe par huit étapes : dépôt du formulaire, approbation du supérieur hiérarchique, approbation du propriétaire des données, revue de sécurité, vérification de licence, affectation du ticket, installation et confirmation. La carte montre que le travail réel prend environ une heure, et que presque toutes les trois semaines sont de l'attente entre les étapes, surtout pour les deux approbations et la revue de sécurité. Dans trois cas sur dix, la demande a été renvoyée à l'utilisateur à cause d'un champ manquant dans le formulaire.

Le groupe convient de trois changements. Le formulaire reçoit des champs obligatoires et un court guide, ce qui supprime les renvois. Les demandes portant sur une courte liste d'applications courantes et peu risquées reçoivent une seule approbation du supérieur hiérarchique, le propriétaire des données étant informé. Le groupe sécurité accepte de revoir chaque semaine un échantillon de ces demandes, plutôt que chaque demande avant l'installation. Après deux mois, le délai typique tombe à environ une semaine. Une difficulté subsiste : les demandes d'applications sensibles prennent encore trois semaines, et le groupe sécurité note que l'échantillonnage a attrapé deux demandes qui auraient dû être refusées. Ils ajustent la liste des applications éligibles à l'approbation rapide et décident de la revoir chaque trimestre.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison peuvent utiliser le lean pour regarder au-delà de leur propre sprint ou tableau. Cartographiez le chemin de l'idée aux mains de l'utilisateur, tests, revue de sécurité et approbations de mise en production compris, et trouvez où le travail attend. Traitez le travail inachevé comme un gaspillage et préférez finir à commencer.

### Équipes de service et d'exploitation

Les équipes d'exploitation voient le gaspillage tous les jours : incidents répétés, transferts entre niveaux et demandes qui rebondissent. Utilisez des cartes pour montrer où le travail attend et la gestion des problèmes pour supprimer les causes des répétitions. Plaidez pour une capacité de réserve en montrant ce qu'il advient du flux quand chaque heure est planifiée.

### Direction et gouvernance

Les dirigeants façonnent le système qui crée la plus grande part du gaspillage : règles d'approbation, cycles de financement et rapports. Demandez à vos équipes où ces règles coûtent le plus de temps et de quel risque chacune protège. Soyez prêt à remplacer un contrôle par une vérification plus légère qui répond au même but.

### Clients et utilisateurs

Les clients définissent la valeur dans la pensée lean, et ils ressentent le gaspillage comme un retard. Attendez-vous à ce qu'on vous demande ce dont vous avez réellement besoin et pour quand. Dites à l'équipe quelle partie d'un service compte le plus pour vous, car cela oriente l'effort. En retour, vous pouvez vous attendre à des attentes plus courtes et plus prévisibles.

## Modes d'échec courants

- **Réduire la capacité au nom du gaspillage.** Les équipes tournent à pleine charge et ne peuvent pas faire face aux surprises. À la place, gardez du mou là où la variation est forte et jugez la rapidité de rétablissement de l'équipe.
- **Cartographier sans agir.** La carte du flux de valeur va sur un mur et rien ne change. À la place, choisissez la plus grande attente et convenez d'un changement avec un responsable avant la fin de la séance.
- **Optimiser une seule équipe.** Un gain local déplace la file ailleurs. À la place, mesurez le temps de bout en bout et convenez des changements avec toutes les équipes du flux.
- **Retirer des contrôles sans les comprendre.** Une étape qui ressemblait à du gaspillage protégeait d'un vrai risque. À la place, demandez ce que chaque étape protège et remplacez-la par une vérification plus légère quand vous le pouvez.
- **Utiliser les mots du lean comme des slogans.** Les gens disent « gaspillage » pour écarter le travail de leurs collègues. À la place, utilisez les termes pour décrire le flux et gardez la conversation sur le système.
- **Pousser la vitesse au détriment de la qualité.** Une livraison plus rapide produit plus de défauts et de reprises. À la place, traitez « intégrer la qualité » comme une condition préalable à la vitesse.
- **Appliquer des chiffres de production au travail de la connaissance.** Les objectifs d'une usine ne conviennent pas à un travail variable. À la place, utilisez le lean comme un moyen de voir et de questionner, et fixez les mesures d'après vos propres données.
- **Traiter le lean comme un projet ponctuel.** Les gains s'effacent quand l'attention se déplace. À la place, faites des petites améliorations une partie de la routine de chaque équipe.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Voir le gaspillage | Le gaspillage est ressenti mais pas décrit | Certaines équipes cartographient leur propre travail | Les équipes utilisent des catégories de gaspillage partagées et des cartes de flux de valeur | L'attente et les reprises sont mesurées le long du flux de valeur | Cartes et mesures traversent équipes et fournisseurs |
| Flux et flux tiré | Le travail est poussé et démarré en bloc | Certaines équipes limitent le travail en cours | Les règles de flux tiré et les limites sont la norme | Les mesures de flux orientent les changements de limites et de politiques | Le flux est coordonné sur tout le flux de valeur |
| Intégrer la qualité | La qualité est inspectée à la fin | Certaines équipes testent tôt et relisent le travail | Les vérifications automatisées et les revues intégrées sont la norme | Les taux de défauts échappés sont suivis et réduits | Les pratiques de qualité sont partagées et améliorées entre équipes |
| Amélioration continue | L'amélioration suit les crises | Certaines équipes font de petits changements réguliers | Chaque équipe a une routine d'amélioration régulière | Les améliorations sont suivies et leur effet vérifié | Les améliorations se propagent routinièrement entre équipes et fournisseurs |

## Liste de contrôle

- [ ] Nous avons défini ce que la valeur signifie pour au moins un service du côté de l'utilisateur.
- [ ] Nous avons cartographié le flux de valeur d'un type de demande courant, avec temps de travail et temps d'attente.
- [ ] L'équipe sait nommer les sept gaspillages et donner un exemple récent de chacun.
- [ ] Le travail en cours est limité et le travail inachevé est visible.
- [ ] Les contrôles de qualité ont lieu pendant le travail aussi bien qu'à la fin.
- [ ] Nous avons choisi au moins une attente à réduire, avec un responsable et une date.
- [ ] L'équipe a des limites claires pour les décisions qu'elle peut prendre sans demander.
- [ ] Nous mesurons le temps de bout en bout d'au moins un flux entre équipes.
- [ ] Nous gardons de la capacité de réserve pour les surprises là où la demande varie.
- [ ] Chaque équipe fait et consigne une petite amélioration à un rythme régulier.

## Prompts d'IA

**Objectif : analyser un flux de valeur à partir des durées que vous fournissez.**

```text
Aidez-moi à analyser un flux de valeur pour [type de demande, par ex. « les demandes d'accès à des logiciels »].

Voici les étapes dans l'ordre, avec qui accomplit chaque étape, combien de temps on y a réellement travaillé et combien de temps l'élément a attendu avant et après. Utilisez de vrais chiffres tirés de quelques cas récents : [collez sous forme de tableau, avec une ligne par étape et une colonne par cas].

Calculez, en n'utilisant que mes chiffres, le temps total écoulé, le temps de travail total et la part du temps passée à attendre. Identifiez les trois plus longues attentes. Pour chaque attente, demandez de quoi l'étape protège et suggérez une alternative plus légère. N'inventez pas de données. Si des chiffres manquent, demandez-les-moi d'abord, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : classer des exemples de gaspillage tirés du travail de votre équipe.**

```text
Voici une liste de choses qui frustrent notre équipe ou nos clients : [collez 8 à 12 exemples courts et factuels].

Classez chacun selon les sept gaspillages du développement logiciel lean : travail partiellement fait, fonctionnalités en trop, processus en trop, changements de tâche, attente, transferts et défauts. Si un élément ne rentre dans aucune catégorie, dites-le. Donnez une phrase de raisonnement par élément, fondée uniquement sur ce que j'ai écrit. Dites ensuite quelles deux catégories semblent les plus fréquentes dans cette liste et suggérez deux questions que l'équipe devrait discuter. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : tester si retirer un contrôle est sans danger.**

```text
Nous envisageons de retirer ou de simplifier ce contrôle : [décrivez l'approbation, le rapport ou l'étape].

Ce que nous croyons être son but : [décrivez le but, ou écrivez « inconnu »].
Qui utilise son résultat : [listez personnes ou équipes, ou écrivez « inconnu »].
Règles que nous savons applicables (audit, sécurité, juridique), avec le texte réel si vous l'avez : [collez le texte, ou écrivez « aucune connue »].

Listez les questions auxquelles nous devons répondre avant de le modifier. Décrivez deux moyens plus légers d'atteindre son but, et une manière de vérifier après le changement que rien de pire ne s'est produit. N'affirmez pas qu'une loi ou une norme s'applique à moins que j'en aie collé le texte. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un atelier de cartographie du flux de valeur.**

```text
Planifiez un atelier de cartographie du flux de valeur de 90 minutes pour [nombre] personnes issues de [équipes ou rôles]. Nous voulons examiner [type de demande ou service].

Incluez : un ordre du jour minuté, qui doit assister, quelles données apporter (n'utilisez que des données que nous avons vraiment), comment dessiner la carte étape par étape, comment marquer le temps de travail et le temps d'attente, et une étape finale qui consigne un changement convenu avec un responsable et une date. Restez libre de tout outil précis. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md) : à utiliser pour cartographier les étapes, le temps de travail et le temps d'attente d'une demande du début à la fin.
- [kaizen](../../../../skills/kaizen/SKILL.md) : à utiliser pour planifier de petites améliorations continues une fois le gaspillage trouvé.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour analyser comment le travail circule entre les rôles et repérer transferts et retards.
- [kanban](../../../../skills/kanban/SKILL.md) : à utiliser pour appliquer le flux tiré et les limites de travail en cours au flux que vous avez cartographié.
- [six-sigma](../../../../skills/six-sigma/SKILL.md) : à utiliser quand les défauts et la variation, pas seulement l'attente, sont le principal problème et que vous avez besoin d'une méthode fondée sur les données pour les réduire.

## Sources principales

- **Lean software development** (Wikipedia) : les sept principes, la transposition des gaspillages et des liens pour aller plus loin.
- **Lean manufacturing** (Wikipedia) : l'histoire du lean chez Toyota, les gaspillages et les cinq principes de la pensée lean.
- **Lean Software Development : An Agile Toolkit** (Mary et Tom Poppendieck, 2003) : le livre qui a fait entrer les idées lean dans la communauté agile.
- **Lean Thinking** (James Womack et Daniel Jones, 1996) : l'énoncé formel des cinq principes du lean.

## Références

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
