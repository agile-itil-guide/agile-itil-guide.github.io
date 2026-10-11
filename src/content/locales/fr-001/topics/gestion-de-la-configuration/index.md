# Gestion de la configuration

**La gestion de la configuration garde une image exacte et utilisable des parties d'un service et de leurs relations, et sa forme moderne est un enregistrement construit à partir de code et de découverte, auquel on se fie parce que le système lui-même le tient à jour.**

## Pourquoi c'est important

Quand quelque chose casse, les premières questions sont toujours les mêmes. Qu'est-ce que ce composant ? À quoi est-il relié ? Qu'est-ce qui a changé ? Qui en est responsable ? Si les réponses prennent une heure à trouver, un incident qui aurait pu être corrigé en quelques minutes traîne. Quand un changement est planifié, les mêmes questions décident si l'on comprend le risque. Une bonne image du service et de ses parties est l'une des choses les plus utiles qu'une équipe d'exploitation puisse avoir.

C'est aussi l'une des plus difficiles à garder vraie. Des documents d'infrastructure, dessinés une fois, sont périmés en quelques semaines. Des bases de composants, tenues à la main, sont fausses d'une manière que personne ne voit. Les façons de travailler agiles et en nuage aggravent cela d'un côté, avec de nombreuses petites pièces qui changent vite, et l'améliorent de l'autre, car la configuration peut être écrite en code, stockée sous contrôle de version et appliquée automatiquement.

L'article de la Wikipédia anglaise sur la gestion de la configuration la décrit comme un processus de gestion pour établir et maintenir la cohérence entre les attributs d'un produit et ses exigences, sa conception et ses informations opérationnelles tout au long de sa vie, avec des racines au département américain de la Défense dans les années 1950. L'article sur les bases de données de gestion de la configuration décrit le terme ITIL pour le dépôt des éléments de configuration et de leurs relations. L'article sur l'infrastructure en tant que code décrit la gestion de ressources par des fichiers de définition lisibles par machine. Ensemble, ils donnent la vision traditionnelle et la moderne, et ce sujet les relie.

## Concepts clés

### La gestion de la configuration en général

Selon Wikipédia, la gestion de la configuration (CM) est utilisée dans les systèmes militaires, dans la gestion des services informatiques selon ITIL et dans le génie civil. Son histoire commence au département américain de la Défense dans les années 1950 comme discipline technique pour le matériel, des normes militaires de la fin des années 1960 et des années 1970 en faisant une discipline à part entière. L'article nomme plusieurs normes, dont ANSI/EIA-649, ISO 10007 (édition 2017) et IEEE 828-2012. Les disciplines centrales qu'il liste, issues de manuels militaires et de la norme EIA, sont :

| Discipline | Ce qu'elle fait |
|---|---|
| **Planification et gestion** | Un plan couvrant les personnes, la formation, les conventions de nommage, les audits et les exigences envers les fournisseurs |
| **Identification de la configuration** | Fixer et maintenir des lignes de base qui définissent l'architecture et les composants ; les produits suivis sont les **éléments de configuration (CI)** |
| **Contrôle de la configuration** | Évaluer les demandes de changement et les approuver ou les rejeter |
| **Comptabilité d'état de la configuration** | Consigner et rapporter les descriptions des CI et les écarts par rapport à la ligne de base |
| **Vérification et audit** | Contrôles indépendants que le système correspond à sa documentation et à ses exigences |

Une **ligne de base** est un point de référence convenu ; une fois un attribut mis en ligne de base, les changements passent par un contrôle formel, sont évalués, approuvés puis remis en ligne de base. L'article distingue la gestion de la configuration de la gestion des actifs, qui se concentre sur la comptabilité financière et la valeur des actifs informatiques (voir Sujet 4.1 — Gestion des actifs informatiques).

### Gestion de la configuration logicielle

L'article décrit la gestion de la configuration logicielle comme l'identification des attributs du logiciel à divers moments et le contrôle des changements pour maintenir l'intégrité et la traçabilité, avec les quatre mêmes procédures d'identification, de contrôle, de comptabilité d'état et d'audits. Les systèmes de contrôle de version, les outils de construction et les enregistrements de versions en sont des exemples modernes.

### La base de données de gestion de la configuration

Wikipédia décrit une **base de données de gestion de la configuration (CMDB)** comme un terme ITIL pour une base de données qui stocke de l'information sur les actifs matériels et logiciels d'une organisation, les CI, et les relations entre eux. Elle « représente la configuration autorisée des composants significatifs de l'environnement informatique ». Points clés de l'article :

- **Les CI ont des attributs** comme un identifiant, des noms, des descriptions, une propriété et une importance, qui peuvent se compter par centaines.
- **Les relations** relient généralement un CI source à un CI cible. Des relations plus avancées ajoutent un descripteur, comme une base de données qui est un composant d'une application.
- **Fédération :** les mises en œuvre fédèrent souvent des données issues de sources comme la gestion des actifs, pour que chaque source garde le contrôle de ses données ; l'article oppose cela à la copie des données dans la CMDB.
- **Usages :** analyse d'impact, analyse de cause racine, gestion des changements, gestion des incidents, inventaire et constructions.
- **Types de CI :** matériel, logiciel, communications et réseaux, emplacement, documentation et personnes ; les organisations matures ajoutent des types métier comme les produits et les fournisseurs.
- **Difficultés :** pertinence (collecter des données sur tout le cycle de vie de chaque CI), maintenance (garder une haute qualité des données, ce qui exige plusieurs rôles spécialisés) et utilisabilité (les CMDB sont souvent de simples bases de données sans visualisation, si bien qu'une couche applicative supplémentaire peut être nécessaire).

L'article nomme la découverte automatique des CI et le suivi des changements comme facteurs clés de succès. Il n'indique aucune date de création, aucune version précise d'ITIL et aucune donnée d'adoption, et il est signalé comme nécessitant davantage de citations. Il dit aussi qu'ITIL a rebaptisé le processus Service Asset and Configuration Management dans ITIL version 3 (cela vient de l'article sur la gestion de la configuration).

### Infrastructure en tant que code

L'article sur l'infrastructure en tant que code décrit la pratique consistant à gérer et à provisionner des ressources de centres de données par des fichiers de définition lisibles par machine, plutôt que par une configuration manuelle ou des outils interactifs, les définitions étant gardées sous contrôle de version. Il distingue :

- Les approches **déclaratives**, qui décrivent l'état final souhaité et laissent le système trouver les étapes, et les approches **impératives**, qui spécifient des commandes dans l'ordre. L'article dit que l'IaC utilise plus souvent des définitions déclaratives.
- Les méthodes **poussées (push)**, où un système de contrôle envoie des instructions aux serveurs, et les méthodes **tirées (pull)**, où les serveurs récupèrent leurs propres instructions.

Il nomme de nombreux outils, de CFEngine (1993) à Terraform, Ansible, Puppet, Chef, Pulumi et OpenTofu, et relie la pratique à DevOps en impliquant les développeurs dans la configuration et en faisant intervenir plus tôt l'exploitation. Ses affirmations de bénéfices, sur le coût, la rapidité et la réduction des erreurs humaines, sont marquées comme nécessitant des citations. Il cite un rapport de 2020 d'Unit 42 qui a trouvé environ 200 000 vulnérabilités potentielles dans des modèles d'IaC, un rappel que le code aussi peut porter des défauts. L'article ne mentionne ni la dérive de configuration ni l'idempotence.

### Configuration déclarée et configuration découverte

Une manière utile de penser la gestion moderne de la configuration est qu'il y a deux sources de vérité, et que la valeur vient de leur comparaison :

| Source | Ce qu'elle dit | Point fort | Point faible |
|---|---|---|---|
| **Déclarée** (code, définitions sous contrôle de version) | Ce que nous voulons que le système soit | Relisible, versionnée, répétable | Peut ne pas correspondre à ce qui tourne |
| **Découverte** (analyses, API de nuage, agents) | Ce qui existe maintenant | Reflète la réalité | Ne dit pas ce qui est voulu ni pourquoi |

Une CMDB alimentée par les deux peut montrer la **dérive**, la différence entre l'état voulu et l'état réel. Les sources lues pour ce guide n'emploient pas ce mot, mais il nomme le problème que les disciplines de comptabilité d'état et d'audit de la CM sont censées attraper.

### Gestion de la configuration et changement

Le contrôle de la configuration et l'habilitation des changements sont des partenaires proches (voir Sujet 3.4 — Habilitation des changements). Les disciplines de la CM disent que les changements des éléments en ligne de base sont évalués et approuvés. Dans une organisation fondée sur une chaîne, un changement du code qui définit l'infrastructure est relu et testé comme n'importe quel autre, et l'enregistrement de la chaîne montre qui a changé quoi et quand. La CMDB ou son équivalent reflète alors le résultat.

### Usages dans la gestion des services

Les relations consignées dans les données de configuration répondent à des questions dans les autres pratiques :

- **Incidents :** de quoi dépend ce composant défaillant, et qui en est responsable (voir Sujet 3.2 — Gestion des incidents) ?
- **Problèmes :** quels composants étaient impliqués dans des incidents répétés (voir Sujet 3.3 — Gestion des problèmes) ?
- **Changements :** quel est le rayon d'effet de ce changement ?
- **Continuité :** que faut-il rétablir, et dans quel ordre (voir Sujet 3.12 — Gestion de la continuité des services) ?
- **Sécurité :** qu'est-ce qui est exposé, et qu'est-ce qui a changé ?

### Limites des sources

L'article sur la gestion de la configuration est signalé comme pouvant nécessiter une réécriture et dit peu de choses de la mise en œuvre pratique. L'article sur la CMDB n'a pas de section de critiques et peu de citations. L'expérience du terrain est que les CMDB échouent souvent en voulant tenir trop de choses, trop exactes, trop longtemps. Considérez cela comme une expérience pratique que ce guide offre, non comme un constat tiré des sources.

## Bonnes pratiques

1. **Partez des questions auxquelles vous devez répondre.** Listez les questions que posent les intervenants en cas d'incident, les relecteurs de changements et les planificateurs de continuité, comme « de quoi cela dépend-il ? » et « qui en est responsable ? ». Ne consignez que ce qui y répond.
2. **Définissez un petit ensemble de types d'éléments de configuration.** Commencez par les services, applications, hôtes ou conteneurs, bases de données et dépendances externes clés. Ajoutez des types quand une question l'exige.
3. **Consignez les relations, pas seulement les éléments.** Capturez quels éléments dépendent desquels et quel service ils soutiennent. Les relations rendent les données utiles pour l'analyse d'impact.
4. **Nommez un responsable pour chaque élément.** Un élément sans responsable est un risque. Faites de la responsabilité une partie de la manière dont les éléments sont créés.
5. **Gardez la configuration voulue sous contrôle de version.** Exprimez l'infrastructure et la configuration en code, relisez-les comme tout autre code et laissez la chaîne les appliquer. Le dépôt est alors un enregistrement de l'intention et de l'historique.
6. **Utilisez la découverte pour trouver la réalité.** Analysez les réseaux et les comptes de nuage pour voir ce qui existe et comparez avec la configuration déclarée. Examinez les différences (dérive) au lieu de les ignorer.
7. **Fédérez plutôt que de copier quand vous le pouvez.** Laissez chaque source de données (registre d'actifs, comptes de nuage, outils de déploiement) posséder ses faits et renvoyez-y depuis les données de configuration, comme le décrit l'article sur la CMDB.
8. **Automatisez les mises à jour.** Alimentez les données de configuration depuis la chaîne et depuis la découverte pour qu'elles changent au fur et à mesure que le système change. Les mises à jour manuelles prendront du retard.
9. **Mettez en ligne de base ce qui compte.** Pour les services critiques, consignez la configuration approuvée et appliquez un contrôle de changement formel aux écarts. Pour le reste, un contrôle plus léger suffit.
10. **Auditez régulièrement.** Comparez chaque trimestre les données avec la réalité pour un échantillon d'éléments, et corrigez le processus derrière toute différence. C'est la discipline de vérification et d'audit en pratique.
11. **Rendez les données faciles à utiliser.** Offrez recherche et visualisation aux intervenants et aux planificateurs, car des données que l'on ne peut pas lire vite ne seront pas utilisées.
12. **Gardez la sécurité en vue.** Traitez le code de configuration comme sensible, analysez les modèles à la recherche de faiblesses et contrôlez qui peut modifier la ligne de base. Le chiffre d'Unit 42 de l'article sur l'infrastructure en tant que code rappelle le risque.

## Questions à discuter avec votre équipe

**Quand un incident survient, combien de temps nous faut-il pour savoir ce qui dépend du composant défaillant ?**

Regardez le dernier incident et le temps passé sur cette question. Demandez d'où venait la réponse : un schéma, une personne, une recherche. L'animateur peut demander ce qui aurait fait gagner le plus de temps. Souvent c'est une liste de dépendances et de responsables pour les services les plus importants. Convenez d'en produire une pour un service.

**Où notre infrastructure est-elle définie, et cela correspond-il à ce qui tourne ?**

Demandez si les principaux environnements sont construits à partir de code et à quelle fréquence quelqu'un les change à la main. Cherchez les différences. Si vous ne savez pas, prévoyez une comparaison pour un environnement. Discutez de la manière d'empêcher les changements manuels ou de les détecter rapidement.

**Quels éléments de nos enregistrements de configuration n'ont pas de responsable ou n'ont pas été confirmés récemment ?**

Prenez un échantillon et comptez. Demandez pourquoi ils sont dans cet état : pas de processus pour les responsables, pas de rappel, pas de conséquence. Discutez d'un mécanisme léger, comme une confirmation annuelle ou une étiquette de responsable exigée à la création. Choisissez-en un.

**Quelles données gardons-nous que personne n'utilise ?**

Listez les champs et types d'enregistrements et demandez qui les a utilisés le trimestre dernier. L'article sur la CMDB nomme la maintenance comme difficulté centrale, et les données inutilisées sont un coût sans bénéfice. Retirez ou cessez de maintenir ce que personne n'utilise.

**Que faudrait-il que nous voyions pour approuver en confiance un changement à un service critique ?**

Demandez aux relecteurs. Réponses typiques : ce que le changement touche, ce qui en dépend, ce qu'il a fait la dernière fois. Demandez lesquelles les données de configuration peuvent donner. Choisissez un élément manquant à ajouter.

**Qui est autorisé à modifier la ligne de base de nos services critiques, et comment savons-nous quand ils le font ?**

Demandez la liste et la preuve des changements. Discutez si les changements hors chaîne sont détectés. Convenez de la manière dont la dérive sera trouvée et de qui agit.

## En pratique : un exemple d'ITIL agile

Une administration fiscale nationale exploite 120 applications et un mélange de serveurs internes et de services en nuage. Une équipe de six ingénieurs d'exploitation tient une CMDB chargée à partir d'un tableur il y a trois ans. Lors d'un incident majeur sur le portail de déclaration, les ingénieurs découvrent que la CMDB liste un serveur de base de données retiré un an plus tôt et omet le répartiteur de charge qui est réellement tombé en panne. L'incident prend trois heures de plus à résoudre parce qu'il faut ce temps pour déterminer de quoi dépend le portail.

Le responsable de l'exploitation et un ingénieur passent en revue les questions que posent les intervenants. Ils restreignent le périmètre de la CMDB aux services, applications, principaux composants d'infrastructure derrière eux et dépendances externes clés, et abandonnent les types à faible valeur. L'infrastructure du portail de déclaration est déplacée dans du code sous contrôle de version, et la chaîne écrit dans la CMDB un enregistrement de chaque composant déployé. Une analyse de découverte du réseau et des comptes de nuage s'exécute chaque nuit, et un rapport liste les différences entre les données déclarées et découvertes. Chaque élément a un champ de responsable, que le rapport vérifie aussi. Une vue simple des dépendances du portail de déclaration est construite à partir des données.

Un trimestre plus tard, la vue des dépendances du portail est assez exacte pour que l'équipe du prochain incident l'utilise dans les dix premières minutes. Le rapport nocturne des différences trouve 14 serveurs non gérés, dont la plupart sont retirés ou revendiqués par des responsables. Des problèmes subsistent. Les services autres que le portail de déclaration s'appuient encore sur les anciennes données, et une équipe continue de faire des changements manuels sur un serveur de base de données que la chaîne écrase ensuite, causant une brève panne. Le responsable de l'exploitation étend l'approche aux trois services suivants, ajoute une règle selon laquelle les changements de production passent par la chaîne et demande que le rapport de découverte signale les changements manuels.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison définissent la configuration par le code. Mettez l'infrastructure et les paramètres sous contrôle de version, relisez-les et laissez la chaîne les appliquer. Étiquetez les ressources avec responsable et service, et décrivez les dépendances dans le dépôt ou dans l'enregistrement du service.

### Équipes de service et d'exploitation

Les équipes d'exploitation utilisent et maintiennent les données de configuration. Gardez le périmètre petit, comparez configuration déclarée et découverte et pourchassez la dérive. Réinjectez ce que vous apprenez des incidents dans les types et relations que vous consignez.

### Direction et gouvernance

Les dirigeants décident de l'effort que méritent les données de configuration. Demandez quelles décisions elles soutiennent, comme l'analyse d'impact et la planification de la continuité, et jugez à l'usage. Évitez de financer une énorme base de données pour elle-même. Soutenez les contrôles de chaîne qui gardent les enregistrements vrais.

### Clients et utilisateurs

Les clients et utilisateurs profitent d'incidents résolus plus vite et de changements qui cassent moins, ce qu'aident de bonnes données de configuration. Ils voient rarement les données. Demandez aux fournisseurs comment ils savent ce qu'un changement affecte et comment ils trouvent la cause d'une panne.

## Modes d'échec courants

- **Vouloir tout consigner.** Les données sont trop grosses pour être gardées vraies. À la place, partez des questions et des services critiques.
- **Maintenance manuelle.** Les enregistrements prennent du retard. À la place, alimentez les données depuis la chaîne et depuis la découverte.
- **Pas de relations.** Les éléments sont listés mais non reliés. À la place, capturez les dépendances et le service que soutient chaque élément.
- **Pas de responsables.** Personne ne confirme ni ne corrige les enregistrements. À la place, exigez un responsable et vérifiez régulièrement.
- **Changements manuels hors chaîne.** Réalité et intention divergent. À la place, faites passer les changements par la chaîne et détectez la dérive.
- **Des données illisibles.** Les intervenants ne peuvent pas utiliser la base. À la place, offrez recherche et visualisation.
- **Copier au lieu de fédérer.** Les données dupliquées deviennent périmées. À la place, renvoyez à la source qui possède les faits.
- **Le code de configuration traité comme inoffensif.** Les modèles portent des vulnérabilités. À la place, analysez-les et relisez-les.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Périmètre et relations | Les composants sont connus informellement | Certains services ont des listes de composants | Les services clés ont éléments, responsables et dépendances consignés | La couverture et l'exactitude sont mesurées et les lacunes comblées | Les données de configuration couvrent équipes, nuages et fournisseurs |
| Configuration déclarée | Les systèmes sont configurés à la main | Certains environnements utilisent du code | L'infrastructure et la configuration des services clés sont du code sous contrôle de version | L'historique des changements et la dérive sont suivis | Le code de configuration est partagé et réutilisé entre équipes |
| Découverte et vérification | La réalité est supposée | Des analyses ponctuelles sont menées | Une découverte régulière est comparée aux données déclarées | Les différences et leurs causes sont mesurées et réduites | Découverte et vérification sont automatisées dans toute l'organisation |
| Usage des données | Les données sont rarement consultées | Utilisées dans certains incidents | Utilisées routinièrement pour les incidents, changements et la planification de la continuité | L'usage et le bénéfice sont mesurés et les données améliorées | Les données soutiennent les décisions dans l'organisation et avec les partenaires |

## Liste de contrôle

- [ ] Nous avons listé les questions auxquelles nos intervenants et relecteurs ont besoin que les données de configuration répondent.
- [ ] Nous consignons un petit ensemble de types d'éléments avec responsables et relations.
- [ ] L'infrastructure et la configuration des services clés sont sous contrôle de version.
- [ ] Les changements de production de ces services passent par la chaîne.
- [ ] Les résultats de la découverte sont comparés à la configuration déclarée selon un calendrier.
- [ ] Les différences (dérive) sont examinées et corrigées.
- [ ] Les enregistrements sont alimentés automatiquement depuis la chaîne et la découverte là où c'est possible.
- [ ] Un échantillon d'enregistrements est audité par rapport à la réalité chaque trimestre.
- [ ] Les données peuvent être facilement recherchées et visualisées par les intervenants.
- [ ] Le code de configuration est relu et analysé à la recherche de faiblesses.

## Prompts d'IA

**Objectif : décider quoi consigner en listant les questions auxquelles vous devez répondre.**

```text
Aidez-moi à décider quelles données de configuration consigner pour [service].

Les questions que posent les intervenants et les relecteurs de changements, dans nos mots : [listez].
Ce que nous consignons aujourd'hui : [décrivez, ou écrivez « rien »].
Où vivent les données (outils, dépôts, comptes de nuage) : [listez].

Pour chaque question, dites quels types d'éléments et quelles relations seraient nécessaires pour y répondre, d'où les données pourraient venir automatiquement et ce qui nécessiterait encore une personne. Proposez un ensemble minimal de types d'éléments et de champs. Marquez les suppositions. N'inventez pas d'outils que nous n'avons pas. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : résumer la dérive entre configuration déclarée et découverte.**

```text
Voici une liste d'éléments trouvés par la découverte et une liste d'éléments déclarés dans notre code ou nos enregistrements de configuration.

Découverts : [collez noms ou identifiants, avec type et attributs clés].
Déclarés : [collez noms ou identifiants, avec type et attributs clés].

En n'utilisant que ces listes, identifiez les éléments trouvés mais non déclarés, les éléments déclarés mais non trouvés et ceux dont les attributs diffèrent. Regroupez-les et suggérez une question à poser pour chaque groupe (par exemple s'ils sont retirés, appartiennent à quelqu'un d'autre ou ont été créés à la main). Ne devinez pas la cause. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : construire une vue des dépendances pour un service.**

```text
Aidez-moi à décrire les dépendances de [service] pour que les intervenants puissent s'en servir lors d'un incident.

Ce que fait le service : [décrivez].
Composants que je connais (applications, bases de données, réseau, services en nuage, fournisseurs externes) : [listez avec la façon dont ils se connectent].
Responsables que je connais : [listez].

Produisez un schéma texte simple et un tableau avec : composant, ce qui en dépend, responsable (ou « inconnu ») et ce qu'il faut vérifier d'abord en cas de défaillance (uniquement d'après mon texte ; sinon « demander au responsable »). Mettez en évidence les points de défaillance uniques qui apparaissent dans ma description. N'inventez pas de composants. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un audit trimestriel des enregistrements de configuration.**

```text
Planifiez un audit trimestriel d'une heure de nos enregistrements de configuration pour [périmètre].

Comment les enregistrements sont créés et mis à jour aujourd'hui : [décrivez].
Taille d'échantillon que nous pouvons traiter : [nombre].

Donnez une méthode : comment choisir un échantillon, comment vérifier chaque élément par rapport à la réalité, quoi consigner, comment calculer la part exacte (d'après les seuls résultats de l'audit) et comment transformer les erreurs en corrections de processus. Restez sans outil. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md) : à utiliser pour planifier quoi consigner, comment le garder vrai et comment l'utiliser.
- [change-request](../../../../skills/change-request/SKILL.md) : à utiliser pour rédiger des enregistrements de changement qui renvoient aux éléments touchés.
- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour transformer la connaissance de la configuration en étapes que les intervenants peuvent suivre.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md) : à utiliser pour situer services, applications et infrastructure dans une image architecturale.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md) : à utiliser pour faire évoluer en sécurité configuration et conception dans le temps.

## Sources principales

- **Configuration management** (Wikipedia) : l'histoire, les disciplines centrales, les lignes de base et les normes de la gestion de la configuration.
- **Configuration management database** (Wikipedia) : la définition, le contenu, les usages et les difficultés d'une CMDB.
- **Infrastructure as code** (Wikipedia) : gérer des ressources par des définitions lisibles par machine, avec une liste d'outils et des notes sur bénéfices et risques.
- **ITIL** (Wikipedia) : le cadre où apparaissent la CMDB et la gestion de la configuration.

## Références

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
