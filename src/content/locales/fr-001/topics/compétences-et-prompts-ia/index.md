# Compétences et prompts IA

**Un bon prompt donne à un assistant d'IA le matériel, la tâche et les vérifications dont il a besoin, et une bonne compétence regroupe ce savoir-faire pour qu'une équipe puisse le réutiliser ; les prompts et compétences d'IA de ce guide sont donc des points de départ que vous adaptez et vérifiez.**

## Pourquoi c'est important

Chaque sujet de ce guide se termine par des prompts et des compétences. Ils existent parce que beaucoup de tâches de la gestion des services conviennent bien à un assistant capable de lire un tas de tickets, de rédiger un manuel d'exploitation ou de transformer des notes en plan. Ils existent aussi parce qu'une demande vague à une IA produit des résultats vagues, parfois faux. La différence entre une réponse utile et une réponse plausible mais vide tient souvent à la manière dont la demande a été écrite et au matériel qui l'accompagnait.

Ce sujet explique comment utiliser les prompts et compétences du guide, pourquoi ils sont écrits ainsi et comment écrire les vôtres pour votre équipe. Il porte sur des habitudes plus que sur des trucs : fournir du matériel réel, dire ce que vous voulez, demander à l'assistant de marquer ce qu'il ignore et vérifier ce qui revient. Il s'appuie sur les mises en garde du sujet précédent, qui décrit où l'IA aide et où elle peut nuire (voir Sujet 6.2 — IA dans la gestion des services informatiques).

Les sources sont pratiques. La compétence `skills/prompt-engineering` de ce guide décrit l'écriture de prompts comme la pratique délibérée de concevoir et d'itérer les instructions données à un modèle de langage, en traitant un prompt comme un petit morceau de logiciel qu'on écrit, teste sur des cas réels et révise. La documentation de Claude Code décrit comment les compétences sont structurées en répertoires avec un fichier `SKILL.md`. L'[article de Wikipédia sur les grands modèles de langage](https://en.wikipedia.org/wiki/Large_language_model) donne le contexte. Aucune source lue pour ce guide n'offre de preuves sur les techniques de prompt qui fonctionnent le mieux ; traitez donc les techniques ici comme des habitudes à tester.

## Concepts clés

### Prompts, compétences et à quoi ils servent

Un **prompt** est l'instruction et le matériel que vous donnez à un assistant d'IA pour une tâche. Une **compétence**, dans le format utilisé dans le dossier `skills/` de ce guide, est un paquet réutilisable de savoir-faire pour un type de tâche : un répertoire contenant un fichier `SKILL.md` qui dit quand l'utiliser et comment faire le travail. Dans la documentation de Claude Code, une compétence est un répertoire avec un fichier `SKILL.md` obligatoire dont l'en-tête (frontmatter) a un nom et une description, et dont le corps donne les instructions ; l'assistant utilise la description pour décider quand appliquer la compétence, et ne charge le corps entier que lorsqu'elle est utilisée.

| | Prompt | Compétence |
|---|---|---|
| **Portée** | Une tâche, maintenant | Un type de tâche, réutilisé |
| **Où elle vit** | Dans une conversation ou un document | Dans un dossier, comme `skills/` ou le répertoire de compétences d'un projet |
| **Modifiée par** | Vous, à chaque fois | L'équipe, avec relecture |
| **Idéale pour** | L'analyse précise de votre propre matériel | Des méthodes répétables comme mener une rétrospective |

### Comment les prompts du guide sont construits

Les prompts de ce guide suivent un schéma simple, exposé dans le guide de style :

1. **Un objectif d'une ligne en gras** dit à quoi sert le prompt.
2. **Un bloc délimité** contient du texte que vous pouvez copier-coller.
3. **Des marqueurs entre crochets** signalent ce que vous devez fournir, avec une indication de ce qu'il faut y mettre.
4. **Une tâche** qui nomme le résultat voulu.
5. **Des limites** : n'inventez pas de chiffres, de sources, de citations ni d'affirmations de conformité ; n'utilisez que le matériel collé.
6. **Une demande de poser d'abord des questions** quand des informations manquent, et de marquer les hypothèses.
7. **Une vérification finale** : « Listez ce dont vous n'êtes pas sûr. »

Ces parties existent pour des raisons. Les marqueurs vous forcent à apporter du matériel réel. La limite empêche l'assistant de combler les trous par l'invention. La demande de questions de clarification transforme une devinette en un court échange. La dernière ligne fait signaler à l'assistant ses propres points faibles, ce qui vous aide à décider quoi vérifier.

### Schémas utiles

La compétence `prompt-engineering` du guide liste des techniques, que ce guide résume dans ses propres mots :

- **Soyez précis sur le résultat voulu,** comme un tableau aux colonnes nommées, ou une liste numérotée de cinq éléments au plus, pour que l'assistant ne devine pas la forme.
- **Donnez des exemples quand les instructions sont ambiguës,** en montrant le schéma voulu dans un court échantillon.
- **Fournissez le contexte que l'assistant ne peut pas connaître,** comme votre terminologie, vos contraintes et le document en question, et dites ce qu'il ne doit pas supposer.
- **Itérez sur de vrais cas de test,** en exécutant le prompt sur un éventail d'entrées réelles et en révisant là où il échoue, au lieu de le juger sur un seul bon exemple.

Un prompt réglé sur une entrée peut échouer sur d'autres. La compétence souligne qu'une entrée courte, formulée de façon étrange ou à laquelle il manque un champ peut casser un prompt qui traitait bien l'exemple d'origine.

### Habitudes de vérification

Chaque résultat doit être vérifié en proportion du coût d'une erreur. Habitudes utiles :

- **Vérifiez les faits par rapport à la source que vous avez collée.** Demandez à l'assistant de citer la partie de votre matériel qui appuie chaque énoncé.
- **N'acceptez jamais des références que vous n'avez pas vues.** Les cas décrits dans le sujet précédent incluent des citations judiciaires inventées ; ne les répétez pas.
- **Séparez ce que l'assistant a vu de ce qu'il a supposé.** Les prompts du guide le demandent.
- **Testez vous-même les calculs,** ou demandez le détail et vérifiez-le.
- **Faites un second examen pour tout ce qui sort de l'équipe,** comme une réponse à un client ou une politique.
- **Gardez des enregistrements des usages importants,** comme décrit au Sujet 6.2 — IA dans la gestion des services informatiques.

### Protéger les données

Avant de coller quoi que ce soit dans un prompt, demandez ce que cela contient et où cela ira. Retirez les données personnelles, les identifiants et les détails commerciaux confidentiels, sauf si l'outil et ses conditions ont été approuvés pour eux (voir Sujet 3.13 — Gestion de la sécurité des informations). Les prompts du guide vous demandent d'anonymiser, mais la responsabilité est la vôtre. Dans le doute, décrivez la situation en termes généraux.

### À quoi ressemble une compétence

D'après la documentation de Claude Code et les compétences de ce guide, une compétence est un répertoire comme `skills/runbook/` contenant `SKILL.md`. Le fichier commence par un en-tête YAML entre marqueurs `---`, contenant au moins un `name` et une `description`. La documentation dit que la description indique à l'assistant ce que fait la compétence et quand l'utiliser, et recommande de mettre d'abord le cas d'usage principal. Le corps donne la méthode en markdown. D'autres fichiers, comme des documents de référence ou des scripts, peuvent se trouver à côté et être chargés au besoin ; la documentation conseille de garder `SKILL.md` lui-même court, sous 500 lignes.

Les compétences copiées dans ce guide suivent la même forme. Leurs descriptions commencent par « Use when asked to… », ce qui rend clair quand chacune s'applique.

### Où vivent les compétences

La documentation décrit les compétences personnelles dans le répertoire de compétences du dossier personnel d'un utilisateur, les compétences de projet dans le répertoire de compétences d'un dépôt qui peut être validé et partagé avec une équipe, et d'autres emplacements comme les extensions. Pour une équipe, un dossier de projet sous contrôle de version est l'endroit naturel : les compétences sont relues, modifiées par le même processus que le reste du travail et disponibles pour tous.

### Écrire vos propres compétences d'équipe

Une compétence d'équipe capture une pratique que l'équipe répète et veut voir exécutée de manière cohérente. Exemples pour la gestion des services : comment rédiger une analyse post-incident dans votre style maison, comment trier un certain type de ticket, comment préparer une demande de changement, comment mener votre revue du vendredi. Pour en écrire une :

1. **Choisissez une tâche que vous répétez** et dont il existe une bonne manière connue.
2. **Écrivez d'abord la description,** en commençant par « Use when… » et le cas d'usage principal, pour que l'assistant et vos collègues sachent quand elle s'applique.
3. **Écrivez la méthode** en courtes étapes, avec le format du résultat, les vérifications et les choses à éviter.
4. **Ajoutez des exemples** d'un bon résultat, détails sensibles retirés.
5. **Dites ce qu'elle ne doit pas faire,** comme inventer des chiffres ou envoyer quoi que ce soit sans relecture.
6. **Testez-la sur des cas réels** et révisez.
7. **Donnez-lui un responsable et une date de revue,** comme à tout autre document partagé.

### Les compétences de ce guide

Le dossier `skills/` de ce dépôt contient des copies de compétences de la collection skills-on-ai, listées dans `skills/README.md`, et deux compétences écrites pour ce guide : une pour les lecteurs et une pour les mainteneurs. Chaque sujet renvoie aux compétences les plus utiles pour son thème, avec une phrase sur le moment de les utiliser. Les compétences copiées sont génériques, non propres au contenu de ce guide ; utilisez-les donc comme points de départ et adaptez leurs résultats à votre contexte.

### Limites

Aucune source lue pour ce guide ne mesure l'efficacité d'une technique de prompt, et les outils d'IA changent vite. La documentation de Claude Code lue était longue et n'a été lue qu'en partie. Ce qui suit est un conseil pratique qui a tenu à l'usage général, offert comme des habitudes à tester et non comme des garanties.

## Bonnes pratiques

1. **Partez d'une tâche réelle et de matériel réel.** Choisissez quelque chose que vous avez besoin de faire, et collez les faits réels, non une description de ceux-ci. Remplissez chaque marqueur avec des précisions.
2. **Énoncez le but en une ligne.** Dites à quoi sert le résultat et qui s'en servira. Cela aide l'assistant à choisir le bon niveau de détail.
3. **Précisez le résultat.** Nommez le format, la longueur et la structure voulus. Demandez un tableau pour comparer, une liste pour des étapes.
4. **Fixez des limites.** Dites ce que l'assistant ne doit pas faire : inventer des chiffres, des sources ou des citations ; supposer des faits non donnés ; affirmer qu'une règle s'applique sans le texte.
5. **Demandez d'abord des questions de clarification.** Dites à l'assistant de demander ce dont il a besoin avant de répondre. Répondez brièvement, puis demandez-lui de poursuivre.
6. **Demandez-lui de séparer faits et hypothèses.** Faites-lui marquer ce qu'il a pris de votre matériel et ce qu'il a supposé. Les prompts de ce guide se terminent par « Listez ce dont vous n'êtes pas sûr. »
7. **Demandez des preuves.** Demandez des citations de votre matériel qui appuient chaque affirmation, pour que vous puissiez vérifier rapidement.
8. **Itérez.** Traitez la première réponse comme un brouillon. Dites ce qui ne va pas et demandez une révision, ou changez le prompt et réessayez.
9. **Testez les prompts sur plusieurs cas.** Avant de vous fier à un prompt, exécutez-le sur trois ou quatre entrées réelles, dont une inhabituelle. Notez où il échoue.
10. **Protégez les données.** Retirez les détails personnels et confidentiels avant de coller. Utilisez des outils approuvés. Suivez la politique de votre organisation.
11. **Vérifiez avant d'utiliser.** Contrôlez faits, chiffres et références. Faites relire par une personne tout ce qui va aux clients ou modifie un système.
12. **Partagez ce qui marche.** Mettez les prompts qui s'avèrent utiles, avec leurs notes, dans une compétence d'équipe ou un document sous contrôle de version, avec un responsable.

## Questions à discuter avec votre équipe

**Quelles tâches répétons-nous qu'un assistant pourrait aider à faire, et que faudrait-il vérifier ?**

Demandez à chacun de lister des tâches et de marquer le risque si le résultat était faux. Regroupez-les en risque faible, moyen et élevé. Commencez par une tâche à faible risque. L'animateur peut demander quelle serait l'étape de vérification. Choisissez une tâche pour un essai.

**Que collons-nous dans les outils d'IA aujourd'hui, et devrions-nous le faire ?**

Soyez honnête et sans jugement. Listez des exemples. Comparez avec la politique de données et les outils approuvés. Convenez d'une vérification rapide que chacun peut appliquer avant de coller : « cela contient-il des données personnelles, des secrets ou des détails confidentiels ? »

**Lequel des prompts de ce guide essaierions-nous en premier, et avec quel matériel réel ?**

Parcourez ensemble les prompts et choisissez-en un. Identifiez le matériel réel à coller, retirez les détails sensibles et exécutez-le. Comparez les résultats et discutez de ce qu'il faut changer dans le prompt. C'est une manière rapide d'apprendre le schéma.

**Comment saurions-nous qu'un prompt fonctionne ?**

Demandez un jeu de test : quelques entrées réelles avec de bons résultats connus. Discutez de la manière de noter les réponses et de qui décide. Un prompt sans jeu de test est un espoir. Convenez d'un petit jeu pour un prompt.

**Quelle pratique répétons-nous qui mérite d'être une compétence d'équipe ?**

Listez des candidats : un format de revue, une routine de tri, un modèle de rapport. Choisissez-en un et rédigez ensemble la description et les étapes. Décidez qui en est responsable et quand elle sera revue.

**Que ne voudrions-nous jamais qu'une IA fasse seule ?**

Listez des actions : envoyer aux clients, modifier la production, approuver un accès, décider d'une priorité. Discutez du pourquoi. Les réponses sont les limites à écrire dans vos prompts et compétences. Convenez d'une courte liste.

## En pratique : un exemple d'ITIL agile

Le centre de services informatiques d'un hôpital régional compte quatorze analystes. La cheffe du centre a remarqué que ses collègues utilisent un assistant d'IA de façons différentes : l'un colle des tickets entiers, noms de patients compris, dans un agent conversationnel public ; un autre écrit des prompts élaborés et obtient des résumés utiles ; la plupart ne s'en servent pas du tout. Un article de connaissance récent, rédigé par un assistant, contenait une étape de procédure qui n'existait pas.

La cheffe du centre tient une séance d'une heure selon l'approche de ce guide. Elle commence par les données : le groupe convient d'une règle selon laquelle aucun détail de patient ni identifiant ne va dans aucun outil, et que l'assistant approuvé, que l'hôpital a obtenu sous licence avec des conditions adéquates, est le seul utilisé avec du texte de tickets. Elle choisit une tâche, rédiger un article de connaissance à partir d'un ticket résolu, et utilise le schéma des prompts de ce guide : un objectif d'une ligne, un marqueur pour le ticket anonymisé, des instructions de n'utiliser que le contenu du ticket, de marquer d'une étiquette toute étape déduite et de lister ce dont il n'est pas sûr. Deux analystes exécutent le prompt sur cinq anciens tickets, et le groupe lit ensemble les résultats. Le prompt invente une étape dans un cas ; ils ajoutent une ligne demandant une citation du ticket pour chaque étape.

La cheffe du centre écrit le prompt amélioré comme une compétence d'équipe dans le dossier partagé du centre, avec une description qui commence par « Use when… », un responsable et une date de revue, et ajoute une règle selon laquelle chaque article rédigé est vérifié par un second analyste avant publication. Au bout de deux mois, le nombre d'articles rédigés par semaine a doublé et les relecteurs trouvent moins d'erreurs qu'avant. Certains problèmes subsistent. Deux analystes collent encore des détails dans un outil public quand ils sont pressés, la compétence produit une formulation trop formelle que les analystes réécrivent, et un relecteur avoue survoler. La cheffe du centre répète la règle sur les données à chaque réunion d'équipe, ajoute un exemple de style à la compétence et demande aux relecteurs de cocher une courte liste de contrôle.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison utilisent des assistants pour le code, les tests et la documentation. Appliquez les mêmes habitudes : matériel réel, limites claires, vérification et relecture. Gardez les secrets hors des prompts, et rangez les prompts et compétences utiles avec le code.

### Équipes de service et d'exploitation

Les équipes d'exploitation peuvent utiliser des prompts pour analyser des tickets, rédiger des manuels d'exploitation et préparer des revues. Gardez les données personnelles à l'écart, vérifiez les résultats par rapport aux journaux et aux enregistrements, et écrivez des compétences pour les routines que l'équipe répète, comme les analyses post-incident et les relèves.

### Direction et gouvernance

Les dirigeants fixent les règles sur ce qui peut être utilisé, avec quelles données, et sur qui est responsable. Demandez un inventaire, une politique de données et des preuves issues de pilotes. Soutenez le temps nécessaire aux équipes pour écrire et tester prompts et compétences, et veillez à ce que les compétences partagées aient des responsables.

### Clients et utilisateurs

Les clients et utilisateurs peuvent voir les résultats des prompts et compétences dans les réponses, articles et résumés. Attendez-vous à ce que les fournisseurs les vérifient et vous disent quand ils utilisent des outils automatisés là où cela compte. Signalez les erreurs, qui aident à améliorer le matériel sous-jacent.

## Modes d'échec courants

- **Demandes vagues.** L'assistant devine. À la place, fournissez le matériel, le but et le résultat voulu.
- **Coller des données sensibles.** Des détails personnels ou confidentiels quittent l'organisation. À la place, retirez-les et utilisez des outils approuvés.
- **Accepter du contenu inventé.** Des étapes, chiffres ou références fabriqués sont utilisés. À la place, fixez des limites, demandez des citations et vérifiez.
- **Réglage sur un seul exemple.** Un prompt marche une fois et échoue ailleurs. À la place, testez sur plusieurs entrées réelles.
- **Des compétences sans responsables.** Les prompts partagés deviennent périmés. À la place, attribuez un responsable et une date de revue, et gardez-les sous contrôle de version.
- **Excès de confiance envers les prompts copiés.** Un prompt d'Internet ou de ce guide est utilisé tel quel. À la place, adaptez-le à votre contexte et vérifiez les résultats.
- **Pas de second examen.** Le résultat de l'IA va directement aux clients. À la place, faites relire par une personne tout ce qui sort de l'équipe.
- **Traiter l'assistant comme une autorité.** Son assurance est prise pour de l'exactitude. À la place, demandez ce dont il n'est pas sûr et vérifiez.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Pratique du prompt | Les gens écrivent des prompts ponctuels | Certains partagent des prompts | Les équipes utilisent un schéma commun avec but, matériel, limites et vérifications | La qualité des prompts est testée sur des jeux de cas réels | Les prompts sont améliorés entre équipes à partir de résultats de tests partagés |
| Compétences | Aucune compétence partagée | Quelques compétences personnelles existent | Des compétences d'équipe avec responsables et dates de revue vivent sous contrôle de version | L'usage et les résultats des compétences sont revus | Les compétences sont partagées et maintenues entre équipes et partenaires |
| Vérification et données | Le résultat est cru ; les données sont collées librement | Quelques vérifications et règles de données | Habitudes de vérification et politique de données sont routinières | Erreurs et incidents de données sont suivis et traités | Vérification et pratique des données sont coordonnées dans l'organisation |
| Apprentissage | L'apprentissage est individuel | Quelques astuces sont partagées | Les équipes tiennent des séances régulières pour améliorer prompts et compétences | Les améliorations sont suivies et mesurées | L'apprentissage se répand continuellement entre équipes |

## Liste de contrôle

- [ ] L'équipe a une courte règle sur les données qui peuvent aller dans quels outils d'IA.
- [ ] Les prompts sur lesquels nous comptons ont un but énoncé, du matériel réel, des limites et une demande de ce dont l'assistant n'est pas sûr.
- [ ] Chaque prompt sur lequel nous comptons a été testé sur au moins trois entrées réelles.
- [ ] Le résultat qui sort de l'équipe est relu par une personne.
- [ ] Références et chiffres issus de l'IA sont vérifiés par rapport aux sources.
- [ ] Les prompts utiles sont sauvegardés avec des notes dans un endroit partagé sous contrôle de version.
- [ ] Les compétences d'équipe ont une description claire « Use when… », un responsable et une date de revue.
- [ ] L'équipe a listé les actions que l'IA ne doit jamais accomplir seule.
- [ ] Le personnel sait quels outils sont approuvés.
- [ ] Nous revoyons nos prompts et compétences au moins deux fois par an.

## Prompts d'IA

**Objectif : améliorer un prompt que vous utilisez déjà.**

```text
Voici un prompt que j'utilise : [collez-le].
Voici un exemple d'entrée que je lui donne, détails sensibles retirés : [collez].
Voici ce que j'ai obtenu : [collez].
Voici ce que je voulais : [décrivez].

Diagnostiquez pourquoi le résultat est insuffisant, en n'utilisant que le texte ci-dessus. Suggérez un prompt révisé qui : énonce le but, nomme le format du résultat, fixe des limites (pas de faits, chiffres ou sources inventés), demande d'abord des questions de clarification, demande des citations du matériel fourni comme preuve et se termine en vous demandant de lister ce dont vous n'êtes pas sûr. Gardez les marqueurs entre [crochets]. Ne changez pas la tâche. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : transformer une tâche répétée en projet de compétence d'équipe.**

```text
Aidez-moi à rédiger une compétence d'équipe au format SKILL.md pour cette tâche : [nommez et décrivez la tâche].

Comment nous la faisons aujourd'hui, étape par étape : [collez].
À quoi ressemble un bon résultat (un exemple, détails sensibles retirés) : [collez].
Ce qui ne doit jamais arriver (par exemple inventer des chiffres ou envoyer sans relecture) : [listez].

Écrivez un SKILL.md avec un en-tête YAML contenant un name et une description qui commence par « Use when » et met d'abord le cas d'usage principal, puis un corps avec le but, de courtes étapes de méthode, le format du résultat, les vérifications et les choses à éviter. Gardez-le sous 150 lignes. Marquez chaque élément que vous avez ajouté comme une hypothèse. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : construire un petit jeu de test pour un prompt.**

```text
J'ai un prompt qui [décrivez ce qu'il fait] : [collez-le].

Aidez-moi à concevoir un jeu de test de 5 à 10 entrées : des cas typiques, un cas inhabituel, un cas avec un champ manquant et un cas où la bonne réponse est « informations insuffisantes ». Dites-moi quoi recueillir parmi de vrais exemples (détails sensibles retirés), comment consigner le résultat attendu et comment noter les résultats (correct, en partie correct, faux, faux avec assurance, refusé à bon escient). N'inventez pas de contenu de test ; donnez-moi les catégories et ce qu'il faut regarder. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : vérifier un brouillon écrit par l'IA par rapport à sa source.**

```text
Voici le matériel source : [collez].
Voici un brouillon produit par un outil d'IA à partir de ce matériel : [collez].

Listez chaque énoncé du brouillon, dites si la source l'appuie (citez le texte à l'appui), le contredit ou ne le mentionne pas, et suggérez des modifications pour retirer les énoncés sans appui. N'ajoutez pas de faits de votre cru. Donnez un court résumé de la fiabilité du brouillon. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md) : à utiliser pour écrire, tester et améliorer des prompts afin qu'ils donnent des résultats fiables.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md) : à utiliser pour documenter à quoi sert un modèle et quelles sont ses limites quand votre équipe s'y fie.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md) : à utiliser pour aider une équipe à bâtir des habitudes autour des prompts et compétences dans la durée.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md) : à utiliser pour trouver des sujets de ce guide, mener une conversation d'équipe à partir de ses questions ou adapter l'un de ses prompts.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md) : à utiliser pour écrire ou vérifier un sujet, un prompt ou un lien de compétence de ce guide.

## Sources principales

- **Claude Code skills documentation** (code.claude.com) : la description de la façon dont les compétences sont structurées en répertoires avec un fichier `SKILL.md`.
- **Prompt engineering** (la compétence `skills/prompt-engineering/SKILL.md` de ce guide) : un court énoncé de techniques et l'argument pour tester les prompts sur des entrées réelles.
- **Large language model** (Wikipedia) : contexte sur la construction de ces systèmes et sur leurs points d'échec.
- **AI Risk Management Framework** (NIST) : le cadre volontaire de gestion des risques de l'IA, utile pour la politique d'équipe.

## Références

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
