# Gestion des mises en production et des déploiements

**La gestion des mises en production et des déploiements amène les changements en production en toute sécurité, et le but dans un cadre agile est de rendre la mise en production si courante, automatisée et réversible qu'elle cesse d'être un événement.**

## Pourquoi c'est important

Beaucoup d'organisations traitent encore une mise en production comme une grande occasion tendue. Une date est fixée, une fenêtre est réservée, les gens restent tard et le succès se mesure à ce que rien n'a cassé. Ce schéma produit exactement le risque qu'il redoute : plus on regroupe de changements dans une version, plus il est difficile de comprendre ce qui a mal tourné et plus un retour arrière est pénible.

Le programme de recherche DORA décrit l'alternative. Sa page sur la livraison continue définit la pratique comme « la capacité de publier des changements de toute nature à la demande, rapidement, en sécurité et durablement », et rapporte que bien la pratiquer améliore la performance de livraison et la disponibilité, et est associé à moins d'épuisement et à plus de satisfaction au travail. Sa page avertit aussi que déployer plus souvent sans changer les processus et l'architecture tend à faire monter les taux d'échec et à épuiser les équipes. La leçon n'est pas « livrez plus vite » mais « construisez la capacité de livrer en sécurité, puis livrez souvent ».

Le livre *Site Reliability Engineering* de Google, dans son chapitre sur l'ingénierie des mises en production, fait valoir un point semblable à partir de la pratique : des mises en production fréquentes signifient moins de changements entre versions, donc des tests et un dépannage plus faciles. Ce sujet s'appuie sur ces deux sources, sur les autres sujets de ce guide liés au changement et sur un vocabulaire ITIL largement employé que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre. Traitez les sources comme solides, précises et limitées aux contextes qu'elles décrivent.

## Concepts clés

### Mise en production et déploiement

Les deux termes sont souvent confondus. Une distinction courante, largement utilisée en gestion des services, est :

- Une **mise en production** (release) est une version d'un service ou d'un composant rendue disponible à l'usage. C'est une décision sur ce que les utilisateurs recevront.
- Un **déploiement** est l'acte de transférer une version dans un environnement, comme la production.

Les séparer est puissant. Vous pouvez déployer du code en production sans l'activer pour les utilisateurs, et le mettre en service plus tard de manière contrôlée. Des techniques comme les interrupteurs de fonctionnalités reposent sur cette séparation (voir l'article de Wikipédia sur les feature toggles).

### Livraison continue et déploiement continu

La page de DORA définit la **livraison continue** comme la capacité de publier des changements de toute nature à la demande, rapidement, en sécurité et durablement. Elle la distingue du **déploiement continu**, qui consiste à déployer chaque changement en production dès que possible. DORA dit que les équipes « peuvent et devraient commencer par la livraison continue » même si elles n'adoptent jamais le déploiement continu. La décision de publier reste une décision métier ; la livraison continue en fait un choix plutôt qu'un projet.

### Ce que recommande la recherche

La page de DORA liste des pratiques qui soutiennent la livraison continue :

| Pratique | Ce que dit DORA |
|---|---|
| **Automatisation des tests** | Des suites de tests automatisés complètes et fiables, créées et entretenues surtout par les développeurs |
| **Automatisation du déploiement** | Des déploiements entièrement automatisés, sans intervention manuelle |
| **Développement basé sur le tronc** | Moins de trois branches actives, des branches de très courte durée, des périodes de verrouillage du code rares |
| **Équipes et architecture faiblement couplées** | Les équipes peuvent tester et déployer à la demande sans orchestration avec d'autres services |
| **Autres pratiques** | Intégration continue, tests continus, contrôle de version pour tous les artefacts de production, gestion des données de test, surveillance et observabilité, notifications proactives, gestion des changements de base de données, sécurité omniprésente |

La page rapporte que la livraison continue est associée à une meilleure qualité (moins de temps passé en reprises ou en travail non planifié), moins d'épuisement et moins de douleur de déploiement. Elle dit aussi que les équipes d'élite qui atteignaient leurs objectifs de fiabilité dans le rapport 2021 avaient trois fois plus de chances d'avoir une architecture faiblement couplée que les équipes peu performantes. Elle n'indique ni outils, ni fréquences cibles de déploiement, ni calendrier de mise en œuvre, et note que les transformations suivent couramment une « courbe en J », avec une baisse d'efficacité à mesure que l'automatisation augmente les exigences de test et que la dette technique s'accumule.

### Leçons de la pratique de l'ingénierie des mises en production

Le chapitre du livre SRE sur l'ingénierie des mises en production décrit l'approche d'une grande organisation :

- **Libre-service.** Les équipes mènent leurs propres processus de mise en production. Les mises en production sont « vraiment automatiques » et ne nécessitent l'intervention d'un ingénieur qu'en cas de problème.
- **Haute vélocité.** Des mises en production fréquentes signifient moins de changements entre versions, ce qui facilite les tests et le dépannage.
- **Constructions hermétiques.** Les constructions dépendent de versions connues d'outils et de bibliothèques, si bien que la même révision donne des résultats identiques.
- **Politiques appliquées.** Des contrôles d'accès encadrent les approbations, la création de versions et le déploiement. Presque tous les changements exigent une revue de code, et chaque version produit un rapport des changements inclus.

Le chapitre insiste aussi sur la configuration sous contrôle de source et revue de code, et suggère que développeurs, ingénieurs de fiabilité des sites et ingénieurs de mise en production collaborent plutôt que de se renvoyer les résultats « par-dessus la clôture ». Il dit que les organisations devraient définir des politiques de mise en production même quand elles ne peuvent pas encore les automatiser ou les appliquer, et qu'il coûte moins cher d'instaurer tôt de bonnes pratiques que de les rajouter après coup. Le chapitre décrit les propres outils de Google ; votre environnement en utilisera d'autres, tirez-en donc les principes et non les produits.

### Environnements et promotion

Une version passe généralement par une série d'environnements, comme développement, test et production. Chaque étape fournit des preuves. Une pratique courante, conforme à la recherche ci-dessus, est de construire une fois et de promouvoir le même artefact, pour que ce qui a été testé soit ce qui est déployé. L'insistance du chapitre SRE sur des constructions identiques à partir de la même révision exprime la même idée.

### Déploiement progressif et retour arrière

La manière dont une version atteint les utilisateurs peut être graduée. Le chapitre SRE décrit des déploiements rythmés selon le risque, de poussées automatiques horaires en développement à des déploiements de plusieurs jours pour l'infrastructure sensible, et mentionne les versions canari, où une petite part du trafic reçoit d'abord la nouvelle version. Le retour arrière consiste à revenir à la version précédente, et il doit être aussi pratiqué que le déploiement. Les équipes qui peuvent revenir rapidement en arrière peuvent se permettre de déployer souvent (voir Sujet 3.4 — Habilitation des changements).

### L'information de mise en production pour le support

Le personnel de support et les utilisateurs doivent savoir ce qui change et que faire en cas de problème. Une note de version, une liste des problèmes connus et un contact désigné sont le minimum (voir Sujet 3.1 — Centre de services). Le rapport de version du chapitre SRE, qui liste les changements inclus, sert de source.

### Mesures

La page de DORA suggère de mesurer des délais courts pour les changements ordinaires et d'urgence, de faibles taux d'échec des changements, un court temps de rétablissement du service et des fréquences de mise en production qui livrent les priorités à temps. Son but général est que personne ne travaille en dehors des heures ouvrables pour déployer. Pour les définitions et les mises en garde sur ces mesures, voir Sujet 3.4 — Habilitation des changements et Sujet 5.6 — Indicateurs et mesure.

## Bonnes pratiques

1. **Séparez le déploiement de la mise en production.** Déployez le code en production à l'état dormant et activez-le pour les utilisateurs quand il est prêt, avec des interrupteurs de fonctionnalités ou des déploiements progressifs. Cela réduit le risque d'un déploiement et donne le contrôle au métier.
2. **Automatisez le déploiement.** Visez l'absence d'étapes manuelles. Les étapes manuelles sont lentes, varient selon les personnes et causent des incidents. Automatisez par petits incréments, en commençant par les étapes qui tournent le plus mal.
3. **Construisez une fois, promouvez l'artefact.** Produisez un seul paquet et déplacez-le dans les environnements, pour que ce que vous avez testé soit ce que vous exécutez. Consignez quelle version est où.
4. **Rendez les constructions reproductibles.** Fixez les versions d'outils et de bibliothèques pour que la même révision donne le même résultat. Cela suit le principe de constructions hermétiques du chapitre SRE.
5. **Gardez les branches de courte durée.** Les conseils de DORA sur le développement basé sur le tronc sont moins de trois branches actives et des branches fusionnées en environ un jour. Les longues branches transforment les mises en production en événements de fusion.
6. **Testez automatiquement, et gardez les tests rapides et fiables.** Visez un retour en quelques minutes. Une suite de tests instable ou lente pousse les gens à la contourner.
7. **Livrez par petits lots.** Les petites versions sont plus faciles à relire, à tester et à annuler. Si une version est grosse, demandez comment la découper.
8. **Déployez par étapes.** Commencez par une petite part des utilisateurs ou des serveurs, observez les signaux et étendez. Définissez à l'avance ce que vous surveillerez et qui peut arrêter le déploiement.
9. **Répétez le retour arrière.** Sachez comment revenir à la dernière bonne version et entraînez-vous. Un retour arrière jamais essayé est un espoir.
10. **Donnez au support ce dont il a besoin avant la mise en production.** Fournissez notes de version, problèmes connus et un contact. Incluez le personnel de support dans la validation des changements qui touchent les utilisateurs (voir Sujet 3.1 — Centre de services).
11. **Gardez la configuration sous contrôle de version.** Traitez les changements de configuration comme du code, avec revue et trace. Choisissez où vit chaque type de paramètre et pourquoi.
12. **Visez le déploiement pendant les heures ouvrables.** DORA le nomme comme but général. Si les déploiements exigent des nuits tardives, le processus ou l'architecture demande du travail.

## Questions à discuter avec votre équipe

**Combien de temps faut-il, et combien d'étapes cela implique-t-il, pour mettre en production un changement terminé ?**

Retracez un changement récent de « prêt » à « en ligne ». Listez chaque étape, qui la fait et combien de temps elle attend. Distinguez les étapes manuelles des automatisées. Les équipes sont souvent surprises du nombre d'étapes manuelles et de l'attente entre elles. L'animateur peut demander quelle étape a causé le plus d'incidents. Choisissez-en une à automatiser.

**Que faudrait-il pour que nous publiions en heures ouvrables sans nous inquiéter ?**

Demandez ce que l'équipe craint dans la mise en production. Réponses typiques : pas de retour arrière testé, tests faibles, impact flou sur les utilisateurs. Chacune est quelque chose à construire. Listez-les et classez-les. Demandez quelle serait la plus petite étape pour la première. Le but de DORA, que personne ne travaille hors des heures ouvrables pour déployer, est une cible utile à discuter.

**Où regroupons-nous des changements parce que publier est pénible, et que nous coûte ce regroupement ?**

Regardez le contenu des versions récentes. Comptez les changements dans chacune. Demandez ce qui s'est passé quand un lot a mal tourné et combien de temps il a fallu pour trouver la cause. Discutez de ce qui ferait des versions à changement unique la voie facile. Convenez d'une première étape, comme publier seul un changement peu risqué.

**Comment savons-nous qu'une version fonctionne une fois en ligne ?**

Demandez quels signaux l'équipe surveille dans la première heure : erreurs, performance, retours d'utilisateurs. Si la réponse est « nous attendons les plaintes », discutez d'une surveillance qui montrerait rapidement un problème. Demandez qui surveille et ce qu'il ferait. Convenez d'une courte liste de contrôle pour l'après-publication.

**Que sait notre équipe de support d'une version avant sa sortie ?**

Demandez au centre de services ce qu'il a appris de la dernière version et quand. Comparez avec ce dont il avait besoin. Discutez d'un transfert simple, comme une note de version et un contact désigné. Incluez les personnes qui répondent aux questions des utilisateurs dans la planification des versions risquées.

**Qu'est-ce qui nous empêche de déployer sans période de gel, et que coûterait une période de gel ?**

Les périodes de gel sont courantes autour des pics d'activité. Demandez combien de temps elles durent et ce qu'elles retardent. Discutez si de petits changements bien testés pourraient avancer pendant ces périodes avec des garanties supplémentaires. La page de DORA met en garde contre l'application de la même approbation à tous les changements quels que soient le risque ou le moment ; demandez donc si le gel est trop grossier.

## En pratique : un exemple d'ITIL agile

Une université exploite un système d'inscription en ligne pour 30 000 étudiants. L'équipe de développement de huit personnes publie une fois par trimestre, dans une fenêtre de week-end avant l'ouverture des inscriptions. Chaque version regroupe des centaines de changements et exige quinze personnes, une longue liste de contrôle manuelle et un plan d'appel. La dernière version a échoué à 2 h du matin le dimanche, et l'équipe a passé quatorze heures à trouver lequel des changements l'avait causé.

Le responsable de l'équipe propose un changement d'approche. Premièrement, les déploiements deviennent entièrement scriptés, en commençant par les étapes qui ont échoué la dernière fois. Deuxièmement, l'équipe ajoute des tests automatisés du parcours d'inscription qui s'exécutent à chaque changement et durent moins de dix minutes. Troisièmement, les nouvelles fonctionnalités sont déployées désactivées et activées par un interrupteur de fonctionnalité après vérification. Quatrièmement, une étape de retour arrière est rédigée et répétée dans un environnement de test. Le service de la scolarité accepte une règle selon laquelle aucune version n'est mise en production pendant les trois semaines de pointe des inscriptions, sauf s'il s'agit de la correction d'un défaut visible des utilisateurs.

En un trimestre, l'équipe déploie chaque semaine hors des semaines de pointe, en heures ouvrables, avec les notes de version envoyées la veille au service d'assistance aux étudiants. Certaines versions sont ralenties par des tests instables et un interrupteur de fonctionnalité a été laissé activé par erreur, ce qui a causé une brève confusion. La transformation rencontre aussi la courbe en J que décrit la page de DORA : pendant deux mois, le travail sur les tests et les scripts ralentit la livraison de fonctionnalités. L'équipe persévère, corrige les tests instables, ajoute une étape de liste de contrôle pour retirer les interrupteurs et convient avec la scolarité de revoir la règle de gel l'an prochain. Les pointes d'inscription des trimestres passent sans incident lié à une mise en production.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison possèdent la chaîne : tests, constructions, scripts de déploiement et retour arrière. Investissez-y comme dans un produit avec des utilisateurs. Livrez petit, livrez souvent et traitez chaque version comme une preuve sur la chaîne. Impliquez le support et l'exploitation quand les changements les touchent.

### Équipes de service et d'exploitation

Les équipes d'exploitation profitent de versions plus petites et plus prévisibles, et peuvent aider en définissant ce qui doit être vrai avant qu'une version soit acceptée : surveillance, guides d'exploitation et retour arrière. Passez du rôle de gardien à celui de facilitateur en fournissant la plateforme et les contrôles que les équipes de livraison utilisent. Surveillez les signaux après une version.

### Direction et gouvernance

Les dirigeants décident si les équipes peuvent investir dans la chaîne et tolérer la courbe en J. Demandez le délai, le taux d'échec des changements et le temps de rétablissement. Résistez au gel des versions comme réponse générale au risque, et demandez plutôt des preuves que les versions risquées reçoivent plus d'examen.

### Clients et utilisateurs

Les clients et utilisateurs voient des améliorations fréquentes et petites et moins de perturbations massives. Attendez-vous à un préavis des changements qui vous touchent et à un moyen de signaler les problèmes. Si vous avez des périodes de pointe, dites-le au fournisseur pour qu'il puisse planifier des déploiements progressifs autour d'elles.

## Modes d'échec courants

- **Mises en production massives.** Des centaines de changements sortent ensemble. À la place, livrez par petits lots et séparez déploiement et mise en production.
- **Déploiement manuel.** Les étapes varient selon les personnes et échouent la nuit. À la place, automatisez par incréments, en commençant par les étapes les plus risquées.
- **Publier plus souvent sans garde-fous.** Les taux d'échec montent et les gens s'épuisent, comme l'avertit DORA. À la place, investissez d'abord dans les tests, le retour arrière et la surveillance.
- **Artefacts différents dans des environnements différents.** Ce qui est testé n'est pas ce qui tourne. À la place, construisez une fois et promouvez le même artefact.
- **Branches de longue durée.** Les fusions deviennent des événements. À la place, gardez les branches courtes et intégrez en continu.
- **Retour arrière jamais essayé.** Le premier retour arrière a lieu pendant une panne. À la place, répétez-le régulièrement.
- **Le support est le dernier à savoir.** Le personnel apprend les changements par les utilisateurs. À la place, envoyez des notes de version et un contact avant la mise en production.
- **Gels généralisés.** Le même gel s'applique à tous les changements. À la place, laissez passer les changements peu risqués et bien testés avec des vérifications supplémentaires et gardez le gel pour ce qui est risqué.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Automatisation du déploiement | Les déploiements sont manuels et varient | Certains déploiements sont scriptés | Les déploiements sont automatisés par une chaîne commune | Les échecs et la durée des déploiements sont suivis et réduits | Chaînes et pratiques sont partagées et améliorées entre équipes |
| Fréquence et taille des versions | Les versions sont rares et volumineuses | Certaines équipes livrent par lots plus petits | Les équipes livrent par petits lots selon un rythme connu | Fréquence, délai et taille sont mesurés et ajustés | Les rythmes de livraison sont coordonnés entre services et fournisseurs |
| Sûreté (tests, déploiement, retour arrière) | Les tests sont manuels ; le retour arrière n'est pas essayé | Il existe quelques tests automatisés et des étapes de retour arrière | Tests automatisés, déploiement progressif et retour arrière répété sont la norme | Le taux d'échec des changements et le temps de rétablissement sont suivis et améliorés | Les pratiques de sûreté sont partagées et testées entre équipes |
| Préparation du support | Le support apprend les versions par les utilisateurs | Certaines versions ont des notes | Notes de version et contacts sont la norme | Les retours du support sur les versions sont recueillis et suivis d'effet | Support, livraison et utilisateurs planifient les versions ensemble |

## Liste de contrôle

- [ ] Nous savons énoncer la différence entre déployer et mettre en production, et nous nous en servons.
- [ ] Les déploiements sont automatisés sans étapes manuelles, ou les étapes manuelles restantes sont listées.
- [ ] Nous construisons une fois et promouvons le même artefact dans les environnements.
- [ ] Des tests automatisés s'exécutent à chaque changement et donnent un retour en quelques minutes.
- [ ] Les branches sont de courte durée et fusionnées souvent dans le tronc.
- [ ] Un retour arrière existe pour chaque type de version et a été répété.
- [ ] Les déploiements sont progressifs là où le risque le justifie, avec des signaux définis à l'avance.
- [ ] Les notes de version et les problèmes connus parviennent au centre de services avant une mise en production.
- [ ] La configuration est sous contrôle de version et relue.
- [ ] Nous suivons pour chaque service le délai, le taux d'échec des changements et le temps de rétablissement.

## Prompts d'IA

**Objectif : cartographier les étapes de « prêt » à « en ligne » et trouver quoi automatiser.**

```text
Aidez-moi à cartographier le chemin d'un changement de prêt à en ligne.

Les étapes dans l'ordre, avec qui fait chacune, si elle est manuelle ou automatisée, et combien de temps elle attend ou dure en général : [collez].
Les trois dernières versions et ce qui a mal tourné, le cas échéant : [collez des faits].

Produisez un tableau des étapes et marquez les manuelles. Classez les étapes manuelles selon la fréquence à laquelle elles ont causé des problèmes dans le texte, et suggérez, pour les trois premières, une petite manière de l'automatiser ou de la vérifier. N'inventez ni durées ni nombres d'échecs. Posez d'abord des questions de clarification s'il manque des informations, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une note de version pour le centre de services et les utilisateurs.**

```text
Rédigez une note de version pour [service].

Ce qui a changé (en mots simples) : [décrivez].
Qui est touché et quand : [décrivez].
Ce que les utilisateurs remarqueront : [décrivez].
Problèmes connus et solutions de contournement : [listez, ou écrivez « aucun connu »].
Comment revenir en arrière et qui contacter : [décrivez].

Rédigez deux versions : une note d'un paragraphe pour les utilisateurs et une note d'une demi-page pour le centre de services. N'utilisez que les faits ci-dessus. Marquez tout énoncé qui est une hypothèse et posez d'abord des questions de clarification s'il manque des informations. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un déploiement progressif.**

```text
Planifiez un déploiement progressif de [changement].

Ce qu'il change et qui l'utilise : [décrivez].
Comment nous pouvons limiter l'exposition (pourcentage d'utilisateurs, régions, serveurs, interrupteur de fonctionnalité) : [décrivez les options disponibles].
Signaux que nous pouvons surveiller : [listez surveillance et sources de retours d'utilisateurs].
Méthode de retour arrière : [décrivez].

Proposez des étapes, ce qu'il faut vérifier à chacune, qui peut suspendre ou arrêter et ce qui déclencherait un retour arrière, en laissant les seuils chiffrés comme [à convenir]. N'inventez pas de surveillance que nous n'avons pas. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer un argumentaire pour investir dans l'automatisation des mises en production.**

```text
Aidez-moi à préparer un court argumentaire pour investir dans l'automatisation des mises en production de [service].

Ce que coûte aujourd'hui une version, en faits : [personnes impliquées, heures, incidents, retards ; n'utilisez que de vrais chiffres].
Ce que nous voulons pouvoir faire : [décrivez].
Risques connus du travail : [par exemple un ralentissement temporaire pendant la rédaction des tests].

Rédigez un argumentaire d'une page avec le problème, les premières étapes proposées (petites et incrémentales), ce que nous mesurerons (délai, taux d'échec des changements, temps de rétablissement, sans objectifs que je n'aurais pas donnés), les risques dont une baisse temporaire de livraison et ce que nous demandons. N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [release-notes](../../../../skills/release-notes/SKILL.md) : à utiliser pour dire aux utilisateurs et au centre de services ce que change une version.
- [changelog](../../../../skills/changelog/SKILL.md) : à utiliser pour tenir un journal courant des changements par version.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md) : à utiliser pour construire les tests automatisés qui rendent sûre la mise en production fréquente.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md) : à utiliser pour avancer les tests plus tôt dans la chaîne afin de trouver plus tôt les problèmes.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md) : à utiliser pour planifier des versions petites et fréquentes et les vérifications qui les entourent.

## Sources principales

- **Continuous delivery** (DORA, dora.dev) : la définition du programme de recherche, les pratiques recommandées, les constats et les écueils.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google) : la pratique d'une organisation du libre-service, des constructions reproductibles et de la politique de mise en production appliquée.
- **Streamlining change approval** (DORA, dora.dev) : conseils sur la place de l'approbation dans la livraison.
- **Continuous delivery** (Wikipedia) : un aperçu de la pratique et de son histoire.

## Références

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
