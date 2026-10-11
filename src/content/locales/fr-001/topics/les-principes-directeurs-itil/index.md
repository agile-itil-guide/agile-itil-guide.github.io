# Les principes directeurs ITIL

**Les sept principes directeurs d'ITIL sont assez courts pour être retenus et assez larges pour s'appliquer à toute décision de service, et ils recoupent si fortement les principes agiles qu'une équipe peut s'en servir comme d'un pont entre les deux.**

## Pourquoi c'est important

Quand les équipes agiles et les groupes de gestion des services ne sont pas d'accord, ils se disputent souvent sur les pratiques : un changement a-t-il besoin d'une approbation, une revue est-elle exigée, un document est-il nécessaire. Les disputes tournent en rond parce que chaque camp défend sa pratique sans énoncer le principe qui la fonde. Les principes directeurs d'ITIL sont utiles ici parce qu'ils ont été écrits pour s'appliquer à toute pratique, et que la plupart des praticiens de l'agile les reconnaîtront.

Les principes répondent aussi à une plainte courante contre ITIL, qu'il prescrirait un processus lourd. Les propres principes d'ITIL 4 incluent « rester simple et pratique » et « commencer là où vous êtes ». Une équipe qui les cite peut légitimement dire qu'un processus proposé est en décalage avec le cadre dont il se réclame. En même temps, les principes demandent quelque chose aux équipes agiles : « collaborer et promouvoir la visibilité » et « penser et travailler de façon holistique » interpellent les équipes qui optimisent leur propre sprint au détriment de ceux qui exploitent le résultat.

Ce sujet décrit les sept principes, les compare aux principes agiles du Sujet 1.2 — Principes agiles et montre comment s'en servir comme aide à la décision. Les noms des principes viennent de l'[article de Wikipédia sur ITIL](https://en.wikipedia.org/wiki/ITIL) et sont cohérents dans les sources de formation et d'éditeurs consultées. Les explications sont celles de ce guide et ne sont pas des citations de publications ITIL. Si vous avez besoin de la formulation du propriétaire, lisez directement les publications d'ITIL 4.

## Concepts clés

### Les sept principes

Selon Wikipédia, les principes directeurs sont :

1. Se concentrer sur la valeur
2. Commencer là où vous êtes
3. Progresser par itérations avec retour d'information
4. Collaborer et promouvoir la visibilité
5. Penser et travailler de façon holistique
6. Rester simple et pratique
7. Optimiser et automatiser

Wikipédia les liste sous sa section sur ITIL 5. Ils correspondent aux principes d'ITIL 4 tels que résumés par les organismes de formation et les éditeurs, et ce guide les traite comme des principes d'ITIL 4 que le contenu ITIL 5 de PeopleCert peut reprendre. Vérifiez auprès des publications actuelles du propriétaire le texte exact, et si ITIL 5 les modifie (voir Sujet 2.2 — ITIL).

### Ce que demande chaque principe

Le tableau donne une lecture simple de chaque principe, rédigée pour ce guide, avec le pendant agile le plus proche du Sujet 1.2 — Principes agiles.

| Principe | Ce qu'il vous demande | Idée agile la plus proche |
|---|---|---|
| **Se concentrer sur la valeur** | Relier chaque activité à de la valeur pour les clients, les utilisateurs ou l'organisation, et abandonner celles qui n'y contribuent pas | Principe agile 1 : satisfaire le client par la livraison précoce et continue de logiciels de valeur |
| **Commencer là où vous êtes** | Regarder ce qui existe avant de construire quoi que ce soit de neuf et réutiliser ce qui fonctionne déjà | Principe agile 10 : la simplicité, c'est-à-dire l'art de maximiser la quantité de travail non fait |
| **Progresser par itérations avec retour d'information** | Travailler par petites étapes, apprendre de chacune et ajuster ; ne pas essayer de tout planifier d'abord | Principes agiles 3 et 12 : livrer fréquemment, et réfléchir et ajuster à intervalles réguliers |
| **Collaborer et promouvoir la visibilité** | Travailler au-delà des frontières, partager l'information ouvertement et rendre le travail visible | Principes agiles 4 et 6 : collaboration quotidienne et conversation en face à face |
| **Penser et travailler de façon holistique** | Voir le service comme un système entier de personnes, d'information, de technologie et de partenaires, pas comme des parties séparées | Aucun principe agile unique ; le plus proche est l'idée lean d'optimiser l'ensemble (voir Sujet 1.7 — Développement logiciel lean) |
| **Rester simple et pratique** | Utiliser le minimum d'étapes nécessaire pour atteindre un résultat et éviter le processus pour le processus | Principe agile 10 encore, et principe 9 sur la bonne conception |
| **Optimiser et automatiser** | Améliorer d'abord le travail, puis utiliser la technologie pour supprimer l'effort routinier | Principe agile 9, et des pratiques comme l'intégration continue (voir Sujet 1.6 — Programmation extrême) |

Les principes agiles sont numérotés comme sur agilemanifesto.org. La correspondance est le jugement de ce guide ; aucune source ne revendique de correspondance officielle.

### Là où les deux ensembles diffèrent

Le recoupement est grand, mais les accents diffèrent de façon utile.

- **ITIL insiste sur l'ensemble.** « Penser et travailler de façon holistique » vous demande de tenir compte du service de bout en bout, fournisseurs et utilisateurs compris. Les principes du Manifeste parlent surtout de l'équipe et du client, et disent peu du système plus large.
- **L'agile insiste sur l'équipe et le rythme.** Les principes agiles demandent des individus motivés, un rythme durable et des équipes auto-organisées. Les principes d'ITIL ne mentionnent pas directement les conditions de travail des personnes, même si la dimension « organisations et personnes » les couvre (voir Sujet 2.5 — Quatre dimensions de la gestion des services).
- **ITIL insiste sur la visibilité.** « Collaborer et promouvoir la visibilité » demande un partage ouvert. Les équipes agiles le font avec des tableaux et des démonstrations, mais peuvent laisser de côté les groupes qui supportent le service.
- **L'agile insiste sur la qualité technique.** Le principe agile sur l'excellence technique n'a pas de pendant direct, même si « optimiser et automatiser » s'en rapproche.

### Utiliser les principes comme aide à la décision

Les principes directeurs d'ITIL sont faits pour servir. Une méthode simple consiste à prendre une décision, comme ajouter une étape d'approbation, et à demander pour chaque principe si l'option le soutient, le contredit ou est neutre. Le résultat est une liste brève et honnête d'arbitrages. Les principes ne sont pas des règles, et ils peuvent tirer dans des sens opposés. « Commencer là où vous êtes » peut entrer en conflit avec « optimiser et automatiser » quand l'outil existant est mauvais, et « rester simple » peut entrer en conflit avec « penser de façon holistique » quand le système est complexe. La discussion entre principes est la valeur.

### Principes et pratiques

Les principes guident le choix des pratiques, et les pratiques sont les façons de travailler (voir Sujet 2.3 — Le système de valeur des services ITIL). Une pratique qu'aucun principe n'explique est candidate à la suppression. Un principe que personne ne voit dans le travail quotidien est un slogan. Les deux contrôles valent la peine d'être menés.

### Limites

Les principes sont larges. Deux personnes peuvent invoquer le même principe pour appuyer des décisions opposées. L'article de Wikipédia ne nomme aucune critique des principes, et ce guide n'en invente pas. La limite pratique est que les principes ne disent pas quoi faire ensuite ; ils disent comment juger les options. Combinez-les avec des preuves tirées de vos propres services.

## Bonnes pratiques

1. **Mettez les sept principes là où l'équipe travaille.** Affichez-les à côté des documents de processus ou dans le modèle de proposition. Des principes que l'on ne voit pas ne sont pas utilisés.
2. **Testez les propositions au regard d'eux.** Pour tout nouveau processus ou outil, écrivez une ligne par principe : soutient, contredit ou neutre. Partagez le résultat quand vous demandez l'approbation.
3. **Se concentrer sur la valeur en demandant « qui en bénéficie ? ».** Pour chaque tâche, nommez la personne ou le groupe qui en bénéficie. Si vous ne pouvez en nommer aucun, remettez la tâche en question.
4. **Commencer là où vous êtes en auditant ce qui existe.** Avant d'acheter un outil ou de concevoir un processus, listez ce que l'équipe utilise déjà et si cela répond au besoin. Réutilisez et prolongez avant de remplacer.
5. **Rendez l'itération réelle.** Découpez un changement de processus en une petite première étape, fixez une date de revue et décidez à l'avance quelles preuves vous regarderez. Évitez les lancements en un seul bloc.
6. **Rendez le travail visible à ceux qui en dépendent.** Partagez tableaux, plans de livraison et état des incidents avec le personnel de support et les clients. Convenez du niveau de détail dont chaque public a besoin.
7. **Dessinez le service entier avant de changer une partie.** Esquissez les personnes, l'information, la technologie et les fournisseurs concernés, et demandez ce qu'un changement dans une partie fait aux autres.
8. **Supprimez les étapes avant de les automatiser.** Si une étape n'ajoute aucune valeur, supprimez-la. Si elle en ajoute, automatisez-la. Automatiser un processus gaspilleur rend le gaspillage plus rapide.
9. **Résolvez ouvertement les conflits entre principes.** Quand deux principes tirent dans des sens différents, dites-le, et consignez la décision et sa raison. Cela construit une trace partagée de la façon dont l'équipe pense.
10. **Utilisez les principes pour contester les affirmations.** Quand quelqu'un dit « ITIL exige » ou « l'agile dit », demandez quel principe ou quelle pratique l'appuie et de quoi cela protège.
11. **Reliez les principes à des mesures.** Choisissez quelques mesures qui montrent si un principe fonctionne, comme le temps de rétablissement du service pour « se concentrer sur la valeur » ou le nombre d'étapes manuelles supprimées pour « optimiser et automatiser ». Évitez d'inventer des objectifs précis.
12. **Revoyez les principes en rétrospective.** Une fois par trimestre, demandez quel principe l'équipe a le mieux suivi et lequel elle a négligé, avec un exemple de chacun.

## Questions à discuter avec votre équipe

**Lequel des sept principes notre équipe suit-elle le mieux, et lequel négligeons-nous ?**

Donnez la liste aux gens et demandez-leur d'en choisir un de chaque sorte, avec un exemple du dernier mois. Comparez. Les différences montrent comment les gens voient le travail. Les principes négligés pointent souvent les angles morts de l'équipe : par exemple, une équipe de livraison peut négliger la visibilité, et une équipe d'exploitation l'itération. L'animateur doit terminer en choisissant un principe que l'équipe va pratiquer.

**Où notre processus ajoute-t-il des étapes que personne ne peut relier à de la valeur ?**

Parcourez un processus et demandez à chaque étape « qui en bénéficie ? ». Les étapes sans réponse sont candidates à la suppression. Soyez prêt à des explications qui font intervenir l'audit ou la sûreté, qui sont légitimes et doivent être consignées. Vérifiez chaque étape douteuse auprès de la personne qui en bénéficie avant de la supprimer.

**Quand avons-nous commencé pour la dernière fois quelque chose de nouveau qui doublonnait ce que nous avions déjà ?**

Recueillez des exemples : un outil acheté alors qu'un autre était disponible, un modèle qui doublonnait un existant. Demandez ce qui a rendu plus facile de commencer du neuf que d'utiliser l'existant. Les causes sont souvent une mauvaise découvrabilité ou un manque de responsable. Choisissez un endroit où améliorer la découverte, comme une liste partagée d'outils.

**Quelle est la plus petite première étape que nous pourrions faire pour notre prochain changement, et comment déciderons-nous de continuer ?**

Choisissez un vrai changement à venir. Demandez la plus petite version qui nous apprendrait quelque chose et ce qui compterait comme signal d'arrêt ou de poursuite. Cette question teste l'itération et le retour d'information. L'animateur peut poursuivre en demandant qui regardera les preuves et quand.

**Qui dépend de notre travail sans pouvoir le voir ?**

Listez les personnes qui comptent sur ce que fait l'équipe : le centre de services, une équipe partenaire, les clients. Demandez comment chacune découvre ce qui change. Les lacunes typiques sont les mises en production silencieuses et les décisions non documentées. Convenez d'un changement pour rendre le travail visible à un groupe.

**Où deux de ces principes ont-ils tiré l'un contre l'autre, et comment avons-nous décidé ?**

Demandez une décision récente où la simplicité s'est heurtée à une vision du système entier, ou la réutilisation à l'automatisation. Discutez de la façon dont cela a été tranché et si le raisonnement est consigné. Le but est de rendre les arbitrages explicites et de remarquer qui a décidé. Convenez d'une manière simple de consigner le prochain.

## En pratique : un exemple d'ITIL agile

Le service informatique d'un hôpital régional veut introduire un nouvel outil de suivi des demandes d'accès. L'équipe sécurité a rédigé un processus d'approbation en sept étapes avec cinq formulaires. L'équipe des systèmes cliniques, qui travaille à un rythme de livraison de deux semaines, se plaint que le processus ajouterait des semaines à l'accueil des nouveaux collaborateurs, et l'équipe sécurité répond que l'audit exige ces étapes.

Le directeur informatique réunit une séance d'une heure et affiche les sept principes au mur. Pour chacun, le groupe dit si le processus proposé le soutient. Se concentrer sur la valeur : seules trois des sept étapes peuvent être reliées à un risque. Commencer là où vous êtes : l'hôpital possède déjà un système d'identité qui détient la plupart des données nécessaires. Progresser par itérations : le brouillon ne prévoit aucune revue. Collaborer et promouvoir la visibilité : le demandeur ne peut pas voir où en est sa demande. Penser de façon holistique : le processus ignore les prestataires, qui passent par un fournisseur. Rester simple : cinq formulaires. Optimiser et automatiser : le brouillon n'automatise rien.

Le groupe convient de piloter un processus en trois étapes pour les rôles les plus courants, à partir des données du système d'identité, avec un état visible pour les demandeurs et une revue après deux mois. L'équipe sécurité garde ses étapes supplémentaires pour les rôles ayant accès aux données des patients. Après deux mois, les demandes courantes prennent deux jours au lieu de neuf, et l'audit accepte le chemin plus court pour les rôles pilotes. Les difficultés restantes incluent les prestataires, dont les demandes arrivent encore par courriel via le fournisseur, et un différend sur l'appartenance d'un quatrième rôle au pilote. Le groupe consigne les deux comme points ouverts et demande au fournisseur de se joindre à la prochaine revue.

## Quatre points de vue

### Équipes produit et de livraison

Utilisez les principes pour expliquer à l'exploitation et à la gouvernance les raisons de vos choix. Quand vous demandez un processus plus léger, indiquez le principe qu'il sert. Quand vous concevez une mise en production, posez-vous les questions de la visibilité et de l'holisme : qui doit le savoir, et quoi d'autre cela affectera-t-il ?

### Équipes de service et d'exploitation

Les équipes d'exploitation peuvent utiliser les principes pour défendre les bonnes pratiques et questionner les pratiques héritées. Demandez pour toute étape ancienne quel principe elle sert. Invitez les équipes de livraison à revoir vos processus au regard de la même liste et convenez ensemble des changements.

### Direction et gouvernance

Les dirigeants peuvent adopter les principes comme langage commun pour les décisions sur les processus et les outils. Demandez le résumé principe par principe lorsque vous approuvez des changements. Donnez vous-même l'exemple en rendant vos propres décisions visibles et en commençant petit.

### Clients et utilisateurs

Les clients et utilisateurs profitent de l'application des principes : les services se concentrent sur leur valeur, changent par petites étapes et montrent où en sont les demandes. Demandez aux fournisseurs comment ils décident quoi faire, et attendez une réponse en termes de valeur et de progrès visible.

## Modes d'échec courants

- **Réciter les principes sans les utiliser.** Les principes restent sur une diapositive. À la place, appliquez-les à de vraies décisions et consignez le résultat.
- **Utiliser un principe pour écraser les autres.** « Rester simple » sert à écarter un risque réel. À la place, pesez les sept et notez les arbitrages.
- **Traiter « commencer là où vous êtes » comme « ne rien changer ».** Une mauvaise pratique existante est défendue. À la place, évaluez ce qui existe, gardez ce qui marche et changez ce qui ne marche pas.
- **Automatiser avant de simplifier.** Un processus gaspilleur est rendu plus rapide. À la place, supprimez d'abord les étapes inutiles.
- **La visibilité comme surveillance.** Les tableaux de bord servent à juger les individus. À la place, rendez le travail visible pour que les gens puissent s'entraider et planifier.
- **Ignorer le système entier.** Une équipe améliore sa propre partie et déplace les problèmes vers d'autres. À la place, esquissez le service de bout en bout avant de changer une partie.
- **Citer un cadre pour faire autorité.** « ITIL dit » clôt la conversation. À la place, demandez quel principe ou quelle pratique est visé et de quoi cela protège.
- **S'en remettre aux résumés secondaires.** La formulation d'un principe vient d'une diapositive qui l'a modifiée. À la place, vérifiez les publications du propriétaire quand la formulation compte.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Sensibilisation | Peu de gens connaissent les principes | Certaines équipes les connaissent et les citent | Toutes les équipes connaissent une liste commune et une lecture simple | L'usage des principes dans les décisions est revu | Équipes, fournisseurs et clients partagent le même langage de principes |
| Usage dans les décisions | Les décisions reposent sur l'habitude ou l'autorité | Certaines propositions sont confrontées aux principes | Les propositions incluent une brève vérification des principes | Les vérifications des principes sont comparées aux résultats | Les principes façonnent routinièrement les décisions dans toute l'organisation |
| Itération et retour d'information | Les changements sont gros et rarement revus | Certains changements commencent petits | Les changements suivent une petite étape avec une revue planifiée | Les preuves de revue sont recueillies et suivies d'effet | Les boucles de retour fonctionnent entre équipes et avec les clients |
| Visibilité | Le travail n'est visible que de son équipe | Certaines équipes partagent tableaux ou plans | Le travail qui affecte d'autres leur est partagé | Les besoins de visibilité sont vérifiés auprès de chaque public | Travail et décisions sont visibles entre équipes, fournisseurs et clients |

## Liste de contrôle

- [ ] Les sept principes sont affichés là où l'équipe travaille.
- [ ] Chaque membre de l'équipe peut les nommer ou les retrouver rapidement.
- [ ] Les propositions de nouveaux processus ou outils incluent une brève vérification au regard des principes.
- [ ] Nous listons ce qui existe avant de commencer quoi que ce soit de nouveau.
- [ ] Les changements commencent par une petite étape et une revue planifiée.
- [ ] Le travail qui affecte d'autres équipes ou des clients leur est rendu visible.
- [ ] Nous esquissons le service entier avant de changer une partie.
- [ ] Nous simplifions avant d'automatiser.
- [ ] Les arbitrages entre principes sont consignés.
- [ ] Nous avons vérifié la formulation exacte des principes dans la publication actuelle du propriétaire.

## Prompts d'IA

**Objectif : confronter un processus proposé aux sept principes directeurs.**

```text
Aidez-moi à confronter un processus proposé aux sept principes directeurs d'ITIL : se concentrer sur la valeur ; commencer là où vous êtes ; progresser par itérations avec retour d'information ; collaborer et promouvoir la visibilité ; penser et travailler de façon holistique ; rester simple et pratique ; optimiser et automatiser.

Le processus proposé (étapes, rôles, formulaires, outils) : [collez].
Ce qu'il doit permettre d'atteindre : [décrivez].
Ce qui existe déjà et qu'il pourrait remplacer ou prolonger : [décrivez, ou écrivez « inconnu »].

Pour chaque principe, dites si la proposition le soutient, le contredit ou est neutre, avec une phrase de raisonnement n'utilisant que le texte que j'ai donné. Listez ensuite les principaux arbitrages et trois questions auxquelles nous devrions répondre avant de l'approuver. N'affirmez pas qu'une norme exige une étape à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : comparer principes agiles et principes ITIL pour une décision.**

```text
Nous décidons s'il faut [décrivez la décision, par ex. « exiger une revue par les pairs pour chaque changement »].

Principes agiles que je veux considérer (collez ceux que vous jugez pertinents, tirés d'agilemanifesto.org) : [collez].
Principes directeurs d'ITIL que je veux considérer : [collez ceux que vous jugez pertinents].
Notre contexte : [décrivez l'équipe, le service et toutes les règles que nous devons respecter].

Construisez un tableau montrant, pour chaque principe collé, quelle option il soutient et pourquoi, en n'utilisant que mon texte. Identifiez où les principes concordent et où ils entrent en conflit. Suggérez une petite expérience pour résoudre tout conflit et les preuves qui montreraient si elle a fonctionné. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver dans un processus les étapes que personne ne peut relier à de la valeur.**

```text
Voici un processus, étape par étape : [collez les étapes, qui fait chacune et quels formulaires ou approbations sont concernés].

Pour chaque étape, demandez : qui en bénéficie, quel risque elle traite et ce qui se passerait si elle était supprimée. N'utilisez que le texte que j'ai donné. Si la réponse est inconnue, écrivez « inconnu » et dites-moi à qui je devrais demander. Regroupez ensuite les étapes en : clairement utiles, incertaines et candidates à la suppression ou à l'automatisation. Ne supposez pas qu'une règle ou une norme s'applique à moins que j'en aie collé le texte : [collez le texte de la règle, ou écrivez « aucune connue »]. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier une rétrospective autour des principes directeurs.**

```text
Planifiez une rétrospective de 45 minutes pour une équipe de [nombre] personnes avec les sept principes directeurs d'ITIL comme cadre.

La période examinée : [période]. Ce qui s'est passé, en quelques phrases : [décrivez].

Donnez un ordre du jour minuté où chaque personne choisit un principe bien suivi et un principe négligé, avec un exemple, regroupe les réponses et se termine par exactement un changement convenu avec un responsable et une date. Ajoutez trois amorces que l'animateur peut utiliser. Restez libre de tout outil précis. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md) : à utiliser pour comparer une pratique aux principes agiles en même temps qu'à ceux d'ITIL.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour tenir une rétrospective qui confronte l'équipe aux principes.
- [kaizen](../../../../skills/kaizen/SKILL.md) : à utiliser pour planifier de petites améliorations itératives après une revue des principes.
- [decision-records](../../../../skills/decision-records/SKILL.md) : à utiliser pour consigner les décisions et les arbitrages entre principes qui y ont mené.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md) : à utiliser pour analyser un processus à la recherche d'étapes sans valeur ajoutée.

## Sources principales

- **ITIL** (Wikipedia) : liste les sept principes directeurs et l'histoire du cadre.
- **ITIL 4 Foundation** (PeopleCert) : la page du propriétaire qui nomme les principes directeurs parmi les sujets étudiés.
- **Principles behind the Agile Manifesto** (agilemanifesto.org) : le pendant agile, assez court pour être lu à côté des principes d'ITIL.
- **ITIL certifications** (PeopleCert) : le catalogue actuel du propriétaire, utile pour trouver les publications qui donnent le texte exact.

## Références

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
