# Gestion des connaissances

**La gestion des connaissances met à la disposition des autres, quand ils en ont besoin, ce que les gens savent ; l'approche qui marche pour les équipes agiles consiste à capturer la connaissance comme sous-produit du travail, à la garder brève et avec un responsable, et à combiner écriture et conversation.**

## Pourquoi c'est important

Chaque service dépend de connaissances : comment il fonctionne, ce qui a mal tourné auparavant, comment le réparer et pourquoi il a été construit ainsi. Quand cette connaissance ne vit que dans quelques têtes, le service est fragile. Des vacances, une démission ou une mauvaise nuit d'astreinte peuvent transformer une correction de dix minutes en une panne de dix heures. La gestion des connaissances est la pratique qui consiste à s'assurer que les personnes qui ont besoin de savoir peuvent s'informer.

La tradition agile penche vers la conversation et le logiciel opérationnel plutôt que vers la documentation, et les auteurs du Manifeste agile en ont été critiqués (voir Sujet 1.1 — Manifeste agile). Une lecture honnête est que la documentation doit mériter sa place. La gestion des connaissances donne une manière de décider ce qui la mérite : la connaissance qui est utilisée souvent, qui coûte cher à redécouvrir ou qui est détenue par trop peu de personnes. Pour le reste, la conversation et le binôme peuvent mieux convenir.

L'[article de Wikipédia sur la gestion des connaissances](https://en.wikipedia.org/wiki/Knowledge_management) est large et décrit le domaine comme le traitement de la connaissance pour atteindre les objectifs de l'organisation, distinct de la gestion de contenu ou d'information. Il consigne l'histoire, les modèles, les approches, les facteurs favorables, les obstacles et les critiques, et ne dit rien de précis sur les services informatiques. Ce sujet utilise les idées générales de l'article et les applique aux équipes de service, en signalant où il applique et où il ne fait pas que rapporter.

## Concepts clés

### Ce qu'est la gestion des connaissances

Wikipédia décrit la gestion des connaissances (KM) comme couvrant les processus de conscience organisationnelle, d'apprentissage, de collaboration et d'innovation, en utilisant et en partageant la connaissance pour soutenir les objectifs d'une organisation. Il note que des pratiques comme l'apprentissage, les bibliothèques d'entreprise et le mentorat précèdent de loin le terme. La KM est apparue comme discipline au début des années 1990, avec des universitaires dont Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport et Baruch Lev qui ont contribué à développer le domaine. L'article dit que l'ISO 9001:2015 a ajouté une spécification pour la « connaissance organisationnelle ».

### Connaissance tacite et explicite

L'article distingue deux formes. La **connaissance tacite** est intériorisée et souvent non connue consciemment. La **connaissance explicite** est détenue consciemment et peut être facilement communiquée. Le modèle SECI de Nonaka (socialisation, externalisation, combinaison, intériorisation), que l'article attribue au livre de Nonaka et Takeuchi de 1995, décrit une spirale entre les deux. L'article note aussi que des chercheurs ultérieurs ont qualifié la séparation de simplification excessive.

Pour une équipe de service, la distinction est pratique. Un ingénieur expérimenté peut souvent sentir qu'une alarme est probablement du bruit ou qu'une version particulière est risquée, sans pouvoir facilement écrire pourquoi. Une partie de ce flair peut être transformée en guides d'exploitation et en vérifications ; une partie ne peut se partager qu'en travaillant ensemble.

### Codification et personnalisation

À la suite de Hansen et collègues (1999), l'article distingue deux stratégies. La **codification** stocke la connaissance dans des dépôts pour que d'autres puissent la réutiliser. La **personnalisation** partage la connaissance par le contact direct entre personnes. Chacune convient à des connaissances différentes :

| Stratégie | Convient à | Exemples dans une équipe de service |
|---|---|---|
| Codification | Tâches répétées et bien comprises | Guides d'exploitation, enregistrements d'erreurs connues, descriptions de service, articles pratiques |
| Personnalisation | Questions complexes, changeantes ou qui font appel au jugement | Binôme en astreinte, observation, communautés de pratique, discussions de conception |

La plupart des équipes ont besoin des deux. Une base de connaissances de recettes n'enseigne pas le jugement, et la conversation seule ne passe pas à l'échelle de l'équipe de nuit.

### Communautés de pratique

L'article liste les communautés de pratique parmi les perspectives sur la KM. Dans une organisation de services, elles peuvent être aussi simples qu'une réunion informelle régulière de personnes qui travaillent sur des problèmes semblables dans plusieurs équipes, comme des ingénieurs de bases de données ou des analystes du centre. Elles diffusent connaissance et normes et donnent aux gens un endroit où poser des questions.

### Quoi capturer

Tout ne mérite pas d'être consigné. Les candidats utiles dans une équipe de service incluent :

- **Comment rétablir un service :** guides d'exploitation et étapes de reprise (voir Sujet 3.2 — Gestion des incidents).
- **Erreurs connues et solutions de contournement :** symptôme, solution de contournement et responsable (voir Sujet 3.3 — Gestion des problèmes).
- **Descriptions de service :** ce que fait un service, qui en est responsable et de quoi il dépend (voir Sujet 3.8 — Gestion du catalogue de services).
- **Décisions et leurs raisons :** pourquoi une conception a été choisie, pour que les changements futurs ne la défassent pas aveuglément.
- **Leçons des incidents :** postmortems que d'autres peuvent lire.
- **Réponses aux questions courantes des utilisateurs :** courts articles pour le centre de services et pour le libre-service.

### Facteurs favorables et obstacles

L'article nomme les personnes et la culture, les processus et la structure, et la technologie comme composantes centrales. Il note que les motivations incluent l'innovation, des cycles de développement plus courts et la mise à profit de l'expertise, et que les organisations utilisent des incitations comme la remise obligatoire de contenu, mais il dit qu'il n'y a pas de consensus sur l'efficacité des incitations. Il liste des obstacles comme la connaissance qui ne se transmet pas, la formation insuffisante et la perte de connaissance quand des travailleurs expérimentés partent. Pour les équipes de service, les obstacles qui comptent le plus sont la pression du temps, le manque de clarté sur la responsabilité du contenu, des outils malcommodes à utiliser et une culture qui récompense l'héroïsme plutôt que le partage.

### La connaissance dans le flux du travail

Un principe pratique, largement utilisé dans les centres de services, est de capturer la connaissance dans le cadre du travail et non comme une tâche séparée. Quand un analyste résout un nouveau problème, la solution devient un brouillon d'article avant la fermeture du ticket. Quand un ingénieur corrige un incident, les étapes vont dans le guide d'exploitation. Cela transforme chaque travail en une petite contribution. Les sources lues pour ce guide ne décrivent pas de méthode précise pour le faire ; considérez donc le principe comme une pratique courante à tester, et voyez ce qui marche avec vos outils.

### Critiques et limites

L'article consigne des critiques : la pertinence pratique de la recherche universitaire en KM a été mise en doute, la distinction tacite–explicite a été critiquée, l'efficacité des incitations est contestée et la protection de la connaissance comporte des risques comme la surprotection et le détournement. Il ne rapporte aucune preuve mesurée de l'efficacité de la KM ni de son retour sur investissement. Pour une équipe de service, la leçon est une ambition modeste : commencez par la connaissance dont l'absence a fait mal, mesurez si elle est utilisée et abandonnez ce qui ne l'est pas.

### Connaissance et apprentissage organisationnel

L'article dit que la KM est semblable à l'apprentissage organisationnel mais insiste davantage sur la connaissance comme actif stratégique et sur le partage d'information, et que la KM facilite l'apprentissage organisationnel. Cela se relie à l'apprentissage agile (voir Sujet 1.10 — Apprentissage agile) et à l'amélioration continue (voir Sujet 3.15 — Amélioration continue).

## Bonnes pratiques

1. **Commencez par la connaissance dont l'absence a fait mal.** Listez les derniers incidents ou retards causés par une connaissance manquante. Commencez par ces sujets, et non par une tentative de tout documenter.
2. **Capturez la connaissance au moment du travail.** Faites de la rédaction d'une courte note une partie de la clôture d'un incident, d'une demande ou d'un changement. Une note brute écrite maintenant vaut plus qu'un article soigné prévu pour plus tard.
3. **Gardez les articles courts et structurés.** Utilisez une forme cohérente : symptôme, cause si connue, étapes, quand escalader, responsable, date de dernière revue. Les gens sous pression lisent les titres et les étapes numérotées.
4. **Donnez à chaque article un responsable et une date de revue.** Un contenu sans responsable se dégrade. Montrez la date de revue sur l'article pour que les lecteurs puissent juger de la confiance.
5. **Supprimez et fusionnez.** Retirez les articles que personne n'utilise et fusionnez les doublons. Une base plus petite et à jour vaut mieux qu'une grande base périmée.
6. **Rendez-la facile à trouver.** Mettez la connaissance là où les gens travaillent déjà, testez la recherche avec de vraies requêtes et renvoyez aux articles depuis les tickets, le catalogue de services et les guides d'exploitation.
7. **Testez les guides d'exploitation en les utilisant.** Demandez à la personne qui utilisera un guide de le suivre sur un cas de test. Corrigez ce qui est flou. Cela transforme un document en connaissance opérante.
8. **Travaillez en binôme et observez pour le tacite.** Faites travailler les moins expérimentés avec des expérimentés sur de vrais incidents et changements. Planifiez le binôme, car il n'aura pas lieu quand tout le monde est occupé.
9. **Soutenez les communautés de pratique.** Donnez aux gens du temps et un lieu pour se réunir entre équipes. Laissez les sujets venir des membres.
10. **Consignez les décisions et les raisons.** Gardez une brève trace des décisions importantes de conception et de processus et de leurs raisons. Cela évite la redécouverte et aide les nouveaux.
11. **Partagez les leçons.** Publiez largement les postmortems et les résumés de problèmes, en langage simple, et demandez aux autres équipes ce qui les concerne (voir Sujet 3.2 — Gestion des incidents).
12. **Surveillez le risque de connaissance.** Une fois par trimestre, listez les compétences et systèmes qui dépendent d'une seule personne et prévoyez de les répartir. Traitez les départs comme une incitation à revoir.

## Questions à discuter avec votre équipe

**Que ne pourrions-nous pas faire si une personne précise était absente un mois ?**

Demandez à l'équipe de nommer les personnes dont l'absence ferait mal et pourquoi. Listez les tâches qui dépendent d'elles. C'est généralement une longue liste, et inconfortable pour les personnes nommées. Présentez-la comme un risque pour le service, pas comme un jugement. L'animateur peut demander quelle tâche est la plus urgente à partager et comment. Choisissez-en une pour commencer.

**Que mettons-nous par écrit, et quelqu'un le lit-il ?**

Demandez les trois derniers documents que les gens ont utilisés et les trois derniers qu'ils ont écrits. Comparez. L'écart montre où l'effort de documentation est mal placé. Demandez à quoi ressemblerait une version utile des documents non lus, ou s'ils devraient être supprimés. Convenez d'en retirer ou d'en corriger un.

**Quand nous corrigeons quelque chose de nouveau, où va la connaissance ?**

Retracez le dernier nouveau problème : qui l'a corrigé, qui sait comment et où cela a été consigné. Si la réponse est « dans un ticket » ou « dans ma tête », discutez de ce que serait une meilleure voie. Souvent une petite habitude, comme un modèle à la clôture, change la donne. Essayez-en une pendant un mois.

**Quelle connaissance se partage mieux en travaillant ensemble qu'en écrivant ?**

Demandez où le jugement compte : lire un graphique, décider quand escalader, connaître un client. Discutez de la manière dont les nouveaux l'apprennent aujourd'hui. Les réponses typiques sont la chance et le temps. Planifiez un arrangement délibéré, comme l'observation en astreinte. Convenez de qui travaillera en binôme avec qui.

**Comment savons-nous si un article de connaissance est toujours vrai ?**

Choisissez un article et testez-le. Vérifiez le responsable, la date de revue et si les étapes fonctionnent. Beaucoup échouent au test. Demandez quel cycle de revue est réaliste et qui peut retirer des articles. Le but est un signe visible de confiance sur chaque article.

**Qu'est-ce qui nous empêche de partager ce que nous savons ?**

Recueillez des réponses honnêtes : pas de temps, peur de paraître sot, pas d'endroit évident, pas de reconnaissance. L'article de Wikipédia note que l'efficacité des incitations est contestée ; évitez donc les réponses faciles. Demandez quel obstacle l'équipe pourrait changer et lequel demande la direction. Engagez-vous sur un changement visible.

## En pratique : un exemple d'ITIL agile

L'équipe d'information aux voyageurs d'un chemin de fer national, quatorze personnes, exploite les systèmes derrière les afficheurs de gare et l'application d'horaires. L'ingénieur le plus expérimenté, qui a construit le contrôleur d'affichage, annonce son départ à la retraite dans six mois. Personne d'autre ne comprend comment le contrôleur traite les défaillances, et la documentation est un document de conception de 200 pages écrit il y a dix ans.

La responsable de l'équipe liste ce que l'ingénieur sait et que d'autres ne savent pas. Elle obtient trois groupes : comment rétablir le contrôleur après une défaillance (explicite et répétable), pourquoi certains comportements étranges existent (en partie écrit, en partie en mémoire) et comment juger quand un défaut est grave (tacite). Pour le premier, l'équipe rédige des guides d'exploitation avec l'ingénieur et teste chacun en faisant suivre le guide par un collègue sur une unité de test. Pour le deuxième, deux ingénieurs l'interrogent chaque semaine et rédigent de courtes notes de décision dans un dossier partagé, chacune avec un responsable. Pour le troisième, un ingénieur moins expérimenté l'observe lors de chaque incident d'astreinte pendant six mois, et prend la tête de certains pendant que lui regarde.

À la fin des six mois, trois ingénieurs savent traiter les défaillances du contrôleur, le document de 200 pages est remplacé par onze courts guides d'exploitation et vingt notes de décision, et l'équipe tient une séance mensuelle où une personne explique quelque chose qu'elle sait. Des problèmes subsistent. Deux guides d'exploitation ont échoué lors d'un test sur une autre version matérielle et ont dû être réécrits, et le jugement tacite n'est transféré qu'en partie : l'ingénieur qui observait dit que certains choix ressemblent encore à des devinettes. L'équipe prévoit un deuxième tour d'observation avec le successeur de l'ingénieur qui part et convient de revoir les guides chaque trimestre.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison détiennent une grande part de la connaissance de la façon dont les services sont construits. Rédigez de courts guides d'exploitation et notes de décision dans le cadre de votre définition de terminé, et testez-les avec les personnes qui les utiliseront. Partagez les raisons de conception avec l'exploitation pour que les changements ne les défassent pas.

### Équipes de service et d'exploitation

Les équipes d'exploitation produisent et utilisent une grande part de la connaissance quotidienne. Capturez les solutions en fermant les tickets, tenez les erreurs connues à jour et demandez aux équipes de livraison ce dont vous avez besoin. Rendez les articles faciles à trouver pour le centre et pour le libre-service.

### Direction et gouvernance

Les dirigeants déterminent si le partage est récompensé ou découragé. L'article de Wikipédia dit que les incitations sont contestées ; concentrez-vous donc sur la levée des obstacles : donnez du temps, rendez les outils faciles et récompensez les personnes qui aident les autres. Suivez le risque de connaissance, comme les points uniques d'expertise, comme vous suivez les autres risques du service.

### Clients et utilisateurs

Les clients et utilisateurs profitent de réponses claires et d'articles en libre-service. Dites à l'équipe quand un article est faux ou manquant. Demandez aux fournisseurs comment ils tirent des leçons des incidents et comment ils partagent avec vous ce qu'ils apprennent.

## Modes d'échec courants

- **Tout documenter.** La base devient grosse et périmée. À la place, commencez par la connaissance dont l'absence a fait mal et ajoutez selon le besoin.
- **Écrire séparément du travail.** La capture est une corvée après coup. À la place, faites d'une courte note une partie de la clôture du travail.
- **Pas de responsables.** Personne ne met à jour les articles. À la place, nommez un responsable et une date de revue pour chacun.
- **Mauvaise recherche.** Les gens ne trouvent pas ce qui existe et écrivent des doublons. À la place, testez la recherche avec de vraies requêtes et renvoyez aux articles depuis les lieux de travail.
- **Ignorer le tacite.** On suppose que tout peut s'écrire. À la place, planifiez binôme, observation et communautés de pratique.
- **Des guides d'exploitation non testés.** Les étapes échouent au moment voulu. À la place, faites suivre chaque guide par un utilisateur sur un cas de test.
- **Thésauriser comme statut.** Les gens protègent la connaissance pour protéger leur position. À la place, reconnaissez le partage et répartissez la dépendance.
- **Imposer du contenu.** Les objectifs de quantité produisent des articles minces. À la place, concentrez-vous sur l'usage et la qualité, et rappelez-vous que l'effet des incitations est contesté.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Capturer la connaissance | La connaissance vit dans les têtes et la messagerie | Certaines équipes tiennent des notes et des guides d'exploitation | Capturer une note fait partie de la clôture du travail | Les taux de capture et l'utilité sont revus | La capture de connaissance est partagée entre équipes et fournisseurs |
| Qualité et responsabilité | Pas de responsables ; le contenu se dégrade | Certains articles ont des responsables | Chaque article a un responsable et une date de revue | L'exactitude et l'usage sont mesurés ; le contenu périmé est retiré | Les pratiques de qualité sont partagées et améliorées dans toute l'organisation |
| Découvrabilité et usage | La recherche est mauvaise ; les gens se demandent entre eux | Certains contenus sont reliés depuis les tickets | La connaissance est reliée depuis les tickets, le catalogue et les guides d'exploitation | L'usage et les échecs de recherche sont mesurés et corrigés | La connaissance est accessible aux utilisateurs, fournisseurs et partenaires selon le cas |
| Partager le tacite | Le partage se fait par hasard | Un peu de binôme et d'observation a lieu | Binôme, observation et communautés de pratique sont planifiés | Le risque de connaissance est suivi et réduit | Communautés et rotation font circuler routinièrement la connaissance entre équipes |

## Liste de contrôle

- [ ] Nous avons listé la connaissance dont l'absence nous a fait mal, et commencé par là.
- [ ] La clôture d'un incident, d'une demande ou d'un changement inclut une courte note quand quelque chose était nouveau.
- [ ] Les articles suivent une courte structure commune avec un responsable et une date de revue.
- [ ] Les guides d'exploitation ont été testés par quelqu'un qui ne les a pas écrits.
- [ ] La recherche fonctionne pour de vraies requêtes, et les articles sont reliés depuis les tickets et le catalogue de services.
- [ ] Les articles inutilisés et en double sont retirés.
- [ ] Nous avons un plan pour répartir la connaissance détenue par une seule personne.
- [ ] Le binôme ou l'observation est planifié pour le travail qui fait appel au jugement.
- [ ] Les leçons des incidents sont partagées au-delà de l'équipe.
- [ ] Nous revoyons le risque de connaissance au moins chaque trimestre.

## Prompts d'IA

**Objectif : transformer un ticket résolu en brouillon d'article de connaissance.**

```text
Transformez ce ticket résolu en brouillon d'article de connaissance pour les analystes du centre de services.

Le ticket (symptôme, étapes suivies, résolution ; retirez les données personnelles) : [collez].

Rédigez un court article avec : un symptôme en une ligne, la cause probable (marquez « présumée » si le ticket ne la donne pas), des étapes numérotées de vérification et de correction, quand escalader et vers qui (utilisez [RÔLE] si inconnu) et un emplacement pour le responsable et la date de revue. N'utilisez que ce que dit le ticket. Marquez d'un [À VÉRIFIER] toute étape que vous avez déduite. Posez d'abord des questions de clarification s'il manque des informations et listez ce dont vous n'êtes pas sûr.
```

**Objectif : trouver le risque de connaissance dans votre équipe.**

```text
Voici une liste des systèmes et tâches que traite notre équipe et de qui peut faire chacun : [collez sous forme de tableau, une ligne par système ou tâche, avec les noms ou rôles des personnes qui peuvent le faire].

En n'utilisant que cette liste, identifiez ceux que seule une personne peut faire et ceux qui en ont deux. Classez-les selon la criticité de la tâche, si je l'ai marquée, sinon laissez sans classement. Pour chaque élément à une seule personne, suggérez un moyen peu coûteux de répartir la connaissance (par exemple le binôme ou un guide d'exploitation testé). N'inventez ni tâches ni personnes. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : relire un guide d'exploitation pour sa clarté avant de le tester.**

```text
Voici un guide d'exploitation : [collez].

Jouez le rôle d'un ingénieur d'astreinte fatigué qui n'a jamais vu ce système. Listez chaque endroit où vous ne sauriez pas quoi faire, chaque terme ou outil non expliqué et chaque étape qui suppose une connaissance. Suggérez une formulation plus claire pour chacun. N'ajoutez pas d'étapes techniques absentes du guide ; marquez les questions à l'auteur par [DEMANDER À L'AUTEUR]. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier le transfert de connaissance pour quelqu'un qui part.**

```text
Aidez-moi à planifier un transfert de connaissance pour [rôle] qui part dans [délai].

Ce que cette personne possède ou fait et que d'autres ne font pas : [listez].
Où cela est écrit aujourd'hui : [listez, ou écrivez « nulle part »].
Qui prendra le relais, et son expérience actuelle : [décrivez].

Triez les éléments en : tâches répétables à transformer en guides d'exploitation testés, raisons et décisions à consigner en courtes notes, et jugement à partager par l'observation ou le binôme. Proposez un plan semaine par semaine, avec le test de chaque guide par le successeur. N'inventez pas d'éléments. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour rédiger des procédures pas à pas que quelqu'un d'autre peut suivre sous pression.
- [postmortem](../../../../skills/postmortem/SKILL.md) : à utiliser pour consigner les leçons des incidents sous une forme que d'autres peuvent lire.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md) : à utiliser pour consigner pourquoi une décision de conception a été prise.
- [decision-records](../../../../skills/decision-records/SKILL.md) : à utiliser pour tenir un court registre des décisions importantes non architecturales.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md) : à utiliser pour trouver les lacunes de compétences que le partage de connaissance devrait traiter.

## Sources principales

- **Knowledge management** (Wikipedia) : un large aperçu de l'histoire, des modèles, des approches et des critiques du domaine.
- **Postmortem Culture : Learning from Failure** (*Site Reliability Engineering*, Google, sre.google) : comment une organisation partage les leçons des incidents.
- **Tacit knowledge** (Wikipedia) : contexte sur la connaissance difficile à mettre par écrit.
- **Community of practice** (Wikipedia) : contexte sur les groupes inter-équipes qui partagent la connaissance.

## Références

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture : Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
