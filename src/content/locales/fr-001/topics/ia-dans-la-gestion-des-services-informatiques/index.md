# IA dans la gestion des services informatiques

**L'intelligence artificielle peut accélérer la détection, le tri et le travail de connaissance dans la gestion des services informatiques, et son usage n'est sûr que là où une personne reste responsable, où les réponses s'appuient sur votre propre matériel et où les risques d'erreur, de biais et d'exposition de données sont gérés.**

## Pourquoi c'est important

La gestion des services comporte beaucoup de langage et de reconnaissance de motifs : lire des tickets, résumer des incidents, chercher dans les connaissances, rédiger des réponses, repérer des signaux inhabituels dans les données de surveillance. Ce sont les tâches où les systèmes d'IA récents paraissent les plus capables, et les éditeurs se sont empressés de les ajouter aux centres de services et aux outils d'exploitation. On demandera aux équipes, si ce n'est pas déjà fait, d'y recourir ou non.

L'occasion est réelle, et les dangers aussi. Les systèmes d'IA peuvent énoncer des faussetés avec assurance, refléter les biais de leur entraînement et des données qu'on leur donne, exposer des informations confidentielles si on les alimente sans soin et amener les gens à se fier à des résultats qu'ils n'ont pas vérifiés. Plusieurs cas largement rapportés montrent le coût d'une confiance mal placée. Une organisation de services qui adopte l'IA sans réflexion peut nuire à ses clients et à sa propre réputation.

En 2026, l'IA est aussi entrée dans le cadre. La page publique de certification de PeopleCert décrit le nouvel ITIL comme « pratique et natif de l'IA dès sa conception » et liste un module ITIL AI Governance (version 5) qui couvre la gouvernance de l'IA « de façon responsable et à grande échelle » (voir Sujet 2.2 — ITIL). Ce guide n'a pas pu vérifier dans les publications du propriétaire ce que dit ITIL 5 de l'IA en détail ; ce sujet ne décrit donc pas la position du cadre au-delà de ces énoncés. Il s'appuie sur les articles de Wikipédia sur l'AIOps et sur l'hallucination de l'IA, sur la page du cadre de gestion des risques de l'IA du NIST et sur le raisonnement pratique, et il signale la pratique comme telle.

## Concepts clés

### Où l'IA aide dans la gestion des services

La plupart des usages se rangent en quelques groupes. Le tableau montre des exemples et le type de risque de chacun, selon la lecture de ce guide.

| Usage | Ce que fait l'IA | Principaux risques |
|---|---|---|
| **Détection et corrélation (AIOps)** | Trouve des anomalies, groupe des événements liés, suggère des causes probables | Fausses alertes, événements manqués, raisonnement opaque |
| **Aide au centre de services** | Suggère des réponses, résume des tickets, rédige des réponses, aiguille les demandes | Réponses fausses ou inventées, ton, vie privée |
| **Travail de connaissance** | Rédige et améliore des articles, cherche dans les connaissances | Contenu fabriqué, sources périmées |
| **Analyse des incidents et des problèmes** | Résume des chronologies, suggère des hypothèses, rédige des revues | Causes plausibles mais sans fondement |
| **Aide aux changements et aux mises en production** | Examine des changements, rédige des notes, suggère un risque | Excès de confiance, contexte manqué |
| **Code et automatisation** | Écrit des scripts et de la configuration | Code peu sûr ou incorrect, dépendances cachées |
| **Analyse et rapports** | Résume des données, rédige des rapports | Calculs faux, chiffres inventés |

### AIOps

L'article de Wikipédia décrit l'AIOps comme l'usage de l'IA, de l'apprentissage automatique et de l'analytique de données massives pour automatiser et améliorer la gestion des centres de données, avec pour but de détecter, diagnostiquer et résoudre les problèmes informatiques plus efficacement que par les méthodes traditionnelles. Il dit que Gartner a défini l'AIOps pour la première fois en 2016. L'article liste des capacités dont la corrélation d'événements, la détection d'anomalies, l'analyse de cause racine, la détermination de causalité, l'analytique prédictive, la gestion des incidents, la remédiation automatisée, la prédiction de performance, l'allocation de ressources et la gestion de la capacité. Il dit que l'AIOps s'appuie sur des données d'observation, comme les journaux et la surveillance, et sur des données d'interaction, comme les tickets, événements et enregistrements d'incidents.

L'article affirme des bénéfices, comme un temps moyen de détection amélioré de 15 à 20 pour cent et des incidents critiques en baisse de plus de 50 pour cent, mais note que ceux-ci viennent d'un seul article de cabinet-conseil et ne sont pas vérifiés indépendamment dans le texte. Il n'énonce ni critiques, ni cas d'échec, ni limites. Traitez les affirmations des éditeurs en conséquence, et testez tout outil sur vos propres incidents (voir Sujet 3.10 — Surveillance et gestion des événements).

### IA générative et hallucination

L'article de Wikipédia sur l'hallucination en IA la définit comme une réponse qui contient des informations fausses ou trompeuses présentées comme des faits, et note que le terme est critiqué pour son anthropomorphisme envers un logiciel. Il donne des causes : le pré-entraînement à la prédiction du mot suivant récompense la devinette quand le modèle manque d'information, les jeux de données peuvent être incomplets ou non représentatifs, et des chercheurs d'OpenAI soutiennent que l'entraînement et l'évaluation récompensent la devinette plutôt que l'aveu d'incertitude. Les exemples qu'il consigne comprennent :

- **Mata v. Avianca (mai 2023) :** un avocat a déposé six fausses affaires générées par ChatGPT ; le juge a infligé une amende de 5 000 dollars américains le 23 juin 2023.
- **Moffatt v. Air Canada (février 2024) :** un tribunal a tenu une compagnie aérienne à une politique de deuil que son agent conversationnel avait inventée.
- Des rapports d'un cabinet-conseil qui contenaient de fausses citations, et une étude qui a trouvé que 69 des 178 références de GPT-3 avaient des identifiants incorrects ou inexistants.

Ce sont les conséquences de la confiance en des résultats non vérifiés : responsabilité juridique, exposition financière et confiance abîmée. En gestion des services, un agent conversationnel qui invente une politique ou une procédure crée la même classe de risque.

### Atténuation : ancrage et vérifications

L'article décrit la génération augmentée par récupération (RAG) comme le fait de laisser le modèle accéder à des sources externes avant de répondre. Il liste aussi des méthodes liées aux données, des méthodes de modèle et d'inférence et des propositions comme des logiciels de garde-fou et la notation de confiance, et note qu'aucune source qu'il cite ne quantifie de combien chacune réduit l'hallucination. Pour une équipe de service, les atténuations pratiques sont :

- **Ancrer les réponses dans votre propre matériel approuvé,** comme la base de connaissances, et montrer la source.
- **Garder une personne dans la boucle** pour tout ce qui touche un client, un engagement ou la production.
- **Demander ce dont l'IA n'est pas sûre,** et traiter les énoncés sans appui comme non vérifiés.
- **Tester régulièrement** sur des cas réels, y compris des cas où la bonne réponse est « je ne sais pas ».

### Cadres de gestion des risques

Le National Institute of Standards and Technology (NIST) a publié l'AI Risk Management Framework (AI RMF 1.0) le 26 janvier 2023, qu'il décrit comme destiné à un usage volontaire, pour aider à gérer les risques de l'IA pour les individus, les organisations et la société et à améliorer la capacité d'intégrer des considérations de fiabilité dans la conception, le développement, l'usage et l'évaluation de produits, services et systèmes d'IA. La page du NIST nomme quatre fonctions, Gouverner (Govern), Cartographier (Map), Mesurer (Measure) et Gérer (Manage), mais ne les décrit pas. Il a aussi publié un Generative Artificial Intelligence Profile (NIST-AI-600-1) le 26 juillet 2024 pour aider les organisations à identifier les risques propres à l'IA générative, et dit que le cadre est en cours de révision. Lisez le cadre lui-même pour le détail. D'autres règles sur l'IA, comme des lois et des normes, diffèrent selon les pays et les secteurs ; interrogez vos fonctions juridique et de conformité, et obtenez le texte (voir Sujet 5.7 — Gouvernance, risques et conformité).

### Protection des données et vie privée

Tout ce qui est donné à un service d'IA peut être stocké, utilisé pour l'entraînement ou exposé, selon le service et ses conditions. Les tickets, journaux et transcriptions de conversations contiennent souvent des données personnelles, des identifiants et des informations commerciales confidentielles. Avant d'utiliser un outil d'IA avec de vraies données, découvrez où vont les données, qui peut les voir, combien de temps elles sont conservées et si elles servent à entraîner des modèles, et appliquez votre politique de sécurité de l'information (voir Sujet 3.13 — Gestion de la sécurité des informations). Retirez ou remplacez les données personnelles et secrètes avant de les coller dans un outil que vous n'avez pas approuvé.

### Redevabilité et transparence

Une personne ou une équipe doit rester responsable des décisions auxquelles une IA contribue. Quand l'IA rédige une réponse, l'expéditeur est responsable. Quand l'IA suggère une cause racine, l'enquêteur est responsable de la tester. Dites aux clients quand ils parlent à un système automatisé là où la loi, un contrat ou l'équité l'exigent, et donnez une voie vers une personne. Conservez des enregistrements de ce qui a été demandé à l'IA et de ce qu'elle a produit pour les décisions importantes, comme pour d'autres outils (voir Sujet 5.1 — Gestion agile des services pour les preuves).

### Biais et équité

Les systèmes d'IA apprennent à partir de données qui reflètent des décisions passées et des lacunes. Un assistant de tri entraîné sur d'anciens tickets peut traiter certains groupes d'utilisateurs ou certains types de problèmes comme moins prioritaires. Vérifiez les résultats selon les groupes, impliquez des gens de perspectives différentes dans les tests et guettez les motifs. Les sources lues pour ce guide ne détaillent pas les biais ; c'est donc une mise en garde générale, non un constat.

### Mesurer l'IA

Mesurez la qualité et l'effet de toute étape d'IA, pas seulement son volume : à quelle fréquence les humains la contredisent, à quelle fréquence elle se trompe, combien de temps les tâches prennent avec et sans elle, et ce que disent les utilisateurs (voir Sujet 5.6 — Indicateurs et mesure). Soyez prudent avec les chiffres des éditeurs ; les propres affirmations de bénéfices de l'article sur l'AIOps reposent sur une seule source.

### Compétences et prompts

La compétence pratique de travailler avec l'IA comprend écrire des instructions claires, fournir le bon matériel, demander l'incertitude et vérifier les résultats. Le Sujet 6.3 — Compétences et prompts IA le traite en détail.

### Limites des sources

L'article sur l'AIOps ne contient aucune critique et ses chiffres de bénéfices viennent d'une seule source ; l'article sur l'hallucination est signalé comme nécessitant une mise à jour et a été lu en partie ; la page du NIST ne décrit pas les fonctions du cadre ; et la page de PeopleCert n'explique pas ce que dit ITIL 5 de l'IA. Ce sujet donne donc un compte rendu prudent et laisse les détails aux sources primaires.

## Bonnes pratiques

1. **Commencez par un usage à faible risque et une question claire.** Choisissez une tâche où les erreurs sont peu coûteuses et faciles à repérer, comme rédiger un résumé à usage interne, et définissez ce que signifie la réussite.
2. **Gardez une personne responsable.** Nommez qui répond de ce à quoi l'IA contribue, et exigez une revue pour tout ce qui atteint un client, change la production ou prend un engagement.
3. **Ancrez les réponses dans du matériel approuvé.** Là où vous utilisez l'IA pour des réponses, reliez-la à votre propre base de connaissances et montrez la source. Faites-lui dire « je ne sais pas » quand elle n'en a pas.
4. **Protégez les données.** Décidez quelles données peuvent aller à quel outil, retirez les données personnelles et secrètes et utilisez des outils approuvés dont vous avez lu les conditions. Impliquez tôt la sécurité et le juridique.
5. **Testez avec des cas réels.** Rassemblez un ensemble de vrais tickets et incidents aux réponses connues, exécutez l'IA dessus et consignez où elle échoue. Recommencez après tout changement d'outil ou de réglages.
6. **Vérifiez affirmations et références.** Contrôlez noms, chiffres, citations et procédures par rapport aux sources, comme le montrent les cas de fausses citations judiciaires. N'acceptez jamais des références que vous n'avez pas vues.
7. **Soyez honnête avec les clients.** Dites quand un système automatisé répond là où cela compte, et donnez une voie facile vers une personne.
8. **Guettez les biais.** Examinez les résultats selon les groupes d'utilisateurs et les types de problèmes, et impliquez des gens capables de repérer les lacunes. Ajustez ou cessez l'usage là où un tort apparaît.
9. **Mesurez la qualité et l'effet.** Suivez taux de contradiction, taux d'erreur, temps gagné et avis des utilisateurs. Comparez au processus sans IA et soyez sceptique envers les chiffres des éditeurs.
10. **Gardez des enregistrements.** Pour les décisions importantes, conservez ce qui a été demandé et produit, qui l'a relu et ce qui a été décidé. Cela soutient la redevabilité et l'audit.
11. **Utilisez un cadre de risque.** Adoptez une approche reconnue, comme l'AI RMF du NIST ou une politique d'IA de l'organisation, pour structurer les décisions sur les endroits où l'IA est permise. Traitez-la comme un guide de réflexion.
12. **Formez les gens.** Apprenez au personnel comment fonctionnent les outils, où ils échouent et ce qui est permis. Mettez la formation à jour quand les outils et les règles changent.

## Questions à discuter avec votre équipe

**Où utilisons-nous déjà l'IA, officiellement ou non ?**

Demandez honnêtement. Le personnel utilise souvent des outils publics avec de vrais tickets. Le but n'est pas de punir mais de comprendre. Listez les usages et les données concernées. Discutez de ceux qui sont acceptables et de ceux qui ont besoin d'une voie plus sûre. Convenez d'une courte politique.

**Pour quelle tâche voudrions-nous le plus d'aide, et que se passe-t-il si l'IA se trompe ?**

Choisissez une tâche et parcourez le cas d'échec. Si la réponse est un courriel d'excuses, le risque est petit ; si c'est une mauvaise instruction à un client, le risque est plus élevé. Cela aide à classer les usages par risque. Choisissez un premier pilote au tort limité.

**Comment saurions-nous qu'une réponse de l'IA est fausse ?**

Demandez qui vérifie les réponses et comment. Réponses courantes : personne, ou la personne qui a posé la question. Discutez de sources, de tests et de secondes revues. Convenez d'une vérification minimale pour chaque type d'usage.

**Quelles données sommes-nous à l'aise de mettre dans un outil d'IA, et lesquelles non ?**

Recueillez les types : tickets, journaux, noms de clients, identifiants, contrats. Marquez chacun comme acceptable, acceptable après retrait des parties sensibles, ou jamais. Vérifiez avec la sécurité et le juridique. Écrivez-le en guide d'une page.

**Qui est responsable quand une décision assistée par l'IA tourne mal ?**

Utilisez un exemple passé de décision assistée par un outil. Demandez qui a répondu. Convenez qu'une personne nommée reste responsable et des preuves qu'elle devrait garder. Notez toute lacune où personne ne le serait.

**Qu'est-ce qui nous convaincrait qu'un outil vaut la peine d'être gardé ?**

Demandez à l'équipe de décrire les preuves qu'elle accepterait : temps gagné à qualité égale ou meilleure, moins d'erreurs, satisfaction des utilisateurs. Discutez de la manière de les recueillir lors d'un essai. Convenez d'une date de revue.

## En pratique : un exemple d'ITIL agile

Le centre de services informatiques d'une administration fiscale nationale traite environ 1 200 contacts par semaine du personnel, beaucoup sur des questions courantes. Le responsable du centre propose un assistant d'IA pour suggérer des réponses à partir de la base de connaissances et rédiger des réponses. Le responsable de la sécurité de l'administration s'inquiète des données personnelles dans les tickets et de réponses fausses atteignant le personnel.

Ils conviennent d'un pilote limité. L'assistant ne travaille qu'à partir d'articles de connaissance approuvés, montre de quel article vient chaque suggestion et dit quand il ne trouve rien de pertinent. Les analystes relisent chaque réponse suggérée avant l'envoi, et l'outil ne peut pas envoyer seul. Les tickets sont analysés pour y repérer données personnelles et identifiants, qui sont retirés avant que l'assistant les voie. Un jeu de test de 200 anciens tickets aux réponses connues est utilisé avant le pilote, et l'équipe consigne où l'assistant échoue. Le responsable du centre et le responsable de la sécurité conviennent de mesures : la fréquence à laquelle les analystes modifient ou rejettent les suggestions, le délai de première réponse et une courte question de satisfaction pour le personnel. Le pilote dure trois mois, et le responsable rend compte à une revue conjointe qui comprend un analyste et un représentant du personnel.

À la fin, les analystes acceptent la plupart des suggestions pour les questions courantes et le délai de réponse pour celles-ci baisse. Le jeu de test montre que l'assistant donne une réponse assurée mais fausse aux questions sur une politique récemment modifiée, parce que l'article de connaissance était périmé. Certains problèmes subsistent. Deux analystes ont commencé à envoyer des suggestions avec peu de vérification quand ils étaient occupés, un membre du personnel avec une question hors norme a reçu une réponse fade qui passait à côté, et les conditions de l'éditeur sur la conservation des données étaient peu claires. Le responsable ajoute une règle selon laquelle les changements de politique doivent mettre à jour l'article de connaissance avant d'entrer en vigueur, utilise un contrôle par échantillon des réponses envoyées par un analyste senior et demande aux achats et au responsable de la sécurité de clarifier les conditions avant d'étendre le pilote.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison peuvent ajouter des fonctionnalités d'IA aux produits et se servir de l'IA pour écrire du code et des tests. Vérifiez l'exactitude et la sécurité du code généré, gardez les secrets hors des prompts et soyez clair avec les utilisateurs quand l'IA est en jeu. Intégrez à votre service une surveillance du comportement de l'IA.

### Équipes de service et d'exploitation

Les équipes d'exploitation rencontreront l'IA dans la surveillance, les outils du centre et l'analyse. Traitez les suggestions de l'IA comme des hypothèses, testez-les et gardez des enregistrements. Aidez à définir quelles données peuvent servir et donnez un retour pour améliorer le matériel d'ancrage.

### Direction et gouvernance

Les dirigeants fixent la politique, l'appétit pour le risque et la redevabilité en matière d'IA. Demandez un inventaire des usages, un cadre de risque et des preuves issues de pilotes, non des affirmations d'éditeurs. Veillez à ce que le juridique, la sécurité et la vie privée soient impliqués dès le départ.

### Clients et utilisateurs

Les clients et utilisateurs devraient être informés quand ils ont affaire à un système automatisé là où cela compte, et avoir une voie vers une personne. Signalez les réponses fausses ou étranges, car ce sont des preuves. Demandez aux fournisseurs comment ils protègent vos données et vérifient les résultats de l'IA.

## Modes d'échec courants

- **Se fier à des résultats non vérifiés.** Des faits fabriqués atteignent les clients. À la place, ancrez les réponses dans du matériel approuvé et vérifiez avant d'envoyer.
- **IA fantôme.** Le personnel colle de vraies données dans des outils publics. À la place, fournissez des outils approuvés et une politique de données claire.
- **Aucune personne responsable.** Personne ne répond des décisions assistées par l'IA. À la place, nommez un responsable et exigez une revue.
- **Croire les chiffres des éditeurs.** Les affirmations de bénéfices ne sont pas vérifiées. À la place, testez sur vos propres cas et mesurez.
- **Ancrage périmé.** La base de connaissances est fausse et l'IA la répète. À la place, gardez les articles à jour et attribués.
- **Biais caché.** Certains utilisateurs ou problèmes sont traités moins bien. À la place, testez selon les groupes et examinez les résultats.
- **Automatiser avant de comprendre.** L'IA agit sur la production sans contrôle. À la place, commencez par la suggestion et la revue, et passez à l'action seulement avec de solides garanties.
- **Pas d'enregistrements.** Les décisions ne peuvent pas être auditées. À la place, gardez des journaux de ce qui a été demandé, produit et décidé.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Politique et redevabilité | L'usage est ponctuel et non consigné | Certaines équipes ont des règles | Une politique écrite, un inventaire des usages et des responsables nommés | Le respect de la politique et les incidents sont revus | La politique est alignée entre équipes, fournisseurs et régulateurs |
| Qualité et ancrage | Le résultat est cru par défaut | Quelques vérifications sur les usages importants | Les réponses sont ancrées dans des sources approuvées et testées sur des cas réels | Taux d'erreur et de contradiction sont mesurés et suivis d'effet | Ancrage et tests sont partagés et améliorés entre équipes |
| Protection des données et équité | Les données sont collées librement | Quelques règles de données existent | Règles de traitement des données et contrôles de biais sont routiniers | Incidents de données et constats d'équité sont suivis et corrigés | Les pratiques de données et d'équité sont coordonnées dans l'organisation et avec les fournisseurs |
| Valeur et apprentissage | La valeur est supposée | Quelques essais sont menés | Les pilotes ont des mesures et des décisions convenues | Bénéfices et coûts sont mesurés par rapport à des références | L'apprentissage tiré de l'usage de l'IA se répand continuellement entre services |

## Liste de contrôle

- [ ] Nous avons un inventaire des endroits où l'IA est utilisée dans nos services ou autour, y compris l'usage non officiel.
- [ ] Une personne nommée est responsable de chaque usage assisté par l'IA.
- [ ] Une politique écrite dit quelles données peuvent aller dans quels outils.
- [ ] Les données personnelles et les secrets sont retirés ou masqués avant tout usage avec des outils non approuvés pour eux.
- [ ] Les réponses montrées aux clients ou utilisées dans des décisions sont ancrées dans du matériel approuvé et relues.
- [ ] Nous avons un jeu de test de cas réels et le rejouons après les changements.
- [ ] Les clients sont informés quand un système automatisé répond, là où cela compte, et ont une voie vers une personne.
- [ ] Nous mesurons taux de contradiction, taux d'erreur, temps gagné et avis des utilisateurs.
- [ ] Des enregistrements sont gardés pour les décisions importantes assistées par l'IA.
- [ ] Le juridique, la sécurité et la vie privée ont examiné notre usage et les conditions de l'outil.

## Prompts d'IA

**Objectif : rédiger un inventaire des usages de l'IA à partir de ce que disent les gens.**

```text
Aidez-moi à structurer un inventaire des usages de l'IA dans notre organisation de services.

Ce que les gens nous ont dit utiliser l'IA pour faire (collez des notes ; retirez les noms) : [collez].
Outils mentionnés : [listez].
Types de données concernées, pour autant que nous le sachions : [listez].

Produisez un tableau avec : usage, outil, données concernées, qui est responsable (utilisez « inconnu » si non indiqué), risque en cas d'erreur (faible, moyen, élevé avec une raison d'une phrase tirée de mes notes) et une question à poser. Ne devinez rien sur les outils ou conditions que je n'ai pas mentionnés. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un jeu de test pour un assistant d'IA.**

```text
Concevez un jeu de test pour un assistant d'IA qui suggère des réponses aux questions du centre de services.

Les sources de connaissance qu'il utilisera : [décrivez].
Types de questions que nous recevons : [listez avec la part approximative si vous la connaissez].
Cas où la bonne réponse est « pas dans la base de connaissances » ou « escalader » : [décrivez].

Proposez une structure pour 100 à 200 cas de test (catégories, comment choisir de vrais exemples, comment consigner la bonne réponse et sa source), comment noter les réponses (correcte, en partie correcte, fausse, fausse avec assurance, refusée à bon escient) et comment répéter après des changements. N'inventez pas de contenu de test ; dites-moi quoi recueillir. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une politique d'usage de l'IA d'une page pour une équipe.**

```text
Rédigez une politique d'usage de l'IA d'une page pour [équipe].

Outils approuvés : [listez, ou écrivez « aucun encore »].
Données que nous traitons (types et sensibilité) : [listez].
Règles que nous devons suivre, avec le texte de la source du juridique, de la sécurité ou des contrats : [collez, ou écrivez « aucune connue »].
Rôles : [listez].

Écrivez des sections en langage simple : à quoi l'IA peut servir, quelles données peuvent ou non aller dans les outils, ce qui doit être vérifié par une personne avant usage, qui est responsable, comment consigner les usages importants, comment signaler les problèmes. Marquez chaque élément qui est une hypothèse. N'affirmez pas qu'une loi exige quelque chose à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : relire une réponse générée par l'IA avant qu'elle parte vers un utilisateur.**

```text
Voici un projet de réponse qu'un outil d'IA a produit pour une question d'utilisateur.

La question de l'utilisateur : [collez, données personnelles retirées].
Le ou les articles de connaissance sur lesquels la réponse devrait reposer : [collez].
Le projet de réponse : [collez].

Vérifiez le projet par rapport à l'article seulement. Listez les énoncés appuyés par l'article (citez la partie), ceux qui ne le sont pas, tout ce qui manque dont l'utilisateur aurait besoin et le ton. Suggérez une version corrigée qui n'utilise que l'article. N'ajoutez pas de faits. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md) : à utiliser pour écrire des prompts clairs qui fournissent le bon matériel et demandent l'incertitude.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md) : à utiliser pour documenter à quoi sert un modèle, comment il a été testé et ses limites.
- [data-governance](../../../../skills/data-governance/SKILL.md) : à utiliser pour décider quelles données peuvent servir avec quels outils.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md) : à utiliser pour préparer des questions au juridique et à la vie privée sur l'usage de l'IA.
- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner les risques liés à l'IA, leurs responsables et leurs traitements.

## Sources principales

- **AIOps** (Wikipedia) : une courte description de l'IA pour l'exploitation informatique, de ses capacités et de ses bénéfices allégués, sans critiques.
- **Hallucination (artificial intelligence)** (Wikipedia) : causes, exemples et idées d'atténuation pour les résultats faux.
- **AI Risk Management Framework** (NIST) : le cadre volontaire et son profil d'IA générative ; lisez le cadre lui-même pour les détails.
- **ITIL certifications** (PeopleCert) : les déclarations publiques du propriétaire sur le nouvel ITIL et son module de gouvernance de l'IA.

## Références

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
