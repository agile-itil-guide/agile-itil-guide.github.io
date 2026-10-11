# Gestion des incidents

**La gestion des incidents rétablit un service dégradé aussi vite que c'est sûr, et l'habitude agile qui la fait fonctionner est celle de rôles clairs sous pression suivis d'une revue sans blâme qui transforme chaque incident en changement.**

## Pourquoi c'est important

Les incidents sont le moment où un service est jugé. Les utilisateurs ne se souviennent pas des mois de bonne disponibilité ; ils se souviennent de la panne et de la manière dont elle a été traitée. Une équipe qui a défini à l'avance qui fait quoi, comment elle communique et quand elle appelle à l'aide rétablit le service plus vite et fait moins d'erreurs qu'une équipe qui improvise.

Les équipes agiles qui exploitent ce qu'elles construisent traitent souvent les incidents de façon informelle. Cela fonctionne jusqu'à ce qu'un incident soit grand, touche plusieurs équipes ou survienne la nuit. Alors l'absence de rôles et de traces se voit : les ingénieurs se jettent sur le problème technique, personne ne prévient les clients et deux personnes font des changements contradictoires. La pratique ITSM de gestion des incidents, avec des pratiques issues de l'ingénierie de la fiabilité des sites, offre des manières éprouvées de l'éviter.

L'[article de Wikipédia sur la gestion des incidents](https://en.wikipedia.org/wiki/Incident_management) couvre plusieurs domaines, de l'intervention d'urgence à la sécurité informatique. Pour la gestion des services informatiques, il dit que le but est de rétablir le service normal dans le niveau de service convenu aussi vite que possible, cite ITIL 2011 pour définir un incident comme une interruption non planifiée d'un service informatique ou une baisse de sa qualité, et liste trois difficultés : le bruit des alertes, la résolution longue des problèmes et la difficulté de prévoir les pannes. Pour le détail, ce sujet s'appuie largement sur deux chapitres du livre *Site Reliability Engineering* de Google, qui décrivent une approche de commandement des incidents et des postmortems sans blâme issus de la pratique d'une grande organisation. Considérez ces chapitres comme une approche bien documentée, pas comme la seule.

## Concepts clés

### Ce qu'est un incident

Un **incident**, dans l'usage ITSM, est une interruption non planifiée d'un service ou une baisse de sa qualité. L'article sur l'ITSM inclut aussi une interruption « potentielle ». Un incident n'est pas la même chose qu'un **problème**, qui est la cause sous-jacente, ni qu'une **demande de service**, qui est une requête courante (voir Sujet 3.3 — Gestion des problèmes et Sujet 3.6 — Gestion des demandes de service). Garder les trois séparés compte parce que chacun est géré avec un but différent : rétablir le service, supprimer les causes et satisfaire la demande courante.

### Le but : rétablir le service, préserver les preuves

Le premier but de la gestion des incidents est de rétablir le service. Le chapitre SRE sur la gestion des incidents en ajoute un second : préserver les preuves nécessaires pour trouver plus tard la cause racine. Les bonnes pratiques du chapitre disent de donner la priorité au rétablissement du service et à la préservation des preuves, dans cet esprit. Corriger la cause peut venir plus tard, dans la gestion des problèmes.

### Pourquoi les incidents non gérés tournent mal

Le chapitre SRE, écrit par Andrew Stribblehill, utilise un long exemple d'ingénieur d'astreinte dont la panne se transforme en défaillance totale. Il nomme trois dangers des incidents non gérés :

- **Une concentration aiguë sur le problème technique.** Les ingénieurs absorbés par une correction perdent de vue l'atténuation et le tableau d'ensemble.
- **Une mauvaise communication.** Personne ne sait ce que font les autres et les parties prenantes restent mal informées.
- **Le travail en franc-tireur.** Des changements non coordonnés, comme un déploiement de dernière minute, aggravent la situation.

### Des rôles sous pression

Le chapitre fonde son approche sur l'Incident Command System, issu de l'intervention d'urgence (l'article de Wikipédia sur la gestion des incidents le mentionne aussi). Ses idées principales :

| Rôle | Ce qu'il fait |
|---|---|
| **Commandant d'incident** | Détient l'état de haut niveau, structure la réponse, lève les obstacles et tient tout rôle non encore délégué |
| **Responsable des opérations** | Applique les outils au problème ; seule l'équipe des opérations modifie le système pendant un incident |
| **Responsable de la communication** | Est le visage public de la réponse ; émet des points d'étape périodiques et tient à jour le document de l'incident |
| **Responsable de la planification** | Traite les sujets de plus long terme comme ouvrir des bogues, organiser les relais et suivre les écarts par rapport à la normale pour pouvoir annuler les changements |

Le chapitre appelle ce principe une séparation récursive des responsabilités. Des rôles clairs donnent de l'autonomie, car les personnes n'ont pas à douter de leurs collègues, et une personne débordée demande plus de monde et délègue des parties du travail. Les relais entre commandants sont explicites et acquittés.

### Le document d'incident en direct

Le chapitre dit que le devoir le plus important du commandant est de tenir un document vivant de l'état de l'incident, idéalement modifiable par plusieurs personnes à la fois. Il peut être désordonné mais doit rester utile, avec l'information clé en haut, et il est conservé pour l'analyse ultérieure. Un canal partagé ou une salle physique sert de poste de commandement.

### Quand déclarer un incident

Le chapitre recommande de déclarer un incident tôt, et non des heures après le début d'un problème qui s'aggrave. Il suggère de traiter un événement comme un incident si une deuxième équipe doit intervenir pour le corriger, si la panne est visible des clients, ou s'il reste non résolu après une heure d'analyse concentrée. Ce sont des règles empiriques d'une organisation. Vos propres seuils doivent refléter vos services et vos utilisateurs.

### Priorité et gravité

Les sources lues pour ce guide ne définissent pas de niveaux de priorité ou de gravité, et l'article de Wikipédia n'en énonce aucun. En pratique, les équipes définissent des niveaux à partir de l'impact sur les utilisateurs et de l'urgence du besoin, et décident à l'avance qui est appelé à chaque niveau. Gardez le dispositif court, avec des exemples, et vérifiez-le en l'appliquant à d'anciens incidents.

### Communication

La communication a deux publics. Les intervenants doivent connaître l'état et qui fait quoi. Les parties prenantes et les utilisateurs doivent savoir ce qui est touché, ce qui est fait et quand attendre le prochain point d'étape. Le responsable de la communication du chapitre SRE sert le second public et tient le journal pour le premier. Pour les pannes visibles du public, un plan de communication en situation de crise est utile (voir la compétence de communication de crise ci-dessous).

### Postmortems sans blâme

Le chapitre SRE sur la culture du postmortem expose la moitié consacrée à l'apprentissage. Un postmortem consigne l'incident, son impact, l'atténuation, les causes racines et les actions de suivi. Ses buts sont de documenter l'incident, de comprendre toutes les causes racines qui y ont contribué et de mettre en place des actions préventives efficaces. Il est sans blâme : il identifie les causes contributives sans blâmer les individus ou les équipes et suppose que chacun « avait de bonnes intentions et a fait la bonne chose avec l'information dont il disposait ». Selon les termes du chapitre : « On ne peut pas "réparer" les gens, mais on peut réparer les systèmes et les processus. »

Le chapitre suggère de définir à l'avance des déclencheurs de postmortem, comme une indisponibilité visible des utilisateurs au-delà d'un seuil, toute perte de données, une intervention d'astreinte comme un retour arrière, un temps de résolution au-dessus d'un seuil ou une défaillance de la surveillance. Il dit aussi qu'« un postmortem non revu pourrait aussi bien n'avoir jamais existé », et recommande donc des séances de revue régulières et un dépôt partagé. Il décrit des activités de construction de culture comme une lettre d'information mensuelle, des clubs de lecture et une « Roue de l'infortune » où d'anciens incidents sont rejoués.

### Incidents majeurs

Beaucoup de pratiques ITSM définissent un **incident majeur** comme un incident exigeant une réponse plus formelle que d'habitude. Les sources lues ici ne le définissent pas ; faites-le donc avec vos mots : par exemple, un incident qui touche beaucoup d'utilisateurs ou un service critique et nécessite une réponse coordonnée entre équipes. L'essentiel est que les gens sachent à l'avance ce qui change : qui commande, qui est appelé, à quelle fréquence les points d'étape sortent.

### Incidents et livraison continue

Les incidents découlent souvent de changements récents. Les équipes agiles sont bien placées pour en apprendre parce qu'elles livrent souvent et ont des boucles de retour courtes. L'apprentissage a besoin d'une voie : les actions de postmortem vont au carnet avec des responsables et des dates, et les incidents récurrents vont à la gestion des problèmes. Sans cette voie, le traitement des incidents devient une routine de réparation.

## Bonnes pratiques

1. **Décidez à l'avance de ce qui compte comme un incident.** Écrivez une courte définition avec des exemples et abaissez le seuil de déclaration. La règle empirique du chapitre SRE est de déclarer tôt quand une deuxième équipe est nécessaire, que les clients peuvent voir le problème ou qu'une heure d'analyse ne l'a pas résolu.
2. **Définissez quelques niveaux de gravité avec des exemples.** Fondez-les sur l'impact sur les utilisateurs et dites qui est appelé à chaque niveau. Testez le dispositif sur d'anciens incidents et ajustez.
3. **Attribuez les rôles au début de chaque incident.** Nommez un commandant d'incident, un responsable des opérations et un responsable de la communication. Dans de petites équipes, une personne peut tenir plus d'un rôle ; dites-le à voix haute.
4. **Séparez corriger de coordonner.** Les personnes qui modifient le système ne doivent pas aussi répondre aux questions. Laissez le commandant coordonner et le responsable de la communication informer.
5. **Tenez un registre en direct.** Utilisez un seul document ou canal partagé avec horodatages, décisions et changements effectués. Il soutient les relais et fournit sa matière au postmortem.
6. **N'autorisez que les changements autorisés.** Le chapitre SRE dit que seule l'équipe des opérations devrait modifier le système pendant un incident. Dites qui peut changer quoi et demandez aux autres de parler au commandant.
7. **Communiquez selon un calendrier.** Convenez de l'intervalle de point d'étape pour chaque gravité et tenez-le, même quand il n'y a rien de nouveau. Le silence engendre l'inquiétude et des questions en double.
8. **Passez le relais explicitement.** Quand un commandant ou un intervenant est remplacé, dites-le à voix haute et faites acquitter par l'autre personne. Des relais flous perdent du contexte.
9. **Entraînez-vous.** Exécutez le processus d'incident sur de petits événements et lors d'exercices, pour que les rôles soient familiers avant une panne grave. Faites tourner les personnes dans les rôles.
10. **Tenez un postmortem sans blâme quand vos déclencheurs sont atteints.** Rédigez-le avec les personnes concernées, concentrez-vous sur les causes contributives et les corrections du système et partagez-le largement (voir la compétence postmortem ci-dessous).
11. **Transformez les actions en éléments du carnet.** Donnez à chaque suite un responsable et une date et revoyez-les à une réunion régulière. Un postmortem non revu ne produit aucun changement.
12. **Transmettez les preuves à la gestion des problèmes.** Reliez les incidents répétés à un enregistrement de problème, pour que les causes soient supprimées et non seulement réparées (voir Sujet 3.3 — Gestion des problèmes).

## Questions à discuter avec votre équipe

**Que faisons-nous dans les dix premières minutes d'un incident, et qui décide ?**

Parcourez le dernier incident significatif minute par minute. Notez qui a pris la tête, qui a communiqué et qui a changé quoi. Beaucoup d'équipes constatent que les rôles étaient supposés et non convenus. L'animateur peut demander ce qui se serait passé si le responsable habituel avait été absent. Poursuivez en convenant de la façon dont les rôles sont attribués la prochaine fois.

**Quand appelons-nous quelque chose un incident, et quand attendons-nous ?**

Recueillez des exemples d'événements déclarés tard. Demandez ce qui retenait les gens : ne pas vouloir déranger les autres, l'incertitude ou la peur du blâme. Comparez avec les déclencheurs du chapitre SRE. Convenez d'un seuil et d'une manière de déclarer un incident sans histoires.

**Comment nos utilisateurs apprennent-ils ce qui se passe pendant une panne, et à quelle fréquence ?**

Regardez la dernière panne du côté de l'utilisateur. Demandez qui les a informés, ce qu'on leur a dit et combien de temps a duré le silence. Souvent la réponse est un long silence suivi d'une brève note. Demandez qui devrait être responsable de la communication et ce que devrait dire le premier message. Convenez d'un modèle et d'un rythme de points d'étape.

**Qu'a changé notre dernier postmortem, et comment le savons-nous ?**

Demandez les actions, les responsables et l'état. Si aucune n'a été menée à terme, demandez pourquoi : pas de responsable, pas de temps ou valeur floue. Cherchez si les postmortems sont lus par quelqu'un au-delà de l'équipe. Convenez d'une séance régulière pour revoir les actions ouvertes.

**Les gens se sentent-ils en sécurité pour dire ce qu'ils ont mal fait ?**

Cette question teste l'absence de blâme. Demandez aux gens de décrire ce qu'ils ressentiraient à écrire leur propre erreur dans un postmortem. Écoutez la peur des conséquences et les exemples de moments où le blâme est survenu. N'exigez pas l'ouverture ; demandez ce que l'équipe et les dirigeants devraient faire pour la rendre sûre. Choisissez une étape visible.

**Comment nous entraînons-nous, et quand l'avons-nous fait pour la dernière fois ?**

Demandez si l'équipe a mené un exercice ou un incident simulé et ce qu'elle en a appris. Si jamais, discutez d'un petit début, comme rejouer un ancien incident en une heure. Le chapitre SRE mentionne l'entraînement du processus sur des changements courants et des exercices de reprise après sinistre. Planifiez-en un pour le prochain trimestre.

## En pratique : un exemple d'ITIL agile

Le portail client d'un fournisseur régional d'électricité permet aux ménages de signaler des pannes et de consulter leurs factures. Une équipe de onze personnes le construit et l'exploite, avec un tableau d'astreinte de quatre. Pendant une tempête, le trafic de signalements explose, le portail ralentit puis tombe. L'ingénieur d'astreinte tente un redémarrage de la base de données, un deuxième ingénieur déploie simultanément une correction de configuration et un troisième annule une version antérieure. Le portail revient après trois heures, et le centre d'appels, qui n'avait jamais été prévenu, a reçu des milliers d'appels furieux.

Lors du postmortem, l'équipe voit les trois dangers du chapitre SRE : tout le monde s'est concentré sur la correction technique, personne n'a communiqué et les changements sont entrés en collision. Elle rédige un processus d'incident d'une page. N'importe qui peut déclarer un incident, et une deuxième équipe impliquée, la visibilité par les clients ou une heure sans progrès obligent à le faire. L'ingénieur d'astreinte devient responsable des opérations, et un tableau désigne un commandant d'incident et un responsable de la communication issus de l'équipe élargie. Seul le responsable des opérations modifie la production. Le responsable de la communication envoie un point d'étape toutes les 30 minutes au centre d'appels et à la salle de contrôle. Un canal partagé tient le journal en direct.

À la tempête suivante, le portail ralentit de nouveau, un incident est déclaré en dix minutes et le service est rétabli en 70 minutes, avec des points d'étape envoyés tout du long au centre d'appels. Des problèmes subsistent. Le tableau des commandants a des trous pendant les congés, et l'équipe constate qu'une dépendance, un fournisseur de messages texte, n'a aucun contact d'escalade. Le postmortem produit deux actions avec responsables : compléter le tableau avec une solution de repli, et convenir d'une voie d'escalade avec le fournisseur. L'équipe planifie un rejeu de l'incident de tempête pour les nouveaux membres du tableau.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison causent et corrigent beaucoup d'incidents. Rejoignez le tableau d'astreinte ou apportez-lui un soutien direct, et traitez les actions de postmortem comme des éléments du carnet. Intégrez à vos versions les moyens de détecter et d'annuler les problèmes. Participez aux exercices pour que les rôles soient familiers.

### Équipes de service et d'exploitation

Les équipes d'exploitation possèdent le processus. Gardez-le court et exercé, donnez aux gens l'autorité d'agir et tenez des registres que d'autres peuvent utiliser. Partagez ce que vous apprenez avec les équipes de livraison et faites remonter les leçons dans la gestion des problèmes et la planification.

### Direction et gouvernance

Les dirigeants fixent la culture. Demandez des postmortems et lisez-les, félicitez les personnes qui signalent des problèmes et refusez de chercher un coupable. Protégez le temps pour s'entraîner et mener les actions à terme. Décidez qui peut dépenser de l'argent ou invoquer le plus haut niveau de réponse.

### Clients et utilisateurs

Les clients et utilisateurs ont besoin de points d'étape honnêtes et rapides et d'une manière claire de signaler les problèmes. Demandez à votre fournisseur ce à quoi vous pouvez vous attendre pendant une panne et comment vous serez informé. Quand on vous partage un postmortem, lisez-le pour savoir ce que le fournisseur va changer.

## Modes d'échec courants

- **Pas de rôles.** Tout le monde travaille sur la correction technique et personne ne coordonne ni ne communique. À la place, nommez à chaque fois un commandant d'incident, un responsable des opérations et un responsable de la communication.
- **Déclarer tard.** Les gens attendent que le problème soit grave. À la place, fixez des seuils bas et clairs et banalisez la déclaration.
- **Franc-tireur.** Plusieurs personnes modifient le système en même temps. À la place, n'autorisez les changements que par le responsable des opérations.
- **Silence.** Utilisateurs et parties prenantes n'entendent rien. À la place, convenez d'un intervalle de point d'étape et d'un modèle.
- **Blâme.** Un postmortem cherche la personne en faute. À la place, demandez ce qui, dans le système, a permis l'erreur et corrigez cela.
- **Des postmortems qui ne mènent nulle part.** Les actions n'ont pas de responsables. À la place, mettez-les dans le carnet avec des dates et revoyez-les régulièrement.
- **Ne jamais s'entraîner.** La première utilisation du processus est un incident majeur. À la place, répétez sur de petits événements et lors d'exercices.
- **Traiter la réparation comme une résolution.** Le même incident revient. À la place, reliez les répétitions à la gestion des problèmes et corrigez la cause.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Détection et déclaration | Les incidents sont repérés par les plaintes d'utilisateurs | Il existe quelques alertes et certains incidents sont déclarés | Des seuils écrits et un dispositif simple de gravité sont utilisés de façon cohérente | Les délais de détection et de déclaration sont suivis et réduits | La détection et la déclaration sont partagées entre équipes et fournisseurs |
| Réponse et rôles | Les intervenants improvisent | Certaines équipes nomment un responsable | Rôles, relais et registre en direct sont la norme | Les délais de réponse et la performance des rôles sont revus | La réponse est coordonnée entre équipes et fournisseurs, avec des exercices conjoints |
| Communication | Les points d'étape sont ponctuels | Certains points d'étape vont à certains publics | Rythme de points d'étape et modèles existent pour chaque gravité | La ponctualité de la communication est mesurée et les utilisateurs interrogés | La communication est coordonnée avec clients et partenaires |
| Apprentissage | Les revues ne suivent que les pires incidents | Quelques postmortems sont rédigés | Des postmortems sans blâme suivent des déclencheurs définis, avec actions suivies | L'achèvement des actions et la récurrence sont mesurés | Les leçons sont partagées entre équipes et alimentent le changement dans toute l'organisation |

## Liste de contrôle

- [ ] Nous avons une courte définition d'un incident avec des exemples.
- [ ] Nous avons un petit dispositif de gravité avec des exemples d'impact sur les utilisateurs et des listes d'appel.
- [ ] Chaque incident commence par la désignation d'un commandant d'incident, d'un responsable des opérations et d'un responsable de la communication.
- [ ] Un registre en direct est tenu pour chaque incident.
- [ ] Seul le responsable des opérations désigné modifie la production pendant un incident.
- [ ] Les intervalles de points d'étape sont convenus pour chaque gravité.
- [ ] Les déclencheurs de postmortem sont écrits.
- [ ] Les postmortems sont sans blâme, partagés et revus.
- [ ] Chaque action de postmortem a un responsable et une date, et les actions ouvertes sont revues.
- [ ] Nous nous sommes exercés au processus au cours des six derniers mois.

## Prompts d'IA

**Objectif : rédiger un processus d'incident d'une page à partir de votre pratique actuelle.**

```text
Aidez-moi à rédiger un processus d'incident d'une page pour une équipe de [nombre] personnes qui exploitent [service].

Comment nous traitons aujourd'hui les incidents : [décrivez en quelques phrases].
Notre dispositif d'astreinte : [décrivez].
Qui doit être informé pendant un incident : [listez les publics].
Règles que nous devons respecter (contrats, réglementations), avec le texte de la source si vous l'avez : [collez, ou écrivez « aucune connue »].

Produisez un court processus avec : ce qui compte comme un incident, un dispositif simple de gravité avec des exemples d'impact sur les utilisateurs (laissez les seuils chiffrés comme [à convenir]), les rôles et ce que fait chacun, comment communiquer et quand tenir un postmortem. Marquez chaque élément qui est une hypothèse. N'inventez pas d'obligations. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : transformer un journal d'incident en brouillon de postmortem sans blâme.**

```text
Ci-dessous se trouve le journal d'un incident : [collez horodatages, messages et actions ; retirez les données personnelles].
Impact tel que nous le connaissons : [décrivez les utilisateurs touchés et pendant combien de temps, en n'utilisant que des faits].

Rédigez un brouillon de postmortem sans blâme avec : résumé, impact, chronologie, comment il a été détecté, comment il a été atténué, causes contributives (séparez le connu du soupçonné), ce qui a bien fonctionné, ce qui a mal fonctionné et les actions proposées avec un type suggéré (prévenir, détecter, répondre) mais sans responsables ni dates. Décrivez les actions des personnes de façon neutre, par rôles. N'inventez ni faits ni causes. Marquez les lacunes avec [INCONNU] et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger un point d'étape d'incident pour des parties prenantes non techniques.**

```text
Rédigez un point d'étape sur cet incident à l'intention de parties prenantes non techniques.

Faits : ce qui est touché : [décrivez] ; depuis quand : [heure] ; ce que nous savons de la cause : [ce qui est connu, ou « pas encore connue »] ; ce que nous faisons : [décrivez] ; quand viendra le prochain point d'étape : [heure].

Écrivez moins de 120 mots en langage simple. Dites ce que nous savons et ce que nous ne savons pas, sans deviner la cause ni l'heure du rétablissement. Ne promettez pas d'heure de résolution à moins que j'en aie donné une. Proposez deux versions : une pour les clients et une pour le personnel interne. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir un petit exercice d'incident.**

```text
Concevez un exercice d'incident de 60 minutes pour [nombre] personnes qui exploitent [service].

Base du scénario : [décrivez un ancien incident ou une défaillance plausible, en n'utilisant que les faits que vous voulez utiliser].
Rôles à exercer : commandant d'incident, responsable des opérations, responsable de la communication.
Contraintes : [par exemple pas d'utilisation des systèmes de production].

Donnez un plan minuté : briefing, le scénario libéré en trois étapes, indications pour chaque rôle et une brève revue avec des questions sur les rôles, la communication et les registres. N'utilisez pas d'accès réel à la production. Posez d'abord des questions de clarification s'il manque des informations, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md) : à utiliser pour rédiger le plan qui fixe les rôles, les seuils et la communication de votre équipe.
- [postmortem](../../../../skills/postmortem/SKILL.md) : à utiliser pour mener une revue sans blâme et consigner les actions après un incident.
- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour transformer les corrections connues en courtes procédures pour l'intervenant.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md) : à utiliser pour concevoir un tableau d'astreinte équitable avec soutien et relais.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md) : à utiliser pour planifier ce que vous dites aux utilisateurs, au personnel et au public pendant une panne majeure.

## Sources principales

- **Managing Incidents** (Andrew Stribblehill, dans *Site Reliability Engineering*, Google, sre.google) : le récit public le plus clair du commandement d'incident pour les équipes de service.
- **Postmortem Culture : Learning from Failure** (*Site Reliability Engineering*, Google, sre.google) : le plaidoyer pour les postmortems sans blâme, avec déclencheurs et idées de construction de culture.
- **Incident management** (Wikipedia) : une vue d'ensemble multi-domaines avec une section sur la gestion des services informatiques.
- **IT service management** (Wikipedia) : la définition de l'incident et la place du traitement des incidents dans le centre de services.

## Références

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture : Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
