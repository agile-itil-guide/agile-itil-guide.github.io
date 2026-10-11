# Gestion de la sécurité des informations

**La gestion de la sécurité des informations protège la confidentialité, l'intégrité et la disponibilité de l'information par des contrôles fondés sur le risque, et dans une organisation agile les contrôles fonctionnent mieux quand ils sont intégrés à la chaîne de livraison et aux habitudes quotidiennes des équipes plutôt qu'ajoutés comme un portail à la fin.**

## Pourquoi c'est important

Chaque service détient de l'information à laquelle quelqu'un tient : coordonnées de clients, enregistrements de paiement, données de santé, plans internes. Une défaillance de sécurité nuit aux personnes que l'information décrit, abîme la réputation de l'organisation et peut entraîner des sanctions juridiques et financières. Les équipes de gestion des services sont souvent celles qui voient la défaillance en premier, comme un incident, et celles qui doivent ensuite rétablir le fonctionnement normal.

La sécurité et la livraison continue sont souvent présentées comme des contraires : la sécurité dit de ralentir, la livraison dit d'accélérer. Cette vision est inutile. Une sécurité qui n'arrive qu'à la fin d'une version produit des surprises tardives et des exceptions bâclées. Une sécurité intégrée au travail, avec des contrôles qui s'exécutent automatiquement et des risques discutés tôt, protège le service sans le bloquer. Il en va de même de la gestion des services : les pratiques qui rendent le changement sûr rendent aussi sûrs les changements de sécurité.

Ce sujet utilise comme sources principales l'[article de Wikipédia sur la sécurité de l'information](https://en.wikipedia.org/wiki/Information_security) et l'[article sur l'ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001). Les deux sont généraux. Le premier est un long article, et ce guide n'a lu que les 100 000 premiers de ses quelque 243 000 caractères. Ce sujet ne donne pas de conseil juridique ; les lois, réglementations et obligations contractuelles diffèrent selon les pays et les secteurs, et la bonne source est le texte de la règle qui s'applique à vous.

## Concepts clés

### Ce qu'est la sécurité de l'information

Wikipédia définit la sécurité de l'information comme la protection de l'information par l'atténuation des risques liés à l'information, dans le but de prévenir ou de réduire l'accès, l'usage, la divulgation, la perturbation, la suppression, la corruption, la modification ou la dévalorisation non autorisés de l'information, et de réduire l'impact des incidents. Elle s'applique à l'information électronique, physique et immatérielle, et fait partie de la gestion des risques liés à l'information.

### La triade CIA

Les buts centraux sont la **confidentialité**, l'**intégrité** et la **disponibilité**, équilibrées avec l'efficacité des politiques et la productivité de l'organisation. L'article les décrit ainsi :

| But | Sens | Exemple dans un service |
|---|---|---|
| **Confidentialité** | L'information est protégée contre toute divulgation non autorisée | Seul le personnel autorisé peut voir les dossiers des patients |
| **Intégrité** | L'information est exacte et complète et ne peut pas être modifiée de façon non autorisée ou indétectée | Un montant de paiement ne peut pas être altéré sans laisser de trace |
| **Disponibilité** | L'information est accessible quand on en a besoin | Le service reste en ligne et résiste aux attaques par déni de service |

L'article note que la confidentialité diffère de la vie privée, qu'il qualifie de notion plus large. Il note aussi que les organisations peuvent ajouter des buts comme l'authenticité, la responsabilité, la non-répudiation et la fiabilité, et que l'Hexade de Parker, un modèle étendu, a des mérites débattus. La disponibilité se relie directement à la gestion des services (voir Sujet 3.11 — Disponibilité, capacité et performance).

### Gestion des risques

L'article décrit le risque comme la probabilité de dommage à un actif d'information. Les **vulnérabilités** sont des faiblesses, les **menaces** des causes potentielles de dommage et l'**impact** la perte qui en résulte. La gestion des risques est un processus continu et itératif dans lequel la direction peut accepter, atténuer, transférer (par exemple par une assurance) ou éviter un risque. Ce qui reste s'appelle le **risque résiduel**. L'article liste six étapes : identifier les actifs, évaluer les menaces, évaluer les vulnérabilités, calculer l'impact, choisir et mettre en œuvre des contrôles, et évaluer ces contrôles.

### Contrôles et défense en profondeur

Les contrôles protègent la confidentialité, l'intégrité ou la disponibilité. L'article décrit la **défense en profondeur**, la superposition de contrôles qui se recouvrent, les types de contrôle étant décrits comme administratifs (politiques, procédures), logiques (mesures techniques comme le contrôle d'accès et le chiffrement) et physiques (serrures, installations). Aucun contrôle seul ne suffit ; les couches couvrent les défaillances les unes des autres.

### Incidents de sécurité

L'article décrit la gestion des incidents de sécurité informatique comme la surveillance, la détection et la réponse aux événements de sécurité, avec des plans de réponse aux incidents activés quand des atteintes sont détectées, généralement menés par une équipe de réponse aux incidents. Les incidents de sécurité sont une sorte d'incident et profitent des mêmes rôles, de la même communication et du même apprentissage sans blâme (voir Sujet 3.2 — Gestion des incidents), plus des étapes particulières comme la préservation des preuves et la notification aux régulateurs ou aux personnes touchées lorsque c'est exigé.

### ISO/IEC 27001 et 27002

Selon Wikipédia, l'**ISO/IEC 27001** fixe les exigences pour établir, mettre en œuvre, maintenir et améliorer continuellement un système de management de la sécurité de l'information (SMSI), y compris l'évaluation et le traitement des risques de sécurité de l'information. Ses exigences sont génériques et destinées aux organisations de tout type, taille ou nature. La première édition est sortie en octobre 2005 à partir de la norme britannique BS 7799-2, la deuxième en 2013 et la troisième en octobre 2022, alignée sur l'ISO/IEC 27002:2022 ; un amendement de février 2024 a ajouté une considération sur le changement climatique.

Faits clés de l'article :

- Les exigences du SMSI se trouvent aux chapitres 4 à 10 : contexte, leadership, planification, support, fonctionnement, évaluation des performances et amélioration.
- L'Annexe A de l'édition 2022 compte 93 contrôles de référence répartis en quatre thèmes : organisationnel, personnel, physique et technologique. L'édition 2013 en listait 114. L'Annexe A est un ensemble de référence et non une liste de contrôle obligatoire : les organisations produisent une **Déclaration d'applicabilité** qui justifie les contrôles qu'elles incluent et excluent.
- La certification est facultative à moins qu'une loi, un contrat ou un schéma l'exige. L'ISO ne certifie pas les organisations ; des organismes de certification indépendants le font, par étapes, suivies d'audits de surveillance et d'une recertification sur un cycle de trois ans. Un certificat ne s'applique que dans son périmètre déclaré.
- L'**ISO/IEC 27002** donne des lignes directrices sur les contrôles de l'Annexe A. C'est un conseil et il ne peut pas servir de base à une certification.

L'article note qu'une revue de littérature de 2021 a trouvé peu d'études empiriques sur les résultats de la certification. Un certificat montre qu'un système de management existe ; il ne prouve pas qu'une atteinte précise ne peut pas se produire.

### Autres cadres et lois

L'article sur la sécurité de l'information nomme de nombreuses autres normes et schémas, comme le NIST Cybersecurity Framework, Cyber Essentials au Royaume-Uni, l'Essential Eight en Australie et la norme de l'industrie des cartes de paiement. Il liste aussi des lois, dont le Computer Misuse Act (1990) et le Data Protection Act (1998) du Royaume-Uni et la HIPAA (1996), la loi Gramm–Leach–Bliley (1999) et la loi Sarbanes–Oxley (2002) des États-Unis. La liste montre la variété des règles. Celles qui s'appliquent à vous dépendent de l'endroit où vous opérez, du secteur et des données que vous détenez ; interrogez votre fonction juridique ou de conformité (voir Sujet 5.7 — Gouvernance, risques et conformité).

### La sécurité dans la chaîne de livraison

Les pratiques qui conviennent à la livraison continue incluent :

- **Discussion précoce des menaces :** demander en planification ce qui pourrait mal tourner avec une fonctionnalité et qui voudrait en abuser.
- **Contrôles automatisés :** analyser le code, les dépendances et la configuration à chaque changement, avec des résultats visibles de l'équipe (voir Sujet 3.4 — Habilitation des changements).
- **Moindre privilège :** ne donner aux personnes et aux systèmes que l'accès dont ils ont besoin.
- **Gestion des secrets :** garder les identifiants hors du code et les renouveler.
- **Tests de sécurité :** tests d'intrusion et tests automatisés dans le cycle (voir la compétence de test de sécurité ci-dessous).
- **Journalisation et surveillance :** détecter l'activité suspecte (voir Sujet 3.10 — Surveillance et gestion des événements).

Les conseils de DORA, cités ailleurs dans ce guide, listent la sécurité omniprésente parmi les pratiques qui soutiennent la livraison continue (voir Sujet 3.5 — Gestion des mises en production et des déploiements).

### Culture et personnes

L'article sur la sécurité de l'information mentionne des recherches sur la culture de sécurité, dont sept dimensions de culture identifiées par Roer et Petric (2017). Quel que soit le modèle, le point est que beaucoup d'atteintes commencent par des personnes : un message d'hameçonnage, une erreur, un raccourci sous pression. La formation, des voies de signalement claires et une attitude sans blâme envers les erreurs honnêtes améliorent la sécurité davantage que le blâme.

### Limites des sources

L'article de Wikipédia n'énonce aucune critique précise de la triade CIA et n'a été lu qu'en partie. L'article sur l'ISO/IEC 27001 ne discute ni de la relation avec l'ISO/IEC 20000 ni du cycle planifier–faire–vérifier–agir. Ce sujet ne donne pas d'instructions techniques ; utilisez des conseils spécialisés pour vos plateformes, et le texte des normes si vous devez affirmer la conformité.

## Bonnes pratiques

1. **Sachez quelle information vous détenez et où.** Dressez une liste des principaux types d'information, de qui en est responsable, de l'endroit où elle est stockée et de sa sensibilité. On ne peut pas protéger ce que l'on n'a pas identifié.
2. **Faites des évaluations de risques en langage simple.** Pour chaque service important, demandez ce qui pourrait mal tourner pour la confidentialité, l'intégrité et la disponibilité, avec quelle probabilité et quelle gravité. Consignez les décisions d'accepter, de réduire, de transférer ou d'éviter chaque risque (voir Sujet 5.7 — Gouvernance, risques et conformité).
3. **Superposez vos contrôles.** Combinez politiques, contrôles techniques et contrôles physiques pour qu'une défaillance ne suffise pas. Examinez quelles couches protègent votre information la plus sensible.
4. **Intégrez des contrôles dans la chaîne.** Exécutez des contrôles de sécurité automatisés sur le code, les dépendances et la configuration à chaque changement et rendez visibles les contrôles en échec. Corrigez les problèmes au moment du changement.
5. **Donnez le moindre privilège par défaut.** Accordez l'accès par rôle et par besoin, revoyez-le régulièrement et retirez-le rapidement quand les gens partent ou changent de rôle (voir Sujet 3.6 — Gestion des demandes de service).
6. **Gérez correctement les secrets.** Gardez les identifiants hors du code source, stockez-les dans un coffre géré et renouvelez-les. Testez que vous pouvez les renouveler rapidement après un incident.
7. **Traitez les incidents de sécurité comme des incidents.** Utilisez les mêmes rôles, la même communication et la même revue que pour les autres incidents et ajoutez des étapes de preuves, de confinement et de notification. Entraînez-vous au plan.
8. **Connaissez vos devoirs de notification.** Découvrez, auprès de votre fonction juridique ou de conformité, quelles lois ou quels contrats exigent de notifier les autorités ou les personnes touchées après une atteinte, et en combien de temps. Inscrivez-le dans le plan d'incident, en citant le texte de la source.
9. **Incluez les fournisseurs.** Demandez aux fournisseurs critiques comment ils protègent votre information et mettez les attentes dans les contrats (voir Sujet 3.14 — Gestion des fournisseurs).
10. **Formez et parlez.** Offrez une formation courte et régulière fondée sur des exemples réels et facilitez le signalement d'une erreur ou d'un message suspect sans blâme.
11. **Utilisez les normes comme source de structure.** Si vous adoptez l'ISO/IEC 27001, traitez l'Annexe A comme un ensemble de référence, rédigez une Déclaration d'applicabilité justifiée et gardez le SMSI léger. La certification est facultative à moins d'être exigée.
12. **Apprenez des quasi-accidents.** Examinez les quasi-accidents et les événements de faible gravité pour y chercher des schémas et alimentez-en le carnet et le registre de risques.

## Questions à discuter avec votre équipe

**Quelle information détenons-nous qui ferait du tort à des gens si elle fuyait, et où est-elle ?**

Demandez à chaque personne de nommer les données les plus sensibles qu'elle traite et où elles vivent. Comparez. Les surprises sont courantes : copies dans des environnements de test, exports dans des dossiers partagés, journaux contenant des données personnelles. L'animateur peut demander quelle copie est la moins protégée. Choisissez-en une à réduire ou à mieux protéger.

**Quand avons-nous pour la dernière fois pris la décision d'accepter un risque de sécurité, et qui l'a prise ?**

Demandez un exemple. Les risques acceptés le sont souvent en silence, par retard. Discutez de qui devrait décider, de quelle information il a besoin et de l'endroit où c'est consigné. La liste de l'article des façons de traiter le risque (accepter, atténuer, transférer, éviter) est un cadre utile. Convenez d'un endroit simple pour consigner la prochaine décision.

**Quels contrôles de sécurité s'exécutent automatiquement à chaque changement, et lesquels ignorons-nous ?**

Listez les contrôles de la chaîne et les résultats. Demandez quels constats sont couramment ignorés et pourquoi. Les constats ignorés signifient généralement du bruit, un manque de responsable ou un manque de temps. Décidez lesquels corriger, lesquels supprimer avec une raison et qui est responsable de la liste.

**Qui a accès à quoi, et quand avons-nous revu cela pour la dernière fois ?**

Choisissez un système sensible et listez qui peut l'atteindre. Comparez avec qui en a besoin. Souvent l'accès s'est accumulé. Demandez avec quelle rapidité l'accès est retiré quand quelqu'un part. Convenez d'une date de revue et d'un responsable.

**Que ferions-nous dans la première heure d'une atteinte soupçonnée ?**

Parcourez les étapes : qui est informé, ce qui est préservé, ce qui est coupé, qui parle à qui. Les lacunes apparaissent généralement autour de l'autorité et des preuves. Demandez où est le plan et quand il a servi pour la dernière fois. Planifiez un exercice sur table.

**Quelles règles de sécurité ou de vie privée s'appliquent à nous, et comment le savons-nous ?**

Demandez qui est chargé de le savoir. Si la réponse est « le juridique » ou « personne », demandez comment l'ingénierie apprend les exigences. Les règles diffèrent selon les pays et les secteurs ; listez donc les lieux où vous opérez. Convenez de demander à la fonction juridique ou de conformité une courte liste, avec le texte de la source.

## En pratique : un exemple d'ITIL agile

Le service de calcul scientifique d'une université détient des jeux de données issus d'études médicales et donne aux chercheurs accès à des serveurs d'analyse. Une équipe de huit personnes l'exploite. Après un incident où un chercheur a copié un jeu de données non protégé dans un dossier de nuage personnel, le responsable de la sécurité de l'université exige que chaque changement et chaque demande d'accès passe par une revue de sécurité de trois semaines. Les chercheurs objectent que cela rendra le service inutilisable.

Le responsable du service propose une approche différente et rencontre le responsable de la sécurité et deux chercheurs. Ils listent l'information détenue en regroupant les jeux de données en publics, internes et sensibles. Pour les données sensibles, ils conviennent de contrôles plus stricts : accès par rôle nommé et par projet, aucune copie hors du service et journalisation des exports de données. Pour les autres données, des règles plus légères s'appliquent. L'équipe ajoute à la chaîne de livraison des contrôles automatisés de stockage mal configuré et de secrets dans le code, et le responsable de la sécurité examine les résultats chaque semaine plutôt que de revoir chaque changement. Les demandes d'accès aux jeux de données sensibles suivent un modèle de demande avec approbation par le gestionnaire de données du projet et une date d'expiration. Une courte séance de formation fondée sur l'incident précédent est menée pour les chercheurs.

Six mois plus tard, aucune autre copie hors du service n'a été trouvée, et les revues d'accès prennent un après-midi chaque trimestre. Certaines difficultés demeurent. Un groupe de chercheurs utilise un outil qui exporte des données d'une façon que la journalisation ne capte pas, et les contrôles automatisés produisent de fausses alarmes que l'équipe a commencé à ignorer. Ils conviennent avec le responsable de la sécurité d'ajouter l'outil au périmètre de journalisation, d'ajuster les contrôles et de revoir les alertes chaque mois. Ils demandent aussi à l'équipe juridique une déclaration écrite des devoirs de notification qui s'appliquent aux jeux de données sensibles, pour que le plan d'incident puisse citer la source.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison rendent la sécurité réelle dans le code et la configuration. Discutez tôt des menaces, gardez les secrets hors du code, répondez aux constats automatisés et évitez de partager des données sensibles dans les tests. Dites à la sécurité et à l'exploitation les changements qui modifient l'exposition.

### Équipes de service et d'exploitation

Les équipes d'exploitation font tourner les contrôles : accès, surveillance, correctifs et sauvegardes. Traitez les événements de sécurité comme des incidents, préservez les preuves et participez aux exercices. Transmettez les schémas d'incidents à la livraison et au registre de risques.

### Direction et gouvernance

Les dirigeants possèdent les décisions de risque et la culture qui les entoure. Demandez des synthèses de risque en langage simple, soutenez le temps pour la formation et les exercices et veillez à ce que quelqu'un soit responsable de chaque décision d'accepter un risque. N'exigez pas la certification comme étiquette sans raison.

### Clients et utilisateurs

Les clients et utilisateurs confient leur information au service. Utilisez l'authentification forte quand elle est offerte, signalez les messages suspects et demandez aux fournisseurs comment ils protègent vos données et comment ils vous informeraient d'une atteinte. Attendez-vous à de l'honnêteté et de la rapidité en cas de problème.

## Modes d'échec courants

- **La sécurité comme portail final.** Les revues arrivent à la fin et retardent les versions. À la place, discutez tôt des menaces et automatisez les contrôles dans la chaîne.
- **La conformité comme but.** Un certificat cache une pratique faible. À la place, utilisez les normes pour la structure et mesurez la protection réelle.
- **Des données non suivies.** Les copies se répandent dans les systèmes de test et le stockage personnel. À la place, sachez où vivent les données sensibles et limitez les copies.
- **Accès excessif.** Les droits s'accumulent et ne sont jamais retirés. À la place, revoyez régulièrement les accès et faites-les expirer.
- **Secrets dans le code.** Les identifiants sont stockés dans des dépôts. À la place, utilisez un coffre et renouvelez les secrets.
- **Pas de plan d'incident testé.** La première utilisation est une vraie atteinte. À la place, entraînez-vous au plan et notez les devoirs de notification.
- **Blâme pour les erreurs.** Les gens cachent leurs erreurs. À la place, facilitez le signalement et répondez par l'apprentissage.
- **Ignorer les fournisseurs.** Des tiers détiennent des données sans protections claires. À la place, interrogez, contractualisez et revoyez.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Information et risque | Les données sensibles ne sont pas listées ; les risques sont implicites | Certains services consignent types de données et risques | Données et risques sont consignés par service avec responsables et décisions | Les risques sont revus au regard des incidents et des mesures | Les vues de risque sont partagées avec clients et fournisseurs et alignées |
| Contrôles dans la livraison | La revue de sécurité a lieu à la fin, si elle a lieu | Certaines équipes exécutent des analyses de sécurité | Les contrôles de sécurité sont automatisés dans une chaîne commune, avec des responsables pour les constats | Constats, corrections et échappements sont mesurés et revus | Les contrôles sont améliorés entre équipes à partir de preuves partagées |
| Accès et secrets | L'accès est accordé au coup par coup ; secrets dans le code | Quelques revues et coffres existent | L'accès par rôle avec expiration et des secrets gérés sont la norme | Les revues d'accès et le renouvellement sont mesurés | Les pratiques d'accès et de secrets sont coordonnées avec les partenaires |
| Réponse aux incidents et culture | Les incidents de sécurité sont improvisés | Quelques plans existent | Les incidents de sécurité suivent le processus d'incident avec des étapes supplémentaires définies et sont exercés | Les délais de détection et de réponse sont mesurés et l'apprentissage partagé | La réponse est coordonnée avec fournisseurs, clients et autorités |

## Liste de contrôle

- [ ] Nous avons listé les principaux types d'information, leurs responsables, leurs emplacements et leur sensibilité.
- [ ] Les risques pour la confidentialité, l'intégrité et la disponibilité sont évalués pour les services importants, et les décisions consignées.
- [ ] Des contrôles de sécurité automatisés s'exécutent à chaque changement, et les constats ont des responsables.
- [ ] L'accès est par rôle et par besoin, revu régulièrement et retiré quand il n'est plus nécessaire.
- [ ] Les secrets sont stockés dans un coffre géré et peuvent être renouvelés rapidement.
- [ ] Un plan d'incident de sécurité existe, a été exercé et inclut les devoirs de notification avec le texte de la source.
- [ ] Les fournisseurs qui détiennent notre information ont été interrogés sur leurs protections.
- [ ] Le personnel reçoit une formation courte et régulière et peut signaler des erreurs sans blâme.
- [ ] Si nous utilisons l'ISO/IEC 27001, nous avons une Déclaration d'applicabilité justifiée et un SMSI léger.
- [ ] Les quasi-accidents sont examinés pour y chercher des schémas.

## Prompts d'IA

**Objectif : faire l'inventaire de votre information et la classer par sensibilité.**

```text
Aidez-moi à faire un inventaire simple de l'information que détient notre service.

Ce que fait le service : [décrivez].
Données que nous connaissons (types, lieu de stockage, qui peut y accéder) : [collez une liste ; retirez toute donnée personnelle réelle].
Règles ou contrats applicables, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Produisez un tableau avec : type d'information, où elle vit, qui en est responsable, un niveau de sensibilité suggéré (public, interne, sensible) avec une raison en une phrase tirée de mon texte, et une question à poser sur la protection. Marquez les suppositions. N'affirmez pas qu'une loi s'applique à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : mener une courte discussion sur les menaces pour une nouvelle fonctionnalité.**

```text
Aidez-moi à mener une discussion de 30 minutes sur les menaces pour cette nouvelle fonctionnalité : [décrivez ce qu'elle fait, quelles données elle traite, qui l'utilise et à quoi elle se connecte].

Donnez des questions à poser sous ces rubriques : qui pourrait en abuser et comment ; quelles données pourraient être exposées, modifiées ou rendues indisponibles ; ce qui pourrait mal tourner via des dépendances ou des fournisseurs ; ce que nous verrions si cela tournait mal ; et quelles garanties nous avons déjà. Donnez ensuite un modèle pour consigner les risques avec un responsable et une décision (accepter, réduire, transférer ou éviter). N'inventez pas d'attaques ni de vulnérabilités dans mon système. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : passer en revue des constats de sécurité automatisés pour le bruit et la priorité.**

```text
Voici des constats de nos contrôles de sécurité automatisés des [période] dernières : [collez, avec les effectifs et de courtes descriptions ; retirez les détails sensibles].
Ce que nous avons fait pour chacun (corrigé, supprimé, ignoré) : [collez, ou écrivez « inconnu »].

Regroupez les constats par type. Pour chaque groupe, suggérez une question à poser pour savoir s'il s'agit de bruit, d'un vrai risque ou d'un problème de configuration de l'outil, en n'utilisant que le texte. Identifiez quels groupes sont le plus souvent ignorés. N'affirmez pas qu'un constat est exploitable ou inoffensif. Suggérez comment attribuer des responsables. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer un exercice d'incident de sécurité.**

```text
Concevez un exercice sur table de 60 minutes sur une atteinte présumée aux données dans [service].

Base du scénario : [décrivez, avec des faits que vous choisissez, par exemple « un ordinateur portable ayant accès aux données de production est signalé perdu »].
Rôles participants : [listez].
Devoirs de notification applicables, avec le texte de la source du juridique ou de la conformité : [collez, ou écrivez « pas encore confirmés »].

Donnez un plan minuté, des indications pour chaque rôle (contenir, préserver les preuves, communiquer, décider qui est informé), la liste des décisions qui exigent une autorité et une étape finale qui consigne les lacunes avec des responsables. N'utilisez ni données ni systèmes réels. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [security-testing](../../../../skills/security-testing/SKILL.md) : à utiliser pour planifier des tests de sécurité dans le cycle de livraison.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner les risques de sécurité, les décisions et les responsables.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md) : à utiliser pour choisir des mesures d'alerte précoce pour les risques de sécurité.
- [data-governance](../../../../skills/data-governance/SKILL.md) : à utiliser pour définir qui est responsable des données et comment elles peuvent être utilisées et partagées.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md) : à utiliser pour préparer des questions au personnel juridique ou de conformité sur les devoirs de vie privée.

## Sources principales

- **Information security** (Wikipedia) : la triade CIA, la gestion des risques, les contrôles et la réponse aux incidents, avec une longue liste de normes et de lois apparentées.
- **ISO/IEC 27001** (Wikipedia, et la norme elle-même de l'ISO) : les exigences d'un système de management de la sécurité de l'information, avec les contrôles de l'Annexe A et le processus de certification.
- **Computer security incident management** (Wikipedia) : contexte sur la réponse aux événements de sécurité.
- **Defense in depth** (Wikipedia) : contexte sur les contrôles en couches.

## Références

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
