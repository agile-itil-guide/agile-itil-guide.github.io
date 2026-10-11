# Cadres et normes ITSM

**La gestion des services informatiques compte de nombreux cadres et normes qui se recoupent, et la compétence utile est de savoir à quoi sert chacun : un conseil dont s'inspirer, une norme au regard de laquelle on peut être certifié, ou un modèle de gouvernance qui dit quoi contrôler.**

## Pourquoi c'est important

Demandez à cinq personnes ce que signifie « nous suivons les bonnes pratiques ITSM » et vous pourriez obtenir cinq réponses : ITIL, ISO/IEC 20000, COBIT, FitSM ou « ce que fait l'outil du fournisseur ». Les termes sont employés avec laxisme, et les différences comptent. Un client qui demande la certification ISO/IEC 20000 ne peut pas être satisfait par une formation ITIL. Un auditeur qui interroge sur les contrôles COBIT ne sera pas aidé par un schéma de processus du centre de services.

Pour les équipes agiles, la question est pratique : lesquels devons-nous traiter, et lesquels pouvons-nous considérer comme une source d'idées ? Beaucoup d'équipes sont surprises d'apprendre qu'ITIL, le plus connu, est un guide dans lequel des individus se font certifier et non une norme pour les organisations. D'autres sont surprises que la principale norme ITSM ait récemment ajouté des conseils sur les façons de travailler agiles et DevOps.

Ce sujet compare les principaux cadres et normes, à partir des articles de Wikipédia sur la [gestion des services informatiques](https://en.wikipedia.org/wiki/IT_service_management), l'[ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) et [FitSM](https://en.wikipedia.org/wiki/FitSM). Ces articles sont de qualité variable, et plusieurs portent des avis de maintenance. Là où ils sont faibles, ce sujet le dit. Vérifiez les publications des propriétaires avant de vous fier à un détail pour un contrat ou un audit.

## Concepts clés

### Trois sortes de choses

Les noms de ce sujet se répartissent en trois groupes. Les garder distincts évite bien des conversations confuses.

| Sorte | Ce qu'elle vous donne | Exemples nommés dans l'article de Wikipédia sur l'ITSM |
|---|---|---|
| **Conseil (un cadre ou une bibliothèque)** | Des idées et des pratiques décrites à adapter | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Une norme certifiable** | Des exigences au regard desquelles une organisation peut être auditée et certifiée | ISO/IEC 20000 |
| **Un modèle de gouvernance ou de capacité** | Une manière de diriger, contrôler ou évaluer l'informatique | COBIT, CMMI, TOGAF |

FitSM se situe entre les deux premières, comme décrit ci-dessous.

### ITIL

ITIL est un guide sur l'ITSM et la gestion des actifs informatiques. La certification est pour les individus, et il n'existe aucune évaluation indépendante de la conformité d'une organisation à ITIL (voir Sujet 2.2 — ITIL). C'est la source de vocabulaire la plus utilisée.

### ISO/IEC 20000

L'ISO/IEC 20000 est une norme internationale de gestion des services informatiques. Selon Wikipédia, la Partie 1 fixe les exigences d'un système de gestion des services couvrant la planification, la fourniture et l'amélioration des services. Elle a été élaborée à partir de la BS 15000, créée par BSI Group, et publiée pour la première fois en décembre 2005. Des mises à jour ont suivi : la Partie 1 en juin 2011 et une deuxième révision, l'ISO/IEC 20000-1:2018, parue le 15 juillet 2018, après quoi les organisations certifiées ont bénéficié d'une période de transition de trois ans. L'édition 2018 comporte dix chapitres qui suivent la structure de haut niveau de l'ISO.

La norme a de nombreuses parties. L'article liste notamment : des lignes directrices sur l'application d'un système de gestion des services (Partie 2) ; des lignes directrices sur le périmètre et l'applicabilité (Partie 3) ; des lignes directrices de mise en œuvre (Partie 5) ; des exigences pour les organismes de certification (Partie 6) ; concepts et vocabulaire (Partie 10) ; et une spécification technique sur la relation avec ITIL 4 (Partie 11). Il liste aussi des parties récemment publiées, de 2023 à 2025, avec des lignes directrices sur l'intégration et la gestion des services (SIAM), l'agile et DevOps, et la durabilité. Wikipédia ne dit pas quel numéro de partie couvre quel sujet ; vérifiez donc le catalogue ISO avant d'en citer un.

Les organisations peuvent être certifiées, et les individus peuvent obtenir des qualifications auprès d'organismes comme APMG-International, EXIN et PECB. L'article rapporte que l'enquête ISO 2024 a dénombré 27 332 certificats, dont 24 056 en Chine. Cela montre à quel point la certification est inégalement répartie entre pays ; ne supposez donc pas qu'un client ailleurs la demandera.

Wikipédia dit que la norme a été à l'origine élaborée pour refléter les bonnes pratiques d'ITIL, mais marque cette affirmation « citation nécessaire ». Considérez la relation comme proche mais non identique. L'article dit aussi que la norme appuie d'autres cadres comme Microsoft Operations Framework et des parties de COBIT.

### COBIT

COBIT, selon Wikipédia, est un cadre créé par ISACA pour la gestion et la gouvernance de l'informatique. Il relie les objectifs métier aux objectifs informatiques et définit les responsabilités des équipes métier et informatiques. L'article décrit cinq domaines de processus : Évaluer, Diriger et Surveiller ; Aligner, Planifier et Organiser ; Construire, Acquérir et Mettre en œuvre ; Fournir, Servir et Soutenir ; et Surveiller, Évaluer et Apprécier. Il donne ces dates : première publication en 1996, version 5 en 2012, et dit qu'ISACA propose une certification sur COBIT 2019 et COBIT 5. L'article relie COBIT à ITIL, à l'ISO 27000, au CMMI, à TOGAF et au PMBOK Guide du Project Management Institute.

L'article lui-même porte des avis de maintenance sur les sources primaires et des citations manquantes, et une affirmation, selon laquelle le cadre aide les entreprises à respecter la loi et à être plus agiles, repose sur une seule source. Utilisez les propres publications de COBIT pour l'autorité.

### FitSM

FitSM est une famille de normes légères. Wikipédia dit qu'elle est née de FedSM, un projet financé par l'UE pour améliorer la gestion des services dans les e-infrastructures fédérées, et que des livrables révisés ont été publiés sous le nom FitSM à partir de mai 2013. FitSM-1 contient environ 85 exigences auditables couvrant des exigences générales et 14 processus, et est beaucoup plus court que la Partie 1 de l'ISO/IEC 20000 tout en étant de portée et de style similaires. Toutes les parties sont publiées sous licences Creative Commons. Les organisations ne peuvent pas être certifiées conformes à FitSM, bien que la conformité puisse être auditée, et un schéma de certification du personnel a commencé en 2013.

FitSM est utile pour les petites équipes qui veulent un petit jeu d'exigences. L'article n'indique ni la version actuelle ni l'état du groupe qui la maintient ; vérifiez-les donc avant de vous y fier.

### Autres noms

L'article sur l'ITSM liste aussi ce qui suit. Ce guide ne les couvre pas davantage.

- **CMMI :** un modèle pour établir, gérer et améliorer services et processus.
- **TOGAF :** un cadre reliant les objectifs métier aux objectifs d'architecture.
- **Microsoft Operations Framework :** des orientations de gestion des services fondées sur les technologies Microsoft.
- **Application Services Library et Business Information Services Library :** cadres pour la gestion des applications et pour la gestion de l'information.
- **USM :** un système fondé sur des principes adopté par le gouvernement néerlandais.

L'article ajoute que les cadres ITSM se sont appuyés sur l'ISO 9000, l'ISO/IEC 27000 et le CMMI. La gestion de la sécurité a sa propre famille de normes (voir Sujet 3.13 — Gestion de la sécurité des informations).

### Agile et DevOps dans les normes

L'article sur l'ISO/IEC 20000 liste une partie récente de la norme avec des lignes directrices sur l'agile et DevOps. C'est notable car cela montre que l'organisme de normalisation considère les façons de travailler agiles comme quelque chose qu'un système de gestion des services doit accueillir. L'article ne donne aucun détail sur son contenu ; lisez donc la norme elle-même si vous en avez besoin. Parallèlement, ITIL 4 se décrit comme aligné sur l'agile, DevOps et lean (voir Sujet 2.2 — ITIL), et l'article de Wikipédia sur l'ITSM ne mentionne pas du tout l'agile. Les sources diffèrent quant à leur degré de mise à jour.

### Choisir

Il n'existe pas un seul bon cadre. Une manière sensée de choisir est de demander ce dont vous avez besoin :

| Si vous avez besoin de… | Envisagez… |
|---|---|
| Un vocabulaire partagé et des idées de pratiques | ITIL |
| La certification de votre système de gestion des services pour des clients ou des appels d'offres | ISO/IEC 20000 |
| Un petit jeu d'exigences auditables pour une petite équipe | FitSM |
| La gouvernance et le contrôle de l'informatique dans l'entreprise, reliés aux objectifs métier | COBIT |
| L'évaluation de la capacité des processus | CMMI |

Ce tableau est le résumé de ce guide, pas une recommandation d'un propriétaire de cadre.

## Bonnes pratiques

1. **Commencez par la question à laquelle vous devez répondre.** Écrivez ce dont vous avez besoin : vocabulaire, certification, contrôle ou évaluation. Choisissez le cadre qui y répond, et non celui qui a le meilleur marketing.
2. **Apprenez la différence entre conseil et norme.** Enseignez à l'équipe que la certification ITIL est pour les individus, que la certification ISO/IEC 20000 est pour les organisations et que COBIT est un modèle de gouvernance. Beaucoup de confusions de contrats et d'audits commencent ici.
3. **Découvrez ce que les clients et les régulateurs exigent réellement.** Demandez la clause ou l'exigence exacte. Souvent la demande porte sur un « cadre reconnu », et une description brève et honnête de votre pratique suffit.
4. **Utilisez le texte de la norme, pas des résumés, pour la conformité.** Quand vous affirmez une conformité, travaillez à partir de la norme ISO ou de la publication du propriétaire du cadre. Les résumés, y compris celui-ci, ne servent qu'à l'orientation.
5. **Cartographiez votre pratique une fois, pas quatre.** Si vous devez satisfaire plus d'un cadre, construisez une seule description de votre pratique et rattachez-la à chacun, plutôt que d'écrire des documents séparés.
6. **Gardez le système aussi petit que possible.** L'ISO/IEC 20000 demande un système de gestion des services et des enregistrements. Satisfaites chaque exigence par l'approche la plus légère qui fonctionne et automatisez les preuves à partir de vos outils.
7. **Soyez attentif au périmètre.** Un certificat couvre un périmètre déclaré. Choisissez un périmètre qui reflète de vrais services et de vraies équipes, et n'excluez pas les parties qui rendent le certificat difficile.
8. **Vérifiez les conseils sur l'agile et DevOps dans les normes que vous utilisez.** Là où une norme a des lignes directrices sur l'agile et DevOps, lisez-les avant de discuter avec un auditeur de la manière dont une équipe agile peut satisfaire une exigence.
9. **Envisagez des options plus légères pour les petites équipes.** FitSM ou un sous-ensemble d'ITIL peut mieux convenir à une petite équipe qu'un système certifié complet. Notez ce à quoi vous renoncez, comme la certification externe.
10. **Gardez alignées sécurité et gestion des services.** Si vous utilisez l'ISO/IEC 27001 pour la sécurité de l'information, partagez enregistrements et revues avec votre système de gestion des services pour éviter le travail en double (voir Sujet 3.13 — Gestion de la sécurité des informations).
11. **Documentez votre adaptation.** Consignez quelles parties d'un cadre vous utilisez, lesquelles non, et pourquoi. Cela vous protège dans les audits et aide les nouveaux.
12. **Revoyez chaque année.** Les normes et cadres changent. Désignez quelqu'un pour suivre les mises à jour et rendre compte de ce qui compte pour votre équipe (voir Sujet 6.4 — Parcours de formation et certification).

## Questions à discuter avec votre équipe

**Lesquels de ces cadres ou normes sommes-nous tenus d'utiliser, et lesquels utilisons-nous par habitude ?**

Listez ce que les clients, contrats, régulateurs et responsables exigent réellement, avec le document qui le dit. Listez ensuite ce que l'équipe utilise sans exigence. Les deux listes diffèrent souvent plus que prévu. L'animateur peut demander qui a introduit chacun en premier et pourquoi. Poursuivez en trouvant la formulation exacte de toute exigence qui commande du travail.

**Si un client demandait si nous sommes « certifiés ITIL », que répondrions-nous ?**

Exercez-vous à une réponse honnête : les individus peuvent être certifiés, les organisations non, et voici ce que nous faisons. Comparez les réponses. Certaines en feront trop. Discutez de ce dont le client a probablement besoin et des preuves qui pourraient y répondre, comme une certification ISO/IEC 20000 ou une description de la pratique. Convenez d'une phrase que tout le monde peut utiliser.

**Que nous coûterait la certification ISO/IEC 20000, et que gagnerions-nous ?**

Demandez quels clients ou marchés la valoriseraient et ce que l'équipe devrait changer. Ne devinez pas les coûts ; recueillez de vrais devis ou interrogez un pair qui l'a fait. Listez les bénéfices que vous savez décrire : une étiquette reconnue, un système disciplinaire, l'accès aux appels d'offres. Décidez s'il faut approfondir.

**D'où viennent nos enregistrements pour l'audit, et nos outils pourraient-ils les produire automatiquement ?**

Listez les enregistrements que demandent les auditeurs et l'origine de chacun. Beaucoup peuvent venir du contrôle de version, des outils de tickets et de la surveillance s'ils sont configurés dans cette optique. Demandez quels enregistrements sont produits à la main et pourquoi. Choisissez-en un à automatiser.

**Comment nos pratiques agiles s'accordent-elles avec ce qu'attendent les normes, et où est l'écart ?**

Prenez une exigence qui importe à votre auditeur, comme l'autorisation des changements, et décrivez comment une équipe agile y satisfait. Là où la norme a des conseils sur l'agile et DevOps, lisez ensemble le texte pertinent. Notez les lacunes de preuve, pas d'intention.

**Qui suit pour nous les changements dans ces cadres ?**

Demandez qui lit les annonces des propriétaires de cadres et des organismes de normalisation. Une réponse fréquente est « personne ». Décidez qui le fera, comment il rendra compte et quand. L'animateur peut suggérer une courte note une fois par trimestre listant ce qui a changé et si cela compte.

## En pratique : un exemple d'ITIL agile

Un éditeur de logiciels de 120 personnes vend un produit de planification hébergé à des hôpitaux et des universités. L'appel d'offres d'un grand client universitaire exige « un système de gestion des services informatiques certifié ». Les fondateurs avaient supposé que leur responsable du support, formé à ITIL, suffirait. Le responsable du support explique que la certification ITIL s'applique aux individus, et que l'appel d'offres vise très probablement l'ISO/IEC 20000.

La directrice des opérations enquête. Elle lit la formulation de l'appel d'offres, qui nomme l'ISO/IEC 20000-1, et demande au client quel périmètre il attend. Elle lit la table des matières de la norme et compare ses dix chapitres aux enregistrements existants de l'entreprise, qui viennent surtout de son outil de tickets, de l'historique des changements et des revues d'incidents. Elle constate qu'une grande partie des preuves existe déjà, mais qu'il n'y a ni politiques de gestion des services documentées, ni revues formelles des fournisseurs, ni revue de direction. Elle constate aussi que la norme comporte désormais une partie de lignes directrices sur l'agile et DevOps, ce qui l'aide à expliquer à un futur auditeur les mises en production hebdomadaires de l'entreprise.

L'entreprise décide de viser la certification pour le seul produit hébergé, avec un ensemble modeste de documents et une revue de direction trimestrielle. Elle prévoit environ un an de travail. Tout ne se passe pas sans heurts. Deux ingénieurs résistent aux enregistrements supplémentaires et un fournisseur refuse de fournir des rapports formels de revue de service. La directrice des opérations remplace certains enregistrements manuels par des exports des outils de l'entreprise et négocie un arrangement de revue plus léger avec le fournisseur. L'entreprise remporte l'appel d'offres et décide de vérifier, lors du prochain audit de surveillance, si le système aide ou gêne les mises en production hebdomadaires.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison rencontrent ces cadres sous forme d'exigences de clients et d'auditeurs. Apprenez quelle exigence s'applique et demandez quelles preuves sont acceptables. Beaucoup d'exigences peuvent être satisfaites avec les outils que vous utilisez déjà. Proposez d'expliquer votre processus de mise en production dans le langage de la norme.

### Équipes de service et d'exploitation

Les équipes d'exploitation portent généralement le système de gestion. Gardez les enregistrements utiles, chacun avec un but énoncé. Surveillez les exigences qui se dupliquent d'un cadre à l'autre et cartographiez-les une seule fois. Partagez le plan avec les équipes de livraison pour que les enregistrements soient un sous-produit du travail et non une tâche séparée.

### Direction et gouvernance

Les dirigeants décident des cadres à adopter et du montant à investir dans la certification. Demandez quel est l'argumentaire et ce que les clients exigent réellement. Méfiez-vous d'acheter la certification comme étiquette. Veillez à ce que le système aide l'organisation à s'améliorer et que quelqu'un en soit responsable.

### Clients et utilisateurs

Les clients qui demandent la certification veulent souvent une assurance. Demandez aux fournisseurs quelle norme et quel périmètre leur certificat couvre, et ce qui est en dehors. Un certificat est la preuve d'un système de gestion, pas la garantie d'un résultat individuel.

## Modes d'échec courants

- **Confondre certification individuelle et certification d'organisation.** Les équipes déclarent une entreprise « certifiée ITIL ». À la place, dites exactement ce qui est certifié et par qui.
- **Courir après la certification comme étiquette.** Le système existe pour l'audit, pas pour l'amélioration. À la place, rendez d'abord les enregistrements utiles à l'équipe.
- **Dupliquer les documents d'un cadre à l'autre.** Chaque norme reçoit son propre classeur. À la place, décrivez votre pratique une fois et cartographiez-la.
- **Restreindre le périmètre pour éviter les parties difficiles.** Le certificat exclut les services qui importent aux clients. À la place, choisissez un périmètre qui reflète de vrais services.
- **S'en remettre aux résumés.** Les affirmations de conformité reposent sur des billets de blog. À la place, travaillez à partir du texte de la norme ou du propriétaire du cadre.
- **Ignorer les conseils sur l'agile.** Les équipes discutent avec les auditeurs sans avoir lu la partie de la norme qui traite d'agile et de DevOps. À la place, lisez-la et préparez des exemples.
- **Trop documenter.** Le système produit plus d'enregistrements que personne n'en lit. À la place, reliez chaque enregistrement à un but et automatisez les preuves.
- **Oublier les changements.** La norme évolue et l'équipe ne le remarque pas. À la place, désignez quelqu'un pour suivre les mises à jour.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Compréhension des cadres | Les noms sont employés avec laxisme | Certains collaborateurs savent dire à quoi sert chaque cadre | Les équipes partagent une brève description exacte des cadres utilisés | L'usage des cadres est revu au regard des exigences et des résultats | Équipes, clients et fournisseurs partagent une compréhension exacte |
| Exigences et périmètre | Les exigences sont supposées | Certaines exigences sont rattachées à des documents | Exigences et périmètre sont documentés | Conformité et périmètre sont revus et les lacunes suivies | Les exigences sont alignées avec partenaires et clients |
| Preuves | Les preuves sont assemblées à la main pour chaque demande | Certains enregistrements sont produits par les outils | Les preuves viennent surtout des outils et sont décrites de façon cohérente | La qualité des preuves est mesurée et améliorée | Les preuves sont partagées automatiquement avec auditeurs et partenaires |
| Actualité | Les changements de cadres passent inaperçus | Certaines personnes suivent les annonces | Une personne désignée rend compte des changements à intervalles fixes | Les changements sont évalués et suivis d'effet | Les changements sont anticipés et traités avec les partenaires |

## Liste de contrôle

- [ ] Nous pouvons dire quels cadres et normes les clients, contrats ou régulateurs exigent réellement.
- [ ] Nous savons lesquels sont des conseils, lesquels des normes certifiables et lesquels des modèles de gouvernance.
- [ ] Nos affirmations sur la certification sont exactes et précisent le périmètre.
- [ ] Nous travaillons à partir du texte de la norme ou du propriétaire pour toute affirmation de conformité.
- [ ] Notre pratique est décrite une seule fois et rattachée à chaque cadre que nous devons satisfaire.
- [ ] Les preuves d'audit viennent surtout de nos outils.
- [ ] Nous avons lu les conseils sur l'agile et DevOps dans les normes qui nous concernent.
- [ ] Quelqu'un est désigné pour suivre les mises à jour et en rendre compte.
- [ ] Nos décisions d'adaptation sont écrites.
- [ ] Nous avons vérifié si notre périmètre correspond à de vrais services.

## Prompts d'IA

**Objectif : rattacher une exigence de client au texte du cadre qui l'appuie.**

```text
Un client ou un auditeur a formulé cette exigence : [collez la formulation exacte et l'endroit où elle apparaît, par exemple une clause d'appel d'offres].

Voici le texte de la norme ou du cadre pertinent, que j'ai copié de la publication du propriétaire : [collez uniquement le texte que vous avez le droit d'utiliser ; gardez-le court].

En n'utilisant que le texte collé, dites ce que l'exigence semble demander, ce qui est flou et quelles questions je devrais poser au client. Ne décrivez le contenu d'aucune norme que je n'ai pas collée. Ne dites pas si nous sommes conformes. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : décrire votre pratique une seule fois pour la rattacher à plusieurs cadres.**

```text
Aidez-moi à rédiger une description unique, en langage simple, de la façon dont nous traitons [pratique, par ex. « les changements en production »].

Comment cela fonctionne aujourd'hui, par étapes, avec les outils et les enregistrements concernés : [collez].
Cadres auxquels nous devons la rattacher : [listez les noms ; je collerai le texte d'exigence pertinent pour chacun].

Produisez une description en courtes étapes numérotées, puis un tableau avec une ligne par étape et une colonne par cadre montrant quelle exigence collée l'étape semble couvrir (uniquement à partir de mon texte collé). Marquez les lacunes comme des questions, pas des conclusions. N'affirmez pas la conformité. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : se préparer à répondre honnêtement à « êtes-vous certifiés ITIL ? ».**

```text
Rédigez une réponse brève et honnête à un client qui demande si notre entreprise est « certifiée ITIL ».

Faits que j'ai vérifiés dans des sources officielles : [collez, par exemple que la certification ITIL s'applique aux individus ; et listez les certifications que détient notre personnel].
Ce que nous faisons réellement : [décrivez notre pratique en quelques phrases].
Autres certifications que nous détenons ou envisageons : [listez].

La réponse doit être polie, exacte, de moins de 150 mots, et éviter d'en faire trop. Proposez des preuves que nous pourrions partager. N'utilisez que les faits que j'ai donnés. Posez d'abord des questions de clarification si quelque chose manque et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier les preuves qu'un audit de gestion des services pourrait demander.**

```text
Nous attendons un audit de notre gestion des services au regard de [nom de la norme et édition].

Les enregistrements que nous produisons aujourd'hui, et l'outil dont vient chacun : [listez].
Les domaines d'exigence que je connais, avec la formulation que j'ai tirée de la norme : [collez, ou écrivez « pas encore lue »].

Créez un tableau des preuves probables par domaine d'exigence (à partir de mon seul texte collé), de l'enregistrement que nous avons déjà, de la lacune et de la possibilité que l'enregistrement vienne automatiquement d'un outil. N'inventez pas d'exigences. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md) : à utiliser pour situer les cadres de gestion des services dans le tableau plus large de l'architecture d'entreprise et de la gouvernance.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md) : à utiliser pour planifier la préparation à un audit au regard d'une norme ou d'une exigence contractuelle.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md) : à utiliser pour concevoir des contrôles qui produisent automatiquement des preuves de conformité.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser quand le périmètre d'une certification dépend de fournisseurs et que vous devez planifier des revues de fournisseurs.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md) : à utiliser quand des cadres comme COBIT ou le PMBOK Guide rencontrent votre bureau de projet.

## Sources principales

- **ISO/IEC 20000-1** (International Organization for Standardization) : la norme elle-même ; lisez son périmètre et les titres de ses chapitres dans le catalogue ISO avant de faire des affirmations.
- **ISO/IEC 20000** (Wikipedia) : l'histoire, les parties et le paysage de la certification de la norme, avec citations.
- **COBIT** (ISACA et Wikipedia) : les publications d'ISACA font autorité ; l'article de Wikipédia donne l'histoire et la structure mais est mal sourcé.
- **FitSM** (Wikipedia et le projet FitSM) : une alternative courte et librement licenciée ; consultez les pages du projet pour la version actuelle.

## Références

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
