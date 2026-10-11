# Habilitation des changements

**L'habilitation des changements existe pour que les changements bénéfiques se fassent en sécurité et rapidement, et les preuves issues de la recherche sur la livraison de logiciels montrent que le risque se maîtrise mieux par de petits changements, la revue par les pairs et des vérifications automatisées que par l'envoi de chaque changement à un comité.**

## Pourquoi c'est important

Le changement est l'endroit où la livraison continue et la gestion des services entrent le plus souvent en collision. Les équipes de livraison veulent publier souvent, parce que de petits changements fréquents sont plus faciles à comprendre et à annuler. L'exploitation et la gouvernance veulent éviter les pannes et garder des traces, parce que des changements passés ont cassé des services. Les deux ont raison. Le désaccord porte généralement sur la manière de maîtriser le risque : par l'approbation avant le changement, ou par la qualité du changement et la rapidité du rétablissement.

La pratique s'appelle habilitation des changements (change enablement) dans ITIL 4. Le nouveau nom est une déclaration d'intention. Le but est de permettre aux changements bénéfiques de se produire, pas de les empêcher. Les anciennes versions d'ITIL appelaient la pratique gestion des changements (change management) et lui donnaient un rôle important dans les approbations et les calendriers, ce que beaucoup d'équipes ont vécu comme un portail.

Ce sujet utilise les meilleures preuves disponibles : les conseils du programme de recherche DORA sur l'approbation des changements et ses mesures de livraison de logiciels, lues sur les pages du programme. Les pages de DORA rapportent que l'approbation externe lourde est associée à une moins bonne performance de livraison. Elles ne donnent aussi ni tailles d'effet ni détail statistique et renvoient à un rapport de 2019 pour la recherche sous-jacente ; considérez donc ces conseils comme solides mais non définitifs et testez-les dans votre propre contexte. Le vocabulaire ITIL employé ici vient de descriptions largement publiées que ce guide n'a pas pu vérifier auprès du texte du propriétaire du cadre (voir Sujet 2.2 — ITIL).

## Concepts clés

### Ce que fait l'habilitation des changements

Un **changement** est l'ajout, la modification ou le retrait de tout ce qui pourrait affecter un service. L'habilitation des changements est la pratique qui veille à ce que les changements soient évalués, autorisés et planifiés de façon à gérer le risque et à laisser avancer les changements bénéfiques. La pratique tient aussi une trace de ce qui a changé, ce qui est vital pour la réponse aux incidents, car beaucoup d'incidents commencent par un changement récent (voir Sujet 3.2 — Gestion des incidents).

### Types de changement

ITIL 4 est largement décrit comme reconnaissant trois types de changement, chacun avec un chemin différent :

| Type | Ce que c'est | Chemin typique |
|---|---|---|
| **Changement standard** | Un changement peu risqué et bien compris qui suit une procédure documentée | Préautorisé ; consigné, sans approbation au cas par cas |
| **Changement normal** | Un changement qui nécessite évaluation et autorisation | Évalué pour le risque et l'impact, puis autorisé par la personne ou le groupe approprié |
| **Changement d'urgence** | Un changement qui doit être fait d'urgence, par exemple pour rétablir le service | Autorisation accélérée, avec revue plus complète ensuite |

Les noms et les définitions exactes doivent être vérifiés auprès des publications du propriétaire. Le principe est stable : adapter le niveau de contrôle au risque.

### Autorité de changement

Chaque type de changement a besoin de quelqu'un ayant l'autorité de l'approuver. Dans la pratique plus ancienne, c'était souvent un comité consultatif des changements (CAB). La page de DORA n'abolit pas le CAB ; elle suggère un rôle « stratégique » : coordonner entre équipes, soutenir l'amélioration des processus et prendre des décisions d'arbitrage métier comme délai de mise sur le marché contre risque. Pour les changements courants, dit-elle, l'approbation se met en œuvre au mieux par la revue par les pairs pendant le développement, appuyée par l'automatisation.

### Ce que rapporte DORA sur l'approbation

La page de DORA sur la rationalisation de l'approbation des changements dit :

- L'approbation externe lourde, comme un CAB ou la signature d'un cadre supérieur, est associée à une moins bonne performance de livraison de logiciels.
- La page ne rapporte aucune preuve qu'une revue externe plus formelle fasse baisser les taux d'échec des changements.
- Elle soutient que l'approbation lourde ralentit la livraison, menant à des versions plus grosses et moins fréquentes, à plus haut risque, et dit que ses données ont étayé cette hypothèse.

La page nomme des écueils : s'appuyer sur un CAB central pour attraper les erreurs, appliquer le même processus d'approbation à tous les changements quel que soit le risque, ne pas améliorer le processus au regard de mesures, et ajouter du processus et des approbations en réaction à l'instabilité de la production, ce qui, dit-elle, tend à aggraver les choses. « Aucune preuve n'a été trouvée » signifie que la preuve du bénéfice n'a pas été trouvée ; cela ne prouve pas que la revue externe n'a aucun effet. La page ne donne aucun critère pour ce qui compte comme un changement à haut risque, aucune orientation pour des réglementations précises et aucun plan de transition pour les secteurs réglementés.

### L'alternative : le contrôle dans la chaîne

DORA suggère de satisfaire la séparation des tâches par la revue par les pairs consignée dans la plateforme de développement, et d'utiliser les tests continus, l'intégration continue et la surveillance pour détecter, prévenir et corriger tôt les mauvais changements. Elle suggère aussi de traiter la plateforme comme un produit qui donne aux développeurs un retour rapide sur la sécurité, la performance, la stabilité et les défauts, de signaler les changements à haut risque pour un examen supplémentaire et de rendre le processus de changement normal assez rapide pour traiter les urgences. Le contrôle est dans la preuve que produit la chaîne : qui a relu, quels tests ont réussi, ce qui a été déployé et comment l'annuler.

### Mesurer le changement

La page de DORA sur les mesures de performance de livraison de logiciels liste cinq mesures :

| Mesure | Ce que c'est | Groupe |
|---|---|---|
| Délai de livraison du changement | Temps entre la validation d'un changement dans le contrôle de version et son déploiement en production | Débit |
| Fréquence de déploiement | À quelle fréquence les déploiements ont lieu | Débit |
| Temps de rétablissement après un déploiement raté | Le temps nécessaire pour se rétablir d'un déploiement qui échoue et nécessite une intervention immédiate | Débit |
| Taux d'échec des changements | La proportion de déploiements qui nécessitent une intervention immédiate, comme un retour arrière ou une correction urgente | Instabilité |
| Taux de reprise des déploiements | La proportion de déploiements non planifiés qui résultent d'un incident de production | Instabilité |

La page dit que rapidité et stabilité ne sont pas des arbitrages : les mesures sont corrélées pour la plupart des équipes, et les meilleures équipes réussissent sur les cinq. Elle met en garde contre le fait de fixer les mesures comme objectifs (loi de Goodhart), de s'appuyer sur une seule mesure, de comparer des applications très différentes et de rivaliser avec d'autres équipes. Elle suggère que les équipes s'améliorent par rapport à leur propre performance passée. La page ne donne ni seuils de référence ni formules ; définissez donc chaque mesure pour votre propre contexte avant de l'utiliser (voir Sujet 5.6 — Indicateurs et mesure).

### Enregistrements et vue de configuration

Un enregistrement de changement doit dire ce qui a changé, pourquoi, qui l'a approuvé et quand il a été fait, et idéalement renvoyer aux services touchés. Les outils de contrôle de version, de construction et de déploiement peuvent produire automatiquement une grande partie de cela. Relier les changements à la configuration des services soutient l'analyse d'impact et la réponse aux incidents (voir Sujet 4.4 — Gestion de la configuration).

### Changement et mise en production

L'habilitation des changements décide si un changement peut avancer. La gestion des mises en production et des déploiements l'amène en production (voir Sujet 3.5 — Gestion des mises en production et des déploiements). Dans la livraison continue, les deux fusionnent en pratique, avec des approbations intégrées à la chaîne.

## Bonnes pratiques

1. **Classez les changements par risque.** Définissez une courte liste de types de changement, avec des critères et des exemples. Adaptez le chemin au risque, pour que les changements courants soient rapides et que les changements risqués reçoivent de l'attention.
2. **Préautorisez les changements peu risqués.** Pour les changements bien compris, testés et réversibles, convenez d'une procédure standard et laissez-les avancer sans approbation au cas par cas. Consignez-les automatiquement.
3. **Faites de la revue par les pairs l'approbation par défaut.** Exigez qu'une deuxième personne relise les changements avant la fusion et consignez la revue dans la plateforme de développement. Cela satisfait la séparation des tâches pour la plupart des changements, comme le décrit la page de DORA.
4. **Automatisez les vérifications.** Exécutez tests, analyses de sécurité et contrôles de politique sur chaque changement et intégrez les résultats à l'enregistrement. Une approbation fondée sur des preuves est plus solide qu'une approbation fondée sur un formulaire.
5. **Gardez les changements petits.** Les petits changements sont plus faciles à relire, à tester et à annuler. Si un changement paraît risqué, demandez s'il peut être découpé.
6. **Rendez le retour arrière facile et répété.** Pour chaque type de changement, sachez comment l'annuler et entraînez-vous. La capacité de se rétablir vite réduit le besoin de prédire chaque défaillance.
7. **Signalez les changements à haut risque.** Définissez des signaux, comme des changements à la logique de paiement ou à l'infrastructure partagée, qui déclenchent une revue supplémentaire. N'appliquez le chemin plus lourd qu'à eux.
8. **Donnez à l'autorité de changement un rôle stratégique.** Utilisez tout comité central pour coordonner entre équipes, résoudre les conflits et faire des arbitrages métier. Ne l'utilisez pas comme un point de contrôle pour chaque changement.
9. **Traitez les urgences par le chemin normal.** Rendez le processus ordinaire assez rapide et fiable pour que les changements d'urgence le suivent, avec une revue ensuite. Des voies d'urgence souvent utilisées signalent que le chemin normal est trop lent.
10. **N'ajoutez pas d'approbations après un incident par défaut.** La page de DORA dit qu'ajouter du processus en réaction à l'instabilité tend à aggraver les choses. Demandez d'abord si la correction est de meilleurs tests, de plus petits changements ou un rétablissement plus rapide.
11. **Mesurez le processus.** Suivez le délai, le temps passé à attendre l'approbation, la part des changements qui passent sans approbation manuelle et le taux d'échec des changements. Utilisez les mesures pour améliorer, pas pour classer les équipes.
12. **Expliquez le processus.** La page de DORA note que communiquer clairement le processus existant et aider les équipes à s'y retrouver est lié à une meilleure performance avant même de le changer. Publiez un guide d'une page avec des exemples.

## Questions à discuter avec votre équipe

**Quelle proportion de nos changements est peu risquée et bien comprise, et comment sont-ils approuvés aujourd'hui ?**

Prenez un mois de changements et triez-les. La plupart des équipes constatent que la grande majorité est courante. Demandez combien de temps les changements courants attendent l'approbation et ce que l'approbateur apporte. L'animateur peut demander si quelqu'un se souvient d'un changement courant que l'approbation a empêché d'échouer. Servez-vous de la réponse pour identifier un premier candidat à la préautorisation.

**Qu'attrape réellement notre étape d'approbation ?**

Listez les dix derniers changements rejetés ou retardés à l'approbation et pourquoi. Comparez avec les problèmes arrivés en production malgré l'approbation. Si l'approbation attrape peu de choses, demandez ce qui attraperait plus tôt les mêmes problèmes, comme des tests ou la revue par les pairs. Rappelez-vous que la page de DORA ne rapporte aucune preuve qu'une revue externe plus formelle fasse baisser les taux d'échec. Convenez d'un changement à essayer.

**Comment annulerions-nous un mauvais changement, et en combien de temps ?**

Choisissez un changement récent et décrivez le retour arrière. S'il est flou, non testé ou manuel, c'est le risque. Demandez combien de temps cela prendrait et qui le ferait. Convenez de répéter un retour arrière ce mois-ci. Une équipe qui peut se rétablir en quelques minutes peut accepter davantage de changement.

**Lesquels de nos changements nécessitent un examen supplémentaire, et comment les reconnaîtrions-nous ?**

Recueillez des exemples de changements qui ont causé de graves incidents. Cherchez les traits qu'ils partagent : infrastructure partagée, contrôles de sécurité, migrations de données. Rédigez trois signaux qui marqueraient un changement comme à haut risque. Demandez qui devrait relire les changements signalés et à quelle vitesse.

**Quand avons-nous ajouté un contrôle après un incident, et cela a-t-il aidé ?**

Demandez des exemples. Listez ce qui a été ajouté, les problèmes traités et si le problème est revenu. La page de DORA nomme comme écueil l'ajout d'approbations en réaction à l'instabilité. Discutez si une réponse différente, comme de meilleurs tests ou de plus petits changements, aurait fonctionné. Consignez une leçon.

**Quelles preuves un auditeur accepterait-il de notre chaîne à la place d'une signature ?**

Demandez à un auditeur ou à un collègue de la conformité de se joindre à vous. Listez les preuves que la chaîne produit déjà : revues, résultats de tests, enregistrements de déploiement. Demandez ce qui manque. Beaucoup d'auditeurs acceptent la revue par les pairs consignée et des preuves automatisées quand elles sont fiables. Convenez d'une brève description du contrôle et d'une période d'essai.

## En pratique : un exemple d'ITIL agile

Le service informatique d'un hôpital régional soutient un système de planification clinique mis à jour par une équipe interne de sept personnes. Chaque changement, de la faute de frappe à la migration de base de données, passe devant un comité consultatif des changements hebdomadaire. Les petites corrections attendent jusqu'à huit jours. Les cliniciens se plaignent, et les développeurs ont commencé à regrouper les corrections en versions plus grosses pour éviter la file, ce qui rend chaque version plus risquée.

Le directeur informatique et le président du comité passent en revue une année de changements. La plupart étaient petits, deux avaient causé des incidents et aucun des deux n'avait été attrapé par le comité. Ils conçoivent une approche à trois voies. Les changements standard, comme les changements de texte et de configuration dans des limites convenues, avec des tests automatisés réussis et un retour arrière testé, sont préautorisés et consignés automatiquement. Les changements normaux nécessitent une revue par les pairs consignée dans la plateforme de développement et une vérification au regard d'une courte liste de signaux de haut risque, comme les changements du traitement des données des patients. Les changements signalés comme à haut risque vont au comité, qui se réunit deux fois par semaine. Les changements d'urgence suivent le chemin normal avec une revue après mise en œuvre.

Après quatre mois, les changements standard sont en ligne en un jour, et le comité voit environ un cinquième du volume qu'il avait auparavant. Le taux d'échec des changements n'augmente pas. Des problèmes subsistent. Deux développeurs appliquent de façon incohérente les signaux de haut risque et un changement signalé est arrivé tard au comité, et l'audit interne demande la preuve que les revues par les pairs ne sont pas des validations de pure forme. L'équipe rédige des exemples de signaux, ajoute une revue par échantillonnage des revues par les pairs par un ingénieur sénior et convient avec l'audit d'examiner les preuves à la prochaine réunion trimestrielle.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison portent l'essentiel du contrôle : revue, tests, petits changements et retour arrière. Intégrez-les à la chaîne et rendez la preuve visible. Gardez les changements petits et dites à l'exploitation ce qui arrive. Utilisez le processus de changement comme un lieu pour partager l'information sur les risques, et pas seulement pour obtenir la permission.

### Équipes de service et d'exploitation

Les équipes d'exploitation savent quels changements ont fait du tort aux services. Partagez cette connaissance sous forme de signaux pour une revue supplémentaire et aidez à construire des contrôles qui les attrapent tôt. Soutenez des voies plus légères pour les changements peu risqués et tenez les enregistrements qui accélèrent la réponse aux incidents.

### Direction et gouvernance

Les dirigeants décident de la quantité d'approbation que l'organisation exige. Les conseils de DORA suggèrent de demander des preuves de contrôle et non des signatures sur chaque changement. Soutenez la mesure du délai et du taux d'échec des changements, et évitez d'ajouter du processus après des incidents sans examiner les causes. Convenez avec l'audit des preuves acceptables.

### Clients et utilisateurs

Les clients et utilisateurs profitent d'améliorations petites et fréquentes et de moins de grosses perturbations. Attendez-vous à être informé des changements qui vous touchent, en langage simple et à l'avance. Si vous avez des besoins particuliers, comme des périodes de gel, dites-le tôt au fournisseur pour qu'il puisse les planifier.

## Modes d'échec courants

- **Un seul chemin pour tous les changements.** Les changements courants font la queue derrière les risqués. À la place, classez par risque et donnez à chaque classe son propre chemin.
- **L'approbation comme seul contrôle.** Une signature tient lieu de qualité. À la place, intégrez tests, revue et retour arrière à la chaîne.
- **Un comité qui relit ce qu'il ne peut pas évaluer.** Les membres approuvent des changements qu'ils ne comprennent pas. À la place, envoyez les changements aux personnes qui ont la connaissance et utilisez le comité pour la coordination.
- **Regrouper pour éviter la file.** Les équipes combinent les changements, ce qui rend chaque version plus risquée. À la place, rendez la file assez courte pour que les petits changements soient la voie facile.
- **Ajouter des contrôles après chaque incident.** Le processus grossit et la vitesse baisse. À la place, cherchez la cause et corrigez-la par des tests, de plus petits changements ou un rétablissement plus rapide.
- **Revue par les pairs de pure forme.** Les revues sont formelles mais superficielles. À la place, échantillonnez les revues, partagez des exemples de bonnes revues et gardez les changements assez petits pour être relus.
- **Aucun retour arrière.** Les changements ne peuvent pas être annulés. À la place, exigez et répétez un retour arrière pour chaque type de changement.
- **Truquer les mesures.** Les équipes découpent les changements ou cachent les échecs pour bien paraître. À la place, utilisez plusieurs mesures, revoyez-les ensemble et visez l'amélioration dans le temps.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Classification et chemins | Tous les changements suivent un seul chemin ou aucun | Certaines équipes ont une voie rapide pour les changements simples | Des types de changement avec critères et chemins distincts sont la norme | La part des changements par chemin et les délais d'attente sont mesurés et ajustés | Les chemins sont ajustés entre équipes à partir de preuves partagées |
| Approbation et preuves | L'approbation se fait par signature ou n'est pas consignée | Certains changements sont relus par des pairs | La revue par les pairs et les vérifications automatisées sont consignées pour la plupart des changements | La qualité des revues et les preuves sont échantillonnées et améliorées | Les preuves circulent automatiquement vers l'audit et les partenaires |
| Rétablissement | Le retour arrière est ponctuel | Certains changements ont des étapes de retour arrière | Le retour arrière est défini et répété pour chaque type de changement | Le temps de rétablissement est mesuré et réduit | Les pratiques de rétablissement sont partagées et testées entre équipes et fournisseurs |
| Mesure et amélioration | Peu de mesures | Certaines équipes suivent le délai | Délai, fréquence, taux d'échec et temps de rétablissement sont suivis par service | Les mesures guident des améliorations planifiées et ne servent pas d'objectifs | Les équipes apprennent des mesures des autres et s'améliorent dans toute l'organisation |

## Liste de contrôle

- [ ] Nous avons défini des types de changement avec critères et exemples.
- [ ] Les changements peu risqués et bien compris sont préautorisés et consignés automatiquement.
- [ ] La revue par les pairs est consignée dans la plateforme de développement pour les changements normaux.
- [ ] Des tests et des vérifications automatisés s'exécutent à chaque changement.
- [ ] Chaque type de changement a un retour arrière qui a été répété.
- [ ] Nous avons des signaux qui marquent les changements à haut risque pour un examen supplémentaire.
- [ ] Tout comité central a un rôle clair de coordination et d'arbitrage.
- [ ] Nous suivons pour chaque service le délai de livraison du changement, la fréquence de déploiement, le temps de rétablissement après un déploiement raté et le taux d'échec des changements.
- [ ] Nos auditeurs ont dit quelles preuves ils acceptent à la place de signatures.
- [ ] Nous avons un guide d'une page du processus de changement avec des exemples.

## Prompts d'IA

**Objectif : classer les changements du mois dernier par risque et par chemin d'approbation.**

```text
Ci-dessous se trouve la liste des changements que nous avons faits le mois dernier : [collez une ligne par changement avec une courte description, qui l'a relu, combien de temps il a attendu l'approbation et s'il a causé un incident ; retirez les données personnelles].

Aidez-moi à les trier en trois groupes : courant et peu risqué, nécessite une évaluation normale, et nécessite un examen supplémentaire. Pour chaque groupe, dites quels traits des changements de ma liste ont mené au classement, en n'utilisant que le texte. Calculez la part de chaque groupe et l'attente moyenne d'approbation à partir de mes seuls chiffres. Suggérez quels changements courants pourraient être préautorisés et quelles garanties je voudrais d'abord. Ne devinez pas de risques au-delà de ce que j'ai écrit. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une procédure de changement standard.**

```text
Aidez-moi à rédiger une procédure pour un changement standard (préautorisé) : [nommez le changement, par exemple « mettre à jour une valeur de configuration dans des limites convenues »].

Comment il est fait aujourd'hui, étape par étape : [collez].
Vérifications existantes : [tests, analyses, revues].
Comment l'annuler : [décrivez, ou écrivez « inconnu »].
Qui est responsable de la procédure : [rôle].

Rédigez une procédure d'une page avec : quand elle s'applique, les critères qui font d'un changement un changement standard, les étapes, les vérifications qui doivent réussir, comment il est consigné, comment l'annuler et quand le traiter plutôt comme un changement normal. Marquez comme hypothèse chaque énoncé que vous avez ajouté. N'affirmez pas qu'une règle exige quelque chose à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : se préparer à discuter avec un auditeur des preuves que produit notre chaîne.**

```text
Un auditeur demande comment nous autorisons les changements. Notre chaîne fait ceci : [décrivez la revue de code, les tests, les analyses, l'enregistrement de déploiement, qui peut approuver et où sont conservés les enregistrements].

La préoccupation de l'auditeur, dans ses mots : [collez, ou écrivez « inconnue »].
Règles que nous savons applicables, avec le texte de la source si vous l'avez : [collez, ou écrivez « aucune connue »].

Faites un tableau de la preuve que produit chaque étape, où elle est stockée, qui peut l'altérer et quelles lacunes l'auditeur peut remarquer. Suggérez trois moyens légers de renforcer les points les plus faibles. N'affirmez pas qu'une norme exige quelque chose à moins que j'en aie collé le texte. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un essai d'approbation plus légère.**

```text
Concevez un essai de trois mois d'approbation plus légère pour [service].

Processus actuel : [décrivez].
Volume et types de changements du dernier trimestre : [collez les effectifs tirés de vos enregistrements].
Mesures que nous avons déjà : [listez, par exemple délai et taux d'échec des changements].
Préoccupations de l'audit ou de l'exploitation : [listez].

Proposez : quels types de changement inclure, les garanties, quoi mesurer et à quelle fréquence (sans inventer d'objectifs), ce qui nous ferait arrêter ou suspendre l'essai et comment rendre compte des résultats. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [change-request](../../../../skills/change-request/SKILL.md) : à utiliser pour rédiger des enregistrements de changement qui portent ce dont l'exploitation et les auditeurs ont besoin.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md) : à utiliser quand un changement est organisationnel et exige de planifier pour les personnes autant que pour les systèmes.
- [release-notes](../../../../skills/release-notes/SKILL.md) : à utiliser pour dire aux utilisateurs et au centre de services ce que fait un changement.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md) : à utiliser pour distinguer les décisions réversibles, qui peuvent être prises vite, des irréversibles, qui demandent plus de soin.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner et revoir les risques que le changement introduit et la manière dont ils sont maîtrisés.

## Sources principales

- **Streamlining change approval** (DORA, dora.dev) : les conseils du programme de recherche sur la revue par les pairs, l'automatisation et le rôle d'un comité de changement.
- **DORA's software delivery performance metrics** (dora.dev) : définitions et mises en garde pour le délai de livraison du changement, la fréquence de déploiement, le temps de rétablissement, le taux d'échec des changements et le taux de reprise.
- **ITIL** (Wikipedia) : contexte sur les versions d'ITIL et le passage à ITIL 4.
- **Continuous delivery** (Wikipedia) : contexte sur les pratiques qui rendent sûrs les changements petits et fréquents.

## Références

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
