# Gestion des actifs logiciels

**La gestion des actifs logiciels veille à ce qu'une organisation achète le logiciel dont elle a besoin, utilise ce qu'elle achète et respecte les conditions qu'elle a acceptées ; pour les équipes agiles, cela signifie désormais suivre les composants libres et les abonnements autant que les produits sous licence.**

## Pourquoi c'est important

Le logiciel est l'un des coûts les plus importants et les moins visibles de l'informatique. Des licences sont achetées pour des gens qui sont partis, des abonnements se renouvellent sans qu'on le remarque et des produits sont installés d'une manière que la licence n'autorise pas. Chacun est un coût ou un risque. Un audit d'éditeur peut transformer un petit écart en grosse facture, et un composant non corrigé dans une application oubliée peut ouvrir une porte à un attaquant.

Les équipes agiles changent le tableau. Les développeurs intègrent des bibliothèques en une seule commande, et les applications modernes sont largement assemblées à partir de pièces tierces et libres. L'article de Wikipédia sur la chaîne d'approvisionnement logicielle rapporte que du logiciel libre a été trouvé dans 96 pour cent des bases de code commerciales qu'un éditeur a analysées en 2024, en citant Synopsys. Les équipes achètent aussi des services en nuage et des abonnements par carte, hors du processus d'achat. La gestion des actifs logiciels (SAM) est donc passée du comptage des installations de quelques gros produits à une pratique qui couvre ce qui est utilisé, ce qui est dû et ce qui est digne de confiance.

L'[article de Wikipédia sur la gestion des actifs logiciels](https://en.wikipedia.org/wiki/Software_asset_management) décrit la SAM comme une pratique d'affaires pour gérer et optimiser l'achat, le déploiement, la maintenance, l'utilisation et la mise au rebut du logiciel, avec pour buts de réduire les coûts informatiques, de limiter les risques métier et juridiques et d'améliorer la productivité des utilisateurs finaux. Il ne couvre ni les services en nuage, ni les SBOM, ni les modèles de maturité ; ce sujet ajoute donc les articles sur la chaîne d'approvisionnement logicielle et sur le logiciel libre. Ce sujet décrit la pratique et ne donne pas de conseil juridique ; les conditions de licence diffèrent, et la bonne source est le texte de la licence ou du contrat.

## Concepts clés

### Ce qu'est la SAM

Selon Wikipédia, la SAM fait partie de la gestion des actifs informatiques (voir Sujet 4.1 — Gestion des actifs informatiques). Il cite ITIL comme la décrivant comme incluant la gestion, le contrôle et la protection efficaces des actifs logiciels. Ses buts stratégiques, tels que l'article les liste, incluent réduire les coûts de logiciel et de support par des contrats de volume et la réaffectation des licences inutilisées, faire respecter les politiques de sécurité et les normes de postes de travail, de serveurs et de mobiles, améliorer la productivité en déployant la technologie plus vite et de manière plus fiable, limiter les frais de gestion par l'automatisation et établir des politiques d'acquisition, de déploiement, d'usage et de retrait.

### Conformité des licences

L'article décrit la SAM comme l'équilibre entre le nombre de licences achetées et le nombre réellement consommé, et la vérification que l'usage correspond aux conditions de licence de chaque éditeur. Il note que les installations sont la mesure de consommation la plus courante, mais que certains logiciels sont licenciés par utilisateurs, capital, processeurs ou cœurs de processeur. Les organisations peuvent réduire leur responsabilité lors d'audits par des éditeurs ou des tiers comme la Business Software Alliance, dit l'article, par des inventaires logiciels continus, des politiques d'achat et des outils. L'article ne décrit pas les procédures d'audit. L'enjeu de l'exercice est de connaître votre **droit** (ce que vous avez le droit d'utiliser), votre **consommation** (ce que vous utilisez) et l'écart entre les deux.

### Les trois questions

Une pratique SAM répond à trois questions pour chaque produit important :

| Question | Ce qu'il lui faut |
|---|---|
| À quoi avons-nous droit ? | Contrats, conditions de licence, factures et preuves d'achat |
| Qu'utilisons-nous ? | Inventaire et données d'usage issus de la découverte et du comptage |
| Quel est l'écart, et que faisons-nous ? | Comparaison, décisions d'achat, de réaffectation ou de retrait |

Un écart peut aller dans les deux sens : sous-licenciement, qui est un risque de conformité, et sur-licenciement, qui est du gaspillage.

### Normes : ISO/IEC 19770

L'article liste les parties de la famille ISO/IEC 19770 : 19770-1:2017 (exigences du système de gestion des actifs informatiques, un cadre de processus qui peut être mis en œuvre par niveaux), 19770-2:2015 (balises d'identification des logiciels), 19770-3:2016 (un schéma de gestion des droits pour les détails de licence, de contrat et de facture), 19770-4:2017 (données de mesure de l'utilisation des ressources) et 19770-5:2015 (vue d'ensemble et vocabulaire). L'article dit que la norme d'identification des logiciels est soutenue par IBM, Microsoft et Adobe. Consultez les normes pour les éditions actuelles et le contenu exact.

### Technologies de SAM et leurs limites

L'article liste des outils pour l'inventaire logiciel, la gestion des licences, le comptage, le contrôle des applications, le déploiement, la gestion des correctifs, la gestion des demandes et le catalogage des produits. Il donne aussi un exemple d'échelle : les règles de comptage dans le System Center Configuration Manager de Microsoft fonctionnent bien pour de petits parcs mais génèrent des volumes de données ingérables à l'échelle d'une grande entreprise. Les outils aident, mais ils ont besoin d'une question claire et d'un responsable.

### Logiciel libre

Wikipédia définit le logiciel libre (open source) comme un logiciel dont le code source est publiquement disponible, et que les utilisateurs peuvent utiliser, étudier, modifier et distribuer, généralement sous une licence ouverte. L'Open Source Initiative tient la définition la plus courante, avec dix critères et une liste de licences approuvées, bien que l'article dise que l'OSI n'a aucune autorité juridique sur le terme. Il décrit deux familles de licences :

| Famille | Ce qu'elle demande aux destinataires | Exemples cités |
|---|---|---|
| **Permissive** | Conserver les mentions de droit d'auteur et inclure la licence ; aucune obligation de publier votre propre code sous la même licence | BSD, MIT, Apache |
| **Copyleft** | Utiliser la même licence pour au moins certaines parties de ce que vous distribuez (le copyleft fort s'applique à toutes les œuvres dérivées ; le copyleft faible seulement sous certaines conditions) | GNU GPL (fort) ; MPL, EPL (faible) |

Les deux familles, dit l'article, exigent de conserver les mentions de droit d'auteur et de fournir une copie de la licence avec le code. Il cite *Jacobson v Katzer* (2008), où un tribunal a fait respecter les conditions d'une licence ouverte, attribution comprise, au titre du droit d'auteur. Il note que des organisations mettent en place des bureaux de programmes open source pour gérer leurs stratégies. Les conditions des licences libres sont de véritables obligations. Lesquelles s'appliquent dépend de la manière dont vous utilisez et distribuez le logiciel ; interrogez votre fonction juridique et lisez la licence.

### La chaîne d'approvisionnement logicielle et les SBOM

L'article sur la chaîne d'approvisionnement logicielle la décrit comme les composants, bibliothèques, outils et processus utilisés pour développer, construire et publier un artefact logiciel. Il nomme des risques : des attaquants peuvent compromettre un composant en amont pour atteindre tous les utilisateurs en aval, et cite des exemples dont Log4Shell en 2021, l'attaque SolarWinds en 2020 et la porte dérobée XZ Utils en 2024. Il décrit une **nomenclature logicielle (SBOM)** comme un inventaire des composants d'un artefact logiciel, y compris les parties libres et propriétaires, l'équivalent logiciel d'une nomenclature de fabrication. Les SBOM soutiennent l'analyse des vulnérabilités et des licences.

L'article rapporte des limites : les tableurs ne peuvent pas être enrichis automatiquement avec des données de vulnérabilité et devraient être stockés dans un dépôt interrogeable ; les SBOM pilotés par une politique sont rares, une étude constatant qu'environ 0,56 pour cent des dépôts GitHub populaires en contiennent ; moins de la moitié des projets testés incluent des SBOM dans leurs versions et beaucoup sont incomplets ; et une étude de six outils SBOM pour Java a trouvé de fréquentes inexactitudes. Il note que la visibilité seule ne peut garantir l'intégrité. Il rapporte aussi que le décret exécutif américain 14028, signé le 12 mai 2021, a chargé le NIST et la NTIA de publier des orientations sur la sécurité de la chaîne d'approvisionnement logicielle, dont les SBOM, et que les éléments minimaux de la NTIA se répartissent en champs de données, prise en charge de l'automatisation, et pratiques et processus. L'article ne nomme pas de formats de SBOM et ne décrit pas le règlement européen sur la cyber-résilience. Les règles sur les SBOM diffèrent selon les pays et les secteurs ; demandez à votre fonction de conformité ce qui s'applique à vous.

### SaaS et abonnements en nuage

L'article sur la SAM ne traite ni du logiciel en tant que service (SaaS) ni du nuage. L'expérience pratique montre que les logiciels par abonnement créent de nouveaux problèmes : achats hors des achats, postes que personne ne retire, outils qui se recoupent et données confiées à des fournisseurs sans revue (voir Sujet 3.14 — Gestion des fournisseurs et Sujet 4.5 — Gestion financière informatique et FinOps). La SAM pour les abonnements consiste à découvrir ce qui est acheté, qui en est responsable, qui l'utilise et quand cela se renouvelle.

### Limites des sources

L'article sur la SAM ne couvre ni procédures d'audit, ni catalogues de types de licences, ni modèles de maturité, et ses principales références comprennent des éléments datés de 2006 à 2009. L'article sur la chaîne d'approvisionnement logicielle rapporte des chiffres issus d'enquêtes et d'études de qualité inégale. Utilisez les sources pour cadrer les questions, et les textes de licence et les contrats pour les réponses.

## Bonnes pratiques

1. **Commencez par les produits qui comptent le plus.** Choisissez les quelques produits les plus gros ou les plus risqués par le coût ou l'exposition juridique, et mettez d'abord au clair droits, inventaire et usage pour ceux-là.
2. **Gardez la preuve du droit.** Stockez contrats, factures et conditions de licence là où on peut les retrouver, et reliez-les aux enregistrements des produits. On ne peut pas défendre une position dans un audit sans preuve.
3. **Connaissez la métrique de licence.** Pour chaque produit, consignez comment il est compté : par utilisateur, appareil, processeur, cœur ou autre. Compter les installations quand la licence est au cœur produit la mauvaise réponse.
4. **Comparez régulièrement droit et usage.** Au moins chaque trimestre pour les produits majeurs, comparez ce que vous pouvez utiliser avec ce que vous utilisez. Agissez sur l'écart : achat, réaffectation ou retrait.
5. **Récupérez les licences inutilisées.** Utilisez les données d'usage pour trouver les licences que personne n'a utilisées pendant une durée définie, et réaffectez-les ou annulez-les après vérification auprès du responsable.
6. **Maîtrisez la manière dont le logiciel entre.** Facilitez la demande de logiciel approuvé et rendez difficile l'achat hors processus. Incluez abonnements et achats par carte dans les revues de dépenses.
7. **Traitez les composants libres comme des actifs.** Tenez un inventaire des composants libres de vos produits, avec licence et version. Vérifiez les licences au regard de la manière dont vous utilisez et distribuez le logiciel, avec un avis juridique.
8. **Générez des SBOM dans la construction.** Produisez automatiquement une nomenclature logicielle pour chaque construction, stockez-la dans un endroit interrogeable et servez-vous-en pour répondre aux vulnérabilités et aux questions des clients. Vérifiez la SBOM au regard de la construction, car les outils peuvent être inexacts.
9. **Suivez les abonnements.** Pour chacun, consignez responsable, but, coût, nombre de postes, utilisateurs, date de renouvellement et données détenues. Revoyez avant le renouvellement.
10. **Reliez le logiciel aux services.** Consignez quels services utilisent quels logiciels et versions, pour qu'une vulnérabilité ou un changement de licence puisse être rattaché aux services touchés (voir Sujet 4.4 — Gestion de la configuration).
11. **Préparez calmement les audits.** Gardez les enregistrements à jour, nommez un contact et connaissez vos droits et devoirs issus du contrat. N'attendez pas l'avis pour commencer à vous organiser.
12. **Retirez correctement le logiciel.** Supprimez-le des systèmes, mettez fin aux licences et abonnements et mettez à jour les enregistrements. Un logiciel inutilisé est un coût et une surface d'attaque.

## Questions à discuter avec votre équipe

**Pour nos trois produits logiciels les plus coûteux, savons-nous ce que nous pouvons utiliser et ce que nous utilisons ?**

Demandez, pour chacun, le nombre de licences détenues et le nombre en usage. Comparez. Les résultats courants surprennent : plus de postes que d'utilisateurs, ou des utilisateurs au-delà des postes. L'animateur peut demander où est conservée la preuve du droit. Prévoyez de réconcilier le plus gros écart.

**Quel logiciel les gens ont-ils acheté ou installé sans le dire à personne ?**

Soyez honnête et sans jugement. Interrogez sur les outils achetés par carte, les outils gratuits utilisés au travail et les extensions de navigateur. Les raisons typiques sont la rapidité et un processus flou. Discutez de ce qui rendrait la voie approuvée assez rapide. Convenez d'une étape d'enregistrement.

**De quels composants libres nos produits dépendent-ils, et quelles sont leurs licences ?**

Demandez si quelqu'un peut produire une liste. Sinon, discutez de la manière de la générer à partir de la construction. Demandez ensuite comment les licences sont vérifiées. Rappelez-vous que les obligations diffèrent entre licences permissives et copyleft. Prévoyez avec le juridique de revoir les cas à haut risque.

**Si une grave vulnérabilité apparaissait demain dans une bibliothèque courante, combien de temps faudrait-il pour savoir si nous l'utilisons ?**

Parcourez les étapes : qui est prévenu, comment vous cherchez, comment vous connaissez la version dans chaque service. La réponse montre jusqu'où les SBOM et les inventaires aideraient. Convenez d'une première amélioration, comme générer une nomenclature dans la chaîne.

**Quels abonnements se renouvellent le trimestre prochain, et qui décide de les conserver ?**

Listez les renouvellements. Pour chacun, demandez qui en est responsable, combien de postes sont actifs et ce qui se passe s'il est annulé. Souvent personne ne détient la décision. Attribuez des responsables et ajoutez une date de revue avant chaque renouvellement.

**Comment répondrions-nous à un avis d'audit d'un éditeur ?**

Demandez qui s'en chargerait et de quelles preuves cette personne dispose. Discutez si les enregistrements sont complets. Le but est un plan serein, pas la peur des audits. Convenez d'un contact et d'une liste de contrôle.

## En pratique : un exemple d'ITIL agile

Un service postal national exploite une soixantaine d'applications internes et une plateforme de suivi de colis destinée aux clients, construite par une équipe de quinze personnes. Un éditeur notifie au service informatique un audit de licences sur un produit de base de données. Le responsable de l'ITAM constate que les enregistrements de licences sont dispersés dans trois tableurs et que personne ne peut dire sur combien de cœurs de processeur la base de données tourne maintenant, car les machines virtuelles ont été déplacées de nombreuses fois entre hôtes.

Le responsable de l'ITAM, un administrateur de bases de données et la responsable des achats rassemblent les preuves. Ils réunissent le contrat, la métrique de licence (par cœur de processeur), les factures et les données de découverte sur l'endroit où tourne la base de données. Ils constatent que le produit tourne sur plus de cœurs que prévu dans un environnement, et sur moins dans un autre, où des licences sont inutilisées. Après avoir parlé à l'éditeur, ils réaffectent les licences inutilisées, en achètent un petit nombre de plus et déplacent un environnement non essentiel vers une alternative gratuite. Le coût est bien inférieur à ce qu'aurait été un constat d'audit, mais n'est pas négligeable.

En même temps, un grand client demande à l'équipe de la plateforme une liste des composants logiciels de la plateforme de suivi de colis. L'équipe réalise qu'elle ne peut pas en produire. Elle ajoute une étape de construction qui génère une nomenclature pour chaque version et la stocke dans un dépôt. La première sortie inclut une bibliothèque dont la licence n'avait pas été examinée par l'équipe juridique, et ils décident de la remplacer. Des problèmes subsistent. L'outil SBOM de l'équipe manque des composants dans un langage, et un groupe de recherche distinct continue d'acheter des abonnements avec la carte d'un département. Le responsable de l'ITAM interroge l'éditeur de l'outil sur la lacune et persuade le département d'enregistrer ses abonnements.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison apportent la plus grande part du logiciel dans l'organisation. Consignez les composants et abonnements que vous ajoutez, générez des nomenclatures dans vos constructions et demandez avant d'utiliser une bibliothèque dont la licence vous est inconnue. Partagez les constats avec le juridique et la sécurité.

### Équipes de service et d'exploitation

Les équipes d'exploitation gèrent l'inventaire, les correctifs et le comptage. Gardez l'inventaire logiciel relié aux services, corrigez vite quand des vulnérabilités apparaissent et récupérez les licences inutilisées. Aidez les achats à comprendre comment les produits sont réellement utilisés.

### Direction et gouvernance

Les dirigeants détiennent le risque de non-conformité et la dépense. Demandez le droit et la consommation pour les plus gros produits, une vue des abonnements et un plan pour le risque lié au logiciel libre et à la chaîne d'approvisionnement. Soutenez une voie d'achat assez rapide pour que les gens l'utilisent.

### Clients et utilisateurs

Les clients et utilisateurs profitent de ce que le logiciel soit disponible et sûr. Demandez ce dont vous avez besoin par la voie appropriée, rendez ce que vous n'utilisez plus et dites à l'équipe les outils que vous avez trouvés utiles. Les clients de vos produits peuvent demander des nomenclatures ; attendez-vous à être sollicité.

## Modes d'échec courants

- **Ne compter que les installations.** La métrique de licence est par cœur ou par utilisateur. À la place, consignez la métrique et comptez la bonne chose.
- **Preuve du droit perdue.** Contrats et factures sont introuvables. À la place, stockez-les avec l'enregistrement du produit.
- **Licences inutilisées (shelfware).** Des licences sont achetées et non utilisées. À la place, comparez droit et usage et récupérez.
- **Achats fantômes.** Les abonnements achetés par carte échappent au processus. À la place, rendez la voie approuvée rapide et examinez les dépenses à la recherche d'exceptions.
- **Composants libres inconnus.** Personne ne peut les lister. À la place, générez automatiquement des nomenclatures dans les constructions.
- **Ignorer les conditions des licences libres.** Les obligations du copyleft sont manquées. À la place, vérifiez les licences au regard de l'usage et de la distribution, avec un avis juridique.
- **Faire aveuglément confiance aux outils.** Les outils manquent des composants ou en listent de faux. À la place, validez leur sortie sur un échantillon et interrogez les éditeurs sur les lacunes.
- **Panique d'audit.** Les enregistrements sont assemblés après l'avis. À la place, gardez les enregistrements à jour et nommez un contact d'audit.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Droit et usage | Les enregistrements sont dispersés ; l'usage est inconnu | Les produits majeurs ont des enregistrements de droit | Droit et usage sont consignés pour les principaux produits et comparés régulièrement | Écarts et licences inutilisées sont mesurés et suivis d'action | Droit et usage sont partagés avec la finance, les achats et les fournisseurs |
| Acquisition et abonnements | Le logiciel est acheté par n'importe qui | Une voie approuvée existe pour certains achats | Achats et abonnements suivent une voie unique avec responsables et dates de renouvellement | Dépenses et usage des postes sont revus avant renouvellement | Achats, usage et contrats sont coordonnés dans toute l'organisation |
| Logiciel libre et chaîne d'approvisionnement | Les composants sont inconnus | Certaines équipes listent les bibliothèques | Des nomenclatures sont générées dans les constructions et les licences revues | Les constats de vulnérabilité et de licence sont suivis jusqu'à clôture | Les nomenclatures sont partagées avec clients et fournisseurs selon les exigences |
| Audit et conformité | Les avis d'audit causent la panique | Un contact existe | Les enregistrements sont à jour et une routine d'audit existe | Le risque de conformité est mesuré et revu | La pratique de conformité est alignée entre éditeurs et juridictions |

## Liste de contrôle

- [ ] Pour nos plus gros produits logiciels, nous connaissons le droit, la métrique de licence et l'usage.
- [ ] Contrats, factures et conditions de licence sont stockés avec les enregistrements des produits.
- [ ] Droit et usage sont comparés au moins chaque trimestre pour les produits majeurs.
- [ ] Les licences inutilisées sont récupérées après vérification auprès des responsables.
- [ ] Achats et abonnements suivent une voie unique, avec responsables et dates de renouvellement consignés.
- [ ] Nous générons une nomenclature dans la construction pour les produits que nous livrons ou exploitons.
- [ ] Les licences libres de nos composants sont revues au regard de notre usage, avec un avis juridique.
- [ ] Nous pouvons trouver quels services utilisent un composant ou un produit donné.
- [ ] Une personne désignée traite les avis d'audit d'éditeurs.
- [ ] Le logiciel retiré est supprimé des systèmes et des enregistrements.

## Prompts d'IA

**Objectif : comparer droit et consommation pour un produit.**

```text
Aidez-moi à comparer droit et usage pour [produit].

Métrique de licence (comment l'éditeur compte, avec la formulation exacte du contrat) : [collez].
Droit (ce que nous avons acheté, avec les dates) : [collez].
Données d'usage (installations, utilisateurs, cœurs, ou ce que la métrique exige) : [collez de vraies données].

En n'utilisant que ces informations, calculez la différence entre droit et usage, dans l'unité de l'éditeur, et dites si elle indique un manque ou un surplus. Listez ce qui est flou dans la formulation du contrat sous forme de questions pour l'éditeur ou le juridique. N'interprétez pas les termes juridiques au-delà du texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : passer en revue une liste de composants libres pour les questions de licence.**

```text
Voici une liste de composants libres de notre produit avec nom, version et licence tels que rapportés par notre outillage : [collez].
Comment nous utilisons et distribuons le produit : [par exemple usage interne seulement, service hébergé, livré aux clients].

Regroupez les licences en familles permissive et copyleft d'après les noms de licences. Pour chaque groupe, listez les types de questions à poser à notre équipe juridique selon notre usage et notre distribution du produit. Signalez les composants dont la licence est manquante ou inconnue. Ne donnez pas d'avis juridique et ne dites pas ce que les licences exigent ; listez uniquement des questions. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une recherche de réponse aux vulnérabilités à l'aide d'une nomenclature.**

```text
Aidez-moi à planifier comment nous répondrions à : « Utilisons-nous [nom du composant et plage de versions] et où ? »

Ce que nous avons aujourd'hui : [par exemple nomenclatures dans un dépôt, un tableur, rien].
Systèmes et services concernés : [listez].

Décrivez les étapes pour le savoir, qui fait chacune, de quelles données elles ont besoin, ce qui pourrait mal tourner et combien de temps chaque étape pourrait prendre (laissez les durées comme [à mesurer]). Proposez une amélioration qui raccourcirait la réponse. N'inventez pas nos outils. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : construire une revue des abonnements pour le trimestre suivant.**

```text
Voici une liste de nos abonnements avec responsable, coût mensuel, postes payés, utilisateurs actifs des 90 derniers jours, date de renouvellement et données détenues : [collez de vraies données].

En n'utilisant que ces données, listez les renouvellements des 90 prochains jours, calculez les postes inutilisés et leur coût pour chacun et mettez en évidence les abonnements sans responsable. Pour chacun, suggérez une question pour le responsable avant le renouvellement. Ne recommandez pas d'annuler quoi que ce soit ; signalez les candidats à la revue. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour gérer contrats, renouvellements et relations avec les éditeurs de logiciels.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md) : à utiliser pour se préparer à un audit d'éditeur ou de conformité.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md) : à utiliser pour prévoir les coûts de logiciels et d'abonnements.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner les risques de licence, de vulnérabilité et de chaîne d'approvisionnement.
- [security-testing](../../../../skills/security-testing/SKILL.md) : à utiliser pour vérifier dépendances et constructions à la recherche de faiblesses connues.

## Sources principales

- **Software asset management** (Wikipedia) : la définition, les buts, les technologies et les parties de l'ISO/IEC 19770.
- **Software supply chain** (Wikipedia) : risques, nomenclature logicielle, chiffres d'adoption et contexte réglementaire.
- **Open-source software** (Wikipedia) : la définition, les familles de licences et des notes sur les risques et obligations.
- **ISO/IEC 19770** (International Organization for Standardization) : la famille de normes elle-même ; lisez les parties actuelles pour les exigences exactes.

## Références

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
