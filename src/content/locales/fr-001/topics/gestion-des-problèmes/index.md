# Gestion des problèmes

**La gestion des problèmes trouve et supprime les causes qui se cachent derrière les incidents récurrents, et sa forme agile est un flux régulier de petites corrections fondées sur des preuves dans le carnet, plutôt que de grandes enquêtes occasionnelles.**

## Pourquoi c'est important

Une équipe qui traite bien les incidents mais n'en supprime jamais les causes est sur un tapis roulant. Chaque panne est réparée, le même défaut revient et les ingénieurs d'astreinte se fatiguent. La gestion des problèmes est la pratique qui descend du tapis roulant : elle demande pourquoi l'incident s'est produit, s'il se reproduira et ce qui l'arrêterait.

Les équipes agiles sont bien placées pour cela. Elles ont un carnet où une correction peut rivaliser avec une fonctionnalité, elles travaillent en cycles courts qui rendent les petites corrections peu coûteuses et elles tiennent des rétrospectives où l'on peut remarquer des schémas. Ce qui leur manque souvent, c'est l'habitude de relier les incidents entre eux et la discipline de chercher correctement les causes. La gestion des problèmes apporte les deux.

L'[article de Wikipédia sur l'analyse des causes racines](https://en.wikipedia.org/wiki/Root_cause_analysis) est la principale source lue pour ce sujet, car la Wikipédia anglaise n'a pas d'article intitulé « Problem management » à l'adresse vérifiée. Cet article décrit l'analyse des causes racines (RCA) comme une méthode de résolution de problèmes utilisée dans les opérations informatiques et d'autres domaines, et il porte des bandeaux de maintenance pour citations manquantes. Le vocabulaire ITIL employé ici, comme erreur connue et solution de contournement, vient de descriptions largement publiées de la pratique, que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre. Lisez les publications actuelles du propriétaire quand les définitions exactes comptent (voir Sujet 2.2 — ITIL).

## Concepts clés

### Incident, problème, erreur connue

Trois termes sont employés ensemble, et les distinctions comptent :

| Terme | Sens, tel qu'il est largement employé en ITSM | Exemple |
|---|---|---|
| **Incident** | Une interruption non planifiée d'un service ou une baisse de sa qualité | La page de réservation est en panne pendant vingt minutes |
| **Problème** | La cause sous-jacente, ou présumée, d'un ou plusieurs incidents | Une fuite de mémoire dans le service de réservation |
| **Erreur connue** | Un problème dont la cause a été identifiée, généralement avec une solution de contournement consignée | Une fuite de mémoire est comprise ; redémarrer le service chaque nuit évite les pannes jusqu'à sa correction |

Une **solution de contournement** est une manière de réduire ou d'éviter l'impact d'un incident ou d'un problème sans supprimer sa cause. La gestion des problèmes vise à supprimer la cause, et la gestion des incidents à rétablir le service (voir Sujet 3.2 — Gestion des incidents).

### Réactif et proactif

L'article sur l'analyse des causes racines distingue en termes généraux les approches réactives et proactives. Le travail réactif traite vite les symptômes. Le travail proactif vise à prévenir les problèmes et place la précision du diagnostic avant la rapidité. Dans la pratique ITSM, les deux existent : la gestion réactive des problèmes enquête sur les problèmes après les incidents, et la gestion proactive des problèmes cherche des schémas et des faiblesses avant qu'ils ne causent des incidents.

### Ce qu'est une cause racine

L'article définit une cause racine par un test pratique : un facteur est la cause racine d'un problème si le supprimer empêche le problème de se reproduire. Il distingue une cause racine des autres facteurs causaux. C'est une règle utile. Si vous supprimez un facteur et que le problème peut quand même revenir, vous avez trouvé un contributeur, pas la racine.

L'article avertit aussi des limites. Il dit que l'absence de données de surveillance, des volumes d'événements très élevés, des causes racines multiples et des enquêteurs qui s'arrêtent à une racine superficielle compliquent tous l'analyse. En informatique, note-t-il, la RCA manque souvent d'arbres de défaillance ou de spécifications de conception, si bien que « il n'y a pas de cause racine » est devenu un dicton courant. Pour les systèmes complexes, attendez-vous à plusieurs causes contributives et non à un unique coupable.

### Principes de l'analyse des causes racines

L'article liste des étapes générales :

1. Décrire clairement le problème.
2. Construire une chronologie depuis le fonctionnement normal jusqu'à la défaillance.
3. Séparer la cause racine des autres facteurs causaux.
4. Tracer un graphe causal reliant la cause racine au problème.

Il ajoute que les enquêteurs doivent regarder les défenses qui ont failli ou manqué (analyse des barrières), éviter les biais dans les pistes d'enquête, décider d'actions correctives et vérifier si ces actions ont été efficaces.

### Méthodes

L'article dit que, selon l'ISO/IEC 31010, la RCA peut utiliser les cinq pourquoi, l'analyse des modes de défaillance et de leurs effets (AMDE), l'analyse par arbre de défaillance, les diagrammes d'Ishikawa (en arêtes de poisson) et l'analyse de Pareto. Il attribue à Kaoru Ishikawa le diagramme causal qui porte son nom. Il qualifie aussi les méthodes en arêtes de poisson et des cinq pourquoi de « pas assez rigoureuses », une opinion qu'il n'appuie sur aucune source. Une lecture pratique : les méthodes simples sont de bons points de départ pour la discussion d'équipe, et les défaillances complexes ou à haut risque peuvent exiger des méthodes plus rigoureuses.

| Méthode | Ce qu'elle fait | Quand elle aide |
|---|---|---|
| **Cinq pourquoi** | Demande « pourquoi » à répétition pour passer d'un symptôme à une cause | Discussion rapide, au niveau de l'équipe, de chaînes de causes simples |
| **Diagramme d'Ishikawa (arêtes de poisson)** | Regroupe les causes possibles par catégorie | Remue-méninges sur de nombreuses causes possibles |
| **Analyse de Pareto** | Classe les causes par fréquence ou impact | Choisir quel problème récurrent traiter en premier |
| **Analyse par arbre de défaillance** | Cartographie les combinaisons de défaillances qui mènent à un résultat | Défaillances critiques pour la sûreté ou complexes |
| **AMDE** | Regarde à l'avance comment des pièces pourraient défaillir et quel en serait l'effet | Revue de conception proactive |

### Actions correctives efficaces

L'article dit que les actions correctives qui n'ajoutent que de la paperasse ou de la formation sont moins efficaces. En pratique, cela suggère de privilégier les actions qui changent le système : automatiser une vérification, supprimer un mode de défaillance, ajouter un garde-fou, améliorer la surveillance. Une action comme « rappeler aux ingénieurs d'être prudents » est faible.

### Le principe d'absence de blâme

L'enquête sur un problème partage le principe d'absence de blâme décrit pour les postmortems dans le livre SRE de Google : identifier les causes contributives sans blâmer les individus, car les personnes peuvent être formées et les systèmes peuvent être réparés (voir Sujet 3.2 — Gestion des incidents). Une enquête qui trouve « erreur humaine » et s'arrête s'est généralement arrêtée trop tôt. Demandez ce qui a rendu l'erreur possible et ce qui la rendrait plus difficile.

### La gestion des problèmes dans un flux agile

Une approche agile pratique ressemble à ceci :

- Les incidents et les postmortems créent des problèmes candidats.
- Une courte revue régulière regroupe les incidents répétés et classe les problèmes par impact et fréquence.
- Les problèmes choisis entrent dans le carnet comme des éléments ordinaires, avec un responsable, une hypothèse et une limite de temps pour l'enquête.
- Les solutions de contournement sont consignées comme erreurs connues pour que le centre de services et les ingénieurs d'astreinte puissent les utiliser (voir Sujet 3.9 — Gestion des connaissances).
- Les corrections sont petites et testées, publiées de la manière habituelle, et vérifiées ensuite pour voir si les incidents ont cessé.

## Bonnes pratiques

1. **Reliez les incidents aux problèmes.** Consignez quels incidents semblent avoir la même cause. Sans liens, vous ne pouvez pas voir le schéma, et sans le schéma, vous ne pouvez pas plaider pour une correction.
2. **Passez les incidents en revue pour y chercher des schémas, selon un calendrier.** Une fois par mois, regroupez les incidents récents par service et cause probable et choisissez les quelques premiers. Pensez à la manière de Pareto : quelques causes expliquent généralement une grande partie de la douleur.
3. **Traitez les problèmes comme des éléments du carnet.** Donnez à chaque problème retenu un responsable, un énoncé et une limite de temps pour l'enquête, et laissez-le rivaliser avec le reste du travail. Une file séparée de « problèmes » que personne ne planifie est un cimetière.
4. **Commencez par un énoncé clair du problème.** Écrivez ce qui se passe, où, à quelle fréquence et quel est l'impact, avec des faits. Des énoncés vagues mènent à des corrections vagues.
5. **Construisez une chronologie.** Recueillez journaux, changements et événements depuis le fonctionnement normal jusqu'à la défaillance. L'article liste la chronologie comme une étape centrale, et beaucoup de surprises viennent de changements que personne n'avait reliés.
6. **Cherchez la cause qui, supprimée, empêche la récurrence.** Utilisez le test de l'article. Quand l'équipe propose une cause, demandez si la supprimer empêcherait le problème de revenir.
7. **Attendez-vous à plus d'une cause.** Cherchez des facteurs contributifs dans la conception, la surveillance, le processus et la connaissance des personnes. Ne vous arrêtez pas à la première cause plausible.
8. **Choisissez les méthodes selon le problème.** Utilisez les cinq pourquoi ou les arêtes de poisson pour une discussion rapide d'équipe, et des outils plus rigoureux pour les défaillances graves ou complexes.
9. **Préférez les actions qui changent le système.** Privilégiez l'automatisation, les garde-fous et une meilleure surveillance plutôt que les rappels et la formation. Consignez l'effet attendu pour pouvoir le vérifier.
10. **Consignez les solutions de contournement comme erreurs connues.** Écrivez à quoi ressemble le symptôme, la solution de contournement et qui est responsable de la correction. Partagez l'enregistrement avec le centre de services et le personnel d'astreinte.
11. **Vérifiez que la correction a fonctionné.** Après une correction, surveillez la récurrence pendant une durée convenue et rapportez le résultat. Une correction jamais vérifiée est un espoir.
12. **Partagez ce que vous trouvez.** Publiez de courts résumés des problèmes et des corrections pour que d'autres équipes reconnaissent des schémas semblables.

## Questions à discuter avec votre équipe

**Quel incident revient sans cesse, et quelle en est la cause selon nous ?**

Demandez aux gens de nommer l'incident dont ils sont le plus las. Comparez les réponses. Demandez ensuite ce que chacun croit être la cause et comment il le sait. Les croyances diffèrent souvent, ce qui montre le peu de preuves partagées. L'animateur peut demander quelles données trancheraient. Choisissez-en un à examiner avec une limite de temps.

**Comment savons-nous si deux incidents ont la même cause ?**

Regardez comment les incidents sont consignés et demandez si quelqu'un pourrait trouver rapidement des incidents liés. Les réponses typiques sont du texte libre, la mémoire ou la chance. Demandez quel petit changement des enregistrements aiderait, comme un champ pour le service et la cause probable. Convenez d'un.

**Que faisons-nous quand nous trouvons une « erreur humaine » dans une revue ?**

Demandez un exemple récent. La question est de savoir si la revue s'est arrêtée là. Discutez de ce qui, dans le système, a rendu l'erreur possible : instructions floues, outil déroutant, pression du temps. Comparez avec l'idée qu'on ne peut pas réparer les gens mais qu'on peut réparer les systèmes. Convenez d'une question à poser à chaque fois, comme « Qu'est-ce qui a rendu cela facile à faire ? ».

**Quelles actions de revues passées ont réellement changé le système, et lesquelles n'ont fait qu'ajouter un rappel ?**

Listez les actions des cinq dernières revues et marquez chacune comme changement du système ou rappel. L'article dit que les rappels et la paperasse sont moins efficaces. Demandez pourquoi les rappels sont si courants : ils sont rapides, peu coûteux et ressemblent à de l'action. Choisissez un rappel à remplacer par une correction plus solide.

**Où avons-nous des solutions de contournement que personne n'a notées ?**

Demandez aux ingénieurs d'astreinte et aux analystes du centre quelles astuces ils utilisent. Chaque solution de contournement non écrite est un risque. Consignez-les comme erreurs connues avec symptôme, solution de contournement et responsable. L'animateur peut demander qui bénéficie de chaque enregistrement. Dressez une courte liste cette semaine.

**Comment saurions-nous qu'une correction a fonctionné ?**

Choisissez une correction récente et demandez quelle preuve l'a montré. Si la réponse est « plus de plaintes », demandez combien de temps vous avez attendu et ce que vous avez mesuré. Discutez d'une vérification simple : surveiller le symptôme précis pendant une durée donnée. Convenez de consigner la vérification avec chaque correction.

## En pratique : un exemple d'ITIL agile

Une entreprise de logistique de taille moyenne exploite un service de calcul d'itinéraires utilisé par ses chauffeurs et ses régulateurs. L'équipe plateforme de neuf personnes traite à peu près toutes les deux semaines le même incident : les calculs d'itinéraires expirent pendant dix à quinze minutes le matin puis se rétablissent. À chaque fois, l'ingénieur d'astreinte redémarre un processus de travail et l'incident est fermé. Les régulateurs se plaignent de ne pas pouvoir compter sur la planification du matin.

La responsable de l'équipe lance une revue mensuelle des incidents, en les regroupant par service et cause probable. Les expirations du matin arrivent en tête. Elle rédige un énoncé du problème à partir des enregistrements d'incidents : les expirations surviennent en semaine entre 7 h 00 et 7 h 30, durent dix à quinze minutes et touchent tous les régulateurs. L'équipe construit une chronologie qui inclut une importation de données planifiée à 7 h 00 et un changement récent qui a augmenté la taille de l'importation. Une discussion des cinq pourquoi suggère que l'importation sature la base de données. Elle essaie la correction évidente, ajouter de la capacité, mais les incidents continuent à un rythme plus faible ; elle conclut donc que la capacité était un contributeur et non la racine.

Un second regard découvre que l'importation verrouille une table que les calculs d'itinéraires lisent aussi. L'équipe déplace l'importation vers un réplica distinct et ajoute une alerte sur les attentes de verrous. Elle consigne le redémarrage comme erreur connue avec le symptôme et la solution de contournement jusqu'à la mise en ligne de la correction, et convient de surveiller le symptôme pendant six semaines. Les incidents cessent. Certains problèmes subsistent : une autre importation d'un partenaire tourne encore à l'heure de pointe, et l'équipe n'a pas encore convaincu le partenaire de changer son calendrier. Elle met le calendrier du partenaire à l'ordre du jour de la prochaine planification et maintient l'alerte sur les verrous.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison détiennent la connaissance pour corriger les causes. Intégrez à votre carnet les principaux problèmes et traitez-les comme un travail qui gagne la confiance. Ajoutez surveillance et tests qui auraient révélé la cause, et rédigez l'erreur connue dans un langage que le centre de services peut utiliser.

### Équipes de service et d'exploitation

Les équipes d'exploitation voient les incidents et tiennent les enregistrements. Reliez les incidents, menez la revue mensuelle et consignez les solutions de contournement comme erreurs connues. Transmettez les preuves aux équipes de livraison sous une forme qui plaide le dossier, avec fréquence, impact et chronologie.

### Direction et gouvernance

Les dirigeants décident si la correction des problèmes obtient du temps. Demandez les principaux problèmes récurrents et ce qui est fait à leur sujet. Résistez à l'idée de compter les incidents fermés comme mesure de succès, car cela récompense la réparation. Soutenez les corrections qui demandent de l'effort mais suppriment la douleur.

### Clients et utilisateurs

Les clients et utilisateurs profitent de l'arrêt des défaillances répétées. Signalez les problèmes récurrents avec dates et effets, car les schémas aident l'équipe. Demandez aux fournisseurs ce qu'ils ont fait au sujet des causes de pannes répétées, et attendez une réponse qui dépasse « nous l'avons redémarré ».

## Modes d'échec courants

- **Réparer sans supprimer.** Les incidents sont fermés et reviennent. À la place, reliez les répétitions à un problème et corrigez la cause.
- **Une file de problèmes que personne ne planifie.** Les problèmes attendent indéfiniment. À la place, mettez les problèmes retenus dans le carnet avec responsables et limites de temps.
- **S'arrêter à l'erreur humaine.** La revue se termine avec quelqu'un à blâmer. À la place, demandez ce qui a rendu l'erreur possible et corrigez le système.
- **Des actions faibles.** Rappels et formation remplacent les changements du système. À la place, préférez l'automatisation, les garde-fous et une meilleure surveillance.
- **Chercher une cause racine unique.** L'équipe insiste sur un seul coupable. À la place, acceptez plusieurs causes contributives et traitez les plus efficaces.
- **Aucune vérification que la correction a fonctionné.** Le problème est clos à la livraison. À la place, définissez un moyen de voir si le symptôme revient.
- **Solutions de contournement non écrites.** La connaissance reste chez les individus. À la place, consignez les erreurs connues et partagez-les.
- **Culte des méthodes.** Les équipes débattent des techniques. À la place, choisissez les méthodes selon le problème et dépensez l'effort sur les preuves.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Relier et prioriser | Les incidents ne sont pas reliés | Certaines équipes notent les répétitions | Les incidents sont reliés à des problèmes et revus pour y chercher des schémas selon un calendrier | Les problèmes sont classés par impact et fréquence mesurés | Les priorités des problèmes sont partagées entre équipes et fournisseurs |
| Enquête | L'enquête est informelle | Certaines équipes utilisent des méthodes simples | Une approche écrite avec chronologies et preuves est utilisée | La qualité et la durée des enquêtes sont revues | Les enquêtes couvrent équipes et fournisseurs avec des données partagées |
| Action corrective | Les corrections sont ponctuelles ou des rappels | Certaines corrections changent le système | Les actions sont choisies pour leur effet, avec responsables et dates | Les effets sont vérifiés et la récurrence mesurée | Les corrections se diffusent à des systèmes similaires dans l'organisation |
| Erreurs connues et connaissance | Les solutions de contournement ne sont pas écrites | Certaines sont consignées par des individus | Les erreurs connues sont consignées et partagées avec le centre et l'astreinte | L'usage et l'exactitude des erreurs connues sont suivis | Les erreurs connues sont partagées avec utilisateurs, fournisseurs et partenaires |

## Liste de contrôle

- [ ] Les incidents qui semblent partager une cause sont reliés.
- [ ] Une revue régulière regroupe les incidents et choisit les principaux problèmes récurrents.
- [ ] Les problèmes retenus sont dans le carnet avec responsables et limites de temps.
- [ ] Chaque problème a un énoncé écrit avec des faits.
- [ ] Une chronologie est construite pour chaque enquête.
- [ ] Les revues demandent ce qui, dans le système, a permis toute erreur humaine.
- [ ] Les actions privilégient les changements du système sur les rappels, avec l'effet attendu consigné.
- [ ] Les solutions de contournement sont consignées comme erreurs connues et partagées avec le centre et le personnel d'astreinte.
- [ ] Chaque correction a une vérification de récurrence sur une durée convenue.
- [ ] Des résumés des problèmes et des corrections sont partagés avec d'autres équipes.

## Prompts d'IA

**Objectif : trouver dans vos enregistrements les incidents répétés et les problèmes candidats.**

```text
Ci-dessous figurent les descriptions de [nombre] incidents des [période] dernières, avec les dates et le service touché : [collez des descriptions anonymisées, une par ligne].

Regroupez les incidents qui semblent pouvoir partager une cause, en vous fondant uniquement sur ce qui est écrit. Pour chaque groupe, listez les incidents, donnez une description en une phrase du symptôme commun et dites quel est votre degré de confiance et pourquoi (faible, moyen, élevé). Listez les incidents qui ne rentrent dans aucun groupe. Ne devinez pas de causes techniques au-delà du texte. Suggérez trois questions que l'équipe peut poser pour tester chaque groupe. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger un énoncé clair du problème à partir de preuves.**

```text
Aidez-moi à rédiger un énoncé du problème.

Ce que nous observons, avec dates et effectifs : [collez des faits].
Ce qui est touché et qui est touché : [décrivez].
Ce que nous savons de la date de début et de ce qui a changé à ce moment-là : [collez, ou écrivez « inconnu »].
Ce que nous avons déjà essayé : [collez].

Rédigez un énoncé du problème de trois à cinq phrases qui décrit ce qui se passe, où, à quelle fréquence et l'impact, sans nommer de cause. Listez ensuite les faits dont nous avons encore besoin et où les trouver. Marquez tout ce qui est une hypothèse. Ne suggérez pas de causes comme des faits. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une séance de cinq pourquoi et consigner la chaîne de raisonnement.**

```text
Aidez-moi à préparer une discussion des cinq pourquoi pour ce problème : [collez l'énoncé du problème].

Faits dont nous disposons : [listez les preuves comme journaux, chronologies et changements].

Préparez : une première question « pourquoi » ancrée dans les preuves, un modèle où chaque réponse consigne la preuve qui l'appuie et un rappel de ramifier quand plusieurs réponses sont possibles. Mettez-moi en garde contre l'arrêt à l'erreur humaine. Après la séance, je collerai les notes : n'inventez pas vous-même les réponses. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : évaluer si les actions correctives proposées changent le système.**

```text
Voici les actions proposées après notre revue : [collez une liste].

Pour chacune, dites si elle change le système (par exemple automatise une vérification, supprime un mode de défaillance, ajoute un garde-fou, améliore la surveillance) ou si elle repose sur la mémoire des gens ou sur la formation, et donnez une phrase de raisonnement à partir du seul texte. Pour chaque action de type rappel, suggérez une alternative plus solide sous forme de question pour l'équipe. Suggérez comment nous pourrions vérifier si chaque action a fonctionné, sans inventer de chiffres. Listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md) : à utiliser pour guider une enquête depuis un énoncé clair du problème jusqu'à une cause testée.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md) : à utiliser pour faire un remue-méninges des causes possibles par catégorie avec une équipe.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md) : à utiliser pour exposer comment causes et effets se relient dans une défaillance compliquée.
- [postmortem](../../../../skills/postmortem/SKILL.md) : à utiliser pour mener la revue qui identifie les problèmes candidats.
- [six-sigma](../../../../skills/six-sigma/SKILL.md) : à utiliser quand vous avez besoin de méthodes fondées sur les données pour analyser la variation ou les défauts récurrents.

## Sources principales

- **Root cause analysis** (Wikipedia) : une vue d'ensemble générale de la méthode, des principes et des limites, avec l'ISO/IEC 31010 citée pour les méthodes.
- **Postmortem Culture : Learning from Failure** (*Site Reliability Engineering*, Google, sre.google) : l'approche sans blâme de l'apprentissage à partir des défaillances.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google) : comment le traitement des incidents alimente l'analyse ultérieure.
- **Ishikawa diagram** et **Five whys** (Wikipedia) : contexte sur deux méthodes simples courantes.

## Références

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture : Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
