# DevOps

**DevOps est l'effort pour réunir développement et exploitation dans un seul flux de travail avec responsabilité partagée, automatisation et retour rapide, et il complète la gestion des services en plaçant dans la chaîne de livraison les contrôles qui importent à ITIL.**

## Pourquoi c'est important

DevOps est le nom que la plupart des organisations donnent au point de rencontre entre la livraison continue et l'exploitation informatique. Il est né d'une frustration : les développeurs étaient récompensés pour le changement et le personnel d'exploitation pour la stabilité, si bien que les deux groupes tiraient dans des directions opposées, et le passage de relais entre eux était l'endroit où l'on perdait vitesse et qualité. DevOps demande aux deux de partager la responsabilité de tout le chemin allant de l'idée au service en fonctionnement.

Pour les gens de l'ITSM, DevOps peut sembler soit menaçant, soit redondant. Menaçant, parce qu'il paraît écarter les processus que l'exploitation a bâtis à la dure. Redondant, parce que beaucoup de ce qu'il recommande, comme les revues d'incidents, l'automatisation et l'amélioration continue, est déjà dans ITIL. Aucune des deux vues n'est tout à fait juste. L'article de Wikipédia sur DevOps oppose DevOps à ce qu'il appelle le cadre « descendant » et rigide d'ITIL dans les années 1990, ce qui est vrai des anciennes versions ; ITIL 4 a été écrit pour s'aligner sur l'agile, DevOps et lean (voir Sujet 2.2 — ITIL).

La définition de DevOps est contestée, et l'article de Wikipédia le dit. Ce sujet utilise l'article, les pages de recherche de DORA et le récit de Gene Kim sur les « Trois Voies », et il nomme ce qui est établi, ce qui est débattu et ce que ce guide n'a pas pu vérifier.

## Concepts clés

### Ce qu'est DevOps

L'[article de Wikipédia sur DevOps](https://en.wikipedia.org/wiki/DevOps) le décrit comme l'intégration et l'automatisation du développement logiciel et de l'exploitation informatique, ce qui peut raccourcir le temps de développement et améliorer le cycle de vie du développement. Il cite les chercheurs universitaires Len Bass, Ingo Weber et Liming Zhu, qui le décrivent comme un ensemble de pratiques visant à réduire le temps entre la validation d'un changement dans un système et sa mise en production normale. L'article note que le terme est utilisé dans plusieurs contextes et que sa définition est débattue, et que des études universitaires de 2015 à 2017 n'ont trouvé aucun consensus sur ses caractéristiques.

L'article rapporte que des propositions de combiner les méthodes de développement avec le déploiement et l'exploitation remontent à la fin des années 1980 et au début des années 1990, et que la première conférence DevOps Days s'est tenue à Gand, en Belgique, en 2009, fondée par Patrick Debois. Il caractérise généralement DevOps par trois principes, la responsabilité partagée, l'automatisation du flux de travail et le retour rapide, et note que cette caractérisation est elle-même débattue.

### Les Trois Voies

Gene Kim, coauteur de *The Phoenix Project* et de *The DevOps Handbook*, décrit trois principes dont, soutient-il, les modèles de DevOps peuvent être dérivés. Tels que résumés dans le billet de Kim sur le site IT Revolution et dans des résumés secondaires :

| Voie | Idée | Exemples |
|---|---|---|
| **La Première Voie : le flux** | Regarder la performance de l'ensemble du système, non d'un seul silo ; accélérer le travail de l'idée à la valeur | Ne pas transmettre en aval des défauts connus ; ne pas laisser l'optimisation locale dégrader l'ensemble ; chercher toujours à augmenter le flux |
| **La Deuxième Voie : le retour** | Raccourcir et amplifier les signaux qui remontent des étapes tardives vers les étapes précoces | Télémétrie, chaînes à échec rapide, retour des clients |
| **La Troisième Voie : l'apprentissage continu et l'expérimentation** | Bâtir une culture qui prend de petits risques délibérés et en tire des leçons | Réserver du temps pour apprendre, transformer les découvertes locales en améliorations globales |

Elles correspondent aux thèmes propres de ce guide : le flux (voir Sujet 1.5 — Kanban et Sujet 1.7 — Développement logiciel lean), le retour (voir Sujet 3.10 — Surveillance et gestion des événements) et l'apprentissage (voir Sujet 1.10 — Apprentissage agile). Une note de terminologie : le billet de Kim appelle la Deuxième Voie « amplifier les boucles de retour », et le Handbook l'appelle « retour ».

### Pratiques

Selon Wikipédia, l'intégration continue et la livraison continue sont essentielles au succès de DevOps, avec l'automatisation. L'article mentionne le contrôle de version, les machines virtuelles, la conteneurisation et le DevOps des bases de données, qui applique le contrôle de version, les tests automatisés et le CI/CD aux changements de schéma et de données. Il décrit GitOps comme la gestion de la configuration de déploiement sous contrôle de version, et DevSecOps comme l'intégration de la sécurité dans la livraison par des tests « décalés vers la gauche », dont l'analyse statique et dynamique. La liste de capacités de DORA inclut la livraison continue, l'intégration continue, l'automatisation du déploiement, l'automatisation des tests, le développement sur tronc commun, le contrôle de version, la gestion des changements de base de données, la surveillance et l'observabilité, la sécurité omniprésente, le travail en petits lots et les limites du travail en cours (voir Sujet 3.5 — Gestion des mises en production et des déploiements).

### Culture

La liste de capacités de DORA, lue pour ce guide, comprend des éléments culturels : culture organisationnelle générative, culture d'apprentissage, leadership transformationnel, satisfaction au travail, bien-être et expérimentation en équipe. La page qui les liste ne les explique pas et ne les classe pas. Une autre page de DORA dit que ses indicateurs prédisent la performance organisationnelle et le bien-être des membres d'équipe, et met en garde contre la responsabilité cloisonnée, en recommandant une responsabilité partagée entre les équipes de développement, d'exploitation et de mise en production. Cela concorde avec la Troisième Voie : DevOps tient autant à la façon dont les gens travaillent ensemble qu'aux outils.

Le mnémonique courant **CALMS** (culture, automatisation, lean, mesure, partage) sert souvent à résumer DevOps. L'article de Wikipédia sur DevOps ne le mentionne pas, et ce guide n'en a pas vérifié l'origine ; il n'est donc nommé ici que parce que les lecteurs le rencontreront.

### DevOps et agile

L'article dit que la construction et le test automatisés, l'intégration continue et la livraison continue sont nés dans le monde agile, et que l'omission des pratiques d'ingénierie par Scrum a fait se détacher le travail d'automatisation en DevOps. Cela cadre avec le Sujet 1.4 — Prévision de livraison et indicateurs de planification, qui note que Scrum ne dit pas comment construire, tester, déployer ou exploiter le logiciel. La programmation extrême contient déjà beaucoup de pratiques d'ingénierie (voir Sujet 1.6 — Programmation extrême). DevOps étend la préoccupation agile au-delà du point de mise en production.

### DevOps et ITIL

L'article oppose DevOps au cadre « descendant » et rigide d'ITIL des années 1990 et ne discute pas davantage de l'ITSM. Une image plus juste pour aujourd'hui :

| | A tendance à insister sur | Risque si utilisé seul |
|---|---|---|
| **DevOps** | Flux, automatisation, responsabilité partagée, retour rapide | Négliger enregistrements, contrôles et vue plus large du service |
| **ITIL 4** | Valeur, pratiques, gouvernance, large éventail de pratiques de service | Traiter les pratiques comme un processus lourd |

Le propre schéma de certification d'ITIL 4 comprend un module de spécialiste appelé High Velocity IT (HVIT) dans la filière Managing Professional, comme le liste l'article de Wikipédia sur ITIL. Cela montre que le propriétaire traite le travail numérique à évolution rapide comme un sujet à part entière. Une combinaison pratique : utiliser les pratiques de DevOps pour mettre en œuvre les pratiques d'ITIL dans la chaîne de livraison, comme enregistrer automatiquement les changements, exécuter des tests comme contrôle de risque et surveiller comme pratique d'événements (voir Sujet 3.4 — Habilitation des changements et Sujet 5.1 — Gestion agile des services).

### DevOps et ingénierie de la fiabilité des sites

L'article de Wikipédia dit que Google a développé l'ingénierie de la fiabilité des sites en 2003, et que certains de ses auteurs d'origine voient la SRE comme une mise en œuvre de DevOps. L'article sur la SRE l'appelle une mise en œuvre spécifique de DevOps, plus étroite parce qu'elle se concentre sur la construction de systèmes fiables (voir Sujet 5.3 — Ingénierie de la fiabilité des sites).

### Mesures

Les mesures de performance de livraison logicielle de DORA donnent un vocabulaire commun : délai de livraison d'un changement, fréquence de déploiement, temps de rétablissement après un déploiement raté, taux d'échec des changements et taux de reprise des déploiements (voir Sujet 3.4 — Habilitation des changements et Sujet 5.6 — Indicateurs et mesure). L'article de Wikipédia rapporte que les indicateurs ont été publiés en 2016, que la mesure de rétablissement a été renommée dans le rapport de 2023, qu'une mesure de reprise a été ajoutée en 2024 et qu'en 2025 DORA a remplacé les niveaux de performance par sept archétypes d'équipes. Il consigne aussi que certains experts ont critiqué la méthodologie et les indicateurs de la recherche DORA. Traitez les mesures comme des questions utiles et non comme des scores.

### Critiques et limites

Outre l'absence de définition établie, l'article rapporte des critiques de la méthodologie de DORA. Les critiques pratiques courantes, offertes ici comme expérience de terrain et non comme constats des sources, incluent « DevOps » utilisé comme intitulé de poste pour l'ancien rôle d'exploitation, des outils adoptés sans changement de culture et la conformité négligée dans la poursuite de la vitesse. L'article ne donne pas de statistiques d'adoption.

## Bonnes pratiques

1. **Convenez de ce que vous entendez par DevOps.** Écrivez un court énoncé de ce que cela signifie pour vos équipes, comme la responsabilité partagée d'un service, la livraison automatisée et le retour rapide. Une définition partagée évite les disputes sur les étiquettes.
2. **Partagez la responsabilité du service.** Rendez ceux qui construisent un service responsables de son fonctionnement, et donnez-leur les moyens : astreinte, surveillance et accès. Soutenez-les avec l'expertise de l'exploitation.
3. **Automatisez le chemin vers la production.** Bâtissez une chaîne qui construit, teste et déploie chaque changement. Consignez ce qu'elle a fait. Traitez la chaîne comme un produit avec des utilisateurs.
4. **Travaillez en petits lots.** Livrez souvent de petits changements. Cela réduit le risque et accélère le retour, comme le suggère la liste de capacités de DORA.
5. **Raccourcissez les boucles de retour.** Rendez les résultats de tests, la surveillance et le retour des utilisateurs visibles à l'équipe en quelques minutes ou heures. Suivez la Deuxième Voie : amplifiez les signaux qui remontent.
6. **Regardez le flux entier.** Cartographiez le chemin de l'idée au service en fonctionnement et trouvez les plus longues attentes, y compris celles hors de l'équipe de développement. Suivez la Première Voie : n'optimisez pas un silo au prix de l'ensemble (voir Sujet 5.4 — Gestion du flux de valeur).
7. **Intégrez sécurité et conformité.** Mettez dans la chaîne des contrôles de sécurité et de politique automatisés, et consignez les preuves en sous-produit (voir Sujet 3.13 — Gestion de la sécurité des informations et Sujet 5.7 — Gouvernance, risques et conformité).
8. **Traitez la culture comme une préoccupation de premier rang.** Investissez dans l'apprentissage, les revues sans blâme, la sécurité psychologique et les buts partagés. La liste de capacités de DORA inclut la culture à côté d'éléments techniques pour une raison.
9. **Prenez le temps d'apprendre et d'expérimenter.** Réservez du temps et des lieux sûrs pour les expériences, et partagez les leçons. Suivez la Troisième Voie.
10. **Utilisez les pratiques d'ITIL là où elles aident.** Gardez les pratiques d'incident, de problème, de changement et de connaissance, mises en œuvre par l'automatisation et des enregistrements légers. Retirez les étapes qui ne servent pas leur but.
11. **Mesurez avec soin.** Suivez des mesures de type DORA par service, améliorez-vous par rapport à votre propre passé et évitez d'en faire des cibles (voir Sujet 5.6 — Indicateurs et mesure).
12. **Évitez le piège de l'intitulé.** Ne créez pas une « équipe DevOps » séparée qui devient un nouveau silo entre développement et exploitation. Répartissez les pratiques entre les équipes et utilisez des équipes de plateforme ou d'appui pour aider.

## Questions à discuter avec votre équipe

**Que signifie DevOps ici, et où avons-nous entendu le mot pour la première fois ?**

Demandez à chacun une définition en une phrase. Comparez. L'article de Wikipédia dit que la définition est débattue ; des différences sont donc attendues. Rédigez un énoncé partagé et concret : qui possède quoi, ce qui est automatisé, quel retour existe. L'animateur peut demander ce qui a changé grâce au mot jusqu'ici.

**Où un changement attend-il entre « prêt » et « en production », et à qui appartient l'attente ?**

Retracez un changement récent et listez les attentes : revues, approbations, environnements, fenêtres de mise en production. Marquez celles qui sont hors de l'équipe. Demandez lesquelles protègent contre de vrais risques et lesquelles sont des habitudes. Choisissez-en une à raccourcir, avec son responsable.

**Quand quelque chose casse en production, qui est d'astreinte, et a-t-il les moyens de réparer ?**

Demandez qui est appelé et ce qu'il peut faire seul. Si les constructeurs ne sont pas d'astreinte, demandez pourquoi. Si le personnel d'exploitation ne peut pas changer le code, demandez ce qu'il fait. Discutez de ce que serait ici la responsabilité partagée et du soutien nécessaire.

**Quel retour recevons-nous après une mise en production, et à quelle vitesse ?**

Listez les signaux : tests, surveillance, tickets de support, commentaires d'utilisateurs. Demandez combien de temps chacun met à atteindre l'équipe. Réponses typiques : tests en minutes, tickets en jours. Choisissez un signal à accélérer.

**Est-il sûr d'essayer quelque chose et d'échouer ?**

Demandez un exemple récent d'expérience ratée et ce qu'il est advenu des personnes concernées. La Troisième Voie dépend de l'apprentissage à partir de petits échecs. Discutez de ce qui rendrait les expériences plus sûres, comme des limites, des retours en arrière et une revue sans blâme.

**Comment nos pratiques ITIL apparaissent-elles dans la chaîne, et où n'apparaissent-elles pas ?**

Prenez les pratiques de changement, d'incident et de connaissance et demandez où chacune apparaît dans l'automatisation. Les lacunes pointent du travail manuel ou des contrôles sans preuve. Convenez d'une pratique à déplacer dans la chaîne.

## En pratique : un exemple d'ITIL agile

Un service postal national a un groupe de développement de 40 personnes et un groupe d'exploitation de 25. Les développeurs livrent une version majeure chaque trimestre et remettent un paquet et un long document à l'exploitation, qui le déploie pendant un week-end. L'exploitation se plaint que les développeurs ne comprennent pas la production, et les développeurs se plaignent que l'exploitation est introuvable quand un défaut demande un correctif rapide. Une récente mise en production a pris 19 heures, a cassé la page de suivi de colis et a mené à une journée de reproches mutuels.

Un nouveau responsable de la plateforme propose un essai avec une équipe produit, le service de suivi de colis. Quatre développeurs et deux ingénieurs d'exploitation forment une seule équipe qui possède le service de bout en bout. Les développeurs rejoignent le tour d'astreinte, soutenus par les ingénieurs d'exploitation. L'équipe bâtit une chaîne qui construit, teste et déploie chaque changement fusionné vers un environnement de préproduction, et déploie en production avec une seule étape d'approbation que donne le responsable du service. Les enregistrements de changement sont créés par la chaîne. La surveillance est ajoutée, les alertes vont à toute l'équipe et chaque incident de production donne lieu à une courte revue sans blâme. L'équipe convient de livrer au moins chaque semaine, et le responsable de la plateforme lui demande de suivre le délai de livraison, la fréquence de déploiement, le taux d'échec des changements et le temps de rétablissement.

Au bout de quatre mois, l'équipe livre deux fois par semaine, le temps médian entre la fusion et la production est inférieur à un jour, et le dernier incident a été corrigé en moins d'une heure par le développeur qui avait écrit le changement. Tout ne marche pas. Les ingénieurs d'exploitation trouvent les alertes des développeurs bruyantes, et les développeurs n'aiment pas être d'astreinte la nuit. Une équipe voisine qui dépend du suivi de colis n'avait pas été informée du nouveau rythme et a été surprise par un changement. Le responsable de la plateforme réserve du temps à l'équipe pour régler les alertes, ajoute un tour avec une limite d'appels de nuit et organise une réunion mensuelle avec les équipes dépendantes. L'audit interne demande à voir les preuves des approbations, et le responsable de la plateforme montre les enregistrements de la chaîne et les revues d'incidents.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison prennent en charge la responsabilité opérationnelle : surveillance, astreinte et apprentissage des incidents. Bâtissez la chaîne et le retour dont vous avez besoin, et demandez l'expertise de l'exploitation plutôt que de passer le relais. Gardez les changements petits et visibles.

### Équipes de service et d'exploitation

Les équipes d'exploitation apportent la connaissance de la façon dont les services échouent et des contrôles qui comptent. Aidez à bâtir la plateforme et les vérifications, partagez l'astreinte et enseignez. Évitez d'être un portail ; devenez un facilitateur qui fait de la voie sûre la voie facile.

### Direction et gouvernance

Les dirigeants créent les conditions : buts partagés entre développement et exploitation, temps pour l'automatisation, culture qui apprend de l'échec et confiance dans les preuves issues de la chaîne. Évitez de rebaptiser des équipes sans changer les incitations, et demandez des résultats, non l'adoption de DevOps.

### Clients et utilisateurs

Les clients et utilisateurs voient DevOps comme une amélioration plus rapide et un rétablissement plus rapide. Attendez-vous à de fréquents petits changements et à une communication claire à leur sujet. Donnez vite votre retour, car l'équipe est organisée pour l'exploiter.

## Modes d'échec courants

- **Une équipe DevOps comme nouveau silo.** Développement et exploitation ne se parlent toujours pas. À la place, répartissez les pratiques entre les équipes et utilisez des équipes de plateforme pour faciliter.
- **Des outils sans culture.** Une chaîne est bâtie et rien d'autre ne change. À la place, changez ensemble responsabilité, incitations et retour.
- **De la vitesse sans sécurité.** Les mises en production s'accélèrent et les échecs augmentent. À la place, investissez d'abord dans les tests, la surveillance et le retour arrière avant le rythme.
- **Abandonner ITIL entièrement.** Enregistrements et contrôles disparaissent. À la place, gardez les pratiques et mettez-les en œuvre dans la chaîne.
- **Des développeurs d'astreinte sans soutien.** L'épuisement suit. À la place, partagez le tour, réglez les alertes et limitez les appels de nuit.
- **Des indicateurs comme cibles.** Les équipes trichent sur le nombre de déploiements. À la place, utilisez plusieurs mesures et comparez avec votre propre historique.
- **Ignorer les équipes dépendantes.** Les changements surprennent les voisins. À la place, communiquez rythme et changements aux équipes qui dépendent de la vôtre.
- **Prendre le mot pour le but.** Les étiquettes remplacent les résultats. À la place, demandez à quoi ressemblent un meilleur flux, un meilleur retour et un meilleur apprentissage pour vos utilisateurs.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Responsabilité partagée | Développement et exploitation se passent le relais à la mise en production | Certaines équipes partagent l'astreinte | Les équipes possèdent leurs services de bout en bout avec soutien | Les effets de la responsabilité sur la qualité et la charge sont mesurés | Les modèles de responsabilité sont coordonnés entre équipes, plateformes et fournisseurs |
| Automatisation et flux | La livraison est manuelle et par lots | Quelques chaînes existent | Une chaîne commune construit, teste, déploie et consigne les changements | Délai, fréquence, échec et rétablissement sont mesurés et ajustés | Chaînes et flux sont optimisés entre équipes et flux de valeur |
| Retour | Le retour arrive des utilisateurs après les problèmes | Certaines équipes surveillent les mises en production | Tests, surveillance et retour des utilisateurs atteignent les équipes en minutes ou heures | La vitesse et la qualité du retour sont mesurées et améliorées | Les boucles de retour couvrent équipes, fournisseurs et clients |
| Culture et apprentissage | Le blâme suit l'échec | Quelques revues sans blâme | Revues sans blâme, expériences et temps d'apprentissage sont routiniers | Les actions d'apprentissage sont suivies et les résultats vérifiés | L'apprentissage se répand continuellement dans l'organisation |

## Liste de contrôle

- [ ] Nous avons une définition écrite partagée de ce que DevOps signifie pour nous.
- [ ] Les équipes qui construisent un service partagent la responsabilité de son exploitation.
- [ ] Une chaîne construit, teste et déploie les changements et consigne ce qu'elle a fait.
- [ ] Les changements sont livrés en petits lots, souvent.
- [ ] Les retours des tests, de la surveillance et des utilisateurs atteignent rapidement l'équipe.
- [ ] Des contrôles de sécurité et de politique s'exécutent dans la chaîne.
- [ ] L'astreinte est partagée, avec des limites d'appels de nuit et des alertes réglées.
- [ ] Les revues d'incidents sont sans blâme et produisent des actions avec responsables.
- [ ] Nous suivons le délai de livraison, la fréquence de déploiement, le taux d'échec des changements et le temps de rétablissement pour chaque service.
- [ ] Les équipes dépendantes sont informées de notre rythme de mise en production et des changements majeurs.

## Prompts d'IA

**Objectif : cartographier les attentes entre « prêt » et « en production ».**

```text
Aidez-moi à cartographier les attentes d'un changement typique dans [équipe ou service].

Les étapes de « prêt » à « en production », qui fait chacune, si elle est manuelle ou automatisée et combien de temps le travail attend avant elle (utilisez de vraies données ; marquez les estimations comme telles) : [collez].

Produisez un schéma texte simple, mettez en évidence les trois attentes les plus longues et l'équipe qui possède chacune, et suggérez, pour chacune, une question pour savoir si l'attente protège d'un risque réel. N'inventez pas de durées. Si les données sont trop minces, dites quoi recueillir. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : vérifier où les pratiques ITIL apparaissent dans votre chaîne.**

```text
Aidez-moi à comparer notre chaîne avec les pratiques de gestion des services.

Ce que fait notre chaîne aujourd'hui, étape par étape : [collez].
Les pratiques à vérifier : habilitation des changements, gestion des mises en production et des déploiements, gestion des incidents, gestion des problèmes, gestion des connaissances, gestion de la configuration.

Pour chaque pratique, dites ce qui, dans la description de la chaîne, semble la soutenir (citez mes mots), ce qui manque et une question à poser. N'affirmez pas qu'une norme exige quoi que ce soit à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier un pilote de responsabilité partagée avec une équipe.**

```text
Planifiez un pilote de quatre mois de responsabilité partagée pour [service], réunissant [nombre] développeurs et [nombre] ingénieurs d'exploitation.

Organisation actuelle : [décrivez qui construit, qui exploite, qui est d'astreinte].
Préoccupations de chaque côté : développement [listez] ; exploitation [listez].
Mesures dont nous disposons : [listez].

Donnez un plan avec : formation de l'équipe, modalités d'astreinte avec limites, travail sur la chaîne et la surveillance, comment l'équipe apprend des incidents, quelles mesures revoir (laissez les cibles comme [à convenir]), quelles preuves conserver pour l'audit et comment informer les équipes dépendantes. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir une revue d'incident sans blâme pour une équipe mixte.**

```text
Concevez une revue sans blâme de 45 minutes pour cet incident : [décrivez l'incident factuellement].

Personnes impliquées : [rôles du développement et de l'exploitation].
Informations disponibles (chronologie, alertes, changements) : [listez].

Fournissez un ordre du jour qui construit d'abord la chronologie, identifie les causes contributives dans les systèmes et les processus, note ce qui s'est bien passé et se termine par au plus trois actions avec responsables. Incluez des amorces qui évitent le blâme. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md) : à utiliser pour planifier des mises en production petites et fréquentes et les contrôles qui les entourent.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md) : à utiliser pour bâtir les tests automatisés dont dépend une chaîne.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md) : à utiliser pour déplacer plus tôt dans la chaîne les tests et les contrôles de sécurité.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md) : à utiliser pour concevoir une astreinte partagée avec des limites équitables.
- [postmortem](../../../../skills/postmortem/SKILL.md) : à utiliser pour mener des revues sans blâme qui nourrissent la Troisième Voie.

## Sources principales

- **DevOps** (Wikipedia) : un aperçu des définitions, pratiques, relations avec l'agile, la SRE et DevSecOps, et indicateurs DORA, avec les débats relevés.
- **The Three Ways : The Principles Underpinning DevOps** (Gene Kim, IT Revolution) : la source du flux, du retour et de l'apprentissage continu.
- **DORA capabilities and metrics** (dora.dev) : la liste de capacités du programme de recherche et ses mesures de livraison logicielle.
- **The DevOps Handbook** et **The Phoenix Project** (Gene Kim et coauteurs) : les livres qui développent en détail les Trois Voies.

## Références

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways : The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
