# Gouvernance, risques et conformité

**La gouvernance, les risques et la conformité fixent la direction, les limites et les preuves du travail d'une organisation, et dans une organisation agile elles fonctionnent mieux comme des garde-fous intégrés à la manière dont les équipes livrent, non comme des portes placées à la fin.**

## Pourquoi c'est important

Toute organisation qui fournit des services doit rendre des comptes à quelqu'un : des clients, un conseil d'administration, un régulateur, le public. Cette redevabilité prend quelques formes familières. Il doit y avoir une direction claire et des droits de décision (gouvernance). Il doit y avoir une vue honnête de ce qui pourrait mal tourner et de ce qui est fait à ce sujet (risques). Et il doit y avoir des preuves que l'organisation suit les lois, contrats et politiques qui s'appliquent à elle (conformité).

Les équipes agiles et les fonctions de gouvernance se rencontrent souvent dans une méfiance mutuelle. Les équipes voient des comités d'approbation, de longs formulaires et des règles dont elles ne voient pas la raison. Le personnel de gouvernance et d'audit voit des équipes qui changent vite la production et laissent peu de traces. Les deux côtés ont raison sur un point. La voie n'est pas que l'un gagne, mais de concevoir une gouvernance compatible avec le changement fréquent : des limites claires, des contrôles fondés sur le risque et des preuves produites par le travail lui-même.

L'[article de Wikipédia sur la gouvernance, la gestion des risques et la conformité](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) décrit le GRC comme une approche holistique de la gouvernance, de la gestion des risques et de la conformité réglementaire, développée dans les années 2000 pour gérer des exigences de conformité financière de plus en plus complexes. Il ne nomme aucune critique ni aucun cadre propre à l'informatique. Ce sujet le combine avec les articles sur la gestion des risques et la conformité réglementaire, avec les sujets antérieurs sur le changement, la sécurité et la continuité, et avec les orientations de DORA sur l'approbation. Il ne donne pas de conseil juridique ; les règles qui s'appliquent à vous dépendent de votre pays, de votre secteur et de vos contrats, et la bonne source est le texte de la règle.

## Concepts clés

### Gouvernance

L'article sur le GRC décrit la gouvernance d'entreprise comme les processus fixés par le conseil d'administration qui façonnent la structure et attribuent les rôles. En informatique, la gouvernance porte sur qui décide de quoi, sur quelle base et comment les décisions sont vérifiées. COBIT, décrit par Wikipédia comme un cadre d'ISACA pour la gestion et la gouvernance informatiques, est une référence (voir Sujet 2.7 — Cadres et normes ITSM). Le système de valeur des services d'ITIL inclut la gouvernance comme composant (voir Sujet 2.3 — Le système de valeur des services ITIL).

Une bonne gouvernance dans une organisation agile est explicite sur :

- **La direction :** buts et priorités, et qui les fixe.
- **Les limites :** ce que les équipes peuvent décider seules et ce qui nécessite une escalade (voir Sujet 1.9 — Gestion agile).
- **La redevabilité :** qui répond de chaque service (voir Sujet 5.5 — Propriété des produits et des services).
- **Les preuves :** comment l'organisation sait que sa direction et ses limites sont suivies.

### Gestion des risques

Wikipédia décrit la gestion des risques comme l'identification, l'évaluation et la hiérarchisation des risques, suivies de la minimisation, de la surveillance et de la maîtrise de leur impact ou de leur probabilité. L'article nomme quatre options de traitement :

| Option | Sens | Exemple |
|---|---|---|
| **Évitement** | Ne pas faire l'activité risquée (ce qui renonce aussi aux gains potentiels) | Décider de ne pas stocker certaines données |
| **Réduction** | Abaisser la gravité ou la probabilité | Tests automatisés, déploiements par étapes, surveillance supplémentaire |
| **Partage** | Transférer le fardeau ou le bénéfice, par exemple par l'assurance ou l'externalisation ; l'article note que le « transfert de risque » est souvent un abus de langage, car la partie d'origine garde généralement la responsabilité juridique | Assurance, contrat avec un fournisseur |
| **Rétention** | Accepter la perte, typiquement pour des risques petits ou non assurables | Une décision de vivre avec un risque mineur |

L'article traite aussi des opportunités, événements incertains positifs, avec des stratégies parallèles. Il note que l'évaluation des risques pèse gravité et probabilité, et que les données de taux sont souvent rares, surtout pour les événements catastrophiques. Il cite des critiques : Douglas Hubbard (2009) est cité comme disant que certaines normes ne montrent aucune amélioration mesurable du risque, bien que la confiance dans les décisions semble augmenter ; des recherches ultérieures suggèrent que les bénéfices financiers dépendent davantage de la fréquence et de la méthode d'évaluation des risques que de la formule utilisée ; et la distinction de Benoit Mandelbrot entre risque « bénin » et risque « sauvage », sous-estimer la sauvagerie étant une erreur courante. L'article cite l'ISO 31000, « Management du risque — Lignes directrices », et est lui-même signalé comme nécessitant davantage de citations.

### Le registre des risques

Un **registre des risques** est un enregistrement des risques identifiés, avec une description, une évaluation, un responsable, le traitement choisi et l'état. L'extrait d'article lu pour ce guide ne le mentionne pas ; c'est donc une pratique courante. Gardez-le court, attribué et revu. Les risques pour les services comprennent la sécurité, la disponibilité, la défaillance d'un fournisseur, la dépendance envers des personnes clés et la conformité (voir Sujet 3.13 — Gestion de la sécurité des informations, Sujet 3.12 — Gestion de la continuité des services et Sujet 3.14 — Gestion des fournisseurs).

### Conformité

L'article de Wikipédia sur la conformité réglementaire la décrit comme le but que les organisations aspirent à atteindre en restant informées des lois, politiques et règlements pertinents et en les suivant, et note que les organisations combinent de plus en plus les contrôles dans des cadres communs pour réduire le travail dupliqué. Il dit que la définition d'un plan de conformité efficace a été insaisissable, et mentionne des normes comme l'ISO 37301 et l'ISO 19600. Il nomme des régimes dont la loi Sarbanes–Oxley (2002), HIPAA, le RGPD, PCI-DSS, la loi Gramm–Leach–Bliley et d'autres. Il consigne des critiques : des recherches en psychologie citées dans l'article soutiennent que récompenses ou amendes peuvent affaiblir la motivation intrinsèque et saper la conformité, des défenseurs de la vie privée remettent en question les exigences de conservation des données, l'application diffère selon les juridictions, et des exigences qui changent rapidement sont difficiles à suivre.

Un point pratique : la conformité n'est pas une chose unique. Chaque régime a sa propre portée et ses propres exigences. Découvrez auprès de votre fonction juridique ou de conformité lesquels s'appliquent à lesquels de vos services, et obtenez le texte.

### Le GRC comme une seule vue

L'article sur le GRC dit que le GRC couvre trois facettes liées : la gouvernance d'entreprise, la gestion des risques d'entreprise et la conformité, et mentionne des variantes comme le GRC financier, juridique et opérationnel. Il attribue le terme à l'article de 2007 de Scott Mitchell et à l'Open Compliance and Ethics Group, et note que des logiciels de GRC existent depuis 2002 et que certaines entreprises ont commencé à utiliser des outils d'IA pour le GRC en 2025. L'avantage de la vue combinée est que les trois sont liés : la gouvernance fixe ce qui compte, la gestion des risques trouve ce qui le menace et la conformité montre ce qui est fait.

### Des garde-fous, non des portes

Une **porte** est un point de contrôle, généralement manuel, où le travail attend l'approbation. Un **garde-fou** est une limite intégrée au chemin qui empêche le travail de dévier sans l'arrêter. Exemples : des tests automatisés qui doivent passer, des contrôles de politique dans la chaîne qui bloquent les configurations dangereuses, des budgets avec alertes et le contrôle d'accès par rôle. Les orientations de DORA sur l'approbation des changements disent que l'approbation s'obtient mieux par la relecture entre pairs et l'automatisation, que l'approbation externe lourde est associée à une moins bonne performance de livraison et que l'ajout d'approbations en réponse à l'instabilité tend à aggraver les choses (voir Sujet 3.4 — Habilitation des changements). Les garde-fous appliquent la même idée à toute la gouvernance : le contrôle est dans le système et produit ses propres preuves.

### Les preuves comme sous-produit

Les auditeurs ont besoin de preuves que les contrôles fonctionnent. Une chaîne qui consigne qui a relu, ce qui a été testé et ce qui a été déployé donne des preuves pour chaque changement. Un catalogue de services avec des responsables donne des preuves de redevabilité. Les analyses post-incident donnent des preuves d'apprentissage. C'est bien plus solide qu'un document trimestriel écrit pour un audit. Discutez tôt avec les auditeurs de ce qu'ils accepteront (voir Sujet 5.1 — Gestion agile des services).

### Environnements réglementés

L'article de Wikipédia sur le développement logiciel agile rapporte que des domaines réglementés comme les dispositifs médicaux, la pharmacie, la finance, le nucléaire, l'automobile et l'avionique ont d'abord été jugés inadaptés à l'agile, et que des adaptations existent maintenant, avec des préoccupations d'assurance qualité, de sûreté et de sécurité, de traçabilité, et de vérification et validation (voir Sujet 1.3 — Développement logiciel agile). Le schéma qui fonctionne consiste généralement à garder les contrôles exigés, à automatiser leurs preuves et à en faire une partie de la définition de « terminé », plutôt qu'à les supprimer.

### Limites des sources

L'article sur le GRC ne nomme ni cadres ni critiques et a été lu pour ce guide sous une forme courte. L'article sur la gestion des risques n'a été lu qu'en partie et est signalé comme nécessitant des citations. L'article sur la conformité ne donne ni coûts ni procédures d'audit. Utilisez ces articles comme des cartes et allez aux sources primaires pour les détails.

## Bonnes pratiques

1. **Écrivez les droits de décision.** Pour chaque équipe ou service, dites ce qu'elle peut décider seule, ce qui demande une consultation et ce qui nécessite une approbation. Publiez-le et revoyez-le avec les équipes.
2. **Fixez la direction et les limites, non des instructions détaillées.** Énoncez les résultats, budgets, limites de risque et règles non négociables. Laissez les équipes décider comment travailler dans ce cadre.
3. **Tenez un court registre des risques.** Pour chaque service important, listez les principaux risques avec un responsable, un traitement et une date de revue. Revoyez-le lors d'une réunion régulière et abandonnez les risques disparus.
4. **Choisissez le traitement à dessein.** Pour chaque risque, décidez de l'éviter, de le réduire, de le partager ou de le retenir, et consignez qui a pris la décision. Rappelez-vous que partager un risque n'enlève pas votre propre redevabilité.
5. **Évaluez souvent, avec des méthodes simples.** L'article rapporte que les bénéfices dépendent plus de la fréquence et de la méthode que de la formule. Revoyez régulièrement les risques avec une méthode que l'équipe comprend.
6. **Sachez quelles règles s'appliquent à quels services.** Demandez à votre fonction juridique ou de conformité la liste des régimes applicables, avec le texte de la source. Consignez-la pour chaque service.
7. **Intégrez des garde-fous dans la chaîne.** Automatisez tests, analyses de sécurité, contrôles de politique et limites d'accès pour que le travail dangereux soit arrêté tôt. Traitez les contrôles comme du code avec des responsables.
8. **Capturez les preuves en sous-produit.** Veillez à ce que les outils consignent revues, approbations, résultats de tests, déploiements et incidents. Convenez avec les auditeurs de ce qu'ils accepteront.
9. **Associez les contrôles une seule fois.** Si vous devez satisfaire plusieurs cadres, décrivez vos contrôles une fois et associez-les à chaque exigence, comme l'article sur la conformité dit que les organisations le font de plus en plus.
10. **Utilisez des voies fondées sur le risque pour le changement.** Rendez les changements à faible risque rapides, signalez ceux à haut risque pour revue et gardez un organe central pour la coordination et les arbitrages (voir Sujet 3.4 — Habilitation des changements).
11. **Incluez la gouvernance dans les rétrospectives.** Demandez périodiquement quels contrôles ont aidé et lesquels n'ont fait qu'ajouter du retard. Retirez ou redessinez les seconds, avec le responsable et l'auditeur.
12. **Planifiez le changement des règles.** Nommez quelqu'un pour suivre les changements de lois, normes et contrats et rendre compte de ce qui compte pour vos services.

## Questions à discuter avec votre équipe

**Quelles approbations devons-nous obtenir, et contre quoi chacune protège-t-elle ?**

Listez les approbations d'un changement ou d'un achat typique. Pour chacune, demandez quel risque elle traite et si elle a jamais refusé quoi que ce soit. Les approbations qui ne protègent de rien sont candidates au retrait. Celles qui protègent d'un risque réel peuvent être satisfaites plus légèrement. L'animateur peut demander quelle preuve l'approbateur accepterait au lieu d'une signature.

**Quels sont les cinq principaux risques de notre service principal, et qui possède chacun ?**

Demandez aux gens de lister les risques indépendamment, puis comparez. Les différences montrent ce que l'équipe voit. Vérifiez que chacun a un responsable et un traitement. Discutez de ceux qui sont acceptés par défaut, non par décision.

**Quelles règles s'appliquent à nous, et où est le texte ?**

Demandez la liste des lois, normes et contrats applicables. Si personne ne peut la donner, trouvez qui le peut. Vérifiez que l'ingénierie sait ce que chacun exige d'elle. Convenez d'un moyen de tenir la liste à jour.

**Quelles preuves nos outils produisent-ils déjà qu'un auditeur pourrait utiliser ?**

Listez les enregistrements : revues, résultats de tests, historique des déploiements, revues d'incidents. Demandez ce qu'un auditeur a demandé récemment et si les outils pourraient le fournir. Identifiez un enregistrement à automatiser. Invitez un auditeur à regarder.

**Où avons-nous ajouté un contrôle après un problème, et cela a-t-il aidé ?**

Demandez des exemples. Comparez avec la mise en garde de DORA selon laquelle ajouter des approbations en réponse à l'instabilité tend à aggraver les choses. Demandez si une autre réponse, comme de meilleurs tests ou des changements plus petits, aurait fonctionné. Consignez une leçon.

**À quoi ressemblerait un garde-fou pour quelque chose que nous bloquons aujourd'hui par une porte ?**

Choisissez une porte. Demandez ce qu'elle est censée empêcher et comment cela pourrait être empêché automatiquement. Par exemple, un contrôle de politique qui bloque une configuration risquée. Convenez d'un essai avec le responsable de la porte.

## En pratique : un exemple d'ITIL agile

Un fonds de pension national exploite un calculateur de prestations en ligne et un service de paiements. Il est réglementé, audité chaque année et soumis à des règles strictes sur le traitement des données. Le bureau de gouvernance du fonds exige que chaque changement de production soit examiné par un comité des changements qui se réunit chaque semaine, et que chaque projet remplisse une évaluation des risques de 30 pages avant la mise en production. Les développeurs livrent rarement et en gros lots. Une récente mise en production a causé un calcul erroné pour un petit groupe de membres, et la réponse du comité a été d'ajouter une approbation de plus.

La responsable des risques et le responsable de l'ingénierie décident d'essayer autrement. Ils commencent par une liste des régimes qui s'appliquent au calculateur et au service de paiements, obtenue de l'équipe juridique du fonds avec le texte de chacun, et associent une seule fois les contrôles du fonds à ces régimes. Le rôle du comité des changements change : les changements courants, bien testés, avec tests automatisés et relecture entre pairs avancent sans lui ; les changements à haut risque (ceux qui touchent aux règles de calcul ou aux paiements) sont signalés par une courte liste de signaux et examinés par un spécialiste du risque dans les deux jours ; et le comité se réunit pour coordonner et traiter les exceptions. La chaîne consigne qui a relu et quels tests ont réussi, et un contrôle de politique bloque les mises en production qui échouent à la suite de tests de calcul. L'évaluation des risques est remplacée par une entrée de registre d'une page par service, revue chaque mois.

Un auditeur interne voit les enregistrements de la chaîne et le registre, et demande un échantillon de revues pour vérifier que la relecture entre pairs est authentique ; le responsable de l'ingénierie organise un échantillonnage trimestriel par un ingénieur senior. Au bout de six mois, les mises en production sont hebdomadaires, le taux d'échec des changements est plus bas et l'audit juge les preuves suffisantes. Certaines difficultés subsistent. Deux équipes appliquent les signaux de haut risque de façon incohérente, les orientations d'un régulateur exigent une validation explicite pour certains changements de calcul que la nouvelle voie ne capte pas, et les entrées du registre sont rédigées avec peu de soin dans certaines équipes. La responsable des risques ajoute l'étape de validation pour ces changements, publie des exemples de signaux et demande aux équipes d'apporter une entrée de registre à une revue mensuelle.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison exécutent les contrôles par leurs chaînes et leurs pratiques. Apprenez quelles règles s'appliquent à votre service et pourquoi, proposez des moyens de produire les preuves automatiquement et amenez le risque dans la planification. Traitez les garde-fous comme une partie du produit.

### Équipes de service et d'exploitation

Les équipes d'exploitation détiennent beaucoup de contrôles : accès, surveillance, continuité et enregistrements. Gardez les preuves dans les outils, dites à la gouvernance ce qui marche en pratique et aidez à redessiner les portes qui n'ajoutent que du retard. Participez aux revues de risques avec de vraies données d'incidents.

### Direction et gouvernance

Les dirigeants fixent la direction, les limites et la redevabilité, et décident des risques à accepter. Demandez des vues de risque en langage clair et des preuves, non un volume de documents. Soyez prêt à remplacer une porte par un garde-fou quand le but peut être atteint. Gardez le rôle du comité centré sur la coordination et les vrais arbitrages.

### Clients et utilisateurs

Les clients et utilisateurs comptent sur l'organisation pour traiter correctement leurs données et leur argent. Demandez aux fournisseurs quelles normes et règles ils suivent et comment ils le montrent. Attendez-vous à une information honnête après un échec. Si vous avez des exigences particulières, comme la règle d'un régulateur, dites-le tôt au fournisseur.

## Modes d'échec courants

- **La gouvernance comme dernière porte.** Les revues arrivent à la fin et ralentissent tout. À la place, intégrez des garde-fous au travail et revoyez selon le risque.
- **Des documents comme preuves.** Les rapports sont écrits pour l'auditeur. À la place, produisez les preuves à partir des outils utilisés dans le travail.
- **Une seule voie pour tout changement.** Les changements courants attendent avec les risqués. À la place, classez selon le risque.
- **Un registre des risques que personne ne lit.** Il devient une longue liste. À la place, gardez-le court, attribué et revu.
- **Traiter le transfert de risque comme une suppression du risque.** On suppose que l'assurance ou l'externalisation met fin à la redevabilité. À la place, rappelez-vous que la partie d'origine garde généralement la responsabilité.
- **Des règles inconnues.** Les équipes ne savent pas quelles lois et normes s'appliquent. À la place, obtenez la liste et le texte auprès du juridique ou de la conformité.
- **Un contrôle ajouté après chaque incident.** Le processus grossit et la vitesse baisse. À la place, cherchez la cause et corrigez-la avec des tests, des changements plus petits ou un rétablissement plus rapide.
- **La conformité comme punition.** Amendes et peur dominent. À la place, expliquez le but des règles et faites de la voie sûre la voie facile.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Gouvernance et droits de décision | Les décisions suivent l'habitude et la hiérarchie | Certaines équipes ont des limites écrites | Droits de décision, limites et responsables sont écrits et partagés | L'efficacité de la gouvernance est revue en regard des résultats | La gouvernance est alignée entre équipes, fournisseurs et partenaires |
| Gestion des risques | Les risques sont discutés informellement | Certains services ont des listes de risques | De courts registres de risques attribués, avec traitements, sont revus régulièrement | Mesures de risque et événements éclairent l'évaluation et le traitement | Les vues de risque sont partagées et consolidées dans l'organisation |
| Conformité et preuves | Les preuves sont rassemblées pour les audits | Certaines preuves sont produites par les outils | Les règles applicables sont listées ; les contrôles associés une fois ; les preuves viennent des outils | Le fonctionnement des contrôles et la qualité des preuves sont mesurés | Les preuves sont partagées en continu avec auditeurs et partenaires |
| Garde-fous et voies de changement | Les contrôles sont des portes manuelles | Quelques contrôles automatisés existent | Voies fondées sur le risque et garde-fous de chaîne sont standard | L'efficacité des garde-fous et les faux blocages sont suivis et ajustés | Les garde-fous sont partagés et améliorés entre équipes |

## Liste de contrôle

- [ ] Droits de décision et limites sont écrits pour chaque équipe ou service.
- [ ] Chaque service important a un court registre des risques avec responsables, traitements et dates de revue.
- [ ] Nous avons une liste des lois, normes et contrats qui s'appliquent à chaque service, avec le texte de la source.
- [ ] Nos contrôles sont décrits une fois et associés à chaque exigence.
- [ ] La chaîne consigne revues, tests et déploiements comme preuves.
- [ ] Les auditeurs ont dit quelles preuves ils acceptent à la place des signatures.
- [ ] Changements courants et risqués suivent des voies différentes avec des critères clairs.
- [ ] Chaque approbation a un but énoncé, et les approbations qui ne refusent jamais sont revues.
- [ ] Les contrôles ajoutés après des incidents sont revus pour leur effet.
- [ ] Quelqu'un suit les changements des règles applicables et en rend compte.

## Prompts d'IA

**Objectif : transformer une chaîne d'approbation en options de garde-fous.**

```text
Voici une chaîne d'approbation que nous utilisons pour [type de changement ou d'achat] : [listez chaque approbation, qui la donne, ce qu'il vérifie, combien de temps cela prend et combien de fois elle a refusé quelque chose l'an dernier (utilisez de vrais chiffres ou écrivez « inconnu »)].
Règles que nous savons en exiger une partie, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Pour chaque approbation, énoncez le but du mieux possible d'après le texte, suggérez quelle preuve ou quel contrôle automatisé pourrait répondre au même but et dites quel risque subsisterait. Ne retirez rien de ce qu'exigent les règles collées. N'affirmez pas qu'une loi ou une norme exige quelque chose à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une entrée de registre des risques.**

```text
Aidez-moi à rédiger une entrée de registre des risques pour [service].

Le risque, dans mes mots : [décrivez].
Ce qui pourrait le causer et ce qui pourrait en résulter : [décrivez].
Quels contrôles existent : [listez].
Ce que je sais de la probabilité et de l'impact (faits seulement) : [collez, ou écrivez « inconnu »].

Produisez une entrée avec : un énoncé clair (« Si … alors … entraînant … »), causes, conséquences, contrôles existants, une option de traitement proposée (éviter, réduire, partager ou retenir) avec le raisonnement, un rôle de responsable suggéré et un emplacement de date de revue. N'inventez ni probabilités ni chiffres. Marquez les hypothèses. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : lister les preuves que vos outils produisent déjà pour un contrôle.**

```text
Un auditeur nous interrogera sur ce contrôle : [décrivez le contrôle et comment l'exigence le décrit ; collez le texte].

Nos outils et enregistrements pour l'activité : [listez contrôle de version, chaîne, billetterie, surveillance, et ce que chacun consigne].
Comment l'activité fonctionne : [décrivez].

Faites un tableau de la preuve que chaque outil produit pour le contrôle, de l'endroit où elle est stockée, de qui peut la modifier et des lacunes. Suggérez trois façons légères de combler les lacunes. N'affirmez pas que l'exigence demande quoi que ce soit au-delà du texte collé. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une conversation de gouvernance entre équipes de livraison et audit.**

```text
Planifiez une conversation de 60 minutes entre [nombre] membres d'équipes de livraison et [nombre] collègues de l'audit ou de la gouvernance sur la manière dont une équipe agile montre qu'elle maîtrise.

Préoccupations de l'audit, dans leurs mots : [collez].
Préoccupations des équipes, dans leurs mots : [collez].
Preuves que les équipes produisent aujourd'hui : [listez].

Fournissez un ordre du jour minuté, des questions pour chaque côté, un modèle pour consigner quelles preuves sont acceptables pour chaque contrôle et une étape de clôture qui consigne les actions avec responsables et dates. Restez indépendant de tout outil particulier. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [risk-register](../../../../skills/risk-register/SKILL.md) : à utiliser pour consigner et revoir risques, traitements et responsables.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md) : à utiliser pour tenir un journal léger des risques, actions, problèmes et décisions.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md) : à utiliser pour choisir des mesures d'alerte précoce des risques.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md) : à utiliser pour se préparer aux audits et organiser les preuves.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md) : à utiliser pour rendre explicites droits de décision et redevabilités.

## Sources principales

- **Governance, risk management, and compliance** (Wikipedia) : un court aperçu du GRC, de ses composants et de son histoire.
- **Risk management** (Wikipedia) : la définition, les options de traitement et les réserves sur l'évaluation des risques.
- **Regulatory compliance** (Wikipedia) : la définition, les régimes nommés et les critiques.
- **Streamlining change approval** (DORA, dora.dev) : des orientations fondées sur la recherche pour remplacer l'approbation lourde par la relecture entre pairs et l'automatisation.

## Références

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
