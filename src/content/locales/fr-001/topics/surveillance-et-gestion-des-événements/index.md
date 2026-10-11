# Surveillance et gestion des événements

**La surveillance dit si un service fonctionne comme les utilisateurs le vivent, et une bonne gestion des événements transforme un flot de signaux en un petit nombre d'alertes qu'une personne peut comprendre et sur lesquelles elle peut agir.**

## Pourquoi c'est important

Un service que l'on ne peut pas voir est un service que l'on ne peut pas exploiter. Sans surveillance, une équipe apprend les défaillances par les utilisateurs, et ne découvre la lente dégradation par personne. Avec une mauvaise surveillance, le problème est inverse : tant d'alertes que l'ingénieur d'astreinte cesse d'y croire et que la seule qui compte se perd dans le bruit. Les deux extrêmes coûtent du sommeil, de la confiance et du temps.

La surveillance et la gestion des événements déterminent aussi la rapidité avec laquelle un incident peut être trouvé et corrigé. Tout, dans la gestion des incidents, dépend de savoir vite que quelque chose ne va pas et d'avoir assez d'information pour découvrir pourquoi (voir Sujet 3.2 — Gestion des incidents). Les équipes agiles qui publient souvent en ont encore plus besoin, car chaque version est une occasion de casser quelque chose et chaque décision de retour arrière dépend de la vue de l'effet.

Le livre *Site Reliability Engineering* de Google compte deux chapitres qui abordent directement le sujet : « Monitoring Distributed Systems » et « Practical Alerting from Time-Series Data ». Ils décrivent la pratique d'une organisation et plaident pour une approche délibérément simple et centrée sur l'utilisateur. Ce sujet les utilise comme source principale, car les articles de Wikipédia consultés pour ce guide disent peu de choses sur la pratique. Le vocabulaire ITIL employé ici, comme événement, alerte et gestion des événements, est tiré de descriptions largement publiées que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre. Lisez les chapitres SRE comme une option bien expliquée.

## Concepts clés

### Surveillance

Le chapitre SRE définit la **surveillance** comme la collecte, le traitement et l'affichage de données quantitatives en temps réel sur un système. Il dit que la surveillance soutient l'analyse de tendances à long terme, la comparaison entre expériences, l'alerte, les tableaux de bord et le débogage ponctuel après coup. Il souligne que la surveillance est un effort d'ingénierie important et que les équipes y affectent généralement au moins une personne.

### Événements, alertes et incidents

Dans l'usage ITSM, un **événement** est un changement d'état qui a une signification pour la gestion d'un service. La plupart des événements sont informatifs. Certains indiquent un avertissement ou une exception. Une **alerte** est, selon les termes du chapitre SRE, une notification destinée à une personne, délivrée sous forme de ticket, de courriel ou d'appel. Un **incident** est une interruption non planifiée ou une baisse de qualité (voir Sujet 3.2 — Gestion des incidents). La gestion des événements est la pratique qui consiste à décider quels événements comptent, que faire à leur sujet et qui doit être informé. Le flux va des événements aux alertes puis, parfois, aux incidents.

### Surveillance en boîte noire et en boîte blanche

Le chapitre distingue deux sortes :

| Sorte | Ce qu'elle fait | Point fort |
|---|---|---|
| **Boîte noire** | Teste le comportement visible de l'extérieur, comme le verrait un utilisateur | Détecte les problèmes en cours ; convient à l'appel d'astreinte |
| **Boîte blanche** | Utilise des mesures exposées par l'intérieur du système, comme des journaux ou des gestionnaires internes | Révèle les problèmes imminents et les défaillances masquées par des nouvelles tentatives ; essentielle pour le débogage |

Le livre combine les deux. Une sonde en boîte noire vous dit que le paiement échoue ; les données en boîte blanche aident à découvrir pourquoi.

### Symptômes et causes

Le chapitre dit que la surveillance doit répondre à deux questions : ce qui est cassé et pourquoi. Il conseille de concentrer les alertes sur les symptômes, c'est-à-dire ce que vivent les utilisateurs, et de n'appeler sur des causes que lorsqu'elles sont certaines et imminentes. Une seule machine qui tombe en panne est, selon ses termes dans le chapitre sur l'alerte, inacceptable à signaler par une alerte, car trop bruyante. C'est le cœur d'une bonne approche de l'alerte : prévenir une personne quand les utilisateurs sont ou seront touchés, et non chaque fois qu'une pièce frémit.

### Les quatre signaux d'or

Le chapitre propose quatre signaux à surveiller pour un système tourné vers l'utilisateur :

- **Latence :** le temps pour servir une requête. Suivez séparément les requêtes en échec, car une « erreur lente est pire qu'une erreur rapide ».
- **Trafic :** la demande qui pèse sur le système.
- **Erreurs :** requêtes en échec, explicites, implicites ou par politique.
- **Saturation :** à quel point le service est « plein ». La performance se dégrade souvent avant 100 % d'utilisation.

Ils correspondent naturellement aux indicateurs de niveau de service (voir Sujet 3.7 — Gestion des niveaux de service). Le chapitre prévient aussi que les moyennes cachent les valeurs aberrantes lentes et suggère d'enregistrer les nombres de requêtes dans des intervalles de latence pour voir la distribution.

### Ce qui fait une bonne alerte

Le chapitre propose des questions à se poser avant d'écrire une alerte : détecte-t-elle une condition urgente, exploitable et visible des utilisateurs ; peut-elle être ignorée sans danger ; et la réponse peut-elle être automatisée ? Les appels d'astreinte doivent être exploitables, exiger du jugement et concerner des problèmes inédits. Il dit que les alertes ne doivent jamais se déclencher simplement parce que « quelque chose paraît un peu bizarre ». Des appels dont les réponses sont routinières et algorithmiques sont, à son avis, un signal d'alarme qui appelle l'automatisation ou une réparation de la cause racine.

### Acheminer les alertes

Le chapitre sur l'alerte décrit l'envoi des alertes dignes d'un appel au personnel d'astreinte, des alertes sous-critiques aux files de tickets et du reste aux tableaux d'état. Il décrit des outils pour acheminer, dédoublonner et inhiber les alertes, et note que les alertes doivent attendre une durée minimale avant de se déclencher, car elles peuvent osciller. Il avertit qu'« on ne peut alerter que sur les défaillances que l'on a prévues », c'est pourquoi la combinaison de sondes en boîte noire et de données en boîte blanche compte.

### Rester simple

Le chapitre plaide pour des systèmes simples et rapides plutôt que de la « magie » qui apprend des seuils ou détecte la causalité, et note que des hiérarchies de dépendances complexes n'ont eu qu'un succès limité. Il dit de garder simples les règles qui attrapent de vrais incidents, de retirer les alertes rarement exercées et les signaux inutilisés, et de faire croître les coûts de maintenance plus lentement que la taille du service. Les cas qu'il décrit, comme celui d'une équipe submergée d'alertes qui a temporairement assoupli son objectif et désactivé les alertes par courriel pour libérer du temps pour des corrections durables, montrent une volonté de supprimer le bruit.

### Tableaux de bord et vues à long terme

Le chapitre traite les tableaux de bord comme des vues de synthèse préconstruites des mesures clés d'un service et dit que les tableaux de bord valent mieux que les alertes par courriel, qu'il juge de très faible valeur. Il recommande aussi de revoir la fréquence des appels dans le temps, par exemple dans des rapports trimestriels, pour tenir la direction informée de la charge d'astreinte. Cela rend la qualité des alertes visible pour les responsables (voir Sujet 1.2 — Principes agiles sur le rythme durable).

### Limites des sources

Les chapitres SRE ne donnent pas de seuils au-delà d'un seul exemple travaillé, ne discutent ni des guides d'exploitation ni des limites de charge d'astreinte et ne décrivent pas comment revoir et retirer les alertes dans le temps ; ce sont donc des questions pour votre propre pratique. Ils viennent d'une grande organisation aux ressources d'ingénierie importantes. Les petites équipes peuvent appliquer les principes avec des outils plus simples.

## Bonnes pratiques

1. **Surveillez ce que vivent les utilisateurs.** Ajoutez au moins une sonde en boîte noire qui accomplit une vraie action d'utilisateur, comme se connecter ou passer une commande, et alertez quand elle échoue.
2. **Surveillez les quatre signaux d'or.** Pour chaque service, suivez latence, trafic, erreurs et saturation. N'ajoutez d'autres mesures que si elles répondent à une question que vous avez posée.
3. **Alertez sur les symptômes.** Appelez quand les utilisateurs sont touchés ou le seront bientôt. Traitez les conditions internes, comme une machine unique en panne, comme une information de moindre priorité à moins qu'elles soient certaines et imminentes.
4. **Rendez chaque appel exploitable.** Avant de créer une alerte, écrivez ce que l'intervenant doit faire. S'il n'y a rien à faire, ce n'est pas un appel.
5. **Acheminez selon l'urgence.** Envoyez les alertes urgentes à l'astreinte, les moins urgentes à une file de tickets et l'information à un tableau de bord. N'envoyez pas d'alertes par courriel à des gens qui les ignoreront.
6. **Utilisez des distributions, pas seulement des moyennes.** Regardez les percentiles élevés de latence, ou des intervalles, pour que les valeurs aberrantes lentes soient visibles.
7. **Fixez une durée minimale.** Exigez qu'une condition persiste un court moment avant d'alerter, pour éviter l'oscillation. Ajustez la durée avec de vraies données.
8. **Retirez les alertes bruyantes.** Examinez quelles alertes se déclenchent le plus et n'ont mené à aucune action. Supprimez-les ou corrigez-les. Le chapitre SRE traite les réponses routinières comme un signal pour automatiser ou réparer.
9. **Testez votre surveillance.** Cassez délibérément quelque chose dans un environnement de test et vérifiez que la bonne alerte se déclenche. Incluez dans les vérifications le système de surveillance lui-même, pour que sa défaillance soit remarquée.
10. **Revoyez la charge d'astreinte.** Comptez chaque trimestre les appels par poste, les interruptions hors heures et les fausses alarmes. Partagez les résultats avec les responsables et servez-vous-en dans la planification.
11. **Gardez la surveillance dans la définition de terminé.** Pour chaque nouvelle fonctionnalité, demandez quels signaux montrent si elle fonctionne et de quelle alerte, le cas échéant, elle a besoin (voir Sujet 3.5 — Gestion des mises en production et des déploiements).
12. **Restez simple.** Préférez quelques règles compréhensibles à un dispositif complexe. Retirez les signaux inutilisés et revoyez les règles après les incidents.

## Questions à discuter avec votre équipe

**Comment avons-nous appris l'existence de nos trois derniers incidents ?**

Listez chaque incident et la manière dont il a été remarqué en premier : une alerte, un utilisateur, un collègue. Si la plupart sont venus d'utilisateurs, la surveillance manque les symptômes qui comptent. L'animateur peut demander ce qu'une sonde aurait montré. Choisissez d'abord une action d'utilisateur à surveiller.

**Quelles alertes ignorons-nous, et pourquoi ?**

Demandez aux ingénieurs d'astreinte les alertes qu'ils font taire ou sautent. Chacune est candidate à la correction ou à la suppression. Demandez ce qui fait que les gens font confiance à une alerte ou s'en méfient. Une réponse franche révèle souvent des alertes qui se déclenchent sur des conditions sur lesquelles personne ne peut agir. Convenez d'en retirer ou d'en corriger trois.

**Quelle est la pire nuit d'astreinte que nous ayons connue, et qu'est-ce qui l'aurait améliorée ?**

Recueillez des récits sans blâme. Cherchez les schémas : appels répétés, alertes floues, absence de guides d'exploitation, pas d'escalade. Chaque schéma est une amélioration. Demandez quels deux changements aideraient le plus. Le but est une charge plus légère et un signal plus clair.

**Si notre système de surveillance tombait en panne, comment le saurions-nous ?**

Demandez qui surveille le surveillant. Beaucoup d'équipes n'ont aucune vérification que la surveillance fonctionne. Discutez d'un simple battement de cœur ou d'une sonde provenant d'un système séparé. Convenez d'une vérification à ajouter.

**Que montrent nos tableaux de bord, et qui les regarde ?**

Listez les tableaux de bord et demandez qui a utilisé chacun le mois dernier. Les tableaux de bord inutilisés sont de l'encombrement ; les utiles racontent une histoire du service. Demandez à quelle question chacun répond. Gardez un petit ensemble qui répond à de vraies questions.

**Comment saurions-nous qu'une version a aggravé les choses ?**

Choisissez une version récente et demandez quel signal montrerait un problème. Si la réponse est « nous l'apprendrions des utilisateurs », discutez des signaux à surveiller après une version et de qui en est responsable. Cette question relie la surveillance au déploiement. Rédigez une courte liste de contrôle d'après-publication.

## En pratique : un exemple d'ITIL agile

L'autorité des transports publics d'une ville exploite un site web et une application de calcul d'itinéraires utilisés par 400 000 personnes par jour. Une équipe plateforme de dix personnes possède le service avec un tableau d'astreinte de quatre. L'équipe a des centaines d'alertes : processeur de chaque serveur, espace disque, longueurs de files et comptes d'erreurs. Les ingénieurs d'astreinte reçoivent 40 appels dans une semaine typique, la plupart hors des heures de travail, et deux incidents du dernier trimestre ont d'abord été signalés par des utilisateurs sur les réseaux sociaux.

La responsable de l'équipe et un ingénieur passent en revue trois mois d'appels. Ils constatent que les trois quarts concernaient des conditions qui ne demandaient aucune action ou qui se résolvaient d'elles-mêmes. Ils conviennent de suivre une approche simple du livre SRE : alerter sur ce que vivent les utilisateurs. Ils ajoutent une sonde qui planifie chaque minute un trajet standard et mesure le succès et la rapidité, et gardent un petit ensemble d'alertes sur la saturation de la base de données et de la file. Ils déplacent le reste vers un tableau de bord et un ticket quotidien. Chaque appel restant reçoit une courte entrée de guide d'exploitation qui dit quoi vérifier.

Au bout d'un mois, les appels tombent à environ cinq par semaine, et les deux incidents qui ont suivi ont été détectés par la sonde avant que les utilisateurs ne se plaignent. Des problèmes subsistent. La sonde ne couvre qu'un type de trajet, et un défaut touchant les trajets à vélo est passé inaperçu pendant un jour. Un ingénieur signale aussi que la décision de « déplacer vers le tableau de bord » a caché un lent problème de disque qui a plus tard causé une défaillance. L'équipe ajoute des sondes pour d'autres types de trajets, ajoute au tableau d'astreinte une revue quotidienne du tableau de bord et convient de revoir la charge d'astreinte chaque trimestre.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison savent ce que le logiciel est censé faire et où il risque d'échouer. Intégrez les signaux dans le code : journaux utiles, mesures et contrôles d'état. Définissez des sondes pour les actions clés des utilisateurs et traitez la surveillance comme partie de « terminé ». Participez aux revues d'alertes pour que les appels reflètent de vrais problèmes.

### Équipes de service et d'exploitation

Les équipes d'exploitation portent l'appel d'astreinte et les tableaux de bord. Gardez les alertes peu nombreuses et exploitables, acheminez selon l'urgence et suivez la charge d'astreinte. Renvoyez les alertes bruyantes aux équipes qui en sont responsables, avec des preuves, et partagez ce que vous apprenez des incidents sur ce qu'il faut surveiller.

### Direction et gouvernance

Les dirigeants doivent demander la charge d'astreinte et les données de détection des incidents, pas davantage d'alertes. Soutenez le temps de retirer le bruit et d'ajouter des signaux utiles. Traitez un nombre croissant d'appels hors heures comme un risque pour le service et pour les personnes.

### Clients et utilisateurs

Les clients et utilisateurs profitent de ce que les problèmes soient trouvés avant qu'ils ne les remarquent. Signalez les problèmes avec des détails, comme ce que vous avez essayé et quand, car cela aide à ajuster la surveillance. Demandez aux fournisseurs comment ils détectent les défaillances et avec quelle rapidité, et s'ils publient des informations d'état.

## Modes d'échec courants

- **Alerter sur tout.** L'astreinte est constamment sollicitée et la confiance se perd. À la place, appelez sur les symptômes et envoyez le reste vers des tickets ou des tableaux de bord.
- **Surveiller les systèmes, pas les utilisateurs.** Toutes les machines sont au vert alors que les utilisateurs ne peuvent pas se connecter. À la place, ajoutez des sondes en boîte noire d'actions réelles d'utilisateurs.
- **Aucune action attachée.** Les appels arrivent sans rien à faire. À la place, exigez que chaque appel ait une réponse décrite, ou supprimez-le.
- **Moyennes seulement.** Un groupe d'utilisateurs souffre alors que la moyenne paraît bonne. À la place, regardez les percentiles élevés ou les distributions.
- **Des règles complexes et astucieuses.** Des seuils appris et des arbres de dépendances déroutent les intervenants. À la place, préférez des règles simples et compréhensibles.
- **Une surveillance non surveillée.** Le système de surveillance tombe en silence. À la place, vérifiez-le avec des battements de cœur et des tests.
- **Réponses routinières.** Les gens répètent la même correction après chaque appel. À la place, automatisez la réponse ou corrigez la cause.
- **Ignorer la charge d'astreinte.** Les appels nocturnes sont traités comme normaux. À la place, mesurez-les et revoyez-les, et traitez une charge élevée comme un risque.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Visibilité de l'expérience utilisateur | Les utilisateurs signalent la plupart des problèmes | Certains services ont des sondes ou des mesures pour les actions d'utilisateurs | Les actions clés des utilisateurs sont sondées et les signaux d'or suivis pour chaque service | Le délai et la couverture de détection sont mesurés et les lacunes comblées | La surveillance est partagée entre équipes, fournisseurs et clients |
| Qualité des alertes | Beaucoup d'alertes, peu d'action | Certaines équipes élaguent les alertes | Les appels sont fondés sur les symptômes, exploitables et acheminés selon l'urgence | La précision et le bruit des alertes sont mesurés et revus | La conception des alertes est améliorée entre équipes à partir de preuves partagées |
| Réponse et automatisation | Les réponses sont improvisées | Quelques guides d'exploitation existent | Les appels renvoient à des guides d'exploitation, et les réponses routinières sont automatisées | Le délai de réponse et l'usage de l'automatisation sont mesurés | Les réponses sont coordonnées entre équipes et fournisseurs |
| Personnes et charge | La charge d'astreinte n'est pas suivie | Certaines équipes comptent les appels | La charge d'astreinte est revue chaque trimestre | La charge est équilibrée et réduite à partir de données | Charge et apprentissage sont partagés entre équipes et reflétés dans la planification |

## Liste de contrôle

- [ ] Chaque service important a au moins une sonde d'une vraie action d'utilisateur.
- [ ] Nous suivons latence, trafic, erreurs et saturation pour chaque service.
- [ ] Chaque appel a une réponse écrite et concerne une condition visible des utilisateurs ou imminente.
- [ ] Les alertes sont acheminées selon l'urgence vers l'astreinte, les tickets ou les tableaux de bord.
- [ ] Les percentiles élevés ou les distributions sont visibles pour la latence.
- [ ] Nous passons en revue les alertes qui se déclenchent le plus et retirons celles qui ne mènent à aucune action.
- [ ] Le système de surveillance lui-même est vérifié.
- [ ] La charge d'astreinte (appels par poste, interruptions hors heures) est revue chaque trimestre.
- [ ] Les nouvelles fonctionnalités incluent la surveillance dans leur définition de terminé.
- [ ] Après chaque version, quelqu'un vérifie les signaux au regard d'une courte liste.

## Prompts d'IA

**Objectif : passer en revue une liste d'alertes pour leur bruit et leur caractère exploitable.**

```text
Voici une liste de nos alertes avec la fréquence de déclenchement de chacune au cours des [période] dernières, et ce qui s'est passé ensuite (suivie d'action, ignorée, résolue d'elle-même) : [collez sous forme de tableau ; utilisez de vraies données].

En n'utilisant que mes données, regroupez les alertes en : se déclenchent souvent sans action ; se déclenchent et ont mené à une action ; se déclenchent rarement. Pour chacune du premier groupe, suggérez une question à poser à son responsable (par exemple si elle peut être retirée, acheminée vers un ticket ou transformée en alerte fondée sur un symptôme). N'inventez ni fréquences ni résultats. Dites-moi quelles données supplémentaires aideraient et listez ce dont vous n'êtes pas sûr.
```

**Objectif : définir une sonde pour un parcours d'utilisateur.**

```text
Aidez-moi à définir une sonde en boîte noire pour cette action d'utilisateur dans [service] : [décrivez, par exemple « un utilisateur recherche un trajet et reçoit des résultats »].

Ce qui compte comme un succès : [décrivez].
Ce qui est trop lent : [dites « inconnu » ou décrivez en mots, pas en chiffres].
Les systèmes que l'action touche : [listez].

Décrivez les étapes que la sonde doit accomplir, ce qu'elle doit consigner (succès, temps pris et endroit de l'échec), quelle condition d'alerte proposer (laissez les seuils comme [à convenir]) et ce qu'un intervenant vérifierait d'abord. Signalez les hypothèses. N'inventez pas de détails du système. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger la section de réponse d'une alerte.**

```text
Pour cette alerte, rédigez une courte entrée de réponse pour le personnel d'astreinte.

Nom et condition de l'alerte : [collez].
Ce qu'elle signifie pour les utilisateurs : [décrivez].
Ce que je sais devoir vérifier d'abord : [listez].
Vers qui escalader : [rôle, ou écrivez « inconnu »].

Rédigez : ce que signifie l'alerte, les trois premières vérifications, comment savoir si les utilisateurs sont touchés, quand escalader et une note sur la possibilité d'automatiser la réponse. N'utilisez que mes informations ; marquez d'un [À VÉRIFIER] tout ce que vous avez ajouté. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une revue trimestrielle de la charge d'astreinte.**

```text
Aidez-moi à préparer une revue trimestrielle de la charge d'astreinte pour [équipe].

Données du trimestre (appels par semaine, appels hors heures, appels sans action, incidents détectés par la surveillance par rapport à ceux détectés par les utilisateurs) : [collez de vrais chiffres].
Contexte : [décrivez les changements de la période].

Résumez les données en langage simple, en n'utilisant que mes chiffres. Mettez en évidence les tendances et les valeurs aberrantes comme des questions, non comme des conclusions. Suggérez trois questions pour l'équipe et une pour la direction. N'inventez pas de causes. Si les données sont incomplètes, dites quoi recueillir. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour rédiger la réponse qui accompagne chaque appel.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md) : à utiliser pour concevoir un tableau d'astreinte équitable et planifier comment la charge d'astreinte est partagée et revue.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md) : à utiliser pour choisir et interpréter des mesures de performance du service et de la livraison.
- [performance-testing](../../../../skills/performance-testing/SKILL.md) : à utiliser pour vérifier la latence et la saturation sous charge avant que les problèmes n'atteignent les utilisateurs.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md) : à utiliser pour tester que les défaillances sont détectées et traitées en les provoquant délibérément dans un cadre sûr.

## Sources principales

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google) : définitions, les quatre signaux d'or, symptômes contre causes et conseils sur une alerte simple.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google) : comment fonctionnent en pratique les règles d'alerte, l'acheminement et l'oscillation.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google) : le lien entre indicateurs, objectifs et alertes.
- **IT service management** (Wikipedia) : la place de la surveillance et des incidents dans l'ITSM.

## Références

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
