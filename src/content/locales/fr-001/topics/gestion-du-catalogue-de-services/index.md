# Gestion du catalogue de services

**Un catalogue de services est une liste soigneusement tenue de ce qu'offre une organisation, avec un responsable et une description simple pour chaque service ; sa valeur dépend de ce que les utilisateurs le trouvent utile et de ce que les responsables le maintiennent exact.**

## Pourquoi c'est important

Demandez à un utilisateur ce qu'offre l'informatique et vous obtiendrez souvent une réponse vague. Demandez à l'équipe informatique et vous obtiendrez une liste de systèmes. Les deux listes coïncident rarement, et l'écart cause des malentendus : les utilisateurs demandent des choses qui n'existent pas, les équipes supportent des services que personne n'utilise et personne ne peut dire qui est responsable de quoi. Un catalogue de services comble cet écart en énonçant, en un seul endroit et en termes simples, ce qui est offert et qui en répond.

Pour les équipes agiles, le catalogue est aussi un moyen de rendre la responsabilité visible. Une équipe qui construit et exploite un service doit pouvoir dire : « voici ce que nous offrons, voici qui demander, voici ce que vous pouvez attendre ». Sans cela, les demandes arrivent au mauvais endroit, les incidents rebondissent entre équipes et les nouveaux ne trouvent pas d'aide.

L'[article de Wikipédia sur les catalogues de services](https://en.wikipedia.org/wiki/Service_catalog) décrit un catalogue de services comme une collection organisée et soigneusement tenue de services métier et informatiques au sein d'une entreprise, qui sert d'outil de gestion des connaissances en désignant des experts pour chaque service listé. Il note que le volume Service Design d'ITIL définit un catalogue de services informatiques comme une liste exhaustive des seuls services informatiques et la seule partie du portefeuille de services publiée aux clients, sans préciser l'édition d'ITIL. Ce sujet s'appuie sur cette description et sur les autres sujets du guide, et garde le catalogue pratique et léger.

## Concepts clés

### Ce que contient un catalogue

Selon Wikipédia, chaque entrée d'un catalogue de services comprend typiquement un responsable nommé, une description, une catégorie, les types de demandes liés, les services sous-jacents, les droits d'accès, les coûts, la manière dont le service est demandé et exécuté et des contacts d'escalade. Les catégories courantes incluent l'informatique, l'exploitation et l'exécution. Vous n'avez pas besoin de tout cela pour chaque service. Un bon catalogue commence par les quelques éléments dont les utilisateurs et le personnel de support ont réellement besoin.

| Champ | Pourquoi il aide | Qui l'utilise |
|---|---|---|
| **Nom et description en mots simples** | Les utilisateurs reconnaissent ce qui est offert | Utilisateurs, centre de services |
| **Responsable** | Quelqu'un répond du service | Tout le monde |
| **Qui peut l'utiliser (droit d'accès)** | Évite les demandes inutiles | Utilisateurs, centre de services |
| **Comment demander ou obtenir de l'aide** | Mène les utilisateurs au bon endroit | Utilisateurs, centre de services |
| **De quoi il dépend (services sous-jacents)** | Montre ce qui doit aussi fonctionner | Exploitation, équipes de livraison |
| **Coût, s'il est facturé** | Soutient les décisions et les budgets | Clients, finance |
| **Niveau de service ou attente** | Fixe les attentes | Utilisateurs, clients (voir Sujet 3.7 — Gestion des niveaux de service) |
| **Contact d'escalade** | Accélère l'aide pendant les problèmes | Centre de services, exploitation |

### Catalogue et portefeuille

L'article de Wikipédia place le catalogue de services informatiques comme un sous-ensemble du catalogue d'entreprise plus large. Dans le vocabulaire ITIL, le portefeuille de services est l'ensemble complet des services, y compris ceux en cours de développement et ceux en cours de retrait, et le catalogue est la partie publiée aux clients. Les sources lues ici ne définissent pas en détail le portefeuille : l'article sur la gestion du portefeuille de services renvoie à la gestion du portefeuille informatique, qui dit seulement qu'ITIL v3 appelle une pratique de gestion du portefeuille de services qui paraît fonctionnellement équivalente à la gestion du portefeuille informatique. Traitez l'idée de portefeuille ainsi : le catalogue est ce que vous offrez maintenant, et le portefeuille est aussi ce que vous construisez et retirez (voir Sujet 5.7 — Gouvernance, risques et conformité pour les choix de portefeuille).

### Catalogues d'entreprise et informatiques

Un catalogue de services d'entreprise couvre les services de plusieurs fonctions, comme les ressources humaines, les installations et l'informatique. Un catalogue de services informatiques en est un sous-ensemble. L'article cite des bénéfices d'un catalogue : centraliser les services dans des entreprises distribuées, repérer les lacunes et redondances de services, suivre l'affectation des ressources et mesurer la demande, l'offre, les délais d'approbation, les délais de livraison et les finances. Pour les services en nuage, il cite l'auto-approvisionnement et des définitions normalisées qui aident la planification de la capacité et les prévisions d'achat. Ce sont des affirmations de l'article, fondées sur ses sources citées.

### Vue métier et vue technique

Beaucoup d'organisations distinguent ce que voient les clients de ce dont le fournisseur a besoin en interne. Les sources lues ici ne font pas cette distinction ; considérez-la donc comme une pratique courante. La **vue tournée vers le client** liste les services dans les termes de l'utilisateur (« Courriel et agenda »). La **vue technique** liste les composants et les équipes qui sont derrière (« Serveurs de messagerie, filtre antispam, service d'annuaire »). La vue client aide les utilisateurs à choisir. La vue technique aide l'exploitation à comprendre les dépendances (voir Sujet 4.4 — Gestion de la configuration). Gardez les deux reliées mais séparées, pour que les utilisateurs ne soient pas confrontés à des noms de composants.

### Le catalogue comme outil de connaissance

L'article de Wikipédia souligne que le catalogue désigne des experts pour chaque service. Cela en fait une carte de qui sait quoi. Un catalogue tenu à jour aide le centre de services à acheminer les contacts, aide les nouveaux à trouver de l'aide et aide les intervenants en cas d'incident à joindre la bonne personne (voir Sujet 3.9 — Gestion des connaissances).

### Catalogue et demandes

Le catalogue inclut généralement les demandes que les utilisateurs peuvent faire pour chaque service, comme « demander un accès » ou « signaler un défaut ». Un modèle de demande décrit comment chacune est exécutée (voir Sujet 3.6 — Gestion des demandes de service). Tous les services n'ont pas besoin de demandes, et toutes les demandes n'ont pas besoin d'une entrée du catalogue, mais les demandes fréquentes doivent être faciles à trouver.

### Le garder exact

Un catalogue devient vite périmé si personne n'en est responsable. Les services changent, les équipes se réorganisent et les descriptions s'écartent de la réalité. La discipline la plus utile est un cycle de revue : chaque responsable confirme ses entrées selon un calendrier, et les services inutilisés sont retirés. L'article de Wikipédia ne discute ni critiques ni limites, mais l'expérience pratique est concordante : un catalogue faux est pire que pas de catalogue, car il envoie les gens au mauvais endroit avec assurance.

### Catalogues et équipes agiles

Les équipes agiles résistent souvent aux catalogues lourds parce qu'elles s'attendent à de la bureaucratie. Un catalogue léger est compatible avec les façons de travailler agiles. Ce peut être un document ou une page partagés, entretenus par les responsables eux-mêmes, avec quelques champs par service. Le test est l'usage : les utilisateurs et le centre le consultent-ils vraiment ?

## Bonnes pratiques

1. **Listez les services avec les mots des utilisateurs.** Commencez par demander aux utilisateurs et au centre de services comment ils nommeraient chaque chose. Nommez les services d'après ce que font les utilisateurs (« Rejoindre une réunion vidéo ») et non d'après la technologie (« Plateforme de conférence »).
2. **Donnez à chaque service un responsable nommé.** Une personne doit répondre de chaque service. Quand un service a plusieurs parties, nommez un responsable pour l'ensemble et listez les contributeurs.
3. **Commencez petit.** Commencez par les 10 à 20 services dont les utilisateurs parlent le plus souvent. Ajoutez-en à mesure que vous apprenez ce qui est utile. Une liste courte et exacte vaut mieux qu'une longue liste périmée.
4. **N'incluez que ce que les gens utilisent.** Pour chaque champ, demandez qui l'utilise et pour quoi. Retirez les champs que personne n'utilise. N'ajoutez un champ que lorsque quelqu'un en a besoin.
5. **Reliez aux demandes et à l'aide.** Pour chaque service, montrez comment demander quelque chose, signaler un défaut et trouver de l'aide. Renvoyez à la base de connaissances (voir Sujet 3.9 — Gestion des connaissances).
6. **Montrez les attentes de service.** Énoncez ce que les utilisateurs peuvent attendre, comme les heures de support et la réponse typique, en termes simples. Renvoyez à l'accord formel quand il y en a un.
7. **Consignez les dépendances.** Pour chaque service, notez les principaux services et fournisseurs dont il dépend. Cela aide la réponse aux incidents et la planification des changements.
8. **Séparez la vue client de la vue technique.** Gardez les descriptions tournées vers l'utilisateur exemptes de jargon. Reliez-les aux enregistrements techniques là où ils existent.
9. **Revoyez selon un calendrier.** Demandez à chaque responsable de confirmer ses entrées au moins deux fois par an, et retirez les services que personne n'utilise. Montrez la date de dernière revue sur chaque entrée.
10. **Rendez-le facile à trouver et à utiliser.** Mettez le catalogue là où les utilisateurs regardent déjà, comme l'intranet ou le portail. Testez la recherche avec de vraies requêtes.
11. **Utilisez le catalogue pour trouver lacunes et recouvrements.** Cherchez les services sans responsable, les services qui se doublonnent et les demandes sans service correspondant. Apportez les constats à la planification (voir Sujet 5.5 — Propriété des produits et des services).
12. **Traitez les changements du catalogue comme des changements de service.** Quand vous ajoutez, modifiez ou retirez un service, annoncez-le au centre et aux utilisateurs concernés, comme vous le feriez pour une version.

## Questions à discuter avec votre équipe

**Si un nouveau collègue demandait ce que nous offrons, que répondrions-nous, et dirions-nous tous la même chose ?**

Demandez à chaque personne de lister les services en deux minutes, puis comparez. Les différences montrent à quel point les frontières sont floues. L'animateur peut demander quels éléments les utilisateurs ne reconnaîtraient pas. Servez-vous de la liste combinée comme brouillon de catalogue et marquez les éléments où il y a désaccord.

**Quels services n'ont pas de responsable clair ?**

Parcourez la liste et marquez ceux dont personne ne peut dire qui répond. Les services sans responsable causent souvent les plus longs retards dans les incidents et les demandes. Demandez ce qui empêche une personne de prendre la responsabilité : temps, autorité ou frontières floues. Convenez d'un responsable ou d'une décision de retrait pour chacun.

**Qu'est-ce que les utilisateurs demandent et que nous ne listons pas, et qu'est-ce que nous listons et que personne ne demande ?**

Comparez les données de demandes avec la liste. Les demandes sans service correspondant révèlent des lacunes ; les services listés sans demandes révèlent des candidats au retrait. Soyez prudent : certains services sont utilisés en silence. Demandez aux utilisateurs avant de retirer. Choisissez une lacune et un candidat à examiner.

**Que faudrait-il qu'un utilisateur voie pour choisir le bon service sans nous appeler ?**

Prenez un choix courant, comme l'outil à utiliser pour partager des fichiers. Demandez quelle information aiderait : une courte description, à qui il s'adresse, une comparaison. Rédigez une entrée d'un paragraphe et testez-la avec deux utilisateurs. Le but est un catalogue qui détourne des appels par sa clarté.

**Comment découvrons-nous qu'un service a changé et que le catalogue est périmé ?**

Demandez quand a eu lieu la dernière revue et qui l'a faite. Discutez des déclencheurs, comme une réorganisation ou une version majeure, et d'un cycle régulier. Une date « dernière revue » visible sur chaque entrée aide. Convenez de la date de la première revue et de qui en est responsable.

**De quoi dépendons-nous qui ne figure pas dans le catalogue ?**

Listez les plateformes et fournisseurs derrière vos services. Demandez lesquels sont listés et qui en est responsable. Les dépendances sans responsable sont des risques. Choisissez-en une à ajouter à la vue technique.

## En pratique : un exemple d'ITIL agile

Un conseil régional compte 120 personnes dans son service informatique, qui dessert 2 500 agents du conseil et plusieurs services ouverts au public. Le personnel se plaint de ne pas savoir à qui demander de l'aide, et le centre de services passe une grande partie de son temps à rediriger les appels. Le conseil avait un jour construit un catalogue de services de 300 entrées, mais il est rarement utilisé et en grande partie périmé.

La responsable de la fourniture de services décide de repartir de zéro, en petit. Elle demande au centre les 30 raisons les plus courantes pour lesquelles on le contacte et les regroupe en 15 services avec les mots des utilisateurs : « Courriel et agenda », « Fichiers et partage », « Ordinateurs portables et appareils », « Site web du conseil », « Système financier », etc. Pour chacun, un responsable nommé écrit quatre choses : une description de deux phrases, à qui il s'adresse, comment obtenir de l'aide et à quoi s'attendre. Les dépendances sont consignées dans une liste technique séparée pour l'exploitation. Le catalogue est une page web unique sur l'intranet du conseil, et chaque entrée montre la date à laquelle son responsable l'a confirmée pour la dernière fois.

Après trois mois, les appels au centre sur la question de savoir à qui s'adresser baissent, et les responsables remarquent des lacunes : personne n'était responsable du système de réservation de salles de réunion, et deux services se recoupaient. Ils sont attribués et fusionnés. Des problèmes subsistent. Trois responsables n'ont pas confirmé leurs entrées, et certains agents appellent encore le centre par habitude. La responsable de la fourniture de services fixe un cycle de rappel et organise que le centre renvoie les appelants vers le catalogue tout en traitant leur demande. Elle constate aussi que certaines entrées sont écrites en langage technique et demande à une chargée de communication de les revoir.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison doivent être désignées responsables des services qu'elles construisent et exploitent, et tenir leurs entrées à jour. Quand vous lancez ou retirez un service, mettez à jour le catalogue et prévenez le centre de services. Servez-vous du catalogue pour savoir à qui parler d'une dépendance.

### Équipes de service et d'exploitation

L'exploitation et le centre de services sont les plus gros utilisateurs. Dites aux responsables ce qui est faux ou manquant dans les entrées et utilisez le catalogue pour l'acheminement et l'escalade. Gardez la vue technique reliée à la vue client, pour que les intervenants en cas d'incident voient ce qui dépend de quoi.

### Direction et gouvernance

Les dirigeants peuvent utiliser le catalogue pour voir ce que l'organisation offre, ce qui se recoupe et ce qui est orphelin. Demandez que les lacunes et les doublons soient traités et que des responsables soient nommés. N'exigez pas tous les champs pour chaque service ; demandez ce qui soutient les décisions.

### Clients et utilisateurs

Les clients et utilisateurs obtiennent une vue claire de ce qu'ils peuvent demander et de ce à quoi s'attendre. Servez-vous du catalogue pour trouver le bon service et dites aux responsables quand une entrée est fausse ou floue. Si vous ne trouvez pas ce dont vous avez besoin, dites-le, car c'est une preuve de lacune.

## Modes d'échec courants

- **Trop gros, trop tôt.** Des centaines d'entrées sont créées et non entretenues. À la place, commencez par les services les plus utilisés et agrandissez.
- **Rédigé dans le langage du fournisseur.** Les utilisateurs ne trouvent pas ce dont ils ont besoin. À la place, nommez les services d'après ce que font les utilisateurs et testez avec eux.
- **Pas de responsables.** Personne ne maintient les entrées exactes. À la place, nommez un responsable pour chaque entrée et montrez les dates de revue.
- **Un catalogue que personne n'utilise.** Il repose sur un site que les utilisateurs ne visitent pas. À la place, placez-le là où les gens regardent déjà et faites-y renvoyer par le centre.
- **Mélanger les vues client et technique.** Les utilisateurs sont confrontés à des noms de composants. À la place, gardez une vue client claire et reliez-y une vue technique pour l'exploitation.
- **Pas de retrait.** Des services morts restent listés. À la place, revoyez l'usage et retirez ce dont personne n'a besoin.
- **Le traiter comme un projet ponctuel.** Le catalogue devient périmé après le lancement. À la place, fixez un cycle de revue et intégrez-le aux changements.
- **Trop de champs obligatoires.** Les responsables remplissent les champs pour satisfaire le modèle. À la place, n'exigez que ce que quelqu'un utilise.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Couverture et clarté | Les services sont connus informellement | Une liste de certains services existe | Un catalogue des principaux services avec les mots des utilisateurs et des responsables | L'usage et les lacunes sont mesurés et le catalogue ajusté | Le catalogue couvre fonctions et partenaires et est façonné avec les utilisateurs |
| Responsabilité et actualité | Personne ne possède la liste | Certains responsables confirment parfois les entrées | Chaque entrée a un responsable et une date de revue | Les revues en retard sont suivies et résolues | Responsabilité et revue sont routinières dans toute l'organisation |
| Lien avec les demandes et l'aide | Les demandes passent par courriel ou téléphone | Certaines entrées renvoient à des formulaires ou à de l'aide | Les entrées renvoient aux demandes, à la connaissance et aux voies de support | Les clics et le détournement d'appels sont mesurés | Demandes, connaissance et support sont intégrés entre fonctions |
| Dépendances et décisions | Les dépendances sont un savoir tacite | Certaines dépendances sont listées | Les dépendances sont consignées et servent au travail d'incident et de changement | Les données de dépendance soutiennent la planification et la revue des risques | Les dépendances sont partagées avec les fournisseurs et servent à planifier conjointement |

## Liste de contrôle

- [ ] Nous avons une liste de services avec les mots des utilisateurs, en commençant par les plus utilisés.
- [ ] Chaque service a un responsable nommé.
- [ ] Chaque entrée dit à qui elle s'adresse, comment obtenir de l'aide et à quoi s'attendre.
- [ ] Le catalogue est là où les utilisateurs et le centre de services regardent déjà.
- [ ] Les entrées montrent la date de leur dernière confirmation.
- [ ] Les responsables revoient leurs entrées au moins deux fois par an.
- [ ] Les principales dépendances sont consignées dans une vue technique.
- [ ] Les services inutilisés sont examinés en vue d'un retrait.
- [ ] L'ajout, le changement ou le retrait d'un service est annoncé au centre et aux utilisateurs.
- [ ] Nous avons testé le catalogue avec de vraies requêtes d'utilisateurs.

## Prompts d'IA

**Objectif : transformer des données de contacts en brouillon de liste de services avec les mots des utilisateurs.**

```text
Voici les raisons pour lesquelles des personnes ont contacté notre centre de services au cours des [période] dernières : [collez de courtes descriptions anonymisées ou des effectifs par catégorie].

Regroupez-les en 10 à 20 services candidats, chacun nommé en mots simples qu'un utilisateur non technique reconnaîtrait, comme « Courriel et agenda ». Pour chacun, donnez une description de deux phrases fondée uniquement sur les contacts, les contacts qui y entrent et une question à poser à son responsable. Listez les contacts qui n'entrent nulle part. N'inventez pas de services ou de systèmes qui n'apparaissent pas dans les données. Posez d'abord des questions de clarification si les données sont minces et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une entrée de catalogue claire.**

```text
Aidez-moi à rédiger une entrée de catalogue de services pour [service].

Ce qu'il fait, avec mes mots : [décrivez].
Qui peut l'utiliser : [décrivez].
Comment les utilisateurs obtiennent de l'aide ou font des demandes : [décrivez].
Heures de support et ce que les utilisateurs peuvent attendre : [décrivez, ou écrivez « inconnu »].
Principales dépendances : [listez].
Responsable : [rôle].

Rédigez une courte entrée pour les utilisateurs (sans jargon, moins de 80 mots) et une note technique séparée pour l'exploitation. Marquez comme hypothèse tout ce que vous avez ajouté. N'inventez ni niveaux de service ni contacts. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : passer en revue un catalogue à la recherche de lacunes, de recouvrements et d'orphelins.**

```text
Voici notre catalogue de services (noms, responsables, descriptions et dates de dernière revue) : [collez].
Voici des données sur ce que les utilisateurs demandent ou signalent : [collez des effectifs par sujet, ou écrivez « aucune »].

En n'utilisant que ce texte, listez : les services sans responsable ou dont la revue est en retard ; les paires de services qui semblent se recouper ; les sujets de demande sans service correspondant ; et les services sans demande dans les données. Pour chacun, suggérez une question pour le responsable ou le centre plutôt qu'une conclusion. Ne devinez rien sur des services non listés. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une revue du catalogue avec les responsables.**

```text
Planifiez une revue de 60 minutes de notre catalogue de services avec [nombre] responsables de services.

État du catalogue : [décrivez, par exemple le nombre d'entrées et leur ancienneté].
Problèmes que nous connaissons : [listez].

Donnez un ordre du jour minuté où chaque responsable confirme ou corrige ses entrées, où l'on examine recouvrements et lacunes, décide quoi retirer et convient d'une date de revue. Incluez un modèle d'une page que les responsables préparent. Restez libre de tout outil précis. Posez d'abord des questions de clarification s'il manque des informations, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md) : à utiliser pour rédiger des entrées et structurer un catalogue de services.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md) : à utiliser pour comprendre qui utilise chaque service et ce dont il a besoin.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md) : à utiliser pour trouver quelles demandes et quels services sont les plus utilisés.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour consigner qui est responsable, assure le support et est consulté pour chaque service.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md) : à utiliser pour planifier comment les services seront ajoutés, modifiés ou retirés dans le temps.

## Sources principales

- **Service catalog** (Wikipedia) : une courte description du contenu, des bénéfices et de la définition ITIL d'un catalogue de services informatiques.
- **IT portfolio management** (Wikipedia) : contexte sur les notions de portefeuille, y compris la note que la gestion du portefeuille de services d'ITIL v3 paraît fonctionnellement équivalente.
- **ITIL** (Wikipedia) : contexte sur les versions d'ITIL et l'origine des notions de catalogue et de portefeuille.
- **Knowledge management** (Wikipedia) : contexte sur la façon dont les catalogues servent d'outils de connaissance.

## Références

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
