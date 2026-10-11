# Gestion des actifs informatiques

**La gestion des actifs informatiques suit le matériel, les logiciels et les ressources connexes qu'une organisation possède ou paie, de l'achat à la mise au rebut, pour que les décisions de coût, de risque et de support reposent sur des faits plutôt que sur des conjectures.**

## Pourquoi c'est important

Demandez à la plupart des organisations combien d'ordinateurs portables, de serveurs, de comptes en nuage et de licences logicielles elles possèdent, et la première réponse est une estimation. La seconde, après recherche, est souvent différente. Cet écart a un coût. On achète des licences que personne n'utilise, ou on en utilise sans les avoir achetées. Un vieux matériel reste sur le réseau sans correctifs. Des collaborateurs partis gardent l'accès à des systèmes que personne n'a pensé à leur retirer. Un centre de services ne peut pas supporter un équipement dont il ignore l'existence.

La gestion des actifs informatiques (ITAM) est la pratique qui comble cet écart. Elle est étroitement liée à la gestion des services : les services tournent sur des actifs, les incidents et les changements touchent des actifs et le coût d'un service est en grande partie celui de ses actifs. Pour les équipes agiles, la pratique a une particularité. Les actifs incluent désormais des ressources en nuage créées par un script en quelques secondes et détruites quelques minutes plus tard, des images de conteneurs, des bibliothèques libres et des abonnements achetés par carte. L'ancien modèle d'un tableur d'équipements achetés ne les capture pas.

L'article de la Wikipédia anglaise intitulé « IT asset management » renvoie actuellement à son article sur la gestion des centres de données, où l'ITAM apparaît dans une section. Cette section décrit l'ITAM comme des pratiques d'affaires qui réunissent les fonctions financière, contractuelle et d'inventaire pour soutenir la gestion du cycle de vie et les décisions informatiques stratégiques, et elle est brève. Ce sujet s'en sert pour la définition, y ajoute les détails des articles sur la gestion des actifs logiciels et sur les bases de données de gestion de la configuration, et place la pratique dans le cadre agile. Quand il va au-delà des sources, il le dit.

## Concepts clés

### Ce que c'est

Selon la section de Wikipédia sur la gestion des actifs de centre de données, citant Gartner, l'ITAM est un ensemble de pratiques d'affaires qui réunissent les fonctions financière, contractuelle et d'inventaire pour soutenir la gestion du cycle de vie et les décisions informatiques stratégiques. Les actifs incluent les logiciels et le matériel de l'environnement métier. La pratique s'appelle aussi gestion des stocks. L'article note que la pratique utilise la découverte automatisée pour que l'inventaire puisse être comparé aux droits de licence, et qu'une gestion complète exige un dépôt de plusieurs types d'information, intégré aux systèmes de chaîne d'approvisionnement, de centre d'assistance, d'achats, de ressources humaines et d'ITSM.

### Ce qui compte comme un actif

Une liste de travail utile pour une organisation de services :

| Type d'actif | Exemples | Traité dans |
|---|---|---|
| **Matériel** | Ordinateurs portables, serveurs, équipements réseau, téléphones, stockage | Sujet 4.3 — Gestion des actifs matériels |
| **Logiciel** | Applications sous licence, systèmes d'exploitation, composants libres, abonnements | Sujet 4.2 — Gestion des actifs logiciels |
| **Ressources en nuage et de service** | Machines virtuelles, conteneurs, espaces de stockage, comptes SaaS | Sujet 4.2 — Gestion des actifs logiciels et Sujet 4.5 — Gestion financière informatique et FinOps |
| **Données et information** | Jeux de données, enregistrements, sauvegardes | Sujet 3.13 — Gestion de la sécurité des informations |
| **Contrats et droits** | Licences, accords de support, garanties | Sujet 4.2 — Gestion des actifs logiciels et Sujet 3.14 — Gestion des fournisseurs |
| **Personnes et compétences** | Personnel et capacités (généralement absents du registre des actifs, mais partie du service) | Sujet 2.5 — Quatre dimensions de la gestion des services |

Le tableau est la liste de travail de ce guide, non une classification issue d'une source.

### Cycle de vie

La section de Wikipédia décrit la gestion des actifs matériels comme couvrant les composants physiques d'ordinateurs et de réseaux de l'acquisition à la mise au rebut, avec des pratiques listées de demande et approbation, achat, gestion du cycle de vie, réaffectation et mise au rebut, et dit que la capture de l'information financière sur le cycle de vie du matériel est une composante clé. Elle ne donne aucun modèle formel d'étapes. Une séquence pratique courante, largement utilisée et offerte ici comme telle, est :

1. **Planifier et demander :** décider de ce qui est nécessaire et obtenir l'approbation.
2. **Acquérir :** acheter ou construire, et consigner l'achat.
3. **Déployer :** mettre en service et relier à l'utilisateur ou au service.
4. **Exploiter et maintenir :** corriger, supporter, déplacer et suivre les changements.
5. **Retirer et éliminer :** retirer du service, effacer les données et éliminer en sécurité.

À chaque étape, demandez qui est responsable et quel enregistrement est tenu.

### Inventaire, découverte et enregistrements

Un registre d'actifs n'est utile que s'il est vrai. L'article note que la découverte automatisée permet de comparer l'inventaire aux droits. Les outils de découverte analysent les réseaux et les comptes en nuage pour trouver ce qui existe, et le registre consigne ce que l'organisation entend posséder et payer. Les différences entre les deux sont des constats : appareils inconnus, licences inutilisées, abonnements non approuvés.

### Relation avec l'ITSM et la CMDB

La section de Wikipédia dit que l'ITAM s'intègre à l'ITSM mais ne la rattache pas en détail aux processus d'ITIL. Les descriptions d'ITIL distinguent généralement la gestion des actifs, qui concerne la propriété, le coût et les contrats, de la gestion de la configuration, qui concerne les relations entre composants. Une **base de données de gestion de la configuration (CMDB)**, selon Wikipédia, est un terme d'ITIL pour une base de données stockant de l'information sur les actifs matériels et logiciels, appelés éléments de configuration, et les relations entre eux (voir Sujet 4.4 — Gestion de la configuration). Les enregistrements d'actifs et de configuration se recoupent ; beaucoup d'organisations fédèrent les données pour que chaque source garde le contrôle des siennes.

### Normes

La section de Wikipédia nomme l'ISO/IEC 19770 comme la famille de normes pour la gestion des actifs logiciels sans en décrire les parties. L'article sur la gestion des actifs logiciels liste les parties : 19770-1:2017 sur les exigences du système de gestion des actifs informatiques, un cadre de processus qui peut être mis en œuvre par niveaux ; 19770-2:2015 sur les balises d'identification des logiciels ; 19770-3:2016 sur la gestion des droits ; 19770-4:2017 sur la mesure de l'utilisation des ressources ; et 19770-5:2015 sur la vue d'ensemble et le vocabulaire. Consultez les normes elles-mêmes pour la formulation exacte et les éditions actuelles.

### Bénéfices et limites

La section de Wikipédia ne liste ni bénéfices ni critiques et ne nomme aucun outil. Des bénéfices pratiques sont largement affirmés, comme un moindre coût de licences, un risque de sécurité réduit et un meilleur support, mais ce guide n'a pas de preuve mesurée à leur sujet dans les sources lues. Traitez avec prudence les affirmations d'économies, demandez à ceux qui les font leurs preuves et mesurez les vôtres.

### L'ITAM dans un cadre agile et en nuage

Les pratiques des décennies passées supposent que les actifs sont achetés, livrés et installés par l'informatique. Aujourd'hui :

- **Les équipes créent elles-mêmes des ressources,** dans des consoles de nuage ou par du code. Le registre doit les apprendre du compte de nuage et non d'un bon de commande.
- **Les actifs sont éphémères.** Un conteneur peut durer une heure. Suivez le service et le compte, pas chaque instance.
- **Les abonnements remplacent les licences.** Le logiciel est payé chaque mois par la carte de quelqu'un, et la propriété est floue.
- **Les composants libres** entrent par le code, en dehors du système d'achats (voir Sujet 4.2 — Gestion des actifs logiciels).

Ces changements poussent l'ITAM vers l'automatisation, l'étiquetage et la responsabilité partagée entre l'informatique et les équipes qui utilisent les actifs.

## Bonnes pratiques

1. **Commencez par ce qui compte le plus.** Choisissez d'abord les actifs au coût ou au risque les plus élevés : licences coûteuses, serveurs exposés à Internet, appareils contenant des données sensibles. Un registre complet peut venir plus tard.
2. **Définissez ce qu'est un actif pour vos besoins.** Écrivez une courte liste de types d'actifs que vous suivrez et des faits dont vous avez besoin pour chacun : responsable, emplacement ou compte, coût, contrat et état. Évitez les champs que personne n'utilisera.
3. **Nommez un responsable pour chaque actif.** Une personne ou une équipe doit répondre de chaque actif ou groupe d'actifs. Les actifs sans responsable sont l'endroit où s'accumulent gaspillage et risque.
4. **Utilisez la découverte pour trouver ce qui existe.** Analysez réseaux, comptes de nuage et postes, et comparez avec le registre. Traitez les différences comme des éléments à examiner.
5. **Étiquetez les ressources en nuage.** Exigez des étiquettes de responsable, de service et d'environnement sur les ressources créées dans les comptes de nuage, et rendez compte de celles qui n'en ont pas. Les étiquettes permettent au registre de suivre des actifs qui évoluent vite.
6. **Reliez les achats au registre.** Veillez à ce que les nouveaux achats, abonnements et achats par carte compris, créent ou mettent à jour un enregistrement. Examinez les dépenses pour y repérer les éléments qui ne l'ont pas fait.
7. **Reliez les actifs aux services.** Consignez quel service chaque actif soutient. Cela permet de déterminer l'impact d'un incident, d'un changement ou d'un retrait (voir Sujet 4.4 — Gestion de la configuration).
8. **Suivez le côté financier.** Consignez le coût, les conditions du contrat, les dates de renouvellement et l'amortissement le cas échéant. Capturer l'information financière tout au long du cycle de vie est une composante clé de la gestion du matériel, comme le dit la section de Wikipédia.
9. **Gérez la fin de vie.** Planifiez le retrait dès le départ : effacement des données, retour et mise au rebut. Retirez accès et licences en même temps.
10. **Revoyez régulièrement.** Au moins deux fois par an, vérifiez le registre par rapport à la réalité pour les classes d'actifs les plus importantes. Corrigez le processus qui a causé toute différence.
11. **Partagez les données.** Mettez les données d'actifs à la disposition du centre de services, de la sécurité, de la finance et des équipes, sous une forme qu'ils peuvent utiliser. Des données que seul le gestionnaire d'actifs voit valent peu.
12. **Mesurez la pratique.** Suivez le degré de complétude et d'exactitude du registre, le temps qu'il faut pour retrouver un actif et le coût des éléments inutilisés. Servez-vous-en pour améliorer, pas pour classer les gens.

## Questions à discuter avec votre équipe

**Si quelqu'un demandait combien nous avons de chaque sorte d'actif, de quoi serions-nous sûrs ?**

Demandez à chaque personne d'estimer le nombre d'ordinateurs portables, de serveurs, de comptes de nuage et d'abonnements, puis comparez avec le registre. Les différences montrent l'ampleur de l'inconnu. L'animateur peut demander dans quelle catégorie les gens ont le moins confiance. Choisissez-en une à réconcilier en premier.

**Qui est responsable de chacun de nos actifs, et que se passe-t-il quand cette personne part ?**

Prenez un échantillon d'actifs et regardez le champ du responsable. Comptez ceux qui n'ont pas de responsable ou dont le responsable est parti. Demandez quel processus devrait mettre à jour les responsables quand les gens changent de poste. Convenez d'un déclencheur, comme le processus de départ.

**Que payons-nous que personne n'utilise ?**

Regardez licences, abonnements et ressources en nuage, et demandez lesquels n'ont aucun usage récent. Soyez prêt aux surprises. Demandez qui peut autoriser l'annulation de quelque chose. Choisissez les trois plus gros et vérifiez chacun.

**Comment apprenons-nous l'existence d'une nouvelle ressource en nuage ou d'un nouvel abonnement ?**

Retracez le dernier. Souvent la réponse est « à la facture » ou « quand cela a cassé ». Discutez de la manière dont les achats, l'étiquetage et la découverte pourraient le saisir plus tôt. Convenez d'un contrôle, comme des étiquettes obligatoires ou un rapport mensuel des éléments non étiquetés.

**Que devient un ordinateur portable ou un serveur en fin de vie ?**

Parcourez les étapes : qui décide, comment les données sont effacées, ce que dit l'enregistrement. Les lacunes apparaissent souvent autour de l'effacement des données et des enregistrements. Demandez la preuve qu'une mise au rebut récente a été bien faite. Prévoyez une courte liste de contrôle.

**Quelles données d'actifs d'autres équipes ont-elles besoin et que nous ne leur donnons pas ?**

Demandez au centre de services, à la sécurité et à la finance ce qu'ils aimeraient voir. Les demandes typiques incluent le responsable, le service et le coût. Discutez de la manière de les partager et de qui les tient à jour. Choisissez un rapport à produire.

## En pratique : un exemple d'ITIL agile

Un institut national de statistique compte 1 800 agents et exécute le traitement de ses enquêtes dans un mélange de centre de données interne et de compte de nuage public. L'équipe financière remarque que la facture du nuage a augmenté d'un tiers en un an, et un audit de sécurité découvre trois serveurs dans le centre de données que personne ne sait identifier. La fonction ITAM compte deux personnes avec un tableur.

Le directeur informatique se fixe un but modeste : connaître les principaux actifs, leurs responsables et leur coût, en commençant par le nuage. Une nouvelle règle exige des étiquettes de responsable, de service et d'environnement sur chaque ressource en nuage. Un rapport hebdomadaire liste les ressources non étiquetées, et les équipes ont deux semaines pour les revendiquer ou les supprimer. Dans le centre de données, les deux personnes de l'ITAM lancent une analyse de découverte et la comparent au tableur, trouvant 40 appareils qui ne figurent pas sur la liste. Elles retrouvent les responsables de la plupart. Les achats conviennent que tout nouvel abonnement logiciel est signalé à l'ITAM dans la semaine.

Au bout d'un trimestre, la part des ressources en nuage non étiquetées tombe d'environ un tiers à une poignée, et la finance peut attribuer la facture du nuage aux services. Quelques ressources inutilisées sont arrêtées, et deux serveurs sont retirés. Des problèmes subsistent. Un groupe de recherche achète des outils avec une carte du département et ne les signale pas, et le rapport hebdomadaire n'est lu que par quelques équipes. Le personnel de l'ITAM discute avec le groupe de recherche d'un simple formulaire d'enregistrement et demande à la directrice financière d'ajouter les abonnements à la revue mensuelle. Ils décident aussi que le registre couvrira les services en nuage par compte et par service, et non chaque instance éphémère.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison créent beaucoup d'actifs. Étiquetez ce que vous créez, enregistrez les abonnements et bibliothèques que vous ajoutez et retirez ce dont vous n'avez plus besoin. Traitez le registre comme un service auquel vous contribuez et dont vous profitez.

### Équipes de service et d'exploitation

Les équipes d'exploitation dépendent du registre pour le support, les correctifs et la réponse aux incidents. Gardez-le exact en le mettant à jour au déploiement, au changement et au retrait. Utilisez la découverte pour trouver ce qui manque et signalez les différences aux responsables.

### Direction et gouvernance

Les dirigeants et la finance utilisent les données d'actifs pour décider des dépenses, des risques et des renouvellements. Demandez quelques chiffres fiables, comme la dépense par service et la part des actifs ayant un responsable, plutôt qu'un registre parfait. Soutenez les petits contrôles, comme les étiquettes et le signalement des achats, qui le gardent vrai.

### Clients et utilisateurs

Les utilisateurs profitent d'équipements et d'accès bien gérés : appareils qui fonctionnent, remplacements rapides et pas de frais surprises. Dites au centre de services l'équipement que vous ajoutez ou dont vous n'avez plus besoin, et attendez-vous à ce qu'on vous demande de confirmer ce que vous détenez.

## Modes d'échec courants

- **Un registre auquel personne ne fait confiance.** Il est périmé et ignoré. À la place, restreignez le périmètre, utilisez la découverte et mettez à jour à chaque événement du cycle de vie.
- **Pas de responsables.** Les actifs n'appartiennent à personne. À la place, exigez un responsable pour chaque actif ou groupe.
- **Tout suivre.** L'effort enterre la valeur. À la place, commencez par ce qui est coûteux ou risqué, puis agrandissez.
- **Ignorer le nuage et les abonnements.** Le registre ne couvre que le matériel acheté. À la place, étiquetez les ressources en nuage et capturez les abonnements.
- **Des achats hors processus.** Les achats par carte contournent le registre. À la place, reliez les achats et les rapports de dépenses à l'ITAM.
- **Pas de processus de fin de vie.** De vieux appareils gardent des données et des accès. À la place, planifiez le retrait, l'effacement et la mise au rebut.
- **Des données gardées pour soi.** Seule l'ITAM voit le registre. À la place, partagez-le avec le centre de services, la sécurité et la finance.
- **Compter sans agir.** Les rapports montrent des actifs inutilisés et rien n'est annulé. À la place, attribuez des responsables pour agir sur les constats.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Inventaire et découverte | Les actifs sont listés dans des tableurs ou pas du tout | Certaines classes d'actifs sont inventoriées | La découverte et un registre couvrent les principales classes d'actifs et sont réconciliés régulièrement | La complétude et l'exactitude sont mesurées et les lacunes comblées | L'inventaire couvre interne, nuage et fournisseurs avec des données partagées |
| Responsabilité | Peu d'actifs ont des responsables | Des responsables sont nommés pour certains actifs | Chaque actif ou groupe a un responsable, tenu à jour par un processus | Les lacunes de responsabilité sont suivies et résolues | Les responsables entre équipes et fournisseurs travaillent selon des règles partagées |
| Cycle de vie et contrôle financier | Achat et mise au rebut sont informels | Certains actifs ont des données de coût et de contrat | Les étapes du cycle de vie et les données financières sont consignées pour les principaux actifs | Coût, renouvellements et utilisation sont revus et suivis d'effet | Les données financières et de cycle de vie sont reliées aux services et partagées avec la finance |
| Usage des données | Les données sont utilisées par peu de monde | Le centre de services utilise parfois le registre | Centre, sécurité et finance utilisent routinièrement les données d'actifs | La qualité et l'usage des données sont mesurés et améliorés | Les données alimentent les décisions dans toute l'organisation et avec les partenaires |

## Liste de contrôle

- [ ] Nous avons une courte liste de types d'actifs et des faits que nous consignons pour chacun.
- [ ] Chaque actif ou groupe suivi a un responsable nommé.
- [ ] Les résultats de la découverte sont comparés au registre selon un calendrier régulier.
- [ ] Les ressources en nuage portent des étiquettes de responsable, de service et d'environnement, et celles qui n'en ont pas sont signalées.
- [ ] Les nouveaux achats, abonnements compris, créent ou mettent à jour un enregistrement.
- [ ] Les actifs sont reliés aux services qu'ils soutiennent.
- [ ] Les données de coût, de contrat et de renouvellement sont consignées pour les principaux actifs.
- [ ] Le retrait inclut la suppression des données, la suppression des accès et un enregistrement.
- [ ] Le registre est réconcilié avec la réalité au moins deux fois par an pour les principales classes d'actifs.
- [ ] Le centre de services, la sécurité et la finance peuvent voir les données dont ils ont besoin.

## Prompts d'IA

**Objectif : réconcilier les résultats de la découverte avec le registre.**

```text
J'ai deux listes d'actifs : ce que dit notre registre que nous avons, et ce qu'une analyse de découverte a trouvé.

Registre : [collez un tableau avec nom ou identifiant de l'actif, type, responsable et état ; retirez les données personnelles].
Découverte : [collez un tableau avec nom ou identifiant, type et détails d'identification].

En n'utilisant que ces listes, identifiez : les éléments du registre non trouvés par la découverte ; les éléments trouvés par la découverte et absents du registre ; et les éléments dont les détails diffèrent. Pour chaque groupe, suggérez une question à poser au responsable ou à l'équipe. Ne devinez pas ce qu'est un élément inconnu. Si les listes sont trop minces pour apparier, dites quoi ajouter. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une courte norme d'étiquetage pour les ressources en nuage.**

```text
Aidez-moi à rédiger une norme d'étiquetage d'une page pour les ressources en nuage.

Nos comptes de nuage et nos équipes : [décrivez].
Faits que nous devons connaître sur une ressource : [par exemple responsable, service, environnement, centre de coût, sensibilité des données].
Problèmes aujourd'hui : [par exemple ressources non étiquetées et responsables inconnus].

Proposez de trois à six étiquettes obligatoires avec valeurs ou formats autorisés, la manière dont les ressources non étiquetées seront trouvées et signalées, qui est responsable de les corriger et un délai de grâce (laissez la durée comme [à convenir]). Signalez les hypothèses. N'inventez pas notre outillage. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une liste de contrôle de retrait pour un appareil ou un serveur.**

```text
Aidez-moi à rédiger une liste de contrôle de retrait pour [type d'actif, par exemple « ordinateurs portables » ou « serveurs »].

Notre pratique actuelle : [décrivez].
Données qu'il peut contenir : [décrivez la sensibilité].
Enregistrements que nous devons conserver : [listez, ou écrivez « inconnu »].
Règles ou contrats applicables, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Produisez une liste de contrôle couvrant : approbation, retrait des accès et des licences, effacement ou destruction des données avec preuve, mise à jour du registre, enregistrements financiers, et mise au rebut ou retour. Marquez chaque élément qui est une hypothèse. N'affirmez pas qu'une loi exige une étape à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver des candidats à l'économie à partir de données d'usage.**

```text
Voici un tableau de nos abonnements et licences avec le coût mensuel, le nombre de postes payés et le nombre d'utilisateurs actifs au cours des 90 derniers jours : [collez de vraies données].

En n'utilisant que mes chiffres, listez les éléments où les postes payés dépassent les utilisateurs actifs et calculez la différence et le coût des postes inutilisés. Classez par coût. Pour les cinq premiers, suggérez une question à poser au responsable avant de changer quoi que ce soit. Ne supposez pas que les utilisateurs inactifs peuvent perdre leur accès ; signalez-le comme une question. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md) : à utiliser pour planifier comment les actifs et leurs relations sont consignés et gardés exacts.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour gérer les contrats et renouvellements qui se trouvent derrière les actifs.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md) : à utiliser pour prévoir le coût des actifs et des abonnements.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour clarifier qui est responsable, assure le support et approuve chaque classe d'actifs.
- [data-governance](../../../../skills/data-governance/SKILL.md) : à utiliser pour décider de qui est responsable des données stockées sur les actifs et de la manière dont elles sont retirées.

## Sources principales

- **IT asset management** (Wikipedia, actuellement dans l'article sur la gestion des centres de données) : une courte définition et une description de la gestion des actifs matériels.
- **Software asset management** (Wikipedia) : la définition, les buts, les technologies et les parties de l'ISO/IEC 19770.
- **Configuration management database** (Wikipedia) : le terme ITIL pour le dépôt des éléments de configuration et des relations.
- **ITIL** (Wikipedia) : le cadre qui traite l'ITAM à côté de la gestion des services.

## Références

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
