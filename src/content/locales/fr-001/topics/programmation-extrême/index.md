# Programmation extrême

**La programmation extrême (XP) est la méthode agile la plus précise sur la pratique d'ingénierie, et ses habitudes de test d'abord, d'intégration continue et de propriété partagée du code sont ce qui rend sûr le changement fréquent d'un service en production.**

## Pourquoi c'est important

Le changement fréquent est le but de la livraison continue et l'inquiétude de la gestion des services. La façon de les concilier n'est pas plus de réunions d'approbation mais une meilleure capacité à savoir qu'un changement fonctionne avant qu'il n'atteigne les utilisateurs. La programmation extrême est la méthode agile qui en dit le plus sur la façon de bâtir cette capacité : écrire les tests d'abord, intégrer plusieurs fois par jour, garder la conception simple et partager la responsabilité du code.

Beaucoup d'équipes prennent les événements et les tableaux de Scrum et laissent de côté les pratiques d'ingénierie. Le résultat est une équipe qui planifie en sprints mais livre dans la crainte. Les pratiques d'XP sont la moitié manquante. Elles comptent pour quiconque doit exploiter le résultat, car un service construit avec des tests automatisés, de petites mises en production et une connaissance partagée est plus facile à supporter qu'un service construit par quelques personnes en gros lots non testés.

XP demande aussi à l'organisation quelque chose qu'on oublie facilement : un rythme durable, une équipe complète dotée de toutes les compétences nécessaires et un client réellement disponible. Ce sont des conditions de l'environnement de travail, pas seulement des habitudes de programmeurs. Ce sujet explique la méthode, les preuves de ses limites et la manière dont ses pratiques se relient à des pratiques ITIL comme l'habilitation des changements, la gestion des mises en production et la gestion des connaissances.

## Concepts clés

### D'où vient XP

Kent Beck a développé XP en travaillant sur le Chrysler Comprehensive Compensation System (C3), un projet de paie. Selon l'[article de Wikipédia sur la programmation extrême](https://en.wikipedia.org/wiki/Extreme_programming), Beck est devenu chef de projet en mars 1996 et y a affiné la méthode, avec Ward Cunningham comme influence majeure et Ron Jeffries rejoignant l'équipe pour la coacher. Son livre *Extreme Programming Explained* est paru en octobre 1999. Chrysler a annulé le projet C3 en février 2000 après le rachat de l'entreprise par Daimler-Benz.

L'article souligne que beaucoup de pratiques d'XP n'étaient pas nouvelles. Il mentionne le développement test d'abord dans le projet Mercury de la NASA au début des années 1960. Le geste d'XP a été de porter de bonnes pratiques à des niveaux « extrêmes » : si tester est bien, testez tout le temps ; si les revues sont bien, revoyez constamment en travaillant en binôme. Beck et Cunningham étaient parmi les 17 personnes qui ont écrit le Manifeste agile (voir Sujet 1.1 — Manifeste agile).

### Les cinq valeurs

XP énonce cinq valeurs :

| Valeur | Ce qu'elle signifie | Dans le travail de service |
|---|---|---|
| **Communication** | Construire une compréhension partagée entre développeurs, utilisateurs et clients, principalement en parlant et en gardant les conceptions simples | Développeurs et personnel d'exploitation parlent du comportement d'une mise en production avant sa sortie |
| **Simplicité** | Faire la chose la plus simple qui fonctionne et ne pas construire pour des besoins futurs hypothétiques | Moins de pièces mobiles à surveiller, sécuriser et expliquer |
| **Retour d'information** | Apprendre vite des tests, des clients et des propres estimations de l'équipe | Des résultats de tests rapides et la surveillance de la production raccourcissent le temps d'apprentissage |
| **Courage** | Refactoriser, jeter le code obsolète et persévérer face aux problèmes difficiles | Retirer un vieux composant que personne n'ose toucher |
| **Respect** | Respect des coéquipiers et de son propre travail | Revue sans blâme après les défaillances et charge d'astreinte équitable |

L'article note que le respect a été ajouté dans la deuxième édition d'*Extreme Programming Explained*, après les quatre valeurs d'origine.

### Les pratiques

L'article sur les pratiques d'XP regroupe douze pratiques en quatre ensembles. On les comprend mieux comme un système qui s'entretient lui-même.

| Groupe | Pratiques | But |
|---|---|---|
| **Retour d'information à petite échelle** | Programmation en binôme, jeu de la planification, développement piloté par les tests, équipe complète | Obtenir du retour en minutes ou en jours, pas en mois |
| **Processus continu** | Intégration continue, amélioration de la conception (refactorisation), petites mises en production | Garder le logiciel toujours prêt à être livré |
| **Compréhension partagée** | Norme de codage, propriété collective du code, conception simple, métaphore du système | Permettre à n'importe qui dans l'équipe de modifier n'importe quelle partie en sécurité |
| **Bien-être des programmeurs** | Rythme durable | Garder les personnes reposées et efficaces pendant des années |

Une brève description des principales :

- **Programmation en binôme :** deux personnes travaillent sur une tâche à un poste, l'une écrivant et l'autre relisant, et elles changent souvent de partenaire.
- **Développement piloté par les tests (TDD) :** le programmeur écrit d'abord un test qui échoue, puis écrit juste assez de code pour le faire passer.
- **Intégration continue (CI) :** les développeurs fusionnent leur travail dans le dépôt partagé toutes les quelques heures, de sorte que les problèmes d'intégration surgissent tôt.
- **Petites mises en production :** livrer un logiciel opérationnel par étapes fréquentes et petites pour que les clients voient l'avancement et réagissent.
- **Propriété collective du code :** n'importe quel membre de l'équipe peut modifier n'importe quelle partie du code.
- **Rythme durable :** éviter les heures supplémentaires régulières et ne jamais en autoriser deux semaines de suite.

### Controverses et limites

L'article consigne plusieurs critiques. Matt Stephens et Doug Rosenberg, dans un livre de 2003, ont soutenu que les pratiques d'XP dépendent les unes des autres, si bien que n'en adopter que certaines mine le processus. Des critiques ont aussi mis en doute le binôme comme façon normale de travailler, l'absence de grande conception initiale, le client sur site comme point de défaillance unique, et les demandes de changement informelles menant à des reprises et à une dérive du périmètre. P. McBreen, ainsi que Boehm et Turner, ont aussi écrit des évaluations critiques. L'article ajoute que les praticiens de l'agile considèrent beaucoup de ces critiques comme des malentendus.

À propos de l'échelle, l'article dit que l'Industrial XP, introduit en 2004, a étendu XP à des équipes plus grandes et distribuées avec 23 pratiques. Il rapporte aussi une affirmation, signalée comme nécessitant une citation, selon laquelle ThoughtWorks aurait connu un succès raisonnable sur des projets XP distribués allant jusqu'à soixante personnes. Lisez cette affirmation avec prudence, et voyez le Sujet 1.8 — Agilité à grande échelle pour la discussion plus large.

L'article ne traite ni du déploiement ni de la surveillance en production au-delà de l'intégration continue et des petites mises en production. XP dit peu de choses sur l'exploitation du logiciel. Vous l'apportez depuis la gestion des services, et vous utilisez XP pour rendre le transfert moins risqué.

### XP et la vision ITIL du changement

La pratique d'habilitation des changements d'ITIL (voir Sujet 3.4 — Habilitation des changements) veille à ce que les changements soient évalués, autorisés et planifiés afin que le risque soit maîtrisé. XP maîtrise le risque à un autre endroit : dans le code, par les tests, les petits pas et la connaissance partagée. Un changement petit, testé automatiquement, intégré et facile à annuler est un changement à plus faible risque selon toute évaluation raisonnable. Les deux visions s'accordent quand les preuves issues des pratiques d'XP servent à la décision de changement.

## Bonnes pratiques

1. **Adoptez les pratiques en ensemble.** L'objection des critiques selon laquelle les pratiques d'XP se soutiennent mutuellement est un avertissement utile. Tester sans intégrer, ou intégrer sans petits pas, donne moins que la somme. Introduisez-les ensemble quand vous le pouvez et apprenez de quelles pratiques dépendent les autres.
2. **Écrivez le test d'abord pour les changements qui comptent.** Pour un nouveau comportement ou une correction de bogue, écrivez un test qui échoue et montre le problème, puis corrigez. Le test reste comme garde-fou contre le retour du problème, ce qui est particulièrement utile pour les défauts qui ont causé des incidents.
3. **Intégrez plusieurs fois par jour.** Gardez les branches de courte durée et construisez et testez automatiquement à chaque fusion. Une construction cassée est la première priorité de l'équipe.
4. **Livrez par petites étapes.** Chaque petite mise en production porte moins de risque et est plus facile à comprendre et à annuler. Visez le plus petit intervalle que votre chaîne peut supporter en sécurité et raccourcissez-le à mesure que la confiance grandit.
5. **Refactorisez continuellement.** Améliorez un peu la conception chaque jour au lieu de la garder pour une réécriture. La suite de tests est ce qui rend cela sûr.
6. **Gardez la conception aussi simple que possible.** Construisez ce qui est nécessaire maintenant et retirez ce qui ne sert pas. Un système plus petit a moins à surveiller, à corriger et à expliquer.
7. **Partagez la propriété du code.** Laissez tout membre de l'équipe modifier n'importe quelle partie, soutenu par des tests et des normes partagées. Cela réduit la dépendance envers quelques experts, ce qui est aussi un risque de disponibilité pour le service.
8. **Travaillez en binôme sur le travail risqué ou peu familier.** Utilisez le binôme pour les changements délicats, l'intégration des nouveaux et le doublage d'astreinte. Considérez-le comme un outil pour diffuser la connaissance et attraper les erreurs, pas comme une règle pour chaque tâche.
9. **Gardez un rythme durable.** Planifiez le travail pour que les heures supplémentaires soient rares et ne se répètent pas semaine après semaine. Un ingénieur d'astreinte fatigué est un risque pour le service (voir Sujet 1.2 — Principes agiles sur le rythme).
10. **Faites du client un membre de l'équipe.** Trouvez un vrai utilisateur ou représentant d'utilisateurs capable de répondre aux questions pendant le travail. Rappelez-vous la critique selon laquelle une seule personne est un point de défaillance unique ; impliquez donc plus d'une voix.
11. **Écrivez si possible les critères d'acceptation sous forme de tests.** Transformez les attentes du client en vérifications automatisées exécutées à chaque construction. Elles documentent alors le comportement et le protègent en même temps.
12. **Incluez des vérifications d'exploitation dans les tests.** Ajoutez à la chaîne des vérifications de surveillance, de journalisation et de comportement de reprise, pour que la préparation à l'exploitation soit vérifiée à chaque changement (voir Sujet 3.5 — Gestion des mises en production et des déploiements).

## Questions à discuter avec votre équipe

**Comment savons-nous qu'un changement fonctionne avant qu'il n'atteigne les utilisateurs, et combien de temps faut-il pour le savoir ?**

Retracez les vérifications qu'un changement franchit entre l'ordinateur du développeur et la production. Comptez combien sont automatisées et combien de temps prend chacune. Les réponses typiques incluent un test manuel, une revue et un espoir. Demandez quelle vérification a attrapé le plus de problèmes et laquelle n'en a jamais attrapé. Poursuivez en choisissant une vérification manuelle à automatiser.

**Qui peut modifier quelles parties de notre système, et que se passe-t-il quand ces personnes sont absentes ?**

Listez les composants et les personnes qui comprennent chacun. Les composants qui n'ont qu'une personne derrière eux sont des risques pour le service. La propriété collective est la réponse d'XP, et elle a besoin de tests et de normes partagées pour être sûre. Demandez ce qu'une personne pourrait apprendre à une autre en un mois. L'animateur peut demander si des congés ou des maladies ont déjà retardé une correction.

**Où le binôme nous aiderait-il le plus, et où ne ferait-il que nous ralentir ?**

La programmation en binôme est controversée ; invitez donc des avis honnêtes. Interrogez les gens sur le meilleur et le pire binôme qu'ils aient connus. Le binôme aide souvent sur les systèmes peu familiers, les changements délicats et l'intégration. Il aide moins sur le travail courant qu'une personne fait bien seule. Convenez d'une situation où essayer le binôme pendant un mois et de la manière de l'évaluer.

**Qu'arrive-t-il à notre qualité sous pression, et que lâchons-nous en premier ?**

Demandez un coup de feu récent et ce qui a été sauté : tests, revues, documentation. Demandez ce qui s'est passé ensuite. Souvent le travail sauté est revenu sous forme d'incidents. Il s'agit de repérer le schéma et de décider à l'avance quelles pratiques sont protégées. Évitez le blâme et reliez la réponse au rythme durable.

**À quelle fréquence fusionnons-nous notre travail, et qu'est-ce qui nous fait attendre ?**

Demandez combien de temps vit une branche typique et ce qui la retient. Les longues branches reflètent généralement de gros changements, des revues lentes ou une construction peu fiable. Chacun appelle une correction différente. Demandez ce que l'équipe pourrait faire pour que fusionner en quelques heures soit la norme. Choisissez un obstacle à lever.

**Avons-nous un client ou un utilisateur disponible pour l'équipe, ou devinons-nous ce qu'il veut ?**

Demandez qui répond aux questions sur les besoins des utilisateurs et en combien de temps. Si la réponse est une longue chaîne, demandez quelle question a coûté le plus cher quand on s'est trompé. Rappelez-vous les propres critiques d'XP : un seul représentant du client peut être un goulot d'étranglement. Discutez de la manière de joindre plusieurs utilisateurs brièvement et souvent.

## En pratique : un exemple d'ITIL agile

L'équipe numérique d'une agence de transport public, composée de neuf personnes, construit et exploite son application de calcul d'itinéraires et un flux de données d'arrivée en direct utilisé par d'autres développeurs de la ville. L'équipe publie chaque mois après un cycle de test manuel de quatre jours. Quand une version tourne mal, le retour arrière prend une demi-journée ; l'équipe hésite donc à publier plus souvent. Le responsable de l'exploitation, qui est aussi le développeur le plus expérimenté, répond à la plupart des appels hors heures parce que personne d'autre ne sait comment fonctionne le flux.

L'équipe décide d'adopter ensemble quelques pratiques d'XP. Elle met en place une intégration continue qui construit et exécute des tests unitaires à chaque fusion. Pour chaque bogue trouvé en production, elle écrit un test qui échoue avant de corriger. Deux développeurs travaillent en binôme avec le responsable de l'exploitation sur le flux une heure par jour. L'équipe ajoute aussi une étape de déploiement capable de revenir à la version précédente en quelques minutes.

Après quatre mois, l'équipe publie chaque semaine. La suite de tests attrape avant la mise en production deux régressions que le cycle manuel n'aurait trouvées que le dernier jour. Trois développeurs peuvent désormais traiter la plupart des appels sur le flux. Tout ne fonctionne pas : la suite de tests met 25 minutes à s'exécuter ; les développeurs fusionnent donc moins souvent que prévu, et un changement défectueux du flux d'arrivée passe entre les mailles parce que ses tests utilisaient des données d'exemple qui ne correspondaient pas à un vrai cas limite. L'équipe déplace les tests lents vers une seconde étape pour que les premiers résultats arrivent en cinq minutes, et ajoute une vérification de surveillance sur la sortie du flux. Elle convient aussi que le binôme restera un outil pour les problèmes difficiles et l'intégration, pas une règle pour chaque tâche.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison sont propriétaires des pratiques d'XP. Commencez par celles qui donnent du retour le plus vite : tests automatisés et intégration continue. Traitez votre suite de tests comme un produit utilisé aussi par l'exploitation. Elle décrit ce que le service est censé faire et vous dit vite quand il cesse de le faire.

### Équipes de service et d'exploitation

Le personnel d'exploitation peut utiliser les idées d'XP pour son propre travail : des changements d'infrastructure et de configuration testés avant d'être exécutés, de petits changements intégrés souvent et la connaissance partagée dans l'équipe par le binôme et la propriété collective. Demandez aux équipes de livraison des tests qui couvrent les défaillances que vous voyez en production, et proposez l'historique des incidents pour orienter ce qui est testé.

### Direction et gouvernance

Les dirigeants rendent XP possible en protégeant le rythme, en finançant l'infrastructure de construction et de test et en acceptant que la qualité soit construite dans le travail et non inspectée après coup. Demandez des preuves de sûreté issues de la chaîne, comme les résultats de tests et l'historique des mises en production, et n'exigez pas de preuves manuelles en double.

### Clients et utilisateurs

Les clients ont le rôle le plus direct dans XP : ils font partie de la boucle de retour de l'équipe. Attendez-vous à ce qu'on vous demande d'essayer de petites versions, de répondre vite aux questions et de dire ce qui compte le plus cette semaine. En retour, vous devriez voir moins de surprises et des corrections plus rapides des problèmes que vous signalez.

## Modes d'échec courants

- **N'adopter que les rituels.** Les équipes prennent les réunions debout et les tableaux et sautent les tests et l'intégration. À la place, commencez par les tests automatisés et l'intégration continue, qui donnent le meilleur retour.
- **Traiter le binôme comme une règle.** Un binôme imposé sur tout le travail frustre les gens et ralentit les tâches courantes. À la place, utilisez le binôme pour les problèmes difficiles, l'intégration et le transfert de connaissances, et revoyez son fonctionnement.
- **Une suite de tests en laquelle personne n'a confiance.** Des tests lents ou peu fiables sont ignorés. À la place, gardez la suite rapide et corrigez ou supprimez vite les tests instables.
- **Propriété collective sans normes.** N'importe qui change n'importe quoi, et le code se dégrade. À la place, associez-la à des normes de codage partagées, à la revue et à des vérifications automatisées.
- **Un seul représentant du client.** Une personne devient le goulot ou la source d'un biais. À la place, répartissez le contact entre plusieurs utilisateurs et vérifiez les décisions par l'usage réel.
- **Sauter complètement la conception.** Les équipes refactorisent à répétition sans direction. À la place, gardez une image légère de l'architecture et revoyez-la à intervalles réguliers.
- **Les heures supplémentaires comme norme.** Les longues heures érodent la qualité et causent des incidents. À la place, planifiez à un rythme durable et considérez les heures supplémentaires répétées comme un signal de réduire le périmètre.
- **Ignorer l'exploitation.** XP dit peu de choses sur l'exploitation du logiciel, et les équipes supposent que c'est couvert. À la place, ajoutez des vérifications d'exploitation aux tests et invitez le personnel d'exploitation à la planification.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Tests | Les tests sont manuels et tardifs | Certaines équipes ont des tests unitaires automatisés | Les équipes écrivent les tests avec le code et les exécutent à chaque changement | Les résultats des tests et les défauts échappés sont suivis et revus | La stratégie de test est coordonnée entre services et partagée avec l'exploitation |
| Intégration et mise en production | L'intégration est rare et les versions sont grosses | Certaines équipes utilisent l'intégration continue | Une chaîne partagée construit, teste et déploie chaque changement | La fréquence de livraison et le taux d'échec sont mesurés et améliorés | Les chaînes sont coordonnées entre équipes et fournisseurs |
| Propriété et connaissance partagées | La connaissance est chez quelques individus | Certaines équipes travaillent en binôme ou font tourner le travail | La propriété collective avec des normes est la règle | Les lacunes de connaissance sont suivies et réduites | La connaissance circule librement entre équipes et vers les guides d'exploitation |
| Rythme et bien-être | Les heures supplémentaires sont routinières | Certaines équipes surveillent leur charge | Le rythme durable est une politique affichée | La charge d'astreinte et les heures supplémentaires sont mesurées et revues | La charge est équilibrée entre équipes d'après des données partagées |

## Liste de contrôle

- [ ] L'équipe a convenu des pratiques XP qu'elle utilise et les a essayées ensemble.
- [ ] Des tests automatisés s'exécutent à chaque changement, et une construction en échec est corrigée en premier.
- [ ] Chaque bogue de production reçoit un test qui l'aurait attrapé.
- [ ] Le travail est fusionné dans la branche partagée plusieurs fois par jour.
- [ ] Les mises en production sont petites, et un retour arrière peut se faire rapidement.
- [ ] Plus d'une personne peut modifier et supporter chaque partie du système.
- [ ] Le binôme sert aux problèmes difficiles et à l'intégration, et son effet est revu.
- [ ] Les heures supplémentaires sont rares et ne se répètent pas semaine après semaine.
- [ ] Un utilisateur ou un représentant d'utilisateurs est disponible pour répondre aux questions pendant le travail.
- [ ] Les tests incluent des vérifications du comportement de surveillance et de reprise.

## Prompts d'IA

**Objectif : transformer un incident de production en test et en liste de leçons.**

```text
Aidez-moi à tirer des leçons d'un incident de production avec les habitudes de la programmation extrême.

Description de l'incident (factuelle, sans blâme, dans l'ordre) : [collez ce qui s'est passé, comment il a été détecté et comment il a été corrigé].
La partie du système concernée : [décrivez le composant et ce qu'il fait].
Nos tests actuels pour cette partie : [décrivez ce qui est testé aujourd'hui, ou écrivez « inconnu »].

Proposez : (1) un test, décrit en mots simples, qui aurait attrapé cela avant la mise en production ; (2) deux autres tests qu'il vaut la peine d'ajouter à proximité ; (3) un changement à notre processus de mise en production pour rendre un défaut semblable moins probable. N'inventez pas de détails sur notre système. Posez-moi d'abord des questions de clarification si la description est trop mince, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : évaluer la sûreté avec laquelle votre équipe peut livrer souvent de petits changements.**

```text
Je veux comprendre dans quelle mesure il est sûr pour notre équipe de livrer souvent de petits changements.

Notre chemin du changement à la production, étape par étape : [collez les étapes, qui fait chacune et à peu près combien de temps elle prend].
Nos vérifications automatisées : [listez tests, constructions et analyses, ou écrivez « aucune »].
Notre manière de revenir en arrière : [décrivez].
Les deux dernières mises en production qui ont mal tourné : [collez de courtes descriptions factuelles].

Identifiez les étapes qui reposent sur du travail manuel ou sur le savoir d'une seule personne. Pour chacune, suggérez une petite automatisation ou une étape de partage. N'affirmez pas qu'une norme exige quelque chose à moins que j'en aie collé le texte. Séparez ce que montre le texte de ce que vous supposez et listez ce dont vous n'êtes pas sûr.
```

**Objectif : concevoir une expérience d'un mois avec le binôme.**

```text
Aidez-moi à concevoir une expérience d'un mois de programmation en binôme pour une équipe de [nombre] personnes qui travaillent sur [type de système].

Nos raisons de l'essayer : [par exemple « réduire les points de défaillance uniques sur le service de flux »].
Contraintes : [par exemple télétravail, astreintes, niveaux d'expérience variés].

Proposez sur quels types de travail faire du binôme et lesquels laisser tranquilles, comment faire tourner les partenaires, quoi observer (utilisez des observations comme les questions résolues et les défauts trouvés, et n'inventez pas de chiffres) et comment l'équipe décidera à la fin de continuer ou non. Posez-moi d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : vérifier une Définition de terminé quant à la préparation à l'exploitation.**

```text
Voici notre Définition de terminé actuelle : [collez-la].
Ce que l'équipe d'exploitation ou de support a demandé : [collez, ou écrivez « inconnu »].

Comparez les deux. Listez les éléments dont l'exploitation aurait besoin et qui manquent, et pour chacun dites s'il pourrait être vérifié automatiquement dans une chaîne de construction, et comment. N'affirmez pas qu'une norme exige un élément à moins que j'en aie collé le texte. Signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md) : à utiliser pour revoir ou introduire des pratiques XP comme le binôme, le développement piloté par les tests et l'intégration continue.
- [user-story](../../../../skills/user-story/SKILL.md) : à utiliser pour transformer les besoins des clients en récits avec des critères d'acceptation pouvant devenir des tests automatisés.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md) : à utiliser pour planifier de petites mises en production fréquentes et les vérifications qui les rendent sûres.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md) : à utiliser pour examiner le bon fonctionnement des pratiques et choisir un changement.
- [runbook](../../../../skills/runbook/SKILL.md) : à utiliser pour transformer le savoir détenu par une seule personne en une procédure partagée et testée.

## Sources principales

- **Extreme programming** et **Extreme programming practices** (Wikipedia) : une vue d'ensemble de l'histoire, des valeurs, des pratiques et des critiques, avec citations.
- **Extreme Programming Explained** (Kent Beck) : l'énoncé originel de la méthode ; sa deuxième édition ajoute la valeur de respect.
- **Manifesto for Agile Software Development** (agilemanifesto.org) : XP est l'une des méthodes dont les auteurs ont écrit le Manifeste.
- **Extreme Programming Refactored : The Case Against XP** (Matt Stephens et Doug Rosenberg, 2003) : la critique la plus connue, utile pour tester vos propres hypothèses.

## Références

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
