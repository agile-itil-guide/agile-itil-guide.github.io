# Gestion des services informatiques

**La gestion des services informatiques (ITSM) est la discipline qui consiste à concevoir, fournir, exploiter et améliorer des services informatiques en fonction de ce dont les clients ont besoin, et les équipes agiles qui exploitent des services la pratiquent déjà, qu'elles en utilisent le nom ou non.**

## Pourquoi c'est important

Quand une équipe livre un logiciel puis l'exploite, elle devient un fournisseur de services. Les utilisateurs dépendent d'elle, attendent que le service soit disponible et veulent de l'aide quand il tombe en panne. L'ITSM est le corpus de pratiques qui s'est développé autour de cette relation. Les équipes qui l'ignorent la redécouvrent souvent à la dure : en étant appelées la nuit, en perdant la trace de ce qui a changé ou en se disputant avec les clients sur ce qui avait été promis.

L'ITSM a la réputation d'être un processus lourd, et une partie de cette réputation est méritée. Les équipes agiles, de leur côté, ont la réputation d'aller vite et de laisser l'exploitation se débrouiller avec le résultat. Les deux réputations décrivent des échecs, pas l'intention de l'un ou l'autre domaine. L'ITSM demande de quoi le client a besoin dans un service et comment le fournisseur le livrera et l'améliorera. C'est une question qui intéresse aussi les équipes agiles.

Ce sujet donne le vocabulaire utilisé dans le reste du guide : ce qu'est un service, qui sont les clients et les utilisateurs, ce que couvre l'ITSM et d'où viennent ses principaux cadres. Il prend comme carte l'[article de Wikipédia sur la gestion des services informatiques](https://en.wikipedia.org/wiki/IT_service_management). Cet article est court et liste les cadres plus qu'il ne les explique ; le sujet ajoute donc une interprétation pratique et le signale lorsqu'il le fait.

## Concepts clés

### Ce qu'est l'ITSM

L'article de Wikipédia définit l'ITSM comme l'ensemble des activités qu'une organisation mène pour concevoir, construire, fournir, exploiter et contrôler les services informatiques offerts aux clients. Il oppose l'ITSM aux approches centrées sur la technologie, comme la gestion de réseau et la gestion de systèmes. L'ITSM, dit-il, adopte une approche par les processus, se concentre sur les besoins des clients plutôt que sur les systèmes et insiste sur l'amélioration continue.

L'article cite une enquête de 2017 de CIO WaterCooler selon laquelle les entreprises utilisent l'ITSM surtout pour soutenir l'expérience client (35 %) et la qualité de service (48 %). C'est une seule enquête, dont l'échantillon n'est pas décrit dans l'article ; considérez donc les chiffres comme une illustration de la manière dont les praticiens décrivent leurs objectifs, et non comme une mesure de la fréquence de chaque objectif.

### Service, client et utilisateur

Un **service** est une manière de fournir de la valeur à d'autres sans qu'ils aient à en assumer les coûts et les risques. Les paiements en ligne d'une banque, la prise de rendez-vous d'un hôpital et le stockage de fichiers partagé d'une entreprise sont tous des services. L'article distingue les **utilisateurs**, qui se servent du service, des **clients**, qui le paient ou le commandent. Dans l'informatique interne d'une entreprise, le client peut être le responsable d'une unité métier et les utilisateurs son personnel. Dans un service public, le client peut être un ministère et les utilisateurs des citoyens. Les deux groupes ont des besoins différents, et un fournisseur qui n'écoute que le client peut passer à côté de ce que vivent les utilisateurs.

### Activités typiques de l'ITSM

L'article nomme quelques idées centrales, et la pratique ITSM courante en ajoute d'autres. Ensemble, elles dessinent une forme reconnaissable :

| Activité | À quoi elle sert | Où ce guide la traite |
|---|---|---|
| **Centre de services** | Un point de contact unique entre fournisseurs et utilisateurs ; traite incidents et demandes de service | Sujet 3.1 — Centre de services |
| **Traitement des incidents** | Rétablir le service quand quelque chose le perturbe ou le menace | Sujet 3.2 — Gestion des incidents |
| **Demandes de service** | Fournir les choses courantes que demandent les utilisateurs, comme un accès ou du matériel | Sujet 3.6 — Gestion des demandes de service |
| **Problèmes et changements** | Trouver et corriger les causes sous-jacentes et maîtriser les modifications des services | Sujet 3.3 — Gestion des problèmes et Sujet 3.4 — Habilitation des changements |
| **Niveaux de service et catalogue** | Convenir de ce qui est offert et de sa qualité | Sujet 3.7 — Gestion des niveaux de service et Sujet 3.8 — Gestion du catalogue de services |
| **Amélioration continue** | Améliorer les services dans le temps | Sujet 3.15 — Amélioration continue |

L'article définit un **incident** comme une interruption ou une interruption potentielle de la disponibilité ou de la qualité d'un service, et une **demande de service** comme une demande courante pour un service. Il ne nomme les **accords de niveau de service (SLA)** qu'en passant ; le guide les explique donc au Sujet 3.7 — Gestion des niveaux de service.

### Gestion des services d'entreprise et automatisation

L'article note deux extensions. La **gestion des services d'entreprise (ESM)** applique les outils et les idées de l'ITSM à d'autres parties d'une entreprise, comme les ressources humaines ou les installations, qui reçoivent aussi des demandes et fournissent des services. L'**automatisation des processus informatiques** remplace les étapes manuelles courantes par des étapes automatisées pour que le personnel puisse se concentrer sur un travail plus prioritaire. Les deux comptent pour les équipes agiles : l'ESM montre que la discipline n'est pas liée à l'informatique, et l'automatisation est la façon dont les petites équipes suivent le volume.

### Cadres et normes

L'article liste de nombreux cadres et normes. La liste ci-dessous reprend ses descriptions d'une ligne et est développée au Sujet 2.7 — Cadres et normes ITSM.

| Nom | Ce que dit l'article |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Pratiques détaillées pour l'ITSM et la gestion des actifs informatiques, alignant l'informatique sur les objectifs métier |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Une norme internationale pour les systèmes de gestion des services, au regard de laquelle une organisation peut être certifiée |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Un cadre de gouvernance informatique avec objectifs de contrôle, mesures et modèles de maturité |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Une norme légère, en grande partie alignée sur l'ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Un modèle pour établir, gérer et améliorer les services |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Un cadre reliant les objectifs métier aux objectifs d'architecture |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Des orientations de gestion des services fondées sur les technologies Microsoft |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Un cadre pour la gestion professionnelle des applications |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Un cadre de bonnes pratiques pour la gestion de l'information |
| Business Process Framework (eTOM) | Un cadre de processus pour les opérateurs de télécommunications |

L'article ajoute que les cadres ITSM se sont appuyés sur l'ISO 9000, l'ISO/IEC 27000 et le CMMI, et que ITIL version 2 et BS 15000, le précurseur de l'ISO/IEC 20000, étaient mutuellement alignés. Il décrit aussi USM, un système de gestion fondé sur des principes adopté par le gouvernement néerlandais.

### Ce que l'article ne couvre pas

L'article n'a ni section d'historique, ni critiques, ni mention de l'agile ou de DevOps. Ce silence compte. L'ITSM a été critiquée pour sa lourdeur de processus et sa lenteur à changer, et les équipes agiles pour avoir négligé l'exploitation, mais vous ne trouverez ni l'une ni l'autre de ces critiques là. Ce guide comble le manque dans la Partie 5, à commencer par le Sujet 5.1 — Gestion agile des services. Là où ce sujet mentionne des problèmes, il s'appuie sur les autres sources du guide et sur l'expérience pratique, et le dit.

### ITSM et ITAM

L'article sur ITIL décrit ITIL comme couvrant à la fois l'ITSM et la gestion des actifs informatiques (ITAM). L'ITAM est la discipline qui consiste à savoir quels actifs informatiques possède une organisation, ce qu'ils coûtent et comment ils sont utilisés. Les services dépendent des actifs, et les deux disciplines partagent de l'information, c'est pourquoi la Partie 4 suit de près l'ITSM (voir Sujet 4.1 — Gestion des actifs informatiques).

## Bonnes pratiques

1. **Définissez vos services du côté du client.** Listez ce que les clients et les utilisateurs utilisent réellement, avec leurs mots, comme « me connecter », « prendre rendez-vous » et « envoyer une facture ». Regroupez la technologie derrière chacun. C'est le début d'un catalogue de services (voir Sujet 3.8 — Gestion du catalogue de services).
2. **Nommez qui sont les clients et les utilisateurs.** Pour chaque service, notez qui le paie ou le commande et qui l'utilise. Si ce sont des personnes différentes, vérifiez que les deux groupes ont voix au chapitre.
3. **Donnez un responsable à chaque service.** Nommez une personne responsable de la performance du service et de son amélioration dans le temps. Sans responsable, les problèmes du service ne sont le travail de personne.
4. **Commencez par les activités qui font le plus mal.** Si les pannes sont la douleur, renforcez d'abord le traitement des incidents. Si personne ne sait ce qui a changé, commencez par les enregistrements de changements. Ne déployez pas toutes les pratiques ITSM à la fois.
5. **Utilisez une porte d'entrée unique.** Donnez aux utilisateurs un seul endroit pour demander de l'aide et faire des demandes, et rendez-le facile. Un centre de services difficile à joindre est contourné, et vous perdez alors l'information dont dépend l'ITSM.
6. **Séparez les incidents des demandes et des problèmes.** Un incident est une interruption, une demande est une requête courante et un problème est une cause sous-jacente. Des files mélangées cachent les schémas et faussent les mesures.
7. **Consignez ce qui compte et rien de plus.** Gardez des enregistrements d'incidents, de changements et d'actifs dont vous vous servirez pour prendre des décisions. Supprimez les champs que personne ne lit. Les enregistrements sont un coût, et vous devez pouvoir dire à quoi sert chacun.
8. **Choisissez les cadres par problème, pas par mode.** Utilisez ITIL, l'ISO/IEC 20000, COBIT ou des modèles plus légers comme sources d'idées pour le problème que vous avez. Adoptez les parties qui aident et dites lesquelles vous avez laissées de côté.
9. **Automatisez la routine.** Cherchez les étapes répétitives, comme les réinitialisations de mot de passe et les octrois d'accès, et automatisez-les avec soin. Revoyez périodiquement les actions automatisées pour qu'elles ne s'éloignent pas de ce dont les utilisateurs ont besoin.
10. **Mesurez ce que ressentent les clients.** Suivez la disponibilité, le temps de rétablissement du service et la satisfaction des utilisateurs avant de compter l'activité interne. Servez-vous de l'enquête de l'article de Wikipédia comme rappel que les praticiens citent déjà l'expérience client et la qualité comme principaux objectifs.
11. **Regardez au-delà de l'informatique.** Si d'autres parties de l'organisation traitent mal les demandes, envisagez des outils et des pratiques partagés par la gestion des services d'entreprise. N'imposez pas le vocabulaire de l'informatique.
12. **Améliorez en continu.** Réservez du temps régulier pour examiner ce qui fonctionne, à partir des données d'incidents et de demandes, et pour faire de petits changements (voir Sujet 3.15 — Amélioration continue).

## Questions à discuter avec votre équipe

**Quels services fournissons-nous, avec les mots que nos utilisateurs emploieraient ?**

Demandez à chaque personne d'écrire les trois choses pour lesquelles les utilisateurs comptent le plus sur nous. Comparez les listes. Les différences montrent généralement que l'équipe a des images différentes du service, ou qu'elle décrit les services par la technologie plutôt que par l'usage. L'animateur peut demander quel service n'a pas de responsable clair. Poursuivez en convenant d'une première liste de services.

**Qui sont les clients et qui sont les utilisateurs de notre principal service, et veulent-ils la même chose ?**

Nommez la personne qui commande ou paie et les personnes qui utilisent. Demandez ce que chacun veut du service. Dans l'informatique interne, le client peut se soucier du coût et du risque, et les utilisateurs de la rapidité et de la facilité. Demandez où ils entrent en conflit et comment l'équipe l'apprend. Choisissez un conflit à discuter avec de vraies personnes.

**Où vont les utilisateurs quand ils ont besoin d'aide, et combien de voies y a-t-il ?**

Comptez les moyens : un portail, un numéro de téléphone, le courriel, la messagerie, le bureau d'un collègue. Demandez quelle voie les utilisateurs préfèrent et pourquoi. Plusieurs voies informelles signifient qu'une partie de la demande est invisible. La discussion doit finir par une décision sur les voies à garder, celles à fusionner et la manière de capter ce qui arrive par des voies informelles.

**Dans quelle mesure savons-nous distinguer un incident d'une demande ou d'un problème, et que se passe-t-il quand nous les mélangeons ?**

Prenez dix tickets récents et triez-les. Les désaccords montrent que les définitions diffèrent dans l'équipe. Demandez ce que des catégories mélangées font aux rapports et aux priorités. Par exemple, de nombreuses demandes dans une file d'incidents peuvent faire paraître lent le traitement des incidents. Convenez de définitions simples et d'exemples.

**Quelles pratiques ITSM nous manquent ou ne font-elles que figurer sur le papier ?**

Listez les pratiques du tableau ci-dessus et notez chacune comme fonctionnelle, partiellement fonctionnelle ou sur le papier seulement. Demandez un exemple récent de chacune jugée fonctionnelle. L'animateur doit résister à l'envie de combler toutes les lacunes et demander quelle lacune cause le plus de tort aux clients.

**Qu'aimerions-nous qu'un cadre fasse pour nous, et que craignons-nous qu'il nous fasse ?**

Recueillez les espoirs et les craintes à propos de l'adoption d'ITIL ou de l'ISO/IEC 20000. Les espoirs sont souvent la cohérence et la crédibilité. Les craintes sont souvent la paperasse et la lenteur. Demandez comment obtenir les premiers sans les secondes. Par exemple, adoptez le vocabulaire et quelques pratiques, et évitez les formulaires. Consignez les conditions dont l'équipe aurait besoin.

## En pratique : un exemple d'ITIL agile

Un détaillant en ligne de taille moyenne est passé du site web d'un fondateur à une entreprise avec une équipe de douze ingénieurs, une clientèle croissante et un petit groupe de personnel de support. Les clients envoient leurs problèmes par courriel à une boîte partagée et appellent un numéro de mobile personnel quand le paiement échoue. Les ingénieurs corrigent ce dont ils entendent parler et notent rarement quoi que ce soit. Après une panne de paiement de trois heures, le fondateur demande pourquoi personne ne le savait avant l'appel d'un client.

Le responsable de l'ingénierie propose l'ITSM le plus léger possible. L'équipe liste ses services en termes de client : parcourir et rechercher, paiement et règlement, suivi de commande et comptes clients. Chacun reçoit un responsable. Une adresse de support partagée devient la porte d'entrée unique, alimentant un outil de tickets simple avec des types distincts pour les incidents et les demandes. Tout incident qui dure plus de 30 minutes fait l'objet d'une courte revue, rédigée dans un document partagé. Les changements du paiement et du règlement sont annoncés dans un canal d'équipe avant qu'ils n'aient lieu.

Au bout de trois mois, l'équipe sait combien d'incidents elle traite et constate que la plupart viennent de deux causes. Elle corrige les deux, et la panne du paiement ne se reproduit pas. Certaines difficultés demeurent. Les clients téléphonent encore au fondateur quand ils sont mécontents ; une partie de la demande contourne donc l'outil de tickets. Les ingénieurs grognent aussi que rédiger les revues prend du temps, et deux revues ont été sautées pendant un mois chargé. Le responsable de l'ingénierie décide de garder les revues courtes, de demander au fondateur de transférer les appels vers l'adresse de support et de réexaminer, après un autre trimestre de données, si un processus plus complet de type ITIL est nécessaire.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison qui exploitent aussi ce qu'elles construisent font déjà de l'ITSM. Nommez vos services, consignez légèrement les incidents et les changements et partagez les données avec quiconque supporte vos services. Traitez le centre de services comme une source de preuves sur ce qui met les utilisateurs en difficulté.

### Équipes de service et d'exploitation

Le personnel d'exploitation et du centre de services porte l'essentiel de la pratique ITSM. Les idées agiles peuvent aider en rendant votre travail visible, en raccourcissant les boucles de retour avec les utilisateurs et en déplaçant l'amélioration des projets annuels vers de petits changements réguliers. Expliquez le but derrière chaque règle ITSM pour que vos collègues puissent l'adapter avec bon sens.

### Direction et gouvernance

Les dirigeants décident de la quantité de structure à exiger et du volume de preuves à demander. Demandez des résultats que les clients ressentent et quelques mesures que les équipes peuvent produire avec leurs outils. Soyez prudent à l'idée d'acheter un cadre comme signal ; l'article de Wikipédia en liste beaucoup, et aucun ne remplace la connaissance de vos propres services.

### Clients et utilisateurs

Les clients et utilisateurs sont la raison d'être de l'ITSM. Attendez-vous à une manière claire de demander de l'aide, à une information honnête sur ce à quoi vous attendre et à quelqu'un qui est responsable de chaque service. En retour, donnez des informations rapides et précises quand quelque chose va mal, pour que le fournisseur puisse en tirer des leçons.

## Modes d'échec courants

- **Le processus pour le processus.** Formulaires et approbations se multiplient et personne ne se souvient pourquoi. À la place, reliez chaque pratique à un but et supprimez celles qui n'en servent plus.
- **Pas de porte d'entrée unique.** Les utilisateurs s'adressent à qui ils connaissent et la demande est invisible. À la place, offrez une voie simple et captez-y les demandes informelles.
- **Mélanger incidents, demandes et problèmes.** Les rapports trompent et les causes restent cachées. À la place, utilisez des définitions simples et triez les tickets de façon cohérente.
- **Services décrits par la technologie.** Les utilisateurs ne trouvent pas ce dont ils ont besoin et les responsables sont flous. À la place, décrivez les services en termes de client et nommez un responsable pour chacun.
- **Adopter un cadre en bloc.** Les équipes copient un grand cadre et s'enfouissent dans le processus. À la place, partez du problème et ne prenez que les parties qui aident.
- **Ignorer les utilisateurs.** Le fournisseur ne parle qu'au client qui paie. À la place, écoutez à la fois clients et utilisateurs et cherchez les conflits.
- **Mesurer l'activité.** Des comptes de tickets et d'appels remplacent la preuve de la qualité de service. À la place, mesurez la disponibilité, le temps de rétablissement du service et la satisfaction des utilisateurs.
- **Traiter l'ITSM comme séparée de la livraison.** Les équipes de livraison livrent et laissent l'exploitation se débrouiller. À la place, reliez-les par des services partagés, des données partagées et des revues conjointes (voir Sujet 5.1 — Gestion agile des services).

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Définition des services | Les services sont décrits par la technologie ou pas du tout | Certains services sont listés avec des responsables | Tous les services sont décrits en termes de client avec des responsables nommés | Les descriptions de service sont confrontées à l'usage et aux retours | Les définitions de service sont partagées avec clients et fournisseurs et ajustées ensemble |
| Support et demandes | L'aide est demandée par des voies informelles | Certaines équipes ont un outil de tickets ou une boîte partagée | Une porte d'entrée unique avec des types clairs pour incidents et demandes | La demande et les délais de résolution sont suivis et revus | Le support est coordonné entre équipes et fournisseurs avec des données partagées |
| Enregistrements et mesures | Peu d'enregistrements sont tenus | Certaines équipes consignent incidents et changements | Les enregistrements sont cohérents et chacun a un but énoncé | Les mesures tournées vers le client sont revues régulièrement | Les mesures sont partagées entre services et servent à fixer les priorités ensemble |
| Amélioration | Les corrections suivent les crises | Certaines équipes revoient les incidents | Une revue régulière des données d'incidents et de demandes conduit à des changements planifiés | Le travail d'amélioration est doté de ressources et ses résultats vérifiés | L'amélioration est routinière entre équipes et avec les clients |

## Liste de contrôle

- [ ] Nous avons une liste de nos services dans le langage des clients.
- [ ] Chaque service a un responsable nommé.
- [ ] Nous savons qui sont les clients et qui sont les utilisateurs de chaque service.
- [ ] Les utilisateurs ont une porte d'entrée claire pour l'aide et les demandes.
- [ ] Incidents, demandes et problèmes sont consignés comme des choses différentes.
- [ ] Chaque type d'enregistrement a un but énoncé, et les champs inutilisés sont supprimés.
- [ ] Nous mesurons au moins une chose que les clients ressentent, comme la disponibilité ou le temps de rétablissement du service.
- [ ] Nous revoyons régulièrement les données d'incidents et de demandes et agissons.
- [ ] Nous pouvons dire quelles idées de cadre nous utilisons et lesquelles nous avons laissées de côté.
- [ ] Les tâches courantes qui peuvent être automatisées sans danger ont été identifiées.

## Prompts d'IA

**Objectif : rédiger une liste de vos services dans le langage des clients.**

```text
Aidez-moi à décrire les services que fournit mon équipe avec les mots que nos utilisateurs emploieraient.

Qui nous sommes et ce que nous exploitons : [décrivez l'équipe et ses principaux systèmes en quelques phrases].
Qui utilise quoi : [listez les groupes d'utilisateurs et ce que chacun fait de nos systèmes].
Comment nous appelons actuellement nos services : [collez une liste, ou écrivez « aucun »].

Produisez une liste provisoire de 5 à 10 services, chacun avec une description d'une phrase du point de vue de l'utilisateur, les groupes de clients ou d'utilisateurs et un rôle de responsable suggéré. Marquez chaque élément qui est une supposition. N'inventez pas de systèmes que je n'ai pas mentionnés. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trier des tickets récents en incidents, demandes et problèmes.**

```text
Voici [nombre] tickets ou messages récents adressés à notre équipe : [collez de courtes descriptions anonymisées, une par ligne].

Définitions à utiliser : un incident est une interruption non planifiée ou une interruption potentielle d'un service ; une demande de service est une requête courante pour quelque chose que le service fournit normalement ; un problème est la cause sous-jacente d'un ou plusieurs incidents.

Classez chaque élément comme incident, demande ou problème possible, avec une phrase de raisonnement n'utilisant que ce que j'ai écrit. Listez les éléments que vous n'avez pas pu classer et la question que je devrais poser pour trancher. À la fin, donnez-moi la part de chaque catégorie d'après ma seule liste. N'inventez pas de détails et listez ce dont vous n'êtes pas sûr.
```

**Objectif : choisir un petit premier ensemble de pratiques ITSM pour votre situation.**

```text
Aidez-moi à choisir un premier ensemble de pratiques de gestion des services informatiques pour une équipe dans cette situation.

Taille et type de l'équipe : [décrivez].
Nos plus grandes douleurs (avec un exemple récent pour chacune) : [listez].
Outils et enregistrements existants : [listez, ou écrivez « aucun »].
Règles que nous devons respecter (audit, sécurité, contrats), avec le texte de la source si vous l'avez : [collez, ou écrivez « aucune connue »].

Parmi ces pratiques : centre de services, gestion des incidents, gestion des problèmes, habilitation des changements, gestion des demandes de service, gestion des niveaux de service, gestion du catalogue de services, gestion des connaissances, amélioration continue, proposez les deux ou trois par lesquelles commencer et dites pourquoi, en n'utilisant que les informations ci-dessus. Dites ce que vous laisseriez pour plus tard. Signalez les hypothèses, posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une conversation entre une équipe de livraison et le centre de services.**

```text
Planifiez une conversation de 45 minutes entre une équipe de livraison et le centre de services sur la façon dont les nouveaux changements sont transmis.

Équipe de livraison : [décrivez]. Centre de services : [décrivez].
Exemple récent d'un transfert qui s'est mal passé : [décrivez factuellement].
Ce que dit le centre de services dont il a besoin : [listez, ou écrivez « inconnu »].

Produisez un ordre du jour, cinq questions pour chaque côté et une étape finale qui consigne un changement convenu avec un responsable. Restez libre de tout outil précis. Posez d'abord des questions de clarification s'il manque des informations, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md) : à utiliser pour rédiger ou revoir une liste de services en langage client, avec responsables et descriptions.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md) : à utiliser quand vous êtes prêt à convenir avec les clients du niveau de service à attendre.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md) : à utiliser pour préparer la façon dont votre équipe traite un incident avant qu'il n'arrive.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md) : à utiliser pour comprendre quels types de demandes et d'incidents arrivent et en quel volume.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour clarifier qui est responsable de chaque service et qui est consulté ou informé.

## Sources principales

- **IT service management** (Wikipedia) : une courte définition avec une liste de cadres et normes apparentés, utile comme carte.
- **ITIL** (Wikipedia) : l'histoire et les versions du cadre ITSM le plus connu, y compris ses changements de propriétaire.
- **ISO/IEC 20000** (Wikipedia) : contexte sur la norme internationale des systèmes de gestion des services.
- **Enterprise service management** (Wikipedia) : une introduction à l'application des idées de l'ITSM au-delà de l'informatique.

## Références

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
