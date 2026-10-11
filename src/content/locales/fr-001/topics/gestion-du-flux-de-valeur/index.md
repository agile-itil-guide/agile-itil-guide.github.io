# Gestion du flux de valeur

**La gestion du flux de valeur examine tout le chemin de la demande à la valeur, mesure où le travail attend et améliore le flux entre les équipes, car les plus gros retards d'une organisation de services se trouvent généralement entre les équipes, non à l'intérieur.**

## Pourquoi c'est important

La plupart des équipes mesurent leur propre travail : tickets clos, récits terminés, changements livrés. Ces chiffres peuvent paraître bons pendant que le client attend des semaines. La raison est que la plus grande part du temps écoulé d'une demande typique se passe à attendre, dans des files, pour des approbations, entre équipes. Une équipe qui accélère sa propre étape peut ne rien changer pour la personne qui a fait la demande.

La pensée lean a une méthode pour voir cela : la cartographie du flux de valeur, qui dessine chaque étape depuis le début d'un processus jusqu'au client et consigne le temps et le volume à chaque stade. ITIL 4 a sa propre idée d'un flux de valeur, un ensemble d'activités qui créent et livrent un service, combinant des activités de la chaîne de valeur dans des ordres différents (voir Sujet 2.6 — La chaîne de valeur des services). Les deux s'accordent. L'idée d'ITIL dit ce qu'est un flux, et la méthode lean montre comment en mesurer et en améliorer un.

La gestion du flux de valeur va au-delà d'un atelier de cartographie ponctuel. Elle signifie gérer en continu le flux de travail, avec des mesures partagées, un responsable nommé et des revues régulières qui incluent chaque équipe du flux. La liste de capacités de DORA inclut la visibilité du travail dans le flux de valeur et les limites du travail en cours, et ses orientations sur les limites décrivent le fait de rendre visible tout le travail, y compris celui hors de l'équipe. Ce sujet s'appuie sur l'article de Wikipédia sur la cartographie du flux de valeur, sur DORA et sur le Guide Kanban, et indique où les sources sont muettes.

## Concepts clés

### Ce qu'est un flux de valeur

Un **flux de valeur** est la séquence d'étapes par lesquelles une demande devient valeur livrée. L'[article de Wikipédia sur la cartographie du flux de valeur](https://en.wikipedia.org/wiki/Value-stream_mapping) décrit la méthode comme une technique de gestion lean qui analyse l'état actuel et conçoit un état futur pour les événements qui mènent un produit ou un service du début d'un processus au client. Dans la vision d'ITIL, un flux de valeur est un ensemble précis d'activités qui créent et livrent un service ou un produit particulier aux clients (voir Sujet 2.6 — La chaîne de valeur des services).

Exemples dans une organisation de services : traiter un incident du signalement au rétablissement, livrer un changement de l'idée à la production, accueillir un nouveau client ou satisfaire une demande d'accès.

### Cartographie du flux de valeur

L'article dit que la carte visuelle obtenue montre chaque étape critique et quantifie le temps et le volume à chaque stade. Il décrit deux cartes : une **carte de l'état actuel**, construite en observant et en suivant le flux réel de matières et d'information, et une **carte de l'état futur**, montrant le processus idéal après améliorations. L'état actuel doit être construit en premier. L'article cite *Learning to See* de Mike Rother et John Shook (Lean Enterprise Institute, 1999) comme source. Il liste le développement logiciel, le développement de produit, la gestion de projet et les processus administratifs et de bureau comme domaines d'usage, et mentionne deux approches centrées sur le logiciel par Ali et ses collègues : l'analyse des artefacts de développement et l'analyse du flux d'information.

L'article ne définit ni le délai, ni le temps de traitement, ni le pourcentage complet et exact, ne liste pas de symboles et ne discute d'aucune critique. La page de DORA sur la livraison continue renvoie toutefois à la cartographie du flux de valeur comme moyen d'exposer les goulots en comparant le temps écoulé au temps à valeur ajoutée et en mesurant le pourcentage complet et exact (%C/A). Les termes ci-dessous sont l'usage courant :

| Terme | Sens, dans l'usage courant |
|---|---|
| **Délai (lead time)** | Temps total écoulé du début d'une demande à la livraison |
| **Temps de traitement** (ou temps de contact) | Temps pendant lequel quelqu'un travaille réellement sur la demande |
| **Temps d'attente** | Temps pendant lequel la demande reste inactive entre les étapes |
| **Pourcentage complet et exact (%C/A)** | Part du travail arrivant à une étape qui ne nécessite aucune correction ni information manquante |
| **Efficacité du flux** | Temps de traitement divisé par le délai, en pourcentage |

L'efficacité du flux est un simple ratio calculé pour l'illustration de ce guide, et les sources lues ne la définissent pas.

### Mesures du flux

Le Guide Kanban nomme quatre mesures du flux (voir Sujet 1.5 — Kanban) : le **travail en cours** (éléments commencés mais non terminés), le **débit** (éléments terminés par période), l'**âge de l'élément** (temps écoulé depuis le début d'un élément inachevé) et le **temps de cycle** (temps entre le début et la fin pour un élément terminé). Elles fonctionnent au niveau du flux de travail d'une équipe. La gestion du flux de valeur applique les mêmes idées entre équipes : mesurez le temps écoulé de la demande à la réception par le client, non à partir du moment où une seule équipe la prend.

Les mesures de livraison logicielle de DORA, comme le délai de livraison d'un changement, s'appliquent à une tranche du flux, de la validation à la production (voir Sujet 3.4 — Habilitation des changements). La partie antérieure, de l'idée à la validation, fait aussi partie du flux de valeur et comporte souvent les plus longues attentes.

### Limites du travail en cours

La page de DORA sur les limites du travail en cours (WIP) les décrit comme des plafonds sur le nombre d'éléments pouvant se trouver à chaque étape d'un flux de travail. Elle dit que la recherche de DORA ne relie les limites de WIP à une meilleure performance de livraison logicielle qu'en combinaison avec d'autres capacités, comme les affichages visuels et les boucles de retour de la surveillance, et ne donne aucune taille d'effet. Ses conseils de mise en œuvre incluent rendre tout le travail visible, y compris celui hors de l'équipe, fixer chaque limite selon la capacité de l'équipe, tenir les limites fermement et ne pas les relever quand des gens sont inactifs, tirer le travail seulement quand une place s'ouvre, suivre le délai et sa variabilité, réduire les transferts et abaisser les limites graduellement pour exposer la contrainte suivante. Les pièges qu'elle nomme incluent l'oubli du travail en amont et en aval, qui mène à l'optimisation locale, et des limites trop hautes.

### Voir le flux entier

Le piège de l'« optimisation locale » est le piège central. Un flux de cinq équipes a cinq files. Si une équipe double sa vitesse, le délai du flux peut à peine changer, car les autres attendent toujours. La gestion du flux de valeur cherche la **contrainte**, l'étape qui limite l'ensemble, et l'améliore en premier (voir Sujet 1.7 — Développement logiciel lean sur l'optimisation de l'ensemble).

### Responsabilité et gouvernance

Un flux traverse des équipes ; il faut donc quelqu'un de responsable de l'ensemble. Un responsable de flux de valeur (ou un petit groupe) détient la carte, les mesures et la liste d'améliorations, et réunit les équipes. Sans responsable, personne ne répond du flux et les améliorations restent dans les frontières des équipes. Cela rejoint la propriété des produits et des services (voir Sujet 5.5 — Propriété des produits et des services).

### Outils

Les outils logiciels de gestion du flux de valeur collectent des données depuis la billetterie, le contrôle de source et les chaînes de livraison pour montrer le flux dans la chaîne d'outils. Les sources lues pour ce guide ne discutent pas de tels outils. Si vous en évaluez, vérifiez de quelles données il a besoin, quelle est son exactitude et si les mesures répondent à une question que vous avez. Une carte grossière dessinée à la main avec les équipes concernées est un bon point de départ et révèle souvent plus qu'un tableau de bord.

### Limites

L'article de Wikipédia ne discute d'aucune critique, et la page de DORA sur le WIP ne donne ni tailles d'effet ni valeurs cibles. Les mises en garde pratiques, offertes comme expérience, incluent une cartographie qui ne mène jamais à un changement, des mesures utilisées pour classer les équipes et des cartes dessinées de mémoire de managers au lieu de l'observation d'éléments réels.

## Bonnes pratiques

1. **Choisissez un flux qui compte.** Choisissez un flux qui importe aux utilisateurs, comme un changement arrivant en production ou une demande d'accès. Un flux étroit et réel enseigne plus qu'un flux large et abstrait.
2. **Cartographiez à partir d'éléments réels.** Suivez plusieurs éléments récents du début à la fin et consignez les dates réelles, non le document de processus. L'observation vaut mieux que le souvenir, comme le suggère l'accent de l'article sur l'observation et le suivi du flux réel.
3. **Consignez le temps et l'attente à chaque étape.** Pour chaque étape, notez le temps de travail et l'attente qui la précède. Les attentes sont généralement l'histoire.
4. **Incluez tout le monde dans le flux.** Invitez des gens de chaque équipe qui touche l'élément, approbateurs et fournisseurs compris. Cartographiez ensemble, pour que personne ne soit surpris par le résultat.
5. **Calculez le délai, le temps de traitement et l'efficacité du flux.** Comparez le temps écoulé au temps de travail et regardez la part d'attente. Servez-vous des chiffres pour lancer des conversations.
6. **Regardez l'exactitude.** Demandez à quelle fréquence le travail arrive incomplet ou faux à une étape, nécessitant une reprise. Une étape au faible pourcentage complet et exact cause du retard en aval.
7. **Trouvez la contrainte.** Identifiez l'étape qui limite l'ensemble du flux et améliorez-la en premier. Améliorer les autres étapes apporte peu.
8. **Dessinez l'état futur.** Concevez avec les équipes un meilleur flux, non un flux idéal, et choisissez un ou deux premiers changements. Convenez de responsables et de dates.
9. **Limitez le travail en cours.** Plafonnez ce que chaque étape contient, fixez les limites selon la capacité, gardez-les quand des gens sont inactifs et abaissez-les graduellement, comme le décrivent les orientations de DORA.
10. **Rendez le travail visible.** Montrez le flux sur un tableau ou une carte partagés qui incluent le travail hors de toute équipe. Mettez-le à jour quand les éléments avancent.
11. **Nommez un responsable de flux.** Choisissez une personne responsable de la performance du flux, capable de réunir les équipes et de porter les améliorations aux dirigeants.
12. **Revoyez régulièrement.** Tenez une courte revue mensuelle du délai, des attentes et de la liste d'améliorations. Redessinez la carte après des changements significatifs.

## Questions à discuter avec votre équipe

**Si nous suivions une demande du premier contact à la réception par le client, combien de temps cela prendrait-il, et quelle part est du temps de travail ?**

Choisissez un élément récent et rassemblez les dates. Demandez aux gens de deviner la réponse avant de regarder. La supposition est généralement optimiste. Calculez la part de temps de travail. L'animateur peut demander où la plus grande attente s'est produite et à qui elle appartenait. Prenez-la comme première cible.

**Qui, dans le flux, n'avons-nous jamais rencontré ?**

Listez les équipes, approbateurs et fournisseurs qu'un élément touche. Marquez ceux que l'équipe n'a jamais rencontrés. Demandez ce qu'on gagnerait à les inviter à une séance de cartographie. Réponses typiques : comprendre pourquoi ils attendent, ou ce dont ils ont besoin pour travailler plus vite. Invitez-en un.

**Que remettons-nous d'incomplet, et que recevons-nous d'incomplet ?**

Demandez des exemples de travail revenu pour reprise. Notez quels transferts causent le plus de retours et ce qui manque. C'est l'idée du pourcentage complet et exact en termes simples. Convenez d'une courte liste de contrôle pour un transfert.

**Où est la contrainte de notre flux, et que se passe-t-il si nous accélérons autre chose ?**

Discutez de quelle étape a la plus longue file. Demandez ce qui arriverait au temps de bout en bout si une autre étape doublait de vitesse. L'idée est de voir qu'améliorer une non-contrainte change peu. Choisissez de travailler sur la contrainte.

**Sur combien de choses chaque équipe travaille-t-elle à la fois, et que se passerait-il si nous plafonnions ?**

Comptez le travail en cours par équipe. Discutez de ce que signifierait cesser de commencer. Craintes typiques : quelque chose d'important attendra. Bénéfices typiques : les choses se terminent. Convenez d'un plafond d'essai pour une équipe et d'un moyen de juger le résultat.

**Qui est responsable de ce flux dans son ensemble ?**

Demandez à l'équipe de nommer la personne. Si personne, discutez de qui pourrait l'être et de quelle autorité elle aurait besoin. L'animateur peut noter que les améliorations entre équipes se produisent rarement sans responsable. Proposez un nom et portez-le au dirigeant concerné.

## En pratique : un exemple d'ITIL agile

Un régulateur national de l'environnement délivre des permis à des exploitants industriels. Les demandeurs se plaignent qu'un permis typique prend environ quatre mois, et le groupe des services numériques du régulateur, composé de douze personnes, reçoit la demande de l'accélérer. Le groupe avait déjà construit un formulaire de demande en ligne plus rapide, mais le temps écoulé a à peine changé.

Le chef du groupe réunit des gens de chaque partie du flux : l'équipe des demandes, deux examinateurs techniques, un juriste, le bureau des redevances et l'équipe qui émet les documents du permis. Ils cartographient six permis récents de la date de dépôt à la date où le permis est parvenu au demandeur. Les résultats sont sobres. Le temps total était d'environ 110 jours, et le temps de travail d'environ 12. La plus longue attente se trouvait dans la file d'examen technique, où les demandes attendaient en moyenne 40 jours avant que quiconque les ouvre, et environ un tiers des demandes arrivaient avec des informations manquantes qu'il fallait redemander. Le bureau des redevances et l'équipe des documents ajoutaient chacun une semaine d'attente pour un traitement par lots.

Le groupe convient de trois changements. Le formulaire en ligne vérifie les éléments couramment manquants avant le dépôt. L'équipe d'examen technique fixe une limite de travail en cours et une règle d'ouvrir chaque demande dans les cinq jours ouvrables pour vérifier qu'elle est complète. Le bureau des redevances et l'équipe des documents passent de lots hebdomadaires à un traitement quotidien. Ils nomment le chef des services numériques responsable du flux et revoient le délai chaque mois. Au bout de trois mois, le délai médian est d'environ 70 jours, et la part des demandes renvoyées pour informations manquantes diminue. Des problèmes subsistent. L'équipe d'examen dit que la limite rend plus difficile le traitement de demandes grandes et complexes, et le juriste est un point unique de retard que personne n'avait compté. Le responsable du flux demande à l'équipe d'examen de séparer les cas complexes dans leur propre voie, et travaille avec le service juridique sur un second examinateur.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison ne voient qu'une partie du flux. Participez aux séances de cartographie, partagez vos données et regardez ce qui se passe avant que le travail vous parvienne et après votre mise en production. Traitez le délai du flux comme un but partagé, pas seulement votre propre étape.

### Équipes de service et d'exploitation

Les équipes d'exploitation détiennent souvent les files les plus longues : accès, approbations, environnements, support. Soyez ouvert sur votre capacité et vos contraintes. Servez-vous de la carte pour demander aux équipes en amont des entrées complètes et pour expliquer vos priorités.

### Direction et gouvernance

Les dirigeants peuvent lever des contraintes entre équipes que les équipes ne peuvent pas lever. Nommez des responsables de flux, demandez le délai de bout en bout et donnez suite aux améliorations que la carte suggère. Évitez d'utiliser les mesures du flux pour classer les équipes, ce qui décourage des données honnêtes.

### Clients et utilisateurs

Les clients et utilisateurs vivent le flux entier. Dites à l'équipe où les retards font mal, donnez une information complète dès le début et rejoignez une séance de cartographie si on vous y invite. Votre vision du moment où la demande s'est vraiment terminée est la vraie fin du flux.

## Modes d'échec courants

- **Optimiser une seule équipe.** Un gain local ne change rien de bout en bout. À la place, trouvez la contrainte et traitez-la.
- **Cartographier de mémoire.** La carte reflète ce que croient les managers. À la place, suivez des éléments réels avec des dates réelles.
- **Voix manquantes.** Fournisseurs et approbateurs ne sont pas dans la pièce. À la place, incluez chaque équipe du flux.
- **Une carte et aucun changement.** L'affiche reste au mur. À la place, convenez d'un ou deux changements avec responsables avant la fin de la séance.
- **Pas de responsable.** Personne ne répond du flux. À la place, nommez un responsable de flux ayant l'autorité de réunir.
- **Des mesures comme classements.** Les équipes cachent les attentes. À la place, utilisez les mesures pour comprendre le flux et discutez-en ouvertement.
- **Des limites qui bougent.** Les limites de WIP sont relevées dès que des gens sont inactifs. À la place, tenez les limites et corrigez les causes, comme le conseille DORA.
- **L'outil d'abord.** Un tableau de bord est acheté avant que les questions soient connues. À la place, commencez par une carte dessinée à la main et ajoutez des outils au besoin.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Voir le flux | Le flux est jugé au ressenti | Certaines équipes cartographient leurs propres étapes | Les flux clés sont cartographiés de bout en bout à partir d'éléments réels, avec toutes les équipes | Délai, attentes et exactitude sont mesurés et revus | Les flux sont cartographiés et mesurés entre organisations et fournisseurs |
| Améliorer le flux | Les équipes accélèrent leurs propres étapes | Quelques changements entre équipes sont essayés | Une liste d'améliorations centrée sur la contrainte par flux, avec responsables | Les améliorations sont liées au délai mesuré et vérifiées | L'amélioration des flux est routinière et partagée entre flux |
| Limites et visibilité | Le travail en cours est illimité et caché | Certaines équipes utilisent tableaux et limites | Le travail est visible entre équipes avec des limites convenues | Les limites sont ajustées à l'aide des données de délai | Limites et visibilité sont coordonnées entre flux |
| Responsabilité et gouvernance | Personne ne possède le flux | Des coordinateurs informels existent | Chaque flux clé a un responsable nommé et une revue régulière | Les responsables répondent de résultats mesurés | Les responsables collaborent entre flux pour optimiser l'ensemble |

## Liste de contrôle

- [ ] Nous avons choisi un flux important et l'avons cartographié à partir d'éléments réels.
- [ ] La carte montre temps de travail et temps d'attente à chaque étape.
- [ ] Des gens de chaque équipe du flux ont participé à la cartographie.
- [ ] Nous connaissons le délai de bout en bout et la part d'attente.
- [ ] Nous avons identifié la contrainte et choisi un ou deux changements.
- [ ] Le travail en cours est visible entre équipes, avec des limites convenues aux étapes clés.
- [ ] Une personne nommée est responsable du flux.
- [ ] Une courte revue régulière examine le délai, les attentes et la liste d'améliorations.
- [ ] Nous suivons à quelle fréquence le travail arrive incomplet à un transfert.
- [ ] Les mesures du flux ne servent pas à classer les équipes.

## Prompts d'IA

**Objectif : calculer le délai et l'efficacité du flux à partir d'éléments réels.**

```text
J'ai des données de chronométrage pour [nombre] éléments récents du flux [nom]. Pour chaque élément et chaque étape, j'ai la date où le travail a commencé et fini, et la date d'arrivée à l'étape : [collez un tableau avec de vraies dates, noms d'étapes et l'équipe responsable].

En n'utilisant que mes dates, calculez pour chaque élément le délai total, le temps de travail (fin moins début pour chaque étape), le temps d'attente (arrivée à une étape moins fin de l'étape précédente) et l'efficacité du flux (temps de travail divisé par le délai). Montrez la moyenne et l'étendue entre éléments, et les trois plus longues attentes par équipe et par étape. N'inventez pas de chiffres. Si des dates manquent, dites quoi recueillir. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un atelier de cartographie du flux de valeur.**

```text
Planifiez un atelier de cartographie du flux de valeur de 2 heures pour le flux [nom].

Participants : [rôles et équipes].
Données à apporter (vraies dates pour [nombre] éléments récents) : [décrivez ce qui existe].
Contraintes : [par exemple à distance].

Fournissez un ordre du jour minuté : convenir du début et de la fin du flux, parcourir des éléments réels, marquer les étapes avec temps de travail et temps d'attente, consigner les reprises et les transferts incomplets, identifier la contrainte, dessiner un état futur et convenir d'un ou deux changements avec responsables et dates. Incluez des amorces pour garder la conversation sur le système. Restez indépendant de tout outil particulier. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : analyser la qualité des transferts entre deux équipes.**

```text
Les équipes A et B se passent le travail dans le flux [nom]. Voici des exemples d'éléments revenus pour reprise ou information, avec la raison : [collez, un par ligne].

Regroupez les raisons en catégories en n'utilisant que le texte. Comptez les éléments par catégorie d'après ma liste. Pour les deux premières catégories, suggérez un élément de liste de contrôle de transfert que l'équipe A pourrait utiliser et une question pour l'équipe B. N'en déduisez pas de causes au-delà du texte. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un essai de limite de travail en cours.**

```text
Concevez un essai de quatre semaines de limites de travail en cours pour [équipe] travaillant dans [flux ou étape].

Éléments en cours actuels par personne ou étape : [collez de vrais comptes].
Données de délai dont nous disposons : [décrivez].
Capacité, en personnes : [nombre].

Proposez des limites pour chaque étape selon la capacité, comment montrer le travail et son âge sur un tableau, des règles pour tirer le travail, quoi faire quand quelqu'un est inactif (sans relever les limites), quoi mesurer (laissez les cibles comme [à convenir]) et ce qui nous ferait arrêter. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md) : à utiliser pour cartographier un flux, consigner les temps et trouver la contrainte.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour étudier comment le travail circule entre les rôles et où il attend.
- [kanban](../../../../skills/kanban/SKILL.md) : à utiliser pour mettre en place la visualisation et les limites de travail en cours pour le flux.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md) : à utiliser pour comprendre ce qui entre dans le flux et en quel volume.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md) : à utiliser pour décider quels flux et initiatives méritent un investissement.

## Sources principales

- **Value-stream mapping** (Wikipedia) : la définition des cartes de l'état actuel et futur et un renvoi à *Learning to See*.
- **Work in process limits** (DORA, dora.dev) : orientations sur la fixation et le maintien des limites et sur l'évitement de l'optimisation locale.
- **The Kanban Guide** (kanbanguides.org) : les définitions des quatre mesures du flux.
- **Lean software development** (Wikipedia) : les gaspillages et principes derrière la pensée en flux de valeur.

## Références

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
