# Gestion des actifs matériels

**La gestion des actifs matériels suit l'équipement physique de l'achat à la mise au rebut, et ses risques discrets sont l'appareil que personne ne connaît, l'appareil gardé trop longtemps et l'appareil qui part avec des données encore dessus.**

## Pourquoi c'est important

Le matériel compte encore dans un monde qui privilégie le nuage. Les gens travaillent sur des ordinateurs portables, des téléphones et des tablettes. Les réseaux tournent sur des commutateurs et des points d'accès. Beaucoup d'organisations gardent sur site des serveurs, du stockage et des équipements spécialisés. Quand un ordinateur portable est perdu, qu'un serveur est hors garantie ou qu'un lot d'appareils doit être remplacé, les questions sont les mêmes : que possédons-nous, où est-ce, qui l'a, que cela vaut-il et que contient-il ?

Une mauvaise gestion du matériel se manifeste de façons familières. Le personnel attend son équipement parce que personne ne sait ce qu'il y a dans le magasin. De vieux appareils restent en service parce que personne n'a de données pour justifier le remplacement, puis tombent en panne à un moment gênant. Des appareils sont jetés avec des données encore dessus. Des demandes de garantie sont manquées. Pour une équipe agile, l'effet est une intégration ralentie, des versions ratées sur du matériel de test non entretenu et des expositions de sécurité qu'aucune chaîne ne voit.

La [section de Wikipédia sur la gestion des actifs informatiques](https://en.wikipedia.org/wiki/IT_asset_management), qui se trouve dans son article sur la gestion des centres de données, décrit la gestion des actifs matériels comme couvrant les composants physiques d'ordinateurs et de réseaux de l'acquisition à la mise au rebut, avec des pratiques de demande et approbation, d'achat, de gestion du cycle de vie, de réaffectation et de mise au rebut, et dit que la capture de l'information financière sur le cycle de vie est une composante clé. Elle est brève. Ce sujet ajoute les articles sur les déchets électroniques et l'effacement de données pour la mise au rebut, et des conseils pratiques tirés de la pratique courante, en le disant quand c'est le cas.

## Concepts clés

### Périmètre

Les actifs matériels incluent les appareils des utilisateurs finaux (ordinateurs portables, de bureau, téléphones, tablettes), les serveurs et le stockage, les équipements réseau, les périphériques et les technologies spécialisées ou opérationnelles. Ils incluent aussi les accessoires qui les rendent utilisables. Pour chacun, l'organisation veut connaître l'essentiel : ce que c'est, qui en est responsable, où c'est, ce que cela a coûté et dans quel état c'est.

### Le cycle de vie du matériel

La section de Wikipédia liste demande et approbation, achat, gestion du cycle de vie, réaffectation et mise au rebut. Un développement pratique, largement utilisé et offert ici comme tel :

| Étape | Questions à résoudre | Enregistrements typiques |
|---|---|---|
| **Demande et approbation** | De quoi a-t-on besoin et qui approuve ? | Demande, approbation, code budgétaire |
| **Achat** | Qu'avons-nous acheté, à qui, à quelles conditions ? | Commande, facture, garantie, fournisseur |
| **Réception et préparation** | Est-ce arrivé ? Est-ce configuré et étiqueté ? | Numéro de série, étiquette d'actif, configuration |
| **Affectation et exploitation** | Qui l'a ? À quoi sert-il ? | Responsable ou utilisateur, emplacement, service soutenu |
| **Maintenance** | Quels sont son état, sa garantie et son niveau de correctifs ? | Réparations, fin de garantie, état du micrologiciel |
| **Réaffectation** | Quelqu'un d'autre peut-il l'utiliser ? | Effacement, enregistrement de réaffectation |
| **Retrait et mise au rebut** | Les données sont-elles supprimées ? Où est-il allé ? | Preuve d'effacement, enregistrement de mise au rebut |

### Information financière

La section de Wikipédia insiste sur la capture de l'information financière sur le cycle de vie du matériel. Les faits utiles incluent le coût d'achat, l'amortissement, le coût de garantie et de support, et le coût de maintien en fonctionnement. Ils alimentent les décisions de remplacement et les budgets (voir Sujet 4.5 — Gestion financière informatique et FinOps). Un appareil qui coûte plus à supporter qu'à remplacer est candidat au retrait.

### Remplacement et renouvellement

Les organisations remplacent couramment l'équipement selon un cycle, par exemple tous les quelques ans pour les ordinateurs portables. Les sources lues pour ce guide n'indiquent aucune durée recommandée, et le bon intervalle dépend de l'équipement, du travail et du coût d'une défaillance. Une approche fondée sur les données regarde les taux de défaillance, le coût de support, le support de sécurité et la performance, et remplace quand les preuves le disent. Un cycle fixe est plus facile à planifier, et un cycle fondé sur les preuves peut économiser de l'argent ou éviter des défaillances.

### Sécurité des données en fin de vie

La mise au rebut est l'endroit où la gestion du matériel rencontre la sécurité de l'information (voir Sujet 3.13 — Gestion de la sécurité des informations). L'article de Wikipédia sur l'effacement de données décrit l'effacement de données comme une méthode logicielle qui écrase chaque secteur d'un disque pour que les données stockées soient irrécupérables ; la suppression ordinaire de fichiers n'enlève que des pointeurs, et des outils courants peuvent souvent récupérer les données. Points clés de l'article :

- **L'écrasement** laisse le disque utilisable. La **démagnétisation** et la **destruction physique** rendent le support inutilisable et ajoutent aux déchets électroniques.
- **Les disques à état solide et les supports flash** peuvent conserver des données résiduelles que l'effacement manque. L'article cite une étude de 2011 qui constate que les commandes d'assainissement intégrées fonctionnent si elles sont bien mises en œuvre, tandis que les techniques logicielles fonctionnent la plupart du temps, mais pas toujours.
- **Le chiffrement** offre une autre voie : détruire les clés d'un disque à chiffrement automatique rend ses données inaccessibles.
- **Vérification et certificats :** un bon logiciel doit vérifier que l'écrasement a atteint tout l'appareil, zones cachées comprises, et délivrer un certificat de validation et un journal des secteurs qui n'ont pas pu être écrasés.
- **Normes :** l'article en liste de nombreuses, dont la publication spéciale 800-88 du NIST (2006, révisée en 2014), dont il cite le passage selon lequel une seule passe d'écrasement avec un motif fixe, comme des zéros binaires, gêne typiquement la récupération. Il indique qu'une seule passe est généralement suffisante pour les disques durs modernes.

L'article est marqué comme nécessitant des citations et certaines affirmations sont signalées. Vérifiez les normes qu'exige votre secteur ou votre pays et l'état de l'art actuel pour votre équipement ; ne vous fiez pas à un résumé de Wikipédia pour une décision de conformité.

### Déchets électroniques

L'article de Wikipédia sur les déchets électroniques les définit comme les appareils électriques ou électroniques jetés, y compris les éléments destinés à la réutilisation, à la revente, à la récupération, au recyclage ou à l'élimination. Il rapporte environ 62 millions de tonnes générées dans le monde en 2022, en hausse de 82 pour cent depuis 2010, avec seulement 22,3 pour cent formellement collectés et recyclés selon une étude de 2024 ; il cite aussi d'autres chiffres qui se contredisent, et il porte des bandeaux de maintenance pour des affirmations non vérifiées ; vérifiez donc les chiffres auprès de sources primaires avant de les citer. Il décrit les dangers de matières comme le plomb, le cadmium, le mercure et les retardateurs de flamme, et d'un traitement informel, avec des exemples de Guiyu en Chine et d'Agbogbloshie au Ghana. Il note que la Convention de Bâle, adoptée en mars 1989, réglemente le mouvement transfrontière de déchets dangereux, et que les recycleurs certifiés selon des schémas comme R2 et E-Stewards doivent détruire toutes les données stockées sur les appareils électroniques. La réutilisation prolonge la vie des appareils et retarde le recyclage.

Pour une organisation, les leçons sont pratiques : choisissez des partenaires de mise au rebut certifiés et capables de montrer où vont les appareils, préférez la réutilisation là où elle est sûre et gardez des enregistrements. Les lois sur les déchets électroniques diffèrent selon les pays et les régions ; demandez à votre fonction de conformité lesquelles s'appliquent.

### Matériel et gestion des services

Les enregistrements de matériel renvoient aux services : ce commutateur porte tel service, ce serveur héberge telle application. Ces liens transforment un registre d'actifs en outil de réponse aux incidents, de planification des changements et d'évaluation des risques (voir Sujet 4.4 — Gestion de la configuration). Sans eux, un appareil défaillant est un ticket ; avec eux, c'est un énoncé d'impact.

### Agile et matériel

Les équipes agiles traitent le matériel comme une contrainte autour de laquelle concevoir, non comme l'événement principal. Le nuage et la virtualisation réduisent le parc physique, mais pas à zéro. Les appareils de test pour applications mobiles, les agents de construction, l'équipement de laboratoire et les appareils en périphérie ont tous besoin d'être suivis. Traitez-les comme des actifs avec responsables et cycles de vie, et ne les laissez pas dans un placard.

## Bonnes pratiques

1. **Étiquetez et consignez chaque appareil qui compte.** Attribuez à la réception une étiquette d'actif unique ou un enregistrement de numéro de série, et consignez type, responsable, emplacement et état. Faites-en la première étape après la livraison.
2. **Reliez les appareils aux personnes et aux services.** Consignez qui détient chaque appareil et quel service il soutient, et mettez à jour lors des déplacements et des changements. Utilisez le processus de départ pour récupérer l'équipement et retirer les accès.
3. **Gardez les données financières avec l'actif.** Consignez coût, garantie, conditions de support et amortissement. Servez-vous-en pour comparer réparation, support et remplacement.
4. **Utilisez la découverte pour trouver l'inconnu.** Comparez le registre avec la découverte du réseau et des postes, et examinez rapidement les appareils inconnus (voir Sujet 4.1 — Gestion des actifs informatiques).
5. **Surveillez l'état et le niveau de support.** Suivez les dates de fin de garantie, l'état du support du micrologiciel et de la sécurité et l'historique des pannes. Planifiez le remplacement avant que les appareils ne tombent en panne ou ne perdent leur support.
6. **Remplacez sur preuves.** Regardez les données de défaillance et de support, la performance et le support de sécurité pour décider du remplacement, et pas seulement l'âge. Revoyez la politique chaque année.
7. **Préparez les appareils de façon cohérente.** Utilisez une construction standard et une inscription automatisée pour que les nouveaux appareils arrivent prêts, avec les contrôles de sécurité en place.
8. **Réaffectez là où c'est sûr.** Effacez et réaffectez les appareils qui répondent encore aux besoins, avec un enregistrement de l'effacement. Évitez les stocks d'équipement inutilisé.
9. **Effacez correctement les données et conservez la preuve.** Utilisez une méthode adaptée au type d'appareil et à la sensibilité des données, vérifiez-la et conservez un certificat ou un journal. Pour le stockage flash, utilisez les commandes d'assainissement prises en charge par l'appareil ou la destruction de clés selon le cas (voir les notes sur l'effacement de données ci-dessus).
10. **Choisissez soigneusement vos partenaires de mise au rebut.** Préférez les recycleurs certifiés, demandez où vont les appareils et les matières et conservez des enregistrements. Incluez dans le contrat des conditions de destruction des données.
11. **Planifiez les appareils perdus et volés.** Ayez un moyen rapide de signaler, un verrouillage ou un effacement à distance là où c'est possible et une règle sur le moment où traiter une perte comme un incident de sécurité (voir Sujet 3.2 — Gestion des incidents).
12. **Revoyez régulièrement.** Au moins deux fois par an, vérifiez un échantillon du registre par rapport à la réalité physique pour les principales classes d'appareils, et corrigez le processus derrière tout écart.

## Questions à discuter avec votre équipe

**Si nous comptions aujourd'hui chaque appareil que nous possédons, correspondrions-nous au registre ?**

Choisissez un étage, une équipe ou un magasin et faites un comptage rapide par rapport au registre. Les différences sont la leçon. Demandez quels décalages comptent le plus : appareils contenant des données, appareils non corrigés. L'animateur peut demander ce qui empêche les gens de mettre à jour le registre au moment du changement. Choisissez un processus à resserrer.

**Que faisons-nous d'un ordinateur portable quand quelqu'un part ?**

Parcourez les étapes : qui le récupère, où il va, qui l'efface, qui met à jour l'enregistrement. Des lacunes apparaissent souvent entre équipes. Demandez le dernier exemple et retracez-le. Convenez d'un responsable et d'une liste de contrôle.

**Comment décidons-nous quand remplacer l'équipement ?**

Demandez la règle actuelle et sa source. Souvent c'est un âge fixe que quelqu'un a fixé il y a longtemps. Discutez des données dont vous disposez sur les défaillances, le coût de support et le support de sécurité. Comparez avec le coût d'un remplacement trop précoce ou trop tardif. Convenez des données à recueillir.

**Comment prouverions-nous que les données d'un appareil mis au rebut ont été détruites ?**

Prenez une mise au rebut récente et demandez quelle preuve existe. Si la réponse est « le recycleur l'a dit », discutez de ce que devrait contenir un certificat ou un journal. Demandez quelle méthode a été utilisée pour le stockage à état solide. Convenez d'une norme minimale et d'une preuve.

**Lesquels de nos appareils sont hors garantie ou hors support de sécurité, et qu'est-ce qui en dépend ?**

Listez les appareils proches de la fin de support. Demandez ce que chacun soutient. Les appareils non supportés derrière des services importants sont des risques. Planifiez le remplacement par ordre d'impact et décidez où des mesures compensatoires sont nécessaires.

**Qui traite un appareil perdu ou volé, et avec quelle rapidité ?**

Demandez comment un utilisateur signale une perte et ce qui se passe ensuite. Vérifiez si le verrouillage ou l'effacement à distance est disponible et si quelqu'un l'a essayé. Discutez du moment où une perte devient un incident de sécurité. Convenez d'une première étape claire pour les utilisateurs.

## En pratique : un exemple d'ITIL agile

Une autorité provinciale de santé fournit environ 4 000 ordinateurs portables et tablettes à des infirmières communautaires qui rendent visite aux patients à domicile. Les appareils sont fréquemment perdus ou endommagés. Les registres de l'autorité montrent 4 300 appareils, mais le centre de services croit en gérer moins. Une revue de sécurité constate qu'un certain nombre d'ordinateurs portables listés comme retirés ont été vus en usage et qu'un stock de vieux appareils dans un placard contient encore des données de patients.

La responsable des services aux utilisateurs finaux lance un petit programme. Chaque appareil reçoit une étiquette unique et un enregistrement relié à une infirmière nommée et à une équipe. Un outil de découverte compare le registre avec les appareils qui se connectent au réseau, et une liste mensuelle des appareils sans correspondance va aux responsables d'équipe, qui ont deux semaines pour s'expliquer ou les rendre. Les appareils sont inscrits automatiquement avec le chiffrement activé et les logiciels standard, de sorte qu'un ordinateur portable perdu révèle peu de chose. Une liste de contrôle de départ ajoute le retour de l'appareil comme une étape que le responsable valide. Pour le retrait, l'autorité passe un contrat avec un recycleur certifié qui efface les disques, détruit ceux qui ne peuvent pas être effacés et fournit un certificat pour chaque lot. Le placard est vidé et son contenu effacé et consigné.

En six mois, le registre et la découverte coïncident à une petite marge près, et un ordinateur portable perdu est verrouillé à distance dans l'heure dans la plupart des cas. Des problèmes subsistent. Les infirmières partagent parfois des appareils pendant les postes chargés, si bien que le champ du responsable est faux, et les certificats du recycleur listent des lots mais pas les appareils individuels, ce dont l'auditeur s'inquiète. La responsable des services aux utilisateurs finaux introduit un enregistrement d'appareil partagé avec une signature de sortie quotidienne et demande au recycleur d'inclure les numéros de série sur les certificats. Elle décide aussi de revoir la politique de remplacement à l'aide des données de défaillance de la première année, au lieu de garder un âge fixe.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison détiennent des appareils de test, des serveurs de construction et de l'équipement de laboratoire. Enregistrez-les, donnez-leur des responsables et retirez-les correctement. Dites à la gestion des actifs quand vous avez besoin d'appareils, pour que l'approvisionnement corresponde aux projets.

### Équipes de service et d'exploitation

L'exploitation et le centre de services gèrent l'essentiel du cycle de vie : construction, déploiement, support et retrait. Gardez les enregistrements à jour à chaque étape, utilisez la découverte pour attraper les lacunes et conservez les preuves de mise au rebut. Partagez les données d'état et de défaillance avec quiconque planifie le remplacement.

### Direction et gouvernance

Les dirigeants décident des budgets de remplacement et de l'appétit pour le risque. Demandez le nombre d'appareils hors support, le processus pour les appareils perdus et la preuve de la destruction des données. Soutenez le renouvellement fondé sur les preuves et les petits contrôles, comme les étiquettes et les listes de contrôle, qui gardent les enregistrements vrais.

### Clients et utilisateurs

Les utilisateurs détiennent l'équipement au jour le jour. Prenez-en soin, signalez rapidement la perte ou les dommages et rendez l'équipement quand vous partez. Dites au centre de services si vous partagez un appareil ou changez de lieu, pour que les enregistrements soient justes.

## Modes d'échec courants

- **Équipement non étiqueté.** On ne peut pas distinguer les appareils. À la place, étiquetez et consignez à la réception.
- **Enregistrements périmés.** Les déplacements et les départs ne sont pas capturés. À la place, rattachez les mises à jour à des événements comme les processus d'arrivée, de mobilité et de départ.
- **Renouvellement à âge fixe sans données.** Les appareils sont remplacés trop tôt ou trop tard. À la place, revoyez les données de défaillance, de coût et de support.
- **Mise au rebut faible.** Des données restent sur les appareils mis au rebut. À la place, effacez et vérifiez avec une méthode adaptée au support, conservez la preuve et utilisez un partenaire certifié.
- **Ignorer le stockage flash.** On suppose que l'écrasement fonctionne. À la place, utilisez des commandes d'assainissement ou la destruction de clés et vérifiez.
- **Stocks.** Des appareils inutilisés s'accumulent. À la place, réaffectez ou retirez selon un calendrier.
- **Pas de lien avec le service.** Un appareil défaillant n'est qu'un ticket. À la place, consignez le service que chaque appareil soutient.
- **Recyclage non certifié.** L'équipement finit là où personne ne sait. À la place, choisissez des partenaires certifiés et demandez où vont les matières.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Inventaire et suivi | Les appareils sont connus informellement | Un registre couvre les principaux appareils | Chaque appareil est étiqueté et consigné, réconcilié avec la découverte | L'exactitude et les lacunes sont mesurées et corrigées | L'inventaire couvre appareils possédés, loués et de partenaires avec des données partagées |
| Cycle de vie et renouvellement | Le remplacement se fait à la panne | Certains appareils suivent un plan de renouvellement | Les étapes du cycle de vie et une politique de renouvellement sont définies | Les données de défaillance et de coût guident les décisions de remplacement | Le renouvellement est planifié dans l'organisation avec fournisseurs et finance |
| Mise au rebut et protection des données | La mise au rebut est ponctuelle | Certains appareils sont effacés | Une méthode d'effacement standard et une mise au rebut certifiée avec preuve | Les preuves de mise au rebut sont auditées et les lacunes comblées | La mise au rebut est coordonnée avec partenaires et programmes de réutilisation |
| Lien avec le service et la finance | Les appareils ne sont pas reliés aux services ni aux coûts | Quelques données de coût sont tenues | Les appareils sont reliés aux responsables, services et coûts | Les données de coût et de support sont revues et servent aux budgets | Les données d'actifs sont partagées en continu avec finance, sécurité et fournisseurs |

## Liste de contrôle

- [ ] Chaque appareil que nous suivons a une étiquette unique ou un enregistrement de série et un responsable ou utilisateur nommé.
- [ ] Les appareils sont reliés au service qu'ils soutiennent.
- [ ] La découverte est comparée au registre au moins chaque mois pour les principaux types d'appareils.
- [ ] Les dates de fin de garantie et de support sont consignées et revues.
- [ ] Notre politique de remplacement est fondée sur des données et revue chaque année.
- [ ] Les processus de départ et de mobilité récupèrent ou réaffectent les appareils.
- [ ] L'effacement des données utilise une méthode adaptée au support, avec vérification et enregistrement.
- [ ] Les partenaires de mise au rebut sont certifiés et fournissent une preuve par appareil ou par lot.
- [ ] Les appareils perdus et volés peuvent être signalés rapidement et verrouillés ou effacés à distance là où c'est possible.
- [ ] Un échantillon du registre est vérifié par rapport à la réalité physique deux fois par an.

## Prompts d'IA

**Objectif : réconcilier un comptage physique avec le registre.**

```text
J'ai un comptage physique des appareils dans [lieu ou équipe] et les entrées du registre pour le même périmètre.

Comptage physique (étiquette ou série, type, qui l'a) : [collez].
Registre (étiquette ou série, type, responsable, état) : [collez].

En n'utilisant que ces listes, identifiez les éléments présents physiquement mais absents du registre, ceux du registre mais introuvables, et ceux dont le responsable ou l'état diffère. Pour chaque groupe, suggérez une question à poser. Ne devinez rien sur les éléments qui ne peuvent pas être appariés. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une revue de remplacement fondée sur les données.**

```text
Aidez-moi à préparer une revue de remplacement pour [classe d'appareils, par ex. « ordinateurs portables de terrain »].

Données que nous avons (âge, réparations, pannes, tickets de support, fin de garantie, fin de support de sécurité, coût) : [collez un tableau de vraies données].
Règle de remplacement actuelle et sa source : [collez, ou écrivez « inconnue »].
Limites budgétaires : [décrivez, ou écrivez « inconnues »].

En n'utilisant que ces données, décrivez les schémas par tranche d'âge (par exemple nombre de pannes et de réparations), identifiez les appareils proches de la fin de support et suggérez des questions pour savoir si la règle actuelle convient. N'inventez ni taux de défaillance ni coûts. Si les données sont trop minces, dites quoi recueillir. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : rédiger une liste de contrôle de mise au rebut d'appareils avec les exigences de preuve.**

```text
Aidez-moi à rédiger une liste de contrôle de mise au rebut pour [type d'appareil, par ex. « ordinateurs portables et téléphones »].

Sensibilité des données : [décrivez].
Types de stockage : [par exemple disques durs, SSD, téléphones à stockage chiffré].
Partenaire de mise au rebut et ce qu'il fournit : [décrivez, ou écrivez « pas encore choisi »].
Règles que nous devons respecter, avec le texte de la source : [collez, ou écrivez « aucune connue »].

Produisez une liste de contrôle couvrant l'autorisation, le retrait des comptes et licences, la méthode d'effacement ou de destruction des données par type de stockage, la vérification, la preuve conservée (contenu du certificat, numéros de série), la voie de mise au rebut et la mise à jour du registre. Marquez les étapes qui sont des hypothèses. N'affirmez pas qu'une loi ou une norme exige une méthode à moins que j'en aie collé le texte. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : planifier la réponse à un appareil perdu.**

```text
Rédigez une courte procédure de réponse pour un [type d'appareil] perdu ou volé.

Contrôles existant aujourd'hui (chiffrement, verrouillage à distance, effacement à distance, localisation) : [décrivez, ou écrivez « inconnu »].
Données que l'appareil peut contenir : [décrivez].
Qui est informé aujourd'hui : [listez].

Rédigez des étapes pour l'utilisateur, le centre de services et la sécurité : comment signaler, que faire dans la première heure, quand traiter la perte comme un incident de sécurité et comment la consigner. Laissez tout devoir de notification sous la forme [À VÉRIFIER AVEC LE JURIDIQUE] à moins que je donne le texte de la source. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md) : à utiliser pour relier les appareils aux services qu'ils soutiennent.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour planifier la quantité d'équipement nécessaire et quand.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md) : à utiliser pour prévoir les coûts de renouvellement et de support.
- [data-governance](../../../../skills/data-governance/SKILL.md) : à utiliser pour décider de qui est responsable des données des appareils et de la manière dont elles sont protégées au retrait.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour choisir et revoir les fournisseurs de matériel et les partenaires de mise au rebut.

## Sources principales

- **IT asset management** (Wikipedia) : la définition et une description de la gestion des actifs matériels, dans l'article sur la gestion des centres de données.
- **Data erasure** (Wikipedia) : méthodes, normes, vérification et le cas particulier du stockage à état solide.
- **Electronic waste** (Wikipedia) : ampleur, dangers, recyclage et Convention de Bâle, avec des réserves sur les chiffres contradictoires.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88) : l'orientation primaire que cite l'article de Wikipédia ; lisez la révision actuelle avant de fixer une norme.

## Références

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
